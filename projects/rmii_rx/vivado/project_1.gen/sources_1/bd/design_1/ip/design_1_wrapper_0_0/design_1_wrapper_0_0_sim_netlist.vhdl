-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 17 17:13:26 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_wrapper_0_0/design_1_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_bin_gry_ctr is
  port (
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sys_rst_n : in STD_LOGIC;
    \crc_q_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_bin_gry_ctr : entity is "bin_gry_ctr";
end design_1_wrapper_0_0_bin_gry_ctr;

architecture STRUCTURE of design_1_wrapper_0_0_bin_gry_ctr is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bin_cnt_next_carry__0_n_0\ : STD_LOGIC;
  signal \bin_cnt_next_carry__0_n_1\ : STD_LOGIC;
  signal \bin_cnt_next_carry__0_n_2\ : STD_LOGIC;
  signal \bin_cnt_next_carry__0_n_3\ : STD_LOGIC;
  signal \bin_cnt_next_carry__1_n_2\ : STD_LOGIC;
  signal \bin_cnt_next_carry__1_n_3\ : STD_LOGIC;
  signal \bin_cnt_next_carry_i_1__0_n_0\ : STD_LOGIC;
  signal bin_cnt_next_carry_n_0 : STD_LOGIC;
  signal bin_cnt_next_carry_n_1 : STD_LOGIC;
  signal bin_cnt_next_carry_n_2 : STD_LOGIC;
  signal bin_cnt_next_carry_n_3 : STD_LOGIC;
  signal bin_cnt_reg_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bram_reg_i_13_n_0 : STD_LOGIC;
  signal bram_reg_i_2_n_2 : STD_LOGIC;
  signal bram_reg_i_2_n_3 : STD_LOGIC;
  signal bram_reg_i_2_n_5 : STD_LOGIC;
  signal bram_reg_i_3_n_0 : STD_LOGIC;
  signal bram_reg_i_3_n_1 : STD_LOGIC;
  signal bram_reg_i_3_n_2 : STD_LOGIC;
  signal bram_reg_i_3_n_3 : STD_LOGIC;
  signal bram_reg_i_4_n_0 : STD_LOGIC;
  signal bram_reg_i_4_n_1 : STD_LOGIC;
  signal bram_reg_i_4_n_2 : STD_LOGIC;
  signal bram_reg_i_4_n_3 : STD_LOGIC;
  signal gry_cnt_next : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_bin_cnt_next_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bin_cnt_next_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_bram_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_bram_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bin_cnt_next_carry : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of bram_reg_i_2 : label is 35;
  attribute ADDER_THRESHOLD of bram_reg_i_3 : label is 35;
  attribute ADDER_THRESHOLD of bram_reg_i_4 : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gry_cnt_reg[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gry_cnt_reg[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gry_cnt_reg[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gry_cnt_reg[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gry_cnt_reg[4]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gry_cnt_reg[5]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gry_cnt_reg[6]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gry_cnt_reg[7]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gry_cnt_reg[8]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gry_cnt_reg[9]_i_1__0\ : label is "soft_lutpair8";
begin
  ADDRBWRADDR(9 downto 0) <= \^addrbwraddr\(9 downto 0);
  Q(10 downto 0) <= \^q\(10 downto 0);
  SR(0) <= \^sr\(0);
bin_cnt_next_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bin_cnt_next_carry_n_0,
      CO(2) => bin_cnt_next_carry_n_1,
      CO(1) => bin_cnt_next_carry_n_2,
      CO(0) => bin_cnt_next_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => bin_cnt_reg_reg(0),
      O(3 downto 1) => \p_1_in__0\(3 downto 1),
      O(0) => \^addrbwraddr\(0),
      S(3 downto 1) => bin_cnt_reg_reg(3 downto 1),
      S(0) => \bin_cnt_next_carry_i_1__0_n_0\
    );
\bin_cnt_next_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bin_cnt_next_carry_n_0,
      CO(3) => \bin_cnt_next_carry__0_n_0\,
      CO(2) => \bin_cnt_next_carry__0_n_1\,
      CO(1) => \bin_cnt_next_carry__0_n_2\,
      CO(0) => \bin_cnt_next_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_1_in__0\(7 downto 4),
      S(3 downto 0) => bin_cnt_reg_reg(7 downto 4)
    );
\bin_cnt_next_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bin_cnt_next_carry__0_n_0\,
      CO(3 downto 2) => \NLW_bin_cnt_next_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bin_cnt_next_carry__1_n_2\,
      CO(0) => \bin_cnt_next_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bin_cnt_next_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \p_1_in__0\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => bin_cnt_reg_reg(10 downto 8)
    );
\bin_cnt_next_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bin_cnt_reg_reg(0),
      I1 => CO(0),
      O => \bin_cnt_next_carry_i_1__0_n_0\
    );
\bin_cnt_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bin_cnt_reg_reg(0),
      I1 => CO(0),
      O => \p_1_in__0\(0)
    );
\bin_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => bin_cnt_reg_reg(0),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(10),
      Q => bin_cnt_reg_reg(10),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => bin_cnt_reg_reg(1),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => bin_cnt_reg_reg(2),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => bin_cnt_reg_reg(3),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(4),
      Q => bin_cnt_reg_reg(4),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => bin_cnt_reg_reg(5),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => bin_cnt_reg_reg(6),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => bin_cnt_reg_reg(7),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(8),
      Q => bin_cnt_reg_reg(8),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(9),
      Q => bin_cnt_reg_reg(9),
      R => \^sr\(0)
    );
bram_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bin_cnt_reg_reg(0),
      I1 => CO(0),
      O => bram_reg_i_13_n_0
    );
bram_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => bram_reg_i_3_n_0,
      CO(3 downto 2) => NLW_bram_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => bram_reg_i_2_n_2,
      CO(0) => bram_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_bram_reg_i_2_O_UNCONNECTED(3),
      O(2) => bram_reg_i_2_n_5,
      O(1 downto 0) => \^addrbwraddr\(9 downto 8),
      S(3) => '0',
      S(2 downto 0) => bin_cnt_reg_reg(10 downto 8)
    );
bram_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => bram_reg_i_4_n_0,
      CO(3) => bram_reg_i_3_n_0,
      CO(2) => bram_reg_i_3_n_1,
      CO(1) => bram_reg_i_3_n_2,
      CO(0) => bram_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^addrbwraddr\(7 downto 4),
      S(3 downto 0) => bin_cnt_reg_reg(7 downto 4)
    );
bram_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bram_reg_i_4_n_0,
      CO(2) => bram_reg_i_4_n_1,
      CO(1) => bram_reg_i_4_n_2,
      CO(0) => bram_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => bin_cnt_reg_reg(0),
      O(3 downto 1) => \^addrbwraddr\(3 downto 1),
      O(0) => NLW_bram_reg_i_4_O_UNCONNECTED(0),
      S(3 downto 1) => bin_cnt_reg_reg(3 downto 1),
      S(0) => bram_reg_i_13_n_0
    );
\gry_cnt_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(1),
      I1 => \^addrbwraddr\(0),
      O => gry_cnt_next(0)
    );
\gry_cnt_reg[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \^sr\(0)
    );
\gry_cnt_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(2),
      I1 => \^addrbwraddr\(1),
      O => gry_cnt_next(1)
    );
\gry_cnt_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(3),
      I1 => \^addrbwraddr\(2),
      O => gry_cnt_next(2)
    );
\gry_cnt_reg[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(4),
      I1 => \^addrbwraddr\(3),
      O => gry_cnt_next(3)
    );
\gry_cnt_reg[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(5),
      I1 => \^addrbwraddr\(4),
      O => gry_cnt_next(4)
    );
\gry_cnt_reg[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(6),
      I1 => \^addrbwraddr\(5),
      O => gry_cnt_next(5)
    );
