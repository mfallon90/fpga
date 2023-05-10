`timescale 1ns / 1ps

`define PTR_BITS ($clog2(P_NUM_BRAM * 1024))

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: rx_fifo
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module rx_fifo_wrapper #(
    parameter   integer P_NUM_BRAM = 4
    )(
    // ILA clock
    input   logic           ila_clk,
    // eth rx domain
    input   logic           wr_clk,
    input   logic           wr_rst_n,
    input   logic           wr_sof,
    input   logic           wr_eof,
    input   logic   [7:0]   wr_byte,
    input   logic           wr_byte_vld,
    input   logic           wr_frm_vld,
    output  logic           wr_frm_ack,

    // user logic domain
    input   logic           rd_clk,
    input   logic           rd_rst_n,
    output  logic   [7:0]   rd_byte,
    output  logic           rd_byte_vld,
    input   logic           rd_byte_rdy,
    output  logic           rd_sof,
    output  logic           rd_eof
    );

    logic   [7:0]           rd_byte_fifo;
    logic   [`PTR_BITS-1:0] rd_ptr_fifo;
    logic   [7:0]           wr_byte_fifo;
    logic   [`PTR_BITS-1:0] wr_ptr_fifo;
    logic                   wr_en_fifo;

    logic                   rd_ptr_load;
    logic                   wr_ptr_load;

    assign  rd_byte = rd_byte_fifo;

    rx_fifo_ctrl #(
            .P_NUM_BRAM (P_NUM_BRAM))
        control_unit (
            .wr_clk         (wr_clk),
            .wr_rst_n       (wr_rst_n),
            .wr_sof         (wr_sof),
            .wr_eof         (wr_eof),
            .wr_byte        (wr_byte),
            .wr_byte_vld    (wr_byte_vld),
            .wr_frm_vld     (wr_frm_vld),
            .wr_frm_ack     (wr_frm_ack),
            .wr_byte_fifo   (wr_byte_fifo),
            .wr_ptr_fifo    (wr_ptr_fifo),
            .rd_byte_fifo   (rd_byte_fifo),
            .rd_ptr_fifo    (rd_ptr_fifo),
            .wr_en_fifo     (wr_en_fifo),
            .wr_frm_toggle  (wr_frm_toggle),
            .wr_ptr_load    (wr_ptr_load),
            .rd_frm_toggle  (rd_frm_toggle),
            .rd_ptr_load    (rd_ptr_load),
            .rd_clk         (rd_clk),
            .rd_rst_n       (rd_rst_n),
            .rd_byte_vld    (rd_byte_vld),
            .rd_byte_rdy    (rd_byte_rdy),
            .rd_sof         (rd_sof),
            .rd_eof         (rd_eof)
        );


    fifo_bram #(
            .P_NUM_BRAM (P_NUM_BRAM))
        fifo_module (
            .a_clk      (wr_clk),
            .a_addr     (wr_ptr_fifo),
            .a_wr_en    (wr_en_fifo),
            .a_wr_data  (wr_byte_fifo),
            .b_clk      (rd_clk),
            .b_addr     (rd_ptr_fifo),
            .b_rd_data  (rd_byte_fifo)
        );

    sync_pulse
        rd_ptr_to_wr_domain (
            .clk            (wr_clk),
            .rst_n          (wr_rst_n),
            .async_toggle   (rd_frm_toggle),
            .sync_pulse     (rd_ptr_load)
        );

    sync_pulse
        wr_ptr_to_rd_domain (
            .clk            (rd_clk),
            .rst_n          (rd_rst_n),
            .async_toggle   (wr_frm_toggle),
            .sync_pulse     (wr_ptr_load)
        );

    // initial begin
    //     $dumpfile("rx_fifo.vcd");
    //     $dumpvars();
    // end


endmodule