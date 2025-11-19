// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisSgInt4
// Git hash  : dc5472be1928b3bc8bb90ff1d313e08ff70cfc16

`timescale 1ns/1ps

module AxisSgInt4 (
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
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   s0_axis_tdata,
  input  wire          s0_axis_aclk,
  input  wire          s0_axis_aresetn,
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [159:0]  s1_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  m_axis_tdata
);

  wire                axisSgInt4_s_axi_awready;
  wire                axisSgInt4_s_axi_wready;
  wire                axisSgInt4_s_axi_bvalid;
  wire       [1:0]    axisSgInt4_s_axi_bresp;
  wire                axisSgInt4_s_axi_arready;
  wire                axisSgInt4_s_axi_rvalid;
  wire       [31:0]   axisSgInt4_s_axi_rdata;
  wire       [1:0]    axisSgInt4_s_axi_rresp;
  wire                axisSgInt4_s0_axis_tready;
  wire                axisSgInt4_s1_axis_tready;
  wire                axisSgInt4_m_axis_tvalid;
  wire       [127:0]  axisSgInt4_m_axis_tdata;

  axis_sg_int4_v2 axisSgInt4 (
    .s_axi_awvalid   (s_axi_awvalid                 ), //i
    .s_axi_awready   (axisSgInt4_s_axi_awready      ), //o
    .s_axi_awaddr    (s_axi_awaddr[5:0]             ), //i
    .s_axi_awprot    (s_axi_awprot[2:0]             ), //i
    .s_axi_wvalid    (s_axi_wvalid                  ), //i
    .s_axi_wready    (axisSgInt4_s_axi_wready       ), //o
    .s_axi_wdata     (s_axi_wdata[31:0]             ), //i
    .s_axi_wstrb     (s_axi_wstrb[3:0]              ), //i
    .s_axi_bvalid    (axisSgInt4_s_axi_bvalid       ), //o
    .s_axi_bready    (s_axi_bready                  ), //i
    .s_axi_bresp     (axisSgInt4_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid   (s_axi_arvalid                 ), //i
    .s_axi_arready   (axisSgInt4_s_axi_arready      ), //o
    .s_axi_araddr    (s_axi_araddr[5:0]             ), //i
    .s_axi_arprot    (s_axi_arprot[2:0]             ), //i
    .s_axi_rvalid    (axisSgInt4_s_axi_rvalid       ), //o
    .s_axi_rready    (s_axi_rready                  ), //i
    .s_axi_rdata     (axisSgInt4_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp     (axisSgInt4_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk      (s_axi_aclk_i                  ), //i
    .s_axi_aresetn   (s_axi_aresetn                 ), //i
    .s0_axis_tvalid  (s0_axis_tvalid                ), //i
    .s0_axis_tready  (axisSgInt4_s0_axis_tready     ), //o
    .s0_axis_tdata   (s0_axis_tdata[31:0]           ), //i
    .s0_axis_aclk    (s0_axis_aclk                  ), //i
    .s0_axis_aresetn (s0_axis_aresetn               ), //i
    .aresetn         (aresetn                       ), //i
    .aclk            (aclk_i                        ), //i
    .s1_axis_tvalid  (s1_axis_tvalid                ), //i
    .s1_axis_tready  (axisSgInt4_s1_axis_tready     ), //o
    .s1_axis_tdata   (s1_axis_tdata[159:0]          ), //i
    .m_axis_tvalid   (axisSgInt4_m_axis_tvalid      ), //o
    .m_axis_tready   (m_axis_tready                 ), //i
    .m_axis_tdata    (axisSgInt4_m_axis_tdata[127:0])  //o
  );
  assign s_axi_awready = axisSgInt4_s_axi_awready;
  assign s_axi_wready = axisSgInt4_s_axi_wready;
  assign s_axi_bvalid = axisSgInt4_s_axi_bvalid;
  assign s_axi_bresp = axisSgInt4_s_axi_bresp;
  assign s_axi_arready = axisSgInt4_s_axi_arready;
  assign s_axi_rvalid = axisSgInt4_s_axi_rvalid;
  assign s_axi_rdata = axisSgInt4_s_axi_rdata;
  assign s_axi_rresp = axisSgInt4_s_axi_rresp;
  assign s0_axis_tready = axisSgInt4_s0_axis_tready;
  assign s1_axis_tready = axisSgInt4_s1_axis_tready;
  assign m_axis_tvalid = axisSgInt4_m_axis_tvalid;
  assign m_axis_tdata = axisSgInt4_m_axis_tdata;

endmodule