\gry_cnt_reg[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(7),
      I1 => \^addrbwraddr\(6),
      O => gry_cnt_next(6)
    );
\gry_cnt_reg[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(8),
      I1 => \^addrbwraddr\(7),
      O => gry_cnt_next(7)
    );
\gry_cnt_reg[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(9),
      I1 => \^addrbwraddr\(8),
      O => gry_cnt_next(8)
    );
\gry_cnt_reg[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bram_reg_i_2_n_5,
      I1 => \^addrbwraddr\(9),
      O => gry_cnt_next(9)
    );
\gry_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => bram_reg_i_2_n_5,
      Q => \^q\(10),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \crc_q_reg[0]\(9),
      I2 => \^q\(10),
      I3 => \crc_q_reg[0]\(10),
      O => S(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \crc_q_reg[0]\(6),
      I2 => \crc_q_reg[0]\(8),
      I3 => \^q\(8),
      I4 => \crc_q_reg[0]\(7),
      I5 => \^q\(7),
      O => S(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \crc_q_reg[0]\(3),
      I2 => \crc_q_reg[0]\(5),
      I3 => \^q\(5),
      I4 => \crc_q_reg[0]\(4),
      I5 => \^q\(4),
      O => S(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \crc_q_reg[0]\(0),
      I2 => \crc_q_reg[0]\(2),
      I3 => \^q\(2),
      I4 => \crc_q_reg[0]\(1),
      I5 => \^q\(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_bin_gry_ctr_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gry_cnt_reg_reg[10]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rmii_rx_rst_n : in STD_LOGIC;
    \_carry\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_byte_vld : in STD_LOGIC;
    rmii_rx_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_bin_gry_ctr_0 : entity is "bin_gry_ctr";
end design_1_wrapper_0_0_bin_gry_ctr_0;

architecture STRUCTURE of design_1_wrapper_0_0_bin_gry_ctr_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bin_cnt_next_carry__0_n_0\ : STD_LOGIC;
  signal \bin_cnt_next_carry__0_n_1\ : STD_LOGIC;
  signal \bin_cnt_next_carry__0_n_2\ : STD_LOGIC;
  signal \bin_cnt_next_carry__0_n_3\ : STD_LOGIC;
  signal \bin_cnt_next_carry__1_n_2\ : STD_LOGIC;
  signal \bin_cnt_next_carry__1_n_3\ : STD_LOGIC;
  signal bin_cnt_next_carry_i_1_n_0 : STD_LOGIC;
  signal bin_cnt_next_carry_n_0 : STD_LOGIC;
  signal bin_cnt_next_carry_n_1 : STD_LOGIC;
  signal bin_cnt_next_carry_n_2 : STD_LOGIC;
  signal bin_cnt_next_carry_n_3 : STD_LOGIC;
  signal bin_cnt_next_carry_n_7 : STD_LOGIC;
  signal bin_cnt_reg_reg : STD_LOGIC_VECTOR ( 10 to 10 );
  signal gry_cnt_next : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gry_cnt_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \^gry_cnt_reg_reg[10]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gry_cnt_reg_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \gry_cnt_reg_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_bin_cnt_next_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bin_cnt_next_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gry_cnt_reg_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_gry_cnt_reg_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gry_cnt_reg_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bin_cnt_next_carry : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gry_cnt_reg[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gry_cnt_reg[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gry_cnt_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gry_cnt_reg[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gry_cnt_reg[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gry_cnt_reg[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gry_cnt_reg[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gry_cnt_reg[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gry_cnt_reg[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gry_cnt_reg[9]_i_1\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD of \gry_cnt_reg_reg[10]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \gry_cnt_reg_reg[10]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \gry_cnt_reg_reg[3]_i_2\ : label is 35;
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  SR(0) <= \^sr\(0);
  \gry_cnt_reg_reg[10]_0\(10 downto 0) <= \^gry_cnt_reg_reg[10]_0\(10 downto 0);
\_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => \^gry_cnt_reg_reg[10]_0\(9),
      I1 => \_carry\(9),
      I2 => \^gry_cnt_reg_reg[10]_0\(10),
      I3 => \_carry\(10),
      O => S(3)
    );
\_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gry_cnt_reg_reg[10]_0\(6),
      I1 => \_carry\(6),
      I2 => \_carry\(8),
      I3 => \^gry_cnt_reg_reg[10]_0\(8),
      I4 => \_carry\(7),
      I5 => \^gry_cnt_reg_reg[10]_0\(7),
      O => S(2)
    );
\_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gry_cnt_reg_reg[10]_0\(3),
      I1 => \_carry\(3),
      I2 => \_carry\(5),
      I3 => \^gry_cnt_reg_reg[10]_0\(5),
      I4 => \_carry\(4),
      I5 => \^gry_cnt_reg_reg[10]_0\(4),
      O => S(1)
    );
\_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gry_cnt_reg_reg[10]_0\(0),
      I1 => \_carry\(0),
      I2 => \_carry\(2),
      I3 => \^gry_cnt_reg_reg[10]_0\(2),
      I4 => \_carry\(1),
      I5 => \^gry_cnt_reg_reg[10]_0\(1),
      O => S(0)
    );
bin_cnt_next_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => bin_cnt_next_carry_n_0,
      CO(2) => bin_cnt_next_carry_n_1,
      CO(1) => bin_cnt_next_carry_n_2,
      CO(0) => bin_cnt_next_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3 downto 1) => p_1_in(3 downto 1),
      O(0) => bin_cnt_next_carry_n_7,
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => bin_cnt_next_carry_i_1_n_0
    );
\bin_cnt_next_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => bin_cnt_next_carry_n_0,
      CO(3) => \bin_cnt_next_carry__0_n_0\,
      CO(2) => \bin_cnt_next_carry__0_n_1\,
      CO(1) => \bin_cnt_next_carry__0_n_2\,
      CO(0) => \bin_cnt_next_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(7 downto 4),
      S(3 downto 0) => \^q\(7 downto 4)
    );
\bin_cnt_next_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bin_cnt_next_carry__0_n_0\,
      CO(3 downto 2) => \NLW_bin_cnt_next_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bin_cnt_next_carry__1_n_2\,
      CO(0) => \bin_cnt_next_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bin_cnt_next_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(10 downto 8),
      S(3) => '0',
      S(2) => bin_cnt_reg_reg(10),
      S(1 downto 0) => \^q\(9 downto 8)
    );
bin_cnt_next_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => CO(0),
      I2 => rx_byte_vld,
      O => bin_cnt_next_carry_i_1_n_0
    );
\bin_cnt_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => CO(0),
      I2 => rx_byte_vld,
      O => p_1_in(0)
    );
\bin_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(10),
      Q => bin_cnt_reg_reg(10),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => p_1_in(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\gry_cnt_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[3]_i_2_n_6\,
      I1 => bin_cnt_next_carry_n_7,
      O => gry_cnt_next(0)
    );
\gry_cnt_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[3]_i_2_n_5\,
      I1 => \gry_cnt_reg_reg[3]_i_2_n_6\,
      O => gry_cnt_next(1)
    );
\gry_cnt_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[3]_i_2_n_4\,
      I1 => \gry_cnt_reg_reg[3]_i_2_n_5\,
      O => gry_cnt_next(2)
    );
\gry_cnt_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_2_n_7\,
      I1 => \gry_cnt_reg_reg[3]_i_2_n_4\,
      O => gry_cnt_next(3)
    );
\gry_cnt_reg[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => CO(0),
      I2 => rx_byte_vld,
      O => \gry_cnt_reg[3]_i_3_n_0\
    );
\gry_cnt_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_2_n_6\,
      I1 => \gry_cnt_reg_reg[10]_i_2_n_7\,
      O => gry_cnt_next(4)
    );
