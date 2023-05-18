// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 17 17:13:26 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_wrapper_0_0_stub.v
// Design      : design_1_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "wrapper,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rmii_rx_clk, rmii_rx_rst_n, rmii_rx_data, 
  rmii_rx_dv, rmii_rx_er, rmii_crs, rmii_col, sys_clk, sys_rst_n, sys_byte_vld, sys_data_vld, 
  sys_byte, crc_vld)
/* synthesis syn_black_box black_box_pad_pin="rmii_rx_clk,rmii_rx_rst_n,rmii_rx_data[3:0],rmii_rx_dv,rmii_rx_er,rmii_crs,rmii_col,sys_clk,sys_rst_n,sys_byte_vld,sys_data_vld,sys_byte[7:0],crc_vld" */;
  input rmii_rx_clk;
  input rmii_rx_rst_n;
  input [3:0]rmii_rx_data;
  input rmii_rx_dv;
  input rmii_rx_er;
  input rmii_crs;
  input rmii_col;
  input sys_clk;
  input sys_rst_n;
  output sys_byte_vld;
  output sys_data_vld;
  output [7:0]sys_byte;
  output crc_vld;
endmodule
