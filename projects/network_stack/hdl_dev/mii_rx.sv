`timescale 1ns / 1ps
`define PREAMBLE_CNT    (C_PREAMBLE_BITS >> C_SHIFT_BITS)
`define ADDR_CNT        (C_ADDR_BITS >> C_SHIFT_BITS)
`define LEN_CNT         (C_LEN_BITS >> C_SHIFT_BITS)
`define MIN_PCK_CNT     (C_MIN_PKT_BITS >> C_SHIFT_BITS)
`define PKT_CNT         ((len_type << 3) >> C_SHIFT_BITS)
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
    input   logic           ila_clk,
    input   logic           rx_clk,
    input   logic           rst_n,
    input   logic   [3:0]   rx_data,
    input   logic           rx_dv,
    input   logic           rx_er,
    input   logic           crs,
    input   logic           col,

    output  logic           rx_byte_vld,
    input   logic           tx_byte_rdy,
    output  logic   [7:0]   rx_byte_out
    );

    // eth_ila
    //     ila_inst (
    //         .clk    (ila_clk),
    //         .probe0 (rx_state),
    //         .probe1 (rx_byte),
    //         .probe2 (rx_dv),
    //         .probe3 (dst_valid),
    //         .probe4 (crc_sof),
    //         .probe5 (clk_en),
    //         .probe6 (crc)
    // );

    localparam  logic   [3:0]   S_RX_IDLE      = 4'b0000;
    localparam  logic   [3:0]   S_RX_PREAMBLE  = 4'b0001;
    localparam  logic   [3:0]   S_RX_DEST_ADDR = 4'b0010;
    localparam  logic   [3:0]   S_RX_SRC_ADDR  = 4'b0011;
    localparam  logic   [3:0]   S_RX_TYPE_LEN  = 4'b0100;
    localparam  logic   [3:0]   S_RX_PACKET    = 4'b0101;
    localparam  logic   [3:0]   S_RX_DONE      = 4'b0110;
    localparam  logic   [3:0]   S_RX_WAIT      = 4'b0111;
    localparam  logic   [3:0]   S_RX_CRC_CHK   = 4'b1000;
    localparam  logic   [3:0]   S_RX_CRC_ERR   = 4'b1001;
    localparam  logic   [3:0]   S_RX_SEND      = 4'b1010;

    localparam  integer                 C_RX_BITS       = 4;
    localparam  integer                 C_SHIFT_BITS    = 3;
    localparam  integer                 C_MAX_PKT_BITS  = 8*1500;
    localparam  integer                 C_MIN_PKT_BITS  = 8*46;
    localparam  integer                 C_PREAMBLE_BITS = 64;
    localparam  integer                 C_ADDR_BITS     = 48;
    localparam  integer                 C_LEN_BITS      = 16;
    localparam  integer                 C_CRC_BITS      = 32;
    localparam  logic   [31:0]          C_RESIDUE       = 32'hC704DD7B;
    localparam  logic   [47:0]          C_BROADCAST     = 48'hFFFFFFFFFFFF;
    localparam  logic   [7:0]           C_PREAMBLE      = 8'h55;
    localparam  logic   [7:0]           C_SFD           = 8'hD5;

    logic   [3:0]                   rx_state;
    logic   [47:0]                  src_mac;
    logic   [47:0]                  dst_mac;
    logic   [C_LEN_BITS-1:0]        len_type;
    logic   [C_MAX_PKT_BITS-1:0]    rx_pkt;
    logic   [C_MAX_PKT_BITS-1:0]    rx_pkt_buf;
    logic                           pkt_cnt_ovf;
    logic                           rx_done;
    logic   [7:0]                   rx_byte;
    logic   [3:0]                   rx_data_del;
    logic   [31:0]                  rx_word_reg;
    logic   [9:0]                   byte_cnt;
    logic                           clk_en;

    logic                           preamble_in;
    logic                           sfd_in;
    logic                           dst_valid;
    logic                           brdcst;
    logic                           mac_valid;
    logic                           frame_valid;
    logic                           is_length;
    logic                           crc_en;
    logic                           crc_sof;
    logic   [31:0]                  crc;
    logic                           crc_done;
    logic                           rx_pkt_vld;
    logic                           rx_pkt_rdy;

    assign preamble_in  = rx_byte == C_PREAMBLE     ? 1'b1 : 1'b0;
    assign sfd_in       = rx_byte == C_SFD          ? 1'b1 : 1'b0;
    assign dst_valid    = dst_mac == P_MAC_ADDR     ? 1'b1 : 1'b0;
    assign brdcst       = dst_mac == C_BROADCAST    ? 1'b1 : 1'b0;
    assign mac_valid    = dst_valid | brdcst        ? 1'b1 : 1'b0;
    assign frame_valid  = (dst_valid|brdcst)&rx_dv  ? 1'b1 : 1'b0;
    assign is_length    = len_type < 16'h0600       ? 1'b1 : 1'b0;
    assign rx_byte      = {rx_data, rx_data_del};
    assign crc_en       = clk_en;

    always_ff @(posedge rx_clk) begin
        if (~rst_n) begin
            rx_state        <= S_RX_IDLE;
            byte_cnt        <= 0;
            src_mac         <= 0;
            dst_mac         <= 1;
            len_type        <= 0;
            rx_pkt          <= 0;
            pkt_cnt_ovf     <= 0;
            rx_done         <= 0;
            clk_en          <= 0;
            rx_data_del     <= 0;
            crc_sof         <= 0;
            rx_pkt_vld      <= 0;
        end

        else begin
            rx_data_del <= rx_data;
            rx_done     <= 0;
            rx_pkt_vld  <= 0;

            if (rx_state != S_RX_IDLE) begin
                clk_en      <= ~clk_en;
                if (clk_en) begin
                    // byte_cnt    <= byte_cnt+1;
                end
            end

            case(rx_state)
                S_RX_IDLE : begin
                    byte_cnt        <= 0;
                    pkt_cnt_ovf     <= 0;
                    if (preamble_in) begin
                        rx_state    <= S_RX_PREAMBLE;
                        byte_cnt    <= 1;
                    end
                end

                S_RX_PREAMBLE : begin
                    if (clk_en) begin
                        byte_cnt    <= byte_cnt+1;
                        rx_state    <= S_RX_IDLE;
                        if (byte_cnt < `PREAMBLE_CNT-1) begin
                            if (preamble_in) begin
                                rx_state   <= S_RX_PREAMBLE;
                            end
                        end

                        else if (byte_cnt == `PREAMBLE_CNT-1) begin
                            if (sfd_in) begin
                                rx_state    <= S_RX_DEST_ADDR;
                                byte_cnt    <= 0;
                                crc_sof     <= 1;
                            end
                        end
                    end
                end

                S_RX_DEST_ADDR : begin
                    if (rx_dv) begin
                        if (clk_en) begin
                            byte_cnt    <= byte_cnt+1;
                            crc_sof     <= 0;
                            rx_state    <= S_RX_DEST_ADDR;
                            dst_mac <= {dst_mac[C_ADDR_BITS-9:0],rx_byte};
                            if (byte_cnt == `ADDR_CNT-1) begin
                                rx_state       <= S_RX_SRC_ADDR;
                                byte_cnt      <= 0;
                            end
                        end
                    end
                end

                S_RX_SRC_ADDR : begin
                    if (frame_valid) begin
                        if (clk_en) begin
                            byte_cnt    <= byte_cnt+1;
                            rx_state    <= S_RX_SRC_ADDR;
                            src_mac     <= {src_mac[C_ADDR_BITS-9:0],rx_byte};
                            if (byte_cnt == `ADDR_CNT-1) begin
                                rx_state       <= S_RX_TYPE_LEN;
                                byte_cnt      <= 0;
                            end
                        end
                    end
                    else begin
                        rx_state   <= S_RX_WAIT;
                    end
                end

                S_RX_TYPE_LEN : begin
                    if (frame_valid) begin
                        if (clk_en) begin
                            byte_cnt    <= byte_cnt+1;
                            rx_state    <= S_RX_TYPE_LEN;
                            len_type    <= {len_type[7:0],rx_byte};
                            if (byte_cnt == `LEN_CNT-1) begin
                                rx_state    <= S_RX_PACKET;
                                byte_cnt    <= 0;
                            end
                        end
                    end
                    else begin
                        rx_state   <= S_RX_WAIT;
                    end
                end

                S_RX_PACKET : begin
                    if (frame_valid) begin
                        if (clk_en) begin
                            byte_cnt    <= byte_cnt+1;
                            rx_state   <= S_RX_PACKET;
                            rx_pkt[(byte_cnt+1)*8-1-:8]  <= rx_byte;
                            if (is_length) begin
                                if (byte_cnt == `PKT_CNT-1) begin
                                    rx_state    <= S_RX_CRC_CHK;
                                    rx_done     <= 1;
                                end
                            end
                        end
                    end
                    else begin
                        rx_state    <= S_RX_CRC_CHK;
                        rx_done     <= 1;
                        byte_cnt    <= byte_cnt-4;
                    end
                end

                S_RX_CRC_CHK : begin
                    rx_state   <= S_RX_CRC_CHK;
                    if (crc_done) begin
                        if (crc == C_RESIDUE) begin
                            rx_state    <= S_RX_DONE;
                            rx_pkt_vld  <= 1;
                        end
                        
                        else begin
                            rx_state   <= S_RX_CRC_ERR;
                        end
                    end
                end

                S_RX_CRC_ERR : begin
                    rx_state    <= S_RX_IDLE;
                end

                S_RX_DONE : begin
                    rx_state    <= S_RX_IDLE;
                    clk_en      <= 0;
                end

                S_RX_SEND : begin
                    rx_state    <= S_RX_SEND;
                    rx_pkt_vld  <= 1;
                    if (rx_pkt_rdy) begin
                        rx_state    <= S_RX_IDLE;
                        rx_pkt_vld  <= 0;
                        clk_en      <= 0;
                    end
                end

                S_RX_WAIT : begin
                    rx_state    <= S_RX_WAIT;
                    if (~rx_dv) begin
                        rx_state    <= S_RX_IDLE;
                        rx_done     <= 1;
                    end
                end
            endcase
        end
    end

    crc32
        rx_crc32 (
            .clk        (rx_clk),
            .rst_n      (rst_n),
            .crc_en     (crc_en),
            .data_in    (rx_byte),
            .sof        (crc_sof),
            .eof        (rx_done),
            .crc_out    (crc),
            .crc_done   (crc_done)
        );

    rx_send_fsm #(
            .P_PKT_BITS (C_MAX_PKT_BITS))
        send_packet (
            .rx_clk         (rx_clk),
            .rst_n          (rst_n),
            .rx_pkt_vld     (rx_pkt_vld),
            .rx_pkt_rdy     (rx_pkt_rdy),
            .rx_pkt         (rx_pkt),
            .rx_pkt_bytes   (byte_cnt),
            .tx_byte_vld    (rx_byte_vld),
            .tx_byte_rdy    (tx_byte_rdy),
            .tx_byte        (rx_byte_out)
        );


    initial begin
        $dumpfile("mii_rx.vcd");
        $dumpvars();
    end


endmodule