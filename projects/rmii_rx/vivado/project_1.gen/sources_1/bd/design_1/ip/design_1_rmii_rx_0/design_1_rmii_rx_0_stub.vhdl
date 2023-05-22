-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun May 21 19:24:40 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mfall/Desktop/sandbox/projects/rmii_rx/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_rmii_rx_0/design_1_rmii_rx_0_stub.vhdl
-- Design      : design_1_rmii_rx_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_rmii_rx_0 is
  Port ( 
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

end design_1_rmii_rx_0;

architecture stub of design_1_rmii_rx_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rx_clk,rx_rst_n,rx_data[3:0],rx_dv,rx_er,crs,col,rx_byte[8:0],rx_byte_vld";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rmii_rx,Vivado 2020.2";
begin
end;
