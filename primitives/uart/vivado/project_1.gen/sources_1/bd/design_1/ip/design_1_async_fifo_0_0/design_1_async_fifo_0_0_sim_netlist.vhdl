-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 11 17:21:06 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/mfall/Desktop/sandbox/primitives/uart/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_async_fifo_0_0/design_1_async_fifo_0_0_sim_netlist.vhdl
-- Design      : design_1_async_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_async_fifo_0_0_bin_gry_ctr is
  port (
    bin_cnt_next : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_vld : in STD_LOGIC;
    rd_rdy : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_async_fifo_0_0_bin_gry_ctr : entity is "bin_gry_ctr";
end design_1_async_fifo_0_0_bin_gry_ctr;

architecture STRUCTURE of design_1_async_fifo_0_0_bin_gry_ctr is
  signal \^d\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bin_cnt_next__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
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
  signal \bin_cnt_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \bin_cnt_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal bram_reg_i_2_n_3 : STD_LOGIC;
  signal bram_reg_i_3_n_0 : STD_LOGIC;
  signal bram_reg_i_3_n_1 : STD_LOGIC;
  signal bram_reg_i_3_n_2 : STD_LOGIC;
  signal bram_reg_i_3_n_3 : STD_LOGIC;
  signal bram_reg_i_4_n_0 : STD_LOGIC;
  signal bram_reg_i_4_n_1 : STD_LOGIC;
  signal bram_reg_i_4_n_2 : STD_LOGIC;
  signal bram_reg_i_4_n_3 : STD_LOGIC;
  signal bram_reg_i_5_n_0 : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \NLW_bin_cnt_next_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bin_cnt_next_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_bram_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_bram_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_bram_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bin_cnt_next_carry : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bin_cnt_reg[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i__carry_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i__carry_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i__carry_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sync_rd_ptr0[9]_i_1\ : label is "soft_lutpair12";
begin
  D(10 downto 0) <= \^d\(10 downto 0);
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
      DI(0) => \bin_cnt_reg_reg_n_0_[0]\,
      O(3 downto 1) => \bin_cnt_next__0\(3 downto 1),
      O(0) => bin_cnt_next(0),
      S(3) => \bin_cnt_reg_reg_n_0_[3]\,
      S(2) => \bin_cnt_reg_reg_n_0_[2]\,
      S(1) => \bin_cnt_reg_reg_n_0_[1]\,
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
      O(3 downto 0) => \bin_cnt_next__0\(7 downto 4),
      S(3) => \bin_cnt_reg_reg_n_0_[7]\,
      S(2) => \bin_cnt_reg_reg_n_0_[6]\,
      S(1) => \bin_cnt_reg_reg_n_0_[5]\,
      S(0) => \bin_cnt_reg_reg_n_0_[4]\
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
      O(2 downto 0) => \bin_cnt_next__0\(10 downto 8),
      S(3) => '0',
      S(2) => \^d\(10),
      S(1) => \bin_cnt_reg_reg_n_0_[9]\,
      S(0) => \bin_cnt_reg_reg_n_0_[8]\
    );
bin_cnt_next_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[0]\,
      I1 => rd_vld,
      I2 => rd_rdy,
      O => bin_cnt_next_carry_i_1_n_0
    );
\bin_cnt_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[0]\,
      I1 => rd_vld,
      I2 => rd_rdy,
      O => \bin_cnt_next__0\(0)
    );
\bin_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(0),
      Q => \bin_cnt_reg_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(10),
      Q => \^d\(10),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(1),
      Q => \bin_cnt_reg_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(2),
      Q => \bin_cnt_reg_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(3),
      Q => \bin_cnt_reg_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(4),
      Q => \bin_cnt_reg_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(5),
      Q => \bin_cnt_reg_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(6),
      Q => \bin_cnt_reg_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(7),
      Q => \bin_cnt_reg_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(8),
      Q => \bin_cnt_reg_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \bin_cnt_next__0\(9),
      Q => \bin_cnt_reg_reg_n_0_[9]\,
      R => \^sr\(0)
    );
