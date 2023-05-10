`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: FM SYNTHESIZER
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Description: This is the top level wrapper for the fm synthesizer project.
//////////////////////////////////////////////////////////////////////////////////

module mii_rx #(
    parameter   logic   [47:0]  P_MAC_ADDR  = 48'h00183E02523A
    )(
    // RX signals
    input   logic               ila_clk,
    input   logic               rx_clk,
    input   logic               rst_n,
    input   logic   [3:0]       rx_data,
    input   logic               rx_dv,
    input   logic               rx_er,
    input   logic               crs,
    input   logic               col,
    output  logic   [7:0]       eth_rx_byte,
    output  logic               crc_en,
    output  logic               eth_sof,
    output  logic               eth_eof,
    input   logic   [31:0]      crc_in,
    input   logic               crc_done
    );

    eth_ila
        ila_inst (
            .clk    (ila_clk),
            .probe0 (state_q),
            .probe1 (rx_byte),
            .probe2 (rx_dv),
            .probe3 (byte_cnt_q),
            .probe4 (clk_en_q)
    );

    localparam  logic   [3:0]   S_IDLE      = 4'b0000;
    localparam  logic   [3:0]   S_PREAMBLE  = 4'b0001;
    localparam  logic   [3:0]   S_DEST_ADDR = 4'b0010;
    localparam  logic   [3:0]   S_SRC_ADDR  = 4'b0011;
    localparam  logic   [3:0]   S_TYPE_LEN  = 4'b0100;
    localparam  logic   [3:0]   S_PACKET    = 4'b0101;
    localparam  logic   [3:0]   S_DONE      = 4'b0110;
    localparam  logic   [3:0]   S_WAIT      = 4'b0111;
    localparam  logic   [3:0]   S_CRC_CHK   = 4'b1000;
    localparam  logic   [3:0]   S_CRC_ERR   = 4'b1001;

    localparam  integer         C_MAX_PKT_BITS  = 8*1500;
    localparam  integer         C_MIN_PKT_BITS  = 8*46;
    localparam  integer         C_ADDR_BYTES    = 6;
    localparam  integer         C_TYPE_BYTES    = 2;
    localparam  logic   [31:0]  C_RESIDUE       = 32'hC704DD7B;
    localparam  logic   [47:0]  C_BROADCAST     = 48'hFFFFFFFFFFFF;
    localparam  logic   [7:0]   C_PREAMBLE      = 8'h55;
    localparam  logic   [7:0]   C_SFD           = 8'hD5;

    // Registered current state values
    logic   [3:0]                   state_q;
    logic   [47:0]                  src_mac_q;
    logic   [47:0]                  dst_mac_q;
    logic   [C_TYPE_BYTES*8-1:0]    type_q;
    logic   [C_MAX_PKT_BITS-1:0]    pkt_buf_q;
    logic   [C_MAX_PKT_BITS-1:0]    rx_pkt_q;
    logic                           rx_done_q;
    logic   [7:0]                   rx_byte_q;
    logic   [3:0]                   rx_data_del;
    logic   [9:0]                   byte_cnt_q;
    logic                           clk_en_q;


    // Combinationally driven next state values
    logic   [3:0]                   state_d;
    logic   [47:0]                  src_mac_d;
    logic   [47:0]                  dst_mac_d;
    logic   [C_TYPE_BYTES*8-1:0]    type_d;
    logic   [C_MAX_PKT_BITS-1:0]    pkt_buf_d;
    logic   [C_MAX_PKT_BITS-1:0]    rx_pkt_d;
    logic                           rx_done_d;
    logic   [9:0]                   byte_cnt_d;
    logic                           clk_en_d;
    logic                           eth_sof_d;
    logic                           eth_eof_d;

    logic                           preamble_in;
    logic                           sfd_in;
    logic                           dst_valid;
    logic                           brdcst;
    logic                           mac_valid;
    logic                           frame_valid;
    logic                           is_length;
    logic   [7:0]                   rx_byte;

    assign preamble_in  = rx_byte == C_PREAMBLE     ? 1'b1 : 1'b0;
    assign sfd_in       = rx_byte == C_SFD          ? 1'b1 : 1'b0;
    assign dst_valid    = dst_mac_q == P_MAC_ADDR   ? 1'b1 : 1'b0;
    assign brdcst       = dst_mac_q == C_BROADCAST  ? 1'b1 : 1'b0;
    assign mac_valid    = dst_valid | brdcst        ? 1'b1 : 1'b0;
    assign frame_valid  = (dst_valid|brdcst)&rx_dv  ? 1'b1 : 1'b0;
    assign is_length    = type_q < 16'h0600     ? 1'b1 : 1'b0;
    assign rx_byte      = {rx_data, rx_data_del};
    assign eth_rx_byte  = rx_byte;
    assign crc_en       = clk_en_q;

    always_ff @(posedge rx_clk) begin
        if (~rst_n) begin
            state_q         <= S_IDLE;
            byte_cnt_q      <= 0;
            src_mac_q       <= 0;
            dst_mac_q       <= 0;
            type_q          <= 0;
            pkt_buf_q       <= 0;
            rx_pkt_q        <= 0;
            rx_done_q       <= 0;
            clk_en_q        <= 0;
            rx_data_del     <= 0;
            eth_sof         <= 0;
            eth_eof         <= 0;
        end

        else begin
            rx_data_del     <= rx_data;
            clk_en_q        <= clk_en_d;

            if (state_q == S_IDLE && rx_byte == C_PREAMBLE) begin
                state_q     <= S_PREAMBLE;
                byte_cnt_q  <= 1;
            end

            if (clk_en_q) begin
                state_q         <= state_d;
                byte_cnt_q      <= byte_cnt_d;
                src_mac_q       <= src_mac_d;
                dst_mac_q       <= dst_mac_d;
                type_q          <= type_d;
                pkt_buf_q       <= pkt_buf_d;
                rx_pkt_q        <= rx_pkt_d;
                rx_done_q       <= rx_done_d;
                eth_sof         <= eth_sof_d;
                eth_eof         <= eth_eof_d;
            end
        end
    end

    always_comb begin
        // Default values
        state_d         = state_q;
        clk_en_d        = ~clk_en_q;
        byte_cnt_d      = byte_cnt_q+1;
        src_mac_d       = src_mac_q;
        dst_mac_d       = dst_mac_q;
        type_d          = type_q;
        pkt_buf_d       = pkt_buf_q;
        rx_pkt_d        = rx_pkt_q;
        rx_done_d       = rx_done_q;
        eth_sof_d       = 1'b0;
        eth_eof_d       = 1'b0;
        
        case(state_q)

            S_IDLE : begin
                state_d     = S_IDLE;
                clk_en_d    = 1'b0;
                byte_cnt_d  = 0;
                src_mac_d   = 0;
                dst_mac_d   = 0;
                type_d      = 0;
                pkt_buf_d   = 0;
                rx_done_d   = 1'b0;
            end

            S_PREAMBLE : begin
                clk_en_d    = ~clk_en_q;
                byte_cnt_d  = 0;

                if (rx_byte == C_PREAMBLE) begin
                    state_d     = S_PREAMBLE;
                    eth_sof_d   = 1'b0;
                end

                else if (rx_byte == C_SFD) begin
                    state_d     = S_DEST_ADDR;
                    eth_sof_d   = 1'b1;
                end
                
                else begin
                    state_d     = S_IDLE;
                    eth_sof_d   = 1'b0;
                end
            end

            S_DEST_ADDR : begin
                clk_en_d    = ~clk_en_q;
                byte_cnt_d  = byte_cnt_q+1;

                if (rx_dv) begin
                    dst_mac_d   = {dst_mac_q[C_ADDR_BYTES*8-9:0],rx_byte};
                    if (byte_cnt_q == C_ADDR_BYTES-1) begin
                        state_d     = S_SRC_ADDR;
                        byte_cnt_d  = 0;
                    end
                    else begin
                        state_d = S_DEST_ADDR;
                    end
                end

                else begin
                    dst_mac_d   = 0;
                    state_d     = S_IDLE;
                    eth_eof_d   = 1'b1;
                end
            end

            S_SRC_ADDR : begin
                clk_en_d    = ~clk_en_q;
                byte_cnt_d  = byte_cnt_q+1;

                if (frame_valid) begin
                    src_mac_d   = {src_mac_d[C_ADDR_BYTES*8-9:0],rx_byte};
                    if (byte_cnt_q == C_ADDR_BYTES-1) begin
                        state_d = S_TYPE_LEN;
                        byte_cnt_d  = 0;
                    end
                    else begin
                        state_d = S_SRC_ADDR;
                    end
                end
                else begin
                    src_mac_d   = 0;
                    state_d     = S_WAIT;
                    eth_eof_d   = 1'b1;
                end
            end

            S_TYPE_LEN : begin
                clk_en_d    = ~clk_en_q;
                byte_cnt_d  = byte_cnt_q+1;

                if (frame_valid) begin
                    state_d     = S_TYPE_LEN;
                    type_d  = {type_q[7:0],rx_byte};
                    if (byte_cnt_q == C_TYPE_BYTES-1) begin
                        state_d     = S_PACKET;
                        byte_cnt_d  = 0;
                    end
                    else begin
                        state_d = S_TYPE_LEN;
                    end
                end
                else begin
                    type_d  = 0;
                    state_d     = S_WAIT;
                    eth_eof_d   = 1'b1;
                end
            end

            S_PACKET : begin
                if (frame_valid) begin
                    state_d     = S_PACKET;
                    pkt_buf_d   = {pkt_buf_q[C_MAX_PKT_BITS-9:0],rx_byte};
                end
                else begin
                    state_d     = S_CRC_CHK;
                    eth_eof_d   = 1;
                    byte_cnt_d  = byte_cnt_q-4;
                end
            end

            S_CRC_CHK : begin
                state_d = S_CRC_CHK;
                if (crc_done) begin
                    if (crc_in == C_RESIDUE) begin
                        state_d     = S_DONE;
                        rx_done_d   = 1'b1;
                        rx_pkt_d    = pkt_buf_q >> 32;
                    end
                    
                    else begin
                        state_d = S_CRC_ERR;
                    end
                end
            end

            S_CRC_ERR : begin
                state_d = S_IDLE;
            end

            S_DONE : begin
                state_d = S_IDLE;
            end

            S_WAIT : begin
                state_d = S_WAIT;
                if (~rx_dv) begin
                    state_d = S_IDLE;
                end
            end
        endcase
    end


    initial begin
        $dumpfile("mii_rx_fsm.vcd");
        $dumpvars();
    end


endmodule