\gry_cnt_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_2_n_5\,
      I1 => \gry_cnt_reg_reg[10]_i_2_n_6\,
      O => gry_cnt_next(5)
    );
\gry_cnt_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_2_n_4\,
      I1 => \gry_cnt_reg_reg[10]_i_2_n_5\,
      O => gry_cnt_next(6)
    );
\gry_cnt_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_1_n_7\,
      I1 => \gry_cnt_reg_reg[10]_i_2_n_4\,
      O => gry_cnt_next(7)
    );
\gry_cnt_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_1_n_6\,
      I1 => \gry_cnt_reg_reg[10]_i_1_n_7\,
      O => gry_cnt_next(8)
    );
\gry_cnt_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gry_cnt_reg_reg[10]_i_1_n_5\,
      I1 => \gry_cnt_reg_reg[10]_i_1_n_6\,
      O => gry_cnt_next(9)
    );
\gry_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(0),
      Q => \^gry_cnt_reg_reg[10]_0\(0),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => \gry_cnt_reg_reg[10]_i_1_n_5\,
      Q => \^gry_cnt_reg_reg[10]_0\(10),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gry_cnt_reg_reg[10]_i_2_n_0\,
      CO(3 downto 2) => \NLW_gry_cnt_reg_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \gry_cnt_reg_reg[10]_i_1_n_2\,
      CO(0) => \gry_cnt_reg_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_gry_cnt_reg_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2) => \gry_cnt_reg_reg[10]_i_1_n_5\,
      O(1) => \gry_cnt_reg_reg[10]_i_1_n_6\,
      O(0) => \gry_cnt_reg_reg[10]_i_1_n_7\,
      S(3) => '0',
      S(2) => bin_cnt_reg_reg(10),
      S(1 downto 0) => \^q\(9 downto 8)
    );
\gry_cnt_reg_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gry_cnt_reg_reg[3]_i_2_n_0\,
      CO(3) => \gry_cnt_reg_reg[10]_i_2_n_0\,
      CO(2) => \gry_cnt_reg_reg[10]_i_2_n_1\,
      CO(1) => \gry_cnt_reg_reg[10]_i_2_n_2\,
      CO(0) => \gry_cnt_reg_reg[10]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gry_cnt_reg_reg[10]_i_2_n_4\,
      O(2) => \gry_cnt_reg_reg[10]_i_2_n_5\,
      O(1) => \gry_cnt_reg_reg[10]_i_2_n_6\,
      O(0) => \gry_cnt_reg_reg[10]_i_2_n_7\,
      S(3 downto 0) => \^q\(7 downto 4)
    );
\gry_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(1),
      Q => \^gry_cnt_reg_reg[10]_0\(1),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(2),
      Q => \^gry_cnt_reg_reg[10]_0\(2),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(3),
      Q => \^gry_cnt_reg_reg[10]_0\(3),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gry_cnt_reg_reg[3]_i_2_n_0\,
      CO(2) => \gry_cnt_reg_reg[3]_i_2_n_1\,
      CO(1) => \gry_cnt_reg_reg[3]_i_2_n_2\,
      CO(0) => \gry_cnt_reg_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(0),
      O(3) => \gry_cnt_reg_reg[3]_i_2_n_4\,
      O(2) => \gry_cnt_reg_reg[3]_i_2_n_5\,
      O(1) => \gry_cnt_reg_reg[3]_i_2_n_6\,
      O(0) => \NLW_gry_cnt_reg_reg[3]_i_2_O_UNCONNECTED\(0),
      S(3 downto 1) => \^q\(3 downto 1),
      S(0) => \gry_cnt_reg[3]_i_3_n_0\
    );
\gry_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(4),
      Q => \^gry_cnt_reg_reg[10]_0\(4),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(5),
      Q => \^gry_cnt_reg_reg[10]_0\(5),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(6),
      Q => \^gry_cnt_reg_reg[10]_0\(6),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(7),
      Q => \^gry_cnt_reg_reg[10]_0\(7),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(8),
      Q => \^gry_cnt_reg_reg[10]_0\(8),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => gry_cnt_next(9),
      Q => \^gry_cnt_reg_reg[10]_0\(9),
      R => \^sr\(0)
    );
\rx_data_reg[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rmii_rx_rst_n,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_crc_8 is
  port (
    crc_vld : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \crc_q_reg[31]_0\ : out STD_LOGIC;
    \crc_q_reg[25]_0\ : out STD_LOGIC;
    sys_byte_vld : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    crc_vld_0 : in STD_LOGIC;
    crc_vld_1 : in STD_LOGIC;
    \crc_q_reg[28]_0\ : in STD_LOGIC;
    sys_byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    crc_vld_2 : in STD_LOGIC;
    \crc_q_reg[6]_0\ : in STD_LOGIC;
    \crc_q_reg[9]_0\ : in STD_LOGIC;
    \crc_q_reg[16]_0\ : in STD_LOGIC;
    \crc_q_reg[15]_0\ : in STD_LOGIC;
    \crc_q_reg[10]_0\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_crc_8 : entity is "crc_8";
end design_1_wrapper_0_0_crc_8;

architecture STRUCTURE of design_1_wrapper_0_0_crc_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal crc_d : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \crc_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[14]_i_2_n_0\ : STD_LOGIC;
  signal \^crc_q_reg[25]_0\ : STD_LOGIC;
  signal \^crc_q_reg[31]_0\ : STD_LOGIC;
  signal \crc_q_reg_n_0_[0]\ : STD_LOGIC;
  signal crc_vld_INST_0_i_10_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_13_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_15_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_1_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_2_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_3_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_4_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_5_n_0 : STD_LOGIC;
  signal crc_vld_INST_0_i_7_n_0 : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_1_in21_in : STD_LOGIC;
  signal p_1_in23_in : STD_LOGIC;
  signal p_1_in25_in : STD_LOGIC;
  signal p_1_in27_in : STD_LOGIC;
  signal p_1_in29_in : STD_LOGIC;
  signal p_1_in31_in : STD_LOGIC;
  signal p_1_in33_in : STD_LOGIC;
  signal p_1_in35_in : STD_LOGIC;
  signal p_1_in39_in : STD_LOGIC;
  signal p_1_in41_in : STD_LOGIC;
  signal p_1_in43_in : STD_LOGIC;
  signal p_1_in45_in : STD_LOGIC;
  signal p_1_in47_in : STD_LOGIC;
  signal p_1_in49_in : STD_LOGIC;
  signal p_1_in51_in : STD_LOGIC;
  signal p_1_in53_in : STD_LOGIC;
  signal p_1_in55_in : STD_LOGIC;
  signal p_1_in59_in : STD_LOGIC;
  signal p_1_in61_in : STD_LOGIC;
  signal p_1_in63_in : STD_LOGIC;
  signal p_1_in65_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc_q[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \crc_q[12]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crc_q[14]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \crc_q[19]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \crc_q[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \crc_q[31]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \crc_q[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \crc_q[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crc_q[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of crc_vld_INST_0_i_6 : label is "soft_lutpair1";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \crc_q_reg[25]_0\ <= \^crc_q_reg[25]_0\;
  \crc_q_reg[31]_0\ <= \^crc_q_reg[31]_0\;
\crc_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in23_in,
      I1 => p_0_in3_in,
      I2 => sys_byte(5),
      I3 => sys_byte(2),
      I4 => \^q\(6),
      I5 => \crc_q_reg[10]_0\,
      O => crc_d(10)
    );
\crc_q[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_1_in25_in,
      I1 => \^q\(3),
      I2 => sys_byte(6),
      I3 => crc_vld_INST_0_i_7_n_0,
      O => crc_d(11)
    );
\crc_q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in27_in,
      I1 => \crc_q[12]_i_2_n_0\,
      I2 => \crc_q_reg[9]_0\,
      I3 => \crc_q_reg[6]_0\,
      I4 => sys_byte(7),
      I5 => \^q\(2),
      O => crc_d(12)
    );
\crc_q[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => sys_byte(5),
      O => \crc_q[12]_i_2_n_0\
    );
\crc_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in29_in,
      I1 => \crc_q_reg[16]_0\,
      I2 => \crc_q_reg[6]_0\,
      I3 => \^crc_q_reg[31]_0\,
      I4 => sys_byte(4),
      I5 => \^q\(4),
      O => crc_d(13)
    );
\crc_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in31_in,
      I1 => \crc_q_reg[28]_0\,
      I2 => \^q\(5),
      I3 => sys_byte(3),
      I4 => \^crc_q_reg[31]_0\,
      I5 => \crc_q[14]_i_2_n_0\,
      O => crc_d(14)
    );
\crc_q[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => sys_byte(4),
      O => \crc_q[14]_i_2_n_0\
    );
\crc_q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_1_in33_in,
      I1 => \^q\(4),
      I2 => sys_byte(4),
      I3 => \crc_q_reg[15]_0\,
      O => crc_d(15)
    );
\crc_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in35_in,
      I1 => \^q\(2),
      I2 => sys_byte(7),
      I3 => \crc_q_reg[16]_0\,
      I4 => \^q\(5),
      I5 => sys_byte(3),
      O => crc_d(16)
    );
\crc_q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(0),
      I1 => sys_byte(2),
      I2 => \^q\(6),
      I3 => sys_byte(1),
      I4 => \^q\(7),
      I5 => \^crc_q_reg[25]_0\,
      O => crc_d(17)
    );
