// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 19:43:42 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_uart_wrapper_0_0/design_1_uart_wrapper_0_0_stub.v
// Design      : design_1_uart_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_wrapper,Vivado 2020.2" *)
module design_1_uart_wrapper_0_0(clk, rst_n, data_in, data_in_vld, uart_tx)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,data_in[7:0],data_in_vld,uart_tx" */;
  input clk;
  input rst_n;
  input [7:0]data_in;
  input data_in_vld;
  output uart_tx;
endmodule
