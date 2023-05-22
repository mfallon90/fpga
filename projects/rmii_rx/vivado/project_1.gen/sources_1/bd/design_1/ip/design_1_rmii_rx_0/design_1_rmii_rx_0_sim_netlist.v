// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 19:24:40 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_rmii_rx_0/design_1_rmii_rx_0_sim_netlist.v
// Design      : design_1_rmii_rx_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rmii_rx_0,rmii_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rmii_rx,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_rmii_rx_0
   (rx_clk,
    rx_rst_n,
    rx_data,
    rx_dv,
    rx_er,
    crs,
    col,
    rx_byte,
    rx_byte_vld);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rx_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_clk, ASSOCIATED_RESET rx_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk, INSERT_VIP 0" *) input rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rx_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rx_rst_n;
  input [3:0]rx_data;
  input rx_dv;
  input rx_er;
  input crs;
  input col;
  output [8:0]rx_byte;
  output rx_byte_vld;

  wire [8:0]rx_byte;
  wire rx_byte_vld;
  wire rx_clk;
  wire [3:0]rx_data;
  wire rx_dv;
  wire rx_rst_n;

  design_1_rmii_rx_0_rmii_rx inst
       (.rx_byte(rx_byte[7:0]),
        .rx_byte_vld(rx_byte_vld),
        .rx_clk(rx_clk),
        .rx_data(rx_data),
        .rx_dv(rx_dv),
        .rx_rst_n(rx_rst_n),
        .state_reg_0(rx_byte[8]));
endmodule

(* ORIG_REF_NAME = "rmii_rx" *) 
module design_1_rmii_rx_0_rmii_rx
   (state_reg_0,
    rx_byte_vld,
    rx_byte,
    rx_rst_n,
    rx_dv,
    rx_clk,
    rx_data);
  output state_reg_0;
  output rx_byte_vld;
  output [7:0]rx_byte;
  input rx_rst_n;
  input rx_dv;
  input rx_clk;
  input [3:0]rx_data;

  wire byte_vld_i_1_n_0;
  wire byte_vld_i_2_n_0;
  wire [7:0]rx_byte;
  wire rx_byte_vld;
  wire rx_clk;
  wire [3:0]rx_data;
  wire [3:0]rx_data_reg;
  wire \rx_data_reg[1]_i_1_n_0 ;
  wire \rx_data_reg_reg_n_0_[0] ;
  wire \rx_data_reg_reg_n_0_[1] ;
  wire \rx_data_reg_reg_n_0_[2] ;
  wire \rx_data_reg_reg_n_0_[3] ;
  wire rx_dv;
  wire rx_rst_n;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_reg_0;

  LUT5 #(
    .INIT(32'h0000808A)) 
    byte_vld_i_1
       (.I0(rx_rst_n),
        .I1(rx_dv),
        .I2(state_reg_0),
        .I3(byte_vld_i_2_n_0),
        .I4(rx_byte_vld),
        .O(byte_vld_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    byte_vld_i_2
       (.I0(rx_dv),
        .I1(rx_data[3]),
        .I2(rx_data[0]),
        .I3(rx_data[1]),
        .I4(rx_data[2]),
        .O(byte_vld_i_2_n_0));
  FDRE byte_vld_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(byte_vld_i_1_n_0),
        .Q(rx_byte_vld),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[0]_INST_0 
       (.I0(state_reg_0),
        .I1(\rx_data_reg_reg_n_0_[0] ),
        .O(rx_byte[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[1]_INST_0 
       (.I0(state_reg_0),
        .I1(\rx_data_reg_reg_n_0_[1] ),
        .O(rx_byte[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[2]_INST_0 
       (.I0(state_reg_0),
        .I1(\rx_data_reg_reg_n_0_[2] ),
        .O(rx_byte[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[3]_INST_0 
       (.I0(state_reg_0),
        .I1(\rx_data_reg_reg_n_0_[3] ),
        .O(rx_byte[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[4]_INST_0 
       (.I0(state_reg_0),
        .I1(rx_data[0]),
        .O(rx_byte[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[5]_INST_0 
       (.I0(state_reg_0),
        .I1(rx_data[1]),
        .O(rx_byte[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[6]_INST_0 
       (.I0(state_reg_0),
        .I1(rx_data[2]),
        .O(rx_byte[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \rx_byte[7]_INST_0 
       (.I0(state_reg_0),
        .I1(rx_data[3]),
        .O(rx_byte[7]));
  LUT6 #(
    .INIT(64'h8800C80088008800)) 
    \rx_data_reg[0]_i_1 
       (.I0(state_reg_0),
        .I1(rx_dv),
        .I2(rx_data[3]),
        .I3(rx_data[0]),
        .I4(rx_data[1]),
        .I5(rx_data[2]),
        .O(rx_data_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_data_reg[1]_i_1 
       (.I0(rx_data[1]),
        .I1(rx_rst_n),
        .I2(rx_dv),
        .I3(state_reg_0),
        .O(\rx_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888C88800000000)) 
    \rx_data_reg[2]_i_1 
       (.I0(state_reg_0),
        .I1(rx_dv),
        .I2(rx_data[3]),
        .I3(rx_data[0]),
        .I4(rx_data[1]),
        .I5(rx_data[2]),
        .O(rx_data_reg[2]));
  LUT6 #(
    .INIT(64'h8080C08080808080)) 
    \rx_data_reg[3]_i_1 
       (.I0(state_reg_0),
        .I1(rx_dv),
        .I2(rx_data[3]),
        .I3(rx_data[0]),
        .I4(rx_data[1]),
        .I5(rx_data[2]),
        .O(rx_data_reg[3]));
  FDRE \rx_data_reg_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(rx_data_reg[0]),
        .Q(\rx_data_reg_reg_n_0_[0] ),
        .R(state_i_1_n_0));
  FDRE \rx_data_reg_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rx_data_reg[1]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_data_reg_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(rx_data_reg[2]),
        .Q(\rx_data_reg_reg_n_0_[2] ),
        .R(state_i_1_n_0));
  FDRE \rx_data_reg_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(rx_data_reg[3]),
        .Q(\rx_data_reg_reg_n_0_[3] ),
        .R(state_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state_i_1
       (.I0(rx_rst_n),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888C88888888888)) 
    state_i_2
       (.I0(state_reg_0),
        .I1(rx_dv),
        .I2(rx_data[3]),
        .I3(rx_data[0]),
        .I4(rx_data[1]),
        .I5(rx_data[2]),
        .O(state_i_2_n_0));
  FDRE state_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(state_i_2_n_0),
        .Q(state_reg_0),
        .R(state_i_1_n_0));
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
