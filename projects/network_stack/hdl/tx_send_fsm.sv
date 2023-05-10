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

module tx_send_fsm #(
    parameter   logic   [47:0]  P_MAC_ADDR  = 48'h00183E02523A,
    parameter   integer         P_PKT_BITS  = 1500*8
    )(
    // RX signals
    input   logic                       ila_clk,
    input   logic                       tx_clk,
    input   logic                       tx_rst_n,
    output  logic   [3:0]               tx_data,
    output  logic                       tx_en,

    input   logic                       tx_pkt_vld,
    output  logic                       tx_pkt_rdy,
    input   logic   [P_PKT_BITS-1:0]    tx_pkt,
    input   logic   [9:0]               tx_byte_cnt
    );

    // generate
    //     if (P_ILA == "tx_fsm") begin
    //         eth_ila
    //             ila_tx (
    //                 .clk    (ila_clk),
    //                 .probe0 (),
    //                 .probe1 (),
    //                 .probe2 (),
    //                 .probe3 (),
    //                 .probe4 (),
    //                 .probe5 (),
    //                 .probe6 ()
    //         );
    //     end
    // endgenerate

    localparam  logic   [2:0]   S_TX_IDLE       = 3'b000;
    localparam  logic   [2:0]   S_TX_PREAMBLE   = 3'b001;
    localparam  logic   [2:0]   S_TX_SEND       = 3'b010;
    localparam  logic   [2:0]   S_TX_CRC_START  = 3'b011;
    localparam  logic   [2:0]   S_TX_CRC        = 3'b100;


    localparam  integer                 C_PREAMBLE_BYTES    = 8;
    localparam  integer                 C_HEADER_BYTES      = 14;
    localparam  integer                 C_MIN_PKT_BYTES     = 46;
    localparam  integer                 C_MAX_PKT_BYTES     = 150;
    localparam  integer                 C_CRC_BYTES         = 4;
    localparam  logic   [47:0]          C_BROADCAST         = 48'hFFFFFFFFFFFF;
    localparam  logic   [63:0]          C_PREAMBLE          = 64'hABAAAAAAAAAAAAAA;

    assign crc_reg  = 32'h01234567;


    logic   [47:0]                  dst_mac_reg;
    logic   [15:0]                  pkt_type_reg;
    logic   [15:0]                  pkt_type_rev;

    logic   [31:0]                  crc_reg;

    // Data send signals
    logic   [2:0]                   tx_state;
    logic   [C_MAX_PKT_BYTES*8-1:0] tx_pkt_buf;
    logic   [10:0]                  tx_nibble_cnt;
    logic   [9:0]                   tx_pkt_len;
    logic   [27:0]                  tx_crc;
    logic   [63:0]                  tx_preamble;
    logic   [31:0]                  crc;
    logic                           crc_sof;
    logic                           crc_eof;
    logic                           crc_en;
    
    always_ff @(posedge tx_clk) begin
        if (~tx_rst_n) begin
            tx_state        <= S_TX_IDLE;
            tx_nibble_cnt   <= 0;
            tx_pkt_len      <= 0;
            tx_pkt_rdy      <= 0;
            tx_en           <= 0;
            tx_data         <= 0;
            tx_crc          <= 0;
            crc_sof         <= 0;
            crc_eof         <= 0;
            crc_en          <= 0;
            tx_pkt_buf      <= 0;
            tx_preamble     <= C_PREAMBLE;
        end

        else begin
            case (tx_state) 
                S_TX_IDLE : begin
                    tx_state        <= S_TX_IDLE;
                    tx_nibble_cnt   <= 0;
                    tx_pkt_rdy      <= 1;
                    tx_en           <= 0;
                    tx_data         <= 0;
                    tx_crc          <= 0;
                    crc_sof         <= 0;
                    crc_eof         <= 0;
                    tx_preamble     <= C_PREAMBLE;
                    if (tx_pkt_vld) begin
                        tx_state    <= S_TX_PREAMBLE;
                        tx_pkt_buf  <= tx_pkt;
                        tx_pkt_rdy  <= 0;
                        tx_pkt_len  <= tx_byte_cnt;
                    end
                end

                S_TX_PREAMBLE : begin
                    tx_state        <= S_TX_PREAMBLE;
                    tx_data         <= tx_preamble[3:0];
                    tx_preamble     <= tx_preamble >> 4;
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_en          <= 0;
                    if (tx_nibble_cnt == (C_PREAMBLE_BYTES<<1)-1) begin
                        tx_state        <= S_TX_SEND;
                        tx_nibble_cnt   <= 0;
                    end
                end

                S_TX_SEND : begin
                    tx_state        <= S_TX_SEND;
                    tx_data         <= tx_pkt_buf[3:0];
                    tx_pkt_buf      <= tx_pkt_buf >> 4;
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_en          <= 1;
                    crc_sof         <= 1;
                    if (tx_nibble_cnt == (tx_pkt_len<<1)-1) begin
                        tx_state        <= S_TX_CRC_START;
                        tx_nibble_cnt   <= 0;
                        crc_sof         <= 0;
                    end
                end

                S_TX_CRC_START : begin
                    tx_state        <= S_TX_CRC;
                    tx_data         <= crc[3:0];
                    tx_crc          <= crc[31:4];
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_eof         <= 1;
                    crc_en          <= 0;
                end


                S_TX_CRC : begin

                    if (tx_nibble_cnt < (C_CRC_BYTES<<1)-1) begin
                        tx_state        <= S_TX_CRC;
                        tx_data         <= tx_crc[3:0];
                        tx_crc          <= tx_crc >> 4;
                        tx_nibble_cnt   <= tx_nibble_cnt + 1;
                        tx_en           <= 1;
                        crc_eof         <= 0;
                    end
                    else begin
                        tx_state        <= S_TX_IDLE;
                        tx_data         <= tx_crc[3:0];
                        tx_nibble_cnt   <= 0;
                        tx_pkt_rdy      <= 1;
                        crc_eof         <= 0;
                    end
                end
            endcase
        end
    end

    crc32_4bit
        tx_crc32 (
            .clk        (tx_clk),
            .rst_n      (tx_rst_n),
            .crc_en     (crc_en),
            .data_in    (tx_data),
            .sof        (crc_sof),
            .eof        (crc_eof),
            .crc_out    (crc),
            .crc_done   (crc_done)
        );

    // initial begin
    //     $dumpfile("tx_send.vcd");
    //     $dumpvars();
    // end


endmodule