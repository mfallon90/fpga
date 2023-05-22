`timescale 1ns / 1ps
// `define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR)))
`define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR) | (mac_addr == C_BRDCST)))

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: rmii_rx
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

module eth_rx_wrapper #(
    parameter   [47:0]  P_MY_MAC = 48'h00183E02523A,
    parameter   integer P_DEPTH = 1024,
    parameter   integer P_WIDTH = 8,
    parameter   [31:0]  P_RESIDUE = 32'hC704DD7B
    )(
    // Ethernet data in
    input   wire            phy_clk,
    input   wire            phy_rst_n,
    input   wire    [8:0]   phy_data_in,
    input   wire            phy_data_in_vld,

    // System Signals
    input   wire            sys_clk,
    input   wire            sys_rst_n,

    output  wire    [7:0]   data_drop,
    output  wire            data_drop_vld,
    output  wire    [7:0]   data_broadcast,
    output  wire            data_broadcast_vld,
    output  wire    [7:0]   data_for_me,
    output  wire            data_for_me_vld,
    output  wire    [7:0]   data_not_for_me,
    output  wire            data_not_for_me_vld
    );

    // Input to async fifo
    wire    [8:0]   data_0;
    wire            data_0_vld;

    // Async fifo to crc/delay
    wire    [8:0]   data_1;
    wire            data_1_vld;

    // crc/delay to fsm
    wire    [8:0]   data_2;
    wire            data_2_vld;
    wire            crc_vld;

    // FSM to data/control fifos
    wire    [7:0]   data_3;
    wire            data_3_vld;
    wire    [123:0] ctrl_3;
    wire            ctrl_3_vld;

    // FSM to data/control fifos
    wire    [7:0]   data_4;
    wire            data_4_vld;
    wire            data_4_rdy;
    wire    [123:0] ctrl_4;
    wire            ctrl_4_vld;


    assign  data_0      = phy_data_in;
    assign  data_0_vld  = phy_data_in_vld;
    assign  data_2_vld  = data_1_vld;


    async_fifo #(
            .P_DEPTH (P_DEPTH),
            .P_WIDTH (P_WIDTH+1))
        cdc_fifo (
            .wr_clk     (phy_clk),
            .wr_rst_n   (phy_rst_n),
            .wr_data    (data_0),
            .wr_vld     (data_0_vld),
            .wr_rdy     (),
            .rd_clk     (sys_clk),
            .rd_rst_n   (sys_rst_n),
            .rd_data    (data_1),
            .rd_vld     (data_1_vld),
            .rd_rdy     (1'b1)
        );

    crc_8 #(
            .P_RESIDUE (P_RESIDUE))
        crc32 (
            .clk            (sys_clk),
            .rst_n          (sys_rst_n),
            .data_in        (data_1[7:0]),
            .data_in_vld    (data_1[8]),
            .byte_in_vld    (data_1_vld),
            .crc_vld        (crc_vld)
        );

    buffer #(
            .P_NUM_DELAY (4),
            .P_NUM_BITS (P_WIDTH+1))
        delay (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .en         (data_1_vld),
            .data_in    (data_1),
            .data_out   (data_2)
        );

    eth_rx_fsm 
        rx_fsm (
            .clk            (sys_clk),
            .rst_n          (sys_rst_n),
            .data_in        (data_2[7:0]),
            .data_in_vld    (data_2[8]),
            .byte_in_vld    (data_2_vld),
            .crc_vld        (crc_vld),
            .data_out       (data_3),
            .data_out_vld   (data_3_vld),
            .ctrl           (ctrl_3),
            .ctrl_vld       (ctrl_3_vld)
        );


    fifo #(
            .P_DEPTH (2*P_DEPTH),
            .P_WIDTH (P_WIDTH))
        data_fifo (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .wr_data    (data_3),
            .wr_vld     (data_3_vld),
            .wr_rdy     (),
            .rd_data    (data_4),
            .rd_vld     (data_4_vld),
            .rd_rdy     (data_4_rdy)
        );


    fifo #(
            .P_DEPTH (4),
            .P_WIDTH (124))
        control_fifo (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .wr_data    (ctrl_3),
            .wr_vld     (ctrl_3_vld),
            .wr_rdy     (),
            .rd_data    (ctrl_4),
            .rd_vld     (ctrl_4_vld),
            .rd_rdy     (ctrl_4_rdy)
        );

    fifo_ctrl 
        fifo_control (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .cnt_rdy    (ctrl_4_rdy),
            .cnt_vld    (ctrl_4_vld),
            .cnt        (ctrl_4[10:0]),
            .data_rdy   (data_4_rdy)
        );


    eth_decoder #(
            .P_MY_MAC (P_MY_MAC))
        demultiplexer (
            .clk                (sys_clk),
            .rst_n              (sys_rst_n),
            .data_in            ({(data_4_rdy & data_4_vld),data_4}),
            .ctrl               (ctrl_4[123:11]),
            .ctrl_vld           (ctrl_4_vld),
            .data_drop          ({data_drop_vld, data_drop}),
            .data_broadcast     ({data_broadcast_vld, data_broadcast}),
            .data_for_me        ({data_for_me_vld, data_for_me}),
            .data_not_for_me    ({data_not_for_me_vld, data_not_for_me})
        );

    initial begin
        $dumpfile("eth_rx_wrapper.vcd");
        $dumpvars();
    end


endmodule