\crc_q[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_1_in39_in,
      I1 => sys_byte(1),
      I2 => \^q\(7),
      I3 => \^crc_q_reg[31]_0\,
      O => crc_d(18)
    );
\crc_q[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => sys_byte(0),
      I1 => \^q\(8),
      I2 => p_1_in41_in,
      I3 => sys_byte(4),
      I4 => \^q\(4),
      O => crc_d(19)
    );
\crc_q[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in43_in,
      I1 => sys_byte(3),
      I2 => \^q\(5),
      O => crc_d(20)
    );
\crc_q[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in45_in,
      I1 => \^q\(6),
      I2 => sys_byte(2),
      O => crc_d(21)
    );
\crc_q[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in47_in,
      I1 => \^q\(2),
      I2 => sys_byte(7),
      O => crc_d(22)
    );
\crc_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => sys_byte(7),
      I2 => \^crc_q_reg[25]_0\,
      I3 => \^q\(7),
      I4 => sys_byte(1),
      I5 => p_1_in49_in,
      O => crc_d(23)
    );
\crc_q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in51_in,
      I1 => \^crc_q_reg[25]_0\,
      I2 => p_0_in3_in,
      I3 => sys_byte(5),
      I4 => sys_byte(0),
      I5 => \^q\(8),
      O => crc_d(24)
    );
\crc_q[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => sys_byte(4),
      I1 => p_0_in3_in,
      I2 => sys_byte(5),
      I3 => \^q\(4),
      I4 => p_1_in53_in,
      O => crc_d(25)
    );
\crc_q[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_1_in55_in,
      I1 => sys_byte(1),
      I2 => \^q\(7),
      I3 => crc_vld_INST_0_i_7_n_0,
      O => crc_d(26)
    );
\crc_q[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => sys_byte(6),
      I3 => \crc_q_reg[15]_0\,
      O => crc_d(27)
    );
\crc_q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in59_in,
      I1 => \crc_q_reg[28]_0\,
      I2 => p_0_in3_in,
      I3 => sys_byte(5),
      I4 => sys_byte(2),
      I5 => \^q\(6),
      O => crc_d(28)
    );
\crc_q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in61_in,
      I1 => \crc_q_reg[28]_0\,
      I2 => sys_byte(0),
      I3 => \^q\(8),
      I4 => \^q\(4),
      I5 => sys_byte(4),
      O => crc_d(29)
    );
\crc_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => sys_byte(7),
      I2 => \^crc_q_reg[25]_0\,
      I3 => \^q\(7),
      I4 => sys_byte(1),
      I5 => \^crc_q_reg[31]_0\,
      O => crc_d(2)
    );
\crc_q[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => sys_byte(0),
      I1 => \^q\(8),
      I2 => p_1_in63_in,
      I3 => sys_byte(3),
      I4 => \^q\(5),
      O => crc_d(30)
    );
\crc_q[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in65_in,
      I1 => \^q\(6),
      I2 => sys_byte(2),
      O => crc_d(31)
    );
\crc_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => sys_byte(4),
      I2 => \^crc_q_reg[31]_0\,
      I3 => sys_byte(6),
      I4 => \^q\(3),
      O => crc_d(3)
    );
\crc_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => sys_byte(1),
      I1 => \^q\(7),
      I2 => p_0_in3_in,
      I3 => sys_byte(5),
      I4 => crc_vld_INST_0_i_7_n_0,
      O => crc_d(4)
    );
\crc_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^crc_q_reg[31]_0\,
      I1 => sys_byte(3),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => sys_byte(2),
      I5 => \crc_q_reg[6]_0\,
      O => crc_d(6)
    );
\crc_q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \crc_q_reg_n_0_[0]\,
      I1 => \^q\(3),
      I2 => sys_byte(6),
      I3 => crc_vld_INST_0_i_7_n_0,
      O => crc_d(8)
    );
\crc_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in21_in,
      I1 => \^q\(3),
      I2 => sys_byte(6),
      I3 => p_0_in3_in,
      I4 => sys_byte(5),
      I5 => \crc_q_reg[9]_0\,
      O => crc_d(9)
    );
\crc_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => D(0),
      Q => \crc_q_reg_n_0_[0]\,
      S => SS(0)
    );
\crc_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(10),
      Q => p_1_in39_in,
      S => SS(0)
    );
\crc_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(11),
      Q => p_1_in41_in,
      S => SS(0)
    );
\crc_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(12),
      Q => p_1_in43_in,
      S => SS(0)
    );
\crc_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(13),
      Q => p_1_in45_in,
      S => SS(0)
    );
\crc_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(14),
      Q => p_1_in47_in,
      S => SS(0)
    );
\crc_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(15),
      Q => p_1_in49_in,
      S => SS(0)
    );
\crc_q_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(16),
      Q => p_1_in51_in,
      S => SS(0)
    );
\crc_q_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(17),
      Q => p_1_in53_in,
      S => SS(0)
    );
\crc_q_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(18),
      Q => p_1_in55_in,
      S => SS(0)
    );
\crc_q_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(19),
      Q => \^q\(1),
      S => SS(0)
    );
\crc_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => D(1),
      Q => p_1_in21_in,
      S => SS(0)
    );
\crc_q_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(20),
      Q => p_1_in59_in,
      S => SS(0)
    );
\crc_q_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(21),
      Q => p_1_in61_in,
      S => SS(0)
    );
\crc_q_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(22),
      Q => p_1_in63_in,
      S => SS(0)
    );
\crc_q_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(23),
      Q => p_1_in65_in,
      S => SS(0)
    );
\crc_q_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(24),
      Q => \^q\(2),
      S => SS(0)
    );
\crc_q_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(25),
      Q => \^q\(3),
      S => SS(0)
    );
\crc_q_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(26),
      Q => p_0_in3_in,
      S => SS(0)
    );
\crc_q_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(27),
      Q => \^q\(4),
      S => SS(0)
    );
\crc_q_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(28),
      Q => \^q\(5),
      S => SS(0)
    );
\crc_q_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(29),
      Q => \^q\(6),
      S => SS(0)
    );
