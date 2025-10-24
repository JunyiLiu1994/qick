// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisTMuxV1
// Git hash  : 4624a0582ef913c9f80a2c5acbb52f3d9a9de6f3

`timescale 1ns/1ps

module AxisTMuxV1 (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  input  wire [167:0]  s_axis_tdata,
  output wire          m0_axis_tvalid,
  input  wire          m_axis_0_ready,
  output wire [167:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m_axis_1_ready,
  output wire [167:0]  m1_axis_tdata,
  output wire          m2_axis_tvalid,
  input  wire          m_axis_2_ready,
  output wire [167:0]  m2_axis_tdata,
  output wire          m3_axis_tvalid,
  input  wire          m_axis_3_ready,
  output wire [167:0]  m3_axis_tdata,
  output wire          m4_axis_tvalid,
  input  wire          m_axis_4_ready,
  output wire [167:0]  m4_axis_tdata,
  output wire          m5_axis_tvalid,
  input  wire          m_axis_5_ready,
  output wire [167:0]  m5_axis_tdata,
  output wire          m6_axis_tvalid,
  input  wire          m_axis_6_ready,
  output wire [167:0]  m6_axis_tdata,
  output wire          m7_axis_tvalid,
  input  wire          m_axis_7_ready,
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
    .m_axis_0_ready (m_axis_0_ready                 ), //i
    .m0_axis_tdata  (axisTmuxV1_m0_axis_tdata[167:0]), //o
    .m1_axis_tvalid (axisTmuxV1_m1_axis_tvalid      ), //o
    .m_axis_1_ready (m_axis_1_ready                 ), //i
    .m1_axis_tdata  (axisTmuxV1_m1_axis_tdata[167:0]), //o
    .m2_axis_tvalid (axisTmuxV1_m2_axis_tvalid      ), //o
    .m_axis_2_ready (m_axis_2_ready                 ), //i
    .m2_axis_tdata  (axisTmuxV1_m2_axis_tdata[167:0]), //o
    .m3_axis_tvalid (axisTmuxV1_m3_axis_tvalid      ), //o
    .m_axis_3_ready (m_axis_3_ready                 ), //i
    .m3_axis_tdata  (axisTmuxV1_m3_axis_tdata[167:0]), //o
    .m4_axis_tvalid (axisTmuxV1_m4_axis_tvalid      ), //o
    .m_axis_4_ready (m_axis_4_ready                 ), //i
    .m4_axis_tdata  (axisTmuxV1_m4_axis_tdata[167:0]), //o
    .m5_axis_tvalid (axisTmuxV1_m5_axis_tvalid      ), //o
    .m_axis_5_ready (m_axis_5_ready                 ), //i
    .m5_axis_tdata  (axisTmuxV1_m5_axis_tdata[167:0]), //o
    .m6_axis_tvalid (axisTmuxV1_m6_axis_tvalid      ), //o
    .m_axis_6_ready (m_axis_6_ready                 ), //i
    .m6_axis_tdata  (axisTmuxV1_m6_axis_tdata[167:0]), //o
    .m7_axis_tvalid (axisTmuxV1_m7_axis_tvalid      ), //o
    .m_axis_7_ready (m_axis_7_ready                 ), //i
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
