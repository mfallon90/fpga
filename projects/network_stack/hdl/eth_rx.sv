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

module eth_rx #(
    parameter   logic   [47:0]  P_MAC_ADDR  = 48'h00183E02523A,
    parameter   integer         P_PKT_BITS  = 1500*8
    )(
    // ILA signals
    input   logic           ila_clk,
    
    // Ethernet RX signals
    input   logic           rx_clk,
    input   logic           rx_rst_n,
    input   logic   [3:0]   rx_data,
    input   logic           rx_dv,
    input   logic           rx_er,
    input   logic           crs,
    input   logic           col,

    // Streaming FIFO signals
    output  logic           rx_byte_vld,
    input   logic           rx_byte_rdy,
    output  logic   [7:0]   rx_byte
    );

    logic                       rx_pkt_vld;
    logic                       rx_pkt_rdy;
    logic   [P_PKT_BITS-1:0]    rx_pkt;
    logic   [9:0]               rx_byte_cnt;

    rx_get_fsm #(
            .P_MAC_ADDR (P_MAC_ADDR),
            .P_PKT_BITS (P_PKT_BITS))
        get_packet (
            .ila_clk        (ila_clk),
            .rx_clk         (rx_clk),
            .rx_rst_n       (rx_rst_n),
            .rx_data        (rx_data),
            .rx_dv          (rx_dv),
            .rx_er          (rx_er),
            .crs            (crs),
            .col            (col),
            .rx_byte_vld    (rx_byte_vld),
            .rx_byte        (rx_byte),
            .rx_frame_vld   (rx_frame_vld)
            // .rx_pkt_vld     (rx_pkt_vld),
            // .rx_pkt_rdy     (rx_pkt_rdy),
            // .rx_pkt         (rx_pkt),
            // .rx_byte_cnt    (rx_byte_cnt)
        );

    // rx_send_fsm #(
    //         .P_PKT_BITS (P_PKT_BITS))
    //     send_packet (
    //         .rx_clk         (rx_clk),
    //         .rx_rst_n       (rx_rst_n),
    //         .rx_pkt_vld     (rx_pkt_vld),
    //         .rx_pkt_rdy     (rx_pkt_rdy),
    //         .rx_pkt         (rx_pkt),
    //         .rx_pkt_bytes   (rx_byte_cnt),
    //         .tx_byte_vld    (rx_byte_vld),
    //         .tx_byte_rdy    (rx_byte_rdy),
    //         .tx_byte        (rx_byte)
    //     );


    initial begin
        $dumpfile("eth_rx.vcd");
        $dumpvars();
    end


endmodule