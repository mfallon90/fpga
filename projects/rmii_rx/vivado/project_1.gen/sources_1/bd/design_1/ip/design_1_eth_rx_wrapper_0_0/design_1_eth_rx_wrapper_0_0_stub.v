// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 19:43:44 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_eth_rx_wrapper_0_0/design_1_eth_rx_wrapper_0_0_stub.v
// Design      : design_1_eth_rx_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "eth_rx_wrapper,Vivado 2020.2" *)
module design_1_eth_rx_wrapper_0_0(phy_clk, phy_rst_n, phy_data_in, 
  phy_data_in_vld, sys_clk, sys_rst_n, data_drop, data_drop_vld, data_broadcast, 
  data_broadcast_vld, data_for_me, data_for_me_vld, data_not_for_me, data_not_for_me_vld)
/* synthesis syn_black_box black_box_pad_pin="phy_clk,phy_rst_n,phy_data_in[8:0],phy_data_in_vld,sys_clk,sys_rst_n,data_drop[7:0],data_drop_vld,data_broadcast[7:0],data_broadcast_vld,data_for_me[7:0],data_for_me_vld,data_not_for_me[7:0],data_not_for_me_vld" */;
  input phy_clk;
  input phy_rst_n;
  input [8:0]phy_data_in;
  input phy_data_in_vld;
  input sys_clk;
  input sys_rst_n;
  output [7:0]data_drop;
  output data_drop_vld;
  output [7:0]data_broadcast;
  output data_broadcast_vld;
  output [7:0]data_for_me;
  output data_for_me_vld;
  output [7:0]data_not_for_me;
  output data_not_for_me_vld;
endmodule
