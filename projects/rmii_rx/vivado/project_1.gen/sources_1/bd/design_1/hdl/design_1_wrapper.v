//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon May 22 09:52:20 2023
//Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (data,
    data_vld,
    reset,
    rmii_col,
    rmii_crs,
    rmii_ref_clk,
    rmii_rx_clk,
    rmii_rx_data,
    rmii_rx_dv,
    rmii_rx_er,
    rmii_rx_rstn,
    sys_clk,
    uart_tx);
  output [7:0]data;
  output data_vld;
  input reset;
  input rmii_col;
  input rmii_crs;
  output rmii_ref_clk;
  input rmii_rx_clk;
  input [3:0]rmii_rx_data;
  input rmii_rx_dv;
  input rmii_rx_er;
  output [0:0]rmii_rx_rstn;
  input sys_clk;
  output uart_tx;

  wire [7:0]data;
  wire data_vld;
  wire reset;
  wire rmii_col;
  wire rmii_crs;
  wire rmii_ref_clk;
  wire rmii_rx_clk;
  wire [3:0]rmii_rx_data;
  wire rmii_rx_dv;
  wire rmii_rx_er;
  wire [0:0]rmii_rx_rstn;
  wire sys_clk;
  wire uart_tx;

  design_1 design_1_i
       (.data(data),
        .data_vld(data_vld),
        .reset(reset),
        .rmii_col(rmii_col),
        .rmii_crs(rmii_crs),
        .rmii_ref_clk(rmii_ref_clk),
        .rmii_rx_clk(rmii_rx_clk),
        .rmii_rx_data(rmii_rx_data),
        .rmii_rx_dv(rmii_rx_dv),
        .rmii_rx_er(rmii_rx_er),
        .rmii_rx_rstn(rmii_rx_rstn),
        .sys_clk(sys_clk),
        .uart_tx(uart_tx));
endmodule
