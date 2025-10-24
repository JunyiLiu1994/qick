// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisCdcsync
// Git hash  : ea109d7d39a8b3d5b5472896ffedf2f9758723b5

`timescale 1ns/1ps

module AxisCdcsync (
  input  wire          s_axis_aresetn,
  input  wire          s_axis_aclk,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s0_axis_tdata,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s1_axis_tdata,
  input  wire          s2_axis_tvalid,
  output wire          s2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s2_axis_tdata,
  input  wire          s3_axis_tvalid,
  output wire          s3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s3_axis_tdata,
  input  wire          s4_axis_tvalid,
  output wire          s4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s4_axis_tdata,
  input  wire          s5_axis_tvalid,
  output wire          s5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s5_axis_tdata,
  input  wire          s6_axis_tvalid,
  output wire          s6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s6_axis_tdata,
  input  wire          s7_axis_tvalid,
  output wire          s7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s7_axis_tdata,
  input  wire          s8_axis_tvalid,
  output wire          s8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s8_axis_tdata,
  input  wire          s9_axis_tvalid,
  output wire          s9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s9_axis_tdata,
  input  wire          s10_axis_tvalid,
  output wire          s10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s10_axis_tdata,
  input  wire          s11_axis_tvalid,
  output wire          s11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s11_axis_tdata,
  input  wire          s12_axis_tvalid,
  output wire          s12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s12_axis_tdata,
  input  wire          s13_axis_tvalid,
  output wire          s13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s13_axis_tdata,
  input  wire          s14_axis_tvalid,
  output wire          s14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s14_axis_tdata,
  input  wire          s15_axis_tvalid,
  output wire          s15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s15_axis_tdata,
  input  wire          m_axis_aresetn,
  input  wire          m_axis_aclk,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m1_axis_tdata,
  output wire          m2_axis_tvalid,
  input  wire          m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m2_axis_tdata,
  output wire          m3_axis_tvalid,
  input  wire          m3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m3_axis_tdata,
  output wire          m4_axis_tvalid,
  input  wire          m4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m4_axis_tdata,
  output wire          m5_axis_tvalid,
  input  wire          m5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m5_axis_tdata,
  output wire          m6_axis_tvalid,
  input  wire          m6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m6_axis_tdata,
  output wire          m7_axis_tvalid,
  input  wire          m7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m7_axis_tdata,
  output wire          m8_axis_tvalid,
  input  wire          m8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m8_axis_tdata,
  output wire          m9_axis_tvalid,
  input  wire          m9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m9_axis_tdata,
  output wire          m10_axis_tvalid,
  input  wire          m10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m10_axis_tdata,
  output wire          m11_axis_tvalid,
  input  wire          m11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m11_axis_tdata,
  output wire          m12_axis_tvalid,
  input  wire          m12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m12_axis_tdata,
  output wire          m13_axis_tvalid,
  input  wire          m13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m13_axis_tdata,
  output wire          m14_axis_tvalid,
  input  wire          m14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m14_axis_tdata,
  output wire          m15_axis_tvalid,
  input  wire          m15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m15_axis_tdata
);

  wire                axisCdcsync_s0_axis_tready;
  wire                axisCdcsync_s1_axis_tready;
  wire                axisCdcsync_s2_axis_tready;
  wire                axisCdcsync_s3_axis_tready;
  wire                axisCdcsync_s4_axis_tready;
  wire                axisCdcsync_s5_axis_tready;
  wire                axisCdcsync_s6_axis_tready;
  wire                axisCdcsync_s7_axis_tready;
  wire                axisCdcsync_s8_axis_tready;
  wire                axisCdcsync_s9_axis_tready;
  wire                axisCdcsync_s10_axis_tready;
  wire                axisCdcsync_s11_axis_tready;
  wire                axisCdcsync_s12_axis_tready;
  wire                axisCdcsync_s13_axis_tready;
  wire                axisCdcsync_s14_axis_tready;
  wire                axisCdcsync_s15_axis_tready;
  wire                axisCdcsync_m0_axis_tvalid;
  wire       [167:0]  axisCdcsync_m0_axis_tdata;
  wire                axisCdcsync_m1_axis_tvalid;
  wire       [167:0]  axisCdcsync_m1_axis_tdata;
  wire                axisCdcsync_m2_axis_tvalid;
  wire       [167:0]  axisCdcsync_m2_axis_tdata;
  wire                axisCdcsync_m3_axis_tvalid;
  wire       [167:0]  axisCdcsync_m3_axis_tdata;
  wire                axisCdcsync_m4_axis_tvalid;
  wire       [167:0]  axisCdcsync_m4_axis_tdata;
  wire                axisCdcsync_m5_axis_tvalid;
  wire       [167:0]  axisCdcsync_m5_axis_tdata;
  wire                axisCdcsync_m6_axis_tvalid;
  wire       [167:0]  axisCdcsync_m6_axis_tdata;
  wire                axisCdcsync_m7_axis_tvalid;
  wire       [167:0]  axisCdcsync_m7_axis_tdata;
  wire                axisCdcsync_m8_axis_tvalid;
  wire       [167:0]  axisCdcsync_m8_axis_tdata;
  wire                axisCdcsync_m9_axis_tvalid;
  wire       [167:0]  axisCdcsync_m9_axis_tdata;
  wire                axisCdcsync_m10_axis_tvalid;
  wire       [167:0]  axisCdcsync_m10_axis_tdata;
  wire                axisCdcsync_m11_axis_tvalid;
  wire       [167:0]  axisCdcsync_m11_axis_tdata;
  wire                axisCdcsync_m12_axis_tvalid;
  wire       [167:0]  axisCdcsync_m12_axis_tdata;
  wire                axisCdcsync_m13_axis_tvalid;
  wire       [167:0]  axisCdcsync_m13_axis_tdata;
  wire                axisCdcsync_m14_axis_tvalid;
  wire       [167:0]  axisCdcsync_m14_axis_tdata;
  wire                axisCdcsync_m15_axis_tvalid;
  wire       [167:0]  axisCdcsync_m15_axis_tdata;

  axis_cdcsync_v1 #(
    .N (3  ),
    .B (168)
  ) axisCdcsync (
    .s_axis_aresetn  (s_axis_aresetn                   ), //i
    .s_axis_aclk     (s_axis_aclk                      ), //i
    .s0_axis_tvalid  (s0_axis_tvalid                   ), //i
    .s0_axis_tready  (axisCdcsync_s0_axis_tready       ), //o
    .s0_axis_tdata   (s0_axis_tdata[167:0]             ), //i
    .s1_axis_tvalid  (s1_axis_tvalid                   ), //i
    .s1_axis_tready  (axisCdcsync_s1_axis_tready       ), //o
    .s1_axis_tdata   (s1_axis_tdata[167:0]             ), //i
    .s2_axis_tvalid  (s2_axis_tvalid                   ), //i
    .s2_axis_tready  (axisCdcsync_s2_axis_tready       ), //o
    .s2_axis_tdata   (s2_axis_tdata[167:0]             ), //i
    .s3_axis_tvalid  (s3_axis_tvalid                   ), //i
    .s3_axis_tready  (axisCdcsync_s3_axis_tready       ), //o
    .s3_axis_tdata   (s3_axis_tdata[167:0]             ), //i
    .s4_axis_tvalid  (s4_axis_tvalid                   ), //i
    .s4_axis_tready  (axisCdcsync_s4_axis_tready       ), //o
    .s4_axis_tdata   (s4_axis_tdata[167:0]             ), //i
    .s5_axis_tvalid  (s5_axis_tvalid                   ), //i
    .s5_axis_tready  (axisCdcsync_s5_axis_tready       ), //o
    .s5_axis_tdata   (s5_axis_tdata[167:0]             ), //i
    .s6_axis_tvalid  (s6_axis_tvalid                   ), //i
    .s6_axis_tready  (axisCdcsync_s6_axis_tready       ), //o
    .s6_axis_tdata   (s6_axis_tdata[167:0]             ), //i
    .s7_axis_tvalid  (s7_axis_tvalid                   ), //i
    .s7_axis_tready  (axisCdcsync_s7_axis_tready       ), //o
    .s7_axis_tdata   (s7_axis_tdata[167:0]             ), //i
    .s8_axis_tvalid  (s8_axis_tvalid                   ), //i
    .s8_axis_tready  (axisCdcsync_s8_axis_tready       ), //o
    .s8_axis_tdata   (s8_axis_tdata[167:0]             ), //i
    .s9_axis_tvalid  (s9_axis_tvalid                   ), //i
    .s9_axis_tready  (axisCdcsync_s9_axis_tready       ), //o
    .s9_axis_tdata   (s9_axis_tdata[167:0]             ), //i
    .s10_axis_tvalid (s10_axis_tvalid                  ), //i
    .s10_axis_tready (axisCdcsync_s10_axis_tready      ), //o
    .s10_axis_tdata  (s10_axis_tdata[167:0]            ), //i
    .s11_axis_tvalid (s11_axis_tvalid                  ), //i
    .s11_axis_tready (axisCdcsync_s11_axis_tready      ), //o
    .s11_axis_tdata  (s11_axis_tdata[167:0]            ), //i
    .s12_axis_tvalid (s12_axis_tvalid                  ), //i
    .s12_axis_tready (axisCdcsync_s12_axis_tready      ), //o
    .s12_axis_tdata  (s12_axis_tdata[167:0]            ), //i
    .s13_axis_tvalid (s13_axis_tvalid                  ), //i
    .s13_axis_tready (axisCdcsync_s13_axis_tready      ), //o
    .s13_axis_tdata  (s13_axis_tdata[167:0]            ), //i
    .s14_axis_tvalid (s14_axis_tvalid                  ), //i
    .s14_axis_tready (axisCdcsync_s14_axis_tready      ), //o
    .s14_axis_tdata  (s14_axis_tdata[167:0]            ), //i
    .s15_axis_tvalid (s15_axis_tvalid                  ), //i
    .s15_axis_tready (axisCdcsync_s15_axis_tready      ), //o
    .s15_axis_tdata  (s15_axis_tdata[167:0]            ), //i
    .m_axis_aresetn  (m_axis_aresetn                   ), //i
    .m_axis_aclk     (m_axis_aclk                      ), //i
    .m0_axis_tvalid  (axisCdcsync_m0_axis_tvalid       ), //o
    .m0_axis_tready  (m0_axis_tready                   ), //i
    .m0_axis_tdata   (axisCdcsync_m0_axis_tdata[167:0] ), //o
    .m1_axis_tvalid  (axisCdcsync_m1_axis_tvalid       ), //o
    .m1_axis_tready  (m1_axis_tready                   ), //i
    .m1_axis_tdata   (axisCdcsync_m1_axis_tdata[167:0] ), //o
    .m2_axis_tvalid  (axisCdcsync_m2_axis_tvalid       ), //o
    .m2_axis_tready  (m2_axis_tready                   ), //i
    .m2_axis_tdata   (axisCdcsync_m2_axis_tdata[167:0] ), //o
    .m3_axis_tvalid  (axisCdcsync_m3_axis_tvalid       ), //o
    .m3_axis_tready  (m3_axis_tready                   ), //i
    .m3_axis_tdata   (axisCdcsync_m3_axis_tdata[167:0] ), //o
    .m4_axis_tvalid  (axisCdcsync_m4_axis_tvalid       ), //o
    .m4_axis_tready  (m4_axis_tready                   ), //i
    .m4_axis_tdata   (axisCdcsync_m4_axis_tdata[167:0] ), //o
    .m5_axis_tvalid  (axisCdcsync_m5_axis_tvalid       ), //o
    .m5_axis_tready  (m5_axis_tready                   ), //i
    .m5_axis_tdata   (axisCdcsync_m5_axis_tdata[167:0] ), //o
    .m6_axis_tvalid  (axisCdcsync_m6_axis_tvalid       ), //o
    .m6_axis_tready  (m6_axis_tready                   ), //i
    .m6_axis_tdata   (axisCdcsync_m6_axis_tdata[167:0] ), //o
    .m7_axis_tvalid  (axisCdcsync_m7_axis_tvalid       ), //o
    .m7_axis_tready  (m7_axis_tready                   ), //i
    .m7_axis_tdata   (axisCdcsync_m7_axis_tdata[167:0] ), //o
    .m8_axis_tvalid  (axisCdcsync_m8_axis_tvalid       ), //o
    .m8_axis_tready  (m8_axis_tready                   ), //i
    .m8_axis_tdata   (axisCdcsync_m8_axis_tdata[167:0] ), //o
    .m9_axis_tvalid  (axisCdcsync_m9_axis_tvalid       ), //o
    .m9_axis_tready  (m9_axis_tready                   ), //i
    .m9_axis_tdata   (axisCdcsync_m9_axis_tdata[167:0] ), //o
    .m10_axis_tvalid (axisCdcsync_m10_axis_tvalid      ), //o
    .m10_axis_tready (m10_axis_tready                  ), //i
    .m10_axis_tdata  (axisCdcsync_m10_axis_tdata[167:0]), //o
    .m11_axis_tvalid (axisCdcsync_m11_axis_tvalid      ), //o
    .m11_axis_tready (m11_axis_tready                  ), //i
    .m11_axis_tdata  (axisCdcsync_m11_axis_tdata[167:0]), //o
    .m12_axis_tvalid (axisCdcsync_m12_axis_tvalid      ), //o
    .m12_axis_tready (m12_axis_tready                  ), //i
    .m12_axis_tdata  (axisCdcsync_m12_axis_tdata[167:0]), //o
    .m13_axis_tvalid (axisCdcsync_m13_axis_tvalid      ), //o
    .m13_axis_tready (m13_axis_tready                  ), //i
    .m13_axis_tdata  (axisCdcsync_m13_axis_tdata[167:0]), //o
    .m14_axis_tvalid (axisCdcsync_m14_axis_tvalid      ), //o
    .m14_axis_tready (m14_axis_tready                  ), //i
    .m14_axis_tdata  (axisCdcsync_m14_axis_tdata[167:0]), //o
    .m15_axis_tvalid (axisCdcsync_m15_axis_tvalid      ), //o
    .m15_axis_tready (m15_axis_tready                  ), //i
    .m15_axis_tdata  (axisCdcsync_m15_axis_tdata[167:0])  //o
  );
  assign s0_axis_tready = axisCdcsync_s0_axis_tready;
  assign s1_axis_tready = axisCdcsync_s1_axis_tready;
  assign s2_axis_tready = axisCdcsync_s2_axis_tready;
  assign s3_axis_tready = axisCdcsync_s3_axis_tready;
  assign s4_axis_tready = axisCdcsync_s4_axis_tready;
  assign s5_axis_tready = axisCdcsync_s5_axis_tready;
  assign s6_axis_tready = axisCdcsync_s6_axis_tready;
  assign s7_axis_tready = axisCdcsync_s7_axis_tready;
  assign s8_axis_tready = axisCdcsync_s8_axis_tready;
  assign s9_axis_tready = axisCdcsync_s9_axis_tready;
  assign s10_axis_tready = axisCdcsync_s10_axis_tready;
  assign s11_axis_tready = axisCdcsync_s11_axis_tready;
  assign s12_axis_tready = axisCdcsync_s12_axis_tready;
  assign s13_axis_tready = axisCdcsync_s13_axis_tready;
  assign s14_axis_tready = axisCdcsync_s14_axis_tready;
  assign s15_axis_tready = axisCdcsync_s15_axis_tready;
  assign m0_axis_tvalid = axisCdcsync_m0_axis_tvalid;
  assign m0_axis_tdata = axisCdcsync_m0_axis_tdata;
  assign m1_axis_tvalid = axisCdcsync_m1_axis_tvalid;
  assign m1_axis_tdata = axisCdcsync_m1_axis_tdata;
  assign m2_axis_tvalid = axisCdcsync_m2_axis_tvalid;
  assign m2_axis_tdata = axisCdcsync_m2_axis_tdata;
  assign m3_axis_tvalid = axisCdcsync_m3_axis_tvalid;
  assign m3_axis_tdata = axisCdcsync_m3_axis_tdata;
  assign m4_axis_tvalid = axisCdcsync_m4_axis_tvalid;
  assign m4_axis_tdata = axisCdcsync_m4_axis_tdata;
  assign m5_axis_tvalid = axisCdcsync_m5_axis_tvalid;
  assign m5_axis_tdata = axisCdcsync_m5_axis_tdata;
  assign m6_axis_tvalid = axisCdcsync_m6_axis_tvalid;
  assign m6_axis_tdata = axisCdcsync_m6_axis_tdata;
  assign m7_axis_tvalid = axisCdcsync_m7_axis_tvalid;
  assign m7_axis_tdata = axisCdcsync_m7_axis_tdata;
  assign m8_axis_tvalid = axisCdcsync_m8_axis_tvalid;
  assign m8_axis_tdata = axisCdcsync_m8_axis_tdata;
  assign m9_axis_tvalid = axisCdcsync_m9_axis_tvalid;
  assign m9_axis_tdata = axisCdcsync_m9_axis_tdata;
  assign m10_axis_tvalid = axisCdcsync_m10_axis_tvalid;
  assign m10_axis_tdata = axisCdcsync_m10_axis_tdata;
  assign m11_axis_tvalid = axisCdcsync_m11_axis_tvalid;
  assign m11_axis_tdata = axisCdcsync_m11_axis_tdata;
  assign m12_axis_tvalid = axisCdcsync_m12_axis_tvalid;
  assign m12_axis_tdata = axisCdcsync_m12_axis_tdata;
  assign m13_axis_tvalid = axisCdcsync_m13_axis_tvalid;
  assign m13_axis_tdata = axisCdcsync_m13_axis_tdata;
  assign m14_axis_tvalid = axisCdcsync_m14_axis_tvalid;
  assign m14_axis_tdata = axisCdcsync_m14_axis_tdata;
  assign m15_axis_tvalid = axisCdcsync_m15_axis_tvalid;
  assign m15_axis_tdata = axisCdcsync_m15_axis_tdata;

endmodule