bram_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => bram_reg_i_3_n_0,
      CO(3 downto 1) => NLW_bram_reg_i_2_CO_UNCONNECTED(3 downto 1),
      CO(0) => bram_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => NLW_bram_reg_i_2_O_UNCONNECTED(3 downto 2),
      O(1 downto 0) => bin_cnt_next(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \bin_cnt_reg_reg_n_0_[9]\,
      S(0) => \bin_cnt_reg_reg_n_0_[8]\
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
      O(3 downto 0) => bin_cnt_next(7 downto 4),
      S(3) => \bin_cnt_reg_reg_n_0_[7]\,
      S(2) => \bin_cnt_reg_reg_n_0_[6]\,
      S(1) => \bin_cnt_reg_reg_n_0_[5]\,
      S(0) => \bin_cnt_reg_reg_n_0_[4]\
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
      DI(0) => \bin_cnt_reg_reg_n_0_[0]\,
      O(3 downto 1) => bin_cnt_next(3 downto 1),
      O(0) => NLW_bram_reg_i_4_O_UNCONNECTED(0),
      S(3) => \bin_cnt_reg_reg_n_0_[3]\,
      S(2) => \bin_cnt_reg_reg_n_0_[2]\,
      S(1) => \bin_cnt_reg_reg_n_0_[1]\,
      S(0) => bram_reg_i_5_n_0
    );
bram_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[0]\,
      I1 => rd_vld,
      I2 => rd_rdy,
      O => bram_reg_i_5_n_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[9]\,
      I1 => Q(9),
      I2 => \^d\(10),
      I3 => Q(10),
      O => S(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[7]\,
      I1 => \bin_cnt_reg_reg_n_0_[6]\,
      I2 => Q(6),
      I3 => \i__carry_i_5_n_0\,
      O => S(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[4]\,
      I1 => \bin_cnt_reg_reg_n_0_[3]\,
      I2 => Q(3),
      I3 => \i__carry_i_6_n_0\,
      O => S(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[1]\,
      I1 => \bin_cnt_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => \i__carry_i_7_n_0\,
      O => S(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \bin_cnt_reg_reg_n_0_[9]\,
      I3 => \bin_cnt_reg_reg_n_0_[8]\,
      I4 => Q(8),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[4]\,
      I1 => Q(4),
      I2 => \bin_cnt_reg_reg_n_0_[6]\,
      I3 => \bin_cnt_reg_reg_n_0_[5]\,
      I4 => Q(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => \bin_cnt_reg_reg_n_0_[3]\,
      I3 => \bin_cnt_reg_reg_n_0_[2]\,
      I4 => Q(2),
      O => \i__carry_i_7_n_0\
    );
\sync_rd_ptr0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[1]\,
      I1 => \bin_cnt_reg_reg_n_0_[0]\,
      O => \^d\(0)
    );
\sync_rd_ptr0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[2]\,
      I1 => \bin_cnt_reg_reg_n_0_[1]\,
      O => \^d\(1)
    );
\sync_rd_ptr0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[3]\,
      I1 => \bin_cnt_reg_reg_n_0_[2]\,
      O => \^d\(2)
    );
\sync_rd_ptr0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[4]\,
      I1 => \bin_cnt_reg_reg_n_0_[3]\,
      O => \^d\(3)
    );
\sync_rd_ptr0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[5]\,
      I1 => \bin_cnt_reg_reg_n_0_[4]\,
      O => \^d\(4)
    );
\sync_rd_ptr0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[6]\,
      I1 => \bin_cnt_reg_reg_n_0_[5]\,
      O => \^d\(5)
    );
\sync_rd_ptr0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[7]\,
      I1 => \bin_cnt_reg_reg_n_0_[6]\,
      O => \^d\(6)
    );
\sync_rd_ptr0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[8]\,
      I1 => \bin_cnt_reg_reg_n_0_[7]\,
      O => \^d\(7)
    );
\sync_rd_ptr0[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bin_cnt_reg_reg_n_0_[9]\,
      I1 => \bin_cnt_reg_reg_n_0_[8]\,
      O => \^d\(8)
    );
\sync_rd_ptr0[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^d\(10),
      I1 => \bin_cnt_reg_reg_n_0_[9]\,
      O => \^d\(9)
    );
