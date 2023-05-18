-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 11 17:44:36 2023
-- Host        : LAPTOP-DJJCMLUK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/mfall/Desktop/sandbox/primitives/uart/vivado/project_1.gen/sources_1/bd/design_1/ip/design_1_uart_receiver_0_0/design_1_uart_receiver_0_0_stub.vhdl
-- Design      : design_1_uart_receiver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_uart_receiver_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    uart_rx : in STD_LOGIC;
    uart_word : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_word_vld : out STD_LOGIC;
    uart_word_rdy : in STD_LOGIC
  );

end design_1_uart_receiver_0_0;

architecture stub of design_1_uart_receiver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,uart_rx,uart_word[7:0],uart_word_vld,uart_word_rdy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_receiver,Vivado 2020.2";
begin
end;
