`timescale 1ns / 1ps
`define CTRL_LEN 14

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

module fifo_ctrl
    (
    input   logic           clk,
    input   logic           rst_n,
    output  logic           cnt_rdy,
    input   logic           cnt_vld,
    input   logic   [10:0]  cnt,
    output  logic           data_rdy
    );

    localparam  S_IDLE  = 1'b0;
    localparam  S_COUNT = 1'b1;

    logic           state;
    logic   [10:0]  max_val;
    logic   [10:0]  count;

    assign data_rdy = state;
    assign cnt_rdy  = ~state;

    always_ff @(posedge clk) begin
        if (~rst_n) begin
            count   <= 0;
            state   <= S_IDLE;
            max_val <= 0;
        end

        else begin
            case (state)
                S_IDLE: begin
                    count   <= 0;
                    max_val <= cnt;
                    if (cnt_vld) begin
                        state   <= S_COUNT;
                    end
                end

                S_COUNT: begin
                    count   <= count+1;
                    if (count == max_val) begin
                        state   <= S_IDLE;
                    end
                end
            endcase
        end

    end

    // initial begin
    //     $dumpfile("fifo_ctrl.vcd");
    //     $dumpvars();
    // end


endmodule