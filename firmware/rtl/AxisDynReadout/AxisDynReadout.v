// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisDynReadout
// Git hash  : 4c8639c86e1eeb7953bca3ecd73f01761fd35d45

`timescale 1ns/1ps

module AxisDynReadout (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  input  wire [87:0]   s0_axis_tdata,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  input  wire [127:0]  s1_axis_tdata,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  output wire [255:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  output wire [31:0]   m1_axis_tdata
);

  wire                axisDynReadout_s0_axis_tready;
  wire                axisDynReadout_s1_axis_tready;
  wire                axisDynReadout_m0_axis_tvalid;
  wire       [255:0]  axisDynReadout_m0_axis_tdata;
  wire                axisDynReadout_m1_axis_tvalid;
  wire       [31:0]   axisDynReadout_m1_axis_tdata;

  axi_dyn_readout_v1 #(
    .N_DDS (8)
  ) axisDynReadout (
    .aresetn        (aresetn                            ), //i
    .aclk           (aclk                               ), //i
    .s0_axis_tvalid (s0_axis_tvalid                     ), //i
    .s0_axis_tready (axisDynReadout_s0_axis_tready      ), //o
    .s0_axis_tdata  (s0_axis_tdata[87:0]                ), //i
    .s1_axis_tvalid (s1_axis_tvalid                     ), //i
    .s1_axis_tready (axisDynReadout_s1_axis_tready      ), //o
    .s1_axis_tdata  (s1_axis_tdata[127:0]               ), //i
    .m0_axis_tvalid (axisDynReadout_m0_axis_tvalid      ), //o
    .m0_axis_tready (m0_axis_tready                     ), //i
    .m0_axis_tdata  (axisDynReadout_m0_axis_tdata[255:0]), //o
    .m1_axis_tvalid (axisDynReadout_m1_axis_tvalid      ), //o
    .m1_axis_tready (m1_axis_tready                     ), //i
    .m1_axis_tdata  (axisDynReadout_m1_axis_tdata[31:0] )  //o
  );
  assign s0_axis_tready = axisDynReadout_s0_axis_tready;
  assign s1_axis_tready = axisDynReadout_s1_axis_tready;
  assign m0_axis_tvalid = axisDynReadout_m0_axis_tvalid;
  assign m0_axis_tdata = axisDynReadout_m0_axis_tdata;
  assign m1_axis_tvalid = axisDynReadout_m1_axis_tvalid;
  assign m1_axis_tdata = axisDynReadout_m1_axis_tdata;

endmodule
