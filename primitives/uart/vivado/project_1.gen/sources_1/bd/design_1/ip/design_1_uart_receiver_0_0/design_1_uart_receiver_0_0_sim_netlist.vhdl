-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 11 17:44:36 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mfall/Desktop/sandbox/primitives/uart/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_uart_receiver_0_0/design_1_uart_receiver_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_receiver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_receiver_0_0_uart_receiver is
  port (
    uart_word : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_word_vld : out STD_LOGIC;
    uart_rx : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    uart_word_rdy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_receiver_0_0_uart_receiver : entity is "uart_receiver";
end design_1_uart_receiver_0_0_uart_receiver;

architecture STRUCTURE of design_1_uart_receiver_0_0_uart_receiver is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \bits[0]_i_1_n_0\ : STD_LOGIC;
  signal \bits[1]_i_1_n_0\ : STD_LOGIC;
  signal \bits[2]_i_1_n_0\ : STD_LOGIC;
  signal \bits_reg_n_0_[0]\ : STD_LOGIC;
  signal \bits_reg_n_0_[1]\ : STD_LOGIC;
  signal \bits_reg_n_0_[2]\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal data : STD_LOGIC;
  signal data1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_4_n_0\ : STD_LOGIC;
  signal \data[7]_i_5_n_0\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal samples : STD_LOGIC;
  signal \samples[0]_i_1_n_0\ : STD_LOGIC;
  signal \samples[1]_i_1_n_0\ : STD_LOGIC;
  signal \samples[2]_i_1_n_0\ : STD_LOGIC;
  signal \samples[2]_i_3_n_0\ : STD_LOGIC;
  signal \samples[2]_i_4_n_0\ : STD_LOGIC;
  signal \samples[2]_i_5_n_0\ : STD_LOGIC;
  signal \samples[2]_i_6_n_0\ : STD_LOGIC;
  signal \samples[2]_i_7_n_0\ : STD_LOGIC;
  signal \samples[2]_i_8_n_0\ : STD_LOGIC;
  signal \samples_reg_n_0_[0]\ : STD_LOGIC;
  signal \samples_reg_n_0_[2]\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal temp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \^uart_word_vld\ : STD_LOGIC;
  signal vote_return : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S_START:01,S_PAR:011,S_STOP:11,S_IDLE:00,S_RX:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S_START:01,S_PAR:011,S_STOP:11,S_IDLE:00,S_RX:10";
  attribute SOFT_HLUTNM of \bits[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bits[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[10]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[10]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data[7]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data[7]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of done_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of done_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \samples[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \samples[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \samples[2]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \samples[2]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp[7]_i_2\ : label is "soft_lutpair5";
begin
  uart_word_vld <= \^uart_word_vld\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABB051100000000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => uart_rx,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => \data[7]_i_4_n_0\,
      I5 => rst_n,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAE00A200000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \temp[7]_i_1_n_0\,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[1]_i_3_n_0\,
      I4 => \state__1\(1),
      I5 => rst_n,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \bits_reg_n_0_[2]\,
      I1 => \bits_reg_n_0_[0]\,
      I2 => \bits_reg_n_0_[1]\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101010101CD"
    )
        port map (
      I0 => uart_rx,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => done_i_2_n_0,
      I4 => done_i_3_n_0,
      I5 => \data[7]_i_5_n_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555022A"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \samples_reg_n_0_[2]\,
      I2 => \samples_reg_n_0_[0]\,
      I3 => p_1_in,
      I4 => \state__0\(1),
      O => \state__1\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\bits[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F304"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \data[7]_i_4_n_0\,
      I3 => \bits_reg_n_0_[0]\,
      O => \bits[0]_i_1_n_0\
    );
\bits[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0020"
    )
        port map (
      I0 => \bits_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data[7]_i_4_n_0\,
      I4 => \bits_reg_n_0_[1]\,
      O => \bits[1]_i_1_n_0\
    );
\bits[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF07FF00000800"
    )
        port map (
      I0 => \bits_reg_n_0_[1]\,
      I1 => \bits_reg_n_0_[0]\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \data[7]_i_4_n_0\,
      I5 => \bits_reg_n_0_[2]\,
      O => \bits[2]_i_1_n_0\
    );
\bits_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bits[0]_i_1_n_0\,
      Q => \bits_reg_n_0_[0]\,
      R => \data[7]_i_1_n_0\
    );
\bits_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bits[1]_i_1_n_0\,
      Q => \bits_reg_n_0_[1]\,
      R => \data[7]_i_1_n_0\
    );
\bits_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bits[2]_i_1_n_0\,
      Q => \bits_reg_n_0_[2]\,
      R => \data[7]_i_1_n_0\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      O => cnt(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => uart_rx,
      O => \cnt[10]_i_1_n_0\
    );
\cnt[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[9]\,
      I2 => \cnt[10]_i_4_n_0\,
      I3 => \cnt_reg_n_0_[10]\,
      O => cnt(10)
    );
\cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => done_i_4_n_0,
      I2 => done_i_3_n_0,
      I3 => done_i_2_n_0,
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \cnt[10]_i_3_n_0\
    );
\cnt[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \cnt_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[7]\,
      I2 => \cnt_reg_n_0_[6]\,
      I3 => \cnt[9]_i_2_n_0\,
      O => \cnt[10]_i_4_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      O => cnt(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[2]\,
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[3]\,
      O => cnt(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[0]\,
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt[5]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[4]\,
      I3 => \cnt_reg_n_0_[5]\,
      O => cnt(5)
    );
\cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[0]\,
      O => \cnt[5]_i_2_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt[9]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[6]\,
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A208"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt[9]_i_2_n_0\,
      I3 => \cnt_reg_n_0_[7]\,
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \cnt[10]_i_3_n_0\,
      I1 => \cnt[9]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[6]\,
      I3 => \cnt_reg_n_0_[7]\,
      I4 => \cnt_reg_n_0_[8]\,
      O => cnt(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt[9]_i_2_n_0\,
      I2 => \cnt_reg_n_0_[6]\,
      I3 => \cnt_reg_n_0_[7]\,
      I4 => \cnt_reg_n_0_[8]\,
      O => cnt(9)
    );
\cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      I1 => \cnt_reg_n_0_[5]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => \cnt[9]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(0),
      Q => \cnt_reg_n_0_[0]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(10),
      Q => \cnt_reg_n_0_[10]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(7),
      Q => \cnt_reg_n_0_[7]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(8),
      Q => \cnt_reg_n_0_[8]\,
      R => \data[7]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[10]_i_1_n_0\,
      D => cnt(9),
      Q => \cnt_reg_n_0_[9]\,
      R => \data[7]_i_1_n_0\
    );
\data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(0),
      I1 => done_i_1_n_0,
      O => data1_in(0)
    );
\data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(1),
      I1 => done_i_1_n_0,
      O => data1_in(1)
    );
\data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(2),
      I1 => done_i_1_n_0,
      O => data1_in(2)
    );
