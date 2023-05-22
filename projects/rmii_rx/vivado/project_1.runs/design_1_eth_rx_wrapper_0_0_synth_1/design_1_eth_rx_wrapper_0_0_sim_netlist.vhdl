-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 19:43:43 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_eth_rx_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_1_eth_rx_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr is
  port (
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[4]\ : in STD_LOGIC;
    bram_reg : in STD_LOGIC;
    bram_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \control_reg[103]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \gry_cnt_reg_reg[10]_0\ : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
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
  signal \bram_reg_i_5__0_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bin_cnt_reg[0]_i_1__0\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of bram_reg_i_2 : label is 35;
  attribute ADDER_THRESHOLD of bram_reg_i_3 : label is 35;
  attribute ADDER_THRESHOLD of bram_reg_i_4 : label is 35;
  attribute SOFT_HLUTNM of \ctrl[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gry_cnt_reg[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gry_cnt_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gry_cnt_reg[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gry_cnt_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gry_cnt_reg[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gry_cnt_reg[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gry_cnt_reg[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gry_cnt_reg[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gry_cnt_reg[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gry_cnt_reg[9]_i_1\ : label is "soft_lutpair4";
begin
  ADDRBWRADDR(9 downto 0) <= \^addrbwraddr\(9 downto 0);
  Q(10 downto 0) <= \^q\(10 downto 0);
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
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(10),
      Q => bin_cnt_reg_reg(10),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => bin_cnt_reg_reg(1),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => bin_cnt_reg_reg(2),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => bin_cnt_reg_reg(3),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(4),
      Q => bin_cnt_reg_reg(4),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => bin_cnt_reg_reg(5),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => bin_cnt_reg_reg(6),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => bin_cnt_reg_reg(7),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(8),
      Q => bin_cnt_reg_reg(8),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bin_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_1_in__0\(9),
      Q => bin_cnt_reg_reg(9),
      R => \gry_cnt_reg_reg[10]_0\
    );
\bram_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CO(0),
      I1 => bram_reg,
      I2 => bram_reg_0(0),
      O => WEA(0)
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
      S(0) => \bram_reg_i_5__0_n_0\
    );
\bram_reg_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bin_cnt_reg_reg(0),
      I1 => CO(0),
      O => \bram_reg_i_5__0_n_0\
    );
\ctrl[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CO(0),
      I1 => \ctrl_reg[4]\,
      I2 => bram_reg,
      O => E(0)
    );
\gry_cnt_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(1),
      I1 => \^addrbwraddr\(0),
      O => gry_cnt_next(0)
    );
\gry_cnt_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(2),
      I1 => \^addrbwraddr\(1),
      O => gry_cnt_next(1)
    );
\gry_cnt_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(3),
      I1 => \^addrbwraddr\(2),
      O => gry_cnt_next(2)
    );
\gry_cnt_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(4),
      I1 => \^addrbwraddr\(3),
      O => gry_cnt_next(3)
    );
\gry_cnt_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(5),
      I1 => \^addrbwraddr\(4),
      O => gry_cnt_next(4)
    );
\gry_cnt_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(6),
      I1 => \^addrbwraddr\(5),
      O => gry_cnt_next(5)
    );
\gry_cnt_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(7),
      I1 => \^addrbwraddr\(6),
      O => gry_cnt_next(6)
    );
\gry_cnt_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(8),
      I1 => \^addrbwraddr\(7),
      O => gry_cnt_next(7)
    );
\gry_cnt_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrbwraddr\(9),
      I1 => \^addrbwraddr\(8),
      O => gry_cnt_next(8)
    );
\gry_cnt_reg[9]_i_1\: unisim.vcomponents.LUT2
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
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => bram_reg_i_2_n_5,
      Q => \^q\(10),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(1),
      Q => \^q\(1),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(2),
      Q => \^q\(2),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(3),
      Q => \^q\(3),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(4),
      Q => \^q\(4),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(5),
      Q => \^q\(5),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(6),
      Q => \^q\(6),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(7),
      Q => \^q\(7),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(8),
      Q => \^q\(8),
      R => \gry_cnt_reg_reg[10]_0\
    );
\gry_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_next(9),
      Q => \^q\(9),
      R => \gry_cnt_reg_reg[10]_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(9),
      I1 => \control_reg[103]\(9),
      I2 => \^q\(10),
      I3 => \control_reg[103]\(10),
      O => S(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \control_reg[103]\(6),
      I2 => \control_reg[103]\(8),
      I3 => \^q\(8),
      I4 => \control_reg[103]\(7),
      I5 => \^q\(7),
      O => S(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \control_reg[103]\(3),
      I2 => \control_reg[103]\(5),
      I3 => \^q\(5),
      I4 => \control_reg[103]\(4),
      I5 => \^q\(4),
      O => S(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \control_reg[103]\(0),
      I2 => \control_reg[103]\(2),
      I3 => \^q\(2),
      I4 => \control_reg[103]\(1),
      I5 => \^q\(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_en : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gry_cnt_reg_reg[10]_0\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    phy_data_in_vld : in STD_LOGIC;
    phy_rst_n : in STD_LOGIC;
    \_carry\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    phy_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2 : entity is "bin_gry_ctr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2 is
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
  attribute SOFT_HLUTNM of \gry_cnt_reg[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gry_cnt_reg[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gry_cnt_reg[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gry_cnt_reg[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gry_cnt_reg[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gry_cnt_reg[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gry_cnt_reg[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gry_cnt_reg[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gry_cnt_reg[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gry_cnt_reg[9]_i_1\ : label is "soft_lutpair13";
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
      I2 => phy_data_in_vld,
      O => bin_cnt_next_carry_i_1_n_0
    );
\bin_cnt_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => CO(0),
      I2 => phy_data_in_vld,
      O => p_1_in(0)
    );
\bin_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(10),
      Q => bin_cnt_reg_reg(10),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => p_1_in(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
bram_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phy_data_in_vld,
      I1 => CO(0),
      O => wr_en
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
      I2 => phy_data_in_vld,
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
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(0),
      Q => \^gry_cnt_reg_reg[10]_0\(0),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
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
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(1),
      Q => \^gry_cnt_reg_reg[10]_0\(1),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(2),
      Q => \^gry_cnt_reg_reg[10]_0\(2),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
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
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(4),
      Q => \^gry_cnt_reg_reg[10]_0\(4),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(5),
      Q => \^gry_cnt_reg_reg[10]_0\(5),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(6),
      Q => \^gry_cnt_reg_reg[10]_0\(6),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(7),
      Q => \^gry_cnt_reg_reg[10]_0\(7),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(8),
      Q => \^gry_cnt_reg_reg[10]_0\(8),
      R => \^sr\(0)
    );
\gry_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => gry_cnt_next(9),
      Q => \^gry_cnt_reg_reg[10]_0\(9),
      R => \^sr\(0)
    );
\sync_rd_ptr0[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phy_rst_n,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer is
  port (
    data_2 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_clk : in STD_LOGIC;
    \delay_reg[3][8]_0\ : in STD_LOGIC;
    \delay_reg[3][8]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer is
  signal \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0_n_0\ : STD_LOGIC;
  signal \delay_reg[2][0]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][1]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][2]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][3]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][4]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][5]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][6]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][7]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg[2][8]_inst_rx_fsm_control_reg_r_1_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__0_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__1_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__2_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__3_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__4_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__5_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__6_n_0\ : STD_LOGIC;
  signal \delay_reg_gate__7_n_0\ : STD_LOGIC;
  signal delay_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name : string;
  attribute srl_name of \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute srl_bus_name of \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1] ";
  attribute srl_name of \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0\ : label is "\inst/delay/delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of delay_reg_gate : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \delay_reg_gate__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \delay_reg_gate__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_reg_gate__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_reg_gate__3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_reg_gate__4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_reg_gate__5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \delay_reg_gate__6\ : label is "soft_lutpair24";
begin
\delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(0),
      Q => \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(1),
      Q => \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(2),
      Q => \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(3),
      Q => \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(4),
      Q => \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(5),
      Q => \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(6),
      Q => \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(7),
      Q => \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => DOBDO(8),
      Q => \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0_n_0\
    );
\delay_reg[2][0]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][0]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][0]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][1]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][1]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][1]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][2]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][2]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][2]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][3]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][3]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][3]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][4]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][4]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][4]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][5]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][5]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][5]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][6]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][6]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][6]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][7]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][7]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][7]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[2][8]_inst_rx_fsm_control_reg_r_1\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg[1][8]_srl2___inst_rx_fsm_control_reg_r_0_n_0\,
      Q => \delay_reg[2][8]_inst_rx_fsm_control_reg_r_1_n_0\,
      R => '0'
    );
\delay_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__7_n_0\,
      Q => data_2(0),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__6_n_0\,
      Q => data_2(1),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__5_n_0\,
      Q => data_2(2),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__4_n_0\,
      Q => data_2(3),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__3_n_0\,
      Q => data_2(4),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__2_n_0\,
      Q => data_2(5),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__1_n_0\,
      Q => data_2(6),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \delay_reg_gate__0_n_0\,
      Q => data_2(7),
      R => \delay_reg[3][8]_1\
    );
\delay_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => delay_reg_gate_n_0,
      Q => data_2(8),
      R => \delay_reg[3][8]_1\
    );
delay_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][8]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => delay_reg_gate_n_0
    );
\delay_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][7]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__0_n_0\
    );
\delay_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][6]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__1_n_0\
    );
\delay_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][5]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__2_n_0\
    );
\delay_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][4]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__3_n_0\
    );
\delay_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][3]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__4_n_0\
    );
\delay_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][2]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__5_n_0\
    );
\delay_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][1]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__6_n_0\
    );
\delay_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \delay_reg[2][0]_inst_rx_fsm_control_reg_r_1_n_0\,
      I1 => \delay_reg[3][8]_0\,
      O => \delay_reg_gate__7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \delay_reg[3][8]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_rst_n_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \crc_q_reg[25]_0\ : out STD_LOGIC;
    \crc_q_reg[31]_0\ : out STD_LOGIC;
    \byte_cnt_reg[0]\ : in STD_LOGIC;
    data_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_rst_n : in STD_LOGIC;
    \crc_q_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \crc_q_reg[6]_0\ : in STD_LOGIC;
    \ctrl_reg[11]\ : in STD_LOGIC;
    \ctrl_reg[11]_0\ : in STD_LOGIC;
    \ctrl_reg[11]_1\ : in STD_LOGIC;
    \crc_q_reg[29]_0\ : in STD_LOGIC;
    \crc_q_reg[27]_0\ : in STD_LOGIC;
    \crc_q_reg[13]_0\ : in STD_LOGIC;
    \crc_q_reg[10]_0\ : in STD_LOGIC;
    \crc_q_reg[12]_0\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal crc_d : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \crc_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[14]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[26]_i_2_n_0\ : STD_LOGIC;
  signal \^crc_q_reg[25]_0\ : STD_LOGIC;
  signal \^crc_q_reg[31]_0\ : STD_LOGIC;
  signal \crc_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \ctrl[11]_i_11_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_14_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_15_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_16_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_18_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_19_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_8_n_0\ : STD_LOGIC;
  signal \ctrl[11]_i_9_n_0\ : STD_LOGIC;
  signal \^delay_reg[3][8]\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \byte_cnt[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \crc_q[12]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \crc_q[14]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \crc_q[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \crc_q[21]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \crc_q[24]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \crc_q[31]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \crc_q[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \crc_q[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \crc_q[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctrl[11]_i_15\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of ctrl_vld_i_1 : label is "soft_lutpair15";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \crc_q_reg[25]_0\ <= \^crc_q_reg[25]_0\;
  \crc_q_reg[31]_0\ <= \^crc_q_reg[31]_0\;
  \delay_reg[3][8]\ <= \^delay_reg[3][8]\;
\byte_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B00FFFF"
    )
        port map (
      I0 => \^delay_reg[3][8]\,
      I1 => \byte_cnt_reg[0]\,
      I2 => data_2(0),
      I3 => CO(0),
      I4 => sys_rst_n,
      O => SR(0)
    );
\crc_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in23_in,
      I1 => p_0_in3_in,
      I2 => DOBDO(5),
      I3 => DOBDO(2),
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
      I2 => DOBDO(6),
      I3 => \crc_q[26]_i_2_n_0\,
      O => crc_d(11)
    );
\crc_q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in27_in,
      I1 => \crc_q[12]_i_2_n_0\,
      I2 => \crc_q_reg[12]_0\,
      I3 => \crc_q_reg[6]_0\,
      I4 => DOBDO(7),
      I5 => \^q\(2),
      O => crc_d(12)
    );
\crc_q[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => DOBDO(5),
      O => \crc_q[12]_i_2_n_0\
    );
\crc_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in29_in,
      I1 => \crc_q_reg[13]_0\,
      I2 => \crc_q_reg[6]_0\,
      I3 => \^crc_q_reg[31]_0\,
      I4 => DOBDO(4),
      I5 => \^q\(4),
      O => crc_d(13)
    );
\crc_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in31_in,
      I1 => \crc_q_reg[29]_0\,
      I2 => \^q\(5),
      I3 => DOBDO(3),
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
      I1 => DOBDO(4),
      O => \crc_q[14]_i_2_n_0\
    );
\crc_q[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_1_in33_in,
      I1 => \^q\(4),
      I2 => DOBDO(4),
      I3 => \crc_q_reg[27]_0\,
      O => crc_d(15)
    );
\crc_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in35_in,
      I1 => \^q\(2),
      I2 => DOBDO(7),
      I3 => \crc_q_reg[13]_0\,
      I4 => \^q\(5),
      I5 => DOBDO(3),
      O => crc_d(16)
    );
\crc_q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(0),
      I1 => DOBDO(2),
      I2 => \^q\(6),
      I3 => DOBDO(1),
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
      I1 => DOBDO(1),
      I2 => \^q\(7),
      I3 => \^crc_q_reg[31]_0\,
      O => crc_d(18)
    );
\crc_q[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(8),
      I1 => DOBDO(0),
      I2 => DOBDO(5),
      I3 => p_0_in3_in,
      O => \^crc_q_reg[31]_0\
    );
\crc_q[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \^q\(8),
      I2 => p_1_in41_in,
      I3 => DOBDO(4),
      I4 => \^q\(4),
      O => crc_d(19)
    );
\crc_q[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in43_in,
      I1 => DOBDO(3),
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
      I2 => DOBDO(2),
      O => crc_d(21)
    );
\crc_q[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_1_in47_in,
      I1 => \^q\(2),
      I2 => DOBDO(7),
      O => crc_d(22)
    );
\crc_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => DOBDO(7),
      I2 => \^crc_q_reg[25]_0\,
      I3 => \^q\(7),
      I4 => DOBDO(1),
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
      I3 => DOBDO(5),
      I4 => DOBDO(0),
      I5 => \^q\(8),
      O => crc_d(24)
    );
\crc_q[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => DOBDO(6),
      O => \^crc_q_reg[25]_0\
    );
\crc_q[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => DOBDO(4),
      I1 => p_0_in3_in,
      I2 => DOBDO(5),
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
      I1 => DOBDO(1),
      I2 => \^q\(7),
      I3 => \crc_q[26]_i_2_n_0\,
      O => crc_d(26)
    );
\crc_q[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => DOBDO(7),
      I2 => \^q\(4),
      I3 => DOBDO(4),
      I4 => DOBDO(3),
      I5 => \^q\(5),
      O => \crc_q[26]_i_2_n_0\
    );
\crc_q[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => DOBDO(6),
      I3 => \crc_q_reg[27]_0\,
      O => crc_d(27)
    );
\crc_q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in59_in,
      I1 => \crc_q_reg[29]_0\,
      I2 => p_0_in3_in,
      I3 => DOBDO(5),
      I4 => DOBDO(2),
      I5 => \^q\(6),
      O => crc_d(28)
    );
\crc_q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in61_in,
      I1 => \crc_q_reg[29]_0\,
      I2 => DOBDO(0),
      I3 => \^q\(8),
      I4 => \^q\(4),
      I5 => DOBDO(4),
      O => crc_d(29)
    );
\crc_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => DOBDO(7),
      I2 => \^crc_q_reg[25]_0\,
      I3 => \^q\(7),
      I4 => DOBDO(1),
      I5 => \^crc_q_reg[31]_0\,
      O => crc_d(2)
    );
