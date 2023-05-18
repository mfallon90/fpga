//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed May 17 17:12:50 2023
//Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  input rmii_col;
  input rmii_crs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RMII_REF_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RMII_REF_CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output rmii_ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RMII_RX_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RMII_RX_CLK, CLK_DOMAIN design_1_rmii_rx_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input rmii_rx_clk;
  input [3:0]rmii_rx_data;
  input rmii_rx_dv;
  input rmii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RMII_RX_RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RMII_RX_RSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]rmii_rx_rstn;
  output [7:0]sys_byte;
  output sys_byte_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_TEST CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_TEST, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output sys_clk_test;
  output sys_data_vld;

  wire clk_wiz_0_clk_out1;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_2_peripheral_aresetn;
  wire reset_1;
  wire rmii_col_0_1;
  wire rmii_crs_0_1;
  wire rmii_rx_clk_0_1;
  wire [3:0]rmii_rx_data_0_1;
  wire rmii_rx_dv_0_1;
  wire rmii_rx_er_0_1;
  wire sys_clock_1;
  wire wrapper_0_crc_vld;
  wire [7:0]wrapper_0_sys_byte;
  wire wrapper_0_sys_byte_vld;
  wire wrapper_0_sys_data_vld;

  assign crc_vld = wrapper_0_crc_vld;
  assign reset_1 = reset;
  assign rmii_col_0_1 = rmii_col;
  assign rmii_crs_0_1 = rmii_crs;
  assign rmii_ref_clk = clk_wiz_0_clk_out1;
  assign rmii_rx_clk_0_1 = rmii_rx_clk;
  assign rmii_rx_data_0_1 = rmii_rx_data[3:0];
  assign rmii_rx_dv_0_1 = rmii_rx_dv;
  assign rmii_rx_er_0_1 = rmii_rx_er;
  assign rmii_rx_rstn[0] = proc_sys_reset_2_peripheral_aresetn;
  assign sys_byte[7:0] = wrapper_0_sys_byte;
  assign sys_byte_vld = wrapper_0_sys_byte_vld;
  assign sys_clk_test = clk_wiz_0_clk_out1;
  assign sys_clock_1 = sys_clk;
  assign sys_data_vld = wrapper_0_sys_data_vld;
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .resetn(reset_1));
  design_1_proc_sys_reset_0_1 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(rmii_rx_clk_0_1));
  design_1_proc_sys_reset_1_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_2_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_wrapper_0_0 wrapper_0
       (.crc_vld(wrapper_0_crc_vld),
        .rmii_col(rmii_col_0_1),
        .rmii_crs(rmii_crs_0_1),
        .rmii_rx_clk(rmii_rx_clk_0_1),
        .rmii_rx_data(rmii_rx_data_0_1),
        .rmii_rx_dv(rmii_rx_dv_0_1),
        .rmii_rx_er(rmii_rx_er_0_1),
        .rmii_rx_rst_n(proc_sys_reset_1_peripheral_aresetn),
        .sys_byte(wrapper_0_sys_byte),
        .sys_byte_vld(wrapper_0_sys_byte_vld),
        .sys_clk(clk_wiz_0_clk_out1),
        .sys_data_vld(wrapper_0_sys_data_vld),
        .sys_rst_n(proc_sys_reset_2_peripheral_aresetn));
endmodule
