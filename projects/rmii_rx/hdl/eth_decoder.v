`timescale 1ns / 1ps
`define DST_MAC     (ctrl[112:65])
`define SRC_MAC     (ctrl[64:17])
`define TYPE        (ctrl[16:1])
`define FRAME_GOOD  (~ctrl[0])

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

module eth_decoder #(
    parameter   [47:0]  P_MY_MAC = 48'h00183E02523A
    )(
    input   wire                clk,
    input   wire                rst_n,
    input   wire    [8:0]       data_in,
    input   wire    [112:0]     ctrl,
    input   wire                ctrl_vld,
    output  reg     [8:0]       data_drop,
    output  reg     [8:0]       data_broadcast,
    output  reg     [8:0]       data_for_me,
    output  reg     [8:0]       data_not_for_me
    );

    localparam [1:0]    C_DROP_FRAME    = 2'b00;
    localparam [1:0]    C_BROADCAST     = 2'b01;
    localparam [1:0]    C_FOR_ME        = 2'b10;
    localparam [1:0]    C_NOT_FOR_ME    = 2'b11;

    reg     [1:0]   ctrl_next;
    reg     [1:0]   ctrl_sel;

    // Demultiplexer case statement
    always @(*) begin
        data_drop           = 0;
        data_broadcast      = 0;
        data_for_me         = 0;
        data_not_for_me     = 0;
        case (ctrl_sel)
            C_DROP_FRAME:   data_drop       = data_in;
            C_BROADCAST:    data_broadcast  = data_in;
            C_FOR_ME:       data_for_me     = data_in;
            C_NOT_FOR_ME:   data_not_for_me = data_in;
        endcase
    end

    // Calculate next select signal
    always @(*) begin
        if (`FRAME_GOOD) begin
            case(`DST_MAC)
                48'hFFFFFFFFFFFF:   ctrl_next = C_BROADCAST;
                P_MY_MAC:           ctrl_next = C_FOR_ME;
                default:            ctrl_next = C_NOT_FOR_ME;
            endcase
        end
        else begin
            ctrl_next   = C_DROP_FRAME;
        end
    end

    // register the select signal
    always @(posedge clk) begin
        if (~rst_n) begin
            ctrl_sel    <= C_DROP_FRAME;
        end
        else begin
            if (ctrl_vld) begin
                ctrl_sel    <= ctrl_next;
            end
        end
    end

endmodule