\crc_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(2),
      Q => p_1_in23_in,
      S => SS(0)
    );
\crc_q_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(30),
      Q => \^q\(7),
      S => SS(0)
    );
\crc_q_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(31),
      Q => \^q\(8),
      S => SS(0)
    );
\crc_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(3),
      Q => p_1_in25_in,
      S => SS(0)
    );
\crc_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(4),
      Q => p_1_in27_in,
      S => SS(0)
    );
\crc_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => D(2),
      Q => p_1_in29_in,
      S => SS(0)
    );
\crc_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(6),
      Q => p_1_in31_in,
      S => SS(0)
    );
\crc_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => D(3),
      Q => p_1_in33_in,
      S => SS(0)
    );
\crc_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(8),
      Q => p_1_in35_in,
      S => SS(0)
    );
\crc_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => sys_byte_vld,
      D => crc_d(9),
      Q => \^q\(0),
      S => SS(0)
    );
crc_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => crc_vld_INST_0_i_1_n_0,
      I1 => crc_vld_INST_0_i_2_n_0,
      I2 => crc_vld_INST_0_i_3_n_0,
      I3 => crc_vld_INST_0_i_4_n_0,
      I4 => crc_vld_INST_0_i_5_n_0,
      I5 => sys_byte_vld,
      O => crc_vld
    );
crc_vld_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFD7FFFFFFFFF"
    )
        port map (
      I0 => crc_d(10),
      I1 => p_1_in25_in,
      I2 => \crc_q_reg_n_0_[0]\,
      I3 => \^crc_q_reg[25]_0\,
      I4 => crc_vld_INST_0_i_7_n_0,
      I5 => crc_d(25),
      O => crc_vld_INST_0_i_1_n_0
    );
crc_vld_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF96699669FFFF"
    )
        port map (
      I0 => \^crc_q_reg[25]_0\,
      I1 => \^crc_q_reg[31]_0\,
      I2 => sys_byte(4),
      I3 => \^q\(4),
      I4 => \crc_q_reg[16]_0\,
      I5 => p_1_in65_in,
      O => crc_vld_INST_0_i_10_n_0
    );
crc_vld_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBED7D7BE"
    )
        port map (
      I0 => p_1_in47_in,
      I1 => \^q\(2),
      I2 => sys_byte(7),
      I3 => \crc_q_reg[6]_0\,
      I4 => p_1_in49_in,
      I5 => crc_vld_INST_0_i_15_n_0,
      O => crc_vld_INST_0_i_13_n_0
    );
crc_vld_INST_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9696FF96FFFF96"
    )
        port map (
      I0 => sys_byte(2),
      I1 => \^q\(6),
      I2 => p_1_in45_in,
      I3 => \^q\(5),
      I4 => sys_byte(3),
      I5 => p_1_in43_in,
      O => crc_vld_INST_0_i_15_n_0
    );
crc_vld_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF7FFF7F7FFF"
    )
        port map (
      I0 => crc_d(14),
      I1 => crc_d(15),
      I2 => crc_d(12),
      I3 => p_1_in51_in,
      I4 => \^crc_q_reg[25]_0\,
      I5 => \^crc_q_reg[31]_0\,
      O => crc_vld_INST_0_i_2_n_0
    );
crc_vld_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => D(2),
      I1 => crc_d(4),
      I2 => crc_d(26),
      I3 => crc_d(6),
      I4 => crc_vld_2,
      I5 => crc_vld_INST_0_i_10_n_0,
      O => crc_vld_INST_0_i_3_n_0
    );
crc_vld_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => crc_d(29),
      I1 => crc_d(28),
      I2 => crc_vld_0,
      I3 => crc_d(9),
      I4 => crc_d(13),
      I5 => crc_vld_1,
      O => crc_vld_INST_0_i_4_n_0
    );
crc_vld_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => crc_vld_INST_0_i_13_n_0,
      I1 => crc_d(30),
      I2 => crc_d(18),
      I3 => crc_d(19),
      I4 => crc_d(16),
      O => crc_vld_INST_0_i_5_n_0
    );
crc_vld_INST_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => sys_byte(6),
      O => \^crc_q_reg[25]_0\
    );
crc_vld_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => sys_byte(7),
      I2 => \^q\(4),
      I3 => sys_byte(4),
      I4 => sys_byte(3),
      I5 => \^q\(5),
      O => crc_vld_INST_0_i_7_n_0
    );
crc_vld_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(8),
      I1 => sys_byte(0),
      I2 => sys_byte(5),
      I3 => p_0_in3_in,
      O => \^crc_q_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_fifo_bram is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_reg_0 : out STD_LOGIC;
    bram_reg_1 : out STD_LOGIC;
    \crc_q_reg[19]\ : out STD_LOGIC;
    bram_reg_2 : out STD_LOGIC;
    bram_reg_3 : out STD_LOGIC;
    bram_reg_4 : out STD_LOGIC;
    \crc_q_reg[9]\ : out STD_LOGIC;
    bram_reg_5 : out STD_LOGIC;
    bram_reg_6 : out STD_LOGIC;
    rmii_rx_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_rst_n : in STD_LOGIC;
    \crc_q_reg[1]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    crc_vld_INST_0_i_4 : in STD_LOGIC;
    \crc_q_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_fifo_bram : entity is "fifo_bram";
end design_1_wrapper_0_0_fifo_bram;

architecture STRUCTURE of design_1_wrapper_0_0_fifo_bram is
  signal \^dobdo\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^bram_reg_0\ : STD_LOGIC;
  signal \^bram_reg_1\ : STD_LOGIC;
  signal \^bram_reg_2\ : STD_LOGIC;
  signal \^bram_reg_3\ : STD_LOGIC;
  signal crc_vld_INST_0_i_14_n_0 : STD_LOGIC;
  signal NLW_bram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_bram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal NLW_bram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg : label is "p0_d9";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of bram_reg : label is "p0_d9";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_reg : label is 9216;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg : label is "inst/fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of bram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_reg : label is 8;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \crc_q[12]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \crc_q[13]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \crc_q[16]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \crc_q[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \crc_q[29]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of crc_vld_INST_0_i_14 : label is "soft_lutpair5";
begin
  DOBDO(8 downto 0) <= \^dobdo\(8 downto 0);
  bram_reg_0 <= \^bram_reg_0\;
  bram_reg_1 <= \^bram_reg_1\;
  bram_reg_2 <= \^bram_reg_2\;
  bram_reg_3 <= \^bram_reg_3\;
bram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => ADDRBWRADDR(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => rmii_rx_clk,
      CLKBWRCLK => sys_clk,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8 downto 0) => DIADI(8 downto 0),
      DIBDI(15 downto 0) => B"0000000111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_bram_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 9) => NLW_bram_reg_DOBDO_UNCONNECTED(15 downto 9),
      DOBDO(8 downto 0) => \^dobdo\(8 downto 0),
      DOPADOP(1 downto 0) => NLW_bram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_bram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => wr_en,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
\crc_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dobdo\(1),
      I1 => \crc_q_reg[1]\(7),
      I2 => \crc_q_reg[1]\(2),
      I3 => \^dobdo\(7),
      O => D(0)
    );
\crc_q[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dobdo\(4),
      I1 => \crc_q_reg[1]\(4),
      I2 => \^dobdo\(7),
      I3 => \crc_q_reg[1]\(2),
      O => \^bram_reg_2\
    );
\crc_q[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dobdo\(3),
      I1 => \crc_q_reg[1]\(5),
      I2 => \crc_q_reg[1]\(6),
      I3 => \^dobdo\(2),
      O => bram_reg_4
    );
\crc_q[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dobdo\(6),
      I1 => \crc_q_reg[1]\(3),
      I2 => \crc_q_reg[1]\(7),
      I3 => \^dobdo\(1),
      O => \^bram_reg_0\
    );
