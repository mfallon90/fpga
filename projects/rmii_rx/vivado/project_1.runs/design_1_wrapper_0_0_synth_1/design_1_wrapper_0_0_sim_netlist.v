// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 17 17:13:26 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_wrapper_0_0_sim_netlist.v
// Design      : design_1_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (DOBDO,
    CO,
    sys_byte_vld,
    SS,
    SR,
    D,
    bram_reg,
    bram_reg_0,
    \crc_q_reg[19] ,
    bram_reg_1,
    bram_reg_2,
    bram_reg_3,
    \crc_q_reg[9] ,
    bram_reg_4,
    bram_reg_5,
    rmii_rx_clk,
    sys_clk,
    wr_en,
    state,
    DIADI,
    sys_rst_n,
    rmii_rx_rst_n,
    rx_byte_vld,
    Q,
    crc_vld_INST_0_i_4,
    \crc_q_reg[7] );
  output [8:0]DOBDO;
  output [0:0]CO;
  output sys_byte_vld;
  output [0:0]SS;
  output [0:0]SR;
  output [3:0]D;
  output bram_reg;
  output bram_reg_0;
  output \crc_q_reg[19] ;
  output bram_reg_1;
  output bram_reg_2;
  output bram_reg_3;
  output \crc_q_reg[9] ;
  output bram_reg_4;
  output bram_reg_5;
  input rmii_rx_clk;
  input sys_clk;
  input wr_en;
  input state;
  input [7:0]DIADI;
  input sys_rst_n;
  input rmii_rx_rst_n;
  input rx_byte_vld;
  input [8:0]Q;
  input crc_vld_INST_0_i_4;
  input \crc_q_reg[7] ;

  wire [0:0]CO;
  wire [3:0]D;
  wire [7:0]DIADI;
  wire [8:0]DOBDO;
  wire [8:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire bram_reg;
  wire bram_reg_0;
  wire bram_reg_1;
  wire bram_reg_2;
  wire bram_reg_3;
  wire bram_reg_4;
  wire bram_reg_5;
  wire \crc_q_reg[19] ;
  wire \crc_q_reg[7] ;
  wire \crc_q_reg[9] ;
  wire crc_vld_INST_0_i_4;
  wire [10:0]gry_cnt_reg;
  wire [9:0]rd_ptr_bin;
  wire rd_ptr_calc_n_10;
  wire rd_ptr_calc_n_11;
  wire rd_ptr_calc_n_12;
  wire rd_ptr_calc_n_13;
  wire rd_ptr_calc_n_14;
  wire rd_ptr_calc_n_15;
  wire rd_ptr_calc_n_16;
  wire rd_ptr_calc_n_17;
  wire rd_ptr_calc_n_18;
  wire rd_ptr_calc_n_19;
  wire rd_ptr_calc_n_20;
  wire rd_ptr_calc_n_21;
  wire rd_ptr_calc_n_22;
  wire rd_ptr_calc_n_23;
  wire rd_ptr_calc_n_24;
  wire rd_ptr_calc_n_25;
  wire rmii_rx_clk;
  wire rmii_rx_rst_n;
  wire rx_byte_vld;
  wire state;
  wire [10:0]sync_rd_ptr0;
  wire [10:0]sync_rd_ptr1;
  wire [10:0]sync_wr_ptr0;
  wire [10:0]sync_wr_ptr1;
  wire sys_byte_vld;
  wire sys_clk;
  wire sys_rst_n;
  wire wr_en;
  wire [9:0]wr_ptr_bin;
  wire wr_ptr_calc_n_11;
  wire wr_ptr_calc_n_12;
  wire wr_ptr_calc_n_13;
  wire wr_ptr_calc_n_14;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({CO,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({wr_ptr_calc_n_11,wr_ptr_calc_n_12,wr_ptr_calc_n_13,wr_ptr_calc_n_14}));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({sys_byte_vld,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({rd_ptr_calc_n_11,rd_ptr_calc_n_12,rd_ptr_calc_n_13,rd_ptr_calc_n_14}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram fifo_module
       (.ADDRBWRADDR(rd_ptr_bin),
        .CO(sys_byte_vld),
        .D(D),
        .DIADI({state,DIADI}),
        .DOBDO(DOBDO),
        .Q(wr_ptr_bin),
        .SS(SS),
        .bram_reg_0(bram_reg),
        .bram_reg_1(bram_reg_0),
        .bram_reg_2(bram_reg_1),
        .bram_reg_3(bram_reg_2),
        .bram_reg_4(bram_reg_3),
        .bram_reg_5(bram_reg_4),
        .bram_reg_6(bram_reg_5),
        .\crc_q_reg[19] (\crc_q_reg[19] ),
        .\crc_q_reg[1] (Q),
        .\crc_q_reg[7] (\crc_q_reg[7] ),
        .\crc_q_reg[9] (\crc_q_reg[9] ),
        .crc_vld_INST_0_i_4(crc_vld_INST_0_i_4),
        .rmii_rx_clk(rmii_rx_clk),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr rd_ptr_calc
       (.ADDRBWRADDR(rd_ptr_bin),
        .CO(sys_byte_vld),
        .Q({rd_ptr_calc_n_15,rd_ptr_calc_n_16,rd_ptr_calc_n_17,rd_ptr_calc_n_18,rd_ptr_calc_n_19,rd_ptr_calc_n_20,rd_ptr_calc_n_21,rd_ptr_calc_n_22,rd_ptr_calc_n_23,rd_ptr_calc_n_24,rd_ptr_calc_n_25}),
        .S({rd_ptr_calc_n_11,rd_ptr_calc_n_12,rd_ptr_calc_n_13,rd_ptr_calc_n_14}),
        .SR(rd_ptr_calc_n_10),
        .\crc_q_reg[0] (sync_wr_ptr1),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
  FDRE \sync_rd_ptr0_reg[0] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_25),
        .Q(sync_rd_ptr0[0]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[10] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_15),
        .Q(sync_rd_ptr0[10]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[1] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_24),
        .Q(sync_rd_ptr0[1]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[2] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_23),
        .Q(sync_rd_ptr0[2]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[3] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_22),
        .Q(sync_rd_ptr0[3]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[4] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_21),
        .Q(sync_rd_ptr0[4]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[5] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_20),
        .Q(sync_rd_ptr0[5]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[6] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_19),
        .Q(sync_rd_ptr0[6]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[7] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_18),
        .Q(sync_rd_ptr0[7]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[8] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_17),
        .Q(sync_rd_ptr0[8]),
        .R(SR));
  FDRE \sync_rd_ptr0_reg[9] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_16),
        .Q(sync_rd_ptr0[9]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[0] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[0]),
        .Q(sync_rd_ptr1[0]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[10] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[10]),
        .Q(sync_rd_ptr1[10]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[1] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[1]),
        .Q(sync_rd_ptr1[1]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[2] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[2]),
        .Q(sync_rd_ptr1[2]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[3] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[3]),
        .Q(sync_rd_ptr1[3]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[4] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[4]),
        .Q(sync_rd_ptr1[4]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[5] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[5]),
        .Q(sync_rd_ptr1[5]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[6] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[6]),
        .Q(sync_rd_ptr1[6]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[7] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[7]),
        .Q(sync_rd_ptr1[7]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[8] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[8]),
        .Q(sync_rd_ptr1[8]),
        .R(SR));
  FDRE \sync_rd_ptr1_reg[9] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[9]),
        .Q(sync_rd_ptr1[9]),
        .R(SR));
  FDRE \sync_wr_ptr0_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[0]),
        .Q(sync_wr_ptr0[0]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[10]),
        .Q(sync_wr_ptr0[10]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[1]),
        .Q(sync_wr_ptr0[1]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[2]),
        .Q(sync_wr_ptr0[2]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[3]),
        .Q(sync_wr_ptr0[3]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[4]),
        .Q(sync_wr_ptr0[4]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[5]),
        .Q(sync_wr_ptr0[5]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[6]),
        .Q(sync_wr_ptr0[6]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[7]),
        .Q(sync_wr_ptr0[7]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[8]),
        .Q(sync_wr_ptr0[8]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr0_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[9]),
        .Q(sync_wr_ptr0[9]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[0]),
        .Q(sync_wr_ptr1[0]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[10]),
        .Q(sync_wr_ptr1[10]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[1]),
        .Q(sync_wr_ptr1[1]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[2]),
        .Q(sync_wr_ptr1[2]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[3]),
        .Q(sync_wr_ptr1[3]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[4]),
        .Q(sync_wr_ptr1[4]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[5]),
        .Q(sync_wr_ptr1[5]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[6]),
        .Q(sync_wr_ptr1[6]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[7]),
        .Q(sync_wr_ptr1[7]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[8]),
        .Q(sync_wr_ptr1[8]),
        .R(rd_ptr_calc_n_10));
  FDRE \sync_wr_ptr1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[9]),
        .Q(sync_wr_ptr1[9]),
        .R(rd_ptr_calc_n_10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_0 wr_ptr_calc
       (.CO(CO),
        .Q(wr_ptr_bin),
        .S({wr_ptr_calc_n_11,wr_ptr_calc_n_12,wr_ptr_calc_n_13,wr_ptr_calc_n_14}),
        .SR(SR),
        ._carry(sync_rd_ptr1),
        .\gry_cnt_reg_reg[10]_0 (gry_cnt_reg),
        .rmii_rx_clk(rmii_rx_clk),
        .rmii_rx_rst_n(rmii_rx_rst_n),
        .rx_byte_vld(rx_byte_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr
   (ADDRBWRADDR,
    SR,
    S,
    Q,
    sys_rst_n,
    \crc_q_reg[0] ,
    CO,
    sys_clk);
  output [9:0]ADDRBWRADDR;
  output [0:0]SR;
  output [3:0]S;
  output [10:0]Q;
  input sys_rst_n;
  input [10:0]\crc_q_reg[0] ;
  input [0:0]CO;
  input sys_clk;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [10:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire bin_cnt_next_carry__0_n_0;
  wire bin_cnt_next_carry__0_n_1;
  wire bin_cnt_next_carry__0_n_2;
  wire bin_cnt_next_carry__0_n_3;
  wire bin_cnt_next_carry__1_n_2;
  wire bin_cnt_next_carry__1_n_3;
  wire bin_cnt_next_carry_i_1__0_n_0;
  wire bin_cnt_next_carry_n_0;
  wire bin_cnt_next_carry_n_1;
  wire bin_cnt_next_carry_n_2;
  wire bin_cnt_next_carry_n_3;
  wire [10:0]bin_cnt_reg_reg;
  wire bram_reg_i_13_n_0;
  wire bram_reg_i_2_n_2;
  wire bram_reg_i_2_n_3;
  wire bram_reg_i_2_n_5;
  wire bram_reg_i_3_n_0;
  wire bram_reg_i_3_n_1;
  wire bram_reg_i_3_n_2;
  wire bram_reg_i_3_n_3;
  wire bram_reg_i_4_n_0;
  wire bram_reg_i_4_n_1;
  wire bram_reg_i_4_n_2;
  wire bram_reg_i_4_n_3;
  wire [10:0]\crc_q_reg[0] ;
  wire [9:0]gry_cnt_next;
  wire [10:0]p_1_in__0;
  wire sys_clk;
  wire sys_rst_n;
  wire [3:2]NLW_bin_cnt_next_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_bin_cnt_next_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_bram_reg_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_bram_reg_i_2_O_UNCONNECTED;
  wire [0:0]NLW_bram_reg_i_4_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry
       (.CI(1'b0),
        .CO({bin_cnt_next_carry_n_0,bin_cnt_next_carry_n_1,bin_cnt_next_carry_n_2,bin_cnt_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,bin_cnt_reg_reg[0]}),
        .O({p_1_in__0[3:1],ADDRBWRADDR[0]}),
        .S({bin_cnt_reg_reg[3:1],bin_cnt_next_carry_i_1__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__0
       (.CI(bin_cnt_next_carry_n_0),
        .CO({bin_cnt_next_carry__0_n_0,bin_cnt_next_carry__0_n_1,bin_cnt_next_carry__0_n_2,bin_cnt_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in__0[7:4]),
        .S(bin_cnt_reg_reg[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__1
       (.CI(bin_cnt_next_carry__0_n_0),
        .CO({NLW_bin_cnt_next_carry__1_CO_UNCONNECTED[3:2],bin_cnt_next_carry__1_n_2,bin_cnt_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bin_cnt_next_carry__1_O_UNCONNECTED[3],p_1_in__0[10:8]}),
        .S({1'b0,bin_cnt_reg_reg[10:8]}));
  LUT2 #(
    .INIT(4'h6)) 
    bin_cnt_next_carry_i_1__0
       (.I0(bin_cnt_reg_reg[0]),
        .I1(CO),
        .O(bin_cnt_next_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \bin_cnt_reg[0]_i_1__0 
       (.I0(bin_cnt_reg_reg[0]),
        .I1(CO),
        .O(p_1_in__0[0]));
  FDRE \bin_cnt_reg_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(bin_cnt_reg_reg[0]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[10]),
        .Q(bin_cnt_reg_reg[10]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(bin_cnt_reg_reg[1]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(bin_cnt_reg_reg[2]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[3]),
        .Q(bin_cnt_reg_reg[3]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[4]),
        .Q(bin_cnt_reg_reg[4]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[5]),
        .Q(bin_cnt_reg_reg[5]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[6]),
        .Q(bin_cnt_reg_reg[6]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[7]),
        .Q(bin_cnt_reg_reg[7]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[8]),
        .Q(bin_cnt_reg_reg[8]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[9]),
        .Q(bin_cnt_reg_reg[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    bram_reg_i_13
       (.I0(bin_cnt_reg_reg[0]),
        .I1(CO),
        .O(bram_reg_i_13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bram_reg_i_2
       (.CI(bram_reg_i_3_n_0),
        .CO({NLW_bram_reg_i_2_CO_UNCONNECTED[3:2],bram_reg_i_2_n_2,bram_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bram_reg_i_2_O_UNCONNECTED[3],bram_reg_i_2_n_5,ADDRBWRADDR[9:8]}),
        .S({1'b0,bin_cnt_reg_reg[10:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bram_reg_i_3
       (.CI(bram_reg_i_4_n_0),
        .CO({bram_reg_i_3_n_0,bram_reg_i_3_n_1,bram_reg_i_3_n_2,bram_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ADDRBWRADDR[7:4]),
        .S(bin_cnt_reg_reg[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bram_reg_i_4
       (.CI(1'b0),
        .CO({bram_reg_i_4_n_0,bram_reg_i_4_n_1,bram_reg_i_4_n_2,bram_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,bin_cnt_reg_reg[0]}),
        .O({ADDRBWRADDR[3:1],NLW_bram_reg_i_4_O_UNCONNECTED[0]}),
        .S({bin_cnt_reg_reg[3:1],bram_reg_i_13_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[0]_i_1__0 
       (.I0(ADDRBWRADDR[1]),
        .I1(ADDRBWRADDR[0]),
        .O(gry_cnt_next[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \gry_cnt_reg[10]_i_1 
       (.I0(sys_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[1]_i_1__0 
       (.I0(ADDRBWRADDR[2]),
        .I1(ADDRBWRADDR[1]),
        .O(gry_cnt_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[2]_i_1__0 
       (.I0(ADDRBWRADDR[3]),
        .I1(ADDRBWRADDR[2]),
        .O(gry_cnt_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[3]_i_1__0 
       (.I0(ADDRBWRADDR[4]),
        .I1(ADDRBWRADDR[3]),
        .O(gry_cnt_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[4]_i_1__0 
       (.I0(ADDRBWRADDR[5]),
        .I1(ADDRBWRADDR[4]),
        .O(gry_cnt_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[5]_i_1__0 
       (.I0(ADDRBWRADDR[6]),
        .I1(ADDRBWRADDR[5]),
        .O(gry_cnt_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[6]_i_1__0 
       (.I0(ADDRBWRADDR[7]),
        .I1(ADDRBWRADDR[6]),
        .O(gry_cnt_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[7]_i_1__0 
       (.I0(ADDRBWRADDR[8]),
        .I1(ADDRBWRADDR[7]),
        .O(gry_cnt_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[8]_i_1__0 
       (.I0(ADDRBWRADDR[9]),
        .I1(ADDRBWRADDR[8]),
        .O(gry_cnt_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[9]_i_1__0 
       (.I0(bram_reg_i_2_n_5),
        .I1(ADDRBWRADDR[9]),
        .O(gry_cnt_next[9]));
  FDRE \gry_cnt_reg_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(bram_reg_i_2_n_5),
        .Q(Q[10]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[9]),
        .Q(Q[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_1
       (.I0(Q[9]),
        .I1(\crc_q_reg[0] [9]),
        .I2(Q[10]),
        .I3(\crc_q_reg[0] [10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Q[6]),
        .I1(\crc_q_reg[0] [6]),
        .I2(\crc_q_reg[0] [8]),
        .I3(Q[8]),
        .I4(\crc_q_reg[0] [7]),
        .I5(Q[7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Q[3]),
        .I1(\crc_q_reg[0] [3]),
        .I2(\crc_q_reg[0] [5]),
        .I3(Q[5]),
        .I4(\crc_q_reg[0] [4]),
        .I5(Q[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(\crc_q_reg[0] [0]),
        .I2(\crc_q_reg[0] [2]),
        .I3(Q[2]),
        .I4(\crc_q_reg[0] [1]),
        .I5(Q[1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "bin_gry_ctr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_0
   (Q,
    SR,
    S,
    \gry_cnt_reg_reg[10]_0 ,
    rmii_rx_rst_n,
    _carry,
    CO,
    rx_byte_vld,
    rmii_rx_clk);
  output [9:0]Q;
  output [0:0]SR;
  output [3:0]S;
  output [10:0]\gry_cnt_reg_reg[10]_0 ;
  input rmii_rx_rst_n;
  input [10:0]_carry;
  input [0:0]CO;
  input rx_byte_vld;
  input rmii_rx_clk;

  wire [0:0]CO;
  wire [9:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [10:0]_carry;
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
  wire bin_cnt_next_carry_n_7;
  wire [10:10]bin_cnt_reg_reg;
  wire [9:0]gry_cnt_next;
  wire \gry_cnt_reg[3]_i_3_n_0 ;
  wire [10:0]\gry_cnt_reg_reg[10]_0 ;
  wire \gry_cnt_reg_reg[10]_i_1_n_2 ;
  wire \gry_cnt_reg_reg[10]_i_1_n_3 ;
  wire \gry_cnt_reg_reg[10]_i_1_n_5 ;
  wire \gry_cnt_reg_reg[10]_i_1_n_6 ;
  wire \gry_cnt_reg_reg[10]_i_1_n_7 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_0 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_1 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_2 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_3 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_4 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_5 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_6 ;
  wire \gry_cnt_reg_reg[10]_i_2_n_7 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_0 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_1 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_2 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_3 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_4 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_5 ;
  wire \gry_cnt_reg_reg[3]_i_2_n_6 ;
  wire [10:0]p_1_in;
  wire rmii_rx_clk;
  wire rmii_rx_rst_n;
  wire rx_byte_vld;
  wire [3:2]NLW_bin_cnt_next_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_bin_cnt_next_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_gry_cnt_reg_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gry_cnt_reg_reg[10]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_gry_cnt_reg_reg[3]_i_2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0660)) 
    _carry_i_1
       (.I0(\gry_cnt_reg_reg[10]_0 [9]),
        .I1(_carry[9]),
        .I2(\gry_cnt_reg_reg[10]_0 [10]),
        .I3(_carry[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    _carry_i_2
       (.I0(\gry_cnt_reg_reg[10]_0 [6]),
        .I1(_carry[6]),
        .I2(_carry[8]),
        .I3(\gry_cnt_reg_reg[10]_0 [8]),
        .I4(_carry[7]),
        .I5(\gry_cnt_reg_reg[10]_0 [7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    _carry_i_3
       (.I0(\gry_cnt_reg_reg[10]_0 [3]),
        .I1(_carry[3]),
        .I2(_carry[5]),
        .I3(\gry_cnt_reg_reg[10]_0 [5]),
        .I4(_carry[4]),
        .I5(\gry_cnt_reg_reg[10]_0 [4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    _carry_i_4
       (.I0(\gry_cnt_reg_reg[10]_0 [0]),
        .I1(_carry[0]),
        .I2(_carry[2]),
        .I3(\gry_cnt_reg_reg[10]_0 [2]),
        .I4(_carry[1]),
        .I5(\gry_cnt_reg_reg[10]_0 [1]),
        .O(S[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry
       (.CI(1'b0),
        .CO({bin_cnt_next_carry_n_0,bin_cnt_next_carry_n_1,bin_cnt_next_carry_n_2,bin_cnt_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({p_1_in[3:1],bin_cnt_next_carry_n_7}),
        .S({Q[3:1],bin_cnt_next_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__0
       (.CI(bin_cnt_next_carry_n_0),
        .CO({bin_cnt_next_carry__0_n_0,bin_cnt_next_carry__0_n_1,bin_cnt_next_carry__0_n_2,bin_cnt_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[7:4]),
        .S(Q[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 bin_cnt_next_carry__1
       (.CI(bin_cnt_next_carry__0_n_0),
        .CO({NLW_bin_cnt_next_carry__1_CO_UNCONNECTED[3:2],bin_cnt_next_carry__1_n_2,bin_cnt_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bin_cnt_next_carry__1_O_UNCONNECTED[3],p_1_in[10:8]}),
        .S({1'b0,bin_cnt_reg_reg,Q[9:8]}));
  LUT3 #(
    .INIT(8'h6A)) 
    bin_cnt_next_carry_i_1
       (.I0(Q[0]),
        .I1(CO),
        .I2(rx_byte_vld),
        .O(bin_cnt_next_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    \bin_cnt_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(CO),
        .I2(rx_byte_vld),
        .O(p_1_in[0]));
  FDRE \bin_cnt_reg_reg[0] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[10] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(bin_cnt_reg_reg),
        .R(SR));
  FDRE \bin_cnt_reg_reg[1] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[2] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[3] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[4] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[5] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[6] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[7] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[8] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[9] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(Q[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[0]_i_1 
       (.I0(\gry_cnt_reg_reg[3]_i_2_n_6 ),
        .I1(bin_cnt_next_carry_n_7),
        .O(gry_cnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[1]_i_1 
       (.I0(\gry_cnt_reg_reg[3]_i_2_n_5 ),
        .I1(\gry_cnt_reg_reg[3]_i_2_n_6 ),
        .O(gry_cnt_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[2]_i_1 
       (.I0(\gry_cnt_reg_reg[3]_i_2_n_4 ),
        .I1(\gry_cnt_reg_reg[3]_i_2_n_5 ),
        .O(gry_cnt_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[3]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_7 ),
        .I1(\gry_cnt_reg_reg[3]_i_2_n_4 ),
        .O(gry_cnt_next[3]));
  LUT3 #(
    .INIT(8'h6A)) 
    \gry_cnt_reg[3]_i_3 
       (.I0(Q[0]),
        .I1(CO),
        .I2(rx_byte_vld),
        .O(\gry_cnt_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[4]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_6 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_7 ),
        .O(gry_cnt_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[5]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_5 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_6 ),
        .O(gry_cnt_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[6]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_4 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_5 ),
        .O(gry_cnt_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[7]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_1_n_7 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_4 ),
        .O(gry_cnt_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[8]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_1_n_6 ),
        .I1(\gry_cnt_reg_reg[10]_i_1_n_7 ),
        .O(gry_cnt_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[9]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_1_n_5 ),
        .I1(\gry_cnt_reg_reg[10]_i_1_n_6 ),
        .O(gry_cnt_next[9]));
  FDRE \gry_cnt_reg_reg[0] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[0]),
        .Q(\gry_cnt_reg_reg[10]_0 [0]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[10] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(\gry_cnt_reg_reg[10]_i_1_n_5 ),
        .Q(\gry_cnt_reg_reg[10]_0 [10]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gry_cnt_reg_reg[10]_i_1 
       (.CI(\gry_cnt_reg_reg[10]_i_2_n_0 ),
        .CO({\NLW_gry_cnt_reg_reg[10]_i_1_CO_UNCONNECTED [3:2],\gry_cnt_reg_reg[10]_i_1_n_2 ,\gry_cnt_reg_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gry_cnt_reg_reg[10]_i_1_O_UNCONNECTED [3],\gry_cnt_reg_reg[10]_i_1_n_5 ,\gry_cnt_reg_reg[10]_i_1_n_6 ,\gry_cnt_reg_reg[10]_i_1_n_7 }),
        .S({1'b0,bin_cnt_reg_reg,Q[9:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gry_cnt_reg_reg[10]_i_2 
       (.CI(\gry_cnt_reg_reg[3]_i_2_n_0 ),
        .CO({\gry_cnt_reg_reg[10]_i_2_n_0 ,\gry_cnt_reg_reg[10]_i_2_n_1 ,\gry_cnt_reg_reg[10]_i_2_n_2 ,\gry_cnt_reg_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gry_cnt_reg_reg[10]_i_2_n_4 ,\gry_cnt_reg_reg[10]_i_2_n_5 ,\gry_cnt_reg_reg[10]_i_2_n_6 ,\gry_cnt_reg_reg[10]_i_2_n_7 }),
        .S(Q[7:4]));
  FDRE \gry_cnt_reg_reg[1] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[1]),
        .Q(\gry_cnt_reg_reg[10]_0 [1]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[2] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[2]),
        .Q(\gry_cnt_reg_reg[10]_0 [2]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[3] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[3]),
        .Q(\gry_cnt_reg_reg[10]_0 [3]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gry_cnt_reg_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\gry_cnt_reg_reg[3]_i_2_n_0 ,\gry_cnt_reg_reg[3]_i_2_n_1 ,\gry_cnt_reg_reg[3]_i_2_n_2 ,\gry_cnt_reg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\gry_cnt_reg_reg[3]_i_2_n_4 ,\gry_cnt_reg_reg[3]_i_2_n_5 ,\gry_cnt_reg_reg[3]_i_2_n_6 ,\NLW_gry_cnt_reg_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({Q[3:1],\gry_cnt_reg[3]_i_3_n_0 }));
  FDRE \gry_cnt_reg_reg[4] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[4]),
        .Q(\gry_cnt_reg_reg[10]_0 [4]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[5] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[5]),
        .Q(\gry_cnt_reg_reg[10]_0 [5]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[6] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[6]),
        .Q(\gry_cnt_reg_reg[10]_0 [6]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[7] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[7]),
        .Q(\gry_cnt_reg_reg[10]_0 [7]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[8] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[8]),
        .Q(\gry_cnt_reg_reg[10]_0 [8]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[9] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(gry_cnt_next[9]),
        .Q(\gry_cnt_reg_reg[10]_0 [9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_data_reg[3]_i_1 
       (.I0(rmii_rx_rst_n),
        .O(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8
   (crc_vld,
    Q,
    \crc_q_reg[31]_0 ,
    \crc_q_reg[25]_0 ,
    sys_byte_vld,
    D,
    crc_vld_0,
    crc_vld_1,
    \crc_q_reg[28]_0 ,
    sys_byte,
    crc_vld_2,
    \crc_q_reg[6]_0 ,
    \crc_q_reg[9]_0 ,
    \crc_q_reg[16]_0 ,
    \crc_q_reg[15]_0 ,
    \crc_q_reg[10]_0 ,
    SS,
    sys_clk);
  output crc_vld;
  output [8:0]Q;
  output \crc_q_reg[31]_0 ;
  output \crc_q_reg[25]_0 ;
  input sys_byte_vld;
  input [3:0]D;
  input crc_vld_0;
  input crc_vld_1;
  input \crc_q_reg[28]_0 ;
  input [7:0]sys_byte;
  input crc_vld_2;
  input \crc_q_reg[6]_0 ;
  input \crc_q_reg[9]_0 ;
  input \crc_q_reg[16]_0 ;
  input \crc_q_reg[15]_0 ;
  input \crc_q_reg[10]_0 ;
  input [0:0]SS;
  input sys_clk;

  wire [3:0]D;
  wire [8:0]Q;
  wire [0:0]SS;
  wire [31:2]crc_d;
  wire \crc_q[12]_i_2_n_0 ;
  wire \crc_q[14]_i_2_n_0 ;
  wire \crc_q_reg[10]_0 ;
  wire \crc_q_reg[15]_0 ;
  wire \crc_q_reg[16]_0 ;
  wire \crc_q_reg[25]_0 ;
  wire \crc_q_reg[28]_0 ;
  wire \crc_q_reg[31]_0 ;
  wire \crc_q_reg[6]_0 ;
  wire \crc_q_reg[9]_0 ;
  wire \crc_q_reg_n_0_[0] ;
  wire crc_vld;
  wire crc_vld_0;
  wire crc_vld_1;
  wire crc_vld_2;
  wire crc_vld_INST_0_i_10_n_0;
  wire crc_vld_INST_0_i_13_n_0;
  wire crc_vld_INST_0_i_15_n_0;
  wire crc_vld_INST_0_i_1_n_0;
  wire crc_vld_INST_0_i_2_n_0;
  wire crc_vld_INST_0_i_3_n_0;
  wire crc_vld_INST_0_i_4_n_0;
  wire crc_vld_INST_0_i_5_n_0;
  wire crc_vld_INST_0_i_7_n_0;
  wire p_0_in3_in;
  wire p_1_in21_in;
  wire p_1_in23_in;
  wire p_1_in25_in;
  wire p_1_in27_in;
  wire p_1_in29_in;
  wire p_1_in31_in;
  wire p_1_in33_in;
  wire p_1_in35_in;
  wire p_1_in39_in;
  wire p_1_in41_in;
  wire p_1_in43_in;
  wire p_1_in45_in;
  wire p_1_in47_in;
  wire p_1_in49_in;
  wire p_1_in51_in;
  wire p_1_in53_in;
  wire p_1_in55_in;
  wire p_1_in59_in;
  wire p_1_in61_in;
  wire p_1_in63_in;
  wire p_1_in65_in;
  wire [7:0]sys_byte;
  wire sys_byte_vld;
  wire sys_clk;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[10]_i_1 
       (.I0(p_1_in23_in),
        .I1(p_0_in3_in),
        .I2(sys_byte[5]),
        .I3(sys_byte[2]),
        .I4(Q[6]),
        .I5(\crc_q_reg[10]_0 ),
        .O(crc_d[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[11]_i_1 
       (.I0(p_1_in25_in),
        .I1(Q[3]),
        .I2(sys_byte[6]),
        .I3(crc_vld_INST_0_i_7_n_0),
        .O(crc_d[11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[12]_i_1 
       (.I0(p_1_in27_in),
        .I1(\crc_q[12]_i_2_n_0 ),
        .I2(\crc_q_reg[9]_0 ),
        .I3(\crc_q_reg[6]_0 ),
        .I4(sys_byte[7]),
        .I5(Q[2]),
        .O(crc_d[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[12]_i_2 
       (.I0(p_0_in3_in),
        .I1(sys_byte[5]),
        .O(\crc_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[13]_i_1 
       (.I0(p_1_in29_in),
        .I1(\crc_q_reg[16]_0 ),
        .I2(\crc_q_reg[6]_0 ),
        .I3(\crc_q_reg[31]_0 ),
        .I4(sys_byte[4]),
        .I5(Q[4]),
        .O(crc_d[13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[14]_i_1 
       (.I0(p_1_in31_in),
        .I1(\crc_q_reg[28]_0 ),
        .I2(Q[5]),
        .I3(sys_byte[3]),
        .I4(\crc_q_reg[31]_0 ),
        .I5(\crc_q[14]_i_2_n_0 ),
        .O(crc_d[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[14]_i_2 
       (.I0(Q[4]),
        .I1(sys_byte[4]),
        .O(\crc_q[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[15]_i_1 
       (.I0(p_1_in33_in),
        .I1(Q[4]),
        .I2(sys_byte[4]),
        .I3(\crc_q_reg[15]_0 ),
        .O(crc_d[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[16]_i_1 
       (.I0(p_1_in35_in),
        .I1(Q[2]),
        .I2(sys_byte[7]),
        .I3(\crc_q_reg[16]_0 ),
        .I4(Q[5]),
        .I5(sys_byte[3]),
        .O(crc_d[16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[17]_i_1 
       (.I0(Q[0]),
        .I1(sys_byte[2]),
        .I2(Q[6]),
        .I3(sys_byte[1]),
        .I4(Q[7]),
        .I5(\crc_q_reg[25]_0 ),
        .O(crc_d[17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[18]_i_1 
       (.I0(p_1_in39_in),
        .I1(sys_byte[1]),
        .I2(Q[7]),
        .I3(\crc_q_reg[31]_0 ),
        .O(crc_d[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[19]_i_1 
       (.I0(sys_byte[0]),
        .I1(Q[8]),
        .I2(p_1_in41_in),
        .I3(sys_byte[4]),
        .I4(Q[4]),
        .O(crc_d[19]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[20]_i_1 
       (.I0(p_1_in43_in),
        .I1(sys_byte[3]),
        .I2(Q[5]),
        .O(crc_d[20]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[21]_i_1 
       (.I0(p_1_in45_in),
        .I1(Q[6]),
        .I2(sys_byte[2]),
        .O(crc_d[21]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[22]_i_1 
       (.I0(p_1_in47_in),
        .I1(Q[2]),
        .I2(sys_byte[7]),
        .O(crc_d[22]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[23]_i_1 
       (.I0(Q[2]),
        .I1(sys_byte[7]),
        .I2(\crc_q_reg[25]_0 ),
        .I3(Q[7]),
        .I4(sys_byte[1]),
        .I5(p_1_in49_in),
        .O(crc_d[23]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[24]_i_1 
       (.I0(p_1_in51_in),
        .I1(\crc_q_reg[25]_0 ),
        .I2(p_0_in3_in),
        .I3(sys_byte[5]),
        .I4(sys_byte[0]),
        .I5(Q[8]),
        .O(crc_d[24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[25]_i_1 
       (.I0(sys_byte[4]),
        .I1(p_0_in3_in),
        .I2(sys_byte[5]),
        .I3(Q[4]),
        .I4(p_1_in53_in),
        .O(crc_d[25]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[26]_i_1 
       (.I0(p_1_in55_in),
        .I1(sys_byte[1]),
        .I2(Q[7]),
        .I3(crc_vld_INST_0_i_7_n_0),
        .O(crc_d[26]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[27]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(sys_byte[6]),
        .I3(\crc_q_reg[15]_0 ),
        .O(crc_d[27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[28]_i_1 
       (.I0(p_1_in59_in),
        .I1(\crc_q_reg[28]_0 ),
        .I2(p_0_in3_in),
        .I3(sys_byte[5]),
        .I4(sys_byte[2]),
        .I5(Q[6]),
        .O(crc_d[28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[29]_i_1 
       (.I0(p_1_in61_in),
        .I1(\crc_q_reg[28]_0 ),
        .I2(sys_byte[0]),
        .I3(Q[8]),
        .I4(Q[4]),
        .I5(sys_byte[4]),
        .O(crc_d[29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[2]_i_1 
       (.I0(Q[2]),
        .I1(sys_byte[7]),
        .I2(\crc_q_reg[25]_0 ),
        .I3(Q[7]),
        .I4(sys_byte[1]),
        .I5(\crc_q_reg[31]_0 ),
        .O(crc_d[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[30]_i_1 
       (.I0(sys_byte[0]),
        .I1(Q[8]),
        .I2(p_1_in63_in),
        .I3(sys_byte[3]),
        .I4(Q[5]),
        .O(crc_d[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[31]_i_2 
       (.I0(p_1_in65_in),
        .I1(Q[6]),
        .I2(sys_byte[2]),
        .O(crc_d[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[3]_i_1 
       (.I0(Q[4]),
        .I1(sys_byte[4]),
        .I2(\crc_q_reg[31]_0 ),
        .I3(sys_byte[6]),
        .I4(Q[3]),
        .O(crc_d[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[4]_i_1 
       (.I0(sys_byte[1]),
        .I1(Q[7]),
        .I2(p_0_in3_in),
        .I3(sys_byte[5]),
        .I4(crc_vld_INST_0_i_7_n_0),
        .O(crc_d[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[6]_i_1 
       (.I0(\crc_q_reg[31]_0 ),
        .I1(sys_byte[3]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(sys_byte[2]),
        .I5(\crc_q_reg[6]_0 ),
        .O(crc_d[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[8]_i_1 
       (.I0(\crc_q_reg_n_0_[0] ),
        .I1(Q[3]),
        .I2(sys_byte[6]),
        .I3(crc_vld_INST_0_i_7_n_0),
        .O(crc_d[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[9]_i_1 
       (.I0(p_1_in21_in),
        .I1(Q[3]),
        .I2(sys_byte[6]),
        .I3(p_0_in3_in),
        .I4(sys_byte[5]),
        .I5(\crc_q_reg[9]_0 ),
        .O(crc_d[9]));
  FDSE \crc_q_reg[0] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(D[0]),
        .Q(\crc_q_reg_n_0_[0] ),
        .S(SS));
  FDSE \crc_q_reg[10] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[10]),
        .Q(p_1_in39_in),
        .S(SS));
  FDSE \crc_q_reg[11] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[11]),
        .Q(p_1_in41_in),
        .S(SS));
  FDSE \crc_q_reg[12] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[12]),
        .Q(p_1_in43_in),
        .S(SS));
  FDSE \crc_q_reg[13] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[13]),
        .Q(p_1_in45_in),
        .S(SS));
  FDSE \crc_q_reg[14] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[14]),
        .Q(p_1_in47_in),
        .S(SS));
  FDSE \crc_q_reg[15] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[15]),
        .Q(p_1_in49_in),
        .S(SS));
  FDSE \crc_q_reg[16] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[16]),
        .Q(p_1_in51_in),
        .S(SS));
  FDSE \crc_q_reg[17] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[17]),
        .Q(p_1_in53_in),
        .S(SS));
  FDSE \crc_q_reg[18] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[18]),
        .Q(p_1_in55_in),
        .S(SS));
  FDSE \crc_q_reg[19] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[19]),
        .Q(Q[1]),
        .S(SS));
  FDSE \crc_q_reg[1] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(D[1]),
        .Q(p_1_in21_in),
        .S(SS));
  FDSE \crc_q_reg[20] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[20]),
        .Q(p_1_in59_in),
        .S(SS));
  FDSE \crc_q_reg[21] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[21]),
        .Q(p_1_in61_in),
        .S(SS));
  FDSE \crc_q_reg[22] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[22]),
        .Q(p_1_in63_in),
        .S(SS));
  FDSE \crc_q_reg[23] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[23]),
        .Q(p_1_in65_in),
        .S(SS));
  FDSE \crc_q_reg[24] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[24]),
        .Q(Q[2]),
        .S(SS));
  FDSE \crc_q_reg[25] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[25]),
        .Q(Q[3]),
        .S(SS));
  FDSE \crc_q_reg[26] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[26]),
        .Q(p_0_in3_in),
        .S(SS));
  FDSE \crc_q_reg[27] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[27]),
        .Q(Q[4]),
        .S(SS));
  FDSE \crc_q_reg[28] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[28]),
        .Q(Q[5]),
        .S(SS));
  FDSE \crc_q_reg[29] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[29]),
        .Q(Q[6]),
        .S(SS));
  FDSE \crc_q_reg[2] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[2]),
        .Q(p_1_in23_in),
        .S(SS));
  FDSE \crc_q_reg[30] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[30]),
        .Q(Q[7]),
        .S(SS));
  FDSE \crc_q_reg[31] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[31]),
        .Q(Q[8]),
        .S(SS));
  FDSE \crc_q_reg[3] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[3]),
        .Q(p_1_in25_in),
        .S(SS));
  FDSE \crc_q_reg[4] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[4]),
        .Q(p_1_in27_in),
        .S(SS));
  FDSE \crc_q_reg[5] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(D[2]),
        .Q(p_1_in29_in),
        .S(SS));
  FDSE \crc_q_reg[6] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[6]),
        .Q(p_1_in31_in),
        .S(SS));
  FDSE \crc_q_reg[7] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(D[3]),
        .Q(p_1_in33_in),
        .S(SS));
  FDSE \crc_q_reg[8] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[8]),
        .Q(p_1_in35_in),
        .S(SS));
  FDSE \crc_q_reg[9] 
       (.C(sys_clk),
        .CE(sys_byte_vld),
        .D(crc_d[9]),
        .Q(Q[0]),
        .S(SS));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    crc_vld_INST_0
       (.I0(crc_vld_INST_0_i_1_n_0),
        .I1(crc_vld_INST_0_i_2_n_0),
        .I2(crc_vld_INST_0_i_3_n_0),
        .I3(crc_vld_INST_0_i_4_n_0),
        .I4(crc_vld_INST_0_i_5_n_0),
        .I5(sys_byte_vld),
        .O(crc_vld));
  LUT6 #(
    .INIT(64'h7FFDFD7FFFFFFFFF)) 
    crc_vld_INST_0_i_1
       (.I0(crc_d[10]),
        .I1(p_1_in25_in),
        .I2(\crc_q_reg_n_0_[0] ),
        .I3(\crc_q_reg[25]_0 ),
        .I4(crc_vld_INST_0_i_7_n_0),
        .I5(crc_d[25]),
        .O(crc_vld_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFF96699669FFFF)) 
    crc_vld_INST_0_i_10
       (.I0(\crc_q_reg[25]_0 ),
        .I1(\crc_q_reg[31]_0 ),
        .I2(sys_byte[4]),
        .I3(Q[4]),
        .I4(\crc_q_reg[16]_0 ),
        .I5(p_1_in65_in),
        .O(crc_vld_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBED7D7BE)) 
    crc_vld_INST_0_i_13
       (.I0(p_1_in47_in),
        .I1(Q[2]),
        .I2(sys_byte[7]),
        .I3(\crc_q_reg[6]_0 ),
        .I4(p_1_in49_in),
        .I5(crc_vld_INST_0_i_15_n_0),
        .O(crc_vld_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF9696FF96FFFF96)) 
    crc_vld_INST_0_i_15
       (.I0(sys_byte[2]),
        .I1(Q[6]),
        .I2(p_1_in45_in),
        .I3(Q[5]),
        .I4(sys_byte[3]),
        .I5(p_1_in43_in),
        .O(crc_vld_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h7FFFFF7FFF7F7FFF)) 
    crc_vld_INST_0_i_2
       (.I0(crc_d[14]),
        .I1(crc_d[15]),
        .I2(crc_d[12]),
        .I3(p_1_in51_in),
        .I4(\crc_q_reg[25]_0 ),
        .I5(\crc_q_reg[31]_0 ),
        .O(crc_vld_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    crc_vld_INST_0_i_3
       (.I0(D[2]),
        .I1(crc_d[4]),
        .I2(crc_d[26]),
        .I3(crc_d[6]),
        .I4(crc_vld_2),
        .I5(crc_vld_INST_0_i_10_n_0),
        .O(crc_vld_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    crc_vld_INST_0_i_4
       (.I0(crc_d[29]),
        .I1(crc_d[28]),
        .I2(crc_vld_0),
        .I3(crc_d[9]),
        .I4(crc_d[13]),
        .I5(crc_vld_1),
        .O(crc_vld_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    crc_vld_INST_0_i_5
       (.I0(crc_vld_INST_0_i_13_n_0),
        .I1(crc_d[30]),
        .I2(crc_d[18]),
        .I3(crc_d[19]),
        .I4(crc_d[16]),
        .O(crc_vld_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    crc_vld_INST_0_i_6
       (.I0(Q[3]),
        .I1(sys_byte[6]),
        .O(\crc_q_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    crc_vld_INST_0_i_7
       (.I0(Q[2]),
        .I1(sys_byte[7]),
        .I2(Q[4]),
        .I3(sys_byte[4]),
        .I4(sys_byte[3]),
        .I5(Q[5]),
        .O(crc_vld_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    crc_vld_INST_0_i_8
       (.I0(Q[8]),
        .I1(sys_byte[0]),
        .I2(sys_byte[5]),
        .I3(p_0_in3_in),
        .O(\crc_q_reg[31]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_wrapper_0_0,wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "wrapper,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rmii_rx_clk,
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
    crc_vld);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rmii_rx_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rmii_rx_clk, ASSOCIATED_RESET rmii_rx_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk_0, INSERT_VIP 0" *) input rmii_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rmii_rx_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rmii_rx_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rmii_rx_rst_n;
  input [3:0]rmii_rx_data;
  input rmii_rx_dv;
  input rmii_rx_er;
  input rmii_crs;
  input rmii_col;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  output sys_byte_vld;
  output sys_data_vld;
  output [7:0]sys_byte;
  output crc_vld;

  wire crc_vld;
  wire rmii_rx_clk;
  wire [3:0]rmii_rx_data;
  wire rmii_rx_dv;
  wire rmii_rx_rst_n;
  wire [7:0]sys_byte;
  wire sys_byte_vld;
  wire sys_clk;
  wire sys_data_vld;
  wire sys_rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrapper inst
       (.DOBDO({sys_data_vld,sys_byte}),
        .crc_vld(crc_vld),
        .rmii_rx_clk(rmii_rx_clk),
        .rmii_rx_data(rmii_rx_data),
        .rmii_rx_dv(rmii_rx_dv),
        .rmii_rx_rst_n(rmii_rx_rst_n),
        .sys_byte_vld(sys_byte_vld),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram
   (DOBDO,
    SS,
    D,
    bram_reg_0,
    bram_reg_1,
    \crc_q_reg[19] ,
    bram_reg_2,
    bram_reg_3,
    bram_reg_4,
    \crc_q_reg[9] ,
    bram_reg_5,
    bram_reg_6,
    rmii_rx_clk,
    sys_clk,
    wr_en,
    Q,
    ADDRBWRADDR,
    DIADI,
    CO,
    sys_rst_n,
    \crc_q_reg[1] ,
    crc_vld_INST_0_i_4,
    \crc_q_reg[7] );
  output [8:0]DOBDO;
  output [0:0]SS;
  output [3:0]D;
  output bram_reg_0;
  output bram_reg_1;
  output \crc_q_reg[19] ;
  output bram_reg_2;
  output bram_reg_3;
  output bram_reg_4;
  output \crc_q_reg[9] ;
  output bram_reg_5;
  output bram_reg_6;
  input rmii_rx_clk;
  input sys_clk;
  input wr_en;
  input [9:0]Q;
  input [9:0]ADDRBWRADDR;
  input [8:0]DIADI;
  input [0:0]CO;
  input sys_rst_n;
  input [8:0]\crc_q_reg[1] ;
  input crc_vld_INST_0_i_4;
  input \crc_q_reg[7] ;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [3:0]D;
  wire [8:0]DIADI;
  wire [8:0]DOBDO;
  wire [9:0]Q;
  wire [0:0]SS;
  wire bram_reg_0;
  wire bram_reg_1;
  wire bram_reg_2;
  wire bram_reg_3;
  wire bram_reg_4;
  wire bram_reg_5;
  wire bram_reg_6;
  wire \crc_q_reg[19] ;
  wire [8:0]\crc_q_reg[1] ;
  wire \crc_q_reg[7] ;
  wire \crc_q_reg[9] ;
  wire crc_vld_INST_0_i_14_n_0;
  wire crc_vld_INST_0_i_4;
  wire rmii_rx_clk;
  wire sys_clk;
  wire sys_rst_n;
  wire wr_en;
  wire [15:0]NLW_bram_reg_DOADO_UNCONNECTED;
  wire [15:9]NLW_bram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_bram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_bram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "9216" *) 
  (* RTL_RAM_NAME = "inst/fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
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
       (.ADDRARDADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(rmii_rx_clk),
        .CLKBWRCLK(sys_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_bram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_bram_reg_DOBDO_UNCONNECTED[15:9],DOBDO}),
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
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[0]_i_1 
       (.I0(DOBDO[1]),
        .I1(\crc_q_reg[1] [7]),
        .I2(\crc_q_reg[1] [2]),
        .I3(DOBDO[7]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[10]_i_2 
       (.I0(DOBDO[4]),
        .I1(\crc_q_reg[1] [4]),
        .I2(DOBDO[7]),
        .I3(\crc_q_reg[1] [2]),
        .O(bram_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[12]_i_3 
       (.I0(DOBDO[3]),
        .I1(\crc_q_reg[1] [5]),
        .I2(\crc_q_reg[1] [6]),
        .I3(DOBDO[2]),
        .O(bram_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[13]_i_2 
       (.I0(DOBDO[6]),
        .I1(\crc_q_reg[1] [3]),
        .I2(\crc_q_reg[1] [7]),
        .I3(DOBDO[1]),
        .O(bram_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[16]_i_2 
       (.I0(DOBDO[2]),
        .I1(\crc_q_reg[1] [6]),
        .O(bram_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[1]_i_1 
       (.I0(\crc_q_reg[1] [2]),
        .I1(DOBDO[7]),
        .I2(bram_reg_0),
        .I3(\crc_q_reg[1] [8]),
        .I4(DOBDO[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[27]_i_2 
       (.I0(DOBDO[2]),
        .I1(\crc_q_reg[1] [6]),
        .I2(\crc_q_reg[1] [5]),
        .I3(DOBDO[3]),
        .I4(\crc_q_reg[1] [8]),
        .I5(DOBDO[0]),
        .O(bram_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[29]_i_2 
       (.I0(DOBDO[1]),
        .I1(\crc_q_reg[1] [7]),
        .O(bram_reg_6));
  LUT3 #(
    .INIT(8'h4F)) 
    \crc_q[31]_i_1 
       (.I0(DOBDO[8]),
        .I1(CO),
        .I2(sys_rst_n),
        .O(SS));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[5]_i_1 
       (.I0(DOBDO[4]),
        .I1(\crc_q_reg[1] [4]),
        .I2(DOBDO[7]),
        .I3(\crc_q_reg[1] [2]),
        .I4(bram_reg_0),
        .I5(bram_reg_1),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[7]_i_1 
       (.I0(bram_reg_3),
        .I1(DOBDO[4]),
        .I2(\crc_q_reg[1] [4]),
        .I3(DOBDO[7]),
        .I4(\crc_q_reg[1] [2]),
        .I5(\crc_q_reg[7] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h9FF6F96FF96F9FF6)) 
    crc_vld_INST_0_i_11
       (.I0(bram_reg_3),
        .I1(\crc_q_reg[1] [0]),
        .I2(\crc_q_reg[7] ),
        .I3(bram_reg_0),
        .I4(DOBDO[7]),
        .I5(\crc_q_reg[1] [2]),
        .O(\crc_q_reg[9] ));
  LUT6 #(
    .INIT(64'hFF9696FF96FFFF96)) 
    crc_vld_INST_0_i_12
       (.I0(bram_reg_1),
        .I1(crc_vld_INST_0_i_4),
        .I2(\crc_q_reg[1] [1]),
        .I3(\crc_q_reg[7] ),
        .I4(bram_reg_2),
        .I5(bram_reg_3),
        .O(\crc_q_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    crc_vld_INST_0_i_14
       (.I0(DOBDO[0]),
        .I1(\crc_q_reg[1] [8]),
        .O(crc_vld_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'hF66F6FF66FF6F66F)) 
    crc_vld_INST_0_i_9
       (.I0(crc_vld_INST_0_i_14_n_0),
        .I1(crc_vld_INST_0_i_4),
        .I2(DOBDO[7]),
        .I3(\crc_q_reg[1] [2]),
        .I4(\crc_q_reg[1] [7]),
        .I5(DOBDO[1]),
        .O(bram_reg_5));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rmii_rx
   (state,
    rx_byte_vld,
    wr_en,
    DIADI,
    SR,
    rmii_rx_clk,
    rmii_rx_rst_n,
    rmii_rx_dv,
    rmii_rx_data,
    CO);
  output state;
  output rx_byte_vld;
  output wr_en;
  output [7:0]DIADI;
  input [0:0]SR;
  input rmii_rx_clk;
  input rmii_rx_rst_n;
  input rmii_rx_dv;
  input [3:0]rmii_rx_data;
  input [0:0]CO;

  wire [0:0]CO;
  wire [7:0]DIADI;
  wire [0:0]SR;
  wire byte_vld_i_1_n_0;
  wire byte_vld_i_2_n_0;
  wire rmii_rx_clk;
  wire [3:0]rmii_rx_data;
  wire rmii_rx_dv;
  wire rmii_rx_rst_n;
  wire rx_byte_vld;
  wire [3:0]rx_data_reg;
  wire \rx_data_reg[1]_i_1_n_0 ;
  wire \rx_data_reg_reg_n_0_[0] ;
  wire \rx_data_reg_reg_n_0_[1] ;
  wire \rx_data_reg_reg_n_0_[2] ;
  wire \rx_data_reg_reg_n_0_[3] ;
  wire state;
  wire state_i_1_n_0;
  wire wr_en;

  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_1
       (.I0(rx_byte_vld),
        .I1(CO),
        .O(wr_en));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_10
       (.I0(state),
        .I1(\rx_data_reg_reg_n_0_[2] ),
        .O(DIADI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_11
       (.I0(state),
        .I1(\rx_data_reg_reg_n_0_[1] ),
        .O(DIADI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_12
       (.I0(state),
        .I1(\rx_data_reg_reg_n_0_[0] ),
        .O(DIADI[0]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_5
       (.I0(state),
        .I1(rmii_rx_data[3]),
        .O(DIADI[7]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_6
       (.I0(state),
        .I1(rmii_rx_data[2]),
        .O(DIADI[6]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_7
       (.I0(state),
        .I1(rmii_rx_data[1]),
        .O(DIADI[5]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_8
       (.I0(state),
        .I1(rmii_rx_data[0]),
        .O(DIADI[4]));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_9
       (.I0(state),
        .I1(\rx_data_reg_reg_n_0_[3] ),
        .O(DIADI[3]));
  LUT5 #(
    .INIT(32'h0000808A)) 
    byte_vld_i_1
       (.I0(rmii_rx_rst_n),
        .I1(rmii_rx_dv),
        .I2(state),
        .I3(byte_vld_i_2_n_0),
        .I4(rx_byte_vld),
        .O(byte_vld_i_1_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    byte_vld_i_2
       (.I0(rmii_rx_dv),
        .I1(rmii_rx_data[3]),
        .I2(rmii_rx_data[0]),
        .I3(rmii_rx_data[1]),
        .I4(rmii_rx_data[2]),
        .O(byte_vld_i_2_n_0));
  FDRE byte_vld_reg
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(byte_vld_i_1_n_0),
        .Q(rx_byte_vld),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8800C80088008800)) 
    \rx_data_reg[0]_i_1 
       (.I0(state),
        .I1(rmii_rx_dv),
        .I2(rmii_rx_data[3]),
        .I3(rmii_rx_data[0]),
        .I4(rmii_rx_data[1]),
        .I5(rmii_rx_data[2]),
        .O(rx_data_reg[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_data_reg[1]_i_1 
       (.I0(rmii_rx_data[1]),
        .I1(rmii_rx_rst_n),
        .I2(rmii_rx_dv),
        .I3(state),
        .O(\rx_data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888C88800000000)) 
    \rx_data_reg[2]_i_1 
       (.I0(state),
        .I1(rmii_rx_dv),
        .I2(rmii_rx_data[3]),
        .I3(rmii_rx_data[0]),
        .I4(rmii_rx_data[1]),
        .I5(rmii_rx_data[2]),
        .O(rx_data_reg[2]));
  LUT6 #(
    .INIT(64'h8080C08080808080)) 
    \rx_data_reg[3]_i_2 
       (.I0(state),
        .I1(rmii_rx_dv),
        .I2(rmii_rx_data[3]),
        .I3(rmii_rx_data[0]),
        .I4(rmii_rx_data[1]),
        .I5(rmii_rx_data[2]),
        .O(rx_data_reg[3]));
  FDRE \rx_data_reg_reg[0] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rx_data_reg[0]),
        .Q(\rx_data_reg_reg_n_0_[0] ),
        .R(SR));
  FDRE \rx_data_reg_reg[1] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(\rx_data_reg[1]_i_1_n_0 ),
        .Q(\rx_data_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rx_data_reg_reg[2] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rx_data_reg[2]),
        .Q(\rx_data_reg_reg_n_0_[2] ),
        .R(SR));
  FDRE \rx_data_reg_reg[3] 
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(rx_data_reg[3]),
        .Q(\rx_data_reg_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h8888C88888888888)) 
    state_i_1
       (.I0(state),
        .I1(rmii_rx_dv),
        .I2(rmii_rx_data[3]),
        .I3(rmii_rx_data[0]),
        .I4(rmii_rx_data[1]),
        .I5(rmii_rx_data[2]),
        .O(state_i_1_n_0));
  FDRE state_reg
       (.C(rmii_rx_clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrapper
   (DOBDO,
    sys_byte_vld,
    crc_vld,
    rmii_rx_rst_n,
    rmii_rx_dv,
    sys_rst_n,
    rmii_rx_clk,
    sys_clk,
    rmii_rx_data);
  output [8:0]DOBDO;
  output sys_byte_vld;
  output crc_vld;
  input rmii_rx_rst_n;
  input rmii_rx_dv;
  input sys_rst_n;
  input rmii_rx_clk;
  input sys_clk;
  input [3:0]rmii_rx_data;

  wire [8:0]DOBDO;
  wire crc32_n_10;
  wire crc32_n_11;
  wire [7:0]crc_d;
  wire crc_vld;
  wire fifo_n_11;
  wire fifo_n_17;
  wire fifo_n_18;
  wire fifo_n_19;
  wire fifo_n_20;
  wire fifo_n_21;
  wire fifo_n_22;
  wire fifo_n_23;
  wire fifo_n_24;
  wire fifo_n_25;
  wire fifo_n_9;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_1_in37_in;
  wire p_1_in57_in;
  wire p_2_in;
  wire p_2_in13_in;
  wire rmii_rx_clk;
  wire [3:0]rmii_rx_data;
  wire rmii_rx_dv;
  wire rmii_rx_rst_n;
  wire [7:0]rx_byte;
  wire rx_byte_vld;
  wire state;
  wire sys_byte_vld;
  wire sys_clk;
  wire sys_rst_n;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8 crc32
       (.D({crc_d[7],crc_d[5],crc_d[1:0]}),
        .Q({p_2_in,p_0_in_0,p_2_in13_in,p_0_in9_in,p_0_in6_in,p_0_in12_in,p_1_in,p_1_in57_in,p_1_in37_in}),
        .SS(fifo_n_11),
        .\crc_q_reg[10]_0 (fifo_n_20),
        .\crc_q_reg[15]_0 (fifo_n_18),
        .\crc_q_reg[16]_0 (fifo_n_21),
        .\crc_q_reg[25]_0 (crc32_n_11),
        .\crc_q_reg[28]_0 (fifo_n_25),
        .\crc_q_reg[31]_0 (crc32_n_10),
        .\crc_q_reg[6]_0 (fifo_n_17),
        .\crc_q_reg[9]_0 (fifo_n_22),
        .crc_vld(crc_vld),
        .crc_vld_0(fifo_n_23),
        .crc_vld_1(fifo_n_19),
        .crc_vld_2(fifo_n_24),
        .sys_byte(DOBDO[7:0]),
        .sys_byte_vld(sys_byte_vld),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo fifo
       (.CO(fifo_n_9),
        .D({crc_d[7],crc_d[5],crc_d[1:0]}),
        .DIADI(rx_byte),
        .DOBDO(DOBDO),
        .Q({p_2_in,p_0_in_0,p_2_in13_in,p_0_in9_in,p_0_in6_in,p_0_in12_in,p_1_in,p_1_in57_in,p_1_in37_in}),
        .SR(p_0_in),
        .SS(fifo_n_11),
        .bram_reg(fifo_n_17),
        .bram_reg_0(fifo_n_18),
        .bram_reg_1(fifo_n_20),
        .bram_reg_2(fifo_n_21),
        .bram_reg_3(fifo_n_22),
        .bram_reg_4(fifo_n_24),
        .bram_reg_5(fifo_n_25),
        .\crc_q_reg[19] (fifo_n_19),
        .\crc_q_reg[7] (crc32_n_10),
        .\crc_q_reg[9] (fifo_n_23),
        .crc_vld_INST_0_i_4(crc32_n_11),
        .rmii_rx_clk(rmii_rx_clk),
        .rmii_rx_rst_n(rmii_rx_rst_n),
        .rx_byte_vld(rx_byte_vld),
        .state(state),
        .sys_byte_vld(sys_byte_vld),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rmii_rx rmii
       (.CO(fifo_n_9),
        .DIADI(rx_byte),
        .SR(p_0_in),
        .rmii_rx_clk(rmii_rx_clk),
        .rmii_rx_data(rmii_rx_data),
        .rmii_rx_dv(rmii_rx_dv),
        .rmii_rx_rst_n(rmii_rx_rst_n),
        .rx_byte_vld(rx_byte_vld),
        .state(state),
        .wr_en(wr_en));
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
