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
// Design Name: rx_fifo
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: 
//////////////////////////////////////////////////////////////////////////////////

module rx_fifo #(
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
    input   logic           wr_frm_dmp,

    // user logic domain
    input   logic           rd_clk,
    input   logic           rd_rst_n,
    output  logic   [7:0]   rd_byte,
    output  logic           rd_byte_vld,
    input   logic           rd_byte_rdy,
    output  logic           rd_sof,
    output  logic           rd_eof
    );

    //  eth_ila
    //      ila_rx (
    //         .clk     (ila_clk),
    //         .probe0  (wr_clk),
    //         .probe1  (wr_state),
    //         .probe2  (wr_byte),
    //         .probe3  (wr_byte_vld),
    //         .probe4  (wr_frm_vld),
    //         .probe5  (rd_clk),
    //         .probe6  (rd_state),
    //         .probe7  (rd_byte),
    //         .probe8  (rd_byte_vld),
    //         .probe9  (rd_sof),
    //         .probe10 (rd_eof),
    //         .probe11 (fifo_full),
    //         .probe12 (fifo_empty)
    //  );

    localparam  integer         C_FIFO_DEPTH = P_NUM_BRAM * 1024;
    localparam  integer         C_PTR_BITS = $clog2(C_FIFO_DEPTH);

    localparam  logic   [1:0]   S_WR_IDLE   = 2'b00;
    localparam  logic   [1:0]   S_WR_WRITE  = 2'b01;
    localparam  logic   [1:0]   S_WR_DONE   = 2'b10;

    localparam  logic   [1:0]   S_RD_IDLE   = 2'b00;
    localparam  logic   [1:0]   S_RD_CNT_HI = 2'b01;
    localparam  logic   [1:0]   S_RD_CNT_LO = 2'b10;
    localparam  logic   [1:0]   S_RD_READ   = 2'b11;

    // Fifo signals
    logic           fifo_full;
    logic           fifo_empty;
    logic           wr_frm_toggle;
    logic           rd_frm_toggle;

    // Write domain signals
    logic   [1:0]               wr_state;
    logic   [C_PTR_BITS:0]      wr_ptr;
    logic   [C_PTR_BITS:0]      wr_ptr_reg;
    logic   [10:0]              wr_cnt;
    logic   [C_PTR_BITS:0]      rd_ptr_sync;
    logic                       rptr_load;

    logic                       wr_en;
    logic   [C_PTR_BITS:0]      wr_ptr_fifo;
    logic   [7:0]               wr_byte_fifo;

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
    logic                       wptr_load;
    

    assign  fifo_full   = `IS_FULL  ? 1'b1 : 1'b0;
    assign  fifo_empty  = `IS_EMPTY ? 1'b1 : 1'b0;

    assign  wr_en = wr_byte_vld | wr_eof | (wr_state == S_WR_DONE) ? 1'b1 : 1'b0;

    assign  upper_count = {4'h0, wr_cnt[10:8]};
    assign  lower_count = wr_cnt[7:0];

    always_comb begin
        if ((wr_state == S_WR_WRITE) & ~wr_eof) begin
            wr_ptr_fifo = wr_ptr;
            wr_byte_fifo = wr_byte;
        end

        else if (wr_eof) begin
            wr_ptr_fifo = `WR_PTR_REG;
            wr_byte_fifo = upper_count;
        end

        else if (wr_state == S_WR_DONE) begin
            wr_ptr_fifo = `WR_PTR_REG+1;
            wr_byte_fifo = lower_count;
        end

        else begin
            wr_ptr_fifo = 0;
            wr_byte_fifo = 0;
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
        end

        else begin

            if (rptr_load) begin
                rd_ptr_sync <= rd_ptr_reg;
            end

            case (wr_state)
                S_WR_IDLE : begin
                    wr_state    <= S_WR_IDLE;
                    wr_cnt      <= 0;
                    if (wr_sof) begin
                        wr_state    <= S_WR_WRITE;
                        wr_ptr      <= wr_ptr_reg + 2;
                        wr_cnt      <= 2;
                    end
                end

                S_WR_WRITE : begin
                    wr_state    <= S_WR_WRITE;
                    if (wr_eof) begin
                        wr_state            <= S_WR_DONE;
                    end

                    else if (wr_byte_vld) begin
                        wr_ptr         <= wr_ptr+1;
                        wr_cnt         <= wr_cnt+1;
                    end
                end

                S_WR_DONE : begin
                    wr_state            <= S_WR_IDLE;
                    if (wr_frm_vld && ~fifo_full) begin
                        wr_ptr          <= wr_ptr_reg + wr_cnt;
                        wr_ptr_reg      <= wr_ptr_reg + wr_cnt;
                        wr_frm_toggle   <= ~wr_frm_toggle;
                    end
                    else begin
                        wr_ptr      <= wr_ptr_reg;
                    end
                end
            endcase
        end
    end

    // Read fifo state machine
    always_ff @(posedge rd_clk) begin
        if (~rd_rst_n) begin
            rd_state        <= S_RD_IDLE;
            rd_byte_vld     <= 0;
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
            rd_byte_vld <= 0;

            if (wptr_load) begin
                wr_ptr_sync  <= wr_ptr;
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
                    rd_frm_len[10:8]    <= rd_byte;
                    rd_ptr              <= rd_ptr+1;
                    rd_cnt              <= rd_cnt+1;
                    rd_sof              <= 1;
                end

                S_RD_CNT_LO : begin
                    rd_state            <= S_RD_READ;
                    rd_frm_len[7:0]     <= rd_byte;
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
                            rd_byte_vld <= 1;
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


    fifo_bram #(
        .P_NUM_BRAM (P_NUM_BRAM))
        fifo_module (
            .a_clk      (wr_clk),
            .a_addr     (wr_ptr_fifo[C_PTR_BITS-1:0]),
            .a_wr_en    (wr_en),
            .a_wr_data  (wr_byte_fifo),
            .b_clk      (rd_clk),
            .b_addr     (rd_ptr[C_PTR_BITS-1:0]),
            .b_rd_data  (rd_byte)
        );

    sync_pulse
        rd_ptr_to_wr_domain (
            .clk            (wr_clk),
            .rst_n          (wr_rst_n),
            .async_toggle   (rd_frm_toggle),
            .sync_pulse     (rptr_load)
        );

    sync_pulse
        wr_ptr_to_rd_domain (
            .clk            (rd_clk),
            .rst_n          (rd_rst_n),
            .async_toggle   (wr_frm_toggle),
            .sync_pulse     (wptr_load)
        );

    // initial begin
    //     $dumpfile("rx_fifo.vcd");
    //     $dumpvars();
    // end


endmodule