`timescale 1ns / 1ps
`define DIV_BITS $clog2(C_CLK_DIV)
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
    parameter integer C_CLK_DIV = 16
    )(
    // TX signals
    input   logic           mii_tx_clk,
    output  logic   [3:0]   mii_tx_data,
    output  logic           mii_tx_en,
    output  logic           mii_tx_er,

    // RX signals
    input   logic           mii_rx_clk,
    input   logic   [3:0]   mii_rx_data,
    input   logic           mii_rx_dv,
    input   logic           mii_rx_er,
    input   logic           mii_crs,
    input   logic           mii_col
    );

    localparam  logic   [2:0]   S_IDLE      = 3'b000;
    localparam  logic   [2:0]   S_PREAMBLE  = 3'b001;
    localparam  logic   [2:0]   S_DEST_ADDR = 3'b010;
    localparam  logic   [2:0]   S_SRC_ADDR  = 3'b011;
    localparam  logic   [2:0]   S_TYPE      = 3'b100;

    localparam  logic   [7:0]   PREAMBLE    = 8'hAA;
    localparam  logic   [7:0]   SFD         = 8'hAB;

    logic   



    // initial begin
    //     $dumpfile("mdio.vcd");
    //     $dumpvars();
    // end


endmodule