// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : QickSgTranslator_2
// Git hash  : dc5472be1928b3bc8bb90ff1d313e08ff70cfc16

`timescale 1ns/1ps

module QickSgTranslator_2 (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_tproc_axis_tvalid,
  output wire          s_tproc_axis_tready,
  input  wire [167:0]  s_tproc_axis_tdata,
  output wire          m_gen_v6_axis_tvalid,
  input  wire          m_gen_v6_axis_tready,
  output wire [159:0]  m_gen_v6_axis_tdata,
  output wire          m_int4_axis_tvalid,
  input  wire          m_int4_axis_tready,
  output wire [87:0]   m_int4_axis_tdata,
  output wire          m_mux4_axis_tvalid,
  input  wire          m_mux4_axis_tready,
  output wire [39:0]   m_mux4_axis_tdata,
  output wire          m_readout_v3_axis_tvalid,
  input  wire          m_readout_v3_axis_tready,
  output wire [87:0]   m_readout_v3_axis_tdata
);

  wire                sgTranslator_s_axis_tready;
  wire                sgTranslator_m_gen_v6_axis_tvalid;
  wire       [159:0]  sgTranslator_m_gen_v6_axis_tdata;
  wire                sgTranslator_m_int4_axis_tvalid;
  wire       [87:0]   sgTranslator_m_int4_axis_tdata;
  wire                sgTranslator_m_mux4_axis_tvalid;
  wire       [39:0]   sgTranslator_m_mux4_axis_tdata;
  wire                sgTranslator_m_readout_axis_tvalid;
  wire       [87:0]   sgTranslator_m_readout_axis_tdata;

  sg_translator #(
    .OUT_TYPE (2)
  ) sgTranslator (
    .aresetn               (aresetn                                ), //i
    .aclk                  (aclk                                   ), //i
    .s_axis_tvalid         (s_tproc_axis_tvalid                    ), //i
    .s_axis_tready         (sgTranslator_s_axis_tready             ), //o
    .s_axis_tdata          (s_tproc_axis_tdata[167:0]              ), //i
    .m_gen_v6_axis_tvalid  (sgTranslator_m_gen_v6_axis_tvalid      ), //o
    .m_gen_v6_axis_tready  (m_gen_v6_axis_tready                   ), //i
    .m_gen_v6_axis_tdata   (sgTranslator_m_gen_v6_axis_tdata[159:0]), //o
    .m_int4_axis_tvalid    (sgTranslator_m_int4_axis_tvalid        ), //o
    .m_int4_axis_tready    (m_int4_axis_tready                     ), //i
    .m_int4_axis_tdata     (sgTranslator_m_int4_axis_tdata[87:0]   ), //o
    .m_mux4_axis_tvalid    (sgTranslator_m_mux4_axis_tvalid        ), //o
    .m_mux4_axis_tready    (m_mux4_axis_tready                     ), //i
    .m_mux4_axis_tdata     (sgTranslator_m_mux4_axis_tdata[39:0]   ), //o
    .m_readout_axis_tvalid (sgTranslator_m_readout_axis_tvalid     ), //o
    .m_readout_axis_tready (m_readout_v3_axis_tready               ), //i
    .m_readout_axis_tdata  (sgTranslator_m_readout_axis_tdata[87:0])  //o
  );
  assign s_tproc_axis_tready = sgTranslator_s_axis_tready;
  assign m_gen_v6_axis_tvalid = sgTranslator_m_gen_v6_axis_tvalid;
  assign m_gen_v6_axis_tdata = sgTranslator_m_gen_v6_axis_tdata;
  assign m_int4_axis_tvalid = sgTranslator_m_int4_axis_tvalid;
  assign m_int4_axis_tdata = sgTranslator_m_int4_axis_tdata;
  assign m_mux4_axis_tvalid = sgTranslator_m_mux4_axis_tvalid;
  assign m_mux4_axis_tdata = sgTranslator_m_mux4_axis_tdata;
  assign m_readout_v3_axis_tvalid = sgTranslator_m_readout_axis_tvalid;
  assign m_readout_v3_axis_tdata = sgTranslator_m_readout_axis_tdata;

endmodule
