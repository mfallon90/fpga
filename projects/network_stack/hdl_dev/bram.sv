`timescale 1ns / 1ps
`define ADDR_WIDTH ($clog2(C_DEPTH) + 2)

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


module bram #(
    parameter integer C_DATA_WIDTH  = 32,
    parameter integer C_DEPTH       = 1024
    )(
    // Clock and reset
    input   logic                           s_axi_aclk,
    input   logic                           s_axi_aresetn,
    // Write address channel
    input   logic   [`ADDR_WIDTH-1:0]       s_axi_awaddr,
    input   logic   [2:0]                   s_axi_awprot,
    input   logic                           s_axi_awvalid,
    output  logic                           s_axi_awready,
    // Write data channel
    input   logic   [C_DATA_WIDTH-1:0]      s_axi_wdata,
    input   logic   [(C_DATA_WIDTH/8)-1:0]  s_axi_wstrb,
    input   logic                           s_axi_wvalid,
    output  logic                           s_axi_wready,
    // Write response channel
    output  logic   [1:0]                   s_axi_bresp,
    output  logic                           s_axi_bvalid,
    input   logic                           s_axi_bready,
    // Read address channel
    input   logic   [`ADDR_WIDTH-1:0]       s_axi_araddr,
    input   logic   [2:0]                   s_axi_arprot,
    input   logic                           s_axi_arvalid,
    output  logic                           s_axi_arready,
    // Read data channel
    output  logic   [C_DATA_WIDTH-1:0]      s_axi_rdata,
    output  logic   [1:0]                   s_axi_rresp,
    output  logic                           s_axi_rvalid,
    input   logic                           s_axi_rready,
    // Register outputs
    input   logic   [C_DATA_WIDTH-1:0]      eth_rx_data,
    input   logic                           eth_wr_en
    );

    localparam  [1:0]   C_OKAY      = 2'b00;
    localparam  [1:0]   C_EX_OKAY   = 2'b01;
    localparam  [1:0]   C_SLV_ERR   = 2'b10;
    localparam  [1:0]   C_DEC_ERR   = 2'b11;
    localparam  [31:0]  C_MDIO_MASK = 32'hfffcffff;

    localparam MDIO_TX_DATA_ADDR    = 0;
    localparam MDIO_RX_DATA_ADDR    = 1;
    localparam REGISTER_2_ADDR      = 2;
    localparam REGISTER_3_ADDR      = 3;

    logic   [C_DATA_WIDTH-1:0]  bram [0:C_DEPTH-1];
    logic   [`ADDR_WIDTH-1:0]   wr_ptr;

    logic   [`ADDR_WIDTH-1:0]   read_address;
    logic   [`ADDR_WIDTH-1:0]   write_address;
    logic   [C_DATA_WIDTH-1:0]  read_data;
    logic   [C_DATA_WIDTH-1:0]  write_data;
    logic   [1:0]               read_resp;
    logic   [1:0]               write_resp;
    logic                       rd_addr_rdy;
    logic                       rd_data_vld;
    logic                       wr_addr_rdy;
    logic                       wr_data_rdy;
    logic                       write_valid;
    logic                       rd_en;
    logic                       wr_addr_good;
    logic                       wr_data_good;

    assign s_axi_awready    = wr_addr_rdy;
    assign s_axi_wready     = wr_data_rdy;
    assign s_axi_bresp      = write_resp;
    assign s_axi_bvalid     = write_valid;
    assign s_axi_arready    = rd_addr_rdy;
    assign s_axi_rdata      = read_data;
    assign s_axi_rresp      = read_resp;
    assign s_axi_rvalid     = rd_data_vld;
    assign mdio_wr_data     = reg_0;

    // Read Process
    generate
        always_ff @(posedge s_axi_aclk) begin
            if (~s_axi_aresetn) begin
                rd_addr_rdy     <= 1'b0;
                read_address    <= 0;
                read_data       <= 0;
                read_resp       <= 0;
                rd_data_vld     <= 1'b0;
                rd_en           <= 1'b0;
            end

            else begin
                // Latch read address
                if (s_axi_arvalid & ~rd_addr_rdy) begin
                    rd_addr_rdy     <= 1'b1;
                    read_address    <= s_axi_araddr;
                    rd_en           <= 1'b1;
                end
                else begin
                    rd_addr_rdy     <= 1'b0;
                end

                // Output read data
                if (rd_en) begin
                    read_resp   <= C_OKAY;
                    rd_data_vld <= 1'b1;
                    rd_en       <= 1'b0;
                    for (i=0; i<C_DEPTH; i=i+1) begin
                        if (read_address[C_ADDR_WIDTH-1:2] == i) begin
                            read_data   <= bram[i];
                            break;
                        end
                    end
                end
                else begin
                    if (s_axi_rready & rd_data_vld) begin
                        read_data   <= 0;
                        rd_data_vld <= 1'b0;
                    end
                end
            end
        end
    endgenerate

    // Write process
    always_ff @(posedge s_axi_aclk) begin
        if (~s_axi_aresetn) begin
            wr_ptr  <= 0;
            for (integer i=0; i<C_DEPTH; i=i+1) begin
                bram[i] <= 0;
            end
        end

        else if (eth_wr_en) begin
            bram[wr_ptr]    <= eth_rx_data;
            wr_ptr          <= wr_ptr+1;
        end
    end

    // // Dump waves
    // initial begin
    //     $dumpfile("axil_slave.vcd");
    //     $dumpvars;
    // end


    endmodule
