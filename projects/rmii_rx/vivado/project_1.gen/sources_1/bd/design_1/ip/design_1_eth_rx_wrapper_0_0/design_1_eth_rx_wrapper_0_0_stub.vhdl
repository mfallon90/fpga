-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 19:43:44 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_eth_rx_wrapper_0_0/design_1_eth_rx_wrapper_0_0_stub.vhdl
-- Design      : design_1_eth_rx_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_eth_rx_wrapper_0_0 is
  Port ( 
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

end design_1_eth_rx_wrapper_0_0;

architecture stub of design_1_eth_rx_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "phy_clk,phy_rst_n,phy_data_in[8:0],phy_data_in_vld,sys_clk,sys_rst_n,data_drop[7:0],data_drop_vld,data_broadcast[7:0],data_broadcast_vld,data_for_me[7:0],data_for_me_vld,data_not_for_me[7:0],data_not_for_me_vld";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "eth_rx_wrapper,Vivado 2020.2";
begin
end;