\crc_q[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \^q\(8),
      I2 => p_1_in63_in,
      I3 => DOBDO(3),
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
      I2 => DOBDO(2),
      O => crc_d(31)
    );
\crc_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^q\(4),
      I1 => DOBDO(4),
      I2 => \^crc_q_reg[31]_0\,
      I3 => DOBDO(6),
      I4 => \^q\(3),
      O => crc_d(3)
    );
\crc_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => DOBDO(1),
      I1 => \^q\(7),
      I2 => p_0_in3_in,
      I3 => DOBDO(5),
      I4 => \crc_q[26]_i_2_n_0\,
      O => crc_d(4)
    );
\crc_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^crc_q_reg[31]_0\,
      I1 => DOBDO(3),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => DOBDO(2),
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
      I2 => DOBDO(6),
      I3 => \crc_q[26]_i_2_n_0\,
      O => crc_d(8)
    );
\crc_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_1_in21_in,
      I1 => \^q\(3),
      I2 => DOBDO(6),
      I3 => p_0_in3_in,
      I4 => DOBDO(5),
      I5 => \crc_q_reg[12]_0\,
      O => crc_d(9)
    );
\crc_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \crc_q_reg[7]_0\(0),
      Q => \crc_q_reg_n_0_[0]\,
      S => SS(0)
    );
\crc_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(10),
      Q => p_1_in39_in,
      S => SS(0)
    );
\crc_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(11),
      Q => p_1_in41_in,
      S => SS(0)
    );
\crc_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(12),
      Q => p_1_in43_in,
      S => SS(0)
    );
\crc_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(13),
      Q => p_1_in45_in,
      S => SS(0)
    );
\crc_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(14),
      Q => p_1_in47_in,
      S => SS(0)
    );
\crc_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(15),
      Q => p_1_in49_in,
      S => SS(0)
    );
\crc_q_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(16),
      Q => p_1_in51_in,
      S => SS(0)
    );
\crc_q_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(17),
      Q => p_1_in53_in,
      S => SS(0)
    );
\crc_q_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(18),
      Q => p_1_in55_in,
      S => SS(0)
    );
\crc_q_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(19),
      Q => \^q\(1),
      S => SS(0)
    );
\crc_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \crc_q_reg[7]_0\(1),
      Q => p_1_in21_in,
      S => SS(0)
    );
\crc_q_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(20),
      Q => p_1_in59_in,
      S => SS(0)
    );
\crc_q_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(21),
      Q => p_1_in61_in,
      S => SS(0)
    );
\crc_q_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(22),
      Q => p_1_in63_in,
      S => SS(0)
    );
\crc_q_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(23),
      Q => p_1_in65_in,
      S => SS(0)
    );
\crc_q_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(24),
      Q => \^q\(2),
      S => SS(0)
    );
\crc_q_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(25),
      Q => \^q\(3),
      S => SS(0)
    );
\crc_q_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(26),
      Q => p_0_in3_in,
      S => SS(0)
    );
\crc_q_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(27),
      Q => \^q\(4),
      S => SS(0)
    );
\crc_q_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(28),
      Q => \^q\(5),
      S => SS(0)
    );
\crc_q_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(29),
      Q => \^q\(6),
      S => SS(0)
    );
\crc_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(2),
      Q => p_1_in23_in,
      S => SS(0)
    );
\crc_q_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(30),
      Q => \^q\(7),
      S => SS(0)
    );
\crc_q_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(31),
      Q => \^q\(8),
      S => SS(0)
    );
\crc_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(3),
      Q => p_1_in25_in,
      S => SS(0)
    );
\crc_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(4),
      Q => p_1_in27_in,
      S => SS(0)
    );
\crc_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \crc_q_reg[7]_0\(2),
      Q => p_1_in29_in,
      S => SS(0)
    );
\crc_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(6),
      Q => p_1_in31_in,
      S => SS(0)
    );
\crc_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \crc_q_reg[7]_0\(3),
      Q => p_1_in33_in,
      S => SS(0)
    );
\crc_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(8),
      Q => p_1_in35_in,
      S => SS(0)
    );
\crc_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => crc_d(9),
      Q => \^q\(0),
      S => SS(0)
    );
\ctrl[11]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF96699669FFFF"
    )
        port map (
      I0 => \^crc_q_reg[25]_0\,
      I1 => \^crc_q_reg[31]_0\,
      I2 => DOBDO(4),
      I3 => \^q\(4),
      I4 => \crc_q_reg[13]_0\,
      I5 => p_1_in65_in,
      O => \ctrl[11]_i_11_n_0\
    );
\ctrl[11]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBED7D7BE"
    )
        port map (
      I0 => p_1_in47_in,
      I1 => \^q\(2),
      I2 => DOBDO(7),
      I3 => \crc_q_reg[6]_0\,
      I4 => p_1_in49_in,
      I5 => \ctrl[11]_i_18_n_0\,
      O => \ctrl[11]_i_14_n_0\
    );
\ctrl[11]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D77D7DD7"
    )
        port map (
      I0 => crc_d(25),
      I1 => \crc_q[26]_i_2_n_0\,
      I2 => DOBDO(6),
      I3 => \^q\(3),
      I4 => \crc_q_reg_n_0_[0]\,
      O => \ctrl[11]_i_15_n_0\
    );
\ctrl[11]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FFFF69FF6969FF"
    )
        port map (
      I0 => \crc_q[26]_i_2_n_0\,
      I1 => \^crc_q_reg[25]_0\,
      I2 => p_1_in25_in,
      I3 => \ctrl[11]_i_19_n_0\,
      I4 => \crc_q[12]_i_2_n_0\,
      I5 => p_1_in23_in,
      O => \ctrl[11]_i_16_n_0\
    );
\ctrl[11]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9696FF96FFFF96"
    )
        port map (
      I0 => DOBDO(2),
      I1 => \^q\(6),
      I2 => p_1_in45_in,
      I3 => \^q\(5),
      I4 => DOBDO(3),
      I5 => p_1_in43_in,
      O => \ctrl[11]_i_18_n_0\
    );
\ctrl[11]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^q\(2),
      I1 => DOBDO(7),
      I2 => \^q\(4),
      I3 => DOBDO(4),
      I4 => \^q\(6),
      I5 => DOBDO(2),
      O => \ctrl[11]_i_19_n_0\
    );
\ctrl[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \ctrl[11]_i_4_n_0\,
      I1 => \ctrl[11]_i_5_n_0\,
      I2 => \ctrl[11]_i_6_n_0\,
      I3 => \ctrl[11]_i_7_n_0\,
      I4 => \ctrl[11]_i_8_n_0\,
      I5 => CO(0),
      O => D(0)
    );
\ctrl[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => CO(0),
      I1 => \ctrl[11]_i_8_n_0\,
      I2 => \ctrl[11]_i_7_n_0\,
      I3 => \ctrl[11]_i_6_n_0\,
      I4 => \ctrl[11]_i_9_n_0\,
      I5 => data_2(0),
      O => \^delay_reg[3][8]\
    );
\ctrl[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFD7FFFFFFFFF"
    )
        port map (
      I0 => crc_d(10),
      I1 => p_1_in25_in,
      I2 => \crc_q_reg_n_0_[0]\,
      I3 => \^crc_q_reg[25]_0\,
      I4 => \crc_q[26]_i_2_n_0\,
      I5 => crc_d(25),
      O => \ctrl[11]_i_4_n_0\
    );
\ctrl[11]_i_5\: unisim.vcomponents.LUT6
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
      O => \ctrl[11]_i_5_n_0\
    );
\ctrl[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \crc_q_reg[7]_0\(2),
      I1 => crc_d(4),
      I2 => crc_d(26),
      I3 => crc_d(6),
      I4 => \ctrl_reg[11]\,
      I5 => \ctrl[11]_i_11_n_0\,
      O => \ctrl[11]_i_6_n_0\
    );
\ctrl[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => crc_d(29),
      I1 => crc_d(28),
      I2 => \ctrl_reg[11]_0\,
      I3 => crc_d(9),
      I4 => crc_d(13),
      I5 => \ctrl_reg[11]_1\,
      O => \ctrl[11]_i_7_n_0\
    );
\ctrl[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \ctrl[11]_i_14_n_0\,
      I1 => crc_d(30),
      I2 => crc_d(18),
      I3 => crc_d(19),
      I4 => crc_d(16),
      O => \ctrl[11]_i_8_n_0\
    );
\ctrl[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => crc_d(24),
      I1 => crc_d(12),
      I2 => crc_d(15),
      I3 => crc_d(14),
      I4 => \ctrl[11]_i_15_n_0\,
      I5 => \ctrl[11]_i_16_n_0\,
      O => \ctrl[11]_i_9_n_0\
    );
ctrl_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^delay_reg[3][8]\,
      I1 => sys_rst_n,
      I2 => CO(0),
      I3 => \byte_cnt_reg[0]\,
      O => sys_rst_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_decoder is
  port (
    data_drop_vld : out STD_LOGIC;
    data_not_for_me_vld : out STD_LOGIC;
    data_broadcast_vld : out STD_LOGIC;
    data_for_me_vld : out STD_LOGIC;
    data_drop : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_not_for_me : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_broadcast : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_for_me : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl_4_rdy : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 48 downto 0 );
    sys_rst_n : in STD_LOGIC;
    ctrl_4_vld : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_decoder is
  signal ctrl_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ctrl_sel[0]_i_10_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_8_n_0\ : STD_LOGIC;
  signal \ctrl_sel[0]_i_9_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_10_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_11_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_8_n_0\ : STD_LOGIC;
  signal \ctrl_sel[1]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_broadcast[0]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_broadcast[1]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_broadcast[2]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_broadcast[3]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_broadcast[4]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_broadcast[5]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_broadcast[6]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_broadcast[7]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of data_broadcast_vld_INST_0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_drop[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_drop[1]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_drop[2]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_drop[3]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_drop[4]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_drop[5]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_drop[6]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_drop[7]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of data_drop_vld_INST_0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data_for_me[0]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_for_me[1]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_for_me[2]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_for_me[3]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_for_me[4]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_for_me[5]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_for_me[6]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_for_me[7]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of data_for_me_vld_INST_0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_not_for_me[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_not_for_me[1]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_not_for_me[2]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_not_for_me[3]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_not_for_me[4]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_not_for_me[5]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_not_for_me[6]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_not_for_me[7]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of data_not_for_me_vld_INST_0 : label is "soft_lutpair25";
begin
\ctrl_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00FC00AA00"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => \ctrl_sel[0]_i_2_n_0\,
      I2 => \ctrl_sel[0]_i_3_n_0\,
      I3 => sys_rst_n,
      I4 => ctrl_4_vld,
      I5 => Q(0),
      O => \ctrl_sel[0]_i_1_n_0\
    );
\ctrl_sel[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(9),
      I3 => Q(10),
      I4 => Q(8),
      I5 => Q(7),
      O => \ctrl_sel[0]_i_10_n_0\
    );
\ctrl_sel[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ctrl_sel[0]_i_4_n_0\,
      I1 => \ctrl_sel[0]_i_5_n_0\,
      I2 => \ctrl_sel[0]_i_6_n_0\,
      I3 => \ctrl_sel[0]_i_7_n_0\,
      I4 => \ctrl_sel[0]_i_8_n_0\,
      I5 => \ctrl_sel[0]_i_9_n_0\,
      O => \ctrl_sel[0]_i_2_n_0\
    );
\ctrl_sel[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => \ctrl_sel[1]_i_10_n_0\,
      I5 => \ctrl_sel[0]_i_10_n_0\,
      O => \ctrl_sel[0]_i_3_n_0\
    );
\ctrl_sel[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => Q(41),
      I1 => Q(42),
      I2 => Q(39),
      I3 => Q(40),
      I4 => Q(37),
      I5 => Q(38),
      O => \ctrl_sel[0]_i_4_n_0\
    );
\ctrl_sel[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(47),
      I1 => Q(48),
      I2 => Q(45),
      I3 => Q(46),
      I4 => Q(44),
      I5 => Q(43),
      O => \ctrl_sel[0]_i_5_n_0\
    );
\ctrl_sel[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => Q(29),
      I1 => Q(30),
      I2 => Q(27),
      I3 => Q(28),
      I4 => Q(26),
      I5 => Q(25),
      O => \ctrl_sel[0]_i_6_n_0\
    );
\ctrl_sel[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => Q(35),
      I1 => Q(36),
      I2 => Q(33),
      I3 => Q(34),
      I4 => Q(32),
      I5 => Q(31),
      O => \ctrl_sel[0]_i_7_n_0\
    );
\ctrl_sel[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(23),
      I1 => Q(24),
      I2 => Q(21),
      I3 => Q(22),
      I4 => Q(20),
      I5 => Q(19),
      O => \ctrl_sel[0]_i_8_n_0\
    );
\ctrl_sel[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => Q(17),
      I1 => Q(18),
      I2 => Q(16),
      I3 => Q(15),
      I4 => Q(13),
      I5 => Q(14),
      O => \ctrl_sel[0]_i_9_n_0\
    );
\ctrl_sel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA00FC00AA00"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => \ctrl_sel[1]_i_2_n_0\,
      I2 => \ctrl_sel[1]_i_3_n_0\,
      I3 => sys_rst_n,
      I4 => ctrl_4_vld,
      I5 => Q(0),
      O => \ctrl_sel[1]_i_1_n_0\
    );
\ctrl_sel[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      O => \ctrl_sel[1]_i_10_n_0\
    );
\ctrl_sel[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(12),
      I2 => Q(9),
      I3 => Q(10),
      I4 => Q(8),
      I5 => Q(7),
      O => \ctrl_sel[1]_i_11_n_0\
    );
\ctrl_sel[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ctrl_sel[1]_i_4_n_0\,
      I1 => \ctrl_sel[1]_i_5_n_0\,
      I2 => \ctrl_sel[1]_i_6_n_0\,
      I3 => \ctrl_sel[1]_i_7_n_0\,
      I4 => \ctrl_sel[1]_i_8_n_0\,
      I5 => \ctrl_sel[1]_i_9_n_0\,
      O => \ctrl_sel[1]_i_2_n_0\
    );
\ctrl_sel[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => \ctrl_sel[1]_i_10_n_0\,
      I5 => \ctrl_sel[1]_i_11_n_0\,
      O => \ctrl_sel[1]_i_3_n_0\
    );
\ctrl_sel[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(41),
      I1 => Q(42),
      I2 => Q(39),
      I3 => Q(40),
      I4 => Q(38),
      I5 => Q(37),
      O => \ctrl_sel[1]_i_4_n_0\
    );
\ctrl_sel[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(47),
      I1 => Q(48),
      I2 => Q(45),
      I3 => Q(46),
      I4 => Q(44),
      I5 => Q(43),
      O => \ctrl_sel[1]_i_5_n_0\
    );
\ctrl_sel[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(29),
      I1 => Q(30),
      I2 => Q(27),
      I3 => Q(28),
      I4 => Q(26),
      I5 => Q(25),
      O => \ctrl_sel[1]_i_6_n_0\
    );
\ctrl_sel[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(35),
      I1 => Q(36),
      I2 => Q(33),
      I3 => Q(34),
      I4 => Q(32),
      I5 => Q(31),
      O => \ctrl_sel[1]_i_7_n_0\
    );
\ctrl_sel[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(23),
      I1 => Q(24),
      I2 => Q(21),
      I3 => Q(22),
      I4 => Q(20),
      I5 => Q(19),
      O => \ctrl_sel[1]_i_8_n_0\
    );
\ctrl_sel[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(17),
      I1 => Q(18),
      I2 => Q(15),
      I3 => Q(16),
      I4 => Q(14),
      I5 => Q(13),
      O => \ctrl_sel[1]_i_9_n_0\
    );
\ctrl_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \ctrl_sel[0]_i_1_n_0\,
      Q => ctrl_sel(0),
      R => '0'
    );
\ctrl_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \ctrl_sel[1]_i_1_n_0\,
      Q => ctrl_sel(1),
      R => '0'
    );
\data_broadcast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(0),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(0)
    );
\data_broadcast[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(1),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(1)
    );
\data_broadcast[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(2),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(2)
    );
