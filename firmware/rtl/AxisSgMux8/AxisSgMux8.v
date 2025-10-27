// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisSgMux8
// Git hash  : 8b74fce470b13f9d87ea253b1881485a10865684

`timescale 1ns/1ps

module AxisSgMux8 (
  input  wire          s_axi_aresetn,
  input  wire          s_axi_aclk,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  input  wire [7:0]    s_axi_awaddr,
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
  input  wire          aclk,
  input  wire          aresetn,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  input  wire [31:0]   s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  output wire [255:0]  m_axis_tdata
);

  wire                axisSgMux8_s_axi_awready;
  wire                axisSgMux8_s_axi_wready;
  wire                axisSgMux8_s_axi_bvalid;
  wire       [1:0]    axisSgMux8_s_axi_bresp;
  wire                axisSgMux8_s_axi_arready;
  wire                axisSgMux8_s_axi_rvalid;
  wire       [31:0]   axisSgMux8_s_axi_rdata;
  wire       [1:0]    axisSgMux8_s_axi_rresp;
  wire                axisSgMux8_s_axis_tready;
  wire                axisSgMux8_m_axis_tvalid;
  wire       [255:0]  axisSgMux8_m_axis_tdata;

  axis_sg_mux8_v1 #(
    .N_DDS (16)
  ) axisSgMux8 (
    .s_axi_aresetn (s_axi_aresetn                 ), //i
    .s_axi_aclk    (s_axi_aclk                    ), //i
    .s_axi_awvalid (s_axi_awvalid                 ), //i
    .s_axi_awready (axisSgMux8_s_axi_awready      ), //o
    .s_axi_awaddr  (s_axi_awaddr[7:0]             ), //i
    .s_axi_awprot  (s_axi_awprot[2:0]             ), //i
    .s_axi_wvalid  (s_axi_wvalid                  ), //i
    .s_axi_wready  (axisSgMux8_s_axi_wready       ), //o
    .s_axi_wdata   (s_axi_wdata[31:0]             ), //i
    .s_axi_wstrb   (s_axi_wstrb[3:0]              ), //i
    .s_axi_bvalid  (axisSgMux8_s_axi_bvalid       ), //o
    .s_axi_bready  (s_axi_bready                  ), //i
    .s_axi_bresp   (axisSgMux8_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid (s_axi_arvalid                 ), //i
    .s_axi_arready (axisSgMux8_s_axi_arready      ), //o
    .s_axi_araddr  (s_axi_araddr[7:0]             ), //i
    .s_axi_arprot  (s_axi_arprot[2:0]             ), //i
    .s_axi_rvalid  (axisSgMux8_s_axi_rvalid       ), //o
    .s_axi_rready  (s_axi_rready                  ), //i
    .s_axi_rdata   (axisSgMux8_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp   (axisSgMux8_s_axi_rresp[1:0]   ), //o
    .aclk          (aclk                          ), //i
    .aresetn       (aresetn                       ), //i
    .s_axis_tvalid (s_axis_tvalid                 ), //i
    .s_axis_tready (axisSgMux8_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[31:0]            ), //i
    .m_axis_tvalid (axisSgMux8_m_axis_tvalid      ), //o
    .m_axis_tready (m_axis_tready                 ), //i
    .m_axis_tdata  (axisSgMux8_m_axis_tdata[255:0])  //o
  );
  assign s_axi_awready = axisSgMux8_s_axi_awready;
  assign s_axi_wready = axisSgMux8_s_axi_wready;
  assign s_axi_bvalid = axisSgMux8_s_axi_bvalid;
  assign s_axi_bresp = axisSgMux8_s_axi_bresp;
  assign s_axi_arready = axisSgMux8_s_axi_arready;
  assign s_axi_rvalid = axisSgMux8_s_axi_rvalid;
  assign s_axi_rdata = axisSgMux8_s_axi_rdata;
  assign s_axi_rresp = axisSgMux8_s_axi_rresp;
  assign s_axis_tready = axisSgMux8_s_axis_tready;
  assign m_axis_tvalid = axisSgMux8_m_axis_tvalid;
  assign m_axis_tdata = axisSgMux8_m_axis_tdata;

endmodule
