-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 17 17:13:26 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_wrapper_0_0_stub.vhdl
-- Design      : design_1_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rmii_rx_clk,rmii_rx_rst_n,rmii_rx_data[3:0],rmii_rx_dv,rmii_rx_er,rmii_crs,rmii_col,sys_clk,sys_rst_n,sys_byte_vld,sys_data_vld,sys_byte[7:0],crc_vld";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "wrapper,Vivado 2020.2";
begin
end;
