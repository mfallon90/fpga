`timescale 1ns / 1ps
// `define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR)))
`define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR) | (mac_addr == C_BRDCST)))

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: eth_rx_fsm
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: This module receives data from phy using standard MII protocol.
// Data is received in nibbles and sent out as bytes, along with a byte valid 
// flag to indicate a valid byte. The MII protocol specifies that data is received
// Most Significant Byte first, but within that byte, the Least Significant Nibble
// is received first, followed by the Most significant nibble. So if the following
// data is seen on rx_data : 0xA 0xC 0x4 0xD then the intended bytes are 0xCA 0xD4
//
// Note that the MAC address for the PHY must be provided with the nibbles
// inverted in order to conform to the MII receive data format
//
//////////////////////////////////////////////////////////////////////////////////

module eth_rx_fsm
    (
    // RX signals
    input   logic           clk,
    input   logic           rst_n,
    input   logic   [7:0]   data_in,
    input   logic           data_in_vld,
    input   logic           byte_in_vld,
    output  logic    [7:0]  byte_out,
    output  logic           byte_vld
    );

    localparam  [2:0]   S_IDLE  = 0;
    localparam  [2:0]   S_DEST  = 1;
    localparam  [2:0]   S_SRC   = 2;
    localparam  [2:0]   S_TYPE  = 3;
    localparam  [2:0]   S_PKT   = 4;

    logic   [2:0]   state;

  
    always_ff @(posedge clk) begin
        if (~rst_n) begin
           state    <= S_IDLE;
        end

        else begin
            if (byte_in_vld) begin
                case (state)
                    S_IDLE: begin
                        if (data_in_vld) begin
                            state       <= S_DEST;
                            dest_mac    <= {dest_mac[39:0], data_in};
                        end
                    end
                    S_DEST: begin

                    end
                    S_SRC: begin

                    end
                    S_TYPE: begin

                    end
                    S_PKT: begin

                    end
                endcase
            end
        end
    end

    initial begin
        $dumpfile("eth_rx_fsm.vcd");
        $dumpvars();
    end


endmodule