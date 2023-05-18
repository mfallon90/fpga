-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 11 17:44:36 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_transmitter_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_transmitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter is
  port (
    uart_tx : out STD_LOGIC;
    data_in_rdy : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    data_in_vld : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter is
  signal bits0 : STD_LOGIC;
  signal \bits[3]_i_1_n_0\ : STD_LOGIC;
  signal bits_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp[8]_i_2_n_0\ : STD_LOGIC;
  signal \temp[8]_i_3_n_0\ : STD_LOGIC;
  signal \temp[8]_i_4_n_0\ : STD_LOGIC;
  signal \temp[8]_i_5_n_0\ : STD_LOGIC;
  signal \temp[8]_i_6_n_0\ : STD_LOGIC;
  signal \temp[8]_i_7_n_0\ : STD_LOGIC;
  signal \temp[9]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_reg_n_0_[9]\ : STD_LOGIC;
  signal \^uart_tx\ : STD_LOGIC;
  signal uart_tx_i_1_n_0 : STD_LOGIC;
  signal uart_tx_i_2_n_0 : STD_LOGIC;
  signal uart_tx_i_3_n_0 : STD_LOGIC;
  signal uart_tx_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bits[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bits[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bits[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bits[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[10]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[10]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[10]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[8]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[8]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of data_in_rdy_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \temp[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \temp[8]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp[8]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temp[8]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \temp[8]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of uart_tx_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of uart_tx_i_4 : label is "soft_lutpair0";
begin
  uart_tx <= \^uart_tx\;
\bits[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_reg(0),
      O => \p_0_in__0\(0)
    );
\bits[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bits_reg(0),
      I1 => bits_reg(1),
      O => \p_0_in__0\(1)
    );
\bits[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bits_reg(2),
      I1 => bits_reg(1),
      I2 => bits_reg(0),
      O => \p_0_in__0\(2)
    );
\bits[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => uart_tx_i_2_n_0,
      I1 => state_reg_n_0,
      I2 => rst_n,
      O => \bits[3]_i_1_n_0\
    );
\bits[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \cnt[8]_i_2_n_0\,
      O => bits0
    );
\bits[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bits_reg(3),
      I1 => bits_reg(0),
      I2 => bits_reg(1),
      I3 => bits_reg(2),
      O => \p_0_in__0\(3)
    );
\bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bits0,
      D => \p_0_in__0\(0),
      Q => bits_reg(0),
      R => \bits[3]_i_1_n_0\
    );
\bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bits0,
      D => \p_0_in__0\(1),
      Q => bits_reg(1),
      R => \bits[3]_i_1_n_0\
    );
\bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bits0,
      D => \p_0_in__0\(2),
      Q => bits_reg(2),
      R => \bits[3]_i_1_n_0\
    );
\bits_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bits0,
      D => \p_0_in__0\(3),
      Q => bits_reg(3),
      R => \bits[3]_i_1_n_0\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt[8]_i_2_n_0\,
      I1 => sel0(0),
      O => cnt(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => p_0_in
    );
\cnt[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => sel0(9),
      I2 => \cnt[10]_i_4_n_0\,
      I3 => sel0(10),
      O => cnt(10)
    );
\cnt[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(10),
      I2 => sel0(0),
      I3 => \cnt[10]_i_5_n_0\,
      I4 => \cnt[10]_i_6_n_0\,
      O => \cnt[10]_i_3_n_0\
    );
\cnt[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      I2 => sel0(5),
      I3 => sel0(8),
      I4 => \cnt[9]_i_2_n_0\,
      O => \cnt[10]_i_4_n_0\
    );
\cnt[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(1),
      O => \cnt[10]_i_5_n_0\
    );
\cnt[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(5),
      I2 => sel0(7),
      I3 => sel0(6),
      O => \cnt[10]_i_6_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt[8]_i_2_n_0\,
      I1 => sel0(0),
      I2 => sel0(1),
      O => cnt(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt[8]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(2),
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt[8]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt[9]_i_2_n_0\,
      I2 => sel0(5),
      O => cnt(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => sel0(5),
      I2 => \cnt[9]_i_2_n_0\,
      I3 => sel0(6),
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt[9]_i_2_n_0\,
      I2 => sel0(5),
      I3 => sel0(6),
      I4 => sel0(7),
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA00002AAA8000"
    )
        port map (
      I0 => \cnt[8]_i_2_n_0\,
      I1 => sel0(6),
      I2 => sel0(7),
      I3 => sel0(5),
      I4 => sel0(8),
      I5 => \cnt[9]_i_2_n_0\,
      O => cnt(8)
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \cnt[10]_i_6_n_0\,
      I1 => \cnt[8]_i_3_n_0\,
      I2 => \cnt[8]_i_4_n_0\,
      I3 => sel0(0),
      I4 => sel0(10),
      I5 => sel0(9),
      O => \cnt[8]_i_2_n_0\
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \cnt[8]_i_3_n_0\
    );
\cnt[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(3),
      O => \cnt[8]_i_4_n_0\
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => sel0(9),
      I1 => \cnt[9]_i_2_n_0\,
      I2 => sel0(8),
      I3 => sel0(5),
      I4 => sel0(7),
      I5 => sel0(6),
      O => cnt(9)
    );
\cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => sel0(3),
      O => \cnt[9]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(0),
      Q => sel0(0),
      R => p_0_in
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(10),
      Q => sel0(10),
      R => p_0_in
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(1),
      Q => sel0(1),
      R => p_0_in
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(2),
      Q => sel0(2),
      R => p_0_in
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(3),
      Q => sel0(3),
      R => p_0_in
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(4),
      Q => sel0(4),
      R => p_0_in
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(5),
      Q => sel0(5),
      R => p_0_in
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(6),
      Q => sel0(6),
      R => p_0_in
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(7),
      Q => sel0(7),
      R => p_0_in
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(8),
      Q => sel0(8),
      R => p_0_in
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => state_reg_n_0,
      D => cnt(9),
      Q => sel0(9),
      R => p_0_in
    );
data_in_rdy_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg_n_0,
      O => data_in_rdy
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D800"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => uart_tx_i_2_n_0,
      I2 => data_in_vld,
      I3 => rst_n,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => '0'
    );
\temp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \temp_reg_n_0_[1]\,
      I1 => rst_n,
      I2 => state_reg_n_0,
      I3 => \temp[8]_i_1_n_0\,
      I4 => \temp_reg_n_0_[0]\,
      O => \temp[0]_i_1_n_0\
    );
\temp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[2]\,
      I2 => state_reg_n_0,
      I3 => data_in(0),
      O => \temp[1]_i_1_n_0\
    );
\temp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[3]\,
      I2 => state_reg_n_0,
      I3 => data_in(1),
      O => \temp[2]_i_1_n_0\
    );