\data_broadcast[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(3),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(3)
    );
\data_broadcast[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(4),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(4)
    );
\data_broadcast[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(5),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(5)
    );
\data_broadcast[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(6),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(6)
    );
\data_broadcast[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => DOBDO(7),
      I1 => ctrl_sel(0),
      I2 => ctrl_sel(1),
      O => data_broadcast(7)
    );
data_broadcast_vld_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => ctrl_4_rdy,
      I1 => CO(0),
      I2 => ctrl_sel(0),
      I3 => ctrl_sel(1),
      O => data_broadcast_vld
    );
\data_drop[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(0),
      I2 => ctrl_sel(1),
      O => data_drop(0)
    );
\data_drop[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(1),
      I2 => ctrl_sel(1),
      O => data_drop(1)
    );
\data_drop[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(2),
      I2 => ctrl_sel(1),
      O => data_drop(2)
    );
\data_drop[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(3),
      I2 => ctrl_sel(1),
      O => data_drop(3)
    );
\data_drop[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(4),
      I2 => ctrl_sel(1),
      O => data_drop(4)
    );
\data_drop[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(5),
      I2 => ctrl_sel(1),
      O => data_drop(5)
    );
\data_drop[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(6),
      I2 => ctrl_sel(1),
      O => data_drop(6)
    );
\data_drop[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => DOBDO(7),
      I2 => ctrl_sel(1),
      O => data_drop(7)
    );
data_drop_vld_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => ctrl_sel(0),
      I1 => ctrl_4_rdy,
      I2 => CO(0),
      I3 => ctrl_sel(1),
      O => data_drop_vld
    );
\data_for_me[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(0),
      I2 => ctrl_sel(0),
      O => data_for_me(0)
    );
\data_for_me[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(1),
      I2 => ctrl_sel(0),
      O => data_for_me(1)
    );
\data_for_me[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(2),
      I2 => ctrl_sel(0),
      O => data_for_me(2)
    );
\data_for_me[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(3),
      I2 => ctrl_sel(0),
      O => data_for_me(3)
    );
\data_for_me[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(4),
      I2 => ctrl_sel(0),
      O => data_for_me(4)
    );
\data_for_me[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(5),
      I2 => ctrl_sel(0),
      O => data_for_me(5)
    );
\data_for_me[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(6),
      I2 => ctrl_sel(0),
      O => data_for_me(6)
    );
\data_for_me[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(7),
      I2 => ctrl_sel(0),
      O => data_for_me(7)
    );
data_for_me_vld_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => ctrl_4_rdy,
      I2 => CO(0),
      I3 => ctrl_sel(0),
      O => data_for_me_vld
    );
\data_not_for_me[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(0),
      I2 => ctrl_sel(0),
      O => data_not_for_me(0)
    );
\data_not_for_me[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(1),
      I2 => ctrl_sel(0),
      O => data_not_for_me(1)
    );
\data_not_for_me[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(2),
      I2 => ctrl_sel(0),
      O => data_not_for_me(2)
    );
\data_not_for_me[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(3),
      I2 => ctrl_sel(0),
      O => data_not_for_me(3)
    );
\data_not_for_me[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(4),
      I2 => ctrl_sel(0),
      O => data_not_for_me(4)
    );
\data_not_for_me[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(5),
      I2 => ctrl_sel(0),
      O => data_not_for_me(5)
    );
\data_not_for_me[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(6),
      I2 => ctrl_sel(0),
      O => data_not_for_me(6)
    );
\data_not_for_me[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => DOBDO(7),
      I2 => ctrl_sel(0),
      O => data_not_for_me(7)
    );
data_not_for_me_vld_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => ctrl_sel(1),
      I1 => ctrl_4_rdy,
      I2 => CO(0),
      I3 => ctrl_sel(0),
      O => data_not_for_me_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_fsm is
  port (
    sys_rst_n_0 : out STD_LOGIC;
    control_reg_r_1_0 : out STD_LOGIC;
    state_reg_0 : out STD_LOGIC;
    ctrl_3_vld : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC;
    data_2 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ctrl_vld_reg_0 : in STD_LOGIC;
    \rd_data_reg[1]\ : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    state_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_fsm is
  signal byte_cnt0 : STD_LOGIC_VECTOR ( 10 downto 4 );
  signal \byte_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \byte_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \byte_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \byte_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal byte_cnt_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3_n_0\ : STD_LOGIC;
  signal \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3_n_0\ : STD_LOGIC;
  signal \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3_n_0\ : STD_LOGIC;
  signal \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3_n_0\ : STD_LOGIC;
  signal \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[44]_inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[45]_inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[46]_inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[47]_inst_rx_fsm_control_reg_r_4_n_0\ : STD_LOGIC;
  signal \control_reg[48]_inst_rx_fsm_control_reg_r_5_n_0\ : STD_LOGIC;
  signal \control_reg[49]_inst_rx_fsm_control_reg_r_5_n_0\ : STD_LOGIC;
  signal \control_reg[50]_inst_rx_fsm_control_reg_r_5_n_0\ : STD_LOGIC;
  signal \control_reg[51]_inst_rx_fsm_control_reg_r_5_n_0\ : STD_LOGIC;
  signal \control_reg_gate__0_n_0\ : STD_LOGIC;
  signal \control_reg_gate__1_n_0\ : STD_LOGIC;
  signal \control_reg_gate__2_n_0\ : STD_LOGIC;
  signal \control_reg_gate__3_n_0\ : STD_LOGIC;
  signal \control_reg_gate__4_n_0\ : STD_LOGIC;
  signal \control_reg_gate__5_n_0\ : STD_LOGIC;
  signal \control_reg_gate__6_n_0\ : STD_LOGIC;
  signal control_reg_gate_n_0 : STD_LOGIC;
  signal control_reg_r_0_n_0 : STD_LOGIC;
  signal \^control_reg_r_1_0\ : STD_LOGIC;
  signal control_reg_r_2_n_0 : STD_LOGIC;
  signal control_reg_r_3_n_0 : STD_LOGIC;
  signal control_reg_r_4_n_0 : STD_LOGIC;
  signal control_reg_r_5_n_0 : STD_LOGIC;
  signal control_reg_r_n_0 : STD_LOGIC;
  signal \ctrl[123]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[123]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[123]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[123]_i_4_n_0\ : STD_LOGIC;
  signal \^ctrl_3_vld\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 123 downto 72 );
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal state_i_3_n_0 : STD_LOGIC;
  signal \^state_reg_0\ : STD_LOGIC;
  signal \^sys_rst_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \byte_cnt[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \byte_cnt[10]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \byte_cnt[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \byte_cnt[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \byte_cnt[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \byte_cnt[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \byte_cnt[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \byte_cnt[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \byte_cnt[9]_i_1\ : label is "soft_lutpair51";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name : string;
  attribute srl_name of \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3 ";
  attribute srl_bus_name of \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3 ";
  attribute srl_bus_name of \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3 ";
  attribute srl_bus_name of \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3\ : label is "\inst/rx_fsm/control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3 ";
  attribute srl_bus_name of \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4 ";
  attribute srl_bus_name of \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4 ";
  attribute srl_bus_name of \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4 ";
  attribute srl_bus_name of \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg ";
  attribute srl_name of \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4\ : label is "\inst/rx_fsm/control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4 ";
  attribute SOFT_HLUTNM of control_reg_gate : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \control_reg_gate__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \control_reg_gate__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \control_reg_gate__2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \control_reg_gate__3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \control_reg_gate__4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \control_reg_gate__5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \control_reg_gate__6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ctrl[123]_i_2\ : label is "soft_lutpair49";
begin
  control_reg_r_1_0 <= \^control_reg_r_1_0\;
  ctrl_3_vld <= \^ctrl_3_vld\;
  state_reg_0 <= \^state_reg_0\;
  sys_rst_n_0 <= \^sys_rst_n_0\;
bram_reg_0_3_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ctrl_3_vld\,
      I1 => \rd_data_reg[1]\,
      O => wr_en
    );
\byte_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => \byte_cnt[10]_i_4_n_0\,
      I2 => byte_cnt_reg(0),
      O => p_0_in(0)
    );
\byte_cnt[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt0(10),
      I2 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(10)
    );
\byte_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => byte_cnt_reg(8),
      I1 => byte_cnt_reg(6),
      I2 => \byte_cnt[8]_i_2_n_0\,
      I3 => byte_cnt_reg(7),
      I4 => byte_cnt_reg(9),
      I5 => byte_cnt_reg(10),
      O => byte_cnt0(10)
    );
\byte_cnt[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => byte_cnt_reg(0),
      I1 => byte_cnt_reg(2),
      I2 => byte_cnt_reg(3),
      I3 => \byte_cnt[10]_i_5_n_0\,
      I4 => \byte_cnt[10]_i_6_n_0\,
      O => \byte_cnt[10]_i_4_n_0\
    );
\byte_cnt[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => byte_cnt_reg(8),
      I1 => byte_cnt_reg(7),
      I2 => byte_cnt_reg(10),
      I3 => byte_cnt_reg(1),
      O => \byte_cnt[10]_i_5_n_0\
    );
\byte_cnt[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => byte_cnt_reg(5),
      I1 => byte_cnt_reg(4),
      I2 => byte_cnt_reg(6),
      I3 => byte_cnt_reg(9),
      O => \byte_cnt[10]_i_6_n_0\
    );
\byte_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C28"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt_reg(1),
      I2 => byte_cnt_reg(0),
      I3 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(1)
    );
\byte_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCC2888"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt_reg(2),
      I2 => byte_cnt_reg(1),
      I3 => byte_cnt_reg(0),
      I4 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(2)
    );
\byte_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCCCCCC28888888"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt_reg(3),
      I2 => byte_cnt_reg(2),
      I3 => byte_cnt_reg(0),
      I4 => byte_cnt_reg(1),
      I5 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(3)
    );
\byte_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt0(4),
      I2 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(4)
    );
\byte_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => byte_cnt_reg(2),
      I1 => byte_cnt_reg(0),
      I2 => byte_cnt_reg(1),
      I3 => byte_cnt_reg(3),
      I4 => byte_cnt_reg(4),
      O => byte_cnt0(4)
    );
\byte_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt0(5),
      I2 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(5)
    );
\byte_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => byte_cnt_reg(3),
      I1 => byte_cnt_reg(1),
      I2 => byte_cnt_reg(0),
      I3 => byte_cnt_reg(2),
      I4 => byte_cnt_reg(4),
      I5 => byte_cnt_reg(5),
      O => byte_cnt0(5)
    );
\byte_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C28"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt_reg(6),
      I2 => \byte_cnt[8]_i_2_n_0\,
      I3 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(6)
    );
\byte_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCC2888"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt_reg(7),
      I2 => byte_cnt_reg(6),
      I3 => \byte_cnt[8]_i_2_n_0\,
      I4 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(7)
    );
\byte_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCCCCCC28888888"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt_reg(8),
      I2 => byte_cnt_reg(7),
      I3 => \byte_cnt[8]_i_2_n_0\,
      I4 => byte_cnt_reg(6),
      I5 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(8)
    );
\byte_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => byte_cnt_reg(5),
      I1 => byte_cnt_reg(3),
      I2 => byte_cnt_reg(1),
      I3 => byte_cnt_reg(0),
      I4 => byte_cnt_reg(2),
      I5 => byte_cnt_reg(4),
      O => \byte_cnt[8]_i_2_n_0\
    );
\byte_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => byte_cnt0(9),
      I2 => \byte_cnt[10]_i_4_n_0\,
      O => p_0_in(9)
    );
\byte_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => byte_cnt_reg(7),
      I1 => \byte_cnt[8]_i_2_n_0\,
      I2 => byte_cnt_reg(6),
      I3 => byte_cnt_reg(8),
      I4 => byte_cnt_reg(9),
      O => byte_cnt0(9)
    );
\byte_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(0),
      Q => byte_cnt_reg(0),
      R => SR(0)
    );
\byte_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(10),
      Q => byte_cnt_reg(10),
      R => SR(0)
    );
\byte_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(1),
      Q => byte_cnt_reg(1),
      R => SR(0)
    );
\byte_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(2),
      Q => byte_cnt_reg(2),
      R => SR(0)
    );
\byte_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(3),
      Q => byte_cnt_reg(3),
      R => SR(0)
    );
\byte_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(4),
      Q => byte_cnt_reg(4),
      R => SR(0)
    );
\byte_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(5),
      Q => byte_cnt_reg(5),
      R => SR(0)
    );
\byte_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(6),
      Q => byte_cnt_reg(6),
      R => SR(0)
    );
\byte_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(7),
      Q => byte_cnt_reg(7),
      R => SR(0)
    );
\byte_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(8),
      Q => byte_cnt_reg(8),
      R => SR(0)
    );
\byte_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_0_in(9),
      Q => byte_cnt_reg(9),
      R => SR(0)
    );
\control_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(112),
      Q => p_2_in(120),
      R => \^sys_rst_n_0\
    );
\control_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(113),
      Q => p_2_in(121),
      R => \^sys_rst_n_0\
    );
\control_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(114),
      Q => p_2_in(122),
      R => \^sys_rst_n_0\
    );
\control_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(115),
      Q => p_2_in(123),
      R => \^sys_rst_n_0\
    );
\control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(4),
      Q => \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3_n_0\
    );
\control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(5),
      Q => \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3_n_0\
    );
\control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(6),
      Q => \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3_n_0\
    );
\control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(7),
      Q => \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3_n_0\
    );
\control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(0),
      Q => \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4_n_0\
    );
\control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(1),
      Q => \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4_n_0\
    );
\control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(2),
      Q => \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4_n_0\
    );
\control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => CO(0),
      CLK => sys_clk,
      D => data_2(3),
      Q => \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4_n_0\
    );
\control_reg[44]_inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[36]_srl5___inst_rx_fsm_control_reg_r_3_n_0\,
      Q => \control_reg[44]_inst_rx_fsm_control_reg_r_4_n_0\,
      R => '0'
    );
\control_reg[45]_inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[37]_srl5___inst_rx_fsm_control_reg_r_3_n_0\,
      Q => \control_reg[45]_inst_rx_fsm_control_reg_r_4_n_0\,
      R => '0'
    );
\control_reg[46]_inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[38]_srl5___inst_rx_fsm_control_reg_r_3_n_0\,
      Q => \control_reg[46]_inst_rx_fsm_control_reg_r_4_n_0\,
      R => '0'
    );
\control_reg[47]_inst_rx_fsm_control_reg_r_4\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[39]_srl5___inst_rx_fsm_control_reg_r_3_n_0\,
      Q => \control_reg[47]_inst_rx_fsm_control_reg_r_4_n_0\,
      R => '0'
    );
\control_reg[48]_inst_rx_fsm_control_reg_r_5\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[40]_srl6___inst_rx_fsm_control_reg_r_4_n_0\,
      Q => \control_reg[48]_inst_rx_fsm_control_reg_r_5_n_0\,
      R => '0'
    );
\control_reg[49]_inst_rx_fsm_control_reg_r_5\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[41]_srl6___inst_rx_fsm_control_reg_r_4_n_0\,
      Q => \control_reg[49]_inst_rx_fsm_control_reg_r_5_n_0\,
      R => '0'
    );
\control_reg[50]_inst_rx_fsm_control_reg_r_5\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[42]_srl6___inst_rx_fsm_control_reg_r_4_n_0\,
      Q => \control_reg[50]_inst_rx_fsm_control_reg_r_5_n_0\,
      R => '0'
    );
\control_reg[51]_inst_rx_fsm_control_reg_r_5\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg[43]_srl6___inst_rx_fsm_control_reg_r_4_n_0\,
      Q => \control_reg[51]_inst_rx_fsm_control_reg_r_5_n_0\,
      R => '0'
    );
\control_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__6_n_0\,
      Q => p_2_in(72),
      R => \^sys_rst_n_0\
    );
\control_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__5_n_0\,
      Q => p_2_in(73),
      R => \^sys_rst_n_0\
    );
\control_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__4_n_0\,
      Q => p_2_in(74),
      R => \^sys_rst_n_0\
    );
\control_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__3_n_0\,
      Q => p_2_in(75),
      R => \^sys_rst_n_0\
    );
\control_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__2_n_0\,
      Q => p_2_in(76),
      R => \^sys_rst_n_0\
    );
