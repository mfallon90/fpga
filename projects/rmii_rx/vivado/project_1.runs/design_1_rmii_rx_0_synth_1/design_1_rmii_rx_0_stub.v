// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 19:24:40 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rmii_rx_0_stub.v
// Design      : design_1_rmii_rx_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rmii_rx,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rx_clk, rx_rst_n, rx_data, rx_dv, rx_er, crs, col, 
  rx_byte, rx_byte_vld)
/* synthesis syn_black_box black_box_pad_pin="rx_clk,rx_rst_n,rx_data[3:0],rx_dv,rx_er,crs,col,rx_byte[8:0],rx_byte_vld" */;
  input rx_clk;
  input rx_rst_n;
  input [3:0]rx_data;
  input rx_dv;
  input rx_er;
  input crs;
  input col;
  output [8:0]rx_byte;
  output rx_byte_vld;
endmodule