\crc_q[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dobdo\(2),
      I1 => \crc_q_reg[1]\(6),
      O => \^bram_reg_3\
    );
\crc_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \crc_q_reg[1]\(2),
      I1 => \^dobdo\(7),
      I2 => \^bram_reg_0\,
      I3 => \crc_q_reg[1]\(8),
      I4 => \^dobdo\(0),
      O => D(1)
    );
\crc_q[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dobdo\(2),
      I1 => \crc_q_reg[1]\(6),
      I2 => \crc_q_reg[1]\(5),
      I3 => \^dobdo\(3),
      I4 => \crc_q_reg[1]\(8),
      I5 => \^dobdo\(0),
      O => \^bram_reg_1\
    );
\crc_q[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dobdo\(1),
      I1 => \crc_q_reg[1]\(7),
      O => bram_reg_6
    );
\crc_q[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^dobdo\(8),
      I1 => CO(0),
      I2 => sys_rst_n,
      O => SS(0)
    );
\crc_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dobdo\(4),
      I1 => \crc_q_reg[1]\(4),
      I2 => \^dobdo\(7),
      I3 => \crc_q_reg[1]\(2),
      I4 => \^bram_reg_0\,
      I5 => \^bram_reg_1\,
      O => D(2)
    );
\crc_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^bram_reg_3\,
      I1 => \^dobdo\(4),
      I2 => \crc_q_reg[1]\(4),
      I3 => \^dobdo\(7),
      I4 => \crc_q_reg[1]\(2),
      I5 => \crc_q_reg[7]\,
      O => D(3)
    );
crc_vld_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FF6F96FF96F9FF6"
    )
        port map (
      I0 => \^bram_reg_3\,
      I1 => \crc_q_reg[1]\(0),
      I2 => \crc_q_reg[7]\,
      I3 => \^bram_reg_0\,
      I4 => \^dobdo\(7),
      I5 => \crc_q_reg[1]\(2),
      O => \crc_q_reg[9]\
    );
crc_vld_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9696FF96FFFF96"
    )
        port map (
      I0 => \^bram_reg_1\,
      I1 => crc_vld_INST_0_i_4,
      I2 => \crc_q_reg[1]\(1),
      I3 => \crc_q_reg[7]\,
      I4 => \^bram_reg_2\,
      I5 => \^bram_reg_3\,
      O => \crc_q_reg[19]\
    );
crc_vld_INST_0_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dobdo\(0),
      I1 => \crc_q_reg[1]\(8),
      O => crc_vld_INST_0_i_14_n_0
    );
crc_vld_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F66F6FF66FF6F66F"
    )
        port map (
      I0 => crc_vld_INST_0_i_14_n_0,
      I1 => crc_vld_INST_0_i_4,
      I2 => \^dobdo\(7),
      I3 => \crc_q_reg[1]\(2),
      I4 => \crc_q_reg[1]\(7),
      I5 => \^dobdo\(1),
      O => bram_reg_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_rmii_rx is
  port (
    state : out STD_LOGIC;
    rx_byte_vld : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    DIADI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rmii_rx_clk : in STD_LOGIC;
    rmii_rx_rst_n : in STD_LOGIC;
    rmii_rx_dv : in STD_LOGIC;
    rmii_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_rmii_rx : entity is "rmii_rx";
end design_1_wrapper_0_0_rmii_rx;

architecture STRUCTURE of design_1_wrapper_0_0_rmii_rx is
  signal byte_vld_i_1_n_0 : STD_LOGIC;
  signal byte_vld_i_2_n_0 : STD_LOGIC;
  signal \^rx_byte_vld\ : STD_LOGIC;
  signal rx_data_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \^state\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
begin
  rx_byte_vld <= \^rx_byte_vld\;
  state <= \^state\;
bram_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rx_byte_vld\,
      I1 => CO(0),
      O => wr_en
    );
bram_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => \rx_data_reg_reg_n_0_[2]\,
      O => DIADI(2)
    );
bram_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => \rx_data_reg_reg_n_0_[1]\,
      O => DIADI(1)
    );
bram_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => \rx_data_reg_reg_n_0_[0]\,
      O => DIADI(0)
    );
bram_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_data(3),
      O => DIADI(7)
    );
bram_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_data(2),
      O => DIADI(6)
    );
bram_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_data(1),
      O => DIADI(5)
    );
bram_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_data(0),
      O => DIADI(4)
    );
bram_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state\,
      I1 => \rx_data_reg_reg_n_0_[3]\,
      O => DIADI(3)
    );
byte_vld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000808A"
    )
        port map (
      I0 => rmii_rx_rst_n,
      I1 => rmii_rx_dv,
      I2 => \^state\,
      I3 => byte_vld_i_2_n_0,
      I4 => \^rx_byte_vld\,
      O => byte_vld_i_1_n_0
    );
byte_vld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => rmii_rx_dv,
      I1 => rmii_rx_data(3),
      I2 => rmii_rx_data(0),
      I3 => rmii_rx_data(1),
      I4 => rmii_rx_data(2),
      O => byte_vld_i_2_n_0
    );
byte_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => byte_vld_i_1_n_0,
      Q => \^rx_byte_vld\,
      R => '0'
    );
\rx_data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800C80088008800"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_dv,
      I2 => rmii_rx_data(3),
      I3 => rmii_rx_data(0),
      I4 => rmii_rx_data(1),
      I5 => rmii_rx_data(2),
      O => rx_data_reg(0)
    );
\rx_data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => rmii_rx_data(1),
      I1 => rmii_rx_rst_n,
      I2 => rmii_rx_dv,
      I3 => \^state\,
      O => \rx_data_reg[1]_i_1_n_0\
    );
\rx_data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C88800000000"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_dv,
      I2 => rmii_rx_data(3),
      I3 => rmii_rx_data(0),
      I4 => rmii_rx_data(1),
      I5 => rmii_rx_data(2),
      O => rx_data_reg(2)
    );
\rx_data_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080C08080808080"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_dv,
      I2 => rmii_rx_data(3),
      I3 => rmii_rx_data(0),
      I4 => rmii_rx_data(1),
      I5 => rmii_rx_data(2),
      O => rx_data_reg(3)
    );
\rx_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rx_data_reg(0),
      Q => \rx_data_reg_reg_n_0_[0]\,
      R => SR(0)
    );
\rx_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => \rx_data_reg[1]_i_1_n_0\,
      Q => \rx_data_reg_reg_n_0_[1]\,
      R => '0'
    );
\rx_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rx_data_reg(2),
      Q => \rx_data_reg_reg_n_0_[2]\,
      R => SR(0)
    );
\rx_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rx_data_reg(3),
      Q => \rx_data_reg_reg_n_0_[3]\,
      R => SR(0)
    );
