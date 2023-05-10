`timescale 1ns / 1ps
`define PKT_LEN (C_MAX_PKT_BYTES*8)
`define PKT_IDX ((rx_byte_cnt+1) << 3)
`define HEADER {pkt_type_rev, src_mac_rev, dst_mac_rev}
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

module mii_tx_old #(
        parameter   logic   [47:0]  P_MAC_ADDR  = 48'h047BCB62BF3E
    // parameter   logic   [47:0]  P_MAC_ADDR  = 48'h00183E02523A
    )(
    // RX signals
    input   logic           ila_clk,
    input   logic           tx_clk,
    input   logic           rst_n,
    output  logic   [3:0]   tx_data_out,
    output  logic           tx_en,
    input   logic           eth_sop,
    input   logic           eth_eop,
    input   logic   [7:0]   eth_tx_byte,
    input   logic   [47:0]  dst_mac,
    input   logic   [15:0]  pkt_type,

    // Ready Valid Handshake
    output  logic           rx_byte_rdy,
    input   logic           rx_byte_vld
    );

    localparam  logic   [2:0]   S_RX_IDLE   = 3'b000;
    localparam  logic   [2:0]   S_RX_PKT    = 3'b001;
    localparam  logic   [2:0]   S_RX_PAD    = 3'b010;
    localparam  logic   [2:0]   S_RX_FRAME  = 3'b011;
    localparam  logic   [2:0]   S_RX_READY  = 3'b100;

    localparam  logic   [2:0]   S_TX_IDLE       = 3'b000;
    localparam  logic   [2:0]   S_TX_PREAMBLE   = 3'b001;
    localparam  logic   [2:0]   S_TX_HEADER     = 3'b010;
    localparam  logic   [2:0]   S_TX_SEND       = 3'b011;
    localparam  logic   [2:0]   S_TX_WAIT       = 3'b100;
    localparam  logic   [2:0]   S_TX_CRC        = 3'b101;


    localparam  integer                 C_PREAMBLE_BYTES    = 8;
    localparam  integer                 C_HEADER_BYTES      = 14;
    localparam  integer                 C_MIN_PKT_BYTES     = 46;
    localparam  integer                 C_MAX_PKT_BYTES     = 150;
    localparam  integer                 C_CRC_BYTES         = 4;
    localparam  logic   [47:0]          C_BROADCAST         = 48'hFFFFFFFFFFFF;
    localparam  logic   [63:0]          C_PREAMBLE          = 64'hABAAAAAAAAAAAAAA;

    assign crc_reg  = 32'h01234567;

    // Data receive signals
    logic   [2:0]                   rx_state;
    logic   [175:0]                 rx_header;
    logic   [47:0]                  dst_mac_reg;
    logic   [15:0]                  pkt_type_reg;
    logic   [15:0]                  pkt_type_rev;
    logic   [9:0]                   rx_byte_cnt;
    logic   [C_MAX_PKT_BYTES*8-1:0] rx_pkt_buf;
    logic                           rx_pkt_vld;
    logic   [31:0]                  crc_reg;
    logic   [47:0]                  dst_mac_rev;
    logic   [47:0]                  src_mac_rev;
    integer signed                  pad_cnt;


    // Data send signals
    logic   [2:0]                   tx_state;
    logic   [C_MAX_PKT_BYTES*8-1:0] tx_pkt_buf;
    logic                           tx_pkt_rdy;
    logic   [9:0]                   tx_byte_cnt;
    logic   [10:0]                  tx_nibble_cnt;
    logic   [9:0]                   tx_pkt_len;
    logic   [111:0]                 tx_header;
    logic   [31:0]                  tx_crc;
    logic   [7:0]                   crc_byte;
    logic   [3:0]                   tx_data_del;
    logic   [3:0]                   tx_data_del1;
    logic   [3:0]                   tx_data_del2;
    logic   [63:0]                  tx_preamble;
    logic   [31:0]                  crc;
    logic                           crc_sof;
    logic                           crc_eof;
    logic                           crc_en;
    logic   [3:0]                   tx_data;
    
    assign  pad_cnt     = C_MIN_PKT_BYTES - rx_byte_cnt;
    assign  tx_byte_cnt = tx_nibble_cnt[10:1];
    assign  crc_byte    = {tx_data, tx_data_del};

    generate
        for (genvar i=0; i<6; i=i+1) begin
            assign  dst_mac_rev[(i+1)*8-1:i*8] = dst_mac[47-(i*8)-:8];
            assign  src_mac_rev[(i+1)*8-1:i*8] = P_MAC_ADDR[47-(i*8)-:8];
        end
        for (genvar j=0; j<2; j=j+1) begin
            assign  pkt_type_rev[(j+1)*8-1:j*8] = pkt_type[15-(j*8)-:8];
        end
    endgenerate

    always_ff @(posedge tx_clk) begin
        if (~rst_n) begin
            tx_state        <= S_TX_IDLE;
            tx_nibble_cnt   <= 0;
            tx_pkt_len      <= 0;
            tx_pkt_rdy      <= 0;
            tx_en           <= 0;
            tx_data         <= 0;
            tx_header       <= 0;
            tx_crc          <= 0;
            tx_data_del     <= 0;
            tx_data_del1    <= 0;
            tx_data_del2    <= 0;
            crc_sof         <= 0;
            crc_eof         <= 0;
            crc_en          <= 0;
            tx_pkt_buf      <= 0;
            tx_data_out     <= 0;
            tx_preamble     <= C_PREAMBLE;
        end

        else begin
            tx_data_del <= tx_data;
            tx_data_del1<= tx_data_del;
            tx_data_del2<= tx_data_del1;
            tx_data_out <= tx_data_del2;
            case (tx_state) 
                S_TX_IDLE : begin
                    tx_state        <= S_TX_IDLE;
                    tx_nibble_cnt   <= 0;
                    tx_pkt_rdy      <= 1;
                    tx_en           <= 0;
                    tx_data         <= 0;
                    tx_header       <= 0;
                    tx_crc          <= 0;
                    crc_sof         <= 0;
                    crc_eof         <= 0;
                    tx_preamble     <= C_PREAMBLE;
                    if (rx_pkt_vld) begin
                        tx_state    <= S_TX_PREAMBLE;
                        tx_pkt_buf  <= rx_pkt_buf;
                        tx_header   <= rx_header;
                        tx_pkt_rdy  <= 0;
                        tx_pkt_len  <= rx_byte_cnt;
                        tx_en       <= 1;
                    end
                end

                S_TX_PREAMBLE : begin
                    tx_state        <= S_TX_PREAMBLE;
                    tx_data         <= tx_preamble[3:0];
                    tx_preamble     <= tx_preamble >> 4;
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    if (tx_byte_cnt == C_PREAMBLE_BYTES-1) begin
                        tx_state        <= S_TX_HEADER;
                        tx_nibble_cnt   <= 0;
                        crc_en          <= 1;
                    end
                end

                S_TX_HEADER : begin
                    tx_state        <= S_TX_HEADER;
                    tx_data         <= tx_header[3:0];
                    tx_header       <= tx_header >> 4;
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_sof         <= 1;
                    crc_en          <= ~crc_en;
                    if (tx_nibble_cnt == (C_HEADER_BYTES<<1)-1) begin
                        tx_state        <= S_TX_SEND;
                        tx_nibble_cnt   <= 0;
                        crc_sof         <= 0;
                    end
                end

                S_TX_SEND : begin
                    tx_state        <= S_TX_SEND;
                    tx_data         <= tx_pkt_buf[3:0];
                    tx_pkt_buf      <= tx_pkt_buf >> 4;
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_en          <= ~crc_en;
                    if (tx_nibble_cnt == (tx_pkt_len<<1)-1) begin
                        tx_state        <= S_TX_WAIT;
                        tx_nibble_cnt   <= 0;
                    end
                end

                S_TX_WAIT : begin
                    tx_state        <= S_TX_WAIT;
                    tx_en           <= 1;
                    crc_eof         <= 1;
                    crc_en          <= ~crc_en;
                    if (crc_done) begin
                        tx_state        <= S_TX_CRC;
                        tx_en           <= 1;
                        crc_eof         <= 1;
                        tx_crc          <= crc;
                    end
                end

                S_TX_CRC : begin
                    tx_state        <= S_TX_CRC;
                    tx_data_out     <= tx_crc[3:0];
                    tx_crc          <= tx_crc >> 4;
                    tx_nibble_cnt   <= tx_nibble_cnt + 1;
                    tx_en           <= 1;
                    crc_eof         <= 1;
                    crc_en          <= ~crc_en;
                    if (tx_nibble_cnt == (C_CRC_BYTES<<1)+1) begin
                        tx_state        <= S_TX_IDLE;
                        tx_nibble_cnt   <= 0;
                        tx_en           <= 0;
                        tx_pkt_rdy      <= 1;
                        crc_eof         <= 0;
                    end
                end
            endcase
        end
    end

    always_ff @(posedge tx_clk) begin
        if (~rst_n) begin
            rx_state        <= S_RX_IDLE;
            rx_pkt_buf      <= 0;
            dst_mac_reg     <= 0;
            pkt_type_reg    <= 0;
            rx_byte_rdy     <= 0;
            rx_byte_cnt     <= 0;
            rx_pkt_vld      <= 0;
            rx_header       <= 0;
        end

        else begin
            case (rx_state)
                S_RX_IDLE : begin
                    rx_pkt_buf  <= 0;
                    rx_byte_rdy <= 1;
                    rx_pkt_vld  <= 0;
                    rx_header   <= 0;
                    if (eth_sop & rx_byte_vld) begin
                        rx_state        <= S_RX_PKT;
                        rx_pkt_buf[7:0] <= eth_tx_byte;
                        dst_mac_reg     <= dst_mac_rev;
                        pkt_type_reg    <= pkt_type_rev;
                        rx_byte_cnt     <= 1;
                        rx_header       <= `HEADER;
                    end
                end

                S_RX_PKT : begin
                    rx_state    <= S_RX_PKT;
                    rx_byte_rdy <= 1;
                    rx_pkt_vld  <= 0;
                    if (rx_byte_vld) begin
                        if (~eth_eop) begin
                            rx_pkt_buf[`PKT_IDX-1-:8] <= eth_tx_byte;
                            rx_byte_cnt             <= rx_byte_cnt+1;
                        end
                        else begin
                            rx_state    <= S_RX_READY;
                            rx_byte_rdy <= 0;
                            rx_pkt_vld  <= 1;
                            if (rx_byte_cnt < C_MIN_PKT_BYTES) begin
                                rx_byte_cnt <= rx_byte_cnt + pad_cnt;
                            end
                        end
                    end
                end

                S_RX_READY : begin
                    rx_byte_rdy <= 0;
                    rx_state    <= S_RX_READY;
                    rx_pkt_vld  <= 1;
                    if (tx_pkt_rdy) begin
                        rx_state    <= S_RX_IDLE;
                        rx_pkt_vld  <= 0;
                    end
                end
            endcase
        end
    end

    crc32
        tx_crc32 (
            .clk        (tx_clk),
            .rst_n      (rst_n),
            .crc_en     (crc_en),
            .data_in    (crc_byte),
            .sof        (crc_sof),
            .eof        (crc_eof),
            .crc_out    (crc),
            .crc_done   (crc_done)
        );

    initial begin
        $dumpfile("mii_tx.vcd");
        $dumpvars();
    end


endmodule