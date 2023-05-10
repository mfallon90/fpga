`timescale 1ns / 1ps
`define ADDR_WIDTH ($clog2(P_NUM_REG) + 2)

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

module mii #(
    parameter   P_MAC_ADDR      = 48'h3A52023E1800,
    parameter   P_NUM_BRAM      = 4
    )(
    // ILA clock
    input   wire            ila_clk,

    // System domain signals
    input   wire            sys_clk,
    input   wire            sys_rst_n,
    
    // Ethernet TX signals
    input   wire            eth_tx_rst_n,
    input   wire            eth_tx_clk,
    output  wire    [3:0]   eth_tx_data,
    output  wire            eth_tx_en,
    
    // Ethernet RX signals
    input   wire            eth_rx_rst_n,
    input   wire            eth_rx_clk,
    input   wire    [3:0]   eth_rx_data,
    input   wire            eth_rx_dv,
    input   wire            eth_rx_er,
    input   wire            eth_col,
    input   wire            eth_crs,

    // PROBING SIGNALS
    output  wire    [2:0]   tx_send_state_probe,
    output  wire    [1:0]   fifo_state_probe,
    output  wire            fifo_full_probe,
    output  wire            fifo_empty_probe,
    output  wire            fifo_byte_vld,
    output  wire            fifo_byte_rdy
    );

    assign fifo_byte_vld = eth_tx_byte_vld;
    assign fifo_byte_rdy = eth_tx_byte_rdy;

    wire    [7:0]        rx_byte_out;
    wire                 rx_byte_vld;
    wire                 rx_frm_vld;
    wire                 rx_frm_ack;

    wire    [7:0]       sys_byte;
    wire                sys_byte_vld;
    wire                sys_byte_rdy;
    wire                sys_sof;
    wire                sys_eof;

    wire    [7:0]       eth_tx_byte;
    wire                eth_tx_byte_vld;
    wire                eth_tx_byte_rdy;
    wire                eth_tx_sof;
    wire                eth_tx_eof;
    wire                eth_tx_sof_ack;


    mii_rx #(
            .P_MAC_ADDR (P_MAC_ADDR))
        get_packet (
            .ila_clk        (ila_clk),
            .rx_clk         (eth_rx_clk),
            .rx_rst_n       (eth_rx_rst_n),
            .rx_data        (eth_rx_data),
            .rx_dv          (eth_rx_dv),
            .rx_er          (eth_rx_er),
            .crs            (eth_crs),
            .col            (eth_col),
            .rx_sof         (rx_sof),
            .rx_eof         (rx_eof),
            .rx_byte_vld    (rx_byte_vld),
            .rx_byte        (rx_byte_out),
            .rx_frm_vld     (rx_frm_vld),
            .rx_frm_ack     (rx_frm_ack)
        );


    mii_tx #(
            .P_MAC_ADDR (P_MAC_ADDR))
        send_packet (
            .ila_clk        (ila_clk),
            .tx_clk         (eth_tx_clk),
            .tx_rst_n       (eth_tx_rst_n),
            .tx_data        (eth_tx_data),
            .tx_en          (eth_tx_en),
            .tx_sof         (eth_tx_sof),
            .tx_eof         (eth_tx_eof),
            .tx_byte_vld    (eth_tx_byte_vld),
            .tx_byte_rdy    (eth_tx_byte_rdy),
            .tx_byte        (eth_tx_byte),
            .tx_sof_ack     (eth_tx_sof_ack),
            .tx_state_probe (tx_send_state_probe)
        );

    rx_fifo_wrapper #(
            .P_NUM_BRAM (P_NUM_BRAM))
        rx_fifo (
            .ila_clk        (ila_clk),
            .wr_clk         (eth_rx_clk),
            .wr_rst_n       (eth_rx_rst_n),
            .wr_sof         (rx_sof),
            .wr_eof         (rx_eof),
            .wr_byte        (rx_byte_out),
            .wr_byte_vld    (rx_byte_vld),
            .wr_frm_vld     (rx_frm_vld),
            .wr_frm_ack     (rx_frm_ack),
            .rd_clk         (sys_clk),
            .rd_rst_n       (sys_rst_n),
            .rd_byte        (sys_byte),
            .rd_byte_vld    (sys_byte_vld),
            .rd_byte_rdy    (sys_byte_rdy),
            .rd_sof         (sys_sof),
            .rd_eof         (sys_eof)
        );

    tx_fifo_wrapper #(
            .P_NUM_BRAM (P_NUM_BRAM))
        tx_fifo (
            .ila_clk        (ila_clk),
            .wr_clk         (sys_clk),
            .wr_rst_n       (sys_rst_n),
            .wr_sof         (sys_sof),
            .wr_eof         (sys_eof),
            .wr_byte        (sys_byte),
            .wr_byte_vld    (sys_byte_vld),
            .wr_byte_rdy    (sys_byte_rdy),
            .rd_clk         (eth_tx_clk),
            .rd_rst_n       (eth_tx_rst_n),
            .rd_byte        (eth_tx_byte),
            .rd_byte_vld    (eth_tx_byte_vld),
            .rd_byte_rdy    (eth_tx_byte_rdy),
            .rd_sof         (eth_tx_sof),
            .rd_eof         (eth_tx_eof),
            .rd_sof_ack     (eth_tx_sof_ack),
            .tx_state_probe (fifo_state_probe),
            .tx_full_probe  (fifo_full_probe),
            .tx_empty_probe (fifo_empty_probe)
        );

    // Dump waves
    initial begin
        $dumpfile("mii.vcd");
        $dumpvars(0, mii);
    end

    endmodule