\data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(3),
      I1 => done_i_1_n_0,
      O => data1_in(3)
    );
\data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(4),
      I1 => done_i_1_n_0,
      O => data1_in(4)
    );
\data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(5),
      I1 => done_i_1_n_0,
      O => data1_in(5)
    );
\data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(6),
      I1 => done_i_1_n_0,
      O => data1_in(6)
    );
\data[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F888888"
    )
        port map (
      I0 => uart_word_rdy,
      I1 => \^uart_word_vld\,
      I2 => \data[7]_i_4_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => data
    );
\data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => temp(7),
      I1 => done_i_1_n_0,
      O => data1_in(7)
    );
\data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[10]\,
      I3 => \cnt_reg_n_0_[5]\,
      I4 => done_i_3_n_0,
      I5 => \data[7]_i_5_n_0\,
      O => \data[7]_i_4_n_0\
    );
\data[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[3]\,
      O => \data[7]_i_5_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(0),
      Q => uart_word(0),
      R => \data[7]_i_1_n_0\
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(1),
      Q => uart_word(1),
      R => \data[7]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(2),
      Q => uart_word(2),
      R => \data[7]_i_1_n_0\
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(3),
      Q => uart_word(3),
      R => \data[7]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(4),
      Q => uart_word(4),
      R => \data[7]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(5),
      Q => uart_word(5),
      R => \data[7]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(6),
      Q => uart_word(6),
      R => \data[7]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => data1_in(7),
      Q => uart_word(7),
      R => \data[7]_i_1_n_0\
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => done_i_2_n_0,
      I3 => done_i_3_n_0,
      I4 => done_i_4_n_0,
      I5 => \cnt_reg_n_0_[0]\,
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      I1 => \cnt_reg_n_0_[4]\,
      I2 => \cnt_reg_n_0_[10]\,
      I3 => \cnt_reg_n_0_[5]\,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      I1 => \cnt_reg_n_0_[7]\,
      I2 => \cnt_reg_n_0_[8]\,
      O => done_i_3_n_0
    );
