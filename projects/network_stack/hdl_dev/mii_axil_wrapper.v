`timescale 1ns / 1ps
`define ADDR_WIDTH ($clog2(C_NUM_REG) + 2)

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

module mii_axil_wrapper #(
    parameter integer C_MDC_CLK_DIV     = 16,
    parameter integer C_DATA_WIDTH      = 32,
    parameter integer C_NUM_REG         = 512
    )(
    input   wire                            ila_clk,
    // Clock and reset
    input   wire                            s_axi_aclk,
    input   wire                            s_axi_aresetn,
    // Write address channel
    input   wire    [`ADDR_WIDTH-1:0]       s_axi_awaddr,
    input   wire    [2:0]                   s_axi_awprot,
    input   wire                            s_axi_awvalid,
    output  wire                            s_axi_awready,
    // Write data channel
    input   wire    [C_DATA_WIDTH-1:0]      s_axi_wdata,
    input   wire    [(C_DATA_WIDTH/8)-1:0]  s_axi_wstrb,
    input   wire                            s_axi_wvalid,
    output  wire                            s_axi_wready,
    // Write response channel
    output  wire    [1:0]                   s_axi_bresp,
    output  wire                            s_axi_bvalid,
    input   wire                            s_axi_bready,
    // Read address channel
    input   wire    [`ADDR_WIDTH-1:0]       s_axi_araddr,
    input   wire    [2:0]                   s_axi_arprot,
    input   wire                            s_axi_arvalid,
    output  wire                            s_axi_arready,
    // Read data channel
    output  wire    [C_DATA_WIDTH-1:0]      s_axi_rdata,
    output  wire    [1:0]                   s_axi_rresp,
    output  wire                            s_axi_rvalid,
    input   wire                            s_axi_rready,
    // Ethernet Control IF
    output  wire                            eth_mdc,
    inout   wire                            eth_mdio,
    // Ethernet RX signals
    input   wire                            eth_rst_n,
    input   wire                            eth_rx_clk,
    input   wire    [3:0]                   eth_rx_data,
    input   wire                            eth_rx_dv,
    input   wire                            eth_rx_err,
    input   wire                            eth_col,
    input   wire                            eth_crs
    );

    wire            mdio_tx;
    wire            mdio_rx;
    wire            high_z;
    wire            mdio_done;
    wire            mdio_en;
    wire    [31:0]  mdio_wr_data;
    wire    [31:0]  mdio_rd_data;

    // IOBUF #(
    //         .DRIVE          (12),
    //         .IBUF_LOW_PWR   ("TRUE"),
    //         .IOSTANDARD     ("LVCMOS33"),
    //         .SLEW           ("SLOW")) 
    //     mdio_tri_buf (
    //         .O      (mdio_rx),
    //         .IO     (eth_mdio),
    //         .I      (mdio_tx),
    //         .T      (high_z)
    //     );

/////////////////////////////////////////////////
//          SIMULATION PURPOSES ONLY           //
/////////////////////////////////////////////////
    assign eth_mdio = high_z ? 1'bZ : mdio_tx;
    assign mdio_rx = eth_mdio;
/////////////////////////////////////////////////

    axil_slave #(
            .C_DATA_WIDTH   (C_DATA_WIDTH),
            .C_NUM_REG      (C_NUM_REG))
        axil_if (
            .s_axi_aclk     (s_axi_aclk),
            .s_axi_aresetn  (s_axi_aresetn),
            .s_axi_awaddr   (s_axi_awaddr),
            .s_axi_awprot   (s_axi_awprot),
            .s_axi_awvalid  (s_axi_awvalid),
            .s_axi_awready  (s_axi_awready),
            .s_axi_wdata    (s_axi_wdata),
            .s_axi_wstrb    (s_axi_wstrb),
            .s_axi_wvalid   (s_axi_wvalid),
            .s_axi_wready   (s_axi_wready),
            .s_axi_bresp    (s_axi_bresp),
            .s_axi_bvalid   (s_axi_bvalid),
            .s_axi_bready   (s_axi_bready),
            .s_axi_araddr   (s_axi_araddr),
            .s_axi_arprot   (s_axi_arprot),
            .s_axi_arvalid  (s_axi_arvalid),
            .s_axi_arready  (s_axi_arready),
            .s_axi_rdata    (s_axi_rdata),
            .s_axi_rresp    (s_axi_rresp),
            .s_axi_rvalid   (s_axi_rvalid),
            .s_axi_rready   (s_axi_rready),
            .mdio_wr_data   (mdio_wr_data),
            .mdio_rd_data   (mdio_rd_data),
            .mdio_done      (mdio_done),
            .mdio_en        (mdio_en)
        );

    mdio #(
            .C_CLK_DIV  (C_MDC_CLK_DIV))
        mdio_controller (
            .sys_clk    (s_axi_aclk),
            .rst_n      (s_axi_aresetn),
            .en         (mdio_en),
            .phy_reg    (mdio_wr_data),
            .done       (mdio_done),
            .rd_data    (mdio_rd_data),
            .high_z     (high_z),
            .mdio_tx    (mdio_tx),
            .mdio_rx    (mdio_rx),
            .mdc        (eth_mdc)
        );

    mii_rx #(
            .P_MAC_ADDR (48'h00183E02523A))
        eth_rx_data_fsm (
            .ila_clk    (ila_clk),
            .rx_clk     (eth_rx_clk),
            .rst_n      (eth_rst_n),
            .rx_data    (eth_rx_data),
            .rx_dv      (eth_rx_dv),
            .rx_er      (eth_rx_err),
            .crs        (eth_crs),
            .col        (eth_col)
        );

    // Dump waves
    initial begin
        $dumpfile("mii_axil_wrapper.vcd");
        $dumpvars(0, mii_axil_wrapper);
    end

    endmodule
