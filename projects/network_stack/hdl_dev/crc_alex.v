
`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * Parametrizable combinatorial parallel LFSR/CRC
 */
module crc32 #
(
    // width of LFSR
    parameter LFSR_WIDTH = 32,
    // LFSR polynomial
    parameter LFSR_POLY = 32'h04c11db7,
    // LFSR feed forward enable
    parameter LFSR_FEED_FORWARD = 0,
    // width of data input
    parameter DATA_WIDTH = 8,
    // implementation style: "AUTO", "LOOP", "REDUCTION"
)
(
    input  wire [DATA_WIDTH-1:0] data_in,
    input  wire [LFSR_WIDTH-1:0] state_in,
    output wire [DATA_WIDTH-1:0] data_out,
    output wire [LFSR_WIDTH-1:0] state_out
);

/*
Fully parametrizable combinatorial parallel LFSR/CRC module.  Implements an unrolled LFSR
next state computation, shifting DATA_WIDTH bits per pass through the module.  Input data
is XORed with LFSR feedback path, tie data_in to zero if this is not required.
Works in two parts: statically computes a set of bit masks, then uses these bit masks to
select bits for XORing to compute the next state.  
Ports:
data_in
Data bits to be shifted through the LFSR (DATA_WIDTH bits)
state_in
LFSR/CRC current state input (LFSR_WIDTH bits)
data_out
Data bits shifted out of LFSR (DATA_WIDTH bits)
state_out
LFSR/CRC next state output (LFSR_WIDTH bits)
Parameters:
LFSR_WIDTH
Specify width of LFSR/CRC register
LFSR_POLY
Specify the LFSR/CRC polynomial in hex format.  For example, the polynomial
x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
would be represented as
32'h04c11db7
Note that the largest term (x^32) is suppressed.  This term is generated automatically based
on LFSR_WIDTH.
LFSR_CONFIG
Specify the LFSR configuration, either Fibonacci or Galois.  Fibonacci is generally used
for linear-feedback shift registers (LFSR) for pseudorandom binary sequence (PRBS) generators,
scramblers, and descrambers, while Galois is generally used for cyclic redundancy check
generators and checkers.
Fibonacci style (example for 64b66b scrambler, 0x8000000001)
   DIN (LSB first)
    |
    V
   (+)<---------------------------(+)<-----------------------------.
    |                              ^                               |
    |  .----.  .----.       .----. |  .----.       .----.  .----.  |
    +->|  0 |->|  1 |->...->| 38 |-+->| 39 |->...->| 56 |->| 57 |--'
    |  '----'  '----'       '----'    '----'       '----'  '----'
    V
   DOUT
Galois style (example for CRC16, 0x8005)
    ,-------------------+-------------------------+----------(+)<-- DIN (MSB first)
    |                   |                         |           ^
    |  .----.  .----.   V   .----.       .----.   V   .----.  |
    `->|  0 |->|  1 |->(+)->|  2 |->...->| 14 |->(+)->| 15 |--+---> DOUT
       '----'  '----'       '----'       '----'       '----'
LFSR_FEED_FORWARD
Generate feed forward instead of feed back LFSR.  Enable this for PRBS checking and self-
synchronous descrambling.
Fibonacci feed-forward style (example for 64b66b descrambler, 0x8000000001)
   DIN (LSB first)
    |
    |  .----.  .----.       .----.    .----.       .----.  .----.
    +->|  0 |->|  1 |->...->| 38 |-+->| 39 |->...->| 56 |->| 57 |--.
    |  '----'  '----'       '----' |  '----'       '----'  '----'  |
    |                              V                               |
   (+)<---------------------------(+)------------------------------'
    |
    V
   DOUT
