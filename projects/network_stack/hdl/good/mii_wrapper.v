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

module mii_wrapper #(
    parameter   P_MAC_ADDR      = 48'h3A52023E1800,
    parameter   P_NUM_BRAM      = 4
    )(
    // ILA clock
    input   wire            ila_clk,

    // System signals
    input   wire            sys_clk,
    input   wire            sys_rst_n,

    // System RX signals
    output  wire    [7:0]   sys_rx_byte,
    output  wire            sys_rx_byte_vld,
    input   wire            sys_rx_byte_rdy,
    output  wire            sys_rx_sof,
    output  wire            sys_rx_eof,

    // System TX signals
    output  wire    [7:0]   sys_tx_byte,
    output  wire            sys_tx_byte_vld,
    input   wire            sys_tx_byte_rdy,
    output  wire            sys_tx_sof,
    output  wire            sys_tx_eof,
    
    // Ethernet TX signals
    input   wire            mii_tx_clk,
    input   wire            mii_tx_rst_n,
    output  wire    [3:0]   mii_tx_data,
    output  wire            mii_tx_en,
    
    // Ethernet RX signals
    input   wire            mii_rx_clk,
    input   wire            mii_rx_rst_n,
    input   wire    [3:0]   mii_rx_data,
    input   wire            mii_rx_dv,
    input   wire            mii_rx_er,
    input   wire            mii_rx_col,
    input   wire            mii_rx_crs
    );


    mii_rx_wrapper #(
            .P_MAC_ADDR (P_MAC_ADDR),
            .P_NUM_BRAM (P_NUM_BRAM))
        mii_receive (
            .ila_clk            (ila_clk),
            .mii_rx_clk         (mii_rx_clk),
            .mii_rx_rst_n       (mii_rx_rst_n),
            .mii_rx_data        (mii_rx_data),
            .mii_rx_dv          (mii_rx_dv),
            .mii_rx_er          (mii_rx_er),
            .mii_rx_crs         (mii_rx_crs),
            .mii_rx_col         (mii_rx_col),
            .sys_rx_clk         (sys_clk),
            .sys_rx_rst_n       (sys_rst_n),
            .sys_rx_byte        (sys_rx_byte),
            .sys_rx_byte_vld    (sys_rx_byte_vld),
            .sys_rx_byte_rdy    (sys_rx_byte_rdy),
            .sys_rx_sof         (sys_rx_sof),
            .sys_rx_eof         (sys_rx_eof)
        );


    mii_tx_wrapper #(
            .P_NUM_BRAM (P_NUM_BRAM))
        mii_transmit (
            .ila_clk            (ila_clk),
            .mii_tx_clk         (mii_tx_clk),
            .mii_tx_rst_n       (mii_tx_rst_n),
            .mii_tx_data        (mii_tx_data),
            .mii_tx_en          (mii_tx_en),
            .sys_tx_clk         (sys_clk),
            .sys_tx_rst_n       (sys_rst_n),
            .sys_tx_byte        (sys_tx_byte),
            .sys_tx_byte_vld    (sys_tx_byte_vld),
            .sys_tx_byte_rdy    (sys_tx_byte_rdy),
            .sys_tx_sof         (sys_tx_sof),
            .sys_tx_eof         (sys_tx_eof)
        );


    // Dump waves
    initial begin
        $dumpfile("mii_wrapper.vcd");
        $dumpvars();
    end

    endmodule
