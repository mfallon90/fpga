`timescale 1ns / 1ps

`define PTR_BITS ($clog2(P_DEPTH))
`define WR_PTR_INV ({~wr_ptr_reg[`PTR_BITS-:1], wr_ptr_reg[`PTR_BITS-1:0]})


/*
Author: Michael Fallon

Design Name: fifo
Tool Versions: Vivado 2020.2

Description: This is a wrapper to instantiate the different components of the
asynchronous fifo. The synchronizing flip flops for cdc are located in this
module as well as an instance of a dual-port block ram, which acts as the
fifo memory. The binary-to-gray conversion blocks are also instantiated here.
A gray code counter in conjunction with synchronizing flip flops is used to 
achieve CDC. The binary read and write pointers are first converted to gray 
code before being synchronized into the opposite clock domain for comparison.

For example, the write pointer is converted to gray code and synced into the
read domain. If the synced write pointer equals to read pointer then the FIFO
is either full or empty, and is determined using the MSB of the pointers.

For this design to work, the depth of the fifo MUST be a power of 2. This is
because a mod-n counter is used for read and write pointers, meaning that the
counter will only accurately and correctly roll over if the depth is a power of 2

Note that the binary to gray converters are slightly different for the read
and write domains. The write domain outputs a registered version of the gray
code pointer, while the read domain outputs a combinational version of the 
pointer. This is because the FIFO is a synchronous read, meaning that the 
extra clock cycle required to read from the FIFO requires that the pointer needs
to arrive one clock cycle early. This is required to infer a block-ram in
xilinx. If you used an asynchronous read FIFO, then you would use the registered
read pointer instead.

Parameters
    P_DEPTH: describes the depth of the FIFO. Must be a multiple of 1024
    in order to infer a block ram in xilinx tools

    P_WIDTH: the width of the data word/FIFO

Macros
    PTR_BITS: number of bits to address the FIFO. One additional bit is
    added to as the MSB and is used for empty and full logic.

    WR_PTR_INV: inverts the MSB of the write pointer for comparison with
    the synchronized read pointer. This is only done in the write domain
    for full flag comparison which requires that every bit EXCEPT for the
    MSB be identical. The empty comparison requires that the entire pointers
    be equal, including the MSB's.
*/

module fifo #(
    parameter   P_DEPTH = 1024,
    parameter   P_WIDTH = 8
    )(
    input   wire                    clk,
    input   wire                    rst_n,

    // Write domain
    input   wire    [P_WIDTH-1:0]   wr_data,
    input   wire                    wr_vld,
    output  wire                    wr_rdy,

    // Read domain
    output  wire    [P_WIDTH-1:0]   rd_data,
    output  wire                    rd_vld,
    input   wire                    rd_rdy
    );

    ////////////////////////////////
    //    Write Domain Signals    //
    ////////////////////////////////

    reg     [`PTR_BITS:0]   wr_ptr_del;
    wire    [`PTR_BITS:0]   wr_ptr_reg;
    wire                    wr_full;
    wire                    wr_en;

    ///////////////////////////////
    //    Read Domain Signals    //
    ///////////////////////////////

    wire    [`PTR_BITS:0]   rd_ptr_reg;
    wire    [`PTR_BITS:0]   rd_ptr_cmb;
    wire                    rd_empty;
    wire                    rd_en;

    //////////////////////////////////
    //    Concurrent Assignments    //
    //////////////////////////////////

    assign  wr_en       = wr_vld & ~wr_full;
    assign  wr_rdy      = ~wr_full;
    assign  wr_full     = (`WR_PTR_INV == rd_ptr_reg);
    assign  rd_vld      = ~rd_empty;
    assign  rd_en       = rd_rdy & ~rd_empty;
    assign  rd_empty    = (rd_ptr_reg == wr_ptr_del);

    always @(posedge clk) begin
        wr_ptr_del <= wr_ptr_reg;
    end


    ////////////////////////////////////
    //    Dual Port FIFO Block Ram    //
    ////////////////////////////////////

    fifo_bram #(
            .P_DEPTH (P_DEPTH),
            .P_WIDTH (P_WIDTH))
        fifo_module (
            .wr_clk     (clk),
            .wr_addr    (wr_ptr_reg[`PTR_BITS-1:0]),
            .wr_en      (wr_en),
            .wr_data    (wr_data),
            .rd_clk     (clk),
            .rd_addr    (rd_ptr_cmb[`PTR_BITS-1:0]),
            .rd_data    (rd_data)
        );

    ////////////////////////////////////
    //    Binary to Gray Converter    //
    ////////////////////////////////////

    modn_counter #(
            .P_NUM_BITS (`PTR_BITS+1))
        wr_ptr_calc (
            .clk        (clk),
            .rst_n      (rst_n),
            .en         (wr_en),
            .cnt_reg    (wr_ptr_reg)
        );

    ////////////////////////////////////
    //    Binary to Gray Converter    //
    ////////////////////////////////////

    modn_counter #(
            .P_NUM_BITS (`PTR_BITS+1))
        rd_ptr_calc (
            .clk        (clk),
            .rst_n      (rst_n),
            .en         (rd_en),
            .cnt_reg    (rd_ptr_reg),
            .cnt_cmb    (rd_ptr_cmb)
        );

    // initial begin
    //     $dumpfile("fifo.vcd");
    //     $dumpvars();
    // end


endmodule