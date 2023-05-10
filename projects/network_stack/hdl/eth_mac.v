`timescale 1ns / 1ps
`define ADDR_WIDTH ($clog2(P_NUM_REG) + 2)

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

module eth_mac #(
    parameter   P_MDC_CLK_DIV   = 16,
    parameter   P_DATA_WIDTH    = 32,
    parameter   P_NUM_REG       = 512,
    parameter   P_MAC_ADDR      = 48'h00183E02523A
    )(
    // ILA clock
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
    input   wire    [P_DATA_WIDTH-1:0]      s_axi_wdata,
    input   wire    [(P_DATA_WIDTH/8)-1:0]  s_axi_wstrb,
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
    output  wire    [P_DATA_WIDTH-1:0]      s_axi_rdata,
    output  wire    [1:0]                   s_axi_rresp,
    output  wire                            s_axi_rvalid,
    input   wire                            s_axi_rready,
    // Ethernet Control IF
    output  wire                            eth_mdc,
    inout   wire                            eth_mdio,
    // Ethernet RX signals
    input   wire                            eth_rx_rst_n,
    input   wire                            eth_rx_clk,
    input   wire    [3:0]                   eth_rx_data,
    input   wire                            eth_rx_dv,
    input   wire                            eth_rx_er,
    input   wire                            eth_col,
    input   wire                            eth_crs,
    // Ethernet TX signals
    input   wire                            eth_tx_rst_n,
    input   wire                            eth_tx_clk,
    output  wire    [3:0]                   eth_tx_data,
    output  wire                            eth_tx_en
    );

    eth_ila
        ila_mac (
            .clk    (ila_clk),
            .probe0 (eth_byte_vld),
            .probe1 (eth_byte),
            .probe2 (dst_mac),
            .probe3 (pkt_type)
    );

    localparam  C_PKT_BITS  = 1500*8;

    wire            mdio_tx;
    wire            mdio_rx;
    wire            high_z;
    wire            mdio_done;
    wire            mdio_en;
    wire    [31:0]  mdio_wr_data;
    wire    [31:0]  mdio_rd_data;
    wire            eth_byte_vld;
    wire            eth_byte_rdy;
    wire    [7:0]   eth_byte;
    wire    [47:0]  dst_mac;
    wire    [15:0]  pkt_type;

    IOBUF #(
            .DRIVE          (12),
            .IBUF_LOW_PWR   ("TRUE"),
            .IOSTANDARD     ("LVCMOS33"),
            .SLEW           ("SLOW")) 
        mdio_tri_buf (
            .O      (mdio_rx),
            .IO     (eth_mdio),
            .I      (mdio_tx),
            .T      (high_z)
        );

/////////////////////////////////////////////////
//          SIMULATION PURPOSES ONLY           //
/////////////////////////////////////////////////
    // assign eth_mdio = high_z ? 1'bZ : mdio_tx;
    // assign mdio_rx = eth_mdio;
/////////////////////////////////////////////////

    axil_slave #(
            .P_DATA_WIDTH   (P_DATA_WIDTH),
            .P_NUM_REG      (P_NUM_REG))
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
            .P_CLK_DIV  (P_MDC_CLK_DIV))
        mdio_controller (
            .ila_clk    (ila_clk),
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

    eth_rx #(
            .P_MAC_ADDR (P_MAC_ADDR),
            .P_PKT_BITS (C_PKT_BITS))
        eth_rx_mii (
            .ila_clk        (ila_clk),
            .rx_clk         (eth_rx_clk),
            .rx_rst_n       (eth_rx_rst_n),
            .rx_data        (eth_rx_data),
            .rx_dv          (eth_rx_dv),
            .rx_er          (eth_rx_er),
            .crs            (eth_crs),
            .col            (eth_col),
            .rx_byte_vld    (eth_byte_vld),
            .rx_byte_rdy    (1'b1),
            .rx_byte        (eth_byte),
            .rx_dst_mac     (dst_mac),
            .rx_pkt_type    (pkt_type)
        );

    eth_tx #(
            .P_MAC_ADDR (P_MAC_ADDR),
            .P_PKT_BITS (C_PKT_BITS))
        eth_tx_mii (
            .ila_clk        (ila_clk),
            .tx_clk         (eth_tx_clk),
            .tx_rst_n       (eth_tx_rst_n),
            .tx_data        (eth_tx_data),
            .tx_en          (eth_tx_en),
            .tx_byte_vld    (0),
            .tx_byte_rdy    (eth_byte_rdy),
            .tx_byte        (0),
            .tx_dst_mac     (dst_mac),
            .tx_pkt_type    (pkt_type)
        );


    // Dump waves
    initial begin
        $dumpfile("eth_mac.vcd");
        $dumpvars();
    end

    endmodule
