`timescale 1ns / 1ps

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

module sync_pulse (
    input   logic       clk,
    input   logic       rst_n,
    input   logic       async_toggle,
    output  logic       sync_pulse
    );

    logic   sync_ff_0;
    logic   sync_ff_1;
    logic   pulse_ff;

    assign sync_pulse = pulse_ff ^ sync_ff_1;

    always@(posedge clk) begin
        if (~rst_n) begin
            sync_ff_0   <= 0;
            sync_ff_1   <= 0;
            pulse_ff    <= 0;
        end

        else begin
            sync_ff_0   <= async_toggle;
            sync_ff_1   <= sync_ff_0;
            pulse_ff    <= sync_ff_1;
        end
    end

endmodule