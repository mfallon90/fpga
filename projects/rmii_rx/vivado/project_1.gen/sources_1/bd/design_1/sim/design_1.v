//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon May 22 09:52:20 2023
//Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  input rmii_col;
  input rmii_crs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RMII_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RMII_REF_CLK, CLK_DOMAIN /pll_sys_ref_clk_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output rmii_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RMII_RX_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RMII_RX_CLK, CLK_DOMAIN design_1_rmii_rx_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input rmii_rx_clk;
  input [3:0]rmii_rx_data;
  input rmii_rx_dv;
  input rmii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RMII_RX_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RMII_RX_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]rmii_rx_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN design_1_sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clk;
  output uart_tx;

  wire clk_wiz_1_clk_out1;
  wire [7:0]eth_rx_wrapper_0_data_for_me;
  wire eth_rx_wrapper_0_data_for_me_vld;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_2_peripheral_aresetn;
  wire [0:0]proc_sys_reset_3_peripheral_aresetn;
  wire reset_1;
  wire rmii_col_0_1;
  wire rmii_crs_0_1;
  wire rmii_rx_clk_0_1;
  wire [3:0]rmii_rx_data_0_1;
  wire rmii_rx_dv_0_1;
  wire rmii_rx_er_0_1;
  wire [8:0]rmii_rx_rx_byte;
  wire rmii_rx_rx_byte_vld;
  wire sys_clk_clk_out2;
  wire sys_clock_1;
  wire uart_wrapper_0_uart_tx;

  assign data[0] = eth_rx_wrapper_0_data_for_me_vld;
  assign data_vld = eth_rx_wrapper_0_data_for_me_vld;
  assign reset_1 = reset;
  assign rmii_col_0_1 = rmii_col;
  assign rmii_crs_0_1 = rmii_crs;
  assign rmii_ref_clk = sys_clk_clk_out2;
  assign rmii_rx_clk_0_1 = rmii_rx_clk;
  assign rmii_rx_data_0_1 = rmii_rx_data[3:0];
  assign rmii_rx_dv_0_1 = rmii_rx_dv;
  assign rmii_rx_er_0_1 = rmii_rx_er;
  assign rmii_rx_rstn[0] = proc_sys_reset_3_peripheral_aresetn;
  assign sys_clock_1 = sys_clk;
  assign uart_tx = uart_wrapper_0_uart_tx;
  design_1_eth_rx_wrapper_0_0 eth_rx_wrapper
       (.data_for_me(eth_rx_wrapper_0_data_for_me),
        .data_for_me_vld(eth_rx_wrapper_0_data_for_me_vld),
        .phy_clk(rmii_rx_clk_0_1),
        .phy_data_in(rmii_rx_rx_byte),
        .phy_data_in_vld(rmii_rx_rx_byte_vld),
        .phy_rst_n(proc_sys_reset_1_peripheral_aresetn),
        .sys_clk(clk_wiz_1_clk_out1),
        .sys_rst_n(proc_sys_reset_2_peripheral_aresetn));
  design_1_clk_wiz_0_2 pll_sys_ref_clk
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_1_clk_out1),
        .clk_out2(sys_clk_clk_out2),
        .resetn(reset_1));
  design_1_rmii_rx_0 rmii_rx
       (.col(rmii_col_0_1),
        .crs(rmii_crs_0_1),
        .rx_byte(rmii_rx_rx_byte),
        .rx_byte_vld(rmii_rx_rx_byte_vld),
        .rx_clk(rmii_rx_clk_0_1),
        .rx_data(rmii_rx_data_0_1),
        .rx_dv(rmii_rx_dv_0_1),
        .rx_er(rmii_rx_er_0_1),
        .rx_rst_n(proc_sys_reset_1_peripheral_aresetn));
  design_1_proc_sys_reset_0_1 rst_phy_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(rmii_rx_clk_0_1));
  design_1_proc_sys_reset_2_0 rst_ref_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_3_peripheral_aresetn),
        .slowest_sync_clk(sys_clk_clk_out2));
  design_1_proc_sys_reset_1_0 rst_sys_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_2_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_1_clk_out1));
  design_1_uart_wrapper_0_0 uart_wrapper
       (.clk(clk_wiz_1_clk_out1),
        .data_in(eth_rx_wrapper_0_data_for_me),
        .data_in_vld(eth_rx_wrapper_0_data_for_me_vld),
        .rst_n(proc_sys_reset_2_peripheral_aresetn),
        .uart_tx(uart_wrapper_0_uart_tx));
endmodule
