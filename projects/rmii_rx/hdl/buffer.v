`timescale 1ns / 1ps

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

module buffer #(
    parameter integer P_NUM_DELAY = 4,
    parameter integer P_NUM_BITS  = 8
    )(
    input   wire                        clk,
    input   wire                        rst_n,
    input   wire                        en,
    input   wire    [P_NUM_BITS-1:0]    data_in,
    output  wire    [P_NUM_BITS-1:0]    data_out
    );

    reg [P_NUM_BITS-1:0] delay [0:P_NUM_DELAY-1];
    integer i;
    
    assign data_out = delay[P_NUM_DELAY-1];

    always @(posedge clk) begin
        if (~rst_n) begin
            for (i=0; i<P_NUM_DELAY; i=i+1) begin
                delay[i]    <= 0;
            end
        end
        else begin
            if (en) begin
                delay[0]    <= data_in;

                for (i=0; i<P_NUM_DELAY-1; i=i+1) begin
                    delay[i+1]    <= delay[i];
                end
            end
        end
    end

endmodule