// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisSgMixMux8
// Git hash  : 18fc038c13ac690f8dee8280050136351545fd62

`timescale 1ns/1ps

module AxisSgMixMux8 (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid_i,
  output wire          s_axis_tready_o,
  input  wire [39:0]   s_axis_tdata_i,
  input  wire          m_axis_tvalid_o,
  output wire          m_axis_tready_i,
  input  wire [127:0]  m_axis_tdata_o,
  input  wire [31:0]   PINC0_REG,
  input  wire [31:0]   PINC1_REG,
  input  wire [31:0]   PINC2_REG,
  input  wire [31:0]   PINC3_REG,
  input  wire [31:0]   PINC4_REG,
  input  wire [31:0]   PINC5_REG,
  input  wire [31:0]   PINC6_REG,
  input  wire [31:0]   PINC7_REG,
  input  wire [31:0]   POFF0_REG,
  input  wire [31:0]   POFF1_REG,
  input  wire [31:0]   POFF2_REG,
  input  wire [31:0]   POFF3_REG,
  input  wire [31:0]   POFF4_REG,
  input  wire [31:0]   POFF5_REG,
  input  wire [31:0]   POFF6_REG,
  input  wire [31:0]   POFF7_REG,
  input  wire [15:0]   GAIN0_REG,
  input  wire [15:0]   GAIN1_REG,
  input  wire [15:0]   GAIN2_REG,
  input  wire [15:0]   GAIN3_REG,
  input  wire [15:0]   GAIN4_REG,
  input  wire [15:0]   GAIN5_REG,
  input  wire [15:0]   GAIN6_REG,
  input  wire [15:0]   GAIN7_REG,
  input  wire          WE_REG
);

  wire                axisSgMixMux8_s_axis_tready_o;
  wire                axisSgMixMux8_m_axis_tready_i;

  sg_mux8 #(
    .N_DDS (4)
  ) axisSgMixMux8 (
    .aresetn         (aresetn                      ), //i
    .aclk            (aclk                         ), //i
    .s_axis_tvalid_i (s_axis_tvalid_i              ), //i
    .s_axis_tready_o (axisSgMixMux8_s_axis_tready_o), //o
    .s_axis_tdata_i  (s_axis_tdata_i[39:0]         ), //i
    .m_axis_tvalid_o (m_axis_tvalid_o              ), //i
    .m_axis_tready_i (axisSgMixMux8_m_axis_tready_i), //o
    .m_axis_tdata_o  (m_axis_tdata_o[127:0]        ), //i
    .PINC0_REG       (PINC0_REG[31:0]              ), //i
    .PINC1_REG       (PINC1_REG[31:0]              ), //i
    .PINC2_REG       (PINC2_REG[31:0]              ), //i
    .PINC3_REG       (PINC3_REG[31:0]              ), //i
    .PINC4_REG       (PINC4_REG[31:0]              ), //i
    .PINC5_REG       (PINC5_REG[31:0]              ), //i
    .PINC6_REG       (PINC6_REG[31:0]              ), //i
    .PINC7_REG       (PINC7_REG[31:0]              ), //i
    .POFF0_REG       (POFF0_REG[31:0]              ), //i
    .POFF1_REG       (POFF1_REG[31:0]              ), //i
    .POFF2_REG       (POFF2_REG[31:0]              ), //i
    .POFF3_REG       (POFF3_REG[31:0]              ), //i
    .POFF4_REG       (POFF4_REG[31:0]              ), //i
    .POFF5_REG       (POFF5_REG[31:0]              ), //i
    .POFF6_REG       (POFF6_REG[31:0]              ), //i
    .POFF7_REG       (POFF7_REG[31:0]              ), //i
    .GAIN0_REG       (GAIN0_REG[15:0]              ), //i
    .GAIN1_REG       (GAIN1_REG[15:0]              ), //i
    .GAIN2_REG       (GAIN2_REG[15:0]              ), //i
    .GAIN3_REG       (GAIN3_REG[15:0]              ), //i
    .GAIN4_REG       (GAIN4_REG[15:0]              ), //i
    .GAIN5_REG       (GAIN5_REG[15:0]              ), //i
    .GAIN6_REG       (GAIN6_REG[15:0]              ), //i
    .GAIN7_REG       (GAIN7_REG[15:0]              ), //i
    .WE_REG          (WE_REG                       )  //i
  );
  assign s_axis_tready_o = axisSgMixMux8_s_axis_tready_o;
  assign m_axis_tready_i = axisSgMixMux8_m_axis_tready_i;

endmodule
