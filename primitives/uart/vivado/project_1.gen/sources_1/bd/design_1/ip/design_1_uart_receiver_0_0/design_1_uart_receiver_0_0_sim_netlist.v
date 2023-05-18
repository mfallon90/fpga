// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 17:44:36 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mfall/Desktop/sandbox/primitives/uart/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_uart_receiver_0_0/design_1_uart_receiver_0_0_sim_netlist.v
// Design      : design_1_uart_receiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_receiver_0_0,uart_receiver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_receiver,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_uart_receiver_0_0
   (clk,
    rst_n,
    uart_rx,
    uart_word,
    uart_word_vld,
    uart_word_rdy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 175000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input uart_rx;
  output [7:0]uart_word;
  output uart_word_vld;
  input uart_word_rdy;

  wire clk;
  wire rst_n;
  wire uart_rx;
  wire [7:0]uart_word;
  wire uart_word_rdy;
  wire uart_word_vld;

  design_1_uart_receiver_0_0_uart_receiver inst
       (.clk(clk),
        .rst_n(rst_n),
        .uart_rx(uart_rx),
        .uart_word(uart_word),
        .uart_word_rdy(uart_word_rdy),
        .uart_word_vld(uart_word_vld));
endmodule

(* ORIG_REF_NAME = "uart_receiver" *) 
module design_1_uart_receiver_0_0_uart_receiver
   (uart_word,
    uart_word_vld,
    uart_rx,
    rst_n,
    clk,
    uart_word_rdy);
  output [7:0]uart_word;
  output uart_word_vld;
  input uart_rx;
  input rst_n;
  input clk;
  input uart_word_rdy;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \bits[0]_i_1_n_0 ;
  wire \bits[1]_i_1_n_0 ;
  wire \bits[2]_i_1_n_0 ;
  wire \bits_reg_n_0_[0] ;
  wire \bits_reg_n_0_[1] ;
  wire \bits_reg_n_0_[2] ;
  wire clk;
  wire [10:0]cnt;
  wire \cnt[10]_i_1_n_0 ;
  wire \cnt[10]_i_3_n_0 ;
  wire \cnt[10]_i_4_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[9]_i_2_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire data;
  wire [7:0]data1_in;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_4_n_0 ;
  wire \data[7]_i_5_n_0 ;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire p_1_in;
  wire rst_n;
  wire samples;
  wire \samples[0]_i_1_n_0 ;
  wire \samples[1]_i_1_n_0 ;
  wire \samples[2]_i_1_n_0 ;
  wire \samples[2]_i_3_n_0 ;
  wire \samples[2]_i_4_n_0 ;
  wire \samples[2]_i_5_n_0 ;
  wire \samples[2]_i_6_n_0 ;
  wire \samples[2]_i_7_n_0 ;
  wire \samples[2]_i_8_n_0 ;
  wire \samples_reg_n_0_[0] ;
  wire \samples_reg_n_0_[2] ;
  wire [1:0]state__0;
  wire [1:1]state__1;
  wire [7:0]temp;
  wire \temp[7]_i_1_n_0 ;
  wire uart_rx;
  wire [7:0]uart_word;
  wire uart_word_rdy;
  wire uart_word_vld;
  wire vote_return;

  LUT6 #(
    .INIT(64'hAABB051100000000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(uart_rx),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state__0[1]),
        .I4(\data[7]_i_4_n_0 ),
        .I5(rst_n),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAE00A200000000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\temp[7]_i_1_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state__1),
        .I5(rst_n),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\bits_reg_n_0_[2] ),
        .I1(\bits_reg_n_0_[0] ),
        .I2(\bits_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01010101010101CD)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(uart_rx),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(done_i_2_n_0),
        .I4(done_i_3_n_0),
        .I5(\data[7]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h5555022A)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state__0[0]),
        .I1(\samples_reg_n_0_[2] ),
        .I2(\samples_reg_n_0_[0] ),
        .I3(p_1_in),
        .I4(state__0[1]),
        .O(state__1));
  (* FSM_ENCODED_STATES = "S_START:01,S_PAR:011,S_STOP:11,S_IDLE:00,S_RX:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S_START:01,S_PAR:011,S_STOP:11,S_IDLE:00,S_RX:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF304)) 
    \bits[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\data[7]_i_4_n_0 ),
        .I3(\bits_reg_n_0_[0] ),
        .O(\bits[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF1F0020)) 
    \bits[1]_i_1 
       (.I0(\bits_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data[7]_i_4_n_0 ),
        .I4(\bits_reg_n_0_[1] ),
        .O(\bits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF07FF00000800)) 
    \bits[2]_i_1 
       (.I0(\bits_reg_n_0_[1] ),
        .I1(\bits_reg_n_0_[0] ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\data[7]_i_4_n_0 ),
        .I5(\bits_reg_n_0_[2] ),
        .O(\bits[2]_i_1_n_0 ));
  FDRE \bits_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bits[0]_i_1_n_0 ),
        .Q(\bits_reg_n_0_[0] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \bits_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bits[1]_i_1_n_0 ),
        .Q(\bits_reg_n_0_[1] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \bits_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bits[2]_i_1_n_0 ),
        .Q(\bits_reg_n_0_[2] ),
        .R(\data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[0]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \cnt[10]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(uart_rx),
        .O(\cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[10]_i_2 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt[10]_i_4_n_0 ),
        .I3(\cnt_reg_n_0_[10] ),
        .O(cnt[10]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFFFF)) 
    \cnt[10]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(done_i_4_n_0),
        .I2(done_i_3_n_0),
        .I3(done_i_2_n_0),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(\cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \cnt[10]_i_4 
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt[9]_i_2_n_0 ),
        .O(\cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt[1]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt[2]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .O(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \cnt[5]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt[5]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[5]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[0] ),
        .O(\cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt[6]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[6] ),
        .O(cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA208)) 
    \cnt[7]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt_reg_n_0_[6] ),
        .I2(\cnt[9]_i_2_n_0 ),
        .I3(\cnt_reg_n_0_[7] ),
        .O(cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \cnt[8]_i_1 
       (.I0(\cnt[10]_i_3_n_0 ),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[7] ),
        .I4(\cnt_reg_n_0_[8] ),
        .O(cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \cnt[9]_i_1 
       (.I0(\cnt_reg_n_0_[9] ),
        .I1(\cnt[9]_i_2_n_0 ),
        .I2(\cnt_reg_n_0_[6] ),
        .I3(\cnt_reg_n_0_[7] ),
        .I4(\cnt_reg_n_0_[8] ),
        .O(cnt[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt[9]_i_2 
       (.I0(\cnt_reg_n_0_[4] ),
        .I1(\cnt_reg_n_0_[5] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\cnt[9]_i_2_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(\cnt[10]_i_1_n_0 ),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ),
        .R(\data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[0]_i_1 
       (.I0(temp[0]),
        .I1(done_i_1_n_0),
        .O(data1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[1]_i_1 
       (.I0(temp[1]),
        .I1(done_i_1_n_0),
        .O(data1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[2]_i_1 
       (.I0(temp[2]),
        .I1(done_i_1_n_0),
        .O(data1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[3]_i_1 
       (.I0(temp[3]),
        .I1(done_i_1_n_0),
        .O(data1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[4]_i_1 
       (.I0(temp[4]),
        .I1(done_i_1_n_0),
        .O(data1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[5]_i_1 
       (.I0(temp[5]),
        .I1(done_i_1_n_0),
        .O(data1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[6]_i_1 
       (.I0(temp[6]),
        .I1(done_i_1_n_0),
        .O(data1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \data[7]_i_1 
       (.I0(rst_n),
        .O(\data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F888888)) 
    \data[7]_i_2 
       (.I0(uart_word_rdy),
        .I1(uart_word_vld),
        .I2(\data[7]_i_4_n_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(data));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[7]_i_3 
       (.I0(temp[7]),
        .I1(done_i_1_n_0),
        .O(data1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \data[7]_i_4 
       (.I0(\cnt_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_reg_n_0_[5] ),
        .I4(done_i_3_n_0),
        .I5(\data[7]_i_5_n_0 ),
        .O(\data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \data[7]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\data[7]_i_5_n_0 ));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(data),
        .D(data1_in[0]),
        .Q(uart_word[0]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(data),
        .D(data1_in[1]),
        .Q(uart_word[1]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(data),
        .D(data1_in[2]),
        .Q(uart_word[2]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(data),
        .D(data1_in[3]),
        .Q(uart_word[3]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(data),
        .D(data1_in[4]),
        .Q(uart_word[4]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(data),
        .D(data1_in[5]),
        .Q(uart_word[5]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[6] 
       (.C(clk),
        .CE(data),
        .D(data1_in[6]),
        .Q(uart_word[6]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \data_reg[7] 
       (.C(clk),
        .CE(data),
        .D(data1_in[7]),
        .Q(uart_word[7]),
        .R(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    done_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(done_i_2_n_0),
        .I3(done_i_3_n_0),
        .I4(done_i_4_n_0),
        .I5(\cnt_reg_n_0_[0] ),
        .O(done_i_1_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    done_i_2
       (.I0(\cnt_reg_n_0_[9] ),
        .I1(\cnt_reg_n_0_[4] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_reg_n_0_[5] ),
        .O(done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    done_i_3
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[8] ),
        .O(done_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    done_i_4
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(done_i_4_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(data),
        .D(done_i_1_n_0),
        .Q(uart_word_vld),
        .R(\data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \samples[0]_i_1 
       (.I0(p_1_in),
        .I1(samples),
        .I2(\samples_reg_n_0_[0] ),
        .O(\samples[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \samples[1]_i_1 
       (.I0(\samples_reg_n_0_[2] ),
        .I1(samples),
        .I2(p_1_in),
        .O(\samples[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \samples[2]_i_1 
       (.I0(uart_rx),
        .I1(samples),
        .I2(\samples_reg_n_0_[2] ),
        .O(\samples[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020AA2020)) 
    \samples[2]_i_2 
       (.I0(\samples[2]_i_3_n_0 ),
        .I1(\samples[2]_i_4_n_0 ),
        .I2(\samples[2]_i_5_n_0 ),
        .I3(\samples[2]_i_6_n_0 ),
        .I4(\samples[2]_i_7_n_0 ),
        .I5(\samples[2]_i_8_n_0 ),
        .O(samples));
  LUT2 #(
    .INIT(4'h6)) 
    \samples[2]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(\samples[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hBD)) 
    \samples[2]_i_4 
       (.I0(\cnt_reg_n_0_[8] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[0] ),
        .O(\samples[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \samples[2]_i_5 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[10] ),
        .I4(\cnt_reg_n_0_[6] ),
        .I5(\cnt_reg_n_0_[7] ),
        .O(\samples[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \samples[2]_i_6 
       (.I0(\cnt_reg_n_0_[6] ),
        .I1(\cnt_reg_n_0_[7] ),
        .I2(\cnt_reg_n_0_[10] ),
        .I3(\cnt_reg_n_0_[8] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\samples[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \samples[2]_i_7 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt_reg_n_0_[0] ),
        .O(\samples[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \samples[2]_i_8 
       (.I0(\cnt_reg_n_0_[5] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\samples[2]_i_8_n_0 ));
  FDRE \samples_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\samples[0]_i_1_n_0 ),
        .Q(\samples_reg_n_0_[0] ),
        .R(\data[7]_i_1_n_0 ));
  FDRE \samples_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\samples[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(\data[7]_i_1_n_0 ));
  FDRE \samples_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\samples[2]_i_1_n_0 ),
        .Q(\samples_reg_n_0_[2] ),
        .R(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \temp[7]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(done_i_2_n_0),
        .I3(done_i_3_n_0),
        .I4(done_i_4_n_0),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \temp[7]_i_2 
       (.I0(p_1_in),
        .I1(\samples_reg_n_0_[0] ),
        .I2(\samples_reg_n_0_[2] ),
        .O(vote_return));
  FDRE \temp_reg[0] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[1]),
        .Q(temp[0]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[1] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[2]),
        .Q(temp[1]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[2] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[3]),
        .Q(temp[2]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[3] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[4]),
        .Q(temp[3]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[4] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[5]),
        .Q(temp[4]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[5] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[6]),
        .Q(temp[5]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[6] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(temp[7]),
        .Q(temp[6]),
        .R(\data[7]_i_1_n_0 ));
  FDRE \temp_reg[7] 
       (.C(clk),
        .CE(\temp[7]_i_1_n_0 ),
        .D(vote_return),
        .Q(temp[7]),
        .R(\data[7]_i_1_n_0 ));
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