\control_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__1_n_0\,
      Q => p_2_in(77),
      R => \^sys_rst_n_0\
    );
\control_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \control_reg_gate__0_n_0\,
      Q => p_2_in(78),
      R => \^sys_rst_n_0\
    );
\control_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => control_reg_gate_n_0,
      Q => p_2_in(79),
      R => \^sys_rst_n_0\
    );
\control_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(72),
      Q => p_2_in(80),
      R => \^sys_rst_n_0\
    );
\control_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(73),
      Q => p_2_in(81),
      R => \^sys_rst_n_0\
    );
\control_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(74),
      Q => p_2_in(82),
      R => \^sys_rst_n_0\
    );
\control_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(75),
      Q => p_2_in(83),
      R => \^sys_rst_n_0\
    );
\control_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(76),
      Q => p_2_in(84),
      R => \^sys_rst_n_0\
    );
\control_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(77),
      Q => p_2_in(85),
      R => \^sys_rst_n_0\
    );
\control_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(78),
      Q => p_2_in(86),
      R => \^sys_rst_n_0\
    );
\control_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(79),
      Q => p_2_in(87),
      R => \^sys_rst_n_0\
    );
\control_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(80),
      Q => p_2_in(88),
      R => \^sys_rst_n_0\
    );
\control_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(81),
      Q => p_2_in(89),
      R => \^sys_rst_n_0\
    );
\control_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(82),
      Q => p_2_in(90),
      R => \^sys_rst_n_0\
    );
\control_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(83),
      Q => p_2_in(91),
      R => \^sys_rst_n_0\
    );
\control_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(84),
      Q => p_2_in(92),
      R => \^sys_rst_n_0\
    );
\control_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(85),
      Q => p_2_in(93),
      R => \^sys_rst_n_0\
    );
\control_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(86),
      Q => p_2_in(94),
      R => \^sys_rst_n_0\
    );
\control_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(87),
      Q => p_2_in(95),
      R => \^sys_rst_n_0\
    );
\control_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(88),
      Q => p_2_in(96),
      R => \^sys_rst_n_0\
    );
\control_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(89),
      Q => p_2_in(97),
      R => \^sys_rst_n_0\
    );
\control_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(90),
      Q => p_2_in(98),
      R => \^sys_rst_n_0\
    );
\control_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(91),
      Q => p_2_in(99),
      R => \^sys_rst_n_0\
    );
\control_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(92),
      Q => p_2_in(100),
      R => \^sys_rst_n_0\
    );
\control_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(93),
      Q => p_2_in(101),
      R => \^sys_rst_n_0\
    );
\control_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(94),
      Q => p_2_in(102),
      R => \^sys_rst_n_0\
    );
\control_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(95),
      Q => p_2_in(103),
      R => \^sys_rst_n_0\
    );
\control_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(96),
      Q => p_2_in(104),
      R => \^sys_rst_n_0\
    );
\control_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(97),
      Q => p_2_in(105),
      R => \^sys_rst_n_0\
    );
\control_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(98),
      Q => p_2_in(106),
      R => \^sys_rst_n_0\
    );
\control_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(99),
      Q => p_2_in(107),
      R => \^sys_rst_n_0\
    );
\control_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(100),
      Q => p_2_in(108),
      R => \^sys_rst_n_0\
    );
\control_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(101),
      Q => p_2_in(109),
      R => \^sys_rst_n_0\
    );
\control_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(102),
      Q => p_2_in(110),
      R => \^sys_rst_n_0\
    );
\control_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(103),
      Q => p_2_in(111),
      R => \^sys_rst_n_0\
    );
\control_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(104),
      Q => p_2_in(112),
      R => \^sys_rst_n_0\
    );
\control_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(105),
      Q => p_2_in(113),
      R => \^sys_rst_n_0\
    );
\control_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(106),
      Q => p_2_in(114),
      R => \^sys_rst_n_0\
    );
\control_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(107),
      Q => p_2_in(115),
      R => \^sys_rst_n_0\
    );
\control_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(108),
      Q => p_2_in(116),
      R => \^sys_rst_n_0\
    );
\control_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(109),
      Q => p_2_in(117),
      R => \^sys_rst_n_0\
    );
\control_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(110),
      Q => p_2_in(118),
      R => \^sys_rst_n_0\
    );
\control_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => p_2_in(111),
      Q => p_2_in(119),
      R => \^sys_rst_n_0\
    );
control_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[51]_inst_rx_fsm_control_reg_r_5_n_0\,
      I1 => control_reg_r_5_n_0,
      O => control_reg_gate_n_0
    );
\control_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[50]_inst_rx_fsm_control_reg_r_5_n_0\,
      I1 => control_reg_r_5_n_0,
      O => \control_reg_gate__0_n_0\
    );
\control_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[49]_inst_rx_fsm_control_reg_r_5_n_0\,
      I1 => control_reg_r_5_n_0,
      O => \control_reg_gate__1_n_0\
    );
\control_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[48]_inst_rx_fsm_control_reg_r_5_n_0\,
      I1 => control_reg_r_5_n_0,
      O => \control_reg_gate__2_n_0\
    );
\control_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[47]_inst_rx_fsm_control_reg_r_4_n_0\,
      I1 => control_reg_r_4_n_0,
      O => \control_reg_gate__3_n_0\
    );
\control_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[46]_inst_rx_fsm_control_reg_r_4_n_0\,
      I1 => control_reg_r_4_n_0,
      O => \control_reg_gate__4_n_0\
    );
\control_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[45]_inst_rx_fsm_control_reg_r_4_n_0\,
      I1 => control_reg_r_4_n_0,
      O => \control_reg_gate__5_n_0\
    );
\control_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \control_reg[44]_inst_rx_fsm_control_reg_r_4_n_0\,
      I1 => control_reg_r_4_n_0,
      O => \control_reg_gate__6_n_0\
    );
control_reg_r: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => '1',
      Q => control_reg_r_n_0,
      R => \^sys_rst_n_0\
    );
control_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => control_reg_r_n_0,
      Q => control_reg_r_0_n_0,
      R => \^sys_rst_n_0\
    );
control_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => control_reg_r_0_n_0,
      Q => \^control_reg_r_1_0\,
      R => \^sys_rst_n_0\
    );
control_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => \^control_reg_r_1_0\,
      Q => control_reg_r_2_n_0,
      R => \^sys_rst_n_0\
    );
control_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => control_reg_r_2_n_0,
      Q => control_reg_r_3_n_0,
      R => \^sys_rst_n_0\
    );
control_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => control_reg_r_3_n_0,
      Q => control_reg_r_4_n_0,
      R => \^sys_rst_n_0\
    );
control_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => CO(0),
      D => control_reg_r_4_n_0,
      Q => control_reg_r_5_n_0,
      R => \^sys_rst_n_0\
    );
\ctrl[123]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => CO(0),
      I1 => \^state_reg_0\,
      I2 => \ctrl[123]_i_2_n_0\,
      I3 => byte_cnt_reg(9),
      I4 => byte_cnt_reg(8),
      I5 => \ctrl[123]_i_3_n_0\,
      O => \ctrl[123]_i_1_n_0\
    );
\ctrl[123]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_cnt_reg(1),
      I1 => byte_cnt_reg(10),
      O => \ctrl[123]_i_2_n_0\
    );
\ctrl[123]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => byte_cnt_reg(5),
      I1 => byte_cnt_reg(4),
      I2 => byte_cnt_reg(7),
      I3 => byte_cnt_reg(6),
      I4 => \ctrl[123]_i_4_n_0\,
      O => \ctrl[123]_i_3_n_0\
    );
\ctrl[123]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => byte_cnt_reg(2),
      I1 => data_2(8),
      I2 => byte_cnt_reg(0),
      I3 => byte_cnt_reg(3),
      O => \ctrl[123]_i_4_n_0\
    );
\ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(0),
      Q => Q(0),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(100),
      Q => Q(40),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(101),
      Q => Q(41),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(102),
      Q => Q(42),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(103),
      Q => Q(43),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(104),
      Q => Q(44),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(105),
      Q => Q(45),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(106),
      Q => Q(46),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(107),
      Q => Q(47),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(108),
      Q => Q(48),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(109),
      Q => Q(49),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(10),
      Q => Q(10),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(110),
      Q => Q(50),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(111),
      Q => Q(51),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(112),
      Q => Q(52),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(113),
      Q => Q(53),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(114),
      Q => Q(54),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(115),
      Q => Q(55),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(116),
      Q => Q(56),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(117),
      Q => Q(57),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(118),
      Q => Q(58),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(119),
      Q => Q(59),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => D(0),
      Q => Q(11),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(120),
      Q => Q(60),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(121),
      Q => Q(61),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(122),
      Q => Q(62),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(123),
      Q => Q(63),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(1),
      Q => Q(1),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(2),
      Q => Q(2),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(3),
      Q => Q(3),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(4),
      Q => Q(4),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(5),
      Q => Q(5),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(6),
      Q => Q(6),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(72),
      Q => Q(12),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(73),
      Q => Q(13),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(74),
      Q => Q(14),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(75),
      Q => Q(15),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(76),
      Q => Q(16),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(77),
      Q => Q(17),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(78),
      Q => Q(18),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(79),
      Q => Q(19),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(7),
      Q => Q(7),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(80),
      Q => Q(20),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(81),
      Q => Q(21),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(82),
      Q => Q(22),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(83),
      Q => Q(23),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(84),
      Q => Q(24),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(85),
      Q => Q(25),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(86),
      Q => Q(26),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(87),
      Q => Q(27),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(88),
      Q => Q(28),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(89),
      Q => Q(29),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(8),
      Q => Q(8),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(90),
      Q => Q(30),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(91),
      Q => Q(31),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(92),
      Q => Q(32),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(93),
      Q => Q(33),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(94),
      Q => Q(34),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(95),
      Q => Q(35),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(96),
      Q => Q(36),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(97),
      Q => Q(37),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(98),
      Q => Q(38),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \ctrl[123]_i_1_n_0\,
      D => p_2_in(99),
      Q => Q(39),
      R => \^sys_rst_n_0\
    );
\ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => E(0),
      D => byte_cnt_reg(9),
      Q => Q(9),
      R => \^sys_rst_n_0\
    );
ctrl_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => ctrl_vld_reg_0,
      Q => \^ctrl_3_vld\,
      R => '0'
    );
\gry_cnt_reg[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => \^sys_rst_n_0\
    );
state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FFC000"
    )
        port map (
      I0 => state_reg_1,
      I1 => data_2(8),
      I2 => state_i_2_n_0,
      I3 => CO(0),
      I4 => \^state_reg_0\,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => byte_cnt_reg(9),
      I1 => byte_cnt_reg(6),
      I2 => state_i_3_n_0,
      I3 => byte_cnt_reg(8),
      I4 => byte_cnt_reg(7),
      I5 => byte_cnt_reg(10),
      O => state_i_2_n_0
    );
state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => byte_cnt_reg(0),
      I1 => byte_cnt_reg(2),
      I2 => byte_cnt_reg(1),
      I3 => byte_cnt_reg(3),
      I4 => byte_cnt_reg(5),
      I5 => byte_cnt_reg(4),
      O => state_i_3_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => \^state_reg_0\,
      R => \^sys_rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_q_reg[19]\ : out STD_LOGIC;
    bram_reg_1 : out STD_LOGIC;
    bram_reg_2 : out STD_LOGIC;
    bram_reg_3 : out STD_LOGIC;
    bram_reg_4 : out STD_LOGIC;
    \crc_q_reg[9]\ : out STD_LOGIC;
    bram_reg_5 : out STD_LOGIC;
    bram_reg_6 : out STD_LOGIC;
    phy_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 9 downto 0 );
    phy_data_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_rst_n : in STD_LOGIC;
    \ctrl[11]_i_6\ : in STD_LOGIC;
    \crc_q_reg[1]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \crc_q_reg[7]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram is
  signal \^dobdo\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^bram_reg_1\ : STD_LOGIC;
  signal \^bram_reg_2\ : STD_LOGIC;
  signal \^bram_reg_3\ : STD_LOGIC;
  signal \^bram_reg_4\ : STD_LOGIC;
  signal \ctrl[11]_i_17_n_0\ : STD_LOGIC;
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
  attribute RTL_RAM_NAME of bram_reg : label is "inst/cdc_fifo/fifo_module/bram";
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
  attribute SOFT_HLUTNM of \crc_q[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \crc_q[12]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crc_q[16]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \crc_q[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \crc_q[29]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ctrl[11]_i_17\ : label is "soft_lutpair0";
begin
  DOBDO(8 downto 0) <= \^dobdo\(8 downto 0);
  bram_reg_1 <= \^bram_reg_1\;
  bram_reg_2 <= \^bram_reg_2\;
  bram_reg_3 <= \^bram_reg_3\;
  bram_reg_4 <= \^bram_reg_4\;
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
      CLKARDCLK => phy_clk,
      CLKBWRCLK => sys_clk,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8 downto 0) => phy_data_in(8 downto 0),
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
      O => bram_reg_6
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
      O => \^bram_reg_4\
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
      I2 => \^bram_reg_4\,
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
      O => bram_reg_5
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
      I4 => \^bram_reg_4\,
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
\ctrl[11]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F66F6FF66FF6F66F"
    )
        port map (
      I0 => \ctrl[11]_i_17_n_0\,
      I1 => \ctrl[11]_i_6\,
      I2 => \^dobdo\(7),
      I3 => \crc_q_reg[1]\(2),
      I4 => \crc_q_reg[1]\(7),
      I5 => \^dobdo\(1),
      O => bram_reg_0
    );
\ctrl[11]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FF6F96FF96F9FF6"
    )
        port map (
      I0 => \^bram_reg_3\,
      I1 => \crc_q_reg[1]\(0),
      I2 => \crc_q_reg[7]\,
      I3 => \^bram_reg_4\,
      I4 => \^dobdo\(7),
      I5 => \crc_q_reg[1]\(2),
      O => \crc_q_reg[9]\
    );
\ctrl[11]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9696FF96FFFF96"
    )
        port map (
      I0 => \^bram_reg_1\,
      I1 => \ctrl[11]_i_6\,
      I2 => \crc_q_reg[1]\(1),
      I3 => \crc_q_reg[7]\,
      I4 => \^bram_reg_2\,
      I5 => \^bram_reg_3\,
      O => \crc_q_reg[19]\
    );
\ctrl[11]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^dobdo\(0),
      I1 => \crc_q_reg[1]\(8),
      O => \ctrl[11]_i_17_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0\ is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0\ : entity is "fifo_bram";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0\ is
  signal NLW_bram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_bram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_bram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of bram_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of bram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg : label is "inst/data_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_reg : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of bram_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_reg : label is 7;
