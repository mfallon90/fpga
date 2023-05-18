//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu May 11 17:43:51 2023
//Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (reset,
    sys_clk,
    uart_rx,
    uart_tx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clk;
  input uart_rx;
  output uart_tx;

  wire [7:0]async_fifo_0_rd_data;
  wire async_fifo_0_rd_vld;
  wire async_fifo_0_wr_rdy;
  wire [7:0]clk_1_uart_rx_uart_word;
  wire clk_1_uart_rx_uart_word_vld;
  wire [0:0]clk_2_reset_peripheral_aresetn;
  wire clk_2_uart_tx_data_in_rdy;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_1;
  wire sys_clk_1;
  wire uart_rx_0_1;
  wire uart_transmitter_0_uart_tx;

  assign reset_1 = reset;
  assign sys_clk_1 = sys_clk;
  assign uart_rx_0_1 = uart_rx;
  assign uart_tx = uart_transmitter_0_uart_tx;
  design_1_async_fifo_0_0 async_fifo_0
       (.rd_clk(clk_wiz_0_clk_out2),
        .rd_data(async_fifo_0_rd_data),
        .rd_rdy(clk_2_uart_tx_data_in_rdy),
        .rd_rst_n(clk_2_reset_peripheral_aresetn),
        .rd_vld(async_fifo_0_rd_vld),
        .wr_clk(clk_wiz_0_clk_out1),
        .wr_data(clk_1_uart_rx_uart_word),
        .wr_rdy(async_fifo_0_wr_rdy),
        .wr_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .wr_vld(clk_1_uart_rx_uart_word_vld));
  design_1_proc_sys_reset_0_0 clk_1_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_uart_receiver_0_0 clk_1_uart_rx
       (.clk(clk_wiz_0_clk_out1),
        .rst_n(proc_sys_reset_0_peripheral_aresetn),
        .uart_rx(uart_rx_0_1),
        .uart_word(clk_1_uart_rx_uart_word),
        .uart_word_rdy(async_fifo_0_wr_rdy),
        .uart_word_vld(clk_1_uart_rx_uart_word_vld));
  design_1_proc_sys_reset_0_1 clk_2_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(clk_2_reset_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  design_1_uart_transmitter_0_0 clk_2_uart_tx
       (.clk(clk_wiz_0_clk_out2),
        .data_in(async_fifo_0_rd_data),
        .data_in_rdy(clk_2_uart_tx_data_in_rdy),
        .data_in_vld(async_fifo_0_rd_vld),
        .rst_n(clk_2_reset_peripheral_aresetn),
        .uart_tx(uart_transmitter_0_uart_tx));
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clk_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2),
        .resetn(reset_1));
endmodule
