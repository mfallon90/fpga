// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 17:21:06 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_async_fifo_0_0_stub.v
// Design      : design_1_async_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "async_fifo,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(wr_clk, wr_rst_n, wr_data, wr_vld, wr_rdy, rd_clk, 
  rd_rst_n, rd_data, rd_vld, rd_rdy)
/* synthesis syn_black_box black_box_pad_pin="wr_clk,wr_rst_n,wr_data[7:0],wr_vld,wr_rdy,rd_clk,rd_rst_n,rd_data[7:0],rd_vld,rd_rdy" */;
  input wr_clk;
  input wr_rst_n;
  input [7:0]wr_data;
  input wr_vld;
  output wr_rdy;
  input rd_clk;
  input rd_rst_n;
  output [7:0]rd_data;
  output rd_vld;
  input rd_rdy;
endmodule