\sync_wr_ptr0[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_rst_n,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_async_fifo_0_0_bin_gry_ctr_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_clk : in STD_LOGIC;
    wr_rdy : in STD_LOGIC;
    wr_vld : in STD_LOGIC;
    wr_rst_n : in STD_LOGIC;
    wr_rdy_0 : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_async_fifo_0_0_bin_gry_ctr_0 : entity is "bin_gry_ctr";
end design_1_async_fifo_0_0_bin_gry_ctr_0;

architecture STRUCTURE of design_1_async_fifo_0_0_bin_gry_ctr_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_carry_i_5_n_0\ : STD_LOGIC;
  signal \_carry_i_6_n_0\ : STD_LOGIC;
  signal \_carry_i_7_n_0\ : STD_LOGIC;
  signal bin_cnt_next : STD_LOGIC_VECTOR ( 10 downto 0 );
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
  signal \NLW_bin_cnt_next_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bin_cnt_next_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \_carry_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \_carry_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \_carry_i_7\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of bin_cnt_next_carry : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \bin_cnt_next_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \sync_wr_ptr0[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sync_wr_ptr0[9]_i_1\ : label is "soft_lutpair5";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  SR(0) <= \^sr\(0);
\_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => \^q\(9),
      I1 => wr_rdy_0(9),
      I2 => \^q\(10),
      I3 => wr_rdy_0(10),
      O => S(3)
    );
\_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => wr_rdy_0(6),
      I3 => \_carry_i_5_n_0\,
      O => S(2)
    );
\_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => wr_rdy_0(3),
      I3 => \_carry_i_6_n_0\,
      O => S(1)
    );
\_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => wr_rdy_0(0),
      I3 => \_carry_i_7_n_0\,
      O => S(0)
    );
\_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => \^q\(7),
      I1 => wr_rdy_0(7),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => wr_rdy_0(8),
      O => \_carry_i_5_n_0\
    );
\_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => \^q\(4),
      I1 => wr_rdy_0(4),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => wr_rdy_0(5),
      O => \_carry_i_6_n_0\
    );
\_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06906009"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_rdy_0(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => wr_rdy_0(2),
      O => \_carry_i_7_n_0\
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
      O(3 downto 0) => bin_cnt_next(3 downto 0),
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
      O(3 downto 0) => bin_cnt_next(7 downto 4),
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
      O(2 downto 0) => bin_cnt_next(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \^q\(10 downto 8)
    );
bin_cnt_next_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_rdy,
      I2 => wr_vld,
      O => bin_cnt_next_carry_i_1_n_0
    );
\bin_cnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\bin_cnt_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => bin_cnt_next(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
bram_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr_vld,
      I1 => wr_rdy,
      O => wr_en
    );
\sync_rd_ptr0[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_rst_n,
      O => \^sr\(0)
    );
\sync_wr_ptr0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => D(0)
    );
\sync_wr_ptr0[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => D(1)
    );
\sync_wr_ptr0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => D(2)
    );
\sync_wr_ptr0[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => D(3)
    );
\sync_wr_ptr0[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => D(4)
    );
\sync_wr_ptr0[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      O => D(5)
    );
\sync_wr_ptr0[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      O => D(6)
    );
\sync_wr_ptr0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      O => D(7)
    );
\sync_wr_ptr0[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => D(8)
    );