begin
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
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => \out\(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 3) => ADDRBWRADDR(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      CLKARDCLK => sys_clk,
      CLKBWRCLK => sys_clk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_bram_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_bram_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPADOP(1 downto 0) => NLW_bram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_bram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => WEA(0),
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    sys_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \rd_data_reg[121]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ADDRA : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rd_data_reg[121]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1\ : entity is "fifo_bram";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1\ is
  signal bram_reg_0_3_72_77_n_0 : STD_LOGIC;
  signal bram_reg_0_3_72_77_n_1 : STD_LOGIC;
  signal bram_reg_0_3_72_77_n_2 : STD_LOGIC;
  signal bram_reg_0_3_72_77_n_3 : STD_LOGIC;
  signal rd_data0 : STD_LOGIC_VECTOR ( 123 downto 0 );
  signal NLW_bram_reg_0_3_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_102_107_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_108_113_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_114_119_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_120_123_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_120_123_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_72_77_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_78_83_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_84_89_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_90_95_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_bram_reg_0_3_96_101_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of bram_reg_0_3_0_5 : label is 496;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg_0_3_0_5 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of bram_reg_0_3_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of bram_reg_0_3_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of bram_reg_0_3_0_5 : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of bram_reg_0_3_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of bram_reg_0_3_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of bram_reg_0_3_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_102_107 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_102_107 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_102_107 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_102_107 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_102_107 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_102_107 : label is 3;
  attribute ram_offset of bram_reg_0_3_102_107 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_102_107 : label is 102;
  attribute ram_slice_end of bram_reg_0_3_102_107 : label is 107;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_108_113 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_108_113 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_108_113 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_108_113 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_108_113 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_108_113 : label is 3;
  attribute ram_offset of bram_reg_0_3_108_113 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_108_113 : label is 108;
  attribute ram_slice_end of bram_reg_0_3_108_113 : label is 113;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_114_119 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_114_119 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_114_119 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_114_119 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_114_119 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_114_119 : label is 3;
  attribute ram_offset of bram_reg_0_3_114_119 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_114_119 : label is 114;
  attribute ram_slice_end of bram_reg_0_3_114_119 : label is 119;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_120_123 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_120_123 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_120_123 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_120_123 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_120_123 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_120_123 : label is 3;
  attribute ram_offset of bram_reg_0_3_120_123 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_120_123 : label is 120;
  attribute ram_slice_end of bram_reg_0_3_120_123 : label is 123;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_6_11 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_6_11 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_6_11 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_6_11 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_6_11 : label is 3;
  attribute ram_offset of bram_reg_0_3_6_11 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_6_11 : label is 6;
  attribute ram_slice_end of bram_reg_0_3_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_72_77 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_72_77 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_72_77 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_72_77 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_72_77 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_72_77 : label is 3;
  attribute ram_offset of bram_reg_0_3_72_77 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_72_77 : label is 72;
  attribute ram_slice_end of bram_reg_0_3_72_77 : label is 77;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_78_83 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_78_83 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_78_83 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_78_83 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_78_83 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_78_83 : label is 3;
  attribute ram_offset of bram_reg_0_3_78_83 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_78_83 : label is 78;
  attribute ram_slice_end of bram_reg_0_3_78_83 : label is 83;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_84_89 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_84_89 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_84_89 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_84_89 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_84_89 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_84_89 : label is 3;
  attribute ram_offset of bram_reg_0_3_84_89 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_84_89 : label is 84;
  attribute ram_slice_end of bram_reg_0_3_84_89 : label is 89;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_90_95 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_90_95 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_90_95 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_90_95 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_90_95 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_90_95 : label is 3;
  attribute ram_offset of bram_reg_0_3_90_95 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_90_95 : label is 90;
  attribute ram_slice_end of bram_reg_0_3_90_95 : label is 95;
  attribute METHODOLOGY_DRC_VIOS of bram_reg_0_3_96_101 : label is "";
  attribute RTL_RAM_BITS of bram_reg_0_3_96_101 : label is 496;
  attribute RTL_RAM_NAME of bram_reg_0_3_96_101 : label is "inst/control_fifo/fifo_module/bram";
  attribute RTL_RAM_TYPE of bram_reg_0_3_96_101 : label is "RAM_SDP";
  attribute ram_addr_begin of bram_reg_0_3_96_101 : label is 0;
  attribute ram_addr_end of bram_reg_0_3_96_101 : label is 3;
  attribute ram_offset of bram_reg_0_3_96_101 : label is 0;
  attribute ram_slice_begin of bram_reg_0_3_96_101 : label is 96;
  attribute ram_slice_end of bram_reg_0_3_96_101 : label is 101;
begin
bram_reg_0_3_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(1 downto 0),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(3 downto 2),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(1 downto 0),
      DOB(1 downto 0) => rd_data0(3 downto 2),
      DOC(1 downto 0) => rd_data0(5 downto 4),
      DOD(1 downto 0) => NLW_bram_reg_0_3_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_102_107: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(43 downto 42),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(45 downto 44),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(47 downto 46),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(103 downto 102),
      DOB(1 downto 0) => rd_data0(105 downto 104),
      DOC(1 downto 0) => rd_data0(107 downto 106),
      DOD(1 downto 0) => NLW_bram_reg_0_3_102_107_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_108_113: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(49 downto 48),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(51 downto 50),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(53 downto 52),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(109 downto 108),
      DOB(1 downto 0) => rd_data0(111 downto 110),
      DOC(1 downto 0) => rd_data0(113 downto 112),
      DOD(1 downto 0) => NLW_bram_reg_0_3_108_113_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_114_119: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(55 downto 54),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(57 downto 56),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(59 downto 58),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(115 downto 114),
      DOB(1 downto 0) => rd_data0(117 downto 116),
      DOC(1 downto 0) => rd_data0(119 downto 118),
      DOD(1 downto 0) => NLW_bram_reg_0_3_114_119_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_120_123: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(61 downto 60),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(63 downto 62),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(121 downto 120),
      DOB(1 downto 0) => rd_data0(123 downto 122),
      DOC(1 downto 0) => NLW_bram_reg_0_3_120_123_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_bram_reg_0_3_120_123_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(7 downto 6),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(9 downto 8),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(7 downto 6),
      DOB(1 downto 0) => rd_data0(9 downto 8),
      DOC(1 downto 0) => rd_data0(11 downto 10),
      DOD(1 downto 0) => NLW_bram_reg_0_3_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_72_77: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(13 downto 12),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(15 downto 14),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => bram_reg_0_3_72_77_n_0,
      DOA(0) => bram_reg_0_3_72_77_n_1,
      DOB(1) => bram_reg_0_3_72_77_n_2,
      DOB(0) => bram_reg_0_3_72_77_n_3,
      DOC(1 downto 0) => rd_data0(77 downto 76),
      DOD(1 downto 0) => NLW_bram_reg_0_3_72_77_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_78_83: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(19 downto 18),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(21 downto 20),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(79 downto 78),
      DOB(1 downto 0) => rd_data0(81 downto 80),
      DOC(1 downto 0) => rd_data0(83 downto 82),
      DOD(1 downto 0) => NLW_bram_reg_0_3_78_83_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_84_89: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(25 downto 24),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(27 downto 26),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(85 downto 84),
      DOB(1 downto 0) => rd_data0(87 downto 86),
      DOC(1 downto 0) => rd_data0(89 downto 88),
      DOD(1 downto 0) => NLW_bram_reg_0_3_84_89_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_90_95: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(31 downto 30),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(33 downto 32),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(35 downto 34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(91 downto 90),
      DOB(1 downto 0) => rd_data0(93 downto 92),
      DOC(1 downto 0) => rd_data0(95 downto 94),
      DOD(1 downto 0) => NLW_bram_reg_0_3_90_95_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
bram_reg_0_3_96_101: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 2) => B"000",
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(4 downto 2) => B"000",
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(4 downto 2) => B"000",
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(4 downto 2) => B"000",
      ADDRD(1 downto 0) => \rd_data_reg[121]_1\(1 downto 0),
      DIA(1 downto 0) => \rd_data_reg[121]_0\(37 downto 36),
      DIB(1 downto 0) => \rd_data_reg[121]_0\(39 downto 38),
      DIC(1 downto 0) => \rd_data_reg[121]_0\(41 downto 40),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data0(97 downto 96),
      DOB(1 downto 0) => rd_data0(99 downto 98),
      DOC(1 downto 0) => rd_data0(101 downto 100),
      DOD(1 downto 0) => NLW_bram_reg_0_3_96_101_DOD_UNCONNECTED(1 downto 0),
      WCLK => sys_clk,
      WE => wr_en
    );
\rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(0),
      Q => Q(0),
      R => '0'
    );
\rd_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(100),
      Q => Q(36),
      R => '0'
    );
\rd_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(101),
      Q => Q(37),
      R => '0'
    );
\rd_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(102),
      Q => Q(38),
      R => '0'
    );
\rd_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(103),
      Q => Q(39),
      R => '0'
    );
\rd_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(104),
      Q => Q(40),
      R => '0'
    );
\rd_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(105),
      Q => Q(41),
      R => '0'
    );
\rd_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(106),
      Q => Q(42),
      R => '0'
    );
\rd_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(107),
      Q => Q(43),
      R => '0'
    );
\rd_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(108),
      Q => Q(44),
      R => '0'
    );
\rd_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(109),
      Q => Q(45),
      R => '0'
    );
\rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(10),
      Q => Q(10),
      R => '0'
    );
\rd_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(110),
      Q => Q(46),
      R => '0'
    );
\rd_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(111),
      Q => Q(47),
      R => '0'
    );
\rd_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(112),
      Q => Q(48),
      R => '0'
    );
\rd_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(113),
      Q => Q(49),
      R => '0'
    );
\rd_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(114),
      Q => Q(50),
      R => '0'
    );
\rd_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(115),
      Q => Q(51),
      R => '0'
    );
\rd_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(116),
      Q => Q(52),
      R => '0'
    );
\rd_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(117),
      Q => Q(53),
      R => '0'
    );
\rd_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(118),
      Q => Q(54),
      R => '0'
    );
\rd_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(119),
      Q => Q(55),
      R => '0'
    );
\rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(11),
      Q => Q(11),
      R => '0'
    );
\rd_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(120),
      Q => Q(56),
      R => '0'
    );
\rd_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(121),
      Q => Q(57),
      R => '0'
    );
\rd_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(122),
      Q => Q(58),
      R => '0'
    );
\rd_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(123),
      Q => Q(59),
      R => '0'
    );
\rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(1),
      Q => Q(1),
      R => '0'
    );
\rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(2),
      Q => Q(2),
      R => '0'
    );
\rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(3),
      Q => Q(3),
      R => '0'
    );
\rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(4),
      Q => Q(4),
      R => '0'
    );
\rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(5),
      Q => Q(5),
      R => '0'
    );
\rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(6),
      Q => Q(6),
      R => '0'
    );
\rd_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(76),
      Q => Q(12),
      R => '0'
    );
\rd_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(77),
      Q => Q(13),
      R => '0'
    );
\rd_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(78),
      Q => Q(14),
      R => '0'
    );
\rd_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(79),
      Q => Q(15),
      R => '0'
    );
\rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(7),
      Q => Q(7),
      R => '0'
    );
\rd_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(80),
      Q => Q(16),
      R => '0'
    );
\rd_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(81),
      Q => Q(17),
      R => '0'
    );
\rd_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(82),
      Q => Q(18),
      R => '0'
    );
\rd_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(83),
      Q => Q(19),
      R => '0'
    );
\rd_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(84),
      Q => Q(20),
      R => '0'
    );
\rd_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(85),
      Q => Q(21),
      R => '0'
    );
\rd_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(86),
      Q => Q(22),
      R => '0'
    );
\rd_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(87),
      Q => Q(23),
      R => '0'
    );
\rd_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(88),
      Q => Q(24),
      R => '0'
    );
\rd_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(89),
      Q => Q(25),
      R => '0'
    );
\rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(8),
      Q => Q(8),
      R => '0'
    );
\rd_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(90),
      Q => Q(26),
      R => '0'
    );
\rd_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(91),
      Q => Q(27),
      R => '0'
    );
\rd_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(92),
      Q => Q(28),
      R => '0'
    );
\rd_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(93),
      Q => Q(29),
      R => '0'
    );
\rd_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(94),
      Q => Q(30),
      R => '0'
    );
\rd_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(95),
      Q => Q(31),
      R => '0'
    );
\rd_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(96),
      Q => Q(32),
      R => '0'
    );
\rd_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(97),
      Q => Q(33),
      R => '0'
    );
\rd_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(98),
      Q => Q(34),
      R => '0'
    );
\rd_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(99),
      Q => Q(35),
      R => '0'
    );
\rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => rd_data0(9),
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ctrl is
  port (
    ctrl_4_rdy : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \max_val_reg[0]_0\ : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_4_vld : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ctrl is
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^ctrl_4_rdy\ : STD_LOGIC;
  signal max_val : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal state0_carry_i_1_n_0 : STD_LOGIC;
  signal state0_carry_i_2_n_0 : STD_LOGIC;
  signal state0_carry_i_3_n_0 : STD_LOGIC;
  signal state0_carry_i_4_n_0 : STD_LOGIC;
  signal state0_carry_n_0 : STD_LOGIC;
  signal state0_carry_n_1 : STD_LOGIC;
  signal state0_carry_n_2 : STD_LOGIC;
  signal state0_carry_n_3 : STD_LOGIC;
  signal state_inv_i_1_n_0 : STD_LOGIC;
  signal NLW_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair44";
  attribute inverted : string;
  attribute inverted of state_reg_inv : label is "yes";
begin
  ctrl_4_rdy <= \^ctrl_4_rdy\;
\cnt_curr[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^ctrl_4_rdy\,
      I1 => CO(0),
      O => DI(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \p_0_in__0\(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => sys_rst_n,
      I1 => \^ctrl_4_rdy\,
      O => \count[10]_i_1_n_0\
    );
\count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(6),
      I2 => \count[10]_i_3_n_0\,
      I3 => count_reg(7),
      I4 => count_reg(9),
      I5 => count_reg(10),
      O => \p_0_in__0\(10)
    );
\count[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(3),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(2),
      I5 => count_reg(4),
      O => \count[10]_i_3_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \p_0_in__0\(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \p_0_in__0\(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      O => \p_0_in__0\(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \p_0_in__0\(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      I5 => count_reg(5),
      O => \p_0_in__0\(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count[10]_i_3_n_0\,
      I1 => count_reg(6),
      O => \p_0_in__0\(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[10]_i_3_n_0\,
      I1 => count_reg(6),
      I2 => count_reg(7),
      O => \p_0_in__0\(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(6),
      I1 => \count[10]_i_3_n_0\,
      I2 => count_reg(7),
      I3 => count_reg(8),
      O => \p_0_in__0\(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(7),
      I1 => \count[10]_i_3_n_0\,
      I2 => count_reg(6),
      I3 => count_reg(8),
      I4 => count_reg(9),
      O => \p_0_in__0\(9)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => count_reg(0),
      R => \count[10]_i_1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => count_reg(10),
      R => \count[10]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => count_reg(1),
      R => \count[10]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => count_reg(2),
      R => \count[10]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => count_reg(3),
      R => \count[10]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => count_reg(4),
      R => \count[10]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => count_reg(5),
      R => \count[10]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => count_reg(6),
      R => \count[10]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => count_reg(7),
      R => \count[10]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => count_reg(8),
      R => \count[10]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => count_reg(9),
      R => \count[10]_i_1_n_0\
    );
\max_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(0),
      Q => max_val(0),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(10),
      Q => max_val(10),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(1),
      Q => max_val(1),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(2),
      Q => max_val(2),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(3),
      Q => max_val(3),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(4),
      Q => max_val(4),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(5),
      Q => max_val(5),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(6),
      Q => max_val(6),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(7),
      Q => max_val(7),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(8),
      Q => max_val(8),
      R => \max_val_reg[0]_0\
    );
\max_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => \^ctrl_4_rdy\,
      D => D(9),
      Q => max_val(9),
      R => \max_val_reg[0]_0\
    );
state0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state0_carry_n_0,
      CO(2) => state0_carry_n_1,
      CO(1) => state0_carry_n_2,
      CO(0) => state0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_state0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state0_carry_i_1_n_0,
      S(2) => state0_carry_i_2_n_0,
      S(1) => state0_carry_i_3_n_0,
      S(0) => state0_carry_i_4_n_0
    );
state0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => count_reg(9),
      I1 => max_val(9),
      I2 => count_reg(10),
      I3 => max_val(10),
      O => state0_carry_i_1_n_0
    );
state0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(6),
      I1 => max_val(6),
      I2 => max_val(8),
      I3 => count_reg(8),
      I4 => max_val(7),
      I5 => count_reg(7),
      O => state0_carry_i_2_n_0
    );
state0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(3),
      I1 => max_val(3),
      I2 => max_val(5),
      I3 => count_reg(5),
      I4 => max_val(4),
      I5 => count_reg(4),
      O => state0_carry_i_3_n_0
    );
state0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_reg(0),
      I1 => max_val(0),
      I2 => max_val(2),
      I3 => count_reg(2),
      I4 => max_val(1),
      I5 => count_reg(1),
      O => state0_carry_i_4_n_0
    );
state_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => state0_carry_n_0,
      I1 => \^ctrl_4_rdy\,
      I2 => ctrl_4_vld,
      O => state_inv_i_1_n_0
    );
state_reg_inv: unisim.vcomponents.FDSE
     port map (
      C => sys_clk,
      CE => '1',
      D => state_inv_i_1_n_0,
      Q => \^ctrl_4_rdy\,
      S => \max_val_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_4_rdy : in STD_LOGIC;
    \cnt_curr_reg[11]_0\ : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter is
  signal \bram_reg_i_2__0_n_2\ : STD_LOGIC;
  signal \bram_reg_i_2__0_n_3\ : STD_LOGIC;
  signal \bram_reg_i_3__0_n_0\ : STD_LOGIC;
  signal \bram_reg_i_3__0_n_1\ : STD_LOGIC;
  signal \bram_reg_i_3__0_n_2\ : STD_LOGIC;
  signal \bram_reg_i_3__0_n_3\ : STD_LOGIC;
  signal \bram_reg_i_4__0_n_0\ : STD_LOGIC;
  signal \bram_reg_i_4__0_n_1\ : STD_LOGIC;
  signal \bram_reg_i_4__0_n_2\ : STD_LOGIC;
  signal \bram_reg_i_4__0_n_3\ : STD_LOGIC;
  signal bram_reg_i_5_n_0 : STD_LOGIC;
  signal \cnt_curr[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_bram_reg_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bram_reg_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_curr_reg[8]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_curr_reg[0]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_curr_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_curr_reg[8]_i_1__0\ : label is 11;
begin
  \out\(11 downto 0) <= \^out\(11 downto 0);
\bram_reg_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_reg_i_3__0_n_0\,
      CO(3 downto 2) => \NLW_bram_reg_i_2__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bram_reg_i_2__0_n_2\,
      CO(0) => \bram_reg_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bram_reg_i_2__0_O_UNCONNECTED\(3),
      O(2 downto 0) => ADDRBWRADDR(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \^out\(10 downto 8)
    );
\bram_reg_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_reg_i_4__0_n_0\,
      CO(3) => \bram_reg_i_3__0_n_0\,
      CO(2) => \bram_reg_i_3__0_n_1\,
      CO(1) => \bram_reg_i_3__0_n_2\,
      CO(0) => \bram_reg_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ADDRBWRADDR(7 downto 4),
      S(3 downto 0) => \^out\(7 downto 4)
    );
\bram_reg_i_4__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_reg_i_4__0_n_0\,
      CO(2) => \bram_reg_i_4__0_n_1\,
      CO(1) => \bram_reg_i_4__0_n_2\,
      CO(0) => \bram_reg_i_4__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^out\(0),
      O(3 downto 0) => ADDRBWRADDR(3 downto 0),
      S(3 downto 1) => \^out\(3 downto 1),
      S(0) => bram_reg_i_5_n_0
    );
bram_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^out\(0),
      I1 => CO(0),
      I2 => ctrl_4_rdy,
      O => bram_reg_i_5_n_0
    );
\cnt_curr[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => CO(0),
      I1 => ctrl_4_rdy,
      I2 => \^out\(0),
      O => \cnt_curr[0]_i_3_n_0\
    );
\cnt_curr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1__0_n_7\,
      Q => \^out\(0),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_curr_reg[0]_i_1__0_n_0\,
      CO(2) => \cnt_curr_reg[0]_i_1__0_n_1\,
      CO(1) => \cnt_curr_reg[0]_i_1__0_n_2\,
      CO(0) => \cnt_curr_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => DI(0),
      O(3) => \cnt_curr_reg[0]_i_1__0_n_4\,
      O(2) => \cnt_curr_reg[0]_i_1__0_n_5\,
      O(1) => \cnt_curr_reg[0]_i_1__0_n_6\,
      O(0) => \cnt_curr_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => \^out\(3 downto 1),
      S(0) => \cnt_curr[0]_i_3_n_0\
    );