state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C88888888888"
    )
        port map (
      I0 => \^state\,
      I1 => rmii_rx_dv,
      I2 => rmii_rx_data(3),
      I3 => rmii_rx_data(0),
      I4 => rmii_rx_data(1),
      I5 => rmii_rx_data(2),
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^state\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_async_fifo is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_byte_vld : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_reg : out STD_LOGIC;
    bram_reg_0 : out STD_LOGIC;
    \crc_q_reg[19]\ : out STD_LOGIC;
    bram_reg_1 : out STD_LOGIC;
    bram_reg_2 : out STD_LOGIC;
    bram_reg_3 : out STD_LOGIC;
    \crc_q_reg[9]\ : out STD_LOGIC;
    bram_reg_4 : out STD_LOGIC;
    bram_reg_5 : out STD_LOGIC;
    rmii_rx_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    state : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_rst_n : in STD_LOGIC;
    rmii_rx_rst_n : in STD_LOGIC;
    rx_byte_vld : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    crc_vld_INST_0_i_4 : in STD_LOGIC;
    \crc_q_reg[7]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_async_fifo : entity is "async_fifo";
end design_1_wrapper_0_0_async_fifo;

architecture STRUCTURE of design_1_wrapper_0_0_async_fifo is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal gry_cnt_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd_ptr_bin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_ptr_calc_n_10 : STD_LOGIC;
  signal rd_ptr_calc_n_11 : STD_LOGIC;
  signal rd_ptr_calc_n_12 : STD_LOGIC;
  signal rd_ptr_calc_n_13 : STD_LOGIC;
  signal rd_ptr_calc_n_14 : STD_LOGIC;
  signal rd_ptr_calc_n_15 : STD_LOGIC;
  signal rd_ptr_calc_n_16 : STD_LOGIC;
  signal rd_ptr_calc_n_17 : STD_LOGIC;
  signal rd_ptr_calc_n_18 : STD_LOGIC;
  signal rd_ptr_calc_n_19 : STD_LOGIC;
  signal rd_ptr_calc_n_20 : STD_LOGIC;
  signal rd_ptr_calc_n_21 : STD_LOGIC;
  signal rd_ptr_calc_n_22 : STD_LOGIC;
  signal rd_ptr_calc_n_23 : STD_LOGIC;
  signal rd_ptr_calc_n_24 : STD_LOGIC;
  signal rd_ptr_calc_n_25 : STD_LOGIC;
  signal sync_rd_ptr0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_rd_ptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_wr_ptr0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_wr_ptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^sys_byte_vld\ : STD_LOGIC;
  signal wr_ptr_bin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_ptr_calc_n_11 : STD_LOGIC;
  signal wr_ptr_calc_n_12 : STD_LOGIC;
  signal wr_ptr_calc_n_13 : STD_LOGIC;
  signal wr_ptr_calc_n_14 : STD_LOGIC;
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CO(0) <= \^co\(0);
  SR(0) <= \^sr\(0);
  sys_byte_vld <= \^sys_byte_vld\;
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => wr_ptr_calc_n_11,
      S(2) => wr_ptr_calc_n_12,
      S(1) => wr_ptr_calc_n_13,
      S(0) => wr_ptr_calc_n_14
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^sys_byte_vld\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => rd_ptr_calc_n_11,
      S(2) => rd_ptr_calc_n_12,
      S(1) => rd_ptr_calc_n_13,
      S(0) => rd_ptr_calc_n_14
    );
fifo_module: entity work.design_1_wrapper_0_0_fifo_bram
     port map (
      ADDRBWRADDR(9 downto 0) => rd_ptr_bin(9 downto 0),
      CO(0) => \^sys_byte_vld\,
      D(3 downto 0) => D(3 downto 0),
      DIADI(8) => state,
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DOBDO(8 downto 0) => DOBDO(8 downto 0),
      Q(9 downto 0) => wr_ptr_bin(9 downto 0),
      SS(0) => SS(0),
      bram_reg_0 => bram_reg,
      bram_reg_1 => bram_reg_0,
      bram_reg_2 => bram_reg_1,
      bram_reg_3 => bram_reg_2,
      bram_reg_4 => bram_reg_3,
      bram_reg_5 => bram_reg_4,
      bram_reg_6 => bram_reg_5,
      \crc_q_reg[19]\ => \crc_q_reg[19]\,
      \crc_q_reg[1]\(8 downto 0) => Q(8 downto 0),
      \crc_q_reg[7]\ => \crc_q_reg[7]\,
      \crc_q_reg[9]\ => \crc_q_reg[9]\,
      crc_vld_INST_0_i_4 => crc_vld_INST_0_i_4,
      rmii_rx_clk => rmii_rx_clk,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      wr_en => wr_en
    );
rd_ptr_calc: entity work.design_1_wrapper_0_0_bin_gry_ctr
     port map (
      ADDRBWRADDR(9 downto 0) => rd_ptr_bin(9 downto 0),
      CO(0) => \^sys_byte_vld\,
      Q(10) => rd_ptr_calc_n_15,
      Q(9) => rd_ptr_calc_n_16,
      Q(8) => rd_ptr_calc_n_17,
      Q(7) => rd_ptr_calc_n_18,
      Q(6) => rd_ptr_calc_n_19,
      Q(5) => rd_ptr_calc_n_20,
      Q(4) => rd_ptr_calc_n_21,
      Q(3) => rd_ptr_calc_n_22,
      Q(2) => rd_ptr_calc_n_23,
      Q(1) => rd_ptr_calc_n_24,
      Q(0) => rd_ptr_calc_n_25,
      S(3) => rd_ptr_calc_n_11,
      S(2) => rd_ptr_calc_n_12,
      S(1) => rd_ptr_calc_n_13,
      S(0) => rd_ptr_calc_n_14,
      SR(0) => rd_ptr_calc_n_10,
      \crc_q_reg[0]\(10 downto 0) => sync_wr_ptr1(10 downto 0),
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
\sync_rd_ptr0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_25,
      Q => sync_rd_ptr0(0),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_15,
      Q => sync_rd_ptr0(10),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_24,
      Q => sync_rd_ptr0(1),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_23,
      Q => sync_rd_ptr0(2),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_22,
      Q => sync_rd_ptr0(3),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_21,
      Q => sync_rd_ptr0(4),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_20,
      Q => sync_rd_ptr0(5),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_19,
      Q => sync_rd_ptr0(6),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_18,
      Q => sync_rd_ptr0(7),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_17,
      Q => sync_rd_ptr0(8),
      R => \^sr\(0)
    );
\sync_rd_ptr0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => rd_ptr_calc_n_16,
      Q => sync_rd_ptr0(9),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(0),
      Q => sync_rd_ptr1(0),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(10),
      Q => sync_rd_ptr1(10),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(1),
      Q => sync_rd_ptr1(1),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(2),
      Q => sync_rd_ptr1(2),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(3),
      Q => sync_rd_ptr1(3),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(4),
      Q => sync_rd_ptr1(4),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(5),
      Q => sync_rd_ptr1(5),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(6),
      Q => sync_rd_ptr1(6),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(7),
      Q => sync_rd_ptr1(7),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(8),
      Q => sync_rd_ptr1(8),
      R => \^sr\(0)
    );
\sync_rd_ptr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rmii_rx_clk,
      CE => '1',
      D => sync_rd_ptr0(9),
      Q => sync_rd_ptr1(9),
      R => \^sr\(0)
    );
\sync_wr_ptr0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(0),
      Q => sync_wr_ptr0(0),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(10),
      Q => sync_wr_ptr0(10),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(1),
      Q => sync_wr_ptr0(1),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(2),
      Q => sync_wr_ptr0(2),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(3),
      Q => sync_wr_ptr0(3),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(4),
      Q => sync_wr_ptr0(4),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(5),
      Q => sync_wr_ptr0(5),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(6),
      Q => sync_wr_ptr0(6),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(7),
      Q => sync_wr_ptr0(7),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(8),
      Q => sync_wr_ptr0(8),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(9),
      Q => sync_wr_ptr0(9),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(0),
      Q => sync_wr_ptr1(0),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(10),
      Q => sync_wr_ptr1(10),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(1),
      Q => sync_wr_ptr1(1),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(2),
      Q => sync_wr_ptr1(2),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(3),
      Q => sync_wr_ptr1(3),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(4),
      Q => sync_wr_ptr1(4),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(5),
      Q => sync_wr_ptr1(5),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(6),
      Q => sync_wr_ptr1(6),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(7),
      Q => sync_wr_ptr1(7),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(8),
      Q => sync_wr_ptr1(8),
      R => rd_ptr_calc_n_10
    );
\sync_wr_ptr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(9),
      Q => sync_wr_ptr1(9),
      R => rd_ptr_calc_n_10
    );
