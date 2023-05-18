//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu May 11 17:43:51 2023
//Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (reset,
    sys_clk,
    uart_rx,
    uart_tx);
  input reset;
  input sys_clk;
  input uart_rx;
  output uart_tx;

  wire reset;
  wire sys_clk;
  wire uart_rx;
  wire uart_tx;

  design_1 design_1_i
       (.reset(reset),
        .sys_clk(sys_clk),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx));
endmodule