\sync_wr_ptr0[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(9),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_async_fifo_0_0_fifo_bram is
  port (
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    bin_cnt_next : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_async_fifo_0_0_fifo_bram : entity is "fifo_bram";
end design_1_async_fifo_0_0_fifo_bram;

architecture STRUCTURE of design_1_async_fifo_0_0_fifo_bram is
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
  attribute RTL_RAM_BITS of bram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of bram_reg : label is "inst/fifo_module/bram";
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
      ADDRARDADDR(13 downto 4) => \out\(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 4) => bin_cnt_next(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => wr_clk,
      CLKBWRCLK => rd_clk,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => wr_data(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_bram_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_bram_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => rd_data(7 downto 0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_async_fifo_0_0_async_fifo is
  port (
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_rdy : out STD_LOGIC;
    rd_vld : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_vld : in STD_LOGIC;
    wr_rst_n : in STD_LOGIC;
    rd_rst_n : in STD_LOGIC;
    rd_rdy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_async_fifo_0_0_async_fifo : entity is "async_fifo";
end design_1_async_fifo_0_0_async_fifo;

architecture STRUCTURE of design_1_async_fifo_0_0_async_fifo is
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rd_ptr_bin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_ptr_calc_n_10 : STD_LOGIC;
  signal rd_ptr_calc_n_21 : STD_LOGIC;
  signal rd_ptr_calc_n_22 : STD_LOGIC;
  signal rd_ptr_calc_n_23 : STD_LOGIC;
  signal rd_ptr_calc_n_24 : STD_LOGIC;
  signal rd_ptr_calc_n_25 : STD_LOGIC;
  signal rd_ptr_gry : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^rd_vld\ : STD_LOGIC;
  signal sync_rd_ptr0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_rd_ptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_wr_ptr0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sync_wr_ptr1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wr_en : STD_LOGIC;
  signal wr_ptr_bin : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_ptr_calc_n_0 : STD_LOGIC;
  signal wr_ptr_calc_n_13 : STD_LOGIC;
  signal wr_ptr_calc_n_14 : STD_LOGIC;
  signal wr_ptr_calc_n_15 : STD_LOGIC;
  signal wr_ptr_calc_n_16 : STD_LOGIC;
  signal wr_ptr_gry : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^wr_rdy\ : STD_LOGIC;
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  rd_vld <= \^rd_vld\;
  wr_rdy <= \^wr_rdy\;
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^wr_rdy\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => wr_ptr_calc_n_13,
      S(2) => wr_ptr_calc_n_14,
      S(1) => wr_ptr_calc_n_15,
      S(0) => wr_ptr_calc_n_16
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^rd_vld\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => rd_ptr_calc_n_22,
      S(2) => rd_ptr_calc_n_23,
      S(1) => rd_ptr_calc_n_24,
      S(0) => rd_ptr_calc_n_25
    );
fifo_module: entity work.design_1_async_fifo_0_0_fifo_bram
     port map (
      bin_cnt_next(9 downto 0) => rd_ptr_bin(9 downto 0),
      \out\(9 downto 0) => wr_ptr_bin(9 downto 0),
      rd_clk => rd_clk,
      rd_data(7 downto 0) => rd_data(7 downto 0),
      wr_clk => wr_clk,
      wr_data(7 downto 0) => wr_data(7 downto 0),
      wr_en => wr_en
    );
rd_ptr_calc: entity work.design_1_async_fifo_0_0_bin_gry_ctr
     port map (
      D(10) => rd_ptr_calc_n_10,
      D(9 downto 0) => rd_ptr_gry(9 downto 0),
      Q(10 downto 0) => sync_wr_ptr1(10 downto 0),
      S(3) => rd_ptr_calc_n_22,
      S(2) => rd_ptr_calc_n_23,
      S(1) => rd_ptr_calc_n_24,
      S(0) => rd_ptr_calc_n_25,
      SR(0) => rd_ptr_calc_n_21,
      bin_cnt_next(9 downto 0) => rd_ptr_bin(9 downto 0),
      rd_clk => rd_clk,
      rd_rdy => rd_rdy,
      rd_rst_n => rd_rst_n,
      rd_vld => \^rd_vld\
    );
\sync_rd_ptr0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(0),
      Q => sync_rd_ptr0(0),
      R => p_0_in
    );
\sync_rd_ptr0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_calc_n_10,
      Q => sync_rd_ptr0(10),
      R => p_0_in
    );
\sync_rd_ptr0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(1),
      Q => sync_rd_ptr0(1),
      R => p_0_in
    );
\sync_rd_ptr0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(2),
      Q => sync_rd_ptr0(2),
      R => p_0_in
    );
\sync_rd_ptr0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(3),
      Q => sync_rd_ptr0(3),
      R => p_0_in
    );
\sync_rd_ptr0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(4),
      Q => sync_rd_ptr0(4),
      R => p_0_in
    );
\sync_rd_ptr0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(5),
      Q => sync_rd_ptr0(5),
      R => p_0_in
    );
\sync_rd_ptr0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(6),
      Q => sync_rd_ptr0(6),
      R => p_0_in
    );
\sync_rd_ptr0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(7),
      Q => sync_rd_ptr0(7),
      R => p_0_in
    );
\sync_rd_ptr0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(8),
      Q => sync_rd_ptr0(8),
      R => p_0_in
    );
\sync_rd_ptr0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => rd_ptr_gry(9),
      Q => sync_rd_ptr0(9),
      R => p_0_in
    );
\sync_rd_ptr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(0),
      Q => sync_rd_ptr1(0),
      R => p_0_in
    );
\sync_rd_ptr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(10),
      Q => sync_rd_ptr1(10),
      R => p_0_in
    );
\sync_rd_ptr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(1),
      Q => sync_rd_ptr1(1),
      R => p_0_in
    );
\sync_rd_ptr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(2),
      Q => sync_rd_ptr1(2),
      R => p_0_in
    );
\sync_rd_ptr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(3),
      Q => sync_rd_ptr1(3),
      R => p_0_in
    );
\sync_rd_ptr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(4),
      Q => sync_rd_ptr1(4),
      R => p_0_in
    );
\sync_rd_ptr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(5),
      Q => sync_rd_ptr1(5),
      R => p_0_in
    );
\sync_rd_ptr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(6),
      Q => sync_rd_ptr1(6),
      R => p_0_in
    );
