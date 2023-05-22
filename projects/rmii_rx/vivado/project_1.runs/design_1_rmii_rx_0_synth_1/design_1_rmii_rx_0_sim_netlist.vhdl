-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 19:24:40 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rmii_rx_0_sim_netlist.vhdl
-- Design      : design_1_rmii_rx_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rmii_rx is
  port (
    state_reg_0 : out STD_LOGIC;
    rx_byte_vld : out STD_LOGIC;
    rx_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_rst_n : in STD_LOGIC;
    rx_dv : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rmii_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rmii_rx is
  signal byte_vld_i_1_n_0 : STD_LOGIC;
  signal byte_vld_i_2_n_0 : STD_LOGIC;
  signal \^rx_byte_vld\ : STD_LOGIC;
  signal rx_data_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal \^state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx_byte[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rx_byte[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rx_byte[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rx_byte[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rx_byte[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rx_byte[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rx_byte[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rx_data_reg[1]_i_1\ : label is "soft_lutpair0";
begin
  rx_byte_vld <= \^rx_byte_vld\;
  state_reg_0 <= \^state_reg_0\;
byte_vld_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000808A"
    )
        port map (
      I0 => rx_rst_n,
      I1 => rx_dv,
      I2 => \^state_reg_0\,
      I3 => byte_vld_i_2_n_0,
      I4 => \^rx_byte_vld\,
      O => byte_vld_i_1_n_0
    );
byte_vld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => rx_dv,
      I1 => rx_data(3),
      I2 => rx_data(0),
      I3 => rx_data(1),
      I4 => rx_data(2),
      O => byte_vld_i_2_n_0
    );
byte_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => byte_vld_i_1_n_0,
      Q => \^rx_byte_vld\,
      R => '0'
    );
\rx_byte[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => \rx_data_reg_reg_n_0_[0]\,
      O => rx_byte(0)
    );
\rx_byte[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => \rx_data_reg_reg_n_0_[1]\,
      O => rx_byte(1)
    );
\rx_byte[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => \rx_data_reg_reg_n_0_[2]\,
      O => rx_byte(2)
    );
\rx_byte[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => \rx_data_reg_reg_n_0_[3]\,
      O => rx_byte(3)
    );
\rx_byte[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_data(0),
      O => rx_byte(4)
    );
\rx_byte[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_data(1),
      O => rx_byte(5)
    );
\rx_byte[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_data(2),
      O => rx_byte(6)
    );
\rx_byte[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_data(3),
      O => rx_byte(7)
    );
\rx_data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8800C80088008800"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_dv,
      I2 => rx_data(3),
      I3 => rx_data(0),
      I4 => rx_data(1),
      I5 => rx_data(2),
      O => rx_data_reg(0)
    );
\rx_data_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => rx_data(1),
      I1 => rx_rst_n,
      I2 => rx_dv,
      I3 => \^state_reg_0\,
      O => \rx_data_reg[1]_i_1_n_0\
    );
\rx_data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C88800000000"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_dv,
      I2 => rx_data(3),
      I3 => rx_data(0),
      I4 => rx_data(1),
      I5 => rx_data(2),
      O => rx_data_reg(2)
    );
\rx_data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080C08080808080"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_dv,
      I2 => rx_data(3),
      I3 => rx_data(0),
      I4 => rx_data(1),
      I5 => rx_data(2),
      O => rx_data_reg(3)
    );
\rx_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rx_data_reg(0),
      Q => \rx_data_reg_reg_n_0_[0]\,
      R => state_i_1_n_0
    );
\rx_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => \rx_data_reg[1]_i_1_n_0\,
      Q => \rx_data_reg_reg_n_0_[1]\,
      R => '0'
    );
\rx_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rx_data_reg(2),
      Q => \rx_data_reg_reg_n_0_[2]\,
      R => state_i_1_n_0
    );
\rx_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => rx_data_reg(3),
      Q => \rx_data_reg_reg_n_0_[3]\,
      R => state_i_1_n_0
    );
state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_rst_n,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888C88888888888"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => rx_dv,
      I2 => rx_data(3),
      I3 => rx_data(0),
      I4 => rx_data(1),
      I5 => rx_data(2),
      O => state_i_2_n_0
    );
state_reg: unisim.vcomponents.FDRE
     port map (
      C => rx_clk,
      CE => '1',
      D => state_i_2_n_0,
      Q => \^state_reg_0\,
      R => state_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rx_clk : in STD_LOGIC;
    rx_rst_n : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dv : in STD_LOGIC;
    rx_er : in STD_LOGIC;
    crs : in STD_LOGIC;
    col : in STD_LOGIC;
    rx_byte : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rx_byte_vld : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_rmii_rx_0,rmii_rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "rmii_rx,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rx_clk : signal is "xilinx.com:signal:clock:1.0 rx_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rx_clk : signal is "XIL_INTERFACENAME rx_clk, ASSOCIATED_RESET rx_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_rmii_rx_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_rst_n : signal is "xilinx.com:signal:reset:1.0 rx_rst_n RST";
  attribute X_INTERFACE_PARAMETER of rx_rst_n : signal is "XIL_INTERFACENAME rx_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rmii_rx
     port map (
      rx_byte(7 downto 0) => rx_byte(7 downto 0),
      rx_byte_vld => rx_byte_vld,
      rx_clk => rx_clk,
      rx_data(3 downto 0) => rx_data(3 downto 0),
      rx_dv => rx_dv,
      rx_rst_n => rx_rst_n,
      state_reg_0 => rx_byte(8)
    );
end STRUCTURE;
