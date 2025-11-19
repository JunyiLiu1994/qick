// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisReadoutV3
// Git hash  : dc5472be1928b3bc8bb90ff1d313e08ff70cfc16

`timescale 1ns/1ps

module AxisReadoutV3 (
  input  wire          aclk_i,
  input  wire          aresetn,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [87:0]   s0_axis_tdata,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [63:0]   s1_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m_axis_tdata
);

  wire                axisReadout_s0_axis_tready;
  wire                axisReadout_s1_axis_tready;
  wire                axisReadout_m_axis_tvalid;
  wire       [31:0]   axisReadout_m_axis_tdata;

  axis_readout_v3 axisReadout (
    .aclk           (aclk_i                        ), //i
    .aresetn        (aresetn                       ), //i
    .s0_axis_tvalid (s0_axis_tvalid                ), //i
    .s0_axis_tready (axisReadout_s0_axis_tready    ), //o
    .s0_axis_tdata  (s0_axis_tdata[87:0]           ), //i
    .s1_axis_tvalid (s1_axis_tvalid                ), //i
    .s1_axis_tready (axisReadout_s1_axis_tready    ), //o
    .s1_axis_tdata  (s1_axis_tdata[63:0]           ), //i
    .m_axis_tvalid  (axisReadout_m_axis_tvalid     ), //o
    .m_axis_tready  (m_axis_tready                 ), //i
    .m_axis_tdata   (axisReadout_m_axis_tdata[31:0])  //o
  );
  assign s0_axis_tready = axisReadout_s0_axis_tready;
  assign s1_axis_tready = axisReadout_s1_axis_tready;
  assign m_axis_tvalid = axisReadout_m_axis_tvalid;
  assign m_axis_tdata = axisReadout_m_axis_tdata;

endmodule
