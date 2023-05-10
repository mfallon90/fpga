`timescale 1ns / 1ps
`define PREAMBLE_CNT    (C_PREAMBLE_BITS >> C_SHIFT_BITS)
`define ADDR_CNT        (C_ADDR_BITS >> C_SHIFT_BITS)
`define LEN_CNT         (C_LEN_BITS >> C_SHIFT_BITS)
`define MIN_PCK_CNT     (C_MIN_PKT_BITS >> C_SHIFT_BITS)
`define PKT_CNT         ((len_type << 3) >> C_SHIFT_BITS)
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

module eth_tx #(
    parameter   logic   [47:0]  P_MAC_ADDR  = 48'h047BCB62BF3E,
    // parameter   logic   [47:0]  P_MAC_ADDR  = 48'h00183E02523A,
    parameter   integer         P_PKT_BITS  = 1500*8
    )(
    // ILA signals
    input   logic           ila_clk,

    // Ethernet RX signals
    input   logic           tx_clk,
    input   logic           tx_rst_n,
    output  logic   [3:0]   tx_data,
    output  logic           tx_en,

    // Streaming FIFO signals
    input   logic           tx_byte_vld,
    output  logic           tx_byte_rdy,
    input   logic   [7:0]   tx_byte,

    // Control unit interface
    input   logic   [47:0]  tx_dst_mac,
    input   logic   [15:0]  tx_pkt_type
    );

    logic                       tx_pkt_vld;
    logic                       tx_pkt_rdy;
    logic   [P_PKT_BITS-1:0]    tx_pkt;
    logic   [9:0]               tx_byte_cnt;

    tx_get_fsm #(
            .P_MAC_ADDR (P_MAC_ADDR),
            .P_PKT_BITS (P_PKT_BITS))
        get_bytes (
            .tx_clk         (tx_clk),
            .tx_rst_n       (tx_rst_n),
            .dst_mac        (tx_dst_mac),
            .pkt_type       (tx_pkt_type),
            .rx_byte_vld    (tx_byte_vld),
            .rx_byte_rdy    (tx_byte_rdy),
            .rx_byte        (tx_byte),
            .tx_pkt_vld     (tx_pkt_vld),
            .tx_pkt_rdy     (tx_pkt_rdy),
            .tx_pkt         (tx_pkt),
            .tx_pkt_bytes   (tx_byte_cnt)
        );

    tx_send_fsm #(
            .P_MAC_ADDR (P_MAC_ADDR),
            .P_PKT_BITS (P_PKT_BITS))
        send_nibbles (
            .ila_clk        (ila_clk),
            .tx_clk         (tx_clk),
            .tx_rst_n       (tx_rst_n),
            .tx_data        (tx_data),
            .tx_en          (tx_en),
            .tx_pkt_vld     (tx_pkt_vld),
            .tx_pkt_rdy     (tx_pkt_rdy),
            .tx_pkt         (tx_pkt),
            .tx_byte_cnt    (tx_byte_cnt)
        );


    // initial begin
    //     $dumpfile("eth_tx.vcd");
    //     $dumpvars();
    // end


endmodule