\temp[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[4]\,
      I2 => state_reg_n_0,
      I3 => data_in(2),
      O => \temp[3]_i_1_n_0\
    );
\temp[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[5]\,
      I2 => state_reg_n_0,
      I3 => data_in(3),
      O => \temp[4]_i_1_n_0\
    );
\temp[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[6]\,
      I2 => state_reg_n_0,
      I3 => data_in(4),
      O => \temp[5]_i_1_n_0\
    );
\temp[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[7]\,
      I2 => state_reg_n_0,
      I3 => data_in(5),
      O => \temp[6]_i_1_n_0\
    );
\temp[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[8]\,
      I2 => state_reg_n_0,
      I3 => data_in(6),
      O => \temp[7]_i_1_n_0\
    );
\temp[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0001FFFF"
    )
        port map (
      I0 => \temp[8]_i_3_n_0\,
      I1 => \temp[8]_i_4_n_0\,
      I2 => \temp[8]_i_5_n_0\,
      I3 => \temp[8]_i_6_n_0\,
      I4 => rst_n,
      I5 => \temp[8]_i_7_n_0\,
      O => \temp[8]_i_1_n_0\
    );
\temp[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A80"
    )
        port map (
      I0 => rst_n,
      I1 => \temp_reg_n_0_[9]\,
      I2 => state_reg_n_0,
      I3 => data_in(7),
      O => \temp[8]_i_2_n_0\
    );
