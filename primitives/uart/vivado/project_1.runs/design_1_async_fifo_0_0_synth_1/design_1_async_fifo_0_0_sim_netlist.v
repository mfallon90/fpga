// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 11 17:21:06 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_async_fifo_0_0_sim_netlist.v
// Design      : design_1_async_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (rd_data,
    wr_rdy,
    rd_vld,
    wr_clk,
    rd_clk,
    wr_data,
    wr_vld,
    wr_rst_n,
    rd_rst_n,
    rd_rdy);
  output [7:0]rd_data;
  output wr_rdy;
  output rd_vld;
  input wr_clk;
  input rd_clk;
  input [7:0]wr_data;
  input wr_vld;
  input wr_rst_n;
  input rd_rst_n;
  input rd_rdy;

  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire p_0_in;
  wire rd_clk;
  wire [7:0]rd_data;
  wire [9:0]rd_ptr_bin;
  wire rd_ptr_calc_n_10;
  wire rd_ptr_calc_n_21;
  wire rd_ptr_calc_n_22;
  wire rd_ptr_calc_n_23;
  wire rd_ptr_calc_n_24;
  wire rd_ptr_calc_n_25;
  wire [9:0]rd_ptr_gry;
  wire rd_rdy;
  wire rd_rst_n;
  wire rd_vld;
  wire [10:0]sync_rd_ptr0;
  wire [10:0]sync_rd_ptr1;
  wire [10:0]sync_wr_ptr0;
  wire [10:0]sync_wr_ptr1;
  wire wr_clk;
  wire [7:0]wr_data;
  wire wr_en;
  wire [9:0]wr_ptr_bin;
  wire wr_ptr_calc_n_0;
  wire wr_ptr_calc_n_13;
  wire wr_ptr_calc_n_14;
  wire wr_ptr_calc_n_15;
  wire wr_ptr_calc_n_16;
  wire [9:0]wr_ptr_gry;
  wire wr_rdy;
  wire wr_rst_n;
  wire wr_vld;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({wr_rdy,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({wr_ptr_calc_n_13,wr_ptr_calc_n_14,wr_ptr_calc_n_15,wr_ptr_calc_n_16}));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({rd_vld,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({rd_ptr_calc_n_22,rd_ptr_calc_n_23,rd_ptr_calc_n_24,rd_ptr_calc_n_25}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram fifo_module
       (.bin_cnt_next(rd_ptr_bin),
        .out(wr_ptr_bin),
        .rd_clk(rd_clk),
        .rd_data(rd_data),
        .wr_clk(wr_clk),
        .wr_data(wr_data),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr rd_ptr_calc
       (.D({rd_ptr_calc_n_10,rd_ptr_gry}),
        .Q(sync_wr_ptr1),
        .S({rd_ptr_calc_n_22,rd_ptr_calc_n_23,rd_ptr_calc_n_24,rd_ptr_calc_n_25}),
        .SR(rd_ptr_calc_n_21),
        .bin_cnt_next(rd_ptr_bin),
        .rd_clk(rd_clk),
        .rd_rdy(rd_rdy),
        .rd_rst_n(rd_rst_n),
        .rd_vld(rd_vld));
  FDRE \sync_rd_ptr0_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[0]),
        .Q(sync_rd_ptr0[0]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_10),
        .Q(sync_rd_ptr0[10]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[1]),
        .Q(sync_rd_ptr0[1]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[2]),
        .Q(sync_rd_ptr0[2]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[3]),
        .Q(sync_rd_ptr0[3]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[4]),
        .Q(sync_rd_ptr0[4]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[5]),
        .Q(sync_rd_ptr0[5]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[6]),
        .Q(sync_rd_ptr0[6]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[7]),
        .Q(sync_rd_ptr0[7]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[8]),
        .Q(sync_rd_ptr0[8]),
        .R(p_0_in));
  FDRE \sync_rd_ptr0_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_ptr_gry[9]),
        .Q(sync_rd_ptr0[9]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[0]),
        .Q(sync_rd_ptr1[0]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[10]),
        .Q(sync_rd_ptr1[10]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[1]),
        .Q(sync_rd_ptr1[1]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[2]),
        .Q(sync_rd_ptr1[2]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[3]),
        .Q(sync_rd_ptr1[3]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[4]),
        .Q(sync_rd_ptr1[4]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[5]),
        .Q(sync_rd_ptr1[5]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[6]),
        .Q(sync_rd_ptr1[6]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[7]),
        .Q(sync_rd_ptr1[7]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[8]),
        .Q(sync_rd_ptr1[8]),
        .R(p_0_in));
  FDRE \sync_rd_ptr1_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[9]),
        .Q(sync_rd_ptr1[9]),
        .R(p_0_in));
  FDRE \sync_wr_ptr0_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[0]),
        .Q(sync_wr_ptr0[0]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_calc_n_0),
        .Q(sync_wr_ptr0[10]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[1]),
        .Q(sync_wr_ptr0[1]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[2]),
        .Q(sync_wr_ptr0[2]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[3]),
        .Q(sync_wr_ptr0[3]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[4]),
        .Q(sync_wr_ptr0[4]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[5]),
        .Q(sync_wr_ptr0[5]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[6]),
        .Q(sync_wr_ptr0[6]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[7]),
        .Q(sync_wr_ptr0[7]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[8]),
        .Q(sync_wr_ptr0[8]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr0_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_ptr_gry[9]),
        .Q(sync_wr_ptr0[9]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[0]),
        .Q(sync_wr_ptr1[0]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[10]),
        .Q(sync_wr_ptr1[10]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[1]),
        .Q(sync_wr_ptr1[1]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[2]),
        .Q(sync_wr_ptr1[2]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[3]),
        .Q(sync_wr_ptr1[3]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[4]),
        .Q(sync_wr_ptr1[4]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[5]),
        .Q(sync_wr_ptr1[5]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[6]),
        .Q(sync_wr_ptr1[6]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[7]),
        .Q(sync_wr_ptr1[7]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[8]),
        .Q(sync_wr_ptr1[8]),
        .R(rd_ptr_calc_n_21));
  FDRE \sync_wr_ptr1_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[9]),
        .Q(sync_wr_ptr1[9]),
        .R(rd_ptr_calc_n_21));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_0 wr_ptr_calc
       (.D(wr_ptr_gry),
        .Q({wr_ptr_calc_n_0,wr_ptr_bin}),
        .S({wr_ptr_calc_n_13,wr_ptr_calc_n_14,wr_ptr_calc_n_15,wr_ptr_calc_n_16}),
        .SR(p_0_in),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rdy(wr_rdy),
        .wr_rdy_0(sync_rd_ptr1),
        .wr_rst_n(wr_rst_n),
        .wr_vld(wr_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr
   (bin_cnt_next,
    D,
    SR,
    S,
    rd_vld,
    rd_rdy,
    rd_clk,
    rd_rst_n,
    Q);
  output [9:0]bin_cnt_next;
  output [10:0]D;
  output [0:0]SR;
  output [3:0]S;
  input rd_vld;
  input rd_rdy;
  input rd_clk;
  input rd_rst_n;
  input [10:0]Q;

  wire [10:0]D;
  wire [10:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [9:0]bin_cnt_next;
  wire [10:0]bin_cnt_next__0;
  wire bin_cnt_next_carry__0_n_0;
  wire bin_cnt_next_carry__0_n_1;
  wire bin_cnt_next_carry__0_n_2;
  wire bin_cnt_next_carry__0_n_3;
  wire bin_cnt_next_carry__1_n_2;
  wire bin_cnt_next_carry__1_n_3;
  wire bin_cnt_next_carry_i_1_n_0;
  wire bin_cnt_next_carry_n_0;
  wire bin_cnt_next_carry_n_1;
  wire bin_cnt_next_carry_n_2;
  wire bin_cnt_next_carry_n_3;
  wire \bin_cnt_reg_reg_n_0_[0] ;
  wire \bin_cnt_reg_reg_n_0_[1] ;
  wire \bin_cnt_reg_reg_n_0_[2] ;
  wire \bin_cnt_reg_reg_n_0_[3] ;
  wire \bin_cnt_reg_reg_n_0_[4] ;
  wire \bin_cnt_reg_reg_n_0_[5] ;
  wire \bin_cnt_reg_reg_n_0_[6] ;
  wire \bin_cnt_reg_reg_n_0_[7] ;
  wire \bin_cnt_reg_reg_n_0_[8] ;
  wire \bin_cnt_reg_reg_n_0_[9] ;
  wire bram_reg_i_2_n_3;
  wire bram_reg_i_3_n_0;
  wire bram_reg_i_3_n_1;
  wire bram_reg_i_3_n_2;
  wire bram_reg_i_3_n_3;
  wire bram_reg_i_4_n_0;
  wire bram_reg_i_4_n_1;
  wire bram_reg_i_4_n_2;
  wire bram_reg_i_4_n_3;
  wire bram_reg_i_5_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire rd_clk;
  wire rd_rdy;
  wire rd_rst_n;
  wire rd_vld;
  wire [3:2]NLW_bin_cnt_next_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_bin_cnt_next_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_bram_reg_i_2_CO_UNCONNECTED;
  wire [3:2]NLW_bram_reg_i_2_O_UNCONNECTED;
  wire [0:0]NLW_bram_reg_i_4_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry
       (.CI(1'b0),
        .CO({bin_cnt_next_carry_n_0,bin_cnt_next_carry_n_1,bin_cnt_next_carry_n_2,bin_cnt_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bin_cnt_reg_reg_n_0_[0] }),
        .O({bin_cnt_next__0[3:1],bin_cnt_next[0]}),
        .S({\bin_cnt_reg_reg_n_0_[3] ,\bin_cnt_reg_reg_n_0_[2] ,\bin_cnt_reg_reg_n_0_[1] ,bin_cnt_next_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__0
       (.CI(bin_cnt_next_carry_n_0),
        .CO({bin_cnt_next_carry__0_n_0,bin_cnt_next_carry__0_n_1,bin_cnt_next_carry__0_n_2,bin_cnt_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bin_cnt_next__0[7:4]),
        .S({\bin_cnt_reg_reg_n_0_[7] ,\bin_cnt_reg_reg_n_0_[6] ,\bin_cnt_reg_reg_n_0_[5] ,\bin_cnt_reg_reg_n_0_[4] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__1
       (.CI(bin_cnt_next_carry__0_n_0),
        .CO({NLW_bin_cnt_next_carry__1_CO_UNCONNECTED[3:2],bin_cnt_next_carry__1_n_2,bin_cnt_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bin_cnt_next_carry__1_O_UNCONNECTED[3],bin_cnt_next__0[10:8]}),
        .S({1'b0,D[10],\bin_cnt_reg_reg_n_0_[9] ,\bin_cnt_reg_reg_n_0_[8] }));
  LUT3 #(
    .INIT(8'h6A)) 
    bin_cnt_next_carry_i_1
       (.I0(\bin_cnt_reg_reg_n_0_[0] ),
        .I1(rd_vld),
        .I2(rd_rdy),
        .O(bin_cnt_next_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bin_cnt_reg[0]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[0] ),
        .I1(rd_vld),
        .I2(rd_rdy),
        .O(bin_cnt_next__0[0]));
  FDRE \bin_cnt_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[0]),
        .Q(\bin_cnt_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[10]),
        .Q(D[10]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[1]),
        .Q(\bin_cnt_reg_reg_n_0_[1] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[2]),
        .Q(\bin_cnt_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[3]),
        .Q(\bin_cnt_reg_reg_n_0_[3] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[4]),
        .Q(\bin_cnt_reg_reg_n_0_[4] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[5]),
        .Q(\bin_cnt_reg_reg_n_0_[5] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[6]),
        .Q(\bin_cnt_reg_reg_n_0_[6] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[7]),
        .Q(\bin_cnt_reg_reg_n_0_[7] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[8]),
        .Q(\bin_cnt_reg_reg_n_0_[8] ),
        .R(SR));
  FDRE \bin_cnt_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(bin_cnt_next__0[9]),
        .Q(\bin_cnt_reg_reg_n_0_[9] ),
        .R(SR));
  CARRY4 bram_reg_i_2
       (.CI(bram_reg_i_3_n_0),
        .CO({NLW_bram_reg_i_2_CO_UNCONNECTED[3:1],bram_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bram_reg_i_2_O_UNCONNECTED[3:2],bin_cnt_next[9:8]}),
        .S({1'b0,1'b0,\bin_cnt_reg_reg_n_0_[9] ,\bin_cnt_reg_reg_n_0_[8] }));
  CARRY4 bram_reg_i_3
       (.CI(bram_reg_i_4_n_0),
        .CO({bram_reg_i_3_n_0,bram_reg_i_3_n_1,bram_reg_i_3_n_2,bram_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bin_cnt_next[7:4]),
        .S({\bin_cnt_reg_reg_n_0_[7] ,\bin_cnt_reg_reg_n_0_[6] ,\bin_cnt_reg_reg_n_0_[5] ,\bin_cnt_reg_reg_n_0_[4] }));
  CARRY4 bram_reg_i_4
       (.CI(1'b0),
        .CO({bram_reg_i_4_n_0,bram_reg_i_4_n_1,bram_reg_i_4_n_2,bram_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bin_cnt_reg_reg_n_0_[0] }),
        .O({bin_cnt_next[3:1],NLW_bram_reg_i_4_O_UNCONNECTED[0]}),
        .S({\bin_cnt_reg_reg_n_0_[3] ,\bin_cnt_reg_reg_n_0_[2] ,\bin_cnt_reg_reg_n_0_[1] ,bram_reg_i_5_n_0}));
  LUT3 #(
    .INIT(8'h6A)) 
    bram_reg_i_5
       (.I0(\bin_cnt_reg_reg_n_0_[0] ),
        .I1(rd_vld),
        .I2(rd_rdy),
        .O(bram_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h6009)) 
    i__carry_i_1
       (.I0(\bin_cnt_reg_reg_n_0_[9] ),
        .I1(Q[9]),
        .I2(D[10]),
        .I3(Q[10]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h6900)) 
    i__carry_i_2
       (.I0(\bin_cnt_reg_reg_n_0_[7] ),
        .I1(\bin_cnt_reg_reg_n_0_[6] ),
        .I2(Q[6]),
        .I3(i__carry_i_5_n_0),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6900)) 
    i__carry_i_3
       (.I0(\bin_cnt_reg_reg_n_0_[4] ),
        .I1(\bin_cnt_reg_reg_n_0_[3] ),
        .I2(Q[3]),
        .I3(i__carry_i_6_n_0),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6900)) 
    i__carry_i_4
       (.I0(\bin_cnt_reg_reg_n_0_[1] ),
        .I1(\bin_cnt_reg_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(i__carry_i_7_n_0),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    i__carry_i_5
       (.I0(\bin_cnt_reg_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(\bin_cnt_reg_reg_n_0_[9] ),
        .I3(\bin_cnt_reg_reg_n_0_[8] ),
        .I4(Q[8]),
        .O(i__carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    i__carry_i_6
       (.I0(\bin_cnt_reg_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(\bin_cnt_reg_reg_n_0_[6] ),
        .I3(\bin_cnt_reg_reg_n_0_[5] ),
        .I4(Q[5]),
        .O(i__carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    i__carry_i_7
       (.I0(\bin_cnt_reg_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\bin_cnt_reg_reg_n_0_[3] ),
        .I3(\bin_cnt_reg_reg_n_0_[2] ),
        .I4(Q[2]),
        .O(i__carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[0]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[1] ),
        .I1(\bin_cnt_reg_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[1]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[2] ),
        .I1(\bin_cnt_reg_reg_n_0_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[2]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[3] ),
        .I1(\bin_cnt_reg_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[3]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[4] ),
        .I1(\bin_cnt_reg_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[4]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[5] ),
        .I1(\bin_cnt_reg_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[5]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[6] ),
        .I1(\bin_cnt_reg_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[6]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[7] ),
        .I1(\bin_cnt_reg_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[7]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[8] ),
        .I1(\bin_cnt_reg_reg_n_0_[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[8]_i_1 
       (.I0(\bin_cnt_reg_reg_n_0_[9] ),
        .I1(\bin_cnt_reg_reg_n_0_[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_rd_ptr0[9]_i_1 
       (.I0(D[10]),
        .I1(\bin_cnt_reg_reg_n_0_[9] ),
        .O(D[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_wr_ptr0[10]_i_1 
       (.I0(rd_rst_n),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "bin_gry_ctr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_0
   (Q,
    SR,
    wr_en,
    S,
    D,
    wr_clk,
    wr_rdy,
    wr_vld,
    wr_rst_n,
    wr_rdy_0);
  output [10:0]Q;
  output [0:0]SR;
  output wr_en;
  output [3:0]S;
  output [9:0]D;
  input wr_clk;
  input wr_rdy;
  input wr_vld;
  input wr_rst_n;
  input [10:0]wr_rdy_0;

  wire [9:0]D;
  wire [10:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire _carry_i_5_n_0;
  wire _carry_i_6_n_0;
  wire _carry_i_7_n_0;
  wire [10:0]bin_cnt_next;
  wire bin_cnt_next_carry__0_n_0;
  wire bin_cnt_next_carry__0_n_1;
  wire bin_cnt_next_carry__0_n_2;
  wire bin_cnt_next_carry__0_n_3;
  wire bin_cnt_next_carry__1_n_2;
  wire bin_cnt_next_carry__1_n_3;
  wire bin_cnt_next_carry_i_1_n_0;
  wire bin_cnt_next_carry_n_0;
  wire bin_cnt_next_carry_n_1;
  wire bin_cnt_next_carry_n_2;
  wire bin_cnt_next_carry_n_3;
  wire wr_clk;
  wire wr_en;
  wire wr_rdy;
  wire [10:0]wr_rdy_0;
  wire wr_rst_n;
  wire wr_vld;
  wire [3:2]NLW_bin_cnt_next_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_bin_cnt_next_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0690)) 
    _carry_i_1
       (.I0(Q[9]),
        .I1(wr_rdy_0[9]),
        .I2(Q[10]),
        .I3(wr_rdy_0[10]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h6900)) 
    _carry_i_2
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(wr_rdy_0[6]),
        .I3(_carry_i_5_n_0),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h6900)) 
    _carry_i_3
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(wr_rdy_0[3]),
        .I3(_carry_i_6_n_0),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h6900)) 
    _carry_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_rdy_0[0]),
        .I3(_carry_i_7_n_0),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    _carry_i_5
       (.I0(Q[7]),
        .I1(wr_rdy_0[7]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(wr_rdy_0[8]),
        .O(_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    _carry_i_6
       (.I0(Q[4]),
        .I1(wr_rdy_0[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(wr_rdy_0[5]),
        .O(_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h06906009)) 
    _carry_i_7
       (.I0(Q[1]),
        .I1(wr_rdy_0[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(wr_rdy_0[2]),
        .O(_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry
       (.CI(1'b0),
        .CO({bin_cnt_next_carry_n_0,bin_cnt_next_carry_n_1,bin_cnt_next_carry_n_2,bin_cnt_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O(bin_cnt_next[3:0]),
        .S({Q[3:1],bin_cnt_next_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__0
       (.CI(bin_cnt_next_carry_n_0),
        .CO({bin_cnt_next_carry__0_n_0,bin_cnt_next_carry__0_n_1,bin_cnt_next_carry__0_n_2,bin_cnt_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bin_cnt_next[7:4]),
        .S(Q[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__1
       (.CI(bin_cnt_next_carry__0_n_0),
        .CO({NLW_bin_cnt_next_carry__1_CO_UNCONNECTED[3:2],bin_cnt_next_carry__1_n_2,bin_cnt_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bin_cnt_next_carry__1_O_UNCONNECTED[3],bin_cnt_next[10:8]}),
        .S({1'b0,Q[10:8]}));
  LUT3 #(
    .INIT(8'h6A)) 
    bin_cnt_next_carry_i_1
       (.I0(Q[0]),
        .I1(wr_rdy),
        .I2(wr_vld),
        .O(bin_cnt_next_carry_i_1_n_0));
  FDRE \bin_cnt_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(bin_cnt_next[9]),
        .Q(Q[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_1
       (.I0(wr_vld),
        .I1(wr_rdy),
        .O(wr_en));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_rd_ptr0[10]_i_1 
       (.I0(wr_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[3]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[4]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[5]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[6]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[7]_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[8]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_wr_ptr0[9]_i_1 
       (.I0(Q[10]),
        .I1(Q[9]),
        .O(D[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_async_fifo_0_0,async_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "async_fifo,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    wr_rst_n,
    wr_data,
    wr_vld,
    wr_rdy,
    rd_clk,
    rd_rst_n,
    rd_data,
    rd_vld,
    rd_rdy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 wr_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_clk, ASSOCIATED_RESET wr_rst_n, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 wr_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME wr_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input wr_rst_n;
  input [7:0]wr_data;
  input wr_vld;
  output wr_rdy;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rd_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_clk, ASSOCIATED_RESET rd_rst_n, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rd_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rd_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rd_rst_n;
  output [7:0]rd_data;
  output rd_vld;
  input rd_rdy;

  wire rd_clk;
  wire [7:0]rd_data;
  wire rd_rdy;
  wire rd_rst_n;
  wire rd_vld;
  wire wr_clk;
  wire [7:0]wr_data;
  wire wr_rdy;
  wire wr_rst_n;
  wire wr_vld;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo inst
       (.rd_clk(rd_clk),
        .rd_data(rd_data),
        .rd_rdy(rd_rdy),
        .rd_rst_n(rd_rst_n),
        .rd_vld(rd_vld),
        .wr_clk(wr_clk),
        .wr_data(wr_data),
        .wr_rdy(wr_rdy),
        .wr_rst_n(wr_rst_n),
        .wr_vld(wr_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram
   (rd_data,
    wr_clk,
    rd_clk,
    wr_en,
    out,
    bin_cnt_next,
    wr_data);
  output [7:0]rd_data;
  input wr_clk;
  input rd_clk;
  input wr_en;
  input [9:0]out;
  input [9:0]bin_cnt_next;
  input [7:0]wr_data;

  wire [9:0]bin_cnt_next;
  wire [9:0]out;
  wire rd_clk;
  wire [7:0]rd_data;
  wire wr_clk;
  wire [7:0]wr_data;
  wire wr_en;
  wire [15:0]NLW_bram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_bram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_bram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_bram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    bram_reg
       (.ADDRARDADDR({out,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({bin_cnt_next,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wr_data}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_bram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_bram_reg_DOBDO_UNCONNECTED[15:8],rd_data}),
        .DOPADOP(NLW_bram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_bram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(wr_en),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
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
