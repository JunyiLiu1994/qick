// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisResampler
// Git hash  : dc5472be1928b3bc8bb90ff1d313e08ff70cfc16

`timescale 1ns/1ps

module AxisResampler (
  input  wire          aclk,
  input  wire          aresetn,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  input  wire [671:0]  s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  output wire [335:0]  m_axis_tdata
);

  wire                axisResampler_s_axis_tready;
  wire                axisResampler_m_axis_tvalid;
  wire       [335:0]  axisResampler_m_axis_tdata;

  axis_resampler_2x1_v1 #(
    .B (4  ),
    .N (168)
  ) axisResampler (
    .aclk          (aclk                             ), //i
    .aresetn       (aresetn                          ), //i
    .s_axis_tvalid (s_axis_tvalid                    ), //i
    .s_axis_tready (axisResampler_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[671:0]              ), //i
    .m_axis_tvalid (axisResampler_m_axis_tvalid      ), //o
    .m_axis_tready (m_axis_tready                    ), //i
    .m_axis_tdata  (axisResampler_m_axis_tdata[335:0])  //o
  );
  assign s_axis_tready = axisResampler_s_axis_tready;
  assign m_axis_tvalid = axisResampler_m_axis_tvalid;
  assign m_axis_tdata = axisResampler_m_axis_tdata;

endmodule
