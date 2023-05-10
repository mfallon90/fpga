`timescale 1ns / 1ps
`define DIV_BITS $clog2(C_CLK_DIV)
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

module crc32_byte (
    input   logic           clk,
    input   logic           rst_n,
    input   logic           load_init,
    input   logic           calc,
    input   logic           d_valid,
    input   logic   [7:0]   data_in,
    output  logic   [31:0]  crc_reg,
    output  logic   [7:0]   crc
    );

    logic   [31:0]  c;
    logic   [7:0]   d;
    logic   [7:0]   data_rev;
    logic   [31:0]  next_crc;
    logic   [31:0]  crc_reg_i;
    logic           crc_reg_en;

    logic   [31:0]  mux_0;
    logic   [31:0]  mux_1;
    logic   [31:0]  mux_2;
    logic   [31:0]  mux_3;
    logic   [31:0]  mux_out;
    logic   [1:0]   mux_sel;
    logic   [7:0]   crc_d;
    logic   [7:0]   crc_q;
    logic   [7:0]   byte_0;
    logic   [7:0]   byte_1;
    logic   [7:0]   byte_0_rev;
    logic   [7:0]   byte_1_rev;

    assign  d           = data_rev;
    assign  c           = crc_reg_i;
    assign  crc_reg     = crc_reg_i;
    assign  crc_reg_en  = load_init | d_valid;
    assign  crc_d       = calc ? byte_1_rev : byte_0_rev;
    assign  crc         = crc_q;
    assign  byte_0      = ~crc_reg[23:16];
    assign  byte_1      = ~crc_reg[31:24];
    

    assign  mux_sel = {load_init, (calc & d_valid)};
    assign  mux_0   = {crc_reg_i[23:0], 8'hFF};
    assign  mux_1   = next_crc;
    assign  mux_2   = 32'hffffffff;
    assign  mux_3   = 32'hffffffff;

    generate
        for (genvar i=0; i<8; i=i+1) begin
            assign  data_rev[i]     = data_in[7-i];
            assign  byte_0_rev[i]   = byte_0[7-i];
            assign  byte_1_rev[i]   = byte_1[7-i];
        end
    endgenerate

    always_comb begin
        case (mux_sel)
            2'b00 : mux_out = mux_0;
            2'b01 : mux_out = mux_1;
            2'b10 : mux_out = mux_2;
            2'b11 : mux_out = mux_3;
        endcase
    end


    always_ff @(posedge clk) begin
        if (~rst_n) begin
            crc_reg_i   <= 0;
            crc_q       <= 0;
        end

        else begin
            if (crc_reg_en) begin
                crc_reg_i   <= mux_out;
            end

            if (d_valid) begin
                crc_q   <= crc_d;
            end
        end
    end


    assign next_crc[0]  = d[6] ^ d[0]  ^ c[24] ^ c[30];
    assign next_crc[1]  = d[7] ^ d[6]  ^ d[1]  ^ d[0]  ^ c[24] ^ c[25] ^ c[30] ^ c[31];
    assign next_crc[2]  = d[7] ^ d[6]  ^ d[2]  ^ d[1]  ^ d[0]  ^ c[24] ^ c[25] ^ c[26] ^ c[30] ^ c[31];
    assign next_crc[3]  = d[7] ^ d[3]  ^ d[2]  ^ d[1]  ^ c[25] ^ c[26] ^ c[27] ^ c[31];
    assign next_crc[4]  = d[6] ^ d[4]  ^ d[3]  ^ d[2]  ^ d[0]  ^ c[24] ^ c[26] ^ c[27] ^ c[28] ^ c[30];
    assign next_crc[5]  = d[7] ^ d[6]  ^ d[5]  ^ d[4]  ^ d[3]  ^ d[1]  ^ d[0]  ^ c[24] ^ c[25] ^ c[27] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
    assign next_crc[6]  = d[7] ^ d[6]  ^ d[5]  ^ d[4]  ^ d[2]  ^ d[1]  ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
    assign next_crc[7]  = d[7] ^ d[5]  ^ d[3]  ^ d[2]  ^ d[0]  ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[31];
    assign next_crc[8]  = d[4] ^ d[3]  ^ d[1]  ^ d[0]  ^ c[0]  ^ c[24] ^ c[25] ^ c[27] ^ c[28];
    assign next_crc[9]  = d[5] ^ d[4]  ^ d[2]  ^ d[1]  ^ c[1]  ^ c[25] ^ c[26] ^ c[28] ^ c[29];
    assign next_crc[10] = d[5] ^ d[3]  ^ d[2]  ^ d[0]  ^ c[2]  ^ c[24] ^ c[26] ^ c[27] ^ c[29];
    assign next_crc[11] = d[4] ^ d[3]  ^ d[1]  ^ d[0]  ^ c[3]  ^ c[24] ^ c[25] ^ c[27] ^ c[28];
    assign next_crc[12] = d[6] ^ d[5]  ^ d[4]  ^ d[2]  ^ d[1]  ^ d[0]  ^ c[4]  ^ c[24] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30];
    assign next_crc[13] = d[7] ^ d[6]  ^ d[5]  ^ d[3]  ^ d[2]  ^ d[1]  ^ c[5]  ^ c[25] ^ c[26] ^ c[27] ^ c[29] ^ c[30] ^ c[31];
    assign next_crc[14] = d[7] ^ d[6]  ^ d[4]  ^ d[3]  ^ d[2]  ^ c[6]  ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ c[31];
    assign next_crc[15] = d[7] ^ d[5]  ^ d[4]  ^ d[3]  ^ c[7]  ^ c[27] ^ c[28] ^ c[29] ^ c[31];
    assign next_crc[16] = d[5] ^ d[4]  ^ d[0]  ^ c[8]  ^ c[24] ^ c[28] ^ c[29];
    assign next_crc[17] = d[6] ^ d[5]  ^ d[1]  ^ c[9]  ^ c[25] ^ c[29] ^ c[30];
    assign next_crc[18] = d[7] ^ d[6]  ^ d[2]  ^ c[10] ^ c[26] ^ c[30] ^ c[31];
    assign next_crc[19] = d[7] ^ d[3]  ^ c[11] ^ c[27] ^ c[31];
    assign next_crc[20] = d[4] ^ c[12] ^ c[28];
    assign next_crc[21] = d[5] ^ c[13] ^ c[29];
    assign next_crc[22] = d[0] ^ c[14] ^ c[24];
    assign next_crc[23] = d[6] ^ d[1]  ^ d[0]  ^ c[15] ^ c[24] ^ c[25] ^ c[30];
    assign next_crc[24] = d[7] ^ d[2]  ^ d[1]  ^ c[16] ^ c[25] ^ c[26] ^ c[31];
    assign next_crc[25] = d[3] ^ d[2]  ^ c[17] ^ c[26] ^ c[27];
    assign next_crc[26] = d[6] ^ d[4]  ^ d[3]  ^ d[0]  ^ c[18] ^ c[24] ^ c[27] ^ c[28] ^ c[30];
    assign next_crc[27] = d[7] ^ d[5]  ^ d[4]  ^ d[1]  ^ c[19] ^ c[25] ^ c[28] ^ c[29] ^ c[31];
    assign next_crc[28] = d[6] ^ d[5]  ^ d[2]  ^ c[20] ^ c[26] ^ c[29] ^ c[30];
    assign next_crc[29] = d[7] ^ d[6]  ^ d[3]  ^ c[21] ^ c[27] ^ c[30] ^ c[31];
    assign next_crc[30] = d[7] ^ d[4]  ^ c[22] ^ c[28] ^ c[31];
    assign next_crc[31] = d[5] ^ c[23] ^ c[29];


    initial begin
        $dumpfile("crc32_byte.vcd");
        $dumpvars();
    end

endmodule