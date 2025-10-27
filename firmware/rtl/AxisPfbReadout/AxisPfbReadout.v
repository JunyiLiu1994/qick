// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisPfbReadout
// Git hash  : 9ee0020cb9ba56cc33d690877cf36ca408f9d248

`timescale 1ns/1ps

module AxisPfbReadout (
  input  wire          a_axi_aresetn,
  input  wire          a_axi_aclk,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  input  wire [5:0]    s_axi_awaddr,
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
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid,
  input  wire [127:0]  s_axis_tdata,
  output wire          m0_axis_tvalid,
  output wire [31:0]   m0_axis_tdata,
  output wire          m1_axis_tvalid,
  output wire [31:0]   m1_axis_tdata,
  output wire          m2_axis_tvalid,
  output wire [31:0]   m2_axis_tdata,
  output wire          m3_axis_tvalid,
  output wire [31:0]   m3_axis_tdata
);

  wire                axisPfbReadout_s_axi_awready;
  wire                axisPfbReadout_s_axi_wready;
  wire                axisPfbReadout_s_axi_bvalid;
  wire       [1:0]    axisPfbReadout_s_axi_bresp;
  wire                axisPfbReadout_s_axi_arready;
  wire                axisPfbReadout_s_axi_rvalid;
  wire       [31:0]   axisPfbReadout_s_axi_rdata;
  wire       [1:0]    axisPfbReadout_s_axi_rresp;
  wire                axisPfbReadout_m0_axis_tvalid;
  wire       [31:0]   axisPfbReadout_m0_axis_tdata;
  wire                axisPfbReadout_m1_axis_tvalid;
  wire       [31:0]   axisPfbReadout_m1_axis_tdata;
  wire                axisPfbReadout_m2_axis_tvalid;
  wire       [31:0]   axisPfbReadout_m2_axis_tdata;
  wire                axisPfbReadout_m3_axis_tvalid;
  wire       [31:0]   axisPfbReadout_m3_axis_tdata;

  axis_pfb_readout_v3 #(
    .N (64)
  ) axisPfbReadout (
    .a_axi_aresetn  (a_axi_aresetn                     ), //i
    .a_axi_aclk     (a_axi_aclk                        ), //i
    .s_axi_awvalid  (s_axi_awvalid                     ), //i
    .s_axi_awready  (axisPfbReadout_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                 ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                 ), //i
    .s_axi_wvalid   (s_axi_wvalid                      ), //i
    .s_axi_wready   (axisPfbReadout_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                 ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                  ), //i
    .s_axi_bvalid   (axisPfbReadout_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                      ), //i
    .s_axi_bresp    (axisPfbReadout_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                     ), //i
    .s_axi_arready  (axisPfbReadout_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                 ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                 ), //i
    .s_axi_rvalid   (axisPfbReadout_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                      ), //i
    .s_axi_rdata    (axisPfbReadout_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisPfbReadout_s_axi_rresp[1:0]   ), //o
    .aresetn        (aresetn                           ), //i
    .aclk           (aclk                              ), //i
    .s_axis_tvalid  (s_axis_tvalid                     ), //i
    .s_axis_tdata   (s_axis_tdata[127:0]               ), //i
    .m0_axis_tvalid (axisPfbReadout_m0_axis_tvalid     ), //o
    .m0_axis_tdata  (axisPfbReadout_m0_axis_tdata[31:0]), //o
    .m1_axis_tvalid (axisPfbReadout_m1_axis_tvalid     ), //o
    .m1_axis_tdata  (axisPfbReadout_m1_axis_tdata[31:0]), //o
    .m2_axis_tvalid (axisPfbReadout_m2_axis_tvalid     ), //o
    .m2_axis_tdata  (axisPfbReadout_m2_axis_tdata[31:0]), //o
    .m3_axis_tvalid (axisPfbReadout_m3_axis_tvalid     ), //o
    .m3_axis_tdata  (axisPfbReadout_m3_axis_tdata[31:0])  //o
  );
  assign s_axi_awready = axisPfbReadout_s_axi_awready;
  assign s_axi_wready = axisPfbReadout_s_axi_wready;
  assign s_axi_bvalid = axisPfbReadout_s_axi_bvalid;
  assign s_axi_bresp = axisPfbReadout_s_axi_bresp;
  assign s_axi_arready = axisPfbReadout_s_axi_arready;
  assign s_axi_rvalid = axisPfbReadout_s_axi_rvalid;
  assign s_axi_rdata = axisPfbReadout_s_axi_rdata;
  assign s_axi_rresp = axisPfbReadout_s_axi_rresp;
  assign m0_axis_tvalid = axisPfbReadout_m0_axis_tvalid;
  assign m0_axis_tdata = axisPfbReadout_m0_axis_tdata;
  assign m1_axis_tvalid = axisPfbReadout_m1_axis_tvalid;
  assign m1_axis_tdata = axisPfbReadout_m1_axis_tdata;
  assign m2_axis_tvalid = axisPfbReadout_m2_axis_tvalid;
  assign m2_axis_tdata = axisPfbReadout_m2_axis_tdata;
  assign m3_axis_tvalid = axisPfbReadout_m3_axis_tvalid;
  assign m3_axis_tdata = axisPfbReadout_m3_axis_tdata;

endmodule