done_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => done_i_4_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => data,
      D => done_i_1_n_0,
      Q => \^uart_word_vld\,
      R => \data[7]_i_1_n_0\
    );
\samples[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in,
      I1 => samples,
      I2 => \samples_reg_n_0_[0]\,
      O => \samples[0]_i_1_n_0\
    );
\samples[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \samples_reg_n_0_[2]\,
      I1 => samples,
      I2 => p_1_in,
      O => \samples[1]_i_1_n_0\
    );
\samples[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => uart_rx,
      I1 => samples,
      I2 => \samples_reg_n_0_[2]\,
      O => \samples[2]_i_1_n_0\
    );
\samples[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020AA2020"
    )
        port map (
      I0 => \samples[2]_i_3_n_0\,
      I1 => \samples[2]_i_4_n_0\,
      I2 => \samples[2]_i_5_n_0\,
      I3 => \samples[2]_i_6_n_0\,
      I4 => \samples[2]_i_7_n_0\,
      I5 => \samples[2]_i_8_n_0\,
      O => samples
    );
\samples[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \samples[2]_i_3_n_0\
    );
\samples[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \cnt_reg_n_0_[8]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      O => \samples[2]_i_4_n_0\
    );
\samples[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[9]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[10]\,
      I4 => \cnt_reg_n_0_[6]\,
      I5 => \cnt_reg_n_0_[7]\,
      O => \samples[2]_i_5_n_0\
    );
\samples[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      I1 => \cnt_reg_n_0_[7]\,
      I2 => \cnt_reg_n_0_[10]\,
      I3 => \cnt_reg_n_0_[8]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \samples[2]_i_6_n_0\
    );
\samples[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[9]\,
      I2 => \cnt_reg_n_0_[0]\,
      O => \samples[2]_i_7_n_0\
    );
\samples[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      I1 => \cnt_reg_n_0_[4]\,
      O => \samples[2]_i_8_n_0\
    );
\samples_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \samples[0]_i_1_n_0\,
      Q => \samples_reg_n_0_[0]\,
      R => \data[7]_i_1_n_0\
    );
\samples_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \samples[1]_i_1_n_0\,
      Q => p_1_in,
      R => \data[7]_i_1_n_0\
    );
\samples_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \samples[2]_i_1_n_0\,
      Q => \samples_reg_n_0_[2]\,
      R => \data[7]_i_1_n_0\
    );
\temp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => done_i_2_n_0,
      I3 => done_i_3_n_0,
      I4 => done_i_4_n_0,
      I5 => \cnt_reg_n_0_[0]\,
      O => \temp[7]_i_1_n_0\
    );
\temp[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_1_in,
      I1 => \samples_reg_n_0_[0]\,
      I2 => \samples_reg_n_0_[2]\,
      O => vote_return
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(1),
      Q => temp(0),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(2),
      Q => temp(1),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(3),
      Q => temp(2),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(4),
      Q => temp(3),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(5),
      Q => temp(4),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(6),
      Q => temp(5),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => temp(7),
      Q => temp(6),
      R => \data[7]_i_1_n_0\
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \temp[7]_i_1_n_0\,
      D => vote_return,
      Q => temp(7),
      R => \data[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_receiver_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    uart_rx : in STD_LOGIC;
    uart_word : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_word_vld : out STD_LOGIC;
    uart_word_rdy : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_receiver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_receiver_0_0 : entity is "design_1_uart_receiver_0_0,uart_receiver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uart_receiver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uart_receiver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uart_receiver_0_0 : entity is "uart_receiver,Vivado 2020.2";
end design_1_uart_receiver_0_0;

architecture STRUCTURE of design_1_uart_receiver_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 175000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_uart_receiver_0_0_uart_receiver
     port map (
      clk => clk,
      rst_n => rst_n,
      uart_rx => uart_rx,
      uart_word(7 downto 0) => uart_word(7 downto 0),
      uart_word_rdy => uart_word_rdy,
      uart_word_vld => uart_word_vld
    );
end STRUCTURE;
