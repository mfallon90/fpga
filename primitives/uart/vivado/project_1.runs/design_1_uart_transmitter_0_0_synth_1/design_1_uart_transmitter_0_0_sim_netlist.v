// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 17:44:36 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_transmitter_0_0_sim_netlist.v
// Design      : design_1_uart_transmitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_transmitter_0_0,uart_transmitter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_transmitter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    data_in,
    data_in_vld,
    data_in_rdy,
    uart_tx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 175000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [7:0]data_in;
  input data_in_vld;
  output data_in_rdy;
  output uart_tx;

  wire clk;
  wire [7:0]data_in;
  wire data_in_rdy;
  wire data_in_vld;
  wire rst_n;
  wire uart_tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter inst
       (.clk(clk),
        .data_in(data_in),
        .data_in_rdy(data_in_rdy),
        .data_in_vld(data_in_vld),
        .rst_n(rst_n),
        .uart_tx(uart_tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter
   (uart_tx,
    data_in_rdy,
    rst_n,
    data_in,
    clk,
    data_in_vld);
  output uart_tx;
  output data_in_rdy;
  input rst_n;
  input [7:0]data_in;
  input clk;
  input data_in_vld;

  wire bits0;
  wire \bits[3]_i_1_n_0 ;
  wire [3:0]bits_reg;
  wire clk;
  wire [10:0]cnt;
  wire \cnt[10]_i_3_n_0 ;
  wire \cnt[10]_i_4_n_0 ;
  wire \cnt[10]_i_5_n_0 ;
  wire \cnt[10]_i_6_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt[8]_i_4_n_0 ;
  wire \cnt[9]_i_2_n_0 ;
  wire [7:0]data_in;
  wire data_in_rdy;
  wire data_in_vld;
  wire p_0_in;
  wire [3:0]p_0_in__0;
  wire rst_n;
  wire [10:0]sel0;
  wire state_i_1_n_0;
  wire state_reg_n_0;
  wire \temp[0]_i_1_n_0 ;
  wire \temp[1]_i_1_n_0 ;
  wire \temp[2]_i_1_n_0 ;
  wire \temp[3]_i_1_n_0 ;
  wire \temp[4]_i_1_n_0 ;
  wire \temp[5]_i_1_n_0 ;
  wire \temp[6]_i_1_n_0 ;
  wire \temp[7]_i_1_n_0 ;
  wire \temp[8]_i_1_n_0 ;
  wire \temp[8]_i_2_n_0 ;
  wire \temp[8]_i_3_n_0 ;
  wire \temp[8]_i_4_n_0 ;
  wire \temp[8]_i_5_n_0 ;
  wire \temp[8]_i_6_n_0 ;
  wire \temp[8]_i_7_n_0 ;
  wire \temp[9]_i_1_n_0 ;
  wire \temp_reg_n_0_[0] ;
  wire \temp_reg_n_0_[1] ;
  wire \temp_reg_n_0_[2] ;
  wire \temp_reg_n_0_[3] ;
  wire \temp_reg_n_0_[4] ;
  wire \temp_reg_n_0_[5] ;
  wire \temp_reg_n_0_[6] ;
  wire \temp_reg_n_0_[7] ;
  wire \temp_reg_n_0_[8] ;
  wire \temp_reg_n_0_[9] ;
  wire uart_tx;
  wire uart_tx_i_1_n_0;
  wire uart_tx_i_2_n_0;
  wire uart_tx_i_3_n_0;
  wire uart_tx_i_4_n_0;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bits[0]_i_1 
       (.I0(bits_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bits[1]_i_1 
       (.I0(bits_reg[0]),
        .I1(bits_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bits[2]_i_1 
       (.I0(bits_reg[2]),
        .I1(bits_reg[1]),
        .I2(bits_reg[0]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h4F)) 
    \bits[3]_i_1 
       (.I0(uart_tx_i_2_n_0),
        .I1(state_reg_n_0),
        .I2(rst_n),
        .O(\bits[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bits[3]_i_2 
       (.I0(state_reg_n_0),
        .I1(\cnt[8]_i_2_n_0 ),
        .O(bits0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bits[3]_i_3 
       (.I0(bits_reg[3]),
        .I1(bits_reg[0]),
        .I2(bits_reg[1]),
        .I3(bits_reg[2]),
        .O(p_0_in__0[3]));
  FDRE \bits_reg[0] 
       (.C(clk),
        .CE(bits0),
        .D(p_0_in__0[0]),
        .Q(bits_reg[0]),
        .R(\bits[3]_i_1_n_0 ));
  FDRE \bits_reg[1] 
       (.C(clk),
        .CE(bits0),
        .D(p_0_in__0[1]),
        .Q(bits_reg[1]),
        .R(\bits[3]_i_1_n_0 ));
  FDRE \bits_reg[2] 
       (.C(clk),
        .CE(bits0),
        .D(p_0_in__0[2]),
        .Q(bits_reg[2]),
        .R(\bits[3]_i_1_n_0 ));
  FDRE \bits_reg[3] 
       (.C(clk),
        .CE(bits0),
        .D(p_0_in__0[3]),
        .Q(bits_reg[3]),
        .R(\bits[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(sel0[0]),
        .O(cnt[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[10]_i_1 
       (.I0(rst_n),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[10]_i_2 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(sel0[9]),
        .I2(\cnt[10]_i_4_n_0 ),
        .I3(sel0[10]),
        .O(cnt[10]));
  LUT5 #(
    .INIT(32'hFFF7FFFF)) 
    \cnt[10]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[10]),
        .I2(sel0[0]),
        .I3(\cnt[10]_i_5_n_0 ),
        .I4(\cnt[10]_i_6_n_0 ),
        .O(\cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \cnt[10]_i_4 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[5]),
        .I3(sel0[8]),
        .I4(\cnt[9]_i_2_n_0 ),
        .O(\cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \cnt[10]_i_5 
       (.I0(sel0[9]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .O(\cnt[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[10]_i_6 
       (.I0(sel0[8]),
        .I1(sel0[5]),
        .I2(sel0[7]),
        .I3(sel0[6]),
        .O(\cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[1]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt[5]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(sel0[5]),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \cnt[6]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(sel0[5]),
        .I2(\cnt[9]_i_2_n_0 ),
        .I3(sel0[6]),
        .O(cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \cnt[7]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .O(cnt[7]));
  LUT6 #(
    .INIT(64'hAAAA00002AAA8000)) 
    \cnt[8]_i_1 
       (.I0(\cnt[8]_i_2_n_0 ),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[8]),
        .I5(\cnt[9]_i_2_n_0 ),
        .O(cnt[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \cnt[8]_i_2 
       (.I0(\cnt[10]_i_6_n_0 ),
        .I1(\cnt[8]_i_3_n_0 ),
        .I2(\cnt[8]_i_4_n_0 ),
        .I3(sel0[0]),
        .I4(sel0[10]),
        .I5(sel0[9]),
        .O(\cnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[8]_i_3 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\cnt[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[8]_i_4 
       (.I0(sel0[4]),
        .I1(sel0[3]),
        .O(\cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \cnt[9]_i_1 
       (.I0(sel0[9]),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(sel0[8]),
        .I3(sel0[5]),
        .I4(sel0[7]),
        .I5(sel0[6]),
        .O(cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt[9]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(\cnt[9]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[0]),
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[10]),
        .Q(sel0[10]),
        .R(p_0_in));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[1]),
        .Q(sel0[1]),
        .R(p_0_in));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[3]),
        .Q(sel0[3]),
        .R(p_0_in));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[4]),
        .Q(sel0[4]),
        .R(p_0_in));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[5]),
        .Q(sel0[5]),
        .R(p_0_in));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[6]),
        .Q(sel0[6]),
        .R(p_0_in));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[7]),
        .Q(sel0[7]),
        .R(p_0_in));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[8]),
        .Q(sel0[8]),
        .R(p_0_in));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(state_reg_n_0),
        .D(cnt[9]),
        .Q(sel0[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    data_in_rdy_INST_0
       (.I0(state_reg_n_0),
        .O(data_in_rdy));
  LUT4 #(
    .INIT(16'hD800)) 
    state_i_1
       (.I0(state_reg_n_0),
        .I1(uart_tx_i_2_n_0),
        .I2(data_in_vld),
        .I3(rst_n),
        .O(state_i_1_n_0));
  FDRE state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \temp[0]_i_1 
       (.I0(\temp_reg_n_0_[1] ),
        .I1(rst_n),
        .I2(state_reg_n_0),
        .I3(\temp[8]_i_1_n_0 ),
        .I4(\temp_reg_n_0_[0] ),
        .O(\temp[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[1]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[2] ),
        .I2(state_reg_n_0),
        .I3(data_in[0]),
        .O(\temp[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[2]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[3] ),
        .I2(state_reg_n_0),
        .I3(data_in[1]),
        .O(\temp[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[3]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[4] ),
        .I2(state_reg_n_0),
        .I3(data_in[2]),
        .O(\temp[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[4]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[5] ),
        .I2(state_reg_n_0),
        .I3(data_in[3]),
        .O(\temp[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[5]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[6] ),
        .I2(state_reg_n_0),
        .I3(data_in[4]),
        .O(\temp[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[6]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[7] ),
        .I2(state_reg_n_0),
        .I3(data_in[5]),
        .O(\temp[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[7]_i_1 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[8] ),
        .I2(state_reg_n_0),
        .I3(data_in[6]),
        .O(\temp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0001FFFF)) 
    \temp[8]_i_1 
       (.I0(\temp[8]_i_3_n_0 ),
        .I1(\temp[8]_i_4_n_0 ),
        .I2(\temp[8]_i_5_n_0 ),
        .I3(\temp[8]_i_6_n_0 ),
        .I4(rst_n),
        .I5(\temp[8]_i_7_n_0 ),
        .O(\temp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8A80)) 
    \temp[8]_i_2 
       (.I0(rst_n),
        .I1(\temp_reg_n_0_[9] ),
        .I2(state_reg_n_0),
        .I3(data_in[7]),
        .O(\temp[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    \temp[8]_i_3 
       (.I0(bits_reg[1]),
        .I1(bits_reg[0]),
        .I2(bits_reg[2]),
        .I3(bits_reg[3]),
        .I4(state_reg_n_0),
        .O(\temp[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \temp[8]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(\temp[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \temp[8]_i_5 
       (.I0(sel0[10]),
        .I1(sel0[9]),
        .I2(sel0[8]),
        .I3(sel0[2]),
        .O(\temp[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \temp[8]_i_6 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(sel0[5]),
        .O(\temp[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp[8]_i_7 
       (.I0(data_in_vld),
        .I1(state_reg_n_0),
        .O(\temp[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \temp[9]_i_1 
       (.I0(rst_n),
        .I1(state_reg_n_0),
        .I2(\temp[8]_i_1_n_0 ),
        .I3(\temp_reg_n_0_[9] ),
        .O(\temp[9]_i_1_n_0 ));
  FDRE \temp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp[0]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \temp_reg[1] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[1]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \temp_reg[2] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[2]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \temp_reg[3] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[3]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \temp_reg[4] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[4]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \temp_reg[5] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[5]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \temp_reg[6] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[6]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \temp_reg[7] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[7]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \temp_reg[8] 
       (.C(clk),
        .CE(\temp[8]_i_1_n_0 ),
        .D(\temp[8]_i_2_n_0 ),
        .Q(\temp_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \temp_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\temp[9]_i_1_n_0 ),
        .Q(\temp_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDDFFF0F0)) 
    uart_tx_i_1
       (.I0(state_reg_n_0),
        .I1(\temp_reg_n_0_[0] ),
        .I2(uart_tx),
        .I3(uart_tx_i_2_n_0),
        .I4(rst_n),
        .O(uart_tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    uart_tx_i_2
       (.I0(\temp[8]_i_6_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[8]),
        .I3(uart_tx_i_3_n_0),
        .I4(\temp[8]_i_4_n_0 ),
        .I5(uart_tx_i_4_n_0),
        .O(uart_tx_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    uart_tx_i_3
       (.I0(sel0[9]),
        .I1(sel0[10]),
        .O(uart_tx_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    uart_tx_i_4
       (.I0(bits_reg[3]),
        .I1(bits_reg[2]),
        .I2(bits_reg[0]),
        .I3(bits_reg[1]),
        .O(uart_tx_i_4_n_0));
  FDRE uart_tx_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_tx_i_1_n_0),
        .Q(uart_tx),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
