`timescale 1ns / 1ps
// `define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR)))
`define ADDR_VLD ((rx_cnt == 12) & ((mac_addr == P_MAC_ADDR) | (mac_addr == C_BRDCST)))

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: mii_rx
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

module mii_rx #(
    parameter   logic   [47:0]  P_MAC_ADDR  = 48'h3A52023E1800
    // parameter   logic   [47:0]  P_MAC_ADDR  = 48'h0081E32025A3
    )(
    // RX signals
    input   logic           ila_clk,
    input   logic           rx_clk,
    input   logic           rx_rst_n,
    input   logic   [3:0]   rx_data,
    input   logic           rx_dv,
    input   logic           rx_er,
    input   logic           crs,
    input   logic           col,

    // Byte out interface
    output  logic           rx_sof,
    output  logic           rx_eof,
    output  logic           rx_byte_vld,
    output  logic   [7:0]   rx_byte,
    output  logic           rx_frm_vld,
    input   logic           rx_frm_ack
    );

    localparam  logic   [1:0]   S_RX_IDLE       = 2'b00;
    localparam  logic   [1:0]   S_RX_PRMBL      = 2'b01;
    localparam  logic   [1:0]   S_RX_PACKET     = 2'b10;
    localparam  logic   [1:0]   S_RX_DONE       = 2'b11;

    localparam  logic   [31:0]  C_RESIDUE       = 32'hC704DD7B;
    localparam  logic   [47:0]  C_BRDCST        = 48'hFFFFFFFFFFFF;
    localparam  logic   [3:0]   C_PREAMBLE      = 4'h5;
    localparam  logic   [3:0]   C_SFD           = 4'hD;

    logic   [1:0]       rx_state;
    logic               eth_sof;
    logic               eth_eof;
    logic   [3:0]       rx_data_reg;
    logic   [47:0]      mac_addr;
    logic   [31:0]      crc;
    logic   [31:0]      crc_reg;
    logic               crc_en;
    logic   [3:0]       crc_data;
    logic               crc_vld;
    logic   [10:0]      rx_cnt;
    logic               addr_vld;

    //  eth_ila
    //      ila_rx (
    //          .clk    (ila_clk),
    //          .probe0 (rx_clk),
    //          .probe1 (rx_state),
    //          .probe2 (rx_data),
    //          .probe3 (rx_byte_vld),
    //          .probe4 (crc_vld),
    //          .probe5 (addr_vld),
    //          .probe6 (),
    //          .probe7 (rx_frm_vld),
    //          .probe8 (eth_eof),
    //          .probe9 (crc_en),
    //          .probe10 (eth_sof),
    //          .probe11 (crc),
    //          .probe12 (rx_dv)
    //  );
 
    generate
        for (genvar i=0; i<4; i=i+1) begin
            assign crc_data[i] = rx_data[3-i];
        end
    endgenerate

    assign crc_vld  = crc_reg == C_RESIDUE  ? 1'b1 : 1'b0;
    assign rx_byte  = {rx_data, rx_data_reg};
    assign rx_sof   = eth_sof;
    assign rx_eof   = eth_eof;

    always_ff @(posedge rx_clk) begin
        if (~rx_rst_n) begin
            rx_state        <= S_RX_IDLE;
            eth_eof         <= 0;
            crc_en          <= 0;
            eth_sof         <= 0;
            rx_cnt          <= 0;
            rx_byte_vld     <= 0;
            mac_addr        <= 0;
            addr_vld        <= 0;
            crc_reg         <= 0;
            rx_frm_vld      <= 0;
            rx_data_reg     <= 0;
        end

        else begin
            // Default values for all registers
            rx_state        <= S_RX_IDLE;
            rx_data_reg     <= rx_data;
            eth_sof         <= 0;
            eth_eof         <= 0;
            mac_addr        <= 0;
            crc_en          <= 0;
            rx_byte_vld     <= 0;

            case(rx_state)
                // When in IDLE state, wait until a 
                // preamble nibble is seen and then
                // move to PREAMBLE state
                S_RX_IDLE : begin
                    rx_cnt          <= 0;
                    addr_vld        <= 0;
                    crc_reg         <= 0;

                    if (rx_frm_ack) begin
                        rx_frm_vld  <= 0;
                    end

                    if (rx_data == C_PREAMBLE) begin
                        rx_state    <= S_RX_PRMBL;
                    end
                end

                // When SFD is detected, move to RX state,
                // otherwise remain here for as long as valid
                // preamble nibbles are received
                S_RX_PRMBL : begin
                    rx_cnt          <= 0;
                    crc_reg         <= 0;

                    if (rx_data == C_PREAMBLE) begin
                        rx_state    <= S_RX_PRMBL;
                    end
                    else if (rx_data == C_SFD) begin
                        rx_state    <= S_RX_PACKET;
                        crc_en      <= 1;
                        eth_sof     <= 1;
                    end
                end

                // Begin receiving data nibbles. Data is received
                // LSN first, followed by MSN. Toggle a byte valid
                // flag for downstream logic. Latch in addr if valid.
                // Begin CRC check. Remain here until data valid flag
                // goes down then move to DONE state. Subtract 8 from
                // rx_cnt to account for CRC bytes.
                S_RX_PACKET : begin
                    if (rx_dv) begin
                        mac_addr        <= {rx_data, mac_addr[47:4]};
                        rx_state        <= S_RX_PACKET;
                        rx_byte_vld     <= ~rx_byte_vld;
                        rx_cnt          <= rx_cnt + 1;
                        crc_en          <= 1;
                        crc_reg         <= crc;
                        if (`ADDR_VLD) begin
                            addr_vld    <= 1;
                        end
                    end
                    else begin
                        eth_eof         <= 1;
                        rx_state        <= S_RX_DONE;
                        rx_cnt          <= rx_cnt-8;
                    end
                end

                // Assert frame valid or frame dump
                // depending on whether the CRC and
                // address are valid. Reset signals
                // and return to IDLE state
                S_RX_DONE : begin
                    if (crc_vld & addr_vld) begin
                        rx_frm_vld  <= 1;
                    end
                end

                default : begin
                    rx_state    <= S_RX_IDLE;
                end

            endcase
        end
    end

    // 4-bit parallel check sum for CRC32
    crc32_4bit
        rx_crc32 (
            .clk        (rx_clk),
            .rst_n      (rx_rst_n),
            .crc_en     (crc_en),
            .data_in    (crc_data),
            .sof        (eth_sof),
            .eof        (eth_eof),
            .crc_out    (crc)
        );


    // initial begin
    //     $dumpfile("mii_rx.vcd");
    //     $dumpvars();
    // end


endmodule