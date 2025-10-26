// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisTMuxV1
// Git hash  : dff83198e762b248305d00bbe40ff271d93a70ca

`timescale 1ns/1ps

module AxisTMuxV1 (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  input  wire [167:0]  s_axis_tdata,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  output wire [167:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  output wire [167:0]  m1_axis_tdata,
  output wire          m2_axis_tvalid,
  input  wire          m2_axis_tready,
  output wire [167:0]  m2_axis_tdata,
  output wire          m3_axis_tvalid,
  input  wire          m3_axis_tready,
  output wire [167:0]  m3_axis_tdata,
  output wire          m4_axis_tvalid,
  input  wire          m4_axis_tready,
  output wire [167:0]  m4_axis_tdata,
  output wire          m5_axis_tvalid,
  input  wire          m5_axis_tready,
  output wire [167:0]  m5_axis_tdata,
  output wire          m6_axis_tvalid,
  input  wire          m6_axis_tready,
  output wire [167:0]  m6_axis_tdata,
  output wire          m7_axis_tvalid,
  input  wire          m7_axis_tready,
  output wire [167:0]  m7_axis_tdata
);

  wire                axisTmuxV1_s_axis_tready;
  wire                axisTmuxV1_m0_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m0_axis_tdata;
  wire                axisTmuxV1_m1_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m1_axis_tdata;
  wire                axisTmuxV1_m2_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m2_axis_tdata;
  wire                axisTmuxV1_m3_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m3_axis_tdata;
  wire                axisTmuxV1_m4_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m4_axis_tdata;
  wire                axisTmuxV1_m5_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m5_axis_tdata;
  wire                axisTmuxV1_m6_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m6_axis_tdata;
  wire                axisTmuxV1_m7_axis_tvalid;
  wire       [167:0]  axisTmuxV1_m7_axis_tdata;

  axis_tmux_v1 #(
    .N (4  ),
    .B (168)
  ) axisTmuxV1 (
    .aresetn        (aresetn                        ), //i
    .aclk           (aclk                           ), //i
    .s_axis_tvalid  (s_axis_tvalid                  ), //i
    .s_axis_tready  (axisTmuxV1_s_axis_tready       ), //o
    .s_axis_tdata   (s_axis_tdata[167:0]            ), //i
    .m0_axis_tvalid (axisTmuxV1_m0_axis_tvalid      ), //o
    .m0_axis_tready (m0_axis_tready                 ), //i
    .m0_axis_tdata  (axisTmuxV1_m0_axis_tdata[167:0]), //o
    .m1_axis_tvalid (axisTmuxV1_m1_axis_tvalid      ), //o
    .m1_axis_tready (m1_axis_tready                 ), //i
    .m1_axis_tdata  (axisTmuxV1_m1_axis_tdata[167:0]), //o
    .m2_axis_tvalid (axisTmuxV1_m2_axis_tvalid      ), //o
    .m2_axis_tready (m2_axis_tready                 ), //i
    .m2_axis_tdata  (axisTmuxV1_m2_axis_tdata[167:0]), //o
    .m3_axis_tvalid (axisTmuxV1_m3_axis_tvalid      ), //o
    .m3_axis_tready (m3_axis_tready                 ), //i
    .m3_axis_tdata  (axisTmuxV1_m3_axis_tdata[167:0]), //o
    .m4_axis_tvalid (axisTmuxV1_m4_axis_tvalid      ), //o
    .m4_axis_tready (m4_axis_tready                 ), //i
    .m4_axis_tdata  (axisTmuxV1_m4_axis_tdata[167:0]), //o
    .m5_axis_tvalid (axisTmuxV1_m5_axis_tvalid      ), //o
    .m5_axis_tready (m5_axis_tready                 ), //i
    .m5_axis_tdata  (axisTmuxV1_m5_axis_tdata[167:0]), //o
    .m6_axis_tvalid (axisTmuxV1_m6_axis_tvalid      ), //o
    .m6_axis_tready (m6_axis_tready                 ), //i
    .m6_axis_tdata  (axisTmuxV1_m6_axis_tdata[167:0]), //o
    .m7_axis_tvalid (axisTmuxV1_m7_axis_tvalid      ), //o
    .m7_axis_tready (m7_axis_tready                 ), //i
    .m7_axis_tdata  (axisTmuxV1_m7_axis_tdata[167:0])  //o
  );
  assign s_axis_tready = axisTmuxV1_s_axis_tready;
  assign m0_axis_tvalid = axisTmuxV1_m0_axis_tvalid;
  assign m0_axis_tdata = axisTmuxV1_m0_axis_tdata;
  assign m1_axis_tvalid = axisTmuxV1_m1_axis_tvalid;
  assign m1_axis_tdata = axisTmuxV1_m1_axis_tdata;
  assign m2_axis_tvalid = axisTmuxV1_m2_axis_tvalid;
  assign m2_axis_tdata = axisTmuxV1_m2_axis_tdata;
  assign m3_axis_tvalid = axisTmuxV1_m3_axis_tvalid;
  assign m3_axis_tdata = axisTmuxV1_m3_axis_tdata;
  assign m4_axis_tvalid = axisTmuxV1_m4_axis_tvalid;
  assign m4_axis_tdata = axisTmuxV1_m4_axis_tdata;
  assign m5_axis_tvalid = axisTmuxV1_m5_axis_tvalid;
  assign m5_axis_tdata = axisTmuxV1_m5_axis_tdata;
  assign m6_axis_tvalid = axisTmuxV1_m6_axis_tvalid;
  assign m6_axis_tdata = axisTmuxV1_m6_axis_tdata;
  assign m7_axis_tvalid = axisTmuxV1_m7_axis_tvalid;
  assign m7_axis_tdata = axisTmuxV1_m7_axis_tdata;

endmodule
