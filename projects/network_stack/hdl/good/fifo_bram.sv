`timescale 1ns / 1ps
`define ADDR_BITS ($clog2(P_NUM_BRAM*1024))
//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: FM SYNTHESIZER
// Module Name: cos_lut
// Tool Versions: Vivado 2020.2
//
// Description: This module infers a dual port BRAM based LUT used to store values
// of cos. The bit-width is given by the WIDTH parameter and the LUT depth is given
// by the DEPTH parameter. The LUT is initialized with a .mem file containing the
// binary values to be stored in the LUT. This is referenced by INIT_VAL.
//////////////////////////////////////////////////////////////////////////////////

module fifo_bram #(
    parameter integer   P_NUM_BRAM  = 4 // Depth of LUT
    )(
    input   logic                       a_clk,
    input   logic   [`ADDR_BITS-1:0]    a_addr,
    input   logic                       a_wr_en,
    input   logic   [7:0]               a_wr_data,

    input   logic                       b_clk,
    input   logic   [`ADDR_BITS-1:0]    b_addr,
    output  logic   [7:0]               b_rd_data
    );



// SIGNAL DECLARATION
    reg [7:0] bram [0:(P_NUM_BRAM*1024)-1];
    integer i;

// LUT INITIALIZATION
    initial begin
        for (integer i=0; i<(P_NUM_BRAM*1024); i=i+1) begin
            bram[i] = 0;
        end
    end

// SYNCHRONOUS WRITES
    always@(posedge a_clk) begin
        if (a_wr_en) begin
            bram[a_addr]    <= a_wr_data;
        end
    end

// SYNCHRONOUS READS
    always@(posedge b_clk) begin
        b_rd_data   <= bram[b_addr];
    end

endmodule