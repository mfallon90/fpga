// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_wrapper_0_0 (
  rmii_rx_clk,
  rmii_rx_rst_n,
  rmii_rx_data,
  rmii_rx_dv,
  rmii_rx_er,
  rmii_crs,
  rmii_col,
  sys_clk,
  sys_rst_n,
  sys_byte_vld,
  sys_data_vld,
  sys_byte,
  crc_vld
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rmii_rx_clk, ASSOCIATED_RESET rmii_rx_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rmii_rx_clk CLK" *)
input wire rmii_rx_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rmii_rx_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rmii_rx_rst_n RST" *)
input wire rmii_rx_rst_n;
input wire [3 : 0] rmii_rx_data;
input wire rmii_rx_dv;
input wire rmii_rx_er;
input wire rmii_crs;
input wire rmii_col;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
input wire sys_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *)
input wire sys_rst_n;
output wire sys_byte_vld;
output wire sys_data_vld;
output wire [7 : 0] sys_byte;
output wire crc_vld;

  wrapper #(
    .P_DEPTH(1024),
    .P_WIDTH(9),
    .P_RESIDUE(32'HC704DD7B)
  ) inst (
    .rmii_rx_clk(rmii_rx_clk),
    .rmii_rx_rst_n(rmii_rx_rst_n),
    .rmii_rx_data(rmii_rx_data),
    .rmii_rx_dv(rmii_rx_dv),
    .rmii_rx_er(rmii_rx_er),
    .rmii_crs(rmii_crs),
    .rmii_col(rmii_col),
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .sys_byte_vld(sys_byte_vld),
    .sys_data_vld(sys_data_vld),
    .sys_byte(sys_byte),
    .crc_vld(crc_vld)
  );
endmodule