\cnt_curr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1__0_n_5\,
      Q => \^out\(10),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1__0_n_4\,
      Q => \^out\(11),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1__0_n_6\,
      Q => \^out\(1),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1__0_n_5\,
      Q => \^out\(2),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1__0_n_4\,
      Q => \^out\(3),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1__0_n_7\,
      Q => \^out\(4),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_curr_reg[0]_i_1__0_n_0\,
      CO(3) => \cnt_curr_reg[4]_i_1__0_n_0\,
      CO(2) => \cnt_curr_reg[4]_i_1__0_n_1\,
      CO(1) => \cnt_curr_reg[4]_i_1__0_n_2\,
      CO(0) => \cnt_curr_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_curr_reg[4]_i_1__0_n_4\,
      O(2) => \cnt_curr_reg[4]_i_1__0_n_5\,
      O(1) => \cnt_curr_reg[4]_i_1__0_n_6\,
      O(0) => \cnt_curr_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => \^out\(7 downto 4)
    );
\cnt_curr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1__0_n_6\,
      Q => \^out\(5),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1__0_n_5\,
      Q => \^out\(6),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1__0_n_4\,
      Q => \^out\(7),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1__0_n_7\,
      Q => \^out\(8),
      R => \cnt_curr_reg[11]_0\
    );
\cnt_curr_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_curr_reg[4]_i_1__0_n_0\,
      CO(3) => \NLW_cnt_curr_reg[8]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \cnt_curr_reg[8]_i_1__0_n_1\,
      CO(1) => \cnt_curr_reg[8]_i_1__0_n_2\,
      CO(0) => \cnt_curr_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_curr_reg[8]_i_1__0_n_4\,
      O(2) => \cnt_curr_reg[8]_i_1__0_n_5\,
      O(1) => \cnt_curr_reg[8]_i_1__0_n_6\,
      O(0) => \cnt_curr_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => \^out\(11 downto 8)
    );
\cnt_curr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1__0_n_6\,
      Q => \^out\(9),
      R => \cnt_curr_reg[11]_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(9),
      I1 => Q(9),
      I2 => Q(11),
      I3 => \^out\(11),
      I4 => Q(10),
      I5 => \^out\(10),
      O => S(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(6),
      I1 => Q(6),
      I2 => Q(8),
      I3 => \^out\(8),
      I4 => Q(7),
      I5 => \^out\(7),
      O => S(2)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \^out\(5),
      I4 => Q(4),
      I5 => \^out\(4),
      O => S(1)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^out\(2),
      I4 => Q(1),
      I5 => \^out\(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \_carry\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \cnt_curr_reg[0]_0\ : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    \cnt_curr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_curr_reg[3]_1\ : in STD_LOGIC;
    \cnt_curr_reg[3]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0 : entity is "modn_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0 is
  signal \cnt_curr[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_curr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_curr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_curr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_cnt_curr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_curr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_curr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_curr_reg[8]_i_1\ : label is 11;
begin
  \out\(11 downto 0) <= \^out\(11 downto 0);
\_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990000000000990"
    )
        port map (
      I0 => \^out\(9),
      I1 => \_carry\(9),
      I2 => \_carry\(11),
      I3 => \^out\(11),
      I4 => \_carry\(10),
      I5 => \^out\(10),
      O => S(3)
    );
\_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(6),
      I1 => \_carry\(6),
      I2 => \_carry\(8),
      I3 => \^out\(8),
      I4 => \_carry\(7),
      I5 => \^out\(7),
      O => S(2)
    );
\_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(3),
      I1 => \_carry\(3),
      I2 => \_carry\(5),
      I3 => \^out\(5),
      I4 => \_carry\(4),
      I5 => \^out\(4),
      O => S(1)
    );
\_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(0),
      I1 => \_carry\(0),
      I2 => \_carry\(2),
      I3 => \^out\(2),
      I4 => \_carry\(1),
      I5 => \^out\(1),
      O => S(0)
    );
\cnt_curr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_curr_reg[3]_0\(0),
      I1 => \cnt_curr_reg[3]_1\,
      I2 => \cnt_curr_reg[3]_2\(0),
      I3 => \^out\(0),
      O => \cnt_curr[0]_i_2_n_0\
    );
\cnt_curr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1_n_7\,
      Q => \^out\(0),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_curr_reg[0]_i_1_n_0\,
      CO(2) => \cnt_curr_reg[0]_i_1_n_1\,
      CO(1) => \cnt_curr_reg[0]_i_1_n_2\,
      CO(0) => \cnt_curr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^out\(0),
      O(3) => \cnt_curr_reg[0]_i_1_n_4\,
      O(2) => \cnt_curr_reg[0]_i_1_n_5\,
      O(1) => \cnt_curr_reg[0]_i_1_n_6\,
      O(0) => \cnt_curr_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^out\(3 downto 1),
      S(0) => \cnt_curr[0]_i_2_n_0\
    );
\cnt_curr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1_n_5\,
      Q => \^out\(10),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1_n_4\,
      Q => \^out\(11),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1_n_6\,
      Q => \^out\(1),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1_n_5\,
      Q => \^out\(2),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[0]_i_1_n_4\,
      Q => \^out\(3),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1_n_7\,
      Q => \^out\(4),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_curr_reg[0]_i_1_n_0\,
      CO(3) => \cnt_curr_reg[4]_i_1_n_0\,
      CO(2) => \cnt_curr_reg[4]_i_1_n_1\,
      CO(1) => \cnt_curr_reg[4]_i_1_n_2\,
      CO(0) => \cnt_curr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_curr_reg[4]_i_1_n_4\,
      O(2) => \cnt_curr_reg[4]_i_1_n_5\,
      O(1) => \cnt_curr_reg[4]_i_1_n_6\,
      O(0) => \cnt_curr_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^out\(7 downto 4)
    );
\cnt_curr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1_n_6\,
      Q => \^out\(5),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1_n_5\,
      Q => \^out\(6),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[4]_i_1_n_4\,
      Q => \^out\(7),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1_n_7\,
      Q => \^out\(8),
      R => \cnt_curr_reg[0]_0\
    );
\cnt_curr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_curr_reg[4]_i_1_n_0\,
      CO(3) => \NLW_cnt_curr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_curr_reg[8]_i_1_n_1\,
      CO(1) => \cnt_curr_reg[8]_i_1_n_2\,
      CO(0) => \cnt_curr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_curr_reg[8]_i_1_n_4\,
      O(2) => \cnt_curr_reg[8]_i_1_n_5\,
      O(1) => \cnt_curr_reg[8]_i_1_n_6\,
      O(0) => \cnt_curr_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^out\(11 downto 8)
    );
\cnt_curr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_curr_reg[8]_i_1_n_6\,
      Q => \^out\(9),
      R => \cnt_curr_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_curr_reg[0]_0\ : out STD_LOGIC;
    ctrl_4_rdy : in STD_LOGIC;
    \cnt_curr_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_curr_reg[2]_1\ : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0\ : entity is "modn_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^cnt_curr_reg[0]_0\ : STD_LOGIC;
  signal \cnt_next__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  Q(2 downto 0) <= \^q\(2 downto 0);
  \cnt_curr_reg[0]_0\ <= \^cnt_curr_reg[0]_0\;
bram_reg_0_3_0_5_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^cnt_curr_reg[0]_0\,
      I2 => ctrl_4_rdy,
      I3 => \^q\(1),
      O => \^d\(1)
    );
bram_reg_0_3_0_5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => ctrl_4_rdy,
      I2 => \^cnt_curr_reg[0]_0\,
      O => \^d\(0)
    );
bram_reg_0_3_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \cnt_curr_reg[2]_0\(0),
      I2 => \cnt_curr_reg[2]_0\(2),
      I3 => \^q\(2),
      I4 => \cnt_curr_reg[2]_0\(1),
      I5 => \^q\(1),
      O => \^cnt_curr_reg[0]_0\
    );
\cnt_curr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ctrl_4_rdy,
      I1 => \^cnt_curr_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \cnt_next__0\(2)
    );
\cnt_curr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \^d\(0),
      Q => \^q\(0),
      R => \cnt_curr_reg[2]_1\
    );
\cnt_curr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \^d\(1),
      Q => \^q\(1),
      R => \cnt_curr_reg[2]_1\
    );
\cnt_curr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => \cnt_next__0\(2),
      Q => \^q\(2),
      R => \cnt_curr_reg[2]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1\ is
  port (
    \cnt_curr_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ctrl_3_vld : in STD_LOGIC;
    \cnt_curr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_curr_reg[0]_1\ : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1\ : entity is "modn_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^cnt_curr_reg[0]_0\ : STD_LOGIC;
  signal cnt_next : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_curr[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_curr[2]_i_1__0\ : label is "soft_lutpair14";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \cnt_curr_reg[0]_0\ <= \^cnt_curr_reg[0]_0\;
bram_reg_0_3_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F66FFFFFFFFFF66F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \cnt_curr_reg[1]_0\(0),
      I2 => \cnt_curr_reg[1]_0\(2),
      I3 => \^q\(2),
      I4 => \cnt_curr_reg[1]_0\(1),
      I5 => \^q\(1),
      O => \^cnt_curr_reg[0]_0\
    );
\cnt_curr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ctrl_3_vld,
      I1 => \^cnt_curr_reg[0]_0\,
      I2 => \^q\(0),
      O => cnt_next(0)
    );
\cnt_curr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ctrl_3_vld,
      I1 => \^cnt_curr_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => cnt_next(1)
    );
\cnt_curr[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ctrl_3_vld,
      I1 => \^cnt_curr_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => cnt_next(2)
    );
\cnt_curr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_next(0),
      Q => \^q\(0),
      R => \cnt_curr_reg[0]_1\
    );
\cnt_curr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_next(1),
      Q => \^q\(1),
      R => \cnt_curr_reg[0]_1\
    );
\cnt_curr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_next(2),
      Q => \^q\(2),
      R => \cnt_curr_reg[0]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 8 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \crc_q_reg[19]\ : out STD_LOGIC;
    bram_reg_0 : out STD_LOGIC;
    bram_reg_1 : out STD_LOGIC;
    bram_reg_2 : out STD_LOGIC;
    bram_reg_3 : out STD_LOGIC;
    \crc_q_reg[9]\ : out STD_LOGIC;
    bram_reg_4 : out STD_LOGIC;
    bram_reg_5 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    phy_clk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    phy_data_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_rst_n : in STD_LOGIC;
    \ctrl_reg[4]\ : in STD_LOGIC;
    bram_reg_6 : in STD_LOGIC;
    \ctrl[11]_i_6\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \crc_q_reg[7]\ : in STD_LOGIC;
    bram_reg_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gry_cnt_reg_reg[10]\ : in STD_LOGIC;
    phy_data_in_vld : in STD_LOGIC;
    phy_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal gry_cnt_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd_ptr_bin : STD_LOGIC_VECTOR ( 9 downto 0 );
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
  signal rd_ptr_calc_n_26 : STD_LOGIC;
  signal sync_rd_ptr0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_rd_ptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_wr_ptr0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_wr_ptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_en : STD_LOGIC;
  signal wr_ptr_bin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_ptr_calc_n_11 : STD_LOGIC;
  signal wr_ptr_calc_n_12 : STD_LOGIC;
  signal wr_ptr_calc_n_13 : STD_LOGIC;
  signal wr_ptr_calc_n_14 : STD_LOGIC;
  signal wr_ptr_calc_n_15 : STD_LOGIC;
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CO(0) <= \^co\(0);
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => wr_ptr_calc_n_12,
      S(2) => wr_ptr_calc_n_13,
      S(1) => wr_ptr_calc_n_14,
      S(0) => wr_ptr_calc_n_15
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => rd_ptr_calc_n_12,
      S(2) => rd_ptr_calc_n_13,
      S(1) => rd_ptr_calc_n_14,
      S(0) => rd_ptr_calc_n_15
    );
fifo_module: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram
     port map (
      ADDRBWRADDR(9 downto 0) => rd_ptr_bin(9 downto 0),
      CO(0) => \^co\(0),
      D(3 downto 0) => D(3 downto 0),
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
      \ctrl[11]_i_6\ => \ctrl[11]_i_6\,
      phy_clk => phy_clk,
      phy_data_in(8 downto 0) => phy_data_in(8 downto 0),
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      wr_en => wr_en
    );
