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
    // RMII signals
    input   wire            rmii_rx_clk,
    input   wire            rmii_rx_rst_n,
    input   wire    [3:0]   rmii_rx_data,
    input   wire            rmii_rx_dv,
    input   wire            rmii_rx_er,
    input   wire            rmii_crs,
    input   wire            rmii_col,

    // System Signals
    input   wire            sys_clk,
    input   wire            sys_rst_n,
    output  wire    [7:0]   data_probe,
    output  wire            data_vld_probe
    );

    // RMII signals
    wire    [7:0]   rx_byte;
    wire            rx_byte_vld;
    wire            rx_data_vld;
    wire            crc_vld_i;

    // Signals between async fifo and crc/buffer
    wire    [7:0]   sys_byte;
    wire            sys_byte_vld;
    wire            sys_data_vld;

    // Signals between buffer and fsm
    wire    [7:0]   sys_byte_del;
    wire            sys_data_vld_del;

    // Signals between rx FSM and data fifo
    wire    [7:0]   data_out;
    wire            data_out_vld;
    wire            data_rdy;
    wire    [7:0]   data;

    // Signals between rx FSM and control fifo
    wire    [123:0] ctrl;
    wire            ctrl_vld;

    // Signals after control fifo
    wire    [10:0]  cnt;
    wire    [112:0] ctrl_less_cnt;
    wire            ctrl_out_vld;
    wire            ctrl_out_rdy;

    // Signals after demux
    wire    [8:0]   data_drop;
    wire    [8:0]   data_broadcast;
    wire    [8:0]   data_for_me;
    wire    [8:0]   data_not_for_me;


    assign crc_vld = crc_vld_i;

    assign data_vld_probe = data_for_me[8];
    assign data_probe = data_for_me[7:0];

    rmii_rx
        rmii (
            .rx_clk         (rmii_rx_clk),
            .rx_rst_n       (rmii_rx_rst_n),
            .rx_data        (rmii_rx_data),
            .rx_dv          (rmii_rx_dv),
            .rx_er          (rmii_rx_er),
            .crs            (rmii_crs),
            .col            (rmii_col),
            .rx_byte_vld    (rx_byte_vld),
            .rx_data_vld    (rx_data_vld),
            .rx_byte        (rx_byte)
        );

    async_fifo #(
            .P_DEPTH (P_DEPTH),
            .P_WIDTH (P_WIDTH+1))
        cdc_fifo (
            .wr_clk     (rmii_rx_clk),
            .wr_rst_n   (rmii_rx_rst_n),
            .wr_data    ({rx_data_vld,rx_byte}),
            .wr_vld     (rx_byte_vld),
            .wr_rdy     (),
            .rd_clk     (sys_clk),
            .rd_rst_n   (sys_rst_n),
            .rd_data    ({sys_data_vld,sys_byte}),
            .rd_vld     (sys_byte_vld),
            .rd_rdy     (1'b1)
        );

    crc_8 #(
            .P_RESIDUE (P_RESIDUE))
        crc32 (
            .clk            (sys_clk),
            .rst_n          (sys_rst_n),
            .data_in        (sys_byte),
            .data_in_vld    (sys_data_vld),
            .byte_in_vld    (sys_byte_vld),
            .crc_vld        (crc_vld_i)
        );

    buffer #(
            .P_NUM_DELAY (4),
            .P_NUM_BITS (P_WIDTH+1))
        delay (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .en         (sys_byte_vld),
            .data_in    ({sys_data_vld,sys_byte}),
            .data_out   ({sys_data_vld_del,sys_byte_del})
        );

    eth_rx_fsm 
        rx_fsm (
            .clk            (sys_clk),
            .rst_n          (sys_rst_n),
            .data_in        (sys_byte_del),
            .data_in_vld    (sys_data_vld_del),
            .byte_in_vld    (sys_byte_vld),
            .crc_vld        (crc_vld_i),
            .data_out       (data_out),
            .data_out_vld   (data_out_vld),
            .ctrl           (ctrl),
            .ctrl_vld       (ctrl_vld)
        );


    fifo #(
            .P_DEPTH (2*P_DEPTH),
            .P_WIDTH (P_WIDTH))
        data_fifo (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .wr_data    (data_out),
            .wr_vld     (data_out_vld),
            .wr_rdy     (),
            .rd_data    (data),
            .rd_vld     (data_vld),
            .rd_rdy     (data_rdy)
        );


    fifo #(
            .P_DEPTH (4),
            .P_WIDTH (124))
        control_fifo (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .wr_data    (ctrl),
            .wr_vld     (ctrl_vld),
            .wr_rdy     (),
            .rd_data    ({ctrl_less_cnt, cnt}),
            .rd_vld     (ctrl_out_vld),
            .rd_rdy     (ctrl_out_rdy)
        );

    fifo_ctrl 
        fifo_control (
            .clk        (sys_clk),
            .rst_n      (sys_rst_n),
            .cnt_rdy    (ctrl_out_rdy),
            .cnt_vld    (ctrl_out_vld),
            .cnt        (cnt),
            .data_rdy   (data_rdy)
        );


    eth_decoder #(
            .P_MY_MAC (P_MY_MAC))
        demultiplexer (
            .clk                (sys_clk),
            .rst_n              (sys_rst_n),
            .data_in            ({(data_rdy & data_vld),data}),
            .ctrl               (ctrl_less_cnt),
            .ctrl_vld           (ctrl_out_vld),
            .data_drop          (data_drop),
            .data_broadcast     (data_broadcast),
            .data_for_me        (data_for_me),
            .data_not_for_me    (data_not_for_me)
        );

    initial begin
        $dumpfile("eth_rx_wrapper.vcd");
        $dumpvars();
    end


endmodule