Galois feed-forward style
    ,-------------------+-------------------------+------------+--- DIN (MSB first)
    |                   |                         |            |
    |  .----.  .----.   V   .----.       .----.   V   .----.   V
    `->|  0 |->|  1 |->(+)->|  2 |->...->| 14 |->(+)->| 15 |->(+)-> DOUT
       '----'  '----'       '----'       '----'       '----'

DATA_WIDTH
Specify width of input and output data bus.  The module will perform one shift per input
data bit, so if the input data bus is not required tie data_in to zero and set DATA_WIDTH
to the required number of shifts per clock cycle.  

Settings for common LFSR/CRC implementations:
Name        Configuration           Length  Polynomial      Initial value   Notes

CRC32       Galois, bit-reverse     32      32'h04c11db7    32'hffffffff    Ethernet FCS; invert final output

*/

function [LFSR_WIDTH+DATA_WIDTH-1:0] lfsr_mask(input [31:0] index);
    reg [LFSR_WIDTH-1:0] lfsr_mask_state[LFSR_WIDTH-1:0];
    reg [DATA_WIDTH-1:0] lfsr_mask_data[LFSR_WIDTH-1:0];
    reg [LFSR_WIDTH-1:0] output_mask_state[DATA_WIDTH-1:0];
    reg [DATA_WIDTH-1:0] output_mask_data[DATA_WIDTH-1:0];

    reg [LFSR_WIDTH-1:0] state_val;
    reg [DATA_WIDTH-1:0] data_val;

    reg [DATA_WIDTH-1:0] data_mask;

    integer i, j;

    begin
        // init bit masks
        for (i = 0; i < LFSR_WIDTH; i = i + 1) begin
            lfsr_mask_state[i] = 0;
            lfsr_mask_state[i][i] = 1'b1;
            lfsr_mask_data[i] = 0;
        end
        for (i = 0; i < DATA_WIDTH; i = i + 1) begin
            output_mask_state[i] = 0;
            if (i < LFSR_WIDTH) begin
                output_mask_state[i][i] = 1'b1;
            end
            output_mask_data[i] = 0;
        end

        // Galois configuration
        for (data_mask = {1'b1, {DATA_WIDTH-1{1'b0}}}; data_mask != 0; data_mask = data_mask >> 1) begin
            // determine shift in value
            // current value in last FF, XOR with input data bit (MSB first)
            state_val = lfsr_mask_state[LFSR_WIDTH-1];
            data_val = lfsr_mask_data[LFSR_WIDTH-1];
            data_val = data_val ^ data_mask;

            // shift
            for (j = LFSR_WIDTH-1; j > 0; j = j - 1) begin
                lfsr_mask_state[j] = lfsr_mask_state[j-1];
                lfsr_mask_data[j] = lfsr_mask_data[j-1];
            end
            for (j = DATA_WIDTH-1; j > 0; j = j - 1) begin
                output_mask_state[j] = output_mask_state[j-1];
                output_mask_data[j] = output_mask_data[j-1];
            end
            output_mask_state[0] = state_val;
            output_mask_data[0] = data_val;
            if (LFSR_FEED_FORWARD) begin
                // only shift in new input data
                state_val = {LFSR_WIDTH{1'b0}};
                data_val = data_mask;
            end
            lfsr_mask_state[0] = state_val;
            lfsr_mask_data[0] = data_val;

            // add XOR inputs at correct indicies
            for (j = 1; j < LFSR_WIDTH; j = j + 1) begin
                if ((LFSR_POLY >> j) & 1) begin
                    lfsr_mask_state[j] = lfsr_mask_state[j] ^ state_val;
                    lfsr_mask_data[j] = lfsr_mask_data[j] ^ data_val;
                end
            end
        end

        // reverse bits if selected
        if (index < LFSR_WIDTH) begin
            state_val = 0;
            for (i = 0; i < LFSR_WIDTH; i = i + 1) begin
                state_val[i] = lfsr_mask_state[LFSR_WIDTH-index-1][LFSR_WIDTH-i-1];
            end
            data_val = 0;
            for (i = 0; i < DATA_WIDTH; i = i + 1) begin
                data_val[i] = lfsr_mask_data[LFSR_WIDTH-index-1][DATA_WIDTH-i-1];
            end

        end else begin
            state_val = 0;
            for (i = 0; i < LFSR_WIDTH; i = i + 1) begin
                state_val[i] = output_mask_state[DATA_WIDTH-(index-LFSR_WIDTH)-1][LFSR_WIDTH-i-1];
            end

            data_val = 0;
            for (i = 0; i < DATA_WIDTH; i = i + 1) begin
                data_val[i] = output_mask_data[DATA_WIDTH-(index-LFSR_WIDTH)-1][DATA_WIDTH-i-1];
            end
        end
        lfsr_mask = {data_val, state_val};
    end
endfunction


genvar n;

generate
begin

    // use nested loops
    // very slow in iverilog
    // slightly smaller than generated code with ISE
    // same size as generated code with Quartus
    // --> better for synthesis

    for (n = 0; n < LFSR_WIDTH; n = n + 1) begin : lfsr_state
        wire [LFSR_WIDTH+DATA_WIDTH-1:0] mask = lfsr_mask(n);

        reg state_reg;

        assign state_out[n] = state_reg;

        integer i;

        always @* begin
            state_reg = 1'b0;
            for (i = 0; i < LFSR_WIDTH; i = i + 1) begin
                if (mask[i]) begin
                    state_reg = state_reg ^ state_in[i];
                end
            end
            for (i = 0; i < DATA_WIDTH; i = i + 1) begin
                if (mask[i+LFSR_WIDTH]) begin
                    state_reg = state_reg ^ data_in[i];
                end
            end
        end
    end
    for (n = 0; n < DATA_WIDTH; n = n + 1) begin : lfsr_data
        wire [LFSR_WIDTH+DATA_WIDTH-1:0] mask = lfsr_mask(n+LFSR_WIDTH);

        reg data_reg;

        assign data_out[n] = data_reg;

        integer i;

        always @* begin
            data_reg = 1'b0;
            for (i = 0; i < LFSR_WIDTH; i = i + 1) begin
                if (mask[i]) begin
                    data_reg = data_reg ^ state_in[i];
                end
            end
            for (i = 0; i < DATA_WIDTH; i = i + 1) begin
                if (mask[i+LFSR_WIDTH]) begin
                    data_reg = data_reg ^ data_in[i];
                end
            end
        end
    end
end

endgenerate

endmodule

`resetall
