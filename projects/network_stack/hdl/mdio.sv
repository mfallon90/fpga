`timescale 1ns / 1ps
`define DIV_BITS $clog2(P_CLK_DIV)
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

module mdio #(
    parameter integer P_CLK_DIV = 16
    )(
    input   logic           ila_clk,
    input   logic           sys_clk,
    input   logic           rst_n,
    input   logic           en,
    input   logic   [31:0]  phy_reg,
    output  logic           done,
    output  logic   [31:0]  rd_data,
    output  logic           high_z,
    output  logic           mdio_tx,
    input   logic           mdio_rx,
    output  logic           mdc
    );

    // generate
    //     if (P_ILA == "mdio") begin
    //         eth_ila
    //             ila_mdio (
    //                 .clk    (ila_clk),
    //                 .probe0 (),
    //                 .probe1 (),
    //                 .probe2 (),
    //                 .probe3 (),
    //                 .probe4 (),
    //                 .probe5 (),
    //                 .probe6 ()
    //         );
    //     end
    // endgenerate

    localparam  logic   [1:0]   READ_OP     = 2'b10;
    localparam  logic   [1:0]   WRITE_OP    = 2'b01;

    localparam  logic   [1:0]   S_IDLE      = 2'b00;
    localparam  logic   [1:0]   S_MDIO      = 2'b01;
    localparam  logic   [1:0]   S_DONE      = 2'b10;

    logic   [1:0]           state;

    logic   [31:0]          rd_data_i;
    logic   [31:0]          phy_reg_i;
    logic                   neg_edge;
    logic                   pos_edge;
    logic   [`DIV_BITS-1:0] div_cnt;
    logic   [1:0]           op;
    logic   [4:0]           cnt;
    logic                   en_i;

    assign  neg_edge    = div_cnt == P_CLK_DIV-1 ? 1'b1 : 1'b0;
    assign  pos_edge    = div_cnt == (P_CLK_DIV>>1)-1 ? 1'b1 : 1'b0;
    assign  op          = phy_reg[29:28];
    assign  mdc         = div_cnt[`DIV_BITS-1];

    always_ff @(posedge sys_clk) begin
        if (~rst_n) begin
            state       <= S_IDLE;
            mdio_tx     <= 1;
            cnt         <= ~0;
            phy_reg_i   <= 0;
            rd_data_i   <= 0;
            rd_data     <= 0;
            done        <= 0;
            div_cnt     <= 0;
            en_i        <= 0;
            high_z      <= 1;
        end

        else begin
            div_cnt     <= div_cnt+1;
            done        <= 0;

            if (en) begin
                en_i    <= 1;
            end

            if (pos_edge) begin
                rd_data_i       <= rd_data_i << 1;
                rd_data_i[0]    <= mdio_rx;
            end

            if (neg_edge) begin

                case (state)
                    S_IDLE : begin
                        mdio_tx     <= 1;
                        high_z      <= 1;
                        if (en_i) begin
                            state       <= S_MDIO;
                            phy_reg_i   <= phy_reg;
                            cnt         <= ~0;
                            en_i        <= 0;
                        end
                    end

                    S_MDIO : begin
                        if (cnt < 18 && op == READ_OP) begin
                            high_z  <= 1;
                        end
                        else begin
                            high_z  <= 0;
                        end

                        mdio_tx          <= phy_reg_i[cnt];
                        cnt              <= cnt - 1;

                        if (cnt == 0) begin
                            state   <= S_DONE;
                        end
                    end

                    S_DONE : begin
                        high_z  <= 1;
                        state   <= S_IDLE;
                        done    <= 1;
                        rd_data <= rd_data_i;
                        mdio_tx <= 1;
                    end

                    default : begin
                        state   <= S_IDLE;
                    end
                endcase
            end
        end
    end

    // initial begin
    //     $dumpfile("mdio.vcd");
    //     $dumpvars();
    // end


endmodule