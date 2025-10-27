// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisSgMixMux8
// Git hash  : 0d21e5f8beee3da53d130d359b588cda5e1610ac

`timescale 1ns/1ps

module AxisSgMixMux8 (
  input  wire          s_axi_aresetn,
  input  wire          s_axi_aclk_i,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [7:0]    s_axi_awaddr,
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
  input  wire [7:0]    s_axi_araddr,
  input  wire [2:0]    s_axi_arprot,
  output wire          s_axi_rvalid,
  input  wire          s_axi_rready,
  output wire [31:0]   s_axi_rdata,
  output wire [1:0]    s_axi_rresp,
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [39:0]   s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  m_axis_tdata
);

  wire                axisSgMixMux8_s_axi_awready;
  wire                axisSgMixMux8_s_axi_wready;
  wire                axisSgMixMux8_s_axi_bvalid;
  wire       [1:0]    axisSgMixMux8_s_axi_bresp;
  wire                axisSgMixMux8_s_axi_arready;
  wire                axisSgMixMux8_s_axi_rvalid;
  wire       [31:0]   axisSgMixMux8_s_axi_rdata;
  wire       [1:0]    axisSgMixMux8_s_axi_rresp;
  wire                axisSgMixMux8_s_axis_tready;
  wire                axisSgMixMux8_m_axis_tvalid;
  wire       [127:0]  axisSgMixMux8_m_axis_tdata;

  axis_sg_mixmux8_v1 #(
    .N_DDS (4)
  ) axisSgMixMux8 (
    .s_axi_aresetn (s_axi_aresetn                    ), //i
    .s_axi_aclk    (s_axi_aclk_i                     ), //i
    .s_axi_awvalid (s_axi_awvalid                    ), //i
    .s_axi_awready (axisSgMixMux8_s_axi_awready      ), //o
    .s_axi_awaddr  (s_axi_awaddr[7:0]                ), //i
    .s_axi_awprot  (s_axi_awprot[2:0]                ), //i
    .s_axi_wvalid  (s_axi_wvalid                     ), //i
    .s_axi_wready  (axisSgMixMux8_s_axi_wready       ), //o
    .s_axi_wdata   (s_axi_wdata[31:0]                ), //i
    .s_axi_wstrb   (s_axi_wstrb[3:0]                 ), //i
    .s_axi_bvalid  (axisSgMixMux8_s_axi_bvalid       ), //o
    .s_axi_bready  (s_axi_bready                     ), //i
    .s_axi_bresp   (axisSgMixMux8_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid (s_axi_arvalid                    ), //i
    .s_axi_arready (axisSgMixMux8_s_axi_arready      ), //o
    .s_axi_araddr  (s_axi_araddr[7:0]                ), //i
    .s_axi_arprot  (s_axi_arprot[2:0]                ), //i
    .s_axi_rvalid  (axisSgMixMux8_s_axi_rvalid       ), //o
    .s_axi_rready  (s_axi_rready                     ), //i
    .s_axi_rdata   (axisSgMixMux8_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp   (axisSgMixMux8_s_axi_rresp[1:0]   ), //o
    .aresetn       (aresetn                          ), //i
    .aclk          (aclk_i                           ), //i
    .s_axis_tvalid (s_axis_tvalid                    ), //i
    .s_axis_tready (axisSgMixMux8_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[39:0]               ), //i
    .m_axis_tvalid (axisSgMixMux8_m_axis_tvalid      ), //o
    .m_axis_tready (m_axis_tready                    ), //i
    .m_axis_tdata  (axisSgMixMux8_m_axis_tdata[127:0])  //o
  );
  assign s_axi_awready = axisSgMixMux8_s_axi_awready;
  assign s_axi_wready = axisSgMixMux8_s_axi_wready;
  assign s_axi_bvalid = axisSgMixMux8_s_axi_bvalid;
  assign s_axi_bresp = axisSgMixMux8_s_axi_bresp;
  assign s_axi_arready = axisSgMixMux8_s_axi_arready;
  assign s_axi_rvalid = axisSgMixMux8_s_axi_rvalid;
  assign s_axi_rdata = axisSgMixMux8_s_axi_rdata;
  assign s_axi_rresp = axisSgMixMux8_s_axi_rresp;
  assign s_axis_tready = axisSgMixMux8_s_axis_tready;
  assign m_axis_tvalid = axisSgMixMux8_m_axis_tvalid;
  assign m_axis_tdata = axisSgMixMux8_m_axis_tdata;

endmodule