wr_ptr_calc: entity work.design_1_wrapper_0_0_bin_gry_ctr_0
     port map (
      CO(0) => \^co\(0),
      Q(9 downto 0) => wr_ptr_bin(9 downto 0),
      S(3) => wr_ptr_calc_n_11,
      S(2) => wr_ptr_calc_n_12,
      S(1) => wr_ptr_calc_n_13,
      S(0) => wr_ptr_calc_n_14,
      SR(0) => \^sr\(0),
      \_carry\(10 downto 0) => sync_rd_ptr1(10 downto 0),
      \gry_cnt_reg_reg[10]_0\(10 downto 0) => gry_cnt_reg(10 downto 0),
      rmii_rx_clk => rmii_rx_clk,
      rmii_rx_rst_n => rmii_rx_rst_n,
      rx_byte_vld => rx_byte_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0_wrapper is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_byte_vld : out STD_LOGIC;
    crc_vld : out STD_LOGIC;
    rmii_rx_rst_n : in STD_LOGIC;
    rmii_rx_dv : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    rmii_rx_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    rmii_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_wrapper_0_0_wrapper : entity is "wrapper";
end design_1_wrapper_0_0_wrapper;

architecture STRUCTURE of design_1_wrapper_0_0_wrapper is
  signal \^dobdo\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal crc32_n_10 : STD_LOGIC;
  signal crc32_n_11 : STD_LOGIC;
  signal crc_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_n_11 : STD_LOGIC;
  signal fifo_n_17 : STD_LOGIC;
  signal fifo_n_18 : STD_LOGIC;
  signal fifo_n_19 : STD_LOGIC;
  signal fifo_n_20 : STD_LOGIC;
  signal fifo_n_21 : STD_LOGIC;
  signal fifo_n_22 : STD_LOGIC;
  signal fifo_n_23 : STD_LOGIC;
  signal fifo_n_24 : STD_LOGIC;
  signal fifo_n_25 : STD_LOGIC;
  signal fifo_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in37_in : STD_LOGIC;
  signal p_1_in57_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in13_in : STD_LOGIC;
  signal rx_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_byte_vld : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \^sys_byte_vld\ : STD_LOGIC;
  signal wr_en : STD_LOGIC;
begin
  DOBDO(8 downto 0) <= \^dobdo\(8 downto 0);
  sys_byte_vld <= \^sys_byte_vld\;
crc32: entity work.design_1_wrapper_0_0_crc_8
     port map (
      D(3) => crc_d(7),
      D(2) => crc_d(5),
      D(1 downto 0) => crc_d(1 downto 0),
      Q(8) => p_2_in,
      Q(7) => p_0_in_0,
      Q(6) => p_2_in13_in,
      Q(5) => p_0_in9_in,
      Q(4) => p_0_in6_in,
      Q(3) => p_0_in12_in,
      Q(2) => p_1_in,
      Q(1) => p_1_in57_in,
      Q(0) => p_1_in37_in,
      SS(0) => fifo_n_11,
      \crc_q_reg[10]_0\ => fifo_n_20,
      \crc_q_reg[15]_0\ => fifo_n_18,
      \crc_q_reg[16]_0\ => fifo_n_21,
      \crc_q_reg[25]_0\ => crc32_n_11,
      \crc_q_reg[28]_0\ => fifo_n_25,
      \crc_q_reg[31]_0\ => crc32_n_10,
      \crc_q_reg[6]_0\ => fifo_n_17,
      \crc_q_reg[9]_0\ => fifo_n_22,
      crc_vld => crc_vld,
      crc_vld_0 => fifo_n_23,
      crc_vld_1 => fifo_n_19,
      crc_vld_2 => fifo_n_24,
      sys_byte(7 downto 0) => \^dobdo\(7 downto 0),
      sys_byte_vld => \^sys_byte_vld\,
      sys_clk => sys_clk
    );
fifo: entity work.design_1_wrapper_0_0_async_fifo
     port map (
      CO(0) => fifo_n_9,
      D(3) => crc_d(7),
      D(2) => crc_d(5),
      D(1 downto 0) => crc_d(1 downto 0),
      DIADI(7 downto 0) => rx_byte(7 downto 0),
      DOBDO(8 downto 0) => \^dobdo\(8 downto 0),
      Q(8) => p_2_in,
      Q(7) => p_0_in_0,
      Q(6) => p_2_in13_in,
      Q(5) => p_0_in9_in,
      Q(4) => p_0_in6_in,
      Q(3) => p_0_in12_in,
      Q(2) => p_1_in,
      Q(1) => p_1_in57_in,
      Q(0) => p_1_in37_in,
      SR(0) => p_0_in,
      SS(0) => fifo_n_11,
      bram_reg => fifo_n_17,
      bram_reg_0 => fifo_n_18,
      bram_reg_1 => fifo_n_20,
      bram_reg_2 => fifo_n_21,
      bram_reg_3 => fifo_n_22,
      bram_reg_4 => fifo_n_24,
      bram_reg_5 => fifo_n_25,
      \crc_q_reg[19]\ => fifo_n_19,
      \crc_q_reg[7]\ => crc32_n_10,
      \crc_q_reg[9]\ => fifo_n_23,
      crc_vld_INST_0_i_4 => crc32_n_11,
      rmii_rx_clk => rmii_rx_clk,
      rmii_rx_rst_n => rmii_rx_rst_n,
      rx_byte_vld => rx_byte_vld,
      state => state,
      sys_byte_vld => \^sys_byte_vld\,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      wr_en => wr_en
    );
rmii: entity work.design_1_wrapper_0_0_rmii_rx
     port map (
      CO(0) => fifo_n_9,
      DIADI(7 downto 0) => rx_byte(7 downto 0),
      SR(0) => p_0_in,
      rmii_rx_clk => rmii_rx_clk,
      rmii_rx_data(3 downto 0) => rmii_rx_data(3 downto 0),
      rmii_rx_dv => rmii_rx_dv,
      rmii_rx_rst_n => rmii_rx_rst_n,
      rx_byte_vld => rx_byte_vld,
      state => state,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper_0_0 is
  port (
    rmii_rx_clk : in STD_LOGIC;
    rmii_rx_rst_n : in STD_LOGIC;
    rmii_rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rmii_rx_dv : in STD_LOGIC;
    rmii_rx_er : in STD_LOGIC;
    rmii_crs : in STD_LOGIC;
    rmii_col : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    sys_byte_vld : out STD_LOGIC;
    sys_data_vld : out STD_LOGIC;
    sys_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    crc_vld : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_wrapper_0_0 : entity is "design_1_wrapper_0_0,wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_wrapper_0_0 : entity is "wrapper,Vivado 2020.2";
end design_1_wrapper_0_0;

architecture STRUCTURE of design_1_wrapper_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rmii_rx_clk : signal is "xilinx.com:signal:clock:1.0 rmii_rx_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rmii_rx_clk : signal is "XIL_INTERFACENAME rmii_rx_clk, ASSOCIATED_RESET rmii_rx_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rmii_rx_rst_n : signal is "xilinx.com:signal:reset:1.0 rmii_rx_rst_n RST";
  attribute X_INTERFACE_PARAMETER of rmii_rx_rst_n : signal is "XIL_INTERFACENAME rmii_rx_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_wrapper_0_0_wrapper
     port map (
      DOBDO(8) => sys_data_vld,
      DOBDO(7 downto 0) => sys_byte(7 downto 0),
      crc_vld => crc_vld,
      rmii_rx_clk => rmii_rx_clk,
      rmii_rx_data(3 downto 0) => rmii_rx_data(3 downto 0),
      rmii_rx_dv => rmii_rx_dv,
      rmii_rx_rst_n => rmii_rx_rst_n,
      sys_byte_vld => sys_byte_vld,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