\temp[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FFFF"
    )
        port map (
      I0 => bits_reg(1),
      I1 => bits_reg(0),
      I2 => bits_reg(2),
      I3 => bits_reg(3),
      I4 => state_reg_n_0,
      O => \temp[8]_i_3_n_0\
    );
\temp[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(4),
      I2 => sel0(3),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \temp[8]_i_4_n_0\
    );
\temp[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(9),
      I2 => sel0(8),
      I3 => sel0(2),
      O => \temp[8]_i_5_n_0\
    );
\temp[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      I2 => sel0(5),
      O => \temp[8]_i_6_n_0\
    );
\temp[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in_vld,
      I1 => state_reg_n_0,
      O => \temp[8]_i_7_n_0\
    );
\temp[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => rst_n,
      I1 => state_reg_n_0,
      I2 => \temp[8]_i_1_n_0\,
      I3 => \temp_reg_n_0_[9]\,
      O => \temp[9]_i_1_n_0\
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \temp[0]_i_1_n_0\,
      Q => \temp_reg_n_0_[0]\,
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[1]_i_1_n_0\,
      Q => \temp_reg_n_0_[1]\,
      R => '0'
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[2]_i_1_n_0\,
      Q => \temp_reg_n_0_[2]\,
      R => '0'
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[3]_i_1_n_0\,
      Q => \temp_reg_n_0_[3]\,
      R => '0'
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[4]_i_1_n_0\,
      Q => \temp_reg_n_0_[4]\,
      R => '0'
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[5]_i_1_n_0\,
      Q => \temp_reg_n_0_[5]\,
      R => '0'
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[6]_i_1_n_0\,
      Q => \temp_reg_n_0_[6]\,
      R => '0'
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[7]_i_1_n_0\,
      Q => \temp_reg_n_0_[7]\,
      R => '0'
    );
\temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[8]_i_1_n_0\,
      D => \temp[8]_i_2_n_0\,
      Q => \temp_reg_n_0_[8]\,
      R => '0'
    );
\temp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \temp[9]_i_1_n_0\,
      Q => \temp_reg_n_0_[9]\,
      R => '0'
    );
uart_tx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFF0F0"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \temp_reg_n_0_[0]\,
      I2 => \^uart_tx\,
      I3 => uart_tx_i_2_n_0,
      I4 => rst_n,
      O => uart_tx_i_1_n_0
    );
uart_tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \temp[8]_i_6_n_0\,
      I1 => sel0(2),
      I2 => sel0(8),
      I3 => uart_tx_i_3_n_0,
      I4 => \temp[8]_i_4_n_0\,
      I5 => uart_tx_i_4_n_0,
      O => uart_tx_i_2_n_0
    );
uart_tx_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel0(9),
      I1 => sel0(10),
      O => uart_tx_i_3_n_0
    );
uart_tx_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => bits_reg(3),
      I1 => bits_reg(2),
      I2 => bits_reg(0),
      I3 => bits_reg(1),
      O => uart_tx_i_4_n_0
    );
uart_tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_tx_i_1_n_0,
      Q => \^uart_tx\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_in_vld : in STD_LOGIC;
    data_in_rdy : out STD_LOGIC;
    uart_tx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_transmitter_0_0,uart_transmitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_transmitter,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 175000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_transmitter
     port map (
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_in_rdy => data_in_rdy,
      data_in_vld => data_in_vld,
      rst_n => rst_n,
      uart_tx => uart_tx
    );
end STRUCTURE;
