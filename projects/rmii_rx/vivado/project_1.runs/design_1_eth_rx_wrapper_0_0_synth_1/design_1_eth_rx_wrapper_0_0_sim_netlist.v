// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 21 19:43:43 2023
// Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_eth_rx_wrapper_0_0_sim_netlist.v
// Design      : design_1_eth_rx_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
   (DOBDO,
    CO,
    SS,
    E,
    bram_reg,
    D,
    \crc_q_reg[19] ,
    bram_reg_0,
    bram_reg_1,
    bram_reg_2,
    bram_reg_3,
    \crc_q_reg[9] ,
    bram_reg_4,
    bram_reg_5,
    WEA,
    phy_clk,
    sys_clk,
    phy_data_in,
    sys_rst_n,
    \ctrl_reg[4] ,
    bram_reg_6,
    \ctrl[11]_i_6 ,
    Q,
    \crc_q_reg[7] ,
    bram_reg_7,
    \gry_cnt_reg_reg[10] ,
    phy_data_in_vld,
    phy_rst_n);
  output [8:0]DOBDO;
  output [0:0]CO;
  output [0:0]SS;
  output [0:0]E;
  output bram_reg;
  output [3:0]D;
  output \crc_q_reg[19] ;
  output bram_reg_0;
  output bram_reg_1;
  output bram_reg_2;
  output bram_reg_3;
  output \crc_q_reg[9] ;
  output bram_reg_4;
  output bram_reg_5;
  output [0:0]WEA;
  input phy_clk;
  input sys_clk;
  input [8:0]phy_data_in;
  input sys_rst_n;
  input \ctrl_reg[4] ;
  input bram_reg_6;
  input \ctrl[11]_i_6 ;
  input [8:0]Q;
  input \crc_q_reg[7] ;
  input [0:0]bram_reg_7;
  input \gry_cnt_reg_reg[10] ;
  input phy_data_in_vld;
  input phy_rst_n;

  wire [0:0]CO;
  wire [3:0]D;
  wire [8:0]DOBDO;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SS;
  wire [0:0]WEA;
  wire _carry_n_0;
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
  wire bram_reg_6;
  wire [0:0]bram_reg_7;
  wire \crc_q_reg[19] ;
  wire \crc_q_reg[7] ;
  wire \crc_q_reg[9] ;
  wire \ctrl[11]_i_6 ;
  wire \ctrl_reg[4] ;
  wire [10:0]gry_cnt_reg;
  wire \gry_cnt_reg_reg[10] ;
  wire phy_clk;
  wire [8:0]phy_data_in;
  wire phy_data_in_vld;
  wire phy_rst_n;
  wire [9:0]rd_ptr_bin;
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
  wire rd_ptr_calc_n_26;
  wire [10:0]sync_rd_ptr0;
  wire [10:0]sync_rd_ptr1;
  wire [10:0]sync_wr_ptr0;
  wire [10:0]sync_wr_ptr1;
  wire sys_clk;
  wire sys_rst_n;
  wire wr_en;
  wire [9:0]wr_ptr_bin;
  wire wr_ptr_calc_n_11;
  wire wr_ptr_calc_n_12;
  wire wr_ptr_calc_n_13;
  wire wr_ptr_calc_n_14;
  wire wr_ptr_calc_n_15;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({wr_ptr_calc_n_12,wr_ptr_calc_n_13,wr_ptr_calc_n_14,wr_ptr_calc_n_15}));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({CO,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({rd_ptr_calc_n_12,rd_ptr_calc_n_13,rd_ptr_calc_n_14,rd_ptr_calc_n_15}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram fifo_module
       (.ADDRBWRADDR(rd_ptr_bin),
        .CO(CO),
        .D(D),
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
        .\ctrl[11]_i_6 (\ctrl[11]_i_6 ),
        .phy_clk(phy_clk),
        .phy_data_in(phy_data_in),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr rd_ptr_calc
       (.ADDRBWRADDR(rd_ptr_bin),
        .CO(CO),
        .E(E),
        .Q({rd_ptr_calc_n_16,rd_ptr_calc_n_17,rd_ptr_calc_n_18,rd_ptr_calc_n_19,rd_ptr_calc_n_20,rd_ptr_calc_n_21,rd_ptr_calc_n_22,rd_ptr_calc_n_23,rd_ptr_calc_n_24,rd_ptr_calc_n_25,rd_ptr_calc_n_26}),
        .S({rd_ptr_calc_n_12,rd_ptr_calc_n_13,rd_ptr_calc_n_14,rd_ptr_calc_n_15}),
        .WEA(WEA),
        .bram_reg(bram_reg_6),
        .bram_reg_0(bram_reg_7),
        .\control_reg[103] (sync_wr_ptr1),
        .\ctrl_reg[4] (\ctrl_reg[4] ),
        .\gry_cnt_reg_reg[10]_0 (\gry_cnt_reg_reg[10] ),
        .sys_clk(sys_clk));
  FDRE \sync_rd_ptr0_reg[0] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_26),
        .Q(sync_rd_ptr0[0]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[10] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_16),
        .Q(sync_rd_ptr0[10]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[1] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_25),
        .Q(sync_rd_ptr0[1]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[2] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_24),
        .Q(sync_rd_ptr0[2]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[3] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_23),
        .Q(sync_rd_ptr0[3]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[4] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_22),
        .Q(sync_rd_ptr0[4]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[5] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_21),
        .Q(sync_rd_ptr0[5]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[6] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_20),
        .Q(sync_rd_ptr0[6]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[7] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_19),
        .Q(sync_rd_ptr0[7]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[8] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_18),
        .Q(sync_rd_ptr0[8]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr0_reg[9] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(rd_ptr_calc_n_17),
        .Q(sync_rd_ptr0[9]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[0] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[0]),
        .Q(sync_rd_ptr1[0]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[10] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[10]),
        .Q(sync_rd_ptr1[10]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[1] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[1]),
        .Q(sync_rd_ptr1[1]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[2] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[2]),
        .Q(sync_rd_ptr1[2]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[3] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[3]),
        .Q(sync_rd_ptr1[3]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[4] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[4]),
        .Q(sync_rd_ptr1[4]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[5] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[5]),
        .Q(sync_rd_ptr1[5]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[6] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[6]),
        .Q(sync_rd_ptr1[6]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[7] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[7]),
        .Q(sync_rd_ptr1[7]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[8] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[8]),
        .Q(sync_rd_ptr1[8]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_rd_ptr1_reg[9] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(sync_rd_ptr0[9]),
        .Q(sync_rd_ptr1[9]),
        .R(wr_ptr_calc_n_11));
  FDRE \sync_wr_ptr0_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[0]),
        .Q(sync_wr_ptr0[0]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[10]),
        .Q(sync_wr_ptr0[10]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[1]),
        .Q(sync_wr_ptr0[1]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[2]),
        .Q(sync_wr_ptr0[2]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[3]),
        .Q(sync_wr_ptr0[3]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[4]),
        .Q(sync_wr_ptr0[4]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[5]),
        .Q(sync_wr_ptr0[5]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[6]),
        .Q(sync_wr_ptr0[6]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[7]),
        .Q(sync_wr_ptr0[7]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[8]),
        .Q(sync_wr_ptr0[8]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr0_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_reg[9]),
        .Q(sync_wr_ptr0[9]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[0]),
        .Q(sync_wr_ptr1[0]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[10]),
        .Q(sync_wr_ptr1[10]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[1]),
        .Q(sync_wr_ptr1[1]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[2]),
        .Q(sync_wr_ptr1[2]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[3]),
        .Q(sync_wr_ptr1[3]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[4]),
        .Q(sync_wr_ptr1[4]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[5]),
        .Q(sync_wr_ptr1[5]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[6]),
        .Q(sync_wr_ptr1[6]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[7]),
        .Q(sync_wr_ptr1[7]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[8]),
        .Q(sync_wr_ptr1[8]),
        .R(\gry_cnt_reg_reg[10] ));
  FDRE \sync_wr_ptr1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(sync_wr_ptr0[9]),
        .Q(sync_wr_ptr1[9]),
        .R(\gry_cnt_reg_reg[10] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2 wr_ptr_calc
       (.CO(_carry_n_0),
        .Q(wr_ptr_bin),
        .S({wr_ptr_calc_n_12,wr_ptr_calc_n_13,wr_ptr_calc_n_14,wr_ptr_calc_n_15}),
        .SR(wr_ptr_calc_n_11),
        ._carry(sync_rd_ptr1),
        .\gry_cnt_reg_reg[10]_0 (gry_cnt_reg),
        .phy_clk(phy_clk),
        .phy_data_in_vld(phy_data_in_vld),
        .phy_rst_n(phy_rst_n),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr
   (ADDRBWRADDR,
    E,
    WEA,
    S,
    Q,
    CO,
    \ctrl_reg[4] ,
    bram_reg,
    bram_reg_0,
    \control_reg[103] ,
    \gry_cnt_reg_reg[10]_0 ,
    sys_clk);
  output [9:0]ADDRBWRADDR;
  output [0:0]E;
  output [0:0]WEA;
  output [3:0]S;
  output [10:0]Q;
  input [0:0]CO;
  input \ctrl_reg[4] ;
  input bram_reg;
  input [0:0]bram_reg_0;
  input [10:0]\control_reg[103] ;
  input \gry_cnt_reg_reg[10]_0 ;
  input sys_clk;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]E;
  wire [10:0]Q;
  wire [3:0]S;
  wire [0:0]WEA;
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
  wire bram_reg;
  wire [0:0]bram_reg_0;
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
  wire bram_reg_i_5__0_n_0;
  wire [10:0]\control_reg[103] ;
  wire \ctrl_reg[4] ;
  wire [9:0]gry_cnt_next;
  wire \gry_cnt_reg_reg[10]_0 ;
  wire [10:0]p_1_in__0;
  wire sys_clk;
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[10]),
        .Q(bin_cnt_reg_reg[10]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(bin_cnt_reg_reg[1]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(bin_cnt_reg_reg[2]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[3]),
        .Q(bin_cnt_reg_reg[3]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[4]),
        .Q(bin_cnt_reg_reg[4]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[5]),
        .Q(bin_cnt_reg_reg[5]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[6]),
        .Q(bin_cnt_reg_reg[6]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[7]),
        .Q(bin_cnt_reg_reg[7]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[8]),
        .Q(bin_cnt_reg_reg[8]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \bin_cnt_reg_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_1_in__0[9]),
        .Q(bin_cnt_reg_reg[9]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    bram_reg_i_1__0
       (.I0(CO),
        .I1(bram_reg),
        .I2(bram_reg_0),
        .O(WEA));
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
        .S({bin_cnt_reg_reg[3:1],bram_reg_i_5__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    bram_reg_i_5__0
       (.I0(bin_cnt_reg_reg[0]),
        .I1(CO),
        .O(bram_reg_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ctrl[11]_i_1 
       (.I0(CO),
        .I1(\ctrl_reg[4] ),
        .I2(bram_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[0]_i_1 
       (.I0(ADDRBWRADDR[1]),
        .I1(ADDRBWRADDR[0]),
        .O(gry_cnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[1]_i_1 
       (.I0(ADDRBWRADDR[2]),
        .I1(ADDRBWRADDR[1]),
        .O(gry_cnt_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[2]_i_1 
       (.I0(ADDRBWRADDR[3]),
        .I1(ADDRBWRADDR[2]),
        .O(gry_cnt_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[3]_i_1 
       (.I0(ADDRBWRADDR[4]),
        .I1(ADDRBWRADDR[3]),
        .O(gry_cnt_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[4]_i_1 
       (.I0(ADDRBWRADDR[5]),
        .I1(ADDRBWRADDR[4]),
        .O(gry_cnt_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[5]_i_1 
       (.I0(ADDRBWRADDR[6]),
        .I1(ADDRBWRADDR[5]),
        .O(gry_cnt_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[6]_i_1 
       (.I0(ADDRBWRADDR[7]),
        .I1(ADDRBWRADDR[6]),
        .O(gry_cnt_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[7]_i_1 
       (.I0(ADDRBWRADDR[8]),
        .I1(ADDRBWRADDR[7]),
        .O(gry_cnt_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[8]_i_1 
       (.I0(ADDRBWRADDR[9]),
        .I1(ADDRBWRADDR[8]),
        .O(gry_cnt_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[9]_i_1 
       (.I0(bram_reg_i_2_n_5),
        .I1(ADDRBWRADDR[9]),
        .O(gry_cnt_next[9]));
  FDRE \gry_cnt_reg_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[0]),
        .Q(Q[0]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(bram_reg_i_2_n_5),
        .Q(Q[10]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[1]),
        .Q(Q[1]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[2]),
        .Q(Q[2]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[3]),
        .Q(Q[3]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[4]),
        .Q(Q[4]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[5]),
        .Q(Q[5]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[6]),
        .Q(Q[6]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[7]),
        .Q(Q[7]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[8]),
        .Q(Q[8]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  FDRE \gry_cnt_reg_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(gry_cnt_next[9]),
        .Q(Q[9]),
        .R(\gry_cnt_reg_reg[10]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_1
       (.I0(Q[9]),
        .I1(\control_reg[103] [9]),
        .I2(Q[10]),
        .I3(\control_reg[103] [10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Q[6]),
        .I1(\control_reg[103] [6]),
        .I2(\control_reg[103] [8]),
        .I3(Q[8]),
        .I4(\control_reg[103] [7]),
        .I5(Q[7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Q[3]),
        .I1(\control_reg[103] [3]),
        .I2(\control_reg[103] [5]),
        .I3(Q[5]),
        .I4(\control_reg[103] [4]),
        .I5(Q[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(\control_reg[103] [0]),
        .I2(\control_reg[103] [2]),
        .I3(Q[2]),
        .I4(\control_reg[103] [1]),
        .I5(Q[1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "bin_gry_ctr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2
   (Q,
    wr_en,
    SR,
    S,
    \gry_cnt_reg_reg[10]_0 ,
    CO,
    phy_data_in_vld,
    phy_rst_n,
    _carry,
    phy_clk);
  output [9:0]Q;
  output wr_en;
  output [0:0]SR;
  output [3:0]S;
  output [10:0]\gry_cnt_reg_reg[10]_0 ;
  input [0:0]CO;
  input phy_data_in_vld;
  input phy_rst_n;
  input [10:0]_carry;
  input phy_clk;

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
  wire phy_clk;
  wire phy_data_in_vld;
  wire phy_rst_n;
  wire wr_en;
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
        .I2(phy_data_in_vld),
        .O(bin_cnt_next_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    \bin_cnt_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(CO),
        .I2(phy_data_in_vld),
        .O(p_1_in[0]));
  FDRE \bin_cnt_reg_reg[0] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[10] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(bin_cnt_reg_reg),
        .R(SR));
  FDRE \bin_cnt_reg_reg[1] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[2] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[3] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[4] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[5] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[6] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[7] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[8] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \bin_cnt_reg_reg[9] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(Q[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_i_1
       (.I0(phy_data_in_vld),
        .I1(CO),
        .O(wr_en));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[0]_i_1 
       (.I0(\gry_cnt_reg_reg[3]_i_2_n_6 ),
        .I1(bin_cnt_next_carry_n_7),
        .O(gry_cnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[1]_i_1 
       (.I0(\gry_cnt_reg_reg[3]_i_2_n_5 ),
        .I1(\gry_cnt_reg_reg[3]_i_2_n_6 ),
        .O(gry_cnt_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[2]_i_1 
       (.I0(\gry_cnt_reg_reg[3]_i_2_n_4 ),
        .I1(\gry_cnt_reg_reg[3]_i_2_n_5 ),
        .O(gry_cnt_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .I2(phy_data_in_vld),
        .O(\gry_cnt_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[4]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_6 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_7 ),
        .O(gry_cnt_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[5]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_5 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_6 ),
        .O(gry_cnt_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[6]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_2_n_4 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_5 ),
        .O(gry_cnt_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[7]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_1_n_7 ),
        .I1(\gry_cnt_reg_reg[10]_i_2_n_4 ),
        .O(gry_cnt_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[8]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_1_n_6 ),
        .I1(\gry_cnt_reg_reg[10]_i_1_n_7 ),
        .O(gry_cnt_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gry_cnt_reg[9]_i_1 
       (.I0(\gry_cnt_reg_reg[10]_i_1_n_5 ),
        .I1(\gry_cnt_reg_reg[10]_i_1_n_6 ),
        .O(gry_cnt_next[9]));
  FDRE \gry_cnt_reg_reg[0] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[0]),
        .Q(\gry_cnt_reg_reg[10]_0 [0]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[10] 
       (.C(phy_clk),
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
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[1]),
        .Q(\gry_cnt_reg_reg[10]_0 [1]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[2] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[2]),
        .Q(\gry_cnt_reg_reg[10]_0 [2]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[3] 
       (.C(phy_clk),
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
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[4]),
        .Q(\gry_cnt_reg_reg[10]_0 [4]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[5] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[5]),
        .Q(\gry_cnt_reg_reg[10]_0 [5]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[6] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[6]),
        .Q(\gry_cnt_reg_reg[10]_0 [6]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[7] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[7]),
        .Q(\gry_cnt_reg_reg[10]_0 [7]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[8] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[8]),
        .Q(\gry_cnt_reg_reg[10]_0 [8]),
        .R(SR));
  FDRE \gry_cnt_reg_reg[9] 
       (.C(phy_clk),
        .CE(1'b1),
        .D(gry_cnt_next[9]),
        .Q(\gry_cnt_reg_reg[10]_0 [9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_rd_ptr0[10]_i_1 
       (.I0(phy_rst_n),
        .O(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer
   (data_2,
    CO,
    DOBDO,
    sys_clk,
    \delay_reg[3][8]_0 ,
    \delay_reg[3][8]_1 );
  output [8:0]data_2;
  input [0:0]CO;
  input [8:0]DOBDO;
  input sys_clk;
  input \delay_reg[3][8]_0 ;
  input \delay_reg[3][8]_1 ;

  wire [0:0]CO;
  wire [8:0]DOBDO;
  wire [8:0]data_2;
  wire \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ;
  wire \delay_reg[2][0]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][1]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][2]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][3]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][4]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][5]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][6]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][7]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[2][8]_inst_rx_fsm_control_reg_r_1_n_0 ;
  wire \delay_reg[3][8]_0 ;
  wire \delay_reg[3][8]_1 ;
  wire delay_reg_gate__0_n_0;
  wire delay_reg_gate__1_n_0;
  wire delay_reg_gate__2_n_0;
  wire delay_reg_gate__3_n_0;
  wire delay_reg_gate__4_n_0;
  wire delay_reg_gate__5_n_0;
  wire delay_reg_gate__6_n_0;
  wire delay_reg_gate__7_n_0;
  wire delay_reg_gate_n_0;
  wire sys_clk;

  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[0]),
        .Q(\delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[1]),
        .Q(\delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[2]),
        .Q(\delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[3]),
        .Q(\delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[4]),
        .Q(\delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[5]),
        .Q(\delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[6]),
        .Q(\delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[7]),
        .Q(\delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  (* srl_bus_name = "\inst/delay/delay_reg[1] " *) 
  (* srl_name = "\inst/delay/delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0 " *) 
  SRL16E \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(DOBDO[8]),
        .Q(\delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ));
  FDRE \delay_reg[2][0]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][0]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][1]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][1]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][2]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][2]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][3]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][3]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][4]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][4]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][5]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][5]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][6]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][6]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][7]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][7]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[2][8]_inst_rx_fsm_control_reg_r_1 
       (.C(sys_clk),
        .CE(CO),
        .D(\delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0_n_0 ),
        .Q(\delay_reg[2][8]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE \delay_reg[3][0] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__7_n_0),
        .Q(data_2[0]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][1] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__6_n_0),
        .Q(data_2[1]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][2] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__5_n_0),
        .Q(data_2[2]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][3] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__4_n_0),
        .Q(data_2[3]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][4] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__3_n_0),
        .Q(data_2[4]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][5] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__2_n_0),
        .Q(data_2[5]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][6] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__1_n_0),
        .Q(data_2[6]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][7] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate__0_n_0),
        .Q(data_2[7]),
        .R(\delay_reg[3][8]_1 ));
  FDRE \delay_reg[3][8] 
       (.C(sys_clk),
        .CE(CO),
        .D(delay_reg_gate_n_0),
        .Q(data_2[8]),
        .R(\delay_reg[3][8]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate
       (.I0(\delay_reg[2][8]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__0
       (.I0(\delay_reg[2][7]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__1
       (.I0(\delay_reg[2][6]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__2
       (.I0(\delay_reg[2][5]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__3
       (.I0(\delay_reg[2][4]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__4
       (.I0(\delay_reg[2][3]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__5
       (.I0(\delay_reg[2][2]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__6
       (.I0(\delay_reg[2][1]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    delay_reg_gate__7
       (.I0(\delay_reg[2][0]_inst_rx_fsm_control_reg_r_1_n_0 ),
        .I1(\delay_reg[3][8]_0 ),
        .O(delay_reg_gate__7_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8
   (SR,
    \delay_reg[3][8] ,
    D,
    sys_rst_n_0,
    Q,
    \crc_q_reg[25]_0 ,
    \crc_q_reg[31]_0 ,
    \byte_cnt_reg[0] ,
    data_2,
    CO,
    sys_rst_n,
    \crc_q_reg[7]_0 ,
    DOBDO,
    \crc_q_reg[6]_0 ,
    \ctrl_reg[11] ,
    \ctrl_reg[11]_0 ,
    \ctrl_reg[11]_1 ,
    \crc_q_reg[29]_0 ,
    \crc_q_reg[27]_0 ,
    \crc_q_reg[13]_0 ,
    \crc_q_reg[10]_0 ,
    \crc_q_reg[12]_0 ,
    SS,
    sys_clk);
  output [0:0]SR;
  output \delay_reg[3][8] ;
  output [0:0]D;
  output sys_rst_n_0;
  output [8:0]Q;
  output \crc_q_reg[25]_0 ;
  output \crc_q_reg[31]_0 ;
  input \byte_cnt_reg[0] ;
  input [0:0]data_2;
  input [0:0]CO;
  input sys_rst_n;
  input [3:0]\crc_q_reg[7]_0 ;
  input [7:0]DOBDO;
  input \crc_q_reg[6]_0 ;
  input \ctrl_reg[11] ;
  input \ctrl_reg[11]_0 ;
  input \ctrl_reg[11]_1 ;
  input \crc_q_reg[29]_0 ;
  input \crc_q_reg[27]_0 ;
  input \crc_q_reg[13]_0 ;
  input \crc_q_reg[10]_0 ;
  input \crc_q_reg[12]_0 ;
  input [0:0]SS;
  input sys_clk;

  wire [0:0]CO;
  wire [0:0]D;
  wire [7:0]DOBDO;
  wire [8:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire \byte_cnt_reg[0] ;
  wire [31:2]crc_d;
  wire \crc_q[12]_i_2_n_0 ;
  wire \crc_q[14]_i_2_n_0 ;
  wire \crc_q[26]_i_2_n_0 ;
  wire \crc_q_reg[10]_0 ;
  wire \crc_q_reg[12]_0 ;
  wire \crc_q_reg[13]_0 ;
  wire \crc_q_reg[25]_0 ;
  wire \crc_q_reg[27]_0 ;
  wire \crc_q_reg[29]_0 ;
  wire \crc_q_reg[31]_0 ;
  wire \crc_q_reg[6]_0 ;
  wire [3:0]\crc_q_reg[7]_0 ;
  wire \crc_q_reg_n_0_[0] ;
  wire \ctrl[11]_i_11_n_0 ;
  wire \ctrl[11]_i_14_n_0 ;
  wire \ctrl[11]_i_15_n_0 ;
  wire \ctrl[11]_i_16_n_0 ;
  wire \ctrl[11]_i_18_n_0 ;
  wire \ctrl[11]_i_19_n_0 ;
  wire \ctrl[11]_i_4_n_0 ;
  wire \ctrl[11]_i_5_n_0 ;
  wire \ctrl[11]_i_6_n_0 ;
  wire \ctrl[11]_i_7_n_0 ;
  wire \ctrl[11]_i_8_n_0 ;
  wire \ctrl[11]_i_9_n_0 ;
  wire \ctrl_reg[11] ;
  wire \ctrl_reg[11]_0 ;
  wire \ctrl_reg[11]_1 ;
  wire [0:0]data_2;
  wire \delay_reg[3][8] ;
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
  wire sys_clk;
  wire sys_rst_n;
  wire sys_rst_n_0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h8B00FFFF)) 
    \byte_cnt[10]_i_1 
       (.I0(\delay_reg[3][8] ),
        .I1(\byte_cnt_reg[0] ),
        .I2(data_2),
        .I3(CO),
        .I4(sys_rst_n),
        .O(SR));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[10]_i_1 
       (.I0(p_1_in23_in),
        .I1(p_0_in3_in),
        .I2(DOBDO[5]),
        .I3(DOBDO[2]),
        .I4(Q[6]),
        .I5(\crc_q_reg[10]_0 ),
        .O(crc_d[10]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[11]_i_1 
       (.I0(p_1_in25_in),
        .I1(Q[3]),
        .I2(DOBDO[6]),
        .I3(\crc_q[26]_i_2_n_0 ),
        .O(crc_d[11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[12]_i_1 
       (.I0(p_1_in27_in),
        .I1(\crc_q[12]_i_2_n_0 ),
        .I2(\crc_q_reg[12]_0 ),
        .I3(\crc_q_reg[6]_0 ),
        .I4(DOBDO[7]),
        .I5(Q[2]),
        .O(crc_d[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[12]_i_2 
       (.I0(p_0_in3_in),
        .I1(DOBDO[5]),
        .O(\crc_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[13]_i_1 
       (.I0(p_1_in29_in),
        .I1(\crc_q_reg[13]_0 ),
        .I2(\crc_q_reg[6]_0 ),
        .I3(\crc_q_reg[31]_0 ),
        .I4(DOBDO[4]),
        .I5(Q[4]),
        .O(crc_d[13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[14]_i_1 
       (.I0(p_1_in31_in),
        .I1(\crc_q_reg[29]_0 ),
        .I2(Q[5]),
        .I3(DOBDO[3]),
        .I4(\crc_q_reg[31]_0 ),
        .I5(\crc_q[14]_i_2_n_0 ),
        .O(crc_d[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[14]_i_2 
       (.I0(Q[4]),
        .I1(DOBDO[4]),
        .O(\crc_q[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[15]_i_1 
       (.I0(p_1_in33_in),
        .I1(Q[4]),
        .I2(DOBDO[4]),
        .I3(\crc_q_reg[27]_0 ),
        .O(crc_d[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[16]_i_1 
       (.I0(p_1_in35_in),
        .I1(Q[2]),
        .I2(DOBDO[7]),
        .I3(\crc_q_reg[13]_0 ),
        .I4(Q[5]),
        .I5(DOBDO[3]),
        .O(crc_d[16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[17]_i_1 
       (.I0(Q[0]),
        .I1(DOBDO[2]),
        .I2(Q[6]),
        .I3(DOBDO[1]),
        .I4(Q[7]),
        .I5(\crc_q_reg[25]_0 ),
        .O(crc_d[17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[18]_i_1 
       (.I0(p_1_in39_in),
        .I1(DOBDO[1]),
        .I2(Q[7]),
        .I3(\crc_q_reg[31]_0 ),
        .O(crc_d[18]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[18]_i_2 
       (.I0(Q[8]),
        .I1(DOBDO[0]),
        .I2(DOBDO[5]),
        .I3(p_0_in3_in),
        .O(\crc_q_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[19]_i_1 
       (.I0(DOBDO[0]),
        .I1(Q[8]),
        .I2(p_1_in41_in),
        .I3(DOBDO[4]),
        .I4(Q[4]),
        .O(crc_d[19]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[20]_i_1 
       (.I0(p_1_in43_in),
        .I1(DOBDO[3]),
        .I2(Q[5]),
        .O(crc_d[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[21]_i_1 
       (.I0(p_1_in45_in),
        .I1(Q[6]),
        .I2(DOBDO[2]),
        .O(crc_d[21]));
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[22]_i_1 
       (.I0(p_1_in47_in),
        .I1(Q[2]),
        .I2(DOBDO[7]),
        .O(crc_d[22]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[23]_i_1 
       (.I0(Q[2]),
        .I1(DOBDO[7]),
        .I2(\crc_q_reg[25]_0 ),
        .I3(Q[7]),
        .I4(DOBDO[1]),
        .I5(p_1_in49_in),
        .O(crc_d[23]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[24]_i_1 
       (.I0(p_1_in51_in),
        .I1(\crc_q_reg[25]_0 ),
        .I2(p_0_in3_in),
        .I3(DOBDO[5]),
        .I4(DOBDO[0]),
        .I5(Q[8]),
        .O(crc_d[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[24]_i_2 
       (.I0(Q[3]),
        .I1(DOBDO[6]),
        .O(\crc_q_reg[25]_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[25]_i_1 
       (.I0(DOBDO[4]),
        .I1(p_0_in3_in),
        .I2(DOBDO[5]),
        .I3(Q[4]),
        .I4(p_1_in53_in),
        .O(crc_d[25]));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[26]_i_1 
       (.I0(p_1_in55_in),
        .I1(DOBDO[1]),
        .I2(Q[7]),
        .I3(\crc_q[26]_i_2_n_0 ),
        .O(crc_d[26]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[26]_i_2 
       (.I0(Q[2]),
        .I1(DOBDO[7]),
        .I2(Q[4]),
        .I3(DOBDO[4]),
        .I4(DOBDO[3]),
        .I5(Q[5]),
        .O(\crc_q[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[27]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(DOBDO[6]),
        .I3(\crc_q_reg[27]_0 ),
        .O(crc_d[27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[28]_i_1 
       (.I0(p_1_in59_in),
        .I1(\crc_q_reg[29]_0 ),
        .I2(p_0_in3_in),
        .I3(DOBDO[5]),
        .I4(DOBDO[2]),
        .I5(Q[6]),
        .O(crc_d[28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[29]_i_1 
       (.I0(p_1_in61_in),
        .I1(\crc_q_reg[29]_0 ),
        .I2(DOBDO[0]),
        .I3(Q[8]),
        .I4(Q[4]),
        .I5(DOBDO[4]),
        .O(crc_d[29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[2]_i_1 
       (.I0(Q[2]),
        .I1(DOBDO[7]),
        .I2(\crc_q_reg[25]_0 ),
        .I3(Q[7]),
        .I4(DOBDO[1]),
        .I5(\crc_q_reg[31]_0 ),
        .O(crc_d[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[30]_i_1 
       (.I0(DOBDO[0]),
        .I1(Q[8]),
        .I2(p_1_in63_in),
        .I3(DOBDO[3]),
        .I4(Q[5]),
        .O(crc_d[30]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[31]_i_2 
       (.I0(p_1_in65_in),
        .I1(Q[6]),
        .I2(DOBDO[2]),
        .O(crc_d[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[3]_i_1 
       (.I0(Q[4]),
        .I1(DOBDO[4]),
        .I2(\crc_q_reg[31]_0 ),
        .I3(DOBDO[6]),
        .I4(Q[3]),
        .O(crc_d[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[4]_i_1 
       (.I0(DOBDO[1]),
        .I1(Q[7]),
        .I2(p_0_in3_in),
        .I3(DOBDO[5]),
        .I4(\crc_q[26]_i_2_n_0 ),
        .O(crc_d[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[6]_i_1 
       (.I0(\crc_q_reg[31]_0 ),
        .I1(DOBDO[3]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(DOBDO[2]),
        .I5(\crc_q_reg[6]_0 ),
        .O(crc_d[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[8]_i_1 
       (.I0(\crc_q_reg_n_0_[0] ),
        .I1(Q[3]),
        .I2(DOBDO[6]),
        .I3(\crc_q[26]_i_2_n_0 ),
        .O(crc_d[8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[9]_i_1 
       (.I0(p_1_in21_in),
        .I1(Q[3]),
        .I2(DOBDO[6]),
        .I3(p_0_in3_in),
        .I4(DOBDO[5]),
        .I5(\crc_q_reg[12]_0 ),
        .O(crc_d[9]));
  FDSE \crc_q_reg[0] 
       (.C(sys_clk),
        .CE(CO),
        .D(\crc_q_reg[7]_0 [0]),
        .Q(\crc_q_reg_n_0_[0] ),
        .S(SS));
  FDSE \crc_q_reg[10] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[10]),
        .Q(p_1_in39_in),
        .S(SS));
  FDSE \crc_q_reg[11] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[11]),
        .Q(p_1_in41_in),
        .S(SS));
  FDSE \crc_q_reg[12] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[12]),
        .Q(p_1_in43_in),
        .S(SS));
  FDSE \crc_q_reg[13] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[13]),
        .Q(p_1_in45_in),
        .S(SS));
  FDSE \crc_q_reg[14] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[14]),
        .Q(p_1_in47_in),
        .S(SS));
  FDSE \crc_q_reg[15] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[15]),
        .Q(p_1_in49_in),
        .S(SS));
  FDSE \crc_q_reg[16] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[16]),
        .Q(p_1_in51_in),
        .S(SS));
  FDSE \crc_q_reg[17] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[17]),
        .Q(p_1_in53_in),
        .S(SS));
  FDSE \crc_q_reg[18] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[18]),
        .Q(p_1_in55_in),
        .S(SS));
  FDSE \crc_q_reg[19] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[19]),
        .Q(Q[1]),
        .S(SS));
  FDSE \crc_q_reg[1] 
       (.C(sys_clk),
        .CE(CO),
        .D(\crc_q_reg[7]_0 [1]),
        .Q(p_1_in21_in),
        .S(SS));
  FDSE \crc_q_reg[20] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[20]),
        .Q(p_1_in59_in),
        .S(SS));
  FDSE \crc_q_reg[21] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[21]),
        .Q(p_1_in61_in),
        .S(SS));
  FDSE \crc_q_reg[22] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[22]),
        .Q(p_1_in63_in),
        .S(SS));
  FDSE \crc_q_reg[23] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[23]),
        .Q(p_1_in65_in),
        .S(SS));
  FDSE \crc_q_reg[24] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[24]),
        .Q(Q[2]),
        .S(SS));
  FDSE \crc_q_reg[25] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[25]),
        .Q(Q[3]),
        .S(SS));
  FDSE \crc_q_reg[26] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[26]),
        .Q(p_0_in3_in),
        .S(SS));
  FDSE \crc_q_reg[27] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[27]),
        .Q(Q[4]),
        .S(SS));
  FDSE \crc_q_reg[28] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[28]),
        .Q(Q[5]),
        .S(SS));
  FDSE \crc_q_reg[29] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[29]),
        .Q(Q[6]),
        .S(SS));
  FDSE \crc_q_reg[2] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[2]),
        .Q(p_1_in23_in),
        .S(SS));
  FDSE \crc_q_reg[30] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[30]),
        .Q(Q[7]),
        .S(SS));
  FDSE \crc_q_reg[31] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[31]),
        .Q(Q[8]),
        .S(SS));
  FDSE \crc_q_reg[3] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[3]),
        .Q(p_1_in25_in),
        .S(SS));
  FDSE \crc_q_reg[4] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[4]),
        .Q(p_1_in27_in),
        .S(SS));
  FDSE \crc_q_reg[5] 
       (.C(sys_clk),
        .CE(CO),
        .D(\crc_q_reg[7]_0 [2]),
        .Q(p_1_in29_in),
        .S(SS));
  FDSE \crc_q_reg[6] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[6]),
        .Q(p_1_in31_in),
        .S(SS));
  FDSE \crc_q_reg[7] 
       (.C(sys_clk),
        .CE(CO),
        .D(\crc_q_reg[7]_0 [3]),
        .Q(p_1_in33_in),
        .S(SS));
  FDSE \crc_q_reg[8] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[8]),
        .Q(p_1_in35_in),
        .S(SS));
  FDSE \crc_q_reg[9] 
       (.C(sys_clk),
        .CE(CO),
        .D(crc_d[9]),
        .Q(Q[0]),
        .S(SS));
  LUT6 #(
    .INIT(64'hFFFF96699669FFFF)) 
    \ctrl[11]_i_11 
       (.I0(\crc_q_reg[25]_0 ),
        .I1(\crc_q_reg[31]_0 ),
        .I2(DOBDO[4]),
        .I3(Q[4]),
        .I4(\crc_q_reg[13]_0 ),
        .I5(p_1_in65_in),
        .O(\ctrl[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBED7D7BE)) 
    \ctrl[11]_i_14 
       (.I0(p_1_in47_in),
        .I1(Q[2]),
        .I2(DOBDO[7]),
        .I3(\crc_q_reg[6]_0 ),
        .I4(p_1_in49_in),
        .I5(\ctrl[11]_i_18_n_0 ),
        .O(\ctrl[11]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hD77D7DD7)) 
    \ctrl[11]_i_15 
       (.I0(crc_d[25]),
        .I1(\crc_q[26]_i_2_n_0 ),
        .I2(DOBDO[6]),
        .I3(Q[3]),
        .I4(\crc_q_reg_n_0_[0] ),
        .O(\ctrl[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h69FFFF69FF6969FF)) 
    \ctrl[11]_i_16 
       (.I0(\crc_q[26]_i_2_n_0 ),
        .I1(\crc_q_reg[25]_0 ),
        .I2(p_1_in25_in),
        .I3(\ctrl[11]_i_19_n_0 ),
        .I4(\crc_q[12]_i_2_n_0 ),
        .I5(p_1_in23_in),
        .O(\ctrl[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF9696FF96FFFF96)) 
    \ctrl[11]_i_18 
       (.I0(DOBDO[2]),
        .I1(Q[6]),
        .I2(p_1_in45_in),
        .I3(Q[5]),
        .I4(DOBDO[3]),
        .I5(p_1_in43_in),
        .O(\ctrl[11]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \ctrl[11]_i_19 
       (.I0(Q[2]),
        .I1(DOBDO[7]),
        .I2(Q[4]),
        .I3(DOBDO[4]),
        .I4(Q[6]),
        .I5(DOBDO[2]),
        .O(\ctrl[11]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \ctrl[11]_i_2 
       (.I0(\ctrl[11]_i_4_n_0 ),
        .I1(\ctrl[11]_i_5_n_0 ),
        .I2(\ctrl[11]_i_6_n_0 ),
        .I3(\ctrl[11]_i_7_n_0 ),
        .I4(\ctrl[11]_i_8_n_0 ),
        .I5(CO),
        .O(D));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \ctrl[11]_i_3 
       (.I0(CO),
        .I1(\ctrl[11]_i_8_n_0 ),
        .I2(\ctrl[11]_i_7_n_0 ),
        .I3(\ctrl[11]_i_6_n_0 ),
        .I4(\ctrl[11]_i_9_n_0 ),
        .I5(data_2),
        .O(\delay_reg[3][8] ));
  LUT6 #(
    .INIT(64'h7FFDFD7FFFFFFFFF)) 
    \ctrl[11]_i_4 
       (.I0(crc_d[10]),
        .I1(p_1_in25_in),
        .I2(\crc_q_reg_n_0_[0] ),
        .I3(\crc_q_reg[25]_0 ),
        .I4(\crc_q[26]_i_2_n_0 ),
        .I5(crc_d[25]),
        .O(\ctrl[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFF7FFF7F7FFF)) 
    \ctrl[11]_i_5 
       (.I0(crc_d[14]),
        .I1(crc_d[15]),
        .I2(crc_d[12]),
        .I3(p_1_in51_in),
        .I4(\crc_q_reg[25]_0 ),
        .I5(\crc_q_reg[31]_0 ),
        .O(\ctrl[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \ctrl[11]_i_6 
       (.I0(\crc_q_reg[7]_0 [2]),
        .I1(crc_d[4]),
        .I2(crc_d[26]),
        .I3(crc_d[6]),
        .I4(\ctrl_reg[11] ),
        .I5(\ctrl[11]_i_11_n_0 ),
        .O(\ctrl[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl[11]_i_7 
       (.I0(crc_d[29]),
        .I1(crc_d[28]),
        .I2(\ctrl_reg[11]_0 ),
        .I3(crc_d[9]),
        .I4(crc_d[13]),
        .I5(\ctrl_reg[11]_1 ),
        .O(\ctrl[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \ctrl[11]_i_8 
       (.I0(\ctrl[11]_i_14_n_0 ),
        .I1(crc_d[30]),
        .I2(crc_d[18]),
        .I3(crc_d[19]),
        .I4(crc_d[16]),
        .O(\ctrl[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \ctrl[11]_i_9 
       (.I0(crc_d[24]),
        .I1(crc_d[12]),
        .I2(crc_d[15]),
        .I3(crc_d[14]),
        .I4(\ctrl[11]_i_15_n_0 ),
        .I5(\ctrl[11]_i_16_n_0 ),
        .O(\ctrl[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ctrl_vld_i_1
       (.I0(\delay_reg[3][8] ),
        .I1(sys_rst_n),
        .I2(CO),
        .I3(\byte_cnt_reg[0] ),
        .O(sys_rst_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_eth_rx_wrapper_0_0,eth_rx_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "eth_rx_wrapper,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (phy_clk,
    phy_rst_n,
    phy_data_in,
    phy_data_in_vld,
    sys_clk,
    sys_rst_n,
    data_drop,
    data_drop_vld,
    data_broadcast,
    data_broadcast_vld,
    data_for_me,
    data_for_me_vld,
    data_not_for_me,
    data_not_for_me_vld);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 phy_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_clk, ASSOCIATED_RESET phy_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk, INSERT_VIP 0" *) input phy_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 phy_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input phy_rst_n;
  input [8:0]phy_data_in;
  input phy_data_in_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input sys_rst_n;
  output [7:0]data_drop;
  output data_drop_vld;
  output [7:0]data_broadcast;
  output data_broadcast_vld;
  output [7:0]data_for_me;
  output data_for_me_vld;
  output [7:0]data_not_for_me;
  output data_not_for_me_vld;

  wire [7:0]data_broadcast;
  wire data_broadcast_vld;
  wire [7:0]data_drop;
  wire data_drop_vld;
  wire [7:0]data_for_me;
  wire data_for_me_vld;
  wire [7:0]data_not_for_me;
  wire data_not_for_me_vld;
  wire phy_clk;
  wire [8:0]phy_data_in;
  wire phy_data_in_vld;
  wire phy_rst_n;
  wire sys_clk;
  wire sys_rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_wrapper inst
       (.data_broadcast(data_broadcast),
        .data_broadcast_vld(data_broadcast_vld),
        .data_drop(data_drop),
        .data_drop_vld(data_drop_vld),
        .data_for_me(data_for_me),
        .data_for_me_vld(data_for_me_vld),
        .data_not_for_me(data_not_for_me),
        .data_not_for_me_vld(data_not_for_me_vld),
        .phy_clk(phy_clk),
        .phy_data_in(phy_data_in),
        .phy_data_in_vld(phy_data_in_vld),
        .phy_rst_n(phy_rst_n),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_decoder
   (data_drop_vld,
    data_not_for_me_vld,
    data_broadcast_vld,
    data_for_me_vld,
    data_drop,
    data_not_for_me,
    data_broadcast,
    data_for_me,
    ctrl_4_rdy,
    CO,
    DOBDO,
    Q,
    sys_rst_n,
    ctrl_4_vld,
    sys_clk);
  output data_drop_vld;
  output data_not_for_me_vld;
  output data_broadcast_vld;
  output data_for_me_vld;
  output [7:0]data_drop;
  output [7:0]data_not_for_me;
  output [7:0]data_broadcast;
  output [7:0]data_for_me;
  input ctrl_4_rdy;
  input [0:0]CO;
  input [7:0]DOBDO;
  input [48:0]Q;
  input sys_rst_n;
  input ctrl_4_vld;
  input sys_clk;

  wire [0:0]CO;
  wire [7:0]DOBDO;
  wire [48:0]Q;
  wire ctrl_4_rdy;
  wire ctrl_4_vld;
  wire [1:0]ctrl_sel;
  wire \ctrl_sel[0]_i_10_n_0 ;
  wire \ctrl_sel[0]_i_1_n_0 ;
  wire \ctrl_sel[0]_i_2_n_0 ;
  wire \ctrl_sel[0]_i_3_n_0 ;
  wire \ctrl_sel[0]_i_4_n_0 ;
  wire \ctrl_sel[0]_i_5_n_0 ;
  wire \ctrl_sel[0]_i_6_n_0 ;
  wire \ctrl_sel[0]_i_7_n_0 ;
  wire \ctrl_sel[0]_i_8_n_0 ;
  wire \ctrl_sel[0]_i_9_n_0 ;
  wire \ctrl_sel[1]_i_10_n_0 ;
  wire \ctrl_sel[1]_i_11_n_0 ;
  wire \ctrl_sel[1]_i_1_n_0 ;
  wire \ctrl_sel[1]_i_2_n_0 ;
  wire \ctrl_sel[1]_i_3_n_0 ;
  wire \ctrl_sel[1]_i_4_n_0 ;
  wire \ctrl_sel[1]_i_5_n_0 ;
  wire \ctrl_sel[1]_i_6_n_0 ;
  wire \ctrl_sel[1]_i_7_n_0 ;
  wire \ctrl_sel[1]_i_8_n_0 ;
  wire \ctrl_sel[1]_i_9_n_0 ;
  wire [7:0]data_broadcast;
  wire data_broadcast_vld;
  wire [7:0]data_drop;
  wire data_drop_vld;
  wire [7:0]data_for_me;
  wire data_for_me_vld;
  wire [7:0]data_not_for_me;
  wire data_not_for_me_vld;
  wire sys_clk;
  wire sys_rst_n;

  LUT6 #(
    .INIT(64'h0000AA00FC00AA00)) 
    \ctrl_sel[0]_i_1 
       (.I0(ctrl_sel[0]),
        .I1(\ctrl_sel[0]_i_2_n_0 ),
        .I2(\ctrl_sel[0]_i_3_n_0 ),
        .I3(sys_rst_n),
        .I4(ctrl_4_vld),
        .I5(Q[0]),
        .O(\ctrl_sel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \ctrl_sel[0]_i_10 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\ctrl_sel[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_sel[0]_i_2 
       (.I0(\ctrl_sel[0]_i_4_n_0 ),
        .I1(\ctrl_sel[0]_i_5_n_0 ),
        .I2(\ctrl_sel[0]_i_6_n_0 ),
        .I3(\ctrl_sel[0]_i_7_n_0 ),
        .I4(\ctrl_sel[0]_i_8_n_0 ),
        .I5(\ctrl_sel[0]_i_9_n_0 ),
        .O(\ctrl_sel[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \ctrl_sel[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\ctrl_sel[1]_i_10_n_0 ),
        .I5(\ctrl_sel[0]_i_10_n_0 ),
        .O(\ctrl_sel[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \ctrl_sel[0]_i_4 
       (.I0(Q[41]),
        .I1(Q[42]),
        .I2(Q[39]),
        .I3(Q[40]),
        .I4(Q[37]),
        .I5(Q[38]),
        .O(\ctrl_sel[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_sel[0]_i_5 
       (.I0(Q[47]),
        .I1(Q[48]),
        .I2(Q[45]),
        .I3(Q[46]),
        .I4(Q[44]),
        .I5(Q[43]),
        .O(\ctrl_sel[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \ctrl_sel[0]_i_6 
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(Q[27]),
        .I3(Q[28]),
        .I4(Q[26]),
        .I5(Q[25]),
        .O(\ctrl_sel[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \ctrl_sel[0]_i_7 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(Q[33]),
        .I3(Q[34]),
        .I4(Q[32]),
        .I5(Q[31]),
        .O(\ctrl_sel[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_sel[0]_i_8 
       (.I0(Q[23]),
        .I1(Q[24]),
        .I2(Q[21]),
        .I3(Q[22]),
        .I4(Q[20]),
        .I5(Q[19]),
        .O(\ctrl_sel[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \ctrl_sel[0]_i_9 
       (.I0(Q[17]),
        .I1(Q[18]),
        .I2(Q[16]),
        .I3(Q[15]),
        .I4(Q[13]),
        .I5(Q[14]),
        .O(\ctrl_sel[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA00FC00AA00)) 
    \ctrl_sel[1]_i_1 
       (.I0(ctrl_sel[1]),
        .I1(\ctrl_sel[1]_i_2_n_0 ),
        .I2(\ctrl_sel[1]_i_3_n_0 ),
        .I3(sys_rst_n),
        .I4(ctrl_4_vld),
        .I5(Q[0]),
        .O(\ctrl_sel[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ctrl_sel[1]_i_10 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\ctrl_sel[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_11 
       (.I0(Q[11]),
        .I1(Q[12]),
        .I2(Q[9]),
        .I3(Q[10]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\ctrl_sel[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctrl_sel[1]_i_2 
       (.I0(\ctrl_sel[1]_i_4_n_0 ),
        .I1(\ctrl_sel[1]_i_5_n_0 ),
        .I2(\ctrl_sel[1]_i_6_n_0 ),
        .I3(\ctrl_sel[1]_i_7_n_0 ),
        .I4(\ctrl_sel[1]_i_8_n_0 ),
        .I5(\ctrl_sel[1]_i_9_n_0 ),
        .O(\ctrl_sel[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \ctrl_sel[1]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\ctrl_sel[1]_i_10_n_0 ),
        .I5(\ctrl_sel[1]_i_11_n_0 ),
        .O(\ctrl_sel[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_4 
       (.I0(Q[41]),
        .I1(Q[42]),
        .I2(Q[39]),
        .I3(Q[40]),
        .I4(Q[38]),
        .I5(Q[37]),
        .O(\ctrl_sel[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_5 
       (.I0(Q[47]),
        .I1(Q[48]),
        .I2(Q[45]),
        .I3(Q[46]),
        .I4(Q[44]),
        .I5(Q[43]),
        .O(\ctrl_sel[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_6 
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(Q[27]),
        .I3(Q[28]),
        .I4(Q[26]),
        .I5(Q[25]),
        .O(\ctrl_sel[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_7 
       (.I0(Q[35]),
        .I1(Q[36]),
        .I2(Q[33]),
        .I3(Q[34]),
        .I4(Q[32]),
        .I5(Q[31]),
        .O(\ctrl_sel[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_8 
       (.I0(Q[23]),
        .I1(Q[24]),
        .I2(Q[21]),
        .I3(Q[22]),
        .I4(Q[20]),
        .I5(Q[19]),
        .O(\ctrl_sel[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctrl_sel[1]_i_9 
       (.I0(Q[17]),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[16]),
        .I4(Q[14]),
        .I5(Q[13]),
        .O(\ctrl_sel[1]_i_9_n_0 ));
  FDRE \ctrl_sel_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\ctrl_sel[0]_i_1_n_0 ),
        .Q(ctrl_sel[0]),
        .R(1'b0));
  FDRE \ctrl_sel_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\ctrl_sel[1]_i_1_n_0 ),
        .Q(ctrl_sel[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[0]_INST_0 
       (.I0(DOBDO[0]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[1]_INST_0 
       (.I0(DOBDO[1]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[2]_INST_0 
       (.I0(DOBDO[2]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[3]_INST_0 
       (.I0(DOBDO[3]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[4]_INST_0 
       (.I0(DOBDO[4]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[5]_INST_0 
       (.I0(DOBDO[5]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[6]_INST_0 
       (.I0(DOBDO[6]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_broadcast[7]_INST_0 
       (.I0(DOBDO[7]),
        .I1(ctrl_sel[0]),
        .I2(ctrl_sel[1]),
        .O(data_broadcast[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    data_broadcast_vld_INST_0
       (.I0(ctrl_4_rdy),
        .I1(CO),
        .I2(ctrl_sel[0]),
        .I3(ctrl_sel[1]),
        .O(data_broadcast_vld));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[0]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[0]),
        .I2(ctrl_sel[1]),
        .O(data_drop[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[1]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[1]),
        .I2(ctrl_sel[1]),
        .O(data_drop[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[2]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[2]),
        .I2(ctrl_sel[1]),
        .O(data_drop[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[3]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[3]),
        .I2(ctrl_sel[1]),
        .O(data_drop[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[4]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[4]),
        .I2(ctrl_sel[1]),
        .O(data_drop[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[5]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[5]),
        .I2(ctrl_sel[1]),
        .O(data_drop[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[6]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[6]),
        .I2(ctrl_sel[1]),
        .O(data_drop[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_drop[7]_INST_0 
       (.I0(ctrl_sel[0]),
        .I1(DOBDO[7]),
        .I2(ctrl_sel[1]),
        .O(data_drop[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    data_drop_vld_INST_0
       (.I0(ctrl_sel[0]),
        .I1(ctrl_4_rdy),
        .I2(CO),
        .I3(ctrl_sel[1]),
        .O(data_drop_vld));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[0]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[0]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[1]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[1]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[2]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[2]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[3]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[3]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[4]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[4]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[5]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[5]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[6]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[6]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_for_me[7]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[7]),
        .I2(ctrl_sel[0]),
        .O(data_for_me[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    data_for_me_vld_INST_0
       (.I0(ctrl_sel[1]),
        .I1(ctrl_4_rdy),
        .I2(CO),
        .I3(ctrl_sel[0]),
        .O(data_for_me_vld));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[0]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[0]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[1]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[1]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[2]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[2]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[3]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[3]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[4]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[4]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[5]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[5]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[6]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[6]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_not_for_me[7]_INST_0 
       (.I0(ctrl_sel[1]),
        .I1(DOBDO[7]),
        .I2(ctrl_sel[0]),
        .O(data_not_for_me[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    data_not_for_me_vld_INST_0
       (.I0(ctrl_sel[1]),
        .I1(ctrl_4_rdy),
        .I2(CO),
        .I3(ctrl_sel[0]),
        .O(data_not_for_me_vld));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_fsm
   (sys_rst_n_0,
    control_reg_r_1_0,
    state_reg_0,
    ctrl_3_vld,
    wr_en,
    Q,
    CO,
    sys_clk,
    data_2,
    ctrl_vld_reg_0,
    \rd_data_reg[1] ,
    sys_rst_n,
    state_reg_1,
    E,
    D,
    SR);
  output sys_rst_n_0;
  output control_reg_r_1_0;
  output state_reg_0;
  output ctrl_3_vld;
  output wr_en;
  output [63:0]Q;
  input [0:0]CO;
  input sys_clk;
  input [8:0]data_2;
  input ctrl_vld_reg_0;
  input \rd_data_reg[1] ;
  input sys_rst_n;
  input state_reg_1;
  input [0:0]E;
  input [0:0]D;
  input [0:0]SR;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire [0:0]SR;
  wire [10:4]byte_cnt0;
  wire \byte_cnt[10]_i_4_n_0 ;
  wire \byte_cnt[10]_i_5_n_0 ;
  wire \byte_cnt[10]_i_6_n_0 ;
  wire \byte_cnt[8]_i_2_n_0 ;
  wire [10:0]byte_cnt_reg;
  wire \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ;
  wire \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ;
  wire \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ;
  wire \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ;
  wire \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[44]_inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[45]_inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[46]_inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[47]_inst_rx_fsm_control_reg_r_4_n_0 ;
  wire \control_reg[48]_inst_rx_fsm_control_reg_r_5_n_0 ;
  wire \control_reg[49]_inst_rx_fsm_control_reg_r_5_n_0 ;
  wire \control_reg[50]_inst_rx_fsm_control_reg_r_5_n_0 ;
  wire \control_reg[51]_inst_rx_fsm_control_reg_r_5_n_0 ;
  wire control_reg_gate__0_n_0;
  wire control_reg_gate__1_n_0;
  wire control_reg_gate__2_n_0;
  wire control_reg_gate__3_n_0;
  wire control_reg_gate__4_n_0;
  wire control_reg_gate__5_n_0;
  wire control_reg_gate__6_n_0;
  wire control_reg_gate_n_0;
  wire control_reg_r_0_n_0;
  wire control_reg_r_1_0;
  wire control_reg_r_2_n_0;
  wire control_reg_r_3_n_0;
  wire control_reg_r_4_n_0;
  wire control_reg_r_5_n_0;
  wire control_reg_r_n_0;
  wire \ctrl[123]_i_1_n_0 ;
  wire \ctrl[123]_i_2_n_0 ;
  wire \ctrl[123]_i_3_n_0 ;
  wire \ctrl[123]_i_4_n_0 ;
  wire ctrl_3_vld;
  wire ctrl_vld_reg_0;
  wire [8:0]data_2;
  wire [10:0]p_0_in;
  wire [123:72]p_2_in;
  wire \rd_data_reg[1] ;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire state_reg_0;
  wire state_reg_1;
  wire sys_clk;
  wire sys_rst_n;
  wire sys_rst_n_0;
  wire wr_en;

  LUT2 #(
    .INIT(4'h8)) 
    bram_reg_0_3_0_5_i_1
       (.I0(ctrl_3_vld),
        .I1(\rd_data_reg[1] ),
        .O(wr_en));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \byte_cnt[0]_i_1 
       (.I0(state_reg_0),
        .I1(\byte_cnt[10]_i_4_n_0 ),
        .I2(byte_cnt_reg[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hC8)) 
    \byte_cnt[10]_i_2 
       (.I0(state_reg_0),
        .I1(byte_cnt0[10]),
        .I2(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \byte_cnt[10]_i_3 
       (.I0(byte_cnt_reg[8]),
        .I1(byte_cnt_reg[6]),
        .I2(\byte_cnt[8]_i_2_n_0 ),
        .I3(byte_cnt_reg[7]),
        .I4(byte_cnt_reg[9]),
        .I5(byte_cnt_reg[10]),
        .O(byte_cnt0[10]));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \byte_cnt[10]_i_4 
       (.I0(byte_cnt_reg[0]),
        .I1(byte_cnt_reg[2]),
        .I2(byte_cnt_reg[3]),
        .I3(\byte_cnt[10]_i_5_n_0 ),
        .I4(\byte_cnt[10]_i_6_n_0 ),
        .O(\byte_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_cnt[10]_i_5 
       (.I0(byte_cnt_reg[8]),
        .I1(byte_cnt_reg[7]),
        .I2(byte_cnt_reg[10]),
        .I3(byte_cnt_reg[1]),
        .O(\byte_cnt[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byte_cnt[10]_i_6 
       (.I0(byte_cnt_reg[5]),
        .I1(byte_cnt_reg[4]),
        .I2(byte_cnt_reg[6]),
        .I3(byte_cnt_reg[9]),
        .O(\byte_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h3C28)) 
    \byte_cnt[1]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt_reg[1]),
        .I2(byte_cnt_reg[0]),
        .I3(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h3CCC2888)) 
    \byte_cnt[2]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt_reg[2]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[0]),
        .I4(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h3CCCCCCC28888888)) 
    \byte_cnt[3]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt_reg[3]),
        .I2(byte_cnt_reg[2]),
        .I3(byte_cnt_reg[0]),
        .I4(byte_cnt_reg[1]),
        .I5(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \byte_cnt[4]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt0[4]),
        .I2(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \byte_cnt[4]_i_2 
       (.I0(byte_cnt_reg[2]),
        .I1(byte_cnt_reg[0]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[3]),
        .I4(byte_cnt_reg[4]),
        .O(byte_cnt0[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \byte_cnt[5]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt0[5]),
        .I2(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \byte_cnt[5]_i_2 
       (.I0(byte_cnt_reg[3]),
        .I1(byte_cnt_reg[1]),
        .I2(byte_cnt_reg[0]),
        .I3(byte_cnt_reg[2]),
        .I4(byte_cnt_reg[4]),
        .I5(byte_cnt_reg[5]),
        .O(byte_cnt0[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h3C28)) 
    \byte_cnt[6]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt_reg[6]),
        .I2(\byte_cnt[8]_i_2_n_0 ),
        .I3(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h3CCC2888)) 
    \byte_cnt[7]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt_reg[7]),
        .I2(byte_cnt_reg[6]),
        .I3(\byte_cnt[8]_i_2_n_0 ),
        .I4(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h3CCCCCCC28888888)) 
    \byte_cnt[8]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt_reg[8]),
        .I2(byte_cnt_reg[7]),
        .I3(\byte_cnt[8]_i_2_n_0 ),
        .I4(byte_cnt_reg[6]),
        .I5(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \byte_cnt[8]_i_2 
       (.I0(byte_cnt_reg[5]),
        .I1(byte_cnt_reg[3]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[0]),
        .I4(byte_cnt_reg[2]),
        .I5(byte_cnt_reg[4]),
        .O(\byte_cnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \byte_cnt[9]_i_1 
       (.I0(state_reg_0),
        .I1(byte_cnt0[9]),
        .I2(\byte_cnt[10]_i_4_n_0 ),
        .O(p_0_in[9]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \byte_cnt[9]_i_2 
       (.I0(byte_cnt_reg[7]),
        .I1(\byte_cnt[8]_i_2_n_0 ),
        .I2(byte_cnt_reg[6]),
        .I3(byte_cnt_reg[8]),
        .I4(byte_cnt_reg[9]),
        .O(byte_cnt0[9]));
  FDRE \byte_cnt_reg[0] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[0]),
        .Q(byte_cnt_reg[0]),
        .R(SR));
  FDRE \byte_cnt_reg[10] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[10]),
        .Q(byte_cnt_reg[10]),
        .R(SR));
  FDRE \byte_cnt_reg[1] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[1]),
        .Q(byte_cnt_reg[1]),
        .R(SR));
  FDRE \byte_cnt_reg[2] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[2]),
        .Q(byte_cnt_reg[2]),
        .R(SR));
  FDRE \byte_cnt_reg[3] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[3]),
        .Q(byte_cnt_reg[3]),
        .R(SR));
  FDRE \byte_cnt_reg[4] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[4]),
        .Q(byte_cnt_reg[4]),
        .R(SR));
  FDRE \byte_cnt_reg[5] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[5]),
        .Q(byte_cnt_reg[5]),
        .R(SR));
  FDRE \byte_cnt_reg[6] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[6]),
        .Q(byte_cnt_reg[6]),
        .R(SR));
  FDRE \byte_cnt_reg[7] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[7]),
        .Q(byte_cnt_reg[7]),
        .R(SR));
  FDRE \byte_cnt_reg[8] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[8]),
        .Q(byte_cnt_reg[8]),
        .R(SR));
  FDRE \byte_cnt_reg[9] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_0_in[9]),
        .Q(byte_cnt_reg[9]),
        .R(SR));
  FDRE \control_reg[100] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[112]),
        .Q(p_2_in[120]),
        .R(sys_rst_n_0));
  FDRE \control_reg[101] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[113]),
        .Q(p_2_in[121]),
        .R(sys_rst_n_0));
  FDRE \control_reg[102] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[114]),
        .Q(p_2_in[122]),
        .R(sys_rst_n_0));
  FDRE \control_reg[103] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[115]),
        .Q(p_2_in[123]),
        .R(sys_rst_n_0));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3 " *) 
  SRL16E \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[4]),
        .Q(\control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3 " *) 
  SRL16E \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[5]),
        .Q(\control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3 " *) 
  SRL16E \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[6]),
        .Q(\control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3 " *) 
  SRL16E \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[7]),
        .Q(\control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4 " *) 
  SRL16E \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[0]),
        .Q(\control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4 " *) 
  SRL16E \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[1]),
        .Q(\control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4 " *) 
  SRL16E \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[2]),
        .Q(\control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ));
  (* srl_bus_name = "\inst/rx_fsm/control_reg " *) 
  (* srl_name = "\inst/rx_fsm/control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4 " *) 
  SRL16E \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(CO),
        .CLK(sys_clk),
        .D(data_2[3]),
        .Q(\control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ));
  FDRE \control_reg[44]_inst_rx_fsm_control_reg_r_4 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ),
        .Q(\control_reg[44]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \control_reg[45]_inst_rx_fsm_control_reg_r_4 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ),
        .Q(\control_reg[45]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \control_reg[46]_inst_rx_fsm_control_reg_r_4 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ),
        .Q(\control_reg[46]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \control_reg[47]_inst_rx_fsm_control_reg_r_4 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3_n_0 ),
        .Q(\control_reg[47]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \control_reg[48]_inst_rx_fsm_control_reg_r_5 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ),
        .Q(\control_reg[48]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \control_reg[49]_inst_rx_fsm_control_reg_r_5 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ),
        .Q(\control_reg[49]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \control_reg[50]_inst_rx_fsm_control_reg_r_5 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ),
        .Q(\control_reg[50]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \control_reg[51]_inst_rx_fsm_control_reg_r_5 
       (.C(sys_clk),
        .CE(CO),
        .D(\control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4_n_0 ),
        .Q(\control_reg[51]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE \control_reg[52] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__6_n_0),
        .Q(p_2_in[72]),
        .R(sys_rst_n_0));
  FDRE \control_reg[53] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__5_n_0),
        .Q(p_2_in[73]),
        .R(sys_rst_n_0));
  FDRE \control_reg[54] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__4_n_0),
        .Q(p_2_in[74]),
        .R(sys_rst_n_0));
  FDRE \control_reg[55] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__3_n_0),
        .Q(p_2_in[75]),
        .R(sys_rst_n_0));
  FDRE \control_reg[56] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__2_n_0),
        .Q(p_2_in[76]),
        .R(sys_rst_n_0));
  FDRE \control_reg[57] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__1_n_0),
        .Q(p_2_in[77]),
        .R(sys_rst_n_0));
  FDRE \control_reg[58] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate__0_n_0),
        .Q(p_2_in[78]),
        .R(sys_rst_n_0));
  FDRE \control_reg[59] 
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_gate_n_0),
        .Q(p_2_in[79]),
        .R(sys_rst_n_0));
  FDRE \control_reg[60] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[72]),
        .Q(p_2_in[80]),
        .R(sys_rst_n_0));
  FDRE \control_reg[61] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[73]),
        .Q(p_2_in[81]),
        .R(sys_rst_n_0));
  FDRE \control_reg[62] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[74]),
        .Q(p_2_in[82]),
        .R(sys_rst_n_0));
  FDRE \control_reg[63] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[75]),
        .Q(p_2_in[83]),
        .R(sys_rst_n_0));
  FDRE \control_reg[64] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[76]),
        .Q(p_2_in[84]),
        .R(sys_rst_n_0));
  FDRE \control_reg[65] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[77]),
        .Q(p_2_in[85]),
        .R(sys_rst_n_0));
  FDRE \control_reg[66] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[78]),
        .Q(p_2_in[86]),
        .R(sys_rst_n_0));
  FDRE \control_reg[67] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[79]),
        .Q(p_2_in[87]),
        .R(sys_rst_n_0));
  FDRE \control_reg[68] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[80]),
        .Q(p_2_in[88]),
        .R(sys_rst_n_0));
  FDRE \control_reg[69] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[81]),
        .Q(p_2_in[89]),
        .R(sys_rst_n_0));
  FDRE \control_reg[70] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[82]),
        .Q(p_2_in[90]),
        .R(sys_rst_n_0));
  FDRE \control_reg[71] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[83]),
        .Q(p_2_in[91]),
        .R(sys_rst_n_0));
  FDRE \control_reg[72] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[84]),
        .Q(p_2_in[92]),
        .R(sys_rst_n_0));
  FDRE \control_reg[73] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[85]),
        .Q(p_2_in[93]),
        .R(sys_rst_n_0));
  FDRE \control_reg[74] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[86]),
        .Q(p_2_in[94]),
        .R(sys_rst_n_0));
  FDRE \control_reg[75] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[87]),
        .Q(p_2_in[95]),
        .R(sys_rst_n_0));
  FDRE \control_reg[76] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[88]),
        .Q(p_2_in[96]),
        .R(sys_rst_n_0));
  FDRE \control_reg[77] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[89]),
        .Q(p_2_in[97]),
        .R(sys_rst_n_0));
  FDRE \control_reg[78] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[90]),
        .Q(p_2_in[98]),
        .R(sys_rst_n_0));
  FDRE \control_reg[79] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[91]),
        .Q(p_2_in[99]),
        .R(sys_rst_n_0));
  FDRE \control_reg[80] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[92]),
        .Q(p_2_in[100]),
        .R(sys_rst_n_0));
  FDRE \control_reg[81] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[93]),
        .Q(p_2_in[101]),
        .R(sys_rst_n_0));
  FDRE \control_reg[82] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[94]),
        .Q(p_2_in[102]),
        .R(sys_rst_n_0));
  FDRE \control_reg[83] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[95]),
        .Q(p_2_in[103]),
        .R(sys_rst_n_0));
  FDRE \control_reg[84] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[96]),
        .Q(p_2_in[104]),
        .R(sys_rst_n_0));
  FDRE \control_reg[85] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[97]),
        .Q(p_2_in[105]),
        .R(sys_rst_n_0));
  FDRE \control_reg[86] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[98]),
        .Q(p_2_in[106]),
        .R(sys_rst_n_0));
  FDRE \control_reg[87] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[99]),
        .Q(p_2_in[107]),
        .R(sys_rst_n_0));
  FDRE \control_reg[88] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[100]),
        .Q(p_2_in[108]),
        .R(sys_rst_n_0));
  FDRE \control_reg[89] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[101]),
        .Q(p_2_in[109]),
        .R(sys_rst_n_0));
  FDRE \control_reg[90] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[102]),
        .Q(p_2_in[110]),
        .R(sys_rst_n_0));
  FDRE \control_reg[91] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[103]),
        .Q(p_2_in[111]),
        .R(sys_rst_n_0));
  FDRE \control_reg[92] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[104]),
        .Q(p_2_in[112]),
        .R(sys_rst_n_0));
  FDRE \control_reg[93] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[105]),
        .Q(p_2_in[113]),
        .R(sys_rst_n_0));
  FDRE \control_reg[94] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[106]),
        .Q(p_2_in[114]),
        .R(sys_rst_n_0));
  FDRE \control_reg[95] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[107]),
        .Q(p_2_in[115]),
        .R(sys_rst_n_0));
  FDRE \control_reg[96] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[108]),
        .Q(p_2_in[116]),
        .R(sys_rst_n_0));
  FDRE \control_reg[97] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[109]),
        .Q(p_2_in[117]),
        .R(sys_rst_n_0));
  FDRE \control_reg[98] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[110]),
        .Q(p_2_in[118]),
        .R(sys_rst_n_0));
  FDRE \control_reg[99] 
       (.C(sys_clk),
        .CE(CO),
        .D(p_2_in[111]),
        .Q(p_2_in[119]),
        .R(sys_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate
       (.I0(\control_reg[51]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .I1(control_reg_r_5_n_0),
        .O(control_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__0
       (.I0(\control_reg[50]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .I1(control_reg_r_5_n_0),
        .O(control_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__1
       (.I0(\control_reg[49]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .I1(control_reg_r_5_n_0),
        .O(control_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__2
       (.I0(\control_reg[48]_inst_rx_fsm_control_reg_r_5_n_0 ),
        .I1(control_reg_r_5_n_0),
        .O(control_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__3
       (.I0(\control_reg[47]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .I1(control_reg_r_4_n_0),
        .O(control_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__4
       (.I0(\control_reg[46]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .I1(control_reg_r_4_n_0),
        .O(control_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__5
       (.I0(\control_reg[45]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .I1(control_reg_r_4_n_0),
        .O(control_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    control_reg_gate__6
       (.I0(\control_reg[44]_inst_rx_fsm_control_reg_r_4_n_0 ),
        .I1(control_reg_r_4_n_0),
        .O(control_reg_gate__6_n_0));
  FDRE control_reg_r
       (.C(sys_clk),
        .CE(CO),
        .D(1'b1),
        .Q(control_reg_r_n_0),
        .R(sys_rst_n_0));
  FDRE control_reg_r_0
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_r_n_0),
        .Q(control_reg_r_0_n_0),
        .R(sys_rst_n_0));
  FDRE control_reg_r_1
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_r_0_n_0),
        .Q(control_reg_r_1_0),
        .R(sys_rst_n_0));
  FDRE control_reg_r_2
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_r_1_0),
        .Q(control_reg_r_2_n_0),
        .R(sys_rst_n_0));
  FDRE control_reg_r_3
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_r_2_n_0),
        .Q(control_reg_r_3_n_0),
        .R(sys_rst_n_0));
  FDRE control_reg_r_4
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_r_3_n_0),
        .Q(control_reg_r_4_n_0),
        .R(sys_rst_n_0));
  FDRE control_reg_r_5
       (.C(sys_clk),
        .CE(CO),
        .D(control_reg_r_4_n_0),
        .Q(control_reg_r_5_n_0),
        .R(sys_rst_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ctrl[123]_i_1 
       (.I0(CO),
        .I1(state_reg_0),
        .I2(\ctrl[123]_i_2_n_0 ),
        .I3(byte_cnt_reg[9]),
        .I4(byte_cnt_reg[8]),
        .I5(\ctrl[123]_i_3_n_0 ),
        .O(\ctrl[123]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl[123]_i_2 
       (.I0(byte_cnt_reg[1]),
        .I1(byte_cnt_reg[10]),
        .O(\ctrl[123]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl[123]_i_3 
       (.I0(byte_cnt_reg[5]),
        .I1(byte_cnt_reg[4]),
        .I2(byte_cnt_reg[7]),
        .I3(byte_cnt_reg[6]),
        .I4(\ctrl[123]_i_4_n_0 ),
        .O(\ctrl[123]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ctrl[123]_i_4 
       (.I0(byte_cnt_reg[2]),
        .I1(data_2[8]),
        .I2(byte_cnt_reg[0]),
        .I3(byte_cnt_reg[3]),
        .O(\ctrl[123]_i_4_n_0 ));
  FDRE \ctrl_reg[0] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[0]),
        .Q(Q[0]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[100] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[100]),
        .Q(Q[40]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[101] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[101]),
        .Q(Q[41]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[102] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[102]),
        .Q(Q[42]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[103] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[103]),
        .Q(Q[43]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[104] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[104]),
        .Q(Q[44]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[105] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[105]),
        .Q(Q[45]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[106] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[106]),
        .Q(Q[46]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[107] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[107]),
        .Q(Q[47]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[108] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[108]),
        .Q(Q[48]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[109] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[109]),
        .Q(Q[49]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[10] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[10]),
        .Q(Q[10]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[110] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[110]),
        .Q(Q[50]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[111] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[111]),
        .Q(Q[51]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[112] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[112]),
        .Q(Q[52]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[113] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[113]),
        .Q(Q[53]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[114] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[114]),
        .Q(Q[54]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[115] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[115]),
        .Q(Q[55]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[116] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[116]),
        .Q(Q[56]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[117] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[117]),
        .Q(Q[57]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[118] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[118]),
        .Q(Q[58]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[119] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[119]),
        .Q(Q[59]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[11] 
       (.C(sys_clk),
        .CE(E),
        .D(D),
        .Q(Q[11]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[120] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[120]),
        .Q(Q[60]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[121] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[121]),
        .Q(Q[61]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[122] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[122]),
        .Q(Q[62]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[123] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[123]),
        .Q(Q[63]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[1] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[1]),
        .Q(Q[1]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[2] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[2]),
        .Q(Q[2]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[3] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[3]),
        .Q(Q[3]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[4] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[4]),
        .Q(Q[4]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[5] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[5]),
        .Q(Q[5]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[6] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[6]),
        .Q(Q[6]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[72] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[72]),
        .Q(Q[12]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[73] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[73]),
        .Q(Q[13]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[74] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[74]),
        .Q(Q[14]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[75] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[75]),
        .Q(Q[15]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[76] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[76]),
        .Q(Q[16]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[77] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[77]),
        .Q(Q[17]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[78] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[78]),
        .Q(Q[18]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[79] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[79]),
        .Q(Q[19]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[7] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[7]),
        .Q(Q[7]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[80] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[80]),
        .Q(Q[20]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[81] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[81]),
        .Q(Q[21]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[82] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[82]),
        .Q(Q[22]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[83] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[83]),
        .Q(Q[23]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[84] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[84]),
        .Q(Q[24]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[85] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[85]),
        .Q(Q[25]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[86] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[86]),
        .Q(Q[26]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[87] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[87]),
        .Q(Q[27]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[88] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[88]),
        .Q(Q[28]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[89] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[89]),
        .Q(Q[29]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[8] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[8]),
        .Q(Q[8]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[90] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[90]),
        .Q(Q[30]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[91] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[91]),
        .Q(Q[31]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[92] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[92]),
        .Q(Q[32]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[93] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[93]),
        .Q(Q[33]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[94] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[94]),
        .Q(Q[34]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[95] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[95]),
        .Q(Q[35]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[96] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[96]),
        .Q(Q[36]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[97] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[97]),
        .Q(Q[37]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[98] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[98]),
        .Q(Q[38]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[99] 
       (.C(sys_clk),
        .CE(\ctrl[123]_i_1_n_0 ),
        .D(p_2_in[99]),
        .Q(Q[39]),
        .R(sys_rst_n_0));
  FDRE \ctrl_reg[9] 
       (.C(sys_clk),
        .CE(E),
        .D(byte_cnt_reg[9]),
        .Q(Q[9]),
        .R(sys_rst_n_0));
  FDRE ctrl_vld_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(ctrl_vld_reg_0),
        .Q(ctrl_3_vld),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gry_cnt_reg[10]_i_1 
       (.I0(sys_rst_n),
        .O(sys_rst_n_0));
  LUT5 #(
    .INIT(32'h55FFC000)) 
    state_i_1
       (.I0(state_reg_1),
        .I1(data_2[8]),
        .I2(state_i_2_n_0),
        .I3(CO),
        .I4(state_reg_0),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    state_i_2
       (.I0(byte_cnt_reg[9]),
        .I1(byte_cnt_reg[6]),
        .I2(state_i_3_n_0),
        .I3(byte_cnt_reg[8]),
        .I4(byte_cnt_reg[7]),
        .I5(byte_cnt_reg[10]),
        .O(state_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    state_i_3
       (.I0(byte_cnt_reg[0]),
        .I1(byte_cnt_reg[2]),
        .I2(byte_cnt_reg[1]),
        .I3(byte_cnt_reg[3]),
        .I4(byte_cnt_reg[5]),
        .I5(byte_cnt_reg[4]),
        .O(state_i_3_n_0));
  FDRE state_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_0),
        .R(sys_rst_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_wrapper
   (data_drop_vld,
    data_not_for_me_vld,
    data_broadcast_vld,
    data_for_me_vld,
    data_drop,
    data_not_for_me,
    data_broadcast,
    data_for_me,
    sys_clk,
    sys_rst_n,
    phy_clk,
    phy_data_in,
    phy_data_in_vld,
    phy_rst_n);
  output data_drop_vld;
  output data_not_for_me_vld;
  output data_broadcast_vld;
  output data_for_me_vld;
  output [7:0]data_drop;
  output [7:0]data_not_for_me;
  output [7:0]data_broadcast;
  output [7:0]data_for_me;
  input sys_clk;
  input sys_rst_n;
  input phy_clk;
  input [8:0]phy_data_in;
  input phy_data_in_vld;
  input phy_rst_n;

  wire cdc_fifo_n_10;
  wire cdc_fifo_n_11;
  wire cdc_fifo_n_12;
  wire cdc_fifo_n_17;
  wire cdc_fifo_n_18;
  wire cdc_fifo_n_19;
  wire cdc_fifo_n_20;
  wire cdc_fifo_n_21;
  wire cdc_fifo_n_22;
  wire cdc_fifo_n_23;
  wire cdc_fifo_n_24;
  wire control_fifo_n_0;
  wire control_fifo_n_10;
  wire control_fifo_n_11;
  wire control_fifo_n_12;
  wire control_fifo_n_13;
  wire control_fifo_n_14;
  wire control_fifo_n_15;
  wire control_fifo_n_16;
  wire control_fifo_n_17;
  wire control_fifo_n_18;
  wire control_fifo_n_19;
  wire control_fifo_n_2;
  wire control_fifo_n_20;
  wire control_fifo_n_21;
  wire control_fifo_n_22;
  wire control_fifo_n_23;
  wire control_fifo_n_24;
  wire control_fifo_n_25;
  wire control_fifo_n_26;
  wire control_fifo_n_27;
  wire control_fifo_n_28;
  wire control_fifo_n_29;
  wire control_fifo_n_3;
  wire control_fifo_n_30;
  wire control_fifo_n_31;
  wire control_fifo_n_32;
  wire control_fifo_n_33;
  wire control_fifo_n_34;
  wire control_fifo_n_35;
  wire control_fifo_n_36;
  wire control_fifo_n_37;
  wire control_fifo_n_38;
  wire control_fifo_n_39;
  wire control_fifo_n_4;
  wire control_fifo_n_40;
  wire control_fifo_n_41;
  wire control_fifo_n_42;
  wire control_fifo_n_43;
  wire control_fifo_n_44;
  wire control_fifo_n_45;
  wire control_fifo_n_46;
  wire control_fifo_n_47;
  wire control_fifo_n_48;
  wire control_fifo_n_49;
  wire control_fifo_n_5;
  wire control_fifo_n_51;
  wire control_fifo_n_52;
  wire control_fifo_n_53;
  wire control_fifo_n_54;
  wire control_fifo_n_55;
  wire control_fifo_n_56;
  wire control_fifo_n_57;
  wire control_fifo_n_58;
  wire control_fifo_n_59;
  wire control_fifo_n_6;
  wire control_fifo_n_60;
  wire control_fifo_n_61;
  wire control_fifo_n_7;
  wire control_fifo_n_8;
  wire control_fifo_n_9;
  wire crc32_n_0;
  wire crc32_n_1;
  wire crc32_n_13;
  wire crc32_n_14;
  wire crc32_n_3;
  wire [7:0]crc_d;
  wire [123:0]ctrl;
  wire ctrl_3_vld;
  wire [11:11]ctrl_4;
  wire ctrl_4_rdy;
  wire ctrl_4_vld;
  wire [8:0]data_1;
  wire data_1_vld;
  wire [8:0]data_2;
  wire [7:0]data_4;
  wire data_4_vld;
  wire [7:0]data_broadcast;
  wire data_broadcast_vld;
  wire [7:0]data_drop;
  wire data_drop_vld;
  wire data_fifo_n_8;
  wire [7:0]data_for_me;
  wire data_for_me_vld;
  wire [7:0]data_not_for_me;
  wire data_not_for_me_vld;
  wire p_0_in;
  wire p_0_in12_in;
  wire p_0_in6_in;
  wire p_0_in9_in;
  wire [8:8]p_0_out;
  wire [11:11]p_0_out_0;
  wire p_1_in;
  wire p_1_in37_in;
  wire p_1_in57_in;
  wire p_2_in;
  wire p_2_in13_in;
  wire phy_clk;
  wire [8:0]phy_data_in;
  wire phy_data_in_vld;
  wire phy_rst_n;
  wire rx_fsm_n_0;
  wire rx_fsm_n_1;
  wire rx_fsm_n_2;
  wire sys_clk;
  wire sys_rst_n;
  wire wr_en;
  wire wr_en_1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo cdc_fifo
       (.CO(data_1_vld),
        .D({crc_d[7],crc_d[5],crc_d[1:0]}),
        .DOBDO(data_1),
        .E(cdc_fifo_n_11),
        .Q({p_2_in,p_0_in,p_2_in13_in,p_0_in9_in,p_0_in6_in,p_0_in12_in,p_1_in,p_1_in57_in,p_1_in37_in}),
        .SS(cdc_fifo_n_10),
        .WEA(wr_en),
        .bram_reg(cdc_fifo_n_12),
        .bram_reg_0(cdc_fifo_n_18),
        .bram_reg_1(cdc_fifo_n_19),
        .bram_reg_2(cdc_fifo_n_20),
        .bram_reg_3(cdc_fifo_n_21),
        .bram_reg_4(cdc_fifo_n_23),
        .bram_reg_5(cdc_fifo_n_24),
        .bram_reg_6(rx_fsm_n_2),
        .bram_reg_7(data_fifo_n_8),
        .\crc_q_reg[19] (cdc_fifo_n_17),
        .\crc_q_reg[7] (crc32_n_14),
        .\crc_q_reg[9] (cdc_fifo_n_22),
        .\ctrl[11]_i_6 (crc32_n_13),
        .\ctrl_reg[4] (crc32_n_1),
        .\gry_cnt_reg_reg[10] (rx_fsm_n_0),
        .phy_clk(phy_clk),
        .phy_data_in(phy_data_in),
        .phy_data_in_vld(phy_data_in_vld),
        .phy_rst_n(phy_rst_n),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0 control_fifo
       (.Q({control_fifo_n_2,control_fifo_n_3,control_fifo_n_4,control_fifo_n_5,control_fifo_n_6,control_fifo_n_7,control_fifo_n_8,control_fifo_n_9,control_fifo_n_10,control_fifo_n_11,control_fifo_n_12,control_fifo_n_13,control_fifo_n_14,control_fifo_n_15,control_fifo_n_16,control_fifo_n_17,control_fifo_n_18,control_fifo_n_19,control_fifo_n_20,control_fifo_n_21,control_fifo_n_22,control_fifo_n_23,control_fifo_n_24,control_fifo_n_25,control_fifo_n_26,control_fifo_n_27,control_fifo_n_28,control_fifo_n_29,control_fifo_n_30,control_fifo_n_31,control_fifo_n_32,control_fifo_n_33,control_fifo_n_34,control_fifo_n_35,control_fifo_n_36,control_fifo_n_37,control_fifo_n_38,control_fifo_n_39,control_fifo_n_40,control_fifo_n_41,control_fifo_n_42,control_fifo_n_43,control_fifo_n_44,control_fifo_n_45,control_fifo_n_46,control_fifo_n_47,control_fifo_n_48,control_fifo_n_49,ctrl_4,control_fifo_n_51,control_fifo_n_52,control_fifo_n_53,control_fifo_n_54,control_fifo_n_55,control_fifo_n_56,control_fifo_n_57,control_fifo_n_58,control_fifo_n_59,control_fifo_n_60,control_fifo_n_61}),
        .\cnt_curr_reg[0] (control_fifo_n_0),
        .\cnt_curr_reg[0]_0 (rx_fsm_n_0),
        .ctrl_3_vld(ctrl_3_vld),
        .ctrl_4_rdy(ctrl_4_rdy),
        .ctrl_4_vld(ctrl_4_vld),
        .\rd_data_reg[121] ({ctrl[123:72],ctrl[11:0]}),
        .sys_clk(sys_clk),
        .wr_en(wr_en_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8 crc32
       (.CO(data_1_vld),
        .D(p_0_out_0),
        .DOBDO(data_1[7:0]),
        .Q({p_2_in,p_0_in,p_2_in13_in,p_0_in9_in,p_0_in6_in,p_0_in12_in,p_1_in,p_1_in57_in,p_1_in37_in}),
        .SR(crc32_n_0),
        .SS(cdc_fifo_n_10),
        .\byte_cnt_reg[0] (rx_fsm_n_2),
        .\crc_q_reg[10]_0 (cdc_fifo_n_19),
        .\crc_q_reg[12]_0 (cdc_fifo_n_24),
        .\crc_q_reg[13]_0 (cdc_fifo_n_20),
        .\crc_q_reg[25]_0 (crc32_n_13),
        .\crc_q_reg[27]_0 (cdc_fifo_n_18),
        .\crc_q_reg[29]_0 (cdc_fifo_n_23),
        .\crc_q_reg[31]_0 (crc32_n_14),
        .\crc_q_reg[6]_0 (cdc_fifo_n_21),
        .\crc_q_reg[7]_0 ({crc_d[7],crc_d[5],crc_d[1:0]}),
        .\ctrl_reg[11] (cdc_fifo_n_12),
        .\ctrl_reg[11]_0 (cdc_fifo_n_22),
        .\ctrl_reg[11]_1 (cdc_fifo_n_17),
        .data_2(data_2[8]),
        .\delay_reg[3][8] (crc32_n_1),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(crc32_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo data_fifo
       (.CO(data_4_vld),
        .DI(p_0_out),
        .DIADI(data_2[7:0]),
        .DOBDO(data_4),
        .WEA(wr_en),
        .\cnt_curr_reg[0] (rx_fsm_n_0),
        .\cnt_curr_reg[3] (rx_fsm_n_2),
        .\cnt_curr_reg[3]_0 (data_1_vld),
        .\cnt_curr_reg[9] (data_fifo_n_8),
        .ctrl_4_rdy(ctrl_4_rdy),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer delay
       (.CO(data_1_vld),
        .DOBDO(data_1),
        .data_2(data_2),
        .\delay_reg[3][8]_0 (rx_fsm_n_1),
        .\delay_reg[3][8]_1 (rx_fsm_n_0),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_decoder demultiplexer
       (.CO(data_4_vld),
        .DOBDO(data_4),
        .Q({control_fifo_n_2,control_fifo_n_3,control_fifo_n_4,control_fifo_n_5,control_fifo_n_6,control_fifo_n_7,control_fifo_n_8,control_fifo_n_9,control_fifo_n_10,control_fifo_n_11,control_fifo_n_12,control_fifo_n_13,control_fifo_n_14,control_fifo_n_15,control_fifo_n_16,control_fifo_n_17,control_fifo_n_18,control_fifo_n_19,control_fifo_n_20,control_fifo_n_21,control_fifo_n_22,control_fifo_n_23,control_fifo_n_24,control_fifo_n_25,control_fifo_n_26,control_fifo_n_27,control_fifo_n_28,control_fifo_n_29,control_fifo_n_30,control_fifo_n_31,control_fifo_n_32,control_fifo_n_33,control_fifo_n_34,control_fifo_n_35,control_fifo_n_36,control_fifo_n_37,control_fifo_n_38,control_fifo_n_39,control_fifo_n_40,control_fifo_n_41,control_fifo_n_42,control_fifo_n_43,control_fifo_n_44,control_fifo_n_45,control_fifo_n_46,control_fifo_n_47,control_fifo_n_48,control_fifo_n_49,ctrl_4}),
        .ctrl_4_rdy(ctrl_4_rdy),
        .ctrl_4_vld(ctrl_4_vld),
        .data_broadcast(data_broadcast),
        .data_broadcast_vld(data_broadcast_vld),
        .data_drop(data_drop),
        .data_drop_vld(data_drop_vld),
        .data_for_me(data_for_me),
        .data_for_me_vld(data_for_me_vld),
        .data_not_for_me(data_not_for_me),
        .data_not_for_me_vld(data_not_for_me_vld),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ctrl fifo_control
       (.CO(data_4_vld),
        .D({control_fifo_n_51,control_fifo_n_52,control_fifo_n_53,control_fifo_n_54,control_fifo_n_55,control_fifo_n_56,control_fifo_n_57,control_fifo_n_58,control_fifo_n_59,control_fifo_n_60,control_fifo_n_61}),
        .DI(p_0_out),
        .ctrl_4_rdy(ctrl_4_rdy),
        .ctrl_4_vld(ctrl_4_vld),
        .\max_val_reg[0]_0 (rx_fsm_n_0),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_fsm rx_fsm
       (.CO(data_1_vld),
        .D(p_0_out_0),
        .E(cdc_fifo_n_11),
        .Q({ctrl[123:72],ctrl[11:0]}),
        .SR(crc32_n_0),
        .control_reg_r_1_0(rx_fsm_n_1),
        .ctrl_3_vld(ctrl_3_vld),
        .ctrl_vld_reg_0(crc32_n_3),
        .data_2(data_2),
        .\rd_data_reg[1] (control_fifo_n_0),
        .state_reg_0(rx_fsm_n_2),
        .state_reg_1(crc32_n_1),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n),
        .sys_rst_n_0(rx_fsm_n_0),
        .wr_en(wr_en_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
   (DOBDO,
    \cnt_curr_reg[9] ,
    CO,
    sys_clk,
    WEA,
    DIADI,
    DI,
    ctrl_4_rdy,
    \cnt_curr_reg[0] ,
    \cnt_curr_reg[3] ,
    \cnt_curr_reg[3]_0 );
  output [7:0]DOBDO;
  output [0:0]\cnt_curr_reg[9] ;
  output [0:0]CO;
  input sys_clk;
  input [0:0]WEA;
  input [7:0]DIADI;
  input [0:0]DI;
  input ctrl_4_rdy;
  input \cnt_curr_reg[0] ;
  input \cnt_curr_reg[3] ;
  input [0:0]\cnt_curr_reg[3]_0 ;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [7:0]DIADI;
  wire [7:0]DOBDO;
  wire [0:0]WEA;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire [11:0]cnt_curr_reg;
  wire [0:0]\cnt_curr_reg[3]_0 ;
  wire [0:0]\cnt_curr_reg[9] ;
  wire [11:11]cnt_curr_reg_0;
  wire cnt_curr_reg_0_sn_1;
  wire cnt_curr_reg_3_sn_1;
  wire ctrl_4_rdy;
  wire rd_ptr_calc_n_0;
  wire rd_ptr_calc_n_1;
  wire rd_ptr_calc_n_2;
  wire rd_ptr_calc_n_3;
  wire [10:0]rd_ptr_cmb;
  wire sys_clk;
  wire wr_ptr_calc_n_0;
  wire wr_ptr_calc_n_1;
  wire wr_ptr_calc_n_2;
  wire wr_ptr_calc_n_3;
  wire [11:0]wr_ptr_del;
  wire [10:0]wr_ptr_reg;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]\NLW__inferred__0/i__carry_O_UNCONNECTED ;

  assign cnt_curr_reg_0_sn_1 = \cnt_curr_reg[0] ;
  assign cnt_curr_reg_3_sn_1 = \cnt_curr_reg[3] ;
  CARRY4 _carry
       (.CI(1'b0),
        .CO({\cnt_curr_reg[9] ,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({wr_ptr_calc_n_0,wr_ptr_calc_n_1,wr_ptr_calc_n_2,wr_ptr_calc_n_3}));
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({CO,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW__inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({rd_ptr_calc_n_0,rd_ptr_calc_n_1,rd_ptr_calc_n_2,rd_ptr_calc_n_3}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0 fifo_module
       (.ADDRBWRADDR(rd_ptr_cmb),
        .DIADI(DIADI),
        .DOBDO(DOBDO),
        .WEA(WEA),
        .out(wr_ptr_reg),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter rd_ptr_calc
       (.ADDRBWRADDR(rd_ptr_cmb),
        .CO(CO),
        .DI(DI),
        .Q(wr_ptr_del),
        .S({rd_ptr_calc_n_0,rd_ptr_calc_n_1,rd_ptr_calc_n_2,rd_ptr_calc_n_3}),
        .\cnt_curr_reg[11]_0 (cnt_curr_reg_0_sn_1),
        .ctrl_4_rdy(ctrl_4_rdy),
        .out(cnt_curr_reg),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0 wr_ptr_calc
       (.S({wr_ptr_calc_n_0,wr_ptr_calc_n_1,wr_ptr_calc_n_2,wr_ptr_calc_n_3}),
        ._carry(cnt_curr_reg),
        .\cnt_curr_reg[0]_0 (cnt_curr_reg_0_sn_1),
        .\cnt_curr_reg[3]_0 (\cnt_curr_reg[9] ),
        .\cnt_curr_reg[3]_1 (cnt_curr_reg_3_sn_1),
        .\cnt_curr_reg[3]_2 (\cnt_curr_reg[3]_0 ),
        .out({cnt_curr_reg_0,wr_ptr_reg}),
        .sys_clk(sys_clk));
  FDRE \wr_ptr_del_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[0]),
        .Q(wr_ptr_del[0]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[10]),
        .Q(wr_ptr_del[10]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_curr_reg_0),
        .Q(wr_ptr_del[11]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[1]),
        .Q(wr_ptr_del[1]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[2]),
        .Q(wr_ptr_del[2]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[3]),
        .Q(wr_ptr_del[3]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[4]),
        .Q(wr_ptr_del[4]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[5]),
        .Q(wr_ptr_del[5]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[6]),
        .Q(wr_ptr_del[6]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[7]),
        .Q(wr_ptr_del[7]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[8]),
        .Q(wr_ptr_del[8]),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_reg[9]),
        .Q(wr_ptr_del[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0
   (\cnt_curr_reg[0] ,
    ctrl_4_vld,
    Q,
    ctrl_3_vld,
    ctrl_4_rdy,
    sys_clk,
    wr_en,
    \rd_data_reg[121] ,
    \cnt_curr_reg[0]_0 );
  output \cnt_curr_reg[0] ;
  output ctrl_4_vld;
  output [59:0]Q;
  input ctrl_3_vld;
  input ctrl_4_rdy;
  input sys_clk;
  input wr_en;
  input [63:0]\rd_data_reg[121] ;
  input \cnt_curr_reg[0]_0 ;

  wire [59:0]Q;
  wire [2:0]cnt_curr_reg;
  wire \cnt_curr_reg[0]_0 ;
  wire cnt_curr_reg_0_sn_1;
  wire ctrl_3_vld;
  wire ctrl_4_rdy;
  wire ctrl_4_vld;
  wire [63:0]\rd_data_reg[121] ;
  wire rd_ptr_calc_n_0;
  wire rd_ptr_calc_n_1;
  wire sys_clk;
  wire wr_en;
  wire wr_ptr_calc_n_1;
  wire wr_ptr_calc_n_2;
  wire wr_ptr_calc_n_3;
  wire \wr_ptr_del_reg_n_0_[0] ;
  wire \wr_ptr_del_reg_n_0_[1] ;
  wire \wr_ptr_del_reg_n_0_[2] ;

  assign \cnt_curr_reg[0]  = cnt_curr_reg_0_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1 fifo_module
       (.ADDRA({rd_ptr_calc_n_0,rd_ptr_calc_n_1}),
        .Q(Q),
        .\rd_data_reg[121]_0 (\rd_data_reg[121] ),
        .\rd_data_reg[121]_1 ({wr_ptr_calc_n_2,wr_ptr_calc_n_3}),
        .sys_clk(sys_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0 rd_ptr_calc
       (.D({rd_ptr_calc_n_0,rd_ptr_calc_n_1}),
        .Q(cnt_curr_reg),
        .\cnt_curr_reg[0]_0 (ctrl_4_vld),
        .\cnt_curr_reg[2]_0 ({\wr_ptr_del_reg_n_0_[2] ,\wr_ptr_del_reg_n_0_[1] ,\wr_ptr_del_reg_n_0_[0] }),
        .\cnt_curr_reg[2]_1 (\cnt_curr_reg[0]_0 ),
        .ctrl_4_rdy(ctrl_4_rdy),
        .sys_clk(sys_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1 wr_ptr_calc
       (.Q({wr_ptr_calc_n_1,wr_ptr_calc_n_2,wr_ptr_calc_n_3}),
        .\cnt_curr_reg[0]_0 (cnt_curr_reg_0_sn_1),
        .\cnt_curr_reg[0]_1 (\cnt_curr_reg[0]_0 ),
        .\cnt_curr_reg[1]_0 (cnt_curr_reg),
        .ctrl_3_vld(ctrl_3_vld),
        .sys_clk(sys_clk));
  FDRE \wr_ptr_del_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_calc_n_3),
        .Q(\wr_ptr_del_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_calc_n_2),
        .Q(\wr_ptr_del_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wr_ptr_del_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(wr_ptr_calc_n_1),
        .Q(\wr_ptr_del_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram
   (DOBDO,
    SS,
    bram_reg_0,
    D,
    \crc_q_reg[19] ,
    bram_reg_1,
    bram_reg_2,
    bram_reg_3,
    bram_reg_4,
    \crc_q_reg[9] ,
    bram_reg_5,
    bram_reg_6,
    phy_clk,
    sys_clk,
    wr_en,
    Q,
    ADDRBWRADDR,
    phy_data_in,
    CO,
    sys_rst_n,
    \ctrl[11]_i_6 ,
    \crc_q_reg[1] ,
    \crc_q_reg[7] );
  output [8:0]DOBDO;
  output [0:0]SS;
  output bram_reg_0;
  output [3:0]D;
  output \crc_q_reg[19] ;
  output bram_reg_1;
  output bram_reg_2;
  output bram_reg_3;
  output bram_reg_4;
  output \crc_q_reg[9] ;
  output bram_reg_5;
  output bram_reg_6;
  input phy_clk;
  input sys_clk;
  input wr_en;
  input [9:0]Q;
  input [9:0]ADDRBWRADDR;
  input [8:0]phy_data_in;
  input [0:0]CO;
  input sys_rst_n;
  input \ctrl[11]_i_6 ;
  input [8:0]\crc_q_reg[1] ;
  input \crc_q_reg[7] ;

  wire [9:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [3:0]D;
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
  wire \ctrl[11]_i_17_n_0 ;
  wire \ctrl[11]_i_6 ;
  wire phy_clk;
  wire [8:0]phy_data_in;
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
  (* RTL_RAM_NAME = "inst/cdc_fifo/fifo_module/bram" *) 
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
        .CLKARDCLK(phy_clk),
        .CLKBWRCLK(sys_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,phy_data_in}),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[12]_i_3 
       (.I0(DOBDO[3]),
        .I1(\crc_q_reg[1] [5]),
        .I2(\crc_q_reg[1] [6]),
        .I3(DOBDO[2]),
        .O(bram_reg_6));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[13]_i_2 
       (.I0(DOBDO[6]),
        .I1(\crc_q_reg[1] [3]),
        .I2(\crc_q_reg[1] [7]),
        .I3(DOBDO[1]),
        .O(bram_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[16]_i_2 
       (.I0(DOBDO[2]),
        .I1(\crc_q_reg[1] [6]),
        .O(bram_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[1]_i_1 
       (.I0(\crc_q_reg[1] [2]),
        .I1(DOBDO[7]),
        .I2(bram_reg_4),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[29]_i_2 
       (.I0(DOBDO[1]),
        .I1(\crc_q_reg[1] [7]),
        .O(bram_reg_5));
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
        .I4(bram_reg_4),
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
    .INIT(64'hF66F6FF66FF6F66F)) 
    \ctrl[11]_i_10 
       (.I0(\ctrl[11]_i_17_n_0 ),
        .I1(\ctrl[11]_i_6 ),
        .I2(DOBDO[7]),
        .I3(\crc_q_reg[1] [2]),
        .I4(\crc_q_reg[1] [7]),
        .I5(DOBDO[1]),
        .O(bram_reg_0));
  LUT6 #(
    .INIT(64'h9FF6F96FF96F9FF6)) 
    \ctrl[11]_i_12 
       (.I0(bram_reg_3),
        .I1(\crc_q_reg[1] [0]),
        .I2(\crc_q_reg[7] ),
        .I3(bram_reg_4),
        .I4(DOBDO[7]),
        .I5(\crc_q_reg[1] [2]),
        .O(\crc_q_reg[9] ));
  LUT6 #(
    .INIT(64'hFF9696FF96FFFF96)) 
    \ctrl[11]_i_13 
       (.I0(bram_reg_1),
        .I1(\ctrl[11]_i_6 ),
        .I2(\crc_q_reg[1] [1]),
        .I3(\crc_q_reg[7] ),
        .I4(bram_reg_2),
        .I5(bram_reg_3),
        .O(\crc_q_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl[11]_i_17 
       (.I0(DOBDO[0]),
        .I1(\crc_q_reg[1] [8]),
        .O(\ctrl[11]_i_17_n_0 ));
endmodule

(* ORIG_REF_NAME = "fifo_bram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0
   (DOBDO,
    sys_clk,
    WEA,
    out,
    ADDRBWRADDR,
    DIADI);
  output [7:0]DOBDO;
  input sys_clk;
  input [0:0]WEA;
  input [10:0]out;
  input [10:0]ADDRBWRADDR;
  input [7:0]DIADI;

  wire [10:0]ADDRBWRADDR;
  wire [7:0]DIADI;
  wire [7:0]DOBDO;
  wire [0:0]WEA;
  wire [10:0]out;
  wire sys_clk;
  wire [15:0]NLW_bram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_bram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_bram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_bram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "inst/data_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    bram_reg
       (.ADDRARDADDR({out,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b0,1'b0,1'b0}),
        .CLKARDCLK(sys_clk),
        .CLKBWRCLK(sys_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_bram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_bram_reg_DOBDO_UNCONNECTED[15:8],DOBDO}),
        .DOPADOP(NLW_bram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_bram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "fifo_bram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1
   (Q,
    sys_clk,
    wr_en,
    \rd_data_reg[121]_0 ,
    ADDRA,
    \rd_data_reg[121]_1 );
  output [59:0]Q;
  input sys_clk;
  input wr_en;
  input [63:0]\rd_data_reg[121]_0 ;
  input [1:0]ADDRA;
  input [1:0]\rd_data_reg[121]_1 ;

  wire [1:0]ADDRA;
  wire [59:0]Q;
  wire bram_reg_0_3_72_77_n_0;
  wire bram_reg_0_3_72_77_n_1;
  wire bram_reg_0_3_72_77_n_2;
  wire bram_reg_0_3_72_77_n_3;
  wire [123:0]rd_data0;
  wire [63:0]\rd_data_reg[121]_0 ;
  wire [1:0]\rd_data_reg[121]_1 ;
  wire sys_clk;
  wire wr_en;
  wire [1:0]NLW_bram_reg_0_3_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_102_107_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_108_113_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_114_119_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_120_123_DOC_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_120_123_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_72_77_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_78_83_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_84_89_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_90_95_DOD_UNCONNECTED;
  wire [1:0]NLW_bram_reg_0_3_96_101_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [1:0]),
        .DIB(\rd_data_reg[121]_0 [3:2]),
        .DIC(\rd_data_reg[121]_0 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[1:0]),
        .DOB(rd_data0[3:2]),
        .DOC(rd_data0[5:4]),
        .DOD(NLW_bram_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "102" *) 
  (* ram_slice_end = "107" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_102_107
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [43:42]),
        .DIB(\rd_data_reg[121]_0 [45:44]),
        .DIC(\rd_data_reg[121]_0 [47:46]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[103:102]),
        .DOB(rd_data0[105:104]),
        .DOC(rd_data0[107:106]),
        .DOD(NLW_bram_reg_0_3_102_107_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "108" *) 
  (* ram_slice_end = "113" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_108_113
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [49:48]),
        .DIB(\rd_data_reg[121]_0 [51:50]),
        .DIC(\rd_data_reg[121]_0 [53:52]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[109:108]),
        .DOB(rd_data0[111:110]),
        .DOC(rd_data0[113:112]),
        .DOD(NLW_bram_reg_0_3_108_113_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "114" *) 
  (* ram_slice_end = "119" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_114_119
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [55:54]),
        .DIB(\rd_data_reg[121]_0 [57:56]),
        .DIC(\rd_data_reg[121]_0 [59:58]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[115:114]),
        .DOB(rd_data0[117:116]),
        .DOC(rd_data0[119:118]),
        .DOD(NLW_bram_reg_0_3_114_119_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "120" *) 
  (* ram_slice_end = "123" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_120_123
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [61:60]),
        .DIB(\rd_data_reg[121]_0 [63:62]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[121:120]),
        .DOB(rd_data0[123:122]),
        .DOC(NLW_bram_reg_0_3_120_123_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_bram_reg_0_3_120_123_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_6_11
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [7:6]),
        .DIB(\rd_data_reg[121]_0 [9:8]),
        .DIC(\rd_data_reg[121]_0 [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[7:6]),
        .DOB(rd_data0[9:8]),
        .DOC(rd_data0[11:10]),
        .DOD(NLW_bram_reg_0_3_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "77" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_72_77
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [13:12]),
        .DIB(\rd_data_reg[121]_0 [15:14]),
        .DIC(\rd_data_reg[121]_0 [17:16]),
        .DID({1'b0,1'b0}),
        .DOA({bram_reg_0_3_72_77_n_0,bram_reg_0_3_72_77_n_1}),
        .DOB({bram_reg_0_3_72_77_n_2,bram_reg_0_3_72_77_n_3}),
        .DOC(rd_data0[77:76]),
        .DOD(NLW_bram_reg_0_3_72_77_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "78" *) 
  (* ram_slice_end = "83" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_78_83
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [19:18]),
        .DIB(\rd_data_reg[121]_0 [21:20]),
        .DIC(\rd_data_reg[121]_0 [23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[79:78]),
        .DOB(rd_data0[81:80]),
        .DOC(rd_data0[83:82]),
        .DOD(NLW_bram_reg_0_3_78_83_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "89" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_84_89
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [25:24]),
        .DIB(\rd_data_reg[121]_0 [27:26]),
        .DIC(\rd_data_reg[121]_0 [29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[85:84]),
        .DOB(rd_data0[87:86]),
        .DOC(rd_data0[89:88]),
        .DOD(NLW_bram_reg_0_3_84_89_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "90" *) 
  (* ram_slice_end = "95" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_90_95
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [31:30]),
        .DIB(\rd_data_reg[121]_0 [33:32]),
        .DIC(\rd_data_reg[121]_0 [35:34]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[91:90]),
        .DOB(rd_data0[93:92]),
        .DOC(rd_data0[95:94]),
        .DOD(NLW_bram_reg_0_3_90_95_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "496" *) 
  (* RTL_RAM_NAME = "inst/control_fifo/fifo_module/bram" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "96" *) 
  (* ram_slice_end = "101" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    bram_reg_0_3_96_101
       (.ADDRA({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRB({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRC({1'b0,1'b0,1'b0,ADDRA}),
        .ADDRD({1'b0,1'b0,1'b0,\rd_data_reg[121]_1 }),
        .DIA(\rd_data_reg[121]_0 [37:36]),
        .DIB(\rd_data_reg[121]_0 [39:38]),
        .DIC(\rd_data_reg[121]_0 [41:40]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data0[97:96]),
        .DOB(rd_data0[99:98]),
        .DOC(rd_data0[101:100]),
        .DOD(NLW_bram_reg_0_3_96_101_DOD_UNCONNECTED[1:0]),
        .WCLK(sys_clk),
        .WE(wr_en));
  FDRE \rd_data_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rd_data_reg[100] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[100]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \rd_data_reg[101] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[101]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \rd_data_reg[102] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[102]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \rd_data_reg[103] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[103]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \rd_data_reg[104] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[104]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \rd_data_reg[105] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[105]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \rd_data_reg[106] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[106]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \rd_data_reg[107] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[107]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \rd_data_reg[108] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[108]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \rd_data_reg[109] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[109]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \rd_data_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \rd_data_reg[110] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[110]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \rd_data_reg[111] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[111]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \rd_data_reg[112] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[112]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \rd_data_reg[113] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[113]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \rd_data_reg[114] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[114]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \rd_data_reg[115] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[115]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \rd_data_reg[116] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[116]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \rd_data_reg[117] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[117]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \rd_data_reg[118] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[118]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \rd_data_reg[119] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[119]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \rd_data_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \rd_data_reg[120] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[120]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \rd_data_reg[121] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[121]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \rd_data_reg[122] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[122]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \rd_data_reg[123] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[123]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \rd_data_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rd_data_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rd_data_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \rd_data_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \rd_data_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \rd_data_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \rd_data_reg[76] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[76]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \rd_data_reg[77] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[77]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \rd_data_reg[78] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[78]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \rd_data_reg[79] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[79]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \rd_data_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \rd_data_reg[80] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[80]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \rd_data_reg[81] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[81]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \rd_data_reg[82] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[82]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \rd_data_reg[83] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[83]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \rd_data_reg[84] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[84]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \rd_data_reg[85] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[85]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \rd_data_reg[86] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[86]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \rd_data_reg[87] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[87]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \rd_data_reg[88] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[88]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \rd_data_reg[89] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[89]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \rd_data_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \rd_data_reg[90] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[90]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \rd_data_reg[91] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[91]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \rd_data_reg[92] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[92]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \rd_data_reg[93] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[93]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \rd_data_reg[94] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[94]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \rd_data_reg[95] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[95]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \rd_data_reg[96] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[96]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \rd_data_reg[97] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[97]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \rd_data_reg[98] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[98]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \rd_data_reg[99] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[99]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \rd_data_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(rd_data0[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ctrl
   (ctrl_4_rdy,
    DI,
    \max_val_reg[0]_0 ,
    sys_clk,
    sys_rst_n,
    CO,
    ctrl_4_vld,
    D);
  output ctrl_4_rdy;
  output [0:0]DI;
  input \max_val_reg[0]_0 ;
  input sys_clk;
  input sys_rst_n;
  input [0:0]CO;
  input ctrl_4_vld;
  input [10:0]D;

  wire [0:0]CO;
  wire [10:0]D;
  wire [0:0]DI;
  wire \count[10]_i_1_n_0 ;
  wire \count[10]_i_3_n_0 ;
  wire [10:0]count_reg;
  wire ctrl_4_rdy;
  wire ctrl_4_vld;
  wire [10:0]max_val;
  wire \max_val_reg[0]_0 ;
  wire [10:0]p_0_in__0;
  wire state0_carry_i_1_n_0;
  wire state0_carry_i_2_n_0;
  wire state0_carry_i_3_n_0;
  wire state0_carry_i_4_n_0;
  wire state0_carry_n_0;
  wire state0_carry_n_1;
  wire state0_carry_n_2;
  wire state0_carry_n_3;
  wire state_inv_i_1_n_0;
  wire sys_clk;
  wire sys_rst_n;
  wire [3:0]NLW_state0_carry_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h4)) 
    \cnt_curr[0]_i_2__0 
       (.I0(ctrl_4_rdy),
        .I1(CO),
        .O(DI));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'hD)) 
    \count[10]_i_1 
       (.I0(sys_rst_n),
        .I1(ctrl_4_rdy),
        .O(\count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[10]_i_2 
       (.I0(count_reg[8]),
        .I1(count_reg[6]),
        .I2(\count[10]_i_3_n_0 ),
        .I3(count_reg[7]),
        .I4(count_reg[9]),
        .I5(count_reg[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[10]_i_3 
       (.I0(count_reg[5]),
        .I1(count_reg[3]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .I5(count_reg[4]),
        .O(\count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1 
       (.I0(\count[10]_i_3_n_0 ),
        .I1(count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1 
       (.I0(\count[10]_i_3_n_0 ),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[8]_i_1 
       (.I0(count_reg[6]),
        .I1(\count[10]_i_3_n_0 ),
        .I2(count_reg[7]),
        .I3(count_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[9]_i_1 
       (.I0(count_reg[7]),
        .I1(\count[10]_i_3_n_0 ),
        .I2(count_reg[6]),
        .I3(count_reg[8]),
        .I4(count_reg[9]),
        .O(p_0_in__0[9]));
  FDRE \count_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(count_reg[0]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(count_reg[10]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(count_reg[1]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(count_reg[2]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(count_reg[3]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(count_reg[4]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(count_reg[5]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(count_reg[6]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(count_reg[7]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(count_reg[8]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \count_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(count_reg[9]),
        .R(\count[10]_i_1_n_0 ));
  FDRE \max_val_reg[0] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[0]),
        .Q(max_val[0]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[10] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[10]),
        .Q(max_val[10]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[1] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[1]),
        .Q(max_val[1]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[2] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[2]),
        .Q(max_val[2]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[3] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[3]),
        .Q(max_val[3]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[4] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[4]),
        .Q(max_val[4]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[5] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[5]),
        .Q(max_val[5]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[6] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[6]),
        .Q(max_val[6]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[7] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[7]),
        .Q(max_val[7]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[8] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[8]),
        .Q(max_val[8]),
        .R(\max_val_reg[0]_0 ));
  FDRE \max_val_reg[9] 
       (.C(sys_clk),
        .CE(ctrl_4_rdy),
        .D(D[9]),
        .Q(max_val[9]),
        .R(\max_val_reg[0]_0 ));
  CARRY4 state0_carry
       (.CI(1'b0),
        .CO({state0_carry_n_0,state0_carry_n_1,state0_carry_n_2,state0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state0_carry_O_UNCONNECTED[3:0]),
        .S({state0_carry_i_1_n_0,state0_carry_i_2_n_0,state0_carry_i_3_n_0,state0_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry_i_1
       (.I0(count_reg[9]),
        .I1(max_val[9]),
        .I2(count_reg[10]),
        .I3(max_val[10]),
        .O(state0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_2
       (.I0(count_reg[6]),
        .I1(max_val[6]),
        .I2(max_val[8]),
        .I3(count_reg[8]),
        .I4(max_val[7]),
        .I5(count_reg[7]),
        .O(state0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_3
       (.I0(count_reg[3]),
        .I1(max_val[3]),
        .I2(max_val[5]),
        .I3(count_reg[5]),
        .I4(max_val[4]),
        .I5(count_reg[4]),
        .O(state0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    state0_carry_i_4
       (.I0(count_reg[0]),
        .I1(max_val[0]),
        .I2(max_val[2]),
        .I3(count_reg[2]),
        .I4(max_val[1]),
        .I5(count_reg[1]),
        .O(state0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h2E)) 
    state_inv_i_1
       (.I0(state0_carry_n_0),
        .I1(ctrl_4_rdy),
        .I2(ctrl_4_vld),
        .O(state_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDSE state_reg_inv
       (.C(sys_clk),
        .CE(1'b1),
        .D(state_inv_i_1_n_0),
        .Q(ctrl_4_rdy),
        .S(\max_val_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter
   (S,
    out,
    ADDRBWRADDR,
    Q,
    DI,
    CO,
    ctrl_4_rdy,
    \cnt_curr_reg[11]_0 ,
    sys_clk);
  output [3:0]S;
  output [11:0]out;
  output [10:0]ADDRBWRADDR;
  input [11:0]Q;
  input [0:0]DI;
  input [0:0]CO;
  input ctrl_4_rdy;
  input \cnt_curr_reg[11]_0 ;
  input sys_clk;

  wire [10:0]ADDRBWRADDR;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [11:0]Q;
  wire [3:0]S;
  wire bram_reg_i_2__0_n_2;
  wire bram_reg_i_2__0_n_3;
  wire bram_reg_i_3__0_n_0;
  wire bram_reg_i_3__0_n_1;
  wire bram_reg_i_3__0_n_2;
  wire bram_reg_i_3__0_n_3;
  wire bram_reg_i_4__0_n_0;
  wire bram_reg_i_4__0_n_1;
  wire bram_reg_i_4__0_n_2;
  wire bram_reg_i_4__0_n_3;
  wire bram_reg_i_5_n_0;
  wire \cnt_curr[0]_i_3_n_0 ;
  wire \cnt_curr_reg[0]_i_1__0_n_0 ;
  wire \cnt_curr_reg[0]_i_1__0_n_1 ;
  wire \cnt_curr_reg[0]_i_1__0_n_2 ;
  wire \cnt_curr_reg[0]_i_1__0_n_3 ;
  wire \cnt_curr_reg[0]_i_1__0_n_4 ;
  wire \cnt_curr_reg[0]_i_1__0_n_5 ;
  wire \cnt_curr_reg[0]_i_1__0_n_6 ;
  wire \cnt_curr_reg[0]_i_1__0_n_7 ;
  wire \cnt_curr_reg[11]_0 ;
  wire \cnt_curr_reg[4]_i_1__0_n_0 ;
  wire \cnt_curr_reg[4]_i_1__0_n_1 ;
  wire \cnt_curr_reg[4]_i_1__0_n_2 ;
  wire \cnt_curr_reg[4]_i_1__0_n_3 ;
  wire \cnt_curr_reg[4]_i_1__0_n_4 ;
  wire \cnt_curr_reg[4]_i_1__0_n_5 ;
  wire \cnt_curr_reg[4]_i_1__0_n_6 ;
  wire \cnt_curr_reg[4]_i_1__0_n_7 ;
  wire \cnt_curr_reg[8]_i_1__0_n_1 ;
  wire \cnt_curr_reg[8]_i_1__0_n_2 ;
  wire \cnt_curr_reg[8]_i_1__0_n_3 ;
  wire \cnt_curr_reg[8]_i_1__0_n_4 ;
  wire \cnt_curr_reg[8]_i_1__0_n_5 ;
  wire \cnt_curr_reg[8]_i_1__0_n_6 ;
  wire \cnt_curr_reg[8]_i_1__0_n_7 ;
  wire ctrl_4_rdy;
  wire [11:0]out;
  wire sys_clk;
  wire [3:2]NLW_bram_reg_i_2__0_CO_UNCONNECTED;
  wire [3:3]NLW_bram_reg_i_2__0_O_UNCONNECTED;
  wire [3:3]\NLW_cnt_curr_reg[8]_i_1__0_CO_UNCONNECTED ;

  CARRY4 bram_reg_i_2__0
       (.CI(bram_reg_i_3__0_n_0),
        .CO({NLW_bram_reg_i_2__0_CO_UNCONNECTED[3:2],bram_reg_i_2__0_n_2,bram_reg_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_bram_reg_i_2__0_O_UNCONNECTED[3],ADDRBWRADDR[10:8]}),
        .S({1'b0,out[10:8]}));
  CARRY4 bram_reg_i_3__0
       (.CI(bram_reg_i_4__0_n_0),
        .CO({bram_reg_i_3__0_n_0,bram_reg_i_3__0_n_1,bram_reg_i_3__0_n_2,bram_reg_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ADDRBWRADDR[7:4]),
        .S(out[7:4]));
  CARRY4 bram_reg_i_4__0
       (.CI(1'b0),
        .CO({bram_reg_i_4__0_n_0,bram_reg_i_4__0_n_1,bram_reg_i_4__0_n_2,bram_reg_i_4__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,out[0]}),
        .O(ADDRBWRADDR[3:0]),
        .S({out[3:1],bram_reg_i_5_n_0}));
  LUT3 #(
    .INIT(8'hA6)) 
    bram_reg_i_5
       (.I0(out[0]),
        .I1(CO),
        .I2(ctrl_4_rdy),
        .O(bram_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt_curr[0]_i_3 
       (.I0(CO),
        .I1(ctrl_4_rdy),
        .I2(out[0]),
        .O(\cnt_curr[0]_i_3_n_0 ));
  FDRE \cnt_curr_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1__0_n_7 ),
        .Q(out[0]),
        .R(\cnt_curr_reg[11]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_curr_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\cnt_curr_reg[0]_i_1__0_n_0 ,\cnt_curr_reg[0]_i_1__0_n_1 ,\cnt_curr_reg[0]_i_1__0_n_2 ,\cnt_curr_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\cnt_curr_reg[0]_i_1__0_n_4 ,\cnt_curr_reg[0]_i_1__0_n_5 ,\cnt_curr_reg[0]_i_1__0_n_6 ,\cnt_curr_reg[0]_i_1__0_n_7 }),
        .S({out[3:1],\cnt_curr[0]_i_3_n_0 }));
  FDRE \cnt_curr_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1__0_n_5 ),
        .Q(out[10]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1__0_n_4 ),
        .Q(out[11]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1__0_n_6 ),
        .Q(out[1]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1__0_n_5 ),
        .Q(out[2]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1__0_n_4 ),
        .Q(out[3]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1__0_n_7 ),
        .Q(out[4]),
        .R(\cnt_curr_reg[11]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_curr_reg[4]_i_1__0 
       (.CI(\cnt_curr_reg[0]_i_1__0_n_0 ),
        .CO({\cnt_curr_reg[4]_i_1__0_n_0 ,\cnt_curr_reg[4]_i_1__0_n_1 ,\cnt_curr_reg[4]_i_1__0_n_2 ,\cnt_curr_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_curr_reg[4]_i_1__0_n_4 ,\cnt_curr_reg[4]_i_1__0_n_5 ,\cnt_curr_reg[4]_i_1__0_n_6 ,\cnt_curr_reg[4]_i_1__0_n_7 }),
        .S(out[7:4]));
  FDRE \cnt_curr_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1__0_n_6 ),
        .Q(out[5]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1__0_n_5 ),
        .Q(out[6]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1__0_n_4 ),
        .Q(out[7]),
        .R(\cnt_curr_reg[11]_0 ));
  FDRE \cnt_curr_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1__0_n_7 ),
        .Q(out[8]),
        .R(\cnt_curr_reg[11]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_curr_reg[8]_i_1__0 
       (.CI(\cnt_curr_reg[4]_i_1__0_n_0 ),
        .CO({\NLW_cnt_curr_reg[8]_i_1__0_CO_UNCONNECTED [3],\cnt_curr_reg[8]_i_1__0_n_1 ,\cnt_curr_reg[8]_i_1__0_n_2 ,\cnt_curr_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_curr_reg[8]_i_1__0_n_4 ,\cnt_curr_reg[8]_i_1__0_n_5 ,\cnt_curr_reg[8]_i_1__0_n_6 ,\cnt_curr_reg[8]_i_1__0_n_7 }),
        .S(out[11:8]));
  FDRE \cnt_curr_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1__0_n_6 ),
        .Q(out[9]),
        .R(\cnt_curr_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(out[9]),
        .I1(Q[9]),
        .I2(Q[11]),
        .I3(out[11]),
        .I4(Q[10]),
        .I5(out[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(out[6]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(out[8]),
        .I4(Q[7]),
        .I5(out[7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(out[3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(out[5]),
        .I4(Q[4]),
        .I5(out[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(out[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(Q[1]),
        .I5(out[1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "modn_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0
   (S,
    out,
    _carry,
    \cnt_curr_reg[0]_0 ,
    sys_clk,
    \cnt_curr_reg[3]_0 ,
    \cnt_curr_reg[3]_1 ,
    \cnt_curr_reg[3]_2 );
  output [3:0]S;
  output [11:0]out;
  input [11:0]_carry;
  input \cnt_curr_reg[0]_0 ;
  input sys_clk;
  input [0:0]\cnt_curr_reg[3]_0 ;
  input \cnt_curr_reg[3]_1 ;
  input [0:0]\cnt_curr_reg[3]_2 ;

  wire [3:0]S;
  wire [11:0]_carry;
  wire \cnt_curr[0]_i_2_n_0 ;
  wire \cnt_curr_reg[0]_0 ;
  wire \cnt_curr_reg[0]_i_1_n_0 ;
  wire \cnt_curr_reg[0]_i_1_n_1 ;
  wire \cnt_curr_reg[0]_i_1_n_2 ;
  wire \cnt_curr_reg[0]_i_1_n_3 ;
  wire \cnt_curr_reg[0]_i_1_n_4 ;
  wire \cnt_curr_reg[0]_i_1_n_5 ;
  wire \cnt_curr_reg[0]_i_1_n_6 ;
  wire \cnt_curr_reg[0]_i_1_n_7 ;
  wire [0:0]\cnt_curr_reg[3]_0 ;
  wire \cnt_curr_reg[3]_1 ;
  wire [0:0]\cnt_curr_reg[3]_2 ;
  wire \cnt_curr_reg[4]_i_1_n_0 ;
  wire \cnt_curr_reg[4]_i_1_n_1 ;
  wire \cnt_curr_reg[4]_i_1_n_2 ;
  wire \cnt_curr_reg[4]_i_1_n_3 ;
  wire \cnt_curr_reg[4]_i_1_n_4 ;
  wire \cnt_curr_reg[4]_i_1_n_5 ;
  wire \cnt_curr_reg[4]_i_1_n_6 ;
  wire \cnt_curr_reg[4]_i_1_n_7 ;
  wire \cnt_curr_reg[8]_i_1_n_1 ;
  wire \cnt_curr_reg[8]_i_1_n_2 ;
  wire \cnt_curr_reg[8]_i_1_n_3 ;
  wire \cnt_curr_reg[8]_i_1_n_4 ;
  wire \cnt_curr_reg[8]_i_1_n_5 ;
  wire \cnt_curr_reg[8]_i_1_n_6 ;
  wire \cnt_curr_reg[8]_i_1_n_7 ;
  wire [11:0]out;
  wire sys_clk;
  wire [3:3]\NLW_cnt_curr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0990000000000990)) 
    _carry_i_1__0
       (.I0(out[9]),
        .I1(_carry[9]),
        .I2(_carry[11]),
        .I3(out[11]),
        .I4(_carry[10]),
        .I5(out[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    _carry_i_2__0
       (.I0(out[6]),
        .I1(_carry[6]),
        .I2(_carry[8]),
        .I3(out[8]),
        .I4(_carry[7]),
        .I5(out[7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    _carry_i_3__0
       (.I0(out[3]),
        .I1(_carry[3]),
        .I2(_carry[5]),
        .I3(out[5]),
        .I4(_carry[4]),
        .I5(out[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    _carry_i_4__0
       (.I0(out[0]),
        .I1(_carry[0]),
        .I2(_carry[2]),
        .I3(out[2]),
        .I4(_carry[1]),
        .I5(out[1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_curr[0]_i_2 
       (.I0(\cnt_curr_reg[3]_0 ),
        .I1(\cnt_curr_reg[3]_1 ),
        .I2(\cnt_curr_reg[3]_2 ),
        .I3(out[0]),
        .O(\cnt_curr[0]_i_2_n_0 ));
  FDRE \cnt_curr_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1_n_7 ),
        .Q(out[0]),
        .R(\cnt_curr_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_curr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_curr_reg[0]_i_1_n_0 ,\cnt_curr_reg[0]_i_1_n_1 ,\cnt_curr_reg[0]_i_1_n_2 ,\cnt_curr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,out[0]}),
        .O({\cnt_curr_reg[0]_i_1_n_4 ,\cnt_curr_reg[0]_i_1_n_5 ,\cnt_curr_reg[0]_i_1_n_6 ,\cnt_curr_reg[0]_i_1_n_7 }),
        .S({out[3:1],\cnt_curr[0]_i_2_n_0 }));
  FDRE \cnt_curr_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1_n_5 ),
        .Q(out[10]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1_n_4 ),
        .Q(out[11]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1_n_6 ),
        .Q(out[1]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1_n_5 ),
        .Q(out[2]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[0]_i_1_n_4 ),
        .Q(out[3]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1_n_7 ),
        .Q(out[4]),
        .R(\cnt_curr_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_curr_reg[4]_i_1 
       (.CI(\cnt_curr_reg[0]_i_1_n_0 ),
        .CO({\cnt_curr_reg[4]_i_1_n_0 ,\cnt_curr_reg[4]_i_1_n_1 ,\cnt_curr_reg[4]_i_1_n_2 ,\cnt_curr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_curr_reg[4]_i_1_n_4 ,\cnt_curr_reg[4]_i_1_n_5 ,\cnt_curr_reg[4]_i_1_n_6 ,\cnt_curr_reg[4]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE \cnt_curr_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1_n_6 ),
        .Q(out[5]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1_n_5 ),
        .Q(out[6]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[4]_i_1_n_4 ),
        .Q(out[7]),
        .R(\cnt_curr_reg[0]_0 ));
  FDRE \cnt_curr_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1_n_7 ),
        .Q(out[8]),
        .R(\cnt_curr_reg[0]_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_curr_reg[8]_i_1 
       (.CI(\cnt_curr_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_curr_reg[8]_i_1_CO_UNCONNECTED [3],\cnt_curr_reg[8]_i_1_n_1 ,\cnt_curr_reg[8]_i_1_n_2 ,\cnt_curr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_curr_reg[8]_i_1_n_4 ,\cnt_curr_reg[8]_i_1_n_5 ,\cnt_curr_reg[8]_i_1_n_6 ,\cnt_curr_reg[8]_i_1_n_7 }),
        .S(out[11:8]));
  FDRE \cnt_curr_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(\cnt_curr_reg[8]_i_1_n_6 ),
        .Q(out[9]),
        .R(\cnt_curr_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "modn_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0
   (D,
    Q,
    \cnt_curr_reg[0]_0 ,
    ctrl_4_rdy,
    \cnt_curr_reg[2]_0 ,
    \cnt_curr_reg[2]_1 ,
    sys_clk);
  output [1:0]D;
  output [2:0]Q;
  output \cnt_curr_reg[0]_0 ;
  input ctrl_4_rdy;
  input [2:0]\cnt_curr_reg[2]_0 ;
  input \cnt_curr_reg[2]_1 ;
  input sys_clk;

  wire [1:0]D;
  wire [2:0]Q;
  wire \cnt_curr_reg[0]_0 ;
  wire [2:0]\cnt_curr_reg[2]_0 ;
  wire \cnt_curr_reg[2]_1 ;
  wire [2:2]cnt_next__0;
  wire ctrl_4_rdy;
  wire sys_clk;

  LUT4 #(
    .INIT(16'h7F80)) 
    bram_reg_0_3_0_5_i_2
       (.I0(Q[0]),
        .I1(\cnt_curr_reg[0]_0 ),
        .I2(ctrl_4_rdy),
        .I3(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    bram_reg_0_3_0_5_i_3
       (.I0(Q[0]),
        .I1(ctrl_4_rdy),
        .I2(\cnt_curr_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    bram_reg_0_3_0_5_i_5
       (.I0(Q[0]),
        .I1(\cnt_curr_reg[2]_0 [0]),
        .I2(\cnt_curr_reg[2]_0 [2]),
        .I3(Q[2]),
        .I4(\cnt_curr_reg[2]_0 [1]),
        .I5(Q[1]),
        .O(\cnt_curr_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_curr[2]_i_1 
       (.I0(ctrl_4_rdy),
        .I1(\cnt_curr_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(cnt_next__0));
  FDRE \cnt_curr_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(\cnt_curr_reg[2]_1 ));
  FDRE \cnt_curr_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(\cnt_curr_reg[2]_1 ));
  FDRE \cnt_curr_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_next__0),
        .Q(Q[2]),
        .R(\cnt_curr_reg[2]_1 ));
endmodule

(* ORIG_REF_NAME = "modn_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1
   (\cnt_curr_reg[0]_0 ,
    Q,
    ctrl_3_vld,
    \cnt_curr_reg[1]_0 ,
    \cnt_curr_reg[0]_1 ,
    sys_clk);
  output \cnt_curr_reg[0]_0 ;
  output [2:0]Q;
  input ctrl_3_vld;
  input [2:0]\cnt_curr_reg[1]_0 ;
  input \cnt_curr_reg[0]_1 ;
  input sys_clk;

  wire [2:0]Q;
  wire \cnt_curr_reg[0]_0 ;
  wire \cnt_curr_reg[0]_1 ;
  wire [2:0]\cnt_curr_reg[1]_0 ;
  wire [2:0]cnt_next;
  wire ctrl_3_vld;
  wire sys_clk;

  LUT6 #(
    .INIT(64'hF66FFFFFFFFFF66F)) 
    bram_reg_0_3_0_5_i_4
       (.I0(Q[0]),
        .I1(\cnt_curr_reg[1]_0 [0]),
        .I2(\cnt_curr_reg[1]_0 [2]),
        .I3(Q[2]),
        .I4(\cnt_curr_reg[1]_0 [1]),
        .I5(Q[1]),
        .O(\cnt_curr_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_curr[0]_i_1 
       (.I0(ctrl_3_vld),
        .I1(\cnt_curr_reg[0]_0 ),
        .I2(Q[0]),
        .O(cnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_curr[1]_i_1 
       (.I0(ctrl_3_vld),
        .I1(\cnt_curr_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(cnt_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_curr[2]_i_1__0 
       (.I0(ctrl_3_vld),
        .I1(\cnt_curr_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(cnt_next[2]));
  FDRE \cnt_curr_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_next[0]),
        .Q(Q[0]),
        .R(\cnt_curr_reg[0]_1 ));
  FDRE \cnt_curr_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_next[1]),
        .Q(Q[1]),
        .R(\cnt_curr_reg[0]_1 ));
  FDRE \cnt_curr_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(cnt_next[2]),
        .Q(Q[2]),
        .R(\cnt_curr_reg[0]_1 ));
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
