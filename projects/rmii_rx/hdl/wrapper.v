`timescale 1ns / 1ps
// `define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR)))
`define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR) | (mac_addr == C_BRDCST)))

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

module wrapper #(
    parameter   integer P_DEPTH = 1024,
    parameter   integer P_WIDTH = 9,
    parameter   [31:0]  P_RESIDUE = 32'hC704DD7B
    )(
    // RMII signals
    input   wire            rmii_rx_clk,
    input   wire            rmii_rx_rst_n,
    input   wire    [3:0]   rmii_rx_data,
    input   wire            rmii_rx_dv,
    input   wire            rmii_rx_er,
    input   wire            rmii_crs,
    input   wire            rmii_col,

    // System Signals
    input   wire            sys_clk,
    input   wire            sys_rst_n,
    output  wire            sys_byte_vld,
    output  wire            sys_data_vld,
    output  wire    [7:0]   sys_byte,
    output  wire            crc_vld
    );

    wire    [7:0]   rx_byte;
    wire            rx_byte_vld;
    wire            rx_data_vld;

    rmii_rx
        rmii (
            .rx_clk         (rmii_rx_clk),
            .rx_rst_n       (rmii_rx_rst_n),
            .rx_data        (rmii_rx_data),
            .rx_dv          (rmii_rx_dv),
            .rx_er          (rmii_rx_er),
            .crs            (rmii_crs),
            .col            (rmii_col),
            .rx_byte_vld    (rx_byte_vld),
            .rx_data_vld    (rx_data_vld),
            .rx_byte        (rx_byte)
        );

    async_fifo #(
            .P_DEPTH (P_DEPTH),
            .P_WIDTH (P_WIDTH))
        fifo (
            .wr_clk     (rmii_rx_clk),
            .wr_rst_n   (rmii_rx_rst_n),
            .wr_data    ({rx_data_vld,rx_byte}),
            .wr_vld     (rx_byte_vld),
            .wr_rdy     (),
            .rd_clk     (sys_clk),
            .rd_rst_n   (sys_rst_n),
            .rd_data    ({sys_data_vld,sys_byte}),
            .rd_vld     (sys_byte_vld),
            .rd_rdy     (1'b1)
        );

    crc_8 #(
            .P_RESIDUE (P_RESIDUE))
        crc32 (
            .clk            (sys_clk),
            .rst_n          (sys_rst_n),
            .data_in        (sys_byte),
            .data_in_vld    (sys_data_vld),
            .byte_in_vld    (sys_byte_vld),
            .crc_vld        (crc_vld)
        );

    initial begin
        $dumpfile("wrapper.vcd");
        $dumpvars();
    end


endmodule