rd_ptr_calc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr
     port map (
      ADDRBWRADDR(9 downto 0) => rd_ptr_bin(9 downto 0),
      CO(0) => \^co\(0),
      E(0) => E(0),
      Q(10) => rd_ptr_calc_n_16,
      Q(9) => rd_ptr_calc_n_17,
      Q(8) => rd_ptr_calc_n_18,
      Q(7) => rd_ptr_calc_n_19,
      Q(6) => rd_ptr_calc_n_20,
      Q(5) => rd_ptr_calc_n_21,
      Q(4) => rd_ptr_calc_n_22,
      Q(3) => rd_ptr_calc_n_23,
      Q(2) => rd_ptr_calc_n_24,
      Q(1) => rd_ptr_calc_n_25,
      Q(0) => rd_ptr_calc_n_26,
      S(3) => rd_ptr_calc_n_12,
      S(2) => rd_ptr_calc_n_13,
      S(1) => rd_ptr_calc_n_14,
      S(0) => rd_ptr_calc_n_15,
      WEA(0) => WEA(0),
      bram_reg => bram_reg_6,
      bram_reg_0(0) => bram_reg_7(0),
      \control_reg[103]\(10 downto 0) => sync_wr_ptr1(10 downto 0),
      \ctrl_reg[4]\ => \ctrl_reg[4]\,
      \gry_cnt_reg_reg[10]_0\ => \gry_cnt_reg_reg[10]\,
      sys_clk => sys_clk
    );
\sync_rd_ptr0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_26,
      Q => sync_rd_ptr0(0),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_16,
      Q => sync_rd_ptr0(10),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_25,
      Q => sync_rd_ptr0(1),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_24,
      Q => sync_rd_ptr0(2),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_23,
      Q => sync_rd_ptr0(3),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_22,
      Q => sync_rd_ptr0(4),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_21,
      Q => sync_rd_ptr0(5),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_20,
      Q => sync_rd_ptr0(6),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_19,
      Q => sync_rd_ptr0(7),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_18,
      Q => sync_rd_ptr0(8),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => rd_ptr_calc_n_17,
      Q => sync_rd_ptr0(9),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(0),
      Q => sync_rd_ptr1(0),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(10),
      Q => sync_rd_ptr1(10),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(1),
      Q => sync_rd_ptr1(1),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(2),
      Q => sync_rd_ptr1(2),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(3),
      Q => sync_rd_ptr1(3),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(4),
      Q => sync_rd_ptr1(4),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(5),
      Q => sync_rd_ptr1(5),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(6),
      Q => sync_rd_ptr1(6),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(7),
      Q => sync_rd_ptr1(7),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(8),
      Q => sync_rd_ptr1(8),
      R => wr_ptr_calc_n_11
    );
\sync_rd_ptr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => sync_rd_ptr0(9),
      Q => sync_rd_ptr1(9),
      R => wr_ptr_calc_n_11
    );
\sync_wr_ptr0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(0),
      Q => sync_wr_ptr0(0),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(10),
      Q => sync_wr_ptr0(10),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(1),
      Q => sync_wr_ptr0(1),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(2),
      Q => sync_wr_ptr0(2),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(3),
      Q => sync_wr_ptr0(3),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(4),
      Q => sync_wr_ptr0(4),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(5),
      Q => sync_wr_ptr0(5),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(6),
      Q => sync_wr_ptr0(6),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(7),
      Q => sync_wr_ptr0(7),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(8),
      Q => sync_wr_ptr0(8),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => gry_cnt_reg(9),
      Q => sync_wr_ptr0(9),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(0),
      Q => sync_wr_ptr1(0),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(10),
      Q => sync_wr_ptr1(10),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(1),
      Q => sync_wr_ptr1(1),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(2),
      Q => sync_wr_ptr1(2),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(3),
      Q => sync_wr_ptr1(3),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(4),
      Q => sync_wr_ptr1(4),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(5),
      Q => sync_wr_ptr1(5),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(6),
      Q => sync_wr_ptr1(6),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(7),
      Q => sync_wr_ptr1(7),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(8),
      Q => sync_wr_ptr1(8),
      R => \gry_cnt_reg_reg[10]\
    );
\sync_wr_ptr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => sync_wr_ptr0(9),
      Q => sync_wr_ptr1(9),
      R => \gry_cnt_reg_reg[10]\
    );
wr_ptr_calc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bin_gry_ctr_2
     port map (
      CO(0) => \_carry_n_0\,
      Q(9 downto 0) => wr_ptr_bin(9 downto 0),
      S(3) => wr_ptr_calc_n_12,
      S(2) => wr_ptr_calc_n_13,
      S(1) => wr_ptr_calc_n_14,
      S(0) => wr_ptr_calc_n_15,
      SR(0) => wr_ptr_calc_n_11,
      \_carry\(10 downto 0) => sync_rd_ptr1(10 downto 0),
      \gry_cnt_reg_reg[10]_0\(10 downto 0) => gry_cnt_reg(10 downto 0),
      phy_clk => phy_clk,
      phy_data_in_vld => phy_data_in_vld,
      phy_rst_n => phy_rst_n,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_curr_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIADI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    ctrl_4_rdy : in STD_LOGIC;
    \cnt_curr_reg[0]\ : in STD_LOGIC;
    \cnt_curr_reg[3]\ : in STD_LOGIC;
    \cnt_curr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal cnt_curr_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^cnt_curr_reg[9]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_curr_reg_0 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal cnt_curr_reg_0_sn_1 : STD_LOGIC;
  signal cnt_curr_reg_3_sn_1 : STD_LOGIC;
  signal rd_ptr_calc_n_0 : STD_LOGIC;
  signal rd_ptr_calc_n_1 : STD_LOGIC;
  signal rd_ptr_calc_n_2 : STD_LOGIC;
  signal rd_ptr_calc_n_3 : STD_LOGIC;
  signal rd_ptr_cmb : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_ptr_calc_n_0 : STD_LOGIC;
  signal wr_ptr_calc_n_1 : STD_LOGIC;
  signal wr_ptr_calc_n_2 : STD_LOGIC;
  signal wr_ptr_calc_n_3 : STD_LOGIC;
  signal wr_ptr_del : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_ptr_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  CO(0) <= \^co\(0);
  \cnt_curr_reg[9]\(0) <= \^cnt_curr_reg[9]\(0);
  cnt_curr_reg_0_sn_1 <= \cnt_curr_reg[0]\;
  cnt_curr_reg_3_sn_1 <= \cnt_curr_reg[3]\;
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^cnt_curr_reg[9]\(0),
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => wr_ptr_calc_n_0,
      S(2) => wr_ptr_calc_n_1,
      S(1) => wr_ptr_calc_n_2,
      S(0) => wr_ptr_calc_n_3
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => rd_ptr_calc_n_0,
      S(2) => rd_ptr_calc_n_1,
      S(1) => rd_ptr_calc_n_2,
      S(0) => rd_ptr_calc_n_3
    );
fifo_module: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized0\
     port map (
      ADDRBWRADDR(10 downto 0) => rd_ptr_cmb(10 downto 0),
      DIADI(7 downto 0) => DIADI(7 downto 0),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      WEA(0) => WEA(0),
      \out\(10 downto 0) => wr_ptr_reg(10 downto 0),
      sys_clk => sys_clk
    );
rd_ptr_calc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter
     port map (
      ADDRBWRADDR(10 downto 0) => rd_ptr_cmb(10 downto 0),
      CO(0) => \^co\(0),
      DI(0) => DI(0),
      Q(11 downto 0) => wr_ptr_del(11 downto 0),
      S(3) => rd_ptr_calc_n_0,
      S(2) => rd_ptr_calc_n_1,
      S(1) => rd_ptr_calc_n_2,
      S(0) => rd_ptr_calc_n_3,
      \cnt_curr_reg[11]_0\ => cnt_curr_reg_0_sn_1,
      ctrl_4_rdy => ctrl_4_rdy,
      \out\(11 downto 0) => cnt_curr_reg(11 downto 0),
      sys_clk => sys_clk
    );
wr_ptr_calc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter_0
     port map (
      S(3) => wr_ptr_calc_n_0,
      S(2) => wr_ptr_calc_n_1,
      S(1) => wr_ptr_calc_n_2,
      S(0) => wr_ptr_calc_n_3,
      \_carry\(11 downto 0) => cnt_curr_reg(11 downto 0),
      \cnt_curr_reg[0]_0\ => cnt_curr_reg_0_sn_1,
      \cnt_curr_reg[3]_0\(0) => \^cnt_curr_reg[9]\(0),
      \cnt_curr_reg[3]_1\ => cnt_curr_reg_3_sn_1,
      \cnt_curr_reg[3]_2\(0) => \cnt_curr_reg[3]_0\(0),
      \out\(11) => cnt_curr_reg_0(11),
      \out\(10 downto 0) => wr_ptr_reg(10 downto 0),
      sys_clk => sys_clk
    );
\wr_ptr_del_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(0),
      Q => wr_ptr_del(0),
      R => '0'
    );
\wr_ptr_del_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(10),
      Q => wr_ptr_del(10),
      R => '0'
    );
\wr_ptr_del_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => cnt_curr_reg_0(11),
      Q => wr_ptr_del(11),
      R => '0'
    );
\wr_ptr_del_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(1),
      Q => wr_ptr_del(1),
      R => '0'
    );
\wr_ptr_del_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(2),
      Q => wr_ptr_del(2),
      R => '0'
    );
\wr_ptr_del_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(3),
      Q => wr_ptr_del(3),
      R => '0'
    );
\wr_ptr_del_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(4),
      Q => wr_ptr_del(4),
      R => '0'
    );
\wr_ptr_del_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(5),
      Q => wr_ptr_del(5),
      R => '0'
    );
\wr_ptr_del_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(6),
      Q => wr_ptr_del(6),
      R => '0'
    );
\wr_ptr_del_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(7),
      Q => wr_ptr_del(7),
      R => '0'
    );
\wr_ptr_del_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(8),
      Q => wr_ptr_del(8),
      R => '0'
    );
\wr_ptr_del_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_reg(9),
      Q => wr_ptr_del(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0\ is
  port (
    \cnt_curr_reg[0]\ : out STD_LOGIC;
    ctrl_4_vld : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    ctrl_3_vld : in STD_LOGIC;
    ctrl_4_rdy : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \rd_data_reg[121]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \cnt_curr_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0\ : entity is "fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0\ is
  signal cnt_curr_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal cnt_curr_reg_0_sn_1 : STD_LOGIC;
  signal rd_ptr_calc_n_0 : STD_LOGIC;
  signal rd_ptr_calc_n_1 : STD_LOGIC;
  signal wr_ptr_calc_n_1 : STD_LOGIC;
  signal wr_ptr_calc_n_2 : STD_LOGIC;
  signal wr_ptr_calc_n_3 : STD_LOGIC;
  signal \wr_ptr_del_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_del_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_del_reg_n_0_[2]\ : STD_LOGIC;
begin
  \cnt_curr_reg[0]\ <= cnt_curr_reg_0_sn_1;
fifo_module: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_bram__parameterized1\
     port map (
      ADDRA(1) => rd_ptr_calc_n_0,
      ADDRA(0) => rd_ptr_calc_n_1,
      Q(59 downto 0) => Q(59 downto 0),
      \rd_data_reg[121]_0\(63 downto 0) => \rd_data_reg[121]\(63 downto 0),
      \rd_data_reg[121]_1\(1) => wr_ptr_calc_n_2,
      \rd_data_reg[121]_1\(0) => wr_ptr_calc_n_3,
      sys_clk => sys_clk,
      wr_en => wr_en
    );
rd_ptr_calc: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0\
     port map (
      D(1) => rd_ptr_calc_n_0,
      D(0) => rd_ptr_calc_n_1,
      Q(2 downto 0) => cnt_curr_reg(2 downto 0),
      \cnt_curr_reg[0]_0\ => ctrl_4_vld,
      \cnt_curr_reg[2]_0\(2) => \wr_ptr_del_reg_n_0_[2]\,
      \cnt_curr_reg[2]_0\(1) => \wr_ptr_del_reg_n_0_[1]\,
      \cnt_curr_reg[2]_0\(0) => \wr_ptr_del_reg_n_0_[0]\,
      \cnt_curr_reg[2]_1\ => \cnt_curr_reg[0]_0\,
      ctrl_4_rdy => ctrl_4_rdy,
      sys_clk => sys_clk
    );
wr_ptr_calc: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_modn_counter__parameterized0_1\
     port map (
      Q(2) => wr_ptr_calc_n_1,
      Q(1) => wr_ptr_calc_n_2,
      Q(0) => wr_ptr_calc_n_3,
      \cnt_curr_reg[0]_0\ => cnt_curr_reg_0_sn_1,
      \cnt_curr_reg[0]_1\ => \cnt_curr_reg[0]_0\,
      \cnt_curr_reg[1]_0\(2 downto 0) => cnt_curr_reg(2 downto 0),
      ctrl_3_vld => ctrl_3_vld,
      sys_clk => sys_clk
    );
\wr_ptr_del_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_calc_n_3,
      Q => \wr_ptr_del_reg_n_0_[0]\,
      R => '0'
    );
\wr_ptr_del_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_calc_n_2,
      Q => \wr_ptr_del_reg_n_0_[1]\,
      R => '0'
    );
