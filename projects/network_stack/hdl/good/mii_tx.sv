`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
// Engineer: Michael Fallon
//
// Design Name: FM SYNTHESIZER
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: This is the top level wrapper for the fm synthesizer project.
//////////////////////////////////////////////////////////////////////////////////

module mii_tx(
    // RX signals
    input   logic           ila_clk,
    input   logic           tx_clk,
    input   logic           tx_rst_n,
    output  logic   [3:0]   tx_data,
    output  logic           tx_en,
    input   logic           tx_sof,
    input   logic           tx_eof,
    input   logic           tx_byte_vld,
    output  logic           tx_byte_rdy,
    input   logic   [7:0]   tx_byte,
    output  logic           tx_sof_ack,

    // Probe signals
    output  logic   [2:0]   tx_state_probe
    );

    assign tx_state_probe = tx_state;

    //  eth_ila
    //      ila_tx (
    //          .clk    (ila_clk),
    //          .probe0 (tx_clk),
    //          .probe1 (tx_state),
    //          .probe2 (tx_data),
    //          .probe3 (tx_en),
    //          .probe4 (tx_sof),
    //          .probe5 (tx_eof),
    //          .probe6 (tx_byte_vld),
    //          .probe7 (tx_byte_rdy),
    //          .probe8 (tx_byte)
    //  );

    localparam  logic   [2:0]   S_TX_IDLE       = 3'b000;
    localparam  logic   [2:0]   S_TX_PREAMBLE   = 3'b001;
    localparam  logic   [2:0]   S_TX_SEND_LO    = 3'b010;
    localparam  logic   [2:0]   S_TX_SEND_HI    = 3'b011;
    localparam  logic   [2:0]   S_TX_CRC        = 3'b101;
    localparam  logic   [2:0]   S_TX_IFG        = 3'b110;

    localparam  logic   [63:0]  C_PREAMBLE      = 64'hD555555555555555;


    // Data send signals
    logic   [2:0]       tx_state;
    logic   [63:0]      tx_data_buf;
    logic   [4:0]       tx_nibble_cnt;
    logic   [3:0]       crc_data;
    logic   [9:0]       tx_pkt_len;
    logic   [27:0]      tx_crc;
    logic   [31:0]      crc;
    logic   [31:0]      crc_formatted;
    logic               crc_sof;
    logic               crc_eof;
    logic               crc_en;


    generate
        for (genvar i=0; i<4; i=i+1) begin
            assign crc_data[i] = tx_data[3-i];
        end

        for (genvar j=0; j<4; j=j+1) begin
            assign crc_formatted[j]    = ~crc[3 -j];
            assign crc_formatted[j+4]  = ~crc[7 -j];
            assign crc_formatted[j+8]  = ~crc[11-j];
            assign crc_formatted[j+12] = ~crc[15-j];
            assign crc_formatted[j+16] = ~crc[19-j];
            assign crc_formatted[j+20] = ~crc[23-j];
            assign crc_formatted[j+24] = ~crc[27-j];
            assign crc_formatted[j+28] = ~crc[31-j];
        end
    endgenerate

    assign  tx_byte_rdy = (tx_state == S_TX_SEND_LO) && ~tx_eof ? 1'b1 : 1'b0;
    
    always_ff @(posedge tx_clk) begin
        if (~tx_rst_n) begin
            tx_state        <= S_TX_IDLE;
            tx_nibble_cnt   <= 0;
            tx_pkt_len      <= 0;
            tx_en           <= 0;
            tx_data         <= 0;
            tx_crc          <= 0;
            crc_sof         <= 0;
            crc_eof         <= 0;
            crc_en          <= 0;
            tx_sof_ack      <= 0;
        end

        else begin
            tx_sof_ack  <= 0;
            case (tx_state) 
                S_TX_IDLE : begin
                    tx_state        <= S_TX_IDLE;
                    tx_nibble_cnt   <= 0;
                    tx_en           <= 0;
                    tx_data         <= 0;
                    tx_crc          <= 0;
                    crc_sof         <= 0;
                    crc_eof         <= 0;
                    if (tx_sof) begin
                        tx_state        <= S_TX_PREAMBLE;
                        tx_sof_ack      <= 1;
                    end
                end

                S_TX_PREAMBLE : begin
                    tx_state        <= S_TX_PREAMBLE;
                    tx_data         <= C_PREAMBLE[4*(tx_nibble_cnt+1)-1-:4];
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_en          <= 0;
                    if (tx_nibble_cnt == 5'b01111) begin
                        tx_state        <= S_TX_SEND_LO;
                        tx_nibble_cnt   <= 0;
                    end
                end

                S_TX_SEND_LO : begin
                    tx_state        <= S_TX_SEND_HI;
                    tx_data         <= tx_byte[3:0];
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_en          <= 1;
                    crc_sof         <= 1;
                    if (tx_eof) begin
                        tx_state        <= S_TX_CRC;
                        tx_nibble_cnt   <= 0;
                        crc_sof         <= 0;
                        tx_data         <= crc_formatted[31:28];
                        tx_crc          <= crc_formatted[27:0];
                        crc_en          <= 0;
                    end
                end

                S_TX_SEND_HI : begin
                    tx_state        <= S_TX_SEND_LO;
                    tx_data         <= tx_byte[7:4];
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_en          <= 1;
                    crc_sof         <= 1;
                    if (tx_eof) begin
                        tx_state        <= S_TX_CRC;
                        tx_nibble_cnt   <= 0;
                        crc_sof         <= 0;
                        tx_data         <= crc_formatted[31:28];
                        tx_crc          <= crc_formatted[27:0];
                        crc_en          <= 0;
                    end
                end

                S_TX_CRC : begin
                    if (tx_nibble_cnt < 5'b00111) begin
                        tx_state        <= S_TX_CRC;
                        tx_data         <= tx_crc[27:24];
                        tx_crc          <= tx_crc << 4;
                        tx_nibble_cnt   <= tx_nibble_cnt + 1;
                        tx_en           <= 1;
                        crc_eof         <= 0;
                    end
                    else begin
                        tx_state        <= S_TX_IFG;
                        tx_data         <= tx_crc[27:24];
                        tx_nibble_cnt   <= 0;
                        crc_eof         <= 0;
                        tx_en           <= 0;
                        crc_en          <= 0;
                    end
                end

                S_TX_IFG : begin
                    tx_data     <= 0;
                    if (tx_nibble_cnt < 5'b11000) begin
                        tx_state        <= S_TX_IFG;
                        tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    end
                    else begin
                        tx_state        <= S_TX_IDLE;
                        tx_nibble_cnt   <= 0;
                    end
                end

                default : begin
                    tx_state    <= S_TX_IDLE;
                end
            endcase
        end
    end

    crc32_4bit
        tx_crc32 (
            .clk        (tx_clk),
            .rst_n      (tx_rst_n),
            .crc_en     (crc_en),
            .data_in    (crc_data),
            .sof        (crc_sof),
            .eof        (crc_eof),
            .crc_out    (crc)
        );

    // initial begin
    //     $dumpfile("tx_send.vcd");
    //     $dumpvars();
    // end


endmodule