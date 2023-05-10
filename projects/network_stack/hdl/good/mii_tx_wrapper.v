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

module mii_tx_wrapper #(
    parameter   P_MAC_ADDR      = 48'h3A52023E1800,
    parameter   P_NUM_BRAM      = 4
    )(
    // ILA clock
    input   wire            ila_clk,
    
    // Ethernet TX signals
    input   wire            mii_tx_clk,
    input   wire            mii_tx_rst_n,
    output  wire    [3:0]   mii_tx_data,
    output  wire            mii_tx_en,

    // System domain signals
    input   wire            sys_tx_clk,
    input   wire            sys_tx_rst_n,
    input   wire    [7:0]   sys_tx_byte,
    input   wire            sys_tx_byte_vld,
    output  wire            sys_tx_byte_rdy,
    input   wire            sys_tx_sof,
    input   wire            sys_tx_eof
    );

    wire    [7:0]       eth_tx_byte;
    wire                eth_tx_byte_vld;
    wire                eth_tx_byte_rdy;
    wire                eth_tx_sof;
    wire                eth_tx_eof;
    wire                eth_tx_sof_ack;


    mii_tx 
        send_packet (
            .ila_clk        (ila_clk),
            .tx_clk         (mii_tx_clk),
            .tx_rst_n       (mii_tx_rst_n),
            .tx_data        (mii_tx_data),
            .tx_en          (mii_tx_en),
            .tx_sof         (eth_tx_sof),
            .tx_eof         (eth_tx_eof),
            .tx_byte_vld    (eth_tx_byte_vld),
            .tx_byte_rdy    (eth_tx_byte_rdy),
            .tx_byte        (eth_tx_byte),
            .tx_sof_ack     (eth_tx_sof_ack),
            .tx_state_probe ()
        );

    tx_fifo_wrapper #(
            .P_NUM_BRAM (P_NUM_BRAM))
        tx_fifo (
            .ila_clk        (ila_clk),
            .wr_clk         (sys_tx_clk),
            .wr_rst_n       (sys_tx_rst_n),
            .wr_sof         (sys_tx_sof),
            .wr_eof         (sys_tx_eof),
            .wr_byte        (sys_tx_byte),
            .wr_byte_vld    (sys_tx_byte_vld),
            .wr_byte_rdy    (sys_tx_byte_rdy),
            .rd_clk         (mii_tx_clk),
            .rd_rst_n       (mii_tx_rst_n),
            .rd_byte        (eth_tx_byte),
            .rd_byte_vld    (eth_tx_byte_vld),
            .rd_byte_rdy    (eth_tx_byte_rdy),
            .rd_sof         (eth_tx_sof),
            .rd_eof         (eth_tx_eof),
            .rd_sof_ack     (eth_tx_sof_ack)
        );

    // Dump waves
    // initial begin
    //     $dumpfile("mii_tx_wrapper.vcd");
    //     $dumpvars(0, mii);
    // end

    endmodule