\wr_ptr_del_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => wr_ptr_calc_n_1,
      Q => \wr_ptr_del_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_wrapper is
  port (
    data_drop_vld : out STD_LOGIC;
    data_not_for_me_vld : out STD_LOGIC;
    data_broadcast_vld : out STD_LOGIC;
    data_for_me_vld : out STD_LOGIC;
    data_drop : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_not_for_me : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_broadcast : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_for_me : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    phy_clk : in STD_LOGIC;
    phy_data_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    phy_data_in_vld : in STD_LOGIC;
    phy_rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_wrapper is
  signal cdc_fifo_n_10 : STD_LOGIC;
  signal cdc_fifo_n_11 : STD_LOGIC;
  signal cdc_fifo_n_12 : STD_LOGIC;
  signal cdc_fifo_n_17 : STD_LOGIC;
  signal cdc_fifo_n_18 : STD_LOGIC;
  signal cdc_fifo_n_19 : STD_LOGIC;
  signal cdc_fifo_n_20 : STD_LOGIC;
  signal cdc_fifo_n_21 : STD_LOGIC;
  signal cdc_fifo_n_22 : STD_LOGIC;
  signal cdc_fifo_n_23 : STD_LOGIC;
  signal cdc_fifo_n_24 : STD_LOGIC;
  signal control_fifo_n_0 : STD_LOGIC;
  signal control_fifo_n_10 : STD_LOGIC;
  signal control_fifo_n_11 : STD_LOGIC;
  signal control_fifo_n_12 : STD_LOGIC;
  signal control_fifo_n_13 : STD_LOGIC;
  signal control_fifo_n_14 : STD_LOGIC;
  signal control_fifo_n_15 : STD_LOGIC;
  signal control_fifo_n_16 : STD_LOGIC;
  signal control_fifo_n_17 : STD_LOGIC;
  signal control_fifo_n_18 : STD_LOGIC;
  signal control_fifo_n_19 : STD_LOGIC;
  signal control_fifo_n_2 : STD_LOGIC;
  signal control_fifo_n_20 : STD_LOGIC;
  signal control_fifo_n_21 : STD_LOGIC;
  signal control_fifo_n_22 : STD_LOGIC;
  signal control_fifo_n_23 : STD_LOGIC;
  signal control_fifo_n_24 : STD_LOGIC;
  signal control_fifo_n_25 : STD_LOGIC;
  signal control_fifo_n_26 : STD_LOGIC;
  signal control_fifo_n_27 : STD_LOGIC;
  signal control_fifo_n_28 : STD_LOGIC;
  signal control_fifo_n_29 : STD_LOGIC;
  signal control_fifo_n_3 : STD_LOGIC;
  signal control_fifo_n_30 : STD_LOGIC;
  signal control_fifo_n_31 : STD_LOGIC;
  signal control_fifo_n_32 : STD_LOGIC;
  signal control_fifo_n_33 : STD_LOGIC;
  signal control_fifo_n_34 : STD_LOGIC;
  signal control_fifo_n_35 : STD_LOGIC;
  signal control_fifo_n_36 : STD_LOGIC;
  signal control_fifo_n_37 : STD_LOGIC;
  signal control_fifo_n_38 : STD_LOGIC;
  signal control_fifo_n_39 : STD_LOGIC;
  signal control_fifo_n_4 : STD_LOGIC;
  signal control_fifo_n_40 : STD_LOGIC;
  signal control_fifo_n_41 : STD_LOGIC;
  signal control_fifo_n_42 : STD_LOGIC;
  signal control_fifo_n_43 : STD_LOGIC;
  signal control_fifo_n_44 : STD_LOGIC;
  signal control_fifo_n_45 : STD_LOGIC;
  signal control_fifo_n_46 : STD_LOGIC;
  signal control_fifo_n_47 : STD_LOGIC;
  signal control_fifo_n_48 : STD_LOGIC;
  signal control_fifo_n_49 : STD_LOGIC;
  signal control_fifo_n_5 : STD_LOGIC;
  signal control_fifo_n_51 : STD_LOGIC;
  signal control_fifo_n_52 : STD_LOGIC;
  signal control_fifo_n_53 : STD_LOGIC;
  signal control_fifo_n_54 : STD_LOGIC;
  signal control_fifo_n_55 : STD_LOGIC;
  signal control_fifo_n_56 : STD_LOGIC;
  signal control_fifo_n_57 : STD_LOGIC;
  signal control_fifo_n_58 : STD_LOGIC;
  signal control_fifo_n_59 : STD_LOGIC;
  signal control_fifo_n_6 : STD_LOGIC;
  signal control_fifo_n_60 : STD_LOGIC;
  signal control_fifo_n_61 : STD_LOGIC;
  signal control_fifo_n_7 : STD_LOGIC;
  signal control_fifo_n_8 : STD_LOGIC;
  signal control_fifo_n_9 : STD_LOGIC;
  signal crc32_n_0 : STD_LOGIC;
  signal crc32_n_1 : STD_LOGIC;
  signal crc32_n_13 : STD_LOGIC;
  signal crc32_n_14 : STD_LOGIC;
  signal crc32_n_3 : STD_LOGIC;
  signal crc_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ctrl : STD_LOGIC_VECTOR ( 123 downto 0 );
  signal ctrl_3_vld : STD_LOGIC;
  signal ctrl_4 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal ctrl_4_rdy : STD_LOGIC;
  signal ctrl_4_vld : STD_LOGIC;
  signal data_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data_1_vld : STD_LOGIC;
  signal data_2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data_4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_4_vld : STD_LOGIC;
  signal data_fifo_n_8 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in37_in : STD_LOGIC;
  signal p_1_in57_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in13_in : STD_LOGIC;
  signal rx_fsm_n_0 : STD_LOGIC;
  signal rx_fsm_n_1 : STD_LOGIC;
  signal rx_fsm_n_2 : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal wr_en_1 : STD_LOGIC;
begin
cdc_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo
     port map (
      CO(0) => data_1_vld,
      D(3) => crc_d(7),
      D(2) => crc_d(5),
      D(1 downto 0) => crc_d(1 downto 0),
      DOBDO(8 downto 0) => data_1(8 downto 0),
      E(0) => cdc_fifo_n_11,
      Q(8) => p_2_in,
      Q(7) => p_0_in,
      Q(6) => p_2_in13_in,
      Q(5) => p_0_in9_in,
      Q(4) => p_0_in6_in,
      Q(3) => p_0_in12_in,
      Q(2) => p_1_in,
      Q(1) => p_1_in57_in,
      Q(0) => p_1_in37_in,
      SS(0) => cdc_fifo_n_10,
      WEA(0) => wr_en,
      bram_reg => cdc_fifo_n_12,
      bram_reg_0 => cdc_fifo_n_18,
      bram_reg_1 => cdc_fifo_n_19,
      bram_reg_2 => cdc_fifo_n_20,
      bram_reg_3 => cdc_fifo_n_21,
      bram_reg_4 => cdc_fifo_n_23,
      bram_reg_5 => cdc_fifo_n_24,
      bram_reg_6 => rx_fsm_n_2,
      bram_reg_7(0) => data_fifo_n_8,
      \crc_q_reg[19]\ => cdc_fifo_n_17,
      \crc_q_reg[7]\ => crc32_n_14,
      \crc_q_reg[9]\ => cdc_fifo_n_22,
      \ctrl[11]_i_6\ => crc32_n_13,
      \ctrl_reg[4]\ => crc32_n_1,
      \gry_cnt_reg_reg[10]\ => rx_fsm_n_0,
      phy_clk => phy_clk,
      phy_data_in(8 downto 0) => phy_data_in(8 downto 0),
      phy_data_in_vld => phy_data_in_vld,
      phy_rst_n => phy_rst_n,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
control_fifo: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0\
     port map (
      Q(59) => control_fifo_n_2,
      Q(58) => control_fifo_n_3,
      Q(57) => control_fifo_n_4,
      Q(56) => control_fifo_n_5,
      Q(55) => control_fifo_n_6,
      Q(54) => control_fifo_n_7,
      Q(53) => control_fifo_n_8,
      Q(52) => control_fifo_n_9,
      Q(51) => control_fifo_n_10,
      Q(50) => control_fifo_n_11,
      Q(49) => control_fifo_n_12,
      Q(48) => control_fifo_n_13,
      Q(47) => control_fifo_n_14,
      Q(46) => control_fifo_n_15,
      Q(45) => control_fifo_n_16,
      Q(44) => control_fifo_n_17,
      Q(43) => control_fifo_n_18,
      Q(42) => control_fifo_n_19,
      Q(41) => control_fifo_n_20,
      Q(40) => control_fifo_n_21,
      Q(39) => control_fifo_n_22,
      Q(38) => control_fifo_n_23,
      Q(37) => control_fifo_n_24,
      Q(36) => control_fifo_n_25,
      Q(35) => control_fifo_n_26,
      Q(34) => control_fifo_n_27,
      Q(33) => control_fifo_n_28,
      Q(32) => control_fifo_n_29,
      Q(31) => control_fifo_n_30,
      Q(30) => control_fifo_n_31,
      Q(29) => control_fifo_n_32,
      Q(28) => control_fifo_n_33,
      Q(27) => control_fifo_n_34,
      Q(26) => control_fifo_n_35,
      Q(25) => control_fifo_n_36,
      Q(24) => control_fifo_n_37,
      Q(23) => control_fifo_n_38,
      Q(22) => control_fifo_n_39,
      Q(21) => control_fifo_n_40,
      Q(20) => control_fifo_n_41,
      Q(19) => control_fifo_n_42,
      Q(18) => control_fifo_n_43,
      Q(17) => control_fifo_n_44,
      Q(16) => control_fifo_n_45,
      Q(15) => control_fifo_n_46,
      Q(14) => control_fifo_n_47,
      Q(13) => control_fifo_n_48,
      Q(12) => control_fifo_n_49,
      Q(11) => ctrl_4(11),
      Q(10) => control_fifo_n_51,
      Q(9) => control_fifo_n_52,
      Q(8) => control_fifo_n_53,
      Q(7) => control_fifo_n_54,
      Q(6) => control_fifo_n_55,
      Q(5) => control_fifo_n_56,
      Q(4) => control_fifo_n_57,
      Q(3) => control_fifo_n_58,
      Q(2) => control_fifo_n_59,
      Q(1) => control_fifo_n_60,
      Q(0) => control_fifo_n_61,
      \cnt_curr_reg[0]\ => control_fifo_n_0,
      \cnt_curr_reg[0]_0\ => rx_fsm_n_0,
      ctrl_3_vld => ctrl_3_vld,
      ctrl_4_rdy => ctrl_4_rdy,
      ctrl_4_vld => ctrl_4_vld,
      \rd_data_reg[121]\(63 downto 12) => ctrl(123 downto 72),
      \rd_data_reg[121]\(11 downto 0) => ctrl(11 downto 0),
      sys_clk => sys_clk,
      wr_en => wr_en_1
    );
crc32: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_crc_8
     port map (
      CO(0) => data_1_vld,
      D(0) => p_0_out_0(11),
      DOBDO(7 downto 0) => data_1(7 downto 0),
      Q(8) => p_2_in,
      Q(7) => p_0_in,
      Q(6) => p_2_in13_in,
      Q(5) => p_0_in9_in,
      Q(4) => p_0_in6_in,
      Q(3) => p_0_in12_in,
      Q(2) => p_1_in,
      Q(1) => p_1_in57_in,
      Q(0) => p_1_in37_in,
      SR(0) => crc32_n_0,
      SS(0) => cdc_fifo_n_10,
      \byte_cnt_reg[0]\ => rx_fsm_n_2,
      \crc_q_reg[10]_0\ => cdc_fifo_n_19,
      \crc_q_reg[12]_0\ => cdc_fifo_n_24,
      \crc_q_reg[13]_0\ => cdc_fifo_n_20,
      \crc_q_reg[25]_0\ => crc32_n_13,
      \crc_q_reg[27]_0\ => cdc_fifo_n_18,
      \crc_q_reg[29]_0\ => cdc_fifo_n_23,
      \crc_q_reg[31]_0\ => crc32_n_14,
      \crc_q_reg[6]_0\ => cdc_fifo_n_21,
      \crc_q_reg[7]_0\(3) => crc_d(7),
      \crc_q_reg[7]_0\(2) => crc_d(5),
      \crc_q_reg[7]_0\(1 downto 0) => crc_d(1 downto 0),
      \ctrl_reg[11]\ => cdc_fifo_n_12,
      \ctrl_reg[11]_0\ => cdc_fifo_n_22,
      \ctrl_reg[11]_1\ => cdc_fifo_n_17,
      data_2(0) => data_2(8),
      \delay_reg[3][8]\ => crc32_n_1,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      sys_rst_n_0 => crc32_n_3
    );
data_fifo: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
     port map (
      CO(0) => data_4_vld,
      DI(0) => p_0_out(8),
      DIADI(7 downto 0) => data_2(7 downto 0),
      DOBDO(7 downto 0) => data_4(7 downto 0),
      WEA(0) => wr_en,
      \cnt_curr_reg[0]\ => rx_fsm_n_0,
      \cnt_curr_reg[3]\ => rx_fsm_n_2,
      \cnt_curr_reg[3]_0\(0) => data_1_vld,
      \cnt_curr_reg[9]\(0) => data_fifo_n_8,
      ctrl_4_rdy => ctrl_4_rdy,
      sys_clk => sys_clk
    );
delay: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_buffer
     port map (
      CO(0) => data_1_vld,
      DOBDO(8 downto 0) => data_1(8 downto 0),
      data_2(8 downto 0) => data_2(8 downto 0),
      \delay_reg[3][8]_0\ => rx_fsm_n_1,
      \delay_reg[3][8]_1\ => rx_fsm_n_0,
      sys_clk => sys_clk
    );
demultiplexer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_decoder
     port map (
      CO(0) => data_4_vld,
      DOBDO(7 downto 0) => data_4(7 downto 0),
      Q(48) => control_fifo_n_2,
      Q(47) => control_fifo_n_3,
      Q(46) => control_fifo_n_4,
      Q(45) => control_fifo_n_5,
      Q(44) => control_fifo_n_6,
      Q(43) => control_fifo_n_7,
      Q(42) => control_fifo_n_8,
      Q(41) => control_fifo_n_9,
      Q(40) => control_fifo_n_10,
      Q(39) => control_fifo_n_11,
      Q(38) => control_fifo_n_12,
      Q(37) => control_fifo_n_13,
      Q(36) => control_fifo_n_14,
      Q(35) => control_fifo_n_15,
      Q(34) => control_fifo_n_16,
      Q(33) => control_fifo_n_17,
      Q(32) => control_fifo_n_18,
      Q(31) => control_fifo_n_19,
      Q(30) => control_fifo_n_20,
      Q(29) => control_fifo_n_21,
      Q(28) => control_fifo_n_22,
      Q(27) => control_fifo_n_23,
      Q(26) => control_fifo_n_24,
      Q(25) => control_fifo_n_25,
      Q(24) => control_fifo_n_26,
      Q(23) => control_fifo_n_27,
      Q(22) => control_fifo_n_28,
      Q(21) => control_fifo_n_29,
      Q(20) => control_fifo_n_30,
      Q(19) => control_fifo_n_31,
      Q(18) => control_fifo_n_32,
      Q(17) => control_fifo_n_33,
      Q(16) => control_fifo_n_34,
      Q(15) => control_fifo_n_35,
      Q(14) => control_fifo_n_36,
      Q(13) => control_fifo_n_37,
      Q(12) => control_fifo_n_38,
      Q(11) => control_fifo_n_39,
      Q(10) => control_fifo_n_40,
      Q(9) => control_fifo_n_41,
      Q(8) => control_fifo_n_42,
      Q(7) => control_fifo_n_43,
      Q(6) => control_fifo_n_44,
      Q(5) => control_fifo_n_45,
      Q(4) => control_fifo_n_46,
      Q(3) => control_fifo_n_47,
      Q(2) => control_fifo_n_48,
      Q(1) => control_fifo_n_49,
      Q(0) => ctrl_4(11),
      ctrl_4_rdy => ctrl_4_rdy,
      ctrl_4_vld => ctrl_4_vld,
      data_broadcast(7 downto 0) => data_broadcast(7 downto 0),
      data_broadcast_vld => data_broadcast_vld,
      data_drop(7 downto 0) => data_drop(7 downto 0),
      data_drop_vld => data_drop_vld,
      data_for_me(7 downto 0) => data_for_me(7 downto 0),
      data_for_me_vld => data_for_me_vld,
      data_not_for_me(7 downto 0) => data_not_for_me(7 downto 0),
      data_not_for_me_vld => data_not_for_me_vld,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
fifo_control: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ctrl
     port map (
      CO(0) => data_4_vld,
      D(10) => control_fifo_n_51,
      D(9) => control_fifo_n_52,
      D(8) => control_fifo_n_53,
      D(7) => control_fifo_n_54,
      D(6) => control_fifo_n_55,
      D(5) => control_fifo_n_56,
      D(4) => control_fifo_n_57,
      D(3) => control_fifo_n_58,
      D(2) => control_fifo_n_59,
      D(1) => control_fifo_n_60,
      D(0) => control_fifo_n_61,
      DI(0) => p_0_out(8),
      ctrl_4_rdy => ctrl_4_rdy,
      ctrl_4_vld => ctrl_4_vld,
      \max_val_reg[0]_0\ => rx_fsm_n_0,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
rx_fsm: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_fsm
     port map (
      CO(0) => data_1_vld,
      D(0) => p_0_out_0(11),
      E(0) => cdc_fifo_n_11,
      Q(63 downto 12) => ctrl(123 downto 72),
      Q(11 downto 0) => ctrl(11 downto 0),
      SR(0) => crc32_n_0,
      control_reg_r_1_0 => rx_fsm_n_1,
      ctrl_3_vld => ctrl_3_vld,
      ctrl_vld_reg_0 => crc32_n_3,
      data_2(8 downto 0) => data_2(8 downto 0),
      \rd_data_reg[1]\ => control_fifo_n_0,
      state_reg_0 => rx_fsm_n_2,
      state_reg_1 => crc32_n_1,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n,
      sys_rst_n_0 => rx_fsm_n_0,
      wr_en => wr_en_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    phy_clk : in STD_LOGIC;
    phy_rst_n : in STD_LOGIC;
    phy_data_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    phy_data_in_vld : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    data_drop : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_drop_vld : out STD_LOGIC;
    data_broadcast : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_broadcast_vld : out STD_LOGIC;
    data_for_me : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_for_me_vld : out STD_LOGIC;
    data_not_for_me : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_not_for_me_vld : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_eth_rx_wrapper_0_0,eth_rx_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "eth_rx_wrapper,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of phy_clk : signal is "xilinx.com:signal:clock:1.0 phy_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of phy_clk : signal is "XIL_INTERFACENAME phy_clk, ASSOCIATED_RESET phy_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of phy_rst_n : signal is "xilinx.com:signal:reset:1.0 phy_rst_n RST";
  attribute X_INTERFACE_PARAMETER of phy_rst_n : signal is "XIL_INTERFACENAME phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_rx_wrapper
     port map (
      data_broadcast(7 downto 0) => data_broadcast(7 downto 0),
      data_broadcast_vld => data_broadcast_vld,
      data_drop(7 downto 0) => data_drop(7 downto 0),
      data_drop_vld => data_drop_vld,
      data_for_me(7 downto 0) => data_for_me(7 downto 0),
      data_for_me_vld => data_for_me_vld,
      data_not_for_me(7 downto 0) => data_not_for_me(7 downto 0),
      data_not_for_me_vld => data_not_for_me_vld,
      phy_clk => phy_clk,
      phy_data_in(8 downto 0) => phy_data_in(8 downto 0),
      phy_data_in_vld => phy_data_in_vld,
      phy_rst_n => phy_rst_n,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
