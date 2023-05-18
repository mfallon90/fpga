//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed May 17 17:12:50 2023
//Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (crc_vld,
    reset,
    rmii_col,
    rmii_crs,
    rmii_ref_clk,
    rmii_rx_clk,
    rmii_rx_data,
    rmii_rx_dv,
    rmii_rx_er,
    rmii_rx_rstn,
    sys_byte,
    sys_byte_vld,
    sys_clk,
    sys_clk_test,
    sys_data_vld);
  output crc_vld;
  input reset;
  input rmii_col;
  input rmii_crs;
  output rmii_ref_clk;
  input rmii_rx_clk;
  input [3:0]rmii_rx_data;
  input rmii_rx_dv;
  input rmii_rx_er;
  output [0:0]rmii_rx_rstn;
  output [7:0]sys_byte;
  output sys_byte_vld;
  input sys_clk;
  output sys_clk_test;
  output sys_data_vld;

  wire crc_vld;
  wire reset;
  wire rmii_col;
  wire rmii_crs;
  wire rmii_ref_clk;
  wire rmii_rx_clk;
  wire [3:0]rmii_rx_data;
  wire rmii_rx_dv;
  wire rmii_rx_er;
  wire [0:0]rmii_rx_rstn;
  wire [7:0]sys_byte;
  wire sys_byte_vld;
  wire sys_clk;
  wire sys_clk_test;
  wire sys_data_vld;

  design_1 design_1_i
       (.crc_vld(crc_vld),
        .reset(reset),
        .rmii_col(rmii_col),
        .rmii_crs(rmii_crs),
        .rmii_ref_clk(rmii_ref_clk),
        .rmii_rx_clk(rmii_rx_clk),
        .rmii_rx_data(rmii_rx_data),
        .rmii_rx_dv(rmii_rx_dv),
        .rmii_rx_er(rmii_rx_er),
        .rmii_rx_rstn(rmii_rx_rstn),
        .sys_byte(sys_byte),
        .sys_byte_vld(sys_byte_vld),
        .sys_clk(sys_clk),
        .sys_clk_test(sys_clk_test),
        .sys_data_vld(sys_data_vld));
endmodule
