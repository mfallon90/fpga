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
    output  reg     [8:0]       drop,
    output  reg     [8:0]       for_me,
    output  reg     [8:0]       arp
    );

    localparam [1:0]    C_DROP_FRAME    = 2'b00;
    localparam [1:0]    C_FOR_ME        = 2'b01;
    localparam [1:0]    C_ARP_REQUEST   = 2'b10;

    reg     [1:0]   ctrl_next;
    reg     [1:0]   ctrl_sel;

    // Demultiplexer case statement
    always @(*) begin
        drop        = 0;
        for_me      = 0;
        arp         = 0;
        case (ctrl_sel)
            C_DROP_FRAME:   drop    = data_in;
            C_FOR_ME:       for_me  = data_in;
            C_ARP_REQUEST:  arp     = data_in;
        endcase
    end

    // Calculate next select signal
    always @(*) begin
        if (`FRAME_GOOD) begin

            if ((`DST_MAC == ~0) && (`TYPE == 16'h0806)) begin
                ctrl_next   = C_ARP_REQUEST;
            end

            else if (`DST_MAC == P_MY_MAC) begin
                ctrl_next   = C_FOR_ME;
            end

            else begin
                ctrl_next   = C_DROP_FRAME;
            end
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