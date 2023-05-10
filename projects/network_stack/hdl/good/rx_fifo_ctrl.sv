`timescale 1ns / 1ps

`define IS_FULL ((wr_ptr[C_PTR_BITS] != rd_ptr_sync[C_PTR_BITS]) && (wr_ptr[C_PTR_BITS-1:0] > rd_ptr_sync[C_PTR_BITS-1:0]))
`define IS_EMPTY (wr_ptr_sync == rd_ptr)

`define RD_PTR (rd_ptr[C_PTR_BITS-1:0])
`define WR_PTR (wr_ptr[C_PTR_BITS-1:0])
`define WR_PTR_REG (wr_ptr_reg[C_PTR_BITS-1:0])

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: rx_fifo_ctrl
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module rx_fifo_ctrl #(
    parameter   integer P_NUM_BRAM = 4
    )(
    // FIFO Write signals
    input   logic                       wr_clk,
    input   logic                       wr_rst_n,
    input   logic                       wr_sof,
    input   logic                       wr_eof,
    input   logic   [7:0]               wr_byte,
    input   logic                       wr_byte_vld,
    input   logic                       wr_frm_vld,
    output  logic                       wr_frm_ack,

    // Write signals to FIFO
    output  logic   [7:0]               wr_byte_fifo,
    output  logic   [C_PTR_BITS-1:0]    wr_ptr_fifo,
    output  logic                       wr_en_fifo,

    // Write signals to FIFO
    input   logic   [7:0]               rd_byte_fifo,
    output  logic   [C_PTR_BITS-1:0]    rd_ptr_fifo,

    // CDC signals
    output  logic                       wr_frm_toggle,
    input   logic                       wr_ptr_load,
    output  logic                       rd_frm_toggle,
    input   logic                       rd_ptr_load,

    // FIFO Read signals
    input   logic                       rd_clk,
    input   logic                       rd_rst_n,
    output  logic                       rd_byte_vld,
    input   logic                       rd_byte_rdy,
    output  logic                       rd_sof,
    output  logic                       rd_eof
    );

    localparam  integer         C_PTR_BITS = $clog2(P_NUM_BRAM * 1024);

    localparam  logic   [1:0]   S_WR_IDLE   = 2'b00;
    localparam  logic   [1:0]   S_WR_WRITE  = 2'b01;
    localparam  logic   [1:0]   S_WR_CNT_HI = 2'b10;
    localparam  logic   [1:0]   S_WR_CNT_LO = 2'b11;
    // localparam  logic   [1:0]   S_WR_DONE   = 2'b11;

    localparam  logic   [1:0]   S_RD_IDLE   = 2'b00;
    localparam  logic   [1:0]   S_RD_CNT_HI = 2'b01;
    localparam  logic   [1:0]   S_RD_CNT_LO = 2'b10;
    localparam  logic   [1:0]   S_RD_READ   = 2'b11;

    // Fifo signals
    logic           fifo_full;
    logic           fifo_empty;

    // Write domain signals
    logic   [1:0]               wr_state;
    logic   [C_PTR_BITS:0]      wr_ptr;
    logic   [C_PTR_BITS:0]      wr_ptr_reg;
    logic   [10:0]              wr_cnt;
    logic   [C_PTR_BITS:0]      rd_ptr_sync;
    logic   [7:0]               upper_count;
    logic   [7:0]               lower_count;


    // Read domain signals
    logic   [1:0]               rd_state;
    logic   [C_PTR_BITS:0]      rd_ptr;
    logic   [C_PTR_BITS:0]      rd_ptr_reg;
    logic   [10:0]              rd_cnt;
    logic   [10:0]              rd_frm_len;
    logic   [7:0]               rd_byte_test;
    logic   [C_PTR_BITS:0]      wr_ptr_sync;
    

    assign  fifo_full   = `IS_FULL  ? 1'b1 : 1'b0;
    assign  fifo_empty  = `IS_EMPTY ? 1'b1 : 1'b0;
    assign  upper_count = {4'h0, wr_cnt[10:8]};
    assign  lower_count = wr_cnt[7:0];
    assign  rd_ptr_fifo = rd_ptr[C_PTR_BITS-1:0];
    assign  rd_byte_vld = ((rd_state == S_RD_READ) && (rd_cnt <= rd_frm_len)) ? 1'b1 : 1'b0;

    always_comb begin
        if (wr_state == S_WR_CNT_HI) begin
            wr_ptr_fifo     = `WR_PTR_REG;
            wr_byte_fifo    = upper_count;
            wr_en_fifo      = 1'b1;
        end

        else if (wr_state == S_WR_CNT_LO) begin
            wr_ptr_fifo     = `WR_PTR_REG+1;
            wr_byte_fifo    = lower_count;
            wr_en_fifo      = 1'b1;
        end

        else begin
            wr_ptr_fifo     = wr_ptr;
            wr_byte_fifo    = wr_byte;
            wr_en_fifo      = wr_byte_vld;
        end
    end

    always_ff @(posedge wr_clk) begin
        if (~wr_rst_n) begin
            wr_state        <= S_WR_IDLE;
            wr_ptr          <= 0;
            wr_cnt          <= 0;
            wr_frm_toggle   <= 0;
            wr_ptr_reg      <= 0;
            rd_ptr_sync     <= 0;
            wr_frm_ack      <= 0;
        end

        else begin
            wr_frm_ack  <= 0;
            if (rd_ptr_load) begin
                rd_ptr_sync <= rd_ptr_reg;
            end

            case (wr_state)
                S_WR_IDLE : begin
                    wr_state    <= S_WR_IDLE;
                    wr_ptr      <= wr_ptr_reg + 2;
                    wr_cnt      <= 2;
                    if (wr_sof) begin
                        wr_state    <= S_WR_WRITE;
                        if (wr_byte_vld) begin
                            wr_ptr      <= wr_ptr+1;
                            wr_cnt      <= wr_cnt+1;
                        end
                    end
                end

                S_WR_WRITE : begin
                    wr_state    <= S_WR_WRITE;
                    if (wr_eof) begin
                        wr_state    <= S_WR_CNT_HI;
                        wr_cnt      <= wr_cnt-4;
                    end

                    else if (wr_byte_vld) begin
                        wr_ptr         <= wr_ptr+1;
                        wr_cnt         <= wr_cnt+1;
                    end
                end

                S_WR_CNT_HI : begin
                    wr_state    <= S_WR_CNT_LO;
                end

                S_WR_CNT_LO : begin
                    wr_state    <= S_WR_IDLE;
                    if (wr_frm_vld && ~fifo_full) begin
                        wr_ptr_reg      <= wr_ptr_reg + wr_cnt;
                        wr_frm_toggle   <= ~wr_frm_toggle;
                        wr_frm_ack      <= 1;
                    end
                end
            endcase
        end
    end

    // Read fifo state machine
    always_ff @(posedge rd_clk) begin
        if (~rd_rst_n) begin
            rd_state        <= S_RD_IDLE;
            rd_ptr          <= 0;
            wr_ptr_sync     <= 0;
            rd_cnt          <= 0;
            rd_frm_len      <= 0;
            rd_sof          <= 0;
            rd_eof          <= 0;
            rd_frm_toggle   <= 0;
            rd_ptr_reg      <= 0;
        end

        else begin
            rd_sof      <= 0;
            rd_eof      <= 0;

            if (wr_ptr_load) begin
                wr_ptr_sync  <= wr_ptr_reg;
            end

            case (rd_state)
                S_RD_IDLE : begin
                    rd_state    <= S_RD_IDLE;

                    if (~fifo_empty) begin
                        rd_state                <= S_RD_CNT_HI;
                        rd_ptr                  <= rd_ptr+1;
                        rd_cnt                  <= rd_cnt+1;
                    end
                end

                S_RD_CNT_HI : begin
                    rd_state            <= S_RD_CNT_LO;
                    rd_frm_len[10:8]    <= rd_byte_fifo;
                    rd_ptr              <= rd_ptr+1;
                    rd_cnt              <= rd_cnt+1;
                end

                S_RD_CNT_LO : begin
                    rd_state            <= S_RD_READ;
                    rd_frm_len[7:0]     <= rd_byte_fifo;
                    rd_ptr              <= rd_ptr+1;
                    rd_cnt              <= rd_cnt+1;
                    rd_sof              <= 1;
                end

                S_RD_READ : begin
                    rd_state    <= S_RD_READ;
                    if (rd_cnt < rd_frm_len) begin
                        if (rd_byte_rdy) begin
                            rd_ptr      <= rd_ptr+1;
                            rd_cnt      <= rd_cnt+1;
                        end
                    end

                    else begin
                        rd_state        <= S_RD_IDLE;
                        rd_cnt          <= 0;
                        rd_eof          <= 1;
                        rd_frm_toggle   <= ~rd_frm_toggle;
                        rd_ptr_reg      <= rd_ptr;
                    end
                end
            endcase
        end
    end

    // initial begin
    //     $dumpfile("rx_fifo_ctrl.vcd");
    //     $dumpvars();
    // end


endmodule