`timescale 1ns / 1ps


//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: rmii_rx
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: This module receives data from phy using standard MII protocol.
// Data is received in nibbles and sent out as bytes, along with a byte valid 
// flag to indicate a valid byte. The MII protocol specifies that data is received
// Most Significant Byte first, but within that byte, the Least Significant Nibble
// is received first, followed by the Most significant nibble. So if the following
// data is seen on rx_data : 0xA 0xC 0x4 0xD then the intended bytes are 0xCA 0xD4
//
// Note that the MAC address for the PHY must be provided with the nibbles
// inverted in order to conform to the MII receive data format
//
//////////////////////////////////////////////////////////////////////////////////

module uart_wrapper #(
    parameter   integer P_DEPTH = 2048,
    parameter   integer P_WIDTH = 8,
    parameter   integer P_CLK_FREQ = 25,
    parameter   integer P_BAUD_RATE = 115200,
    parameter   integer P_NUM_STOP = 1,
    parameter   integer P_PARITY = 0
    )(
    // System Signals
    input   wire            clk,
    input   wire            rst_n,
    input   wire    [7:0]   data_in,
    input   wire            data_in_vld,
    output  wire            uart_tx
    );

    wire    [7:0]   rd_data;
    wire            rd_data_vld;
    wire            rd_data_rdy;

    fifo #(
            .P_DEPTH (P_DEPTH),
            .P_WIDTH (P_WIDTH))
        uart_fifo (
            .clk        (clk),
            .rst_n      (rst_n),
            .wr_data    (data_in),
            .wr_vld     (data_in_vld),
            .wr_rdy     (),
            .rd_data    (rd_data),
            .rd_vld     (rd_data_vld),
            .rd_rdy     (rd_data_rdy)
        );

    uart_transmitter #(
            .P_NUM_BITS     (P_WIDTH),
            .P_CLK_FREQ     (P_CLK_FREQ),
            .P_BAUD_RATE    (P_BAUD_RATE),
            .P_NUM_STOP     (P_NUM_STOP),
            .P_PARITY       (P_PARITY))
        uart (
            .clk            (clk),
            .rst_n          (rst_n),
            .data_in        (rd_data),
            .data_in_vld    (rd_data_vld),
            .data_in_rdy    (rd_data_rdy),
            .uart_tx        (uart_tx)
        );



endmodule