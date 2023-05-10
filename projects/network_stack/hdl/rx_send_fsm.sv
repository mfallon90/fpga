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

module rx_send_fsm #(
    parameter   integer P_PKT_BITS  = 1500*8
    )(
    // RX signals
    input   logic                       rx_clk,
    input   logic                       rx_rst_n,

    // Packet interface
    input   logic                       rx_pkt_vld,
    output  logic                       rx_pkt_rdy,
    input   logic   [P_PKT_BITS-1:0]    rx_pkt,
    input   logic   [9:0]               rx_pkt_bytes,

    // Byte streaming interface
    output  logic                       tx_byte_vld,
    input   logic                       tx_byte_rdy,
    output  logic   [7:0]               tx_byte
    );

    localparam  logic   S_TX_IDLE   = 1'b0;
    localparam  logic   S_TX_PACKET = 1'b1;

    logic                       tx_state;
    logic   [9:0]               tx_pkt_len;
    logic   [9:0]               tx_byte_cnt;
    logic   [P_PKT_BITS-1:0]    tx_pkt;

    assign  tx_byte = tx_pkt[7:0];

    always_ff @(posedge rx_clk) begin
        if (~rx_rst_n) begin
            tx_state    <= S_TX_IDLE;
            rx_pkt_rdy  <= 0;
            tx_byte_vld <= 0;
            tx_pkt_len  <= 0;
            tx_pkt      <= 0;
            tx_byte_cnt <= 0;
        end

        else begin
            case(tx_state)
                S_TX_IDLE : begin
                    tx_state    <= S_TX_IDLE;
                    rx_pkt_rdy  <= 1;
                    tx_byte_vld <= 0;
                    tx_pkt      <= 0;
                    tx_byte_cnt <= 0;
                    if (rx_pkt_vld) begin
                        tx_state    <= S_TX_PACKET;
                        rx_pkt_rdy  <= 0;
                        tx_pkt_len  <= rx_pkt_bytes;
                        tx_pkt      <= rx_pkt;
                        tx_byte_vld <= 1;
                    end
                end

                S_TX_PACKET : begin
                    tx_state    <= S_TX_PACKET;
                    rx_pkt_rdy  <= 0;
                    tx_byte_vld <= 1;
                    if (tx_byte_rdy) begin
                        tx_byte_cnt <= tx_byte_cnt+1;
                        tx_pkt      <= tx_pkt >> 8;

                        if (tx_byte_cnt == tx_pkt_len-1) begin
                            tx_state    <= S_TX_IDLE;
                            rx_pkt_rdy  <= 1;
                            tx_byte_vld <= 0;
                            tx_pkt      <= 0;
                            tx_byte_cnt <= 0;
                        end
                    end
                end
            endcase
        end
    end

    // initial begin
    //     $dumpfile("rx_send.vcd");
    //     $dumpvars();
    // end


endmodule