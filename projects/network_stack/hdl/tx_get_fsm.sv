`timescale 1ns / 1ps
`define PKT_LEN (C_MAX_PKT_BYTES*8)
`define PKT_IDX ((tx_byte_cnt+1) << 3)
`define HEADER {pkt_type_rev, src_mac_rev, dst_mac_rev}
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

module tx_get_fsm #(
        parameter   logic   [47:0]  P_MAC_ADDR  = 48'h047BCB62BF3E,
        parameter   integer         P_PKT_BITS = 1500*8
    )(
    // RX signals
    input   logic           tx_clk,
    input   logic           tx_rst_n,

    // Control unit interface
    input   logic   [47:0]              dst_mac,
    input   logic   [15:0]              pkt_type,

    // Byte streaming interface
    input   logic                       rx_byte_vld,
    output  logic                       rx_byte_rdy,
    input   logic   [7:0]               rx_byte,

    // Packet interface
    output  logic                       tx_pkt_vld,
    input   logic                       tx_pkt_rdy,
    output  logic   [P_PKT_BITS-1:0]    tx_pkt,
    output  logic   [9:0]               tx_pkt_bytes
    );

    localparam  logic   [2:0]   S_RX_IDLE   = 3'b000;
    localparam  logic   [2:0]   S_RX_PKT    = 3'b001;
    localparam  logic   [2:0]   S_RX_PAD    = 3'b010;
    localparam  logic   [2:0]   S_RX_FRAME  = 3'b011;
    localparam  logic   [2:0]   S_RX_VALID  = 3'b100;

    localparam  integer                 C_MIN_PKT_BYTES     = 46;
    localparam  integer                 C_MAX_PKT_BYTES     = 1500;

    // Data receive signals
    logic   [2:0]                   rx_state;
    logic   [111:0]                 tx_header;
    logic   [47:0]                  dst_mac_reg;
    logic   [15:0]                  pkt_type_reg;
    logic   [15:0]                  pkt_type_rev;
    logic   [9:0]                   tx_byte_cnt;
    logic   [47:0]                  dst_mac_rev;
    logic   [47:0]                  src_mac_rev;
    integer signed                  pad_cnt;
    
    assign  pad_cnt         = C_MIN_PKT_BYTES - tx_byte_cnt;
    assign  tx_pkt_bytes    = tx_byte_cnt;

    generate
        for (genvar i=0; i<6; i=i+1) begin
            assign  dst_mac_rev[(i+1)*8-1-:8] = dst_mac[47-(i*8)-:8];
            assign  src_mac_rev[(i+1)*8-1-:8] = P_MAC_ADDR[47-(i*8)-:8];
        end
        for (genvar j=0; j<2; j=j+1) begin
            assign  pkt_type_rev[(j+1)*8-1-:8] = pkt_type[15-(j*8)-:8];
        end
    endgenerate


    always_ff @(posedge tx_clk) begin
        if (~tx_rst_n) begin
            rx_state        <= S_RX_IDLE;
            tx_pkt          <= 0;
            dst_mac_reg     <= 0;
            pkt_type_reg    <= 0;
            rx_byte_rdy     <= 0;
            tx_byte_cnt     <= 0;
            tx_pkt_vld      <= 0;
            tx_header       <= 0;
        end

        else begin
            case (rx_state)
                S_RX_IDLE : begin
                    tx_pkt  <= 0;
                    rx_byte_rdy <= 1;
                    tx_pkt_vld  <= 0;
                    tx_header   <= 0;
                    if (rx_byte_vld) begin
                        rx_state        <= S_RX_PKT;
                        tx_pkt[7:0]     <= rx_byte;
                        dst_mac_reg     <= dst_mac_rev;
                        pkt_type_reg    <= pkt_type_rev;
                        tx_byte_cnt     <= 1;
                        tx_header       <= `HEADER;
                    end
                end

                S_RX_PKT : begin
                    rx_state    <= S_RX_PKT;
                    rx_byte_rdy <= 1;
                    tx_pkt_vld  <= 0;
                    if (rx_byte_vld) begin
                        tx_pkt[`PKT_IDX-1-:8]   <= rx_byte;
                        tx_byte_cnt             <= tx_byte_cnt+1;
                    end
                    else begin
                        rx_state    <= S_RX_VALID;
                        rx_byte_rdy <= 0;
                        tx_pkt_vld  <= 1;
                        if (tx_byte_cnt < C_MIN_PKT_BYTES) begin
                            tx_byte_cnt <= tx_byte_cnt + pad_cnt + 14;
                        end
                        else begin
                            tx_byte_cnt <= tx_byte_cnt + 14;
                        end
                        tx_pkt  <= {tx_pkt, tx_header};
                    end
                end

                S_RX_VALID : begin
                    rx_byte_rdy <= 0;
                    rx_state    <= S_RX_VALID;
                    tx_pkt_vld  <= 1;
                    if (tx_pkt_rdy) begin
                        rx_state    <= S_RX_IDLE;
                        tx_pkt_vld  <= 0;
                    end
                end
            endcase
        end
    end

    // initial begin
    //     $dumpfile("tx_get.vcd");
    //     $dumpvars();
    // end


endmodule