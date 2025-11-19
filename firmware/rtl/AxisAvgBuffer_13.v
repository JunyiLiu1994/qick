// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisAvgBuffer_13
// Git hash  : dc5472be1928b3bc8bb90ff1d313e08ff70cfc16

`timescale 1ns/1ps

module AxisAvgBuffer_13 (
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    s_axi_awaddr,
  input  wire [2:0]    s_axi_awprot,
  input  wire          s_axi_wvalid,
  output wire          s_axi_wready,
  input  wire [31:0]   s_axi_wdata,
  input  wire [3:0]    s_axi_wstrb,
  output wire          s_axi_bvalid,
  input  wire          s_axi_bready,
  output wire [1:0]    s_axi_bresp,
  input  wire          s_axi_arvalid,
  output wire          s_axi_arready,
  input  wire [5:0]    s_axi_araddr,
  input  wire [2:0]    s_axi_arprot,
  output wire          s_axi_rvalid,
  input  wire          s_axi_rready,
  output wire [31:0]   s_axi_rdata,
  output wire [1:0]    s_axi_rresp,
  input  wire          s_axi_aclk_i,
  input  wire          s_axi_aresetn,
  input  wire          trigger,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   s_axis_tdata,
  input  wire          s_axis_aclk_i,
  input  wire          s_axis_aresetn,
  input  wire          m_axis_aclk_i,
  input  wire          m_axis_aresetn,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   m0_axis_tdata,
  output wire          m0_axis_tlast,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   m1_axis_tdata,
  output wire          m1_axis_tlast,
  output wire          m2_axis_tvalid,
  input  wire          m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   m2_axis_tdata
);

  wire                axisAvgBuffer_s_axi_awready;
  wire                axisAvgBuffer_s_axi_wready;
  wire                axisAvgBuffer_s_axi_bvalid;
  wire       [1:0]    axisAvgBuffer_s_axi_bresp;
  wire                axisAvgBuffer_s_axi_arready;
  wire                axisAvgBuffer_s_axi_rvalid;
  wire       [31:0]   axisAvgBuffer_s_axi_rdata;
  wire       [1:0]    axisAvgBuffer_s_axi_rresp;
  wire                axisAvgBuffer_s_axis_tready;
  wire                axisAvgBuffer_m0_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_m0_axis_tdata;
  wire                axisAvgBuffer_m0_axis_tlast;
  wire                axisAvgBuffer_m1_axis_tvalid;
  wire       [31:0]   axisAvgBuffer_m1_axis_tdata;
  wire                axisAvgBuffer_m1_axis_tlast;
  wire                axisAvgBuffer_m2_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_m2_axis_tdata;

  axis_avg_buffer #(
    .N_AVG (13),
    .N_BUF (10),
    .B     (16)
  ) axisAvgBuffer (
    .s_axi_awvalid  (s_axi_awvalid                    ), //i
    .s_axi_awready  (axisAvgBuffer_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                ), //i
    .s_axi_wvalid   (s_axi_wvalid                     ), //i
    .s_axi_wready   (axisAvgBuffer_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                 ), //i
    .s_axi_bvalid   (axisAvgBuffer_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                     ), //i
    .s_axi_bresp    (axisAvgBuffer_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                    ), //i
    .s_axi_arready  (axisAvgBuffer_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                ), //i
    .s_axi_rvalid   (axisAvgBuffer_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                     ), //i
    .s_axi_rdata    (axisAvgBuffer_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisAvgBuffer_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk     (s_axi_aclk_i                     ), //i
    .s_axi_aresetn  (s_axi_aresetn                    ), //i
    .trigger        (trigger                          ), //i
    .s_axis_tvalid  (s_axis_tvalid                    ), //i
    .s_axis_tready  (axisAvgBuffer_s_axis_tready      ), //o
    .s_axis_tdata   (s_axis_tdata[31:0]               ), //i
    .s_axis_aclk    (s_axis_aclk_i                    ), //i
    .s_axis_aresetn (s_axis_aresetn                   ), //i
    .m_axis_aclk    (m_axis_aclk_i                    ), //i
    .m_axis_aresetn (m_axis_aresetn                   ), //i
    .m0_axis_tvalid (axisAvgBuffer_m0_axis_tvalid     ), //o
    .m0_axis_tready (m0_axis_tready                   ), //i
    .m0_axis_tdata  (axisAvgBuffer_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axisAvgBuffer_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axisAvgBuffer_m1_axis_tvalid     ), //o
    .m1_axis_tready (m1_axis_tready                   ), //i
    .m1_axis_tdata  (axisAvgBuffer_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axisAvgBuffer_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axisAvgBuffer_m2_axis_tvalid     ), //o
    .m2_axis_tready (m2_axis_tready                   ), //i
    .m2_axis_tdata  (axisAvgBuffer_m2_axis_tdata[63:0])  //o
  );
  assign s_axi_awready = axisAvgBuffer_s_axi_awready;
  assign s_axi_wready = axisAvgBuffer_s_axi_wready;
  assign s_axi_bvalid = axisAvgBuffer_s_axi_bvalid;
  assign s_axi_bresp = axisAvgBuffer_s_axi_bresp;
  assign s_axi_arready = axisAvgBuffer_s_axi_arready;
  assign s_axi_rvalid = axisAvgBuffer_s_axi_rvalid;
  assign s_axi_rdata = axisAvgBuffer_s_axi_rdata;
  assign s_axi_rresp = axisAvgBuffer_s_axi_rresp;
  assign s_axis_tready = axisAvgBuffer_s_axis_tready;
  assign m0_axis_tvalid = axisAvgBuffer_m0_axis_tvalid;
  assign m0_axis_tdata = axisAvgBuffer_m0_axis_tdata;
  assign m0_axis_tlast = axisAvgBuffer_m0_axis_tlast;
  assign m1_axis_tvalid = axisAvgBuffer_m1_axis_tvalid;
  assign m1_axis_tdata = axisAvgBuffer_m1_axis_tdata;
  assign m1_axis_tlast = axisAvgBuffer_m1_axis_tlast;
  assign m2_axis_tvalid = axisAvgBuffer_m2_axis_tvalid;
  assign m2_axis_tdata = axisAvgBuffer_m2_axis_tdata;

endmodule