\sync_rd_ptr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(7),
      Q => sync_rd_ptr1(7),
      R => p_0_in
    );
\sync_rd_ptr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(8),
      Q => sync_rd_ptr1(8),
      R => p_0_in
    );
\sync_rd_ptr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => sync_rd_ptr0(9),
      Q => sync_rd_ptr1(9),
      R => p_0_in
    );
\sync_wr_ptr0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(0),
      Q => sync_wr_ptr0(0),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_calc_n_0,
      Q => sync_wr_ptr0(10),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(1),
      Q => sync_wr_ptr0(1),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(2),
      Q => sync_wr_ptr0(2),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(3),
      Q => sync_wr_ptr0(3),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(4),
      Q => sync_wr_ptr0(4),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(5),
      Q => sync_wr_ptr0(5),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(6),
      Q => sync_wr_ptr0(6),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(7),
      Q => sync_wr_ptr0(7),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(8),
      Q => sync_wr_ptr0(8),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => wr_ptr_gry(9),
      Q => sync_wr_ptr0(9),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(0),
      Q => sync_wr_ptr1(0),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(10),
      Q => sync_wr_ptr1(10),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(1),
      Q => sync_wr_ptr1(1),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(2),
      Q => sync_wr_ptr1(2),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(3),
      Q => sync_wr_ptr1(3),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(4),
      Q => sync_wr_ptr1(4),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(5),
      Q => sync_wr_ptr1(5),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(6),
      Q => sync_wr_ptr1(6),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(7),
      Q => sync_wr_ptr1(7),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(8),
      Q => sync_wr_ptr1(8),
      R => rd_ptr_calc_n_21
    );
\sync_wr_ptr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => sync_wr_ptr0(9),
      Q => sync_wr_ptr1(9),
      R => rd_ptr_calc_n_21
    );
wr_ptr_calc: entity work.design_1_async_fifo_0_0_bin_gry_ctr_0
     port map (
      D(9 downto 0) => wr_ptr_gry(9 downto 0),
      Q(10) => wr_ptr_calc_n_0,
      Q(9 downto 0) => wr_ptr_bin(9 downto 0),
      S(3) => wr_ptr_calc_n_13,
      S(2) => wr_ptr_calc_n_14,
      S(1) => wr_ptr_calc_n_15,
      S(0) => wr_ptr_calc_n_16,
      SR(0) => p_0_in,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rdy => \^wr_rdy\,
      wr_rdy_0(10 downto 0) => sync_rd_ptr1(10 downto 0),
      wr_rst_n => wr_rst_n,
      wr_vld => wr_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_async_fifo_0_0 is
  port (
    wr_clk : in STD_LOGIC;
    wr_rst_n : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_vld : in STD_LOGIC;
    wr_rdy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst_n : in STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_vld : out STD_LOGIC;
    rd_rdy : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_async_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_async_fifo_0_0 : entity is "design_1_async_fifo_0_0,async_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_async_fifo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_async_fifo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_async_fifo_0_0 : entity is "async_fifo,Vivado 2020.2";
end design_1_async_fifo_0_0;

architecture STRUCTURE of design_1_async_fifo_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rd_clk : signal is "xilinx.com:signal:clock:1.0 rd_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rd_clk : signal is "XIL_INTERFACENAME rd_clk, ASSOCIATED_RESET rd_rst_n, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rd_rst_n : signal is "xilinx.com:signal:reset:1.0 rd_rst_n RST";
  attribute X_INTERFACE_PARAMETER of rd_rst_n : signal is "XIL_INTERFACENAME rd_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of wr_clk : signal is "xilinx.com:signal:clock:1.0 wr_clk CLK";
  attribute X_INTERFACE_PARAMETER of wr_clk : signal is "XIL_INTERFACENAME wr_clk, ASSOCIATED_RESET wr_rst_n, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of wr_rst_n : signal is "xilinx.com:signal:reset:1.0 wr_rst_n RST";
  attribute X_INTERFACE_PARAMETER of wr_rst_n : signal is "XIL_INTERFACENAME wr_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_async_fifo_0_0_async_fifo
     port map (
      rd_clk => rd_clk,
      rd_data(7 downto 0) => rd_data(7 downto 0),
      rd_rdy => rd_rdy,
      rd_rst_n => rd_rst_n,
      rd_vld => rd_vld,
      wr_clk => wr_clk,
      wr_data(7 downto 0) => wr_data(7 downto 0),
      wr_rdy => wr_rdy,
      wr_rst_n => wr_rst_n,
      wr_vld => wr_vld
    );
end STRUCTURE;
