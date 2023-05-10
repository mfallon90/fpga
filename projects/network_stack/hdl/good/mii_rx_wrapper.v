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

module mii_rx_wrapper #(
    parameter   P_MAC_ADDR      = 48'h3A52023E1800,
    parameter   P_NUM_BRAM      = 4
    )(
    // ILA clock
    input   wire            ila_clk,
    
    // Ethernet RX signals
    input   wire            mii_rx_clk,
    input   wire            mii_rx_rst_n,
    input   wire    [3:0]   mii_rx_data,
    input   wire            mii_rx_dv,
    input   wire            mii_rx_er,
    input   wire            mii_rx_crs,
    input   wire            mii_rx_col,

    // System domain signals
    input   wire            sys_rx_clk,
    input   wire            sys_rx_rst_n,
    output  wire    [7:0]   sys_rx_byte,
    output  wire            sys_rx_byte_vld,
    input   wire            sys_rx_byte_rdy,
    output  wire            sys_rx_sof,
    output  wire            sys_rx_eof
    );

    wire    [7:0]       rx_byte_out;
    wire                rx_byte_vld;
    wire                rx_frm_vld;
    wire                rx_frm_ack;
    wire                rx_sof;
    wire                rx_eof;

    mii_rx #(
            .P_MAC_ADDR (P_MAC_ADDR))
        get_packet (
            .ila_clk        (ila_clk),
            .rx_clk         (mii_rx_clk),
            .rx_rst_n       (mii_rx_rst_n),
            .rx_data        (mii_rx_data),
            .rx_dv          (mii_rx_dv),
            .rx_er          (mii_rx_er),
            .crs            (mii_rx_crs),
            .col            (mii_rx_col),
            .rx_sof         (rx_sof),
            .rx_eof         (rx_eof),
            .rx_byte_vld    (rx_byte_vld),
            .rx_byte        (rx_byte_out),
            .rx_frm_vld     (rx_frm_vld),
            .rx_frm_ack     (rx_frm_ack)
        );

    rx_fifo_wrapper #(
            .P_NUM_BRAM (P_NUM_BRAM))
        rx_fifo (
            .ila_clk        (ila_clk),
            .wr_clk         (mii_rx_clk),
            .wr_rst_n       (mii_rx_rst_n),
            .wr_sof         (rx_sof),
            .wr_eof         (rx_eof),
            .wr_byte        (rx_byte_out),
            .wr_byte_vld    (rx_byte_vld),
            .wr_frm_vld     (rx_frm_vld),
            .wr_frm_ack     (rx_frm_ack),
            .rd_clk         (sys_rx_clk),
            .rd_rst_n       (sys_rx_rst_n),
            .rd_byte        (sys_rx_byte),
            .rd_byte_vld    (sys_rx_byte_vld),
            .rd_byte_rdy    (sys_rx_byte_rdy),
            .rd_sof         (sys_rx_sof),
            .rd_eof         (sys_rx_eof)
        );

    // Dump waves
    // initial begin
    //     $dumpfile("mii_rx_wrapper.vcd");
    //     $dumpvars(0, mii);
    // end

endmodule
