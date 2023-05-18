-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 11 17:21:06 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mfall/Desktop/sandbox/primitives/uart/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_async_fifo_0_0/design_1_async_fifo_0_0_stub.vhdl
-- Design      : design_1_async_fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_async_fifo_0_0 is
  Port ( 
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

end design_1_async_fifo_0_0;

architecture stub of design_1_async_fifo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wr_clk,wr_rst_n,wr_data[7:0],wr_vld,wr_rdy,rd_clk,rd_rst_n,rd_data[7:0],rd_vld,rd_rdy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "async_fifo,Vivado 2020.2";
begin
end;
