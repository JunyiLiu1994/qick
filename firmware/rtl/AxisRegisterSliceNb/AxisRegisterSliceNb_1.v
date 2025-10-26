// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisRegisterSliceNb_1
// Git hash  : dff83198e762b248305d00bbe40ff271d93a70ca

`timescale 1ns/1ps

module AxisRegisterSliceNb_1 (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  input  wire [255:0]  s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_ready,
  output wire [255:0]  m_axis_tdata
);

  wire                axisRegisterSliceNb_s_axis_tready;
  wire                axisRegisterSliceNb_m_axis_tvalid;
  wire       [255:0]  axisRegisterSliceNb_m_axis_tdata;

  axis_register_slice_nb #(
    .B (256),
    .N (6  )
  ) axisRegisterSliceNb (
    .aresetn       (aresetn                                ), //i
    .aclk          (aclk                                   ), //i
    .s_axis_tvalid (s_axis_tvalid                          ), //i
    .s_axis_tready (axisRegisterSliceNb_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[255:0]                    ), //i
    .m_axis_tvalid (axisRegisterSliceNb_m_axis_tvalid      ), //o
    .m_axis_ready  (m_axis_ready                           ), //i
    .m_axis_tdata  (axisRegisterSliceNb_m_axis_tdata[255:0])  //o
  );
  assign s_axis_tready = axisRegisterSliceNb_s_axis_tready;
  assign m_axis_tvalid = axisRegisterSliceNb_m_axis_tvalid;
  assign m_axis_tdata = axisRegisterSliceNb_m_axis_tdata;

endmodule
