// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : QickProcessor
// Git hash  : 68c0bf8a2ce41cc3f06efbe2bc4d012a975a613f

`timescale 1ns/1ps

module QickProcessor (
  input  wire          c_clk_i,
  input  wire          c_resetn,
  input  wire          t_clk_i,
  input  wire          t_resetn,
  input  wire          ps_clk_i,
  input  wire          ps_resetn,
  input  wire          ext_flag_i,
  input  wire          proc_start_i,
  input  wire          proc_stop_i,
  input  wire          core_start_i,
  input  wire          core_stop_i,
  input  wire          time_rst_i,
  input  wire          time_init_i,
  input  wire          time_updt_i,
  input  wire [31:0]   time_dt_i,
  output wire [47:0]   t_time_abs_o,
  output wire          pulse_sync_o,
  output wire          qnet_en_o,
  output wire [4:0]    qnet_op_o,
  output wire [31:0]   qnet_a_dt_o,
  output wire [31:0]   qnet_b_dt_o,
  output wire [31:0]   qnet_c_dt_o,
  input  wire          qnet_rdy_i,
  input  wire [31:0]   qnet_dt1_i,
  input  wire [31:0]   qnet_dt2_i,
  input  wire          qnet_vld_i,
  input  wire          qnet_flag_i,
  output wire          qcom_en_o,
  output wire [4:0]    qcom_op_o,
  output wire [31:0]   qcom_dt_o,
  input  wire          qcom_rdy_i,
  input  wire [31:0]   qcom_dt1_i,
  input  wire [31:0]   qcom_dt2_i,
  input  wire          qcom_vld_i,
  input  wire          qcom_flag_i,
  output wire          qp1_en_o,
  output wire [4:0]    qp1_op_o,
  output wire [31:0]   qp1_a_dt_o,
  output wire [31:0]   qp1_b_dt_o,
  output wire [31:0]   qp1_c_dt_o,
  output wire [31:0]   qp1_d_dt_o,
  input  wire          qp1_rdy_i,
  input  wire [31:0]   qp1_dt1_i,
  input  wire [31:0]   qp1_dt2_i,
  input  wire          qp1_vld_i,
  input  wire          qp1_flag_i,
  output wire          qp2_en_o,
  output wire [4:0]    qp2_op_o,
  output wire [31:0]   qp2_a_dt_o,
  output wire [31:0]   qp2_b_dt_o,
  output wire [31:0]   qp2_c_dt_o,
  output wire [31:0]   qp2_d_dt_o,
  input  wire          qp2_rdy_i,
  input  wire [31:0]   qp2_dt1_i,
  input  wire [31:0]   qp2_dt2_i,
  input  wire          qp2_vld_i,
  input  wire          s_dma_axis_tvalid_i,
  output wire          s_dma_axis_tready_o,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [255:0]  s_dma_axis_tdata_i,
  input  wire          s_dma_axis_tlast_i,
  output wire          m_dma_axis_tvalid_o,
  input  wire          m_dma_axis_tready_i,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [255:0]  m_dma_axis_tdata_o,
  output wire          m_dma_axis_tlast_o,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [7:0]    s_axi_awaddr,
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
  input  wire [7:0]    s_axi_araddr,
  input  wire [2:0]    s_axi_arprot,
  output wire          s_axi_rvalid,
  input  wire          s_axi_rready,
  output wire [31:0]   s_axi_rdata,
  output wire [1:0]    s_axi_rresp,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s0_axis_tdata,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s1_axis_tdata,
  input  wire          s2_axis_tvalid,
  output wire          s2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s2_axis_tdata,
  input  wire          s3_axis_tvalid,
  output wire          s3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s3_axis_tdata,
  input  wire          s4_axis_tvalid,
  output wire          s4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s4_axis_tdata,
  input  wire          s5_axis_tvalid,
  output wire          s5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s5_axis_tdata,
  input  wire          s6_axis_tvalid,
  output wire          s6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s6_axis_tdata,
  input  wire          s7_axis_tvalid,
  output wire          s7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s7_axis_tdata,
  input  wire          s8_axis_tvalid,
  output wire          s8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s8_axis_tdata,
  input  wire          s9_axis_tvalid,
  output wire          s9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s9_axis_tdata,
  input  wire          s10_axis_tvalid,
  output wire          s10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s10_axis_tdata,
  input  wire          s11_axis_tvalid,
  output wire          s11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s11_axis_tdata,
  input  wire          s12_axis_tvalid,
  output wire          s12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s12_axis_tdata,
  input  wire          s13_axis_tvalid,
  output wire          s13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s13_axis_tdata,
  input  wire          s14_axis_tvalid,
  output wire          s14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s14_axis_tdata,
  input  wire          s15_axis_tvalid,
  output wire          s15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   s15_axis_tdata,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m1_axis_tdata,
  output wire          m2_axis_tvalid,
  input  wire          m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m2_axis_tdata,
  output wire          m3_axis_tvalid,
  input  wire          m3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m3_axis_tdata,
  output wire          m4_axis_tvalid,
  input  wire          m4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m4_axis_tdata,
  output wire          m5_axis_tvalid,
  input  wire          m5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m5_axis_tdata,
  output wire          m6_axis_tvalid,
  input  wire          m6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m6_axis_tdata,
  output wire          m7_axis_tvalid,
  input  wire          m7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m7_axis_tdata,
  output wire          m8_axis_tvalid,
  input  wire          m8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m8_axis_tdata,
  output wire          m9_axis_tvalid,
  input  wire          m9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m9_axis_tdata,
  output wire          m10_axis_tvalid,
  input  wire          m10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m10_axis_tdata,
  output wire          m11_axis_tvalid,
  input  wire          m11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m11_axis_tdata,
  output wire          m12_axis_tvalid,
  input  wire          m12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m12_axis_tdata,
  output wire          m13_axis_tvalid,
  input  wire          m13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m13_axis_tdata,
  output wire          m14_axis_tvalid,
  input  wire          m14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m14_axis_tdata,
  output wire          m15_axis_tvalid,
  input  wire          m15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m15_axis_tdata,
  output wire          trig_0_o,
  output wire          trig_1_o,
  output wire          trig_2_o,
  output wire          trig_3_o,
  output wire          trig_4_o,
  output wire          trig_5_o,
  output wire          trig_6_o,
  output wire          trig_7_o,
  output wire          trig_8_o,
  output wire          trig_9_o,
  output wire          trig_10_o,
  output wire          trig_11_o,
  output wire          trig_12_o,
  output wire          trig_13_o,
  output wire          trig_14_o,
  output wire          trig_15_o,
  output wire          trig_16_o,
  output wire          trig_17_o,
  output wire          trig_18_o,
  output wire          trig_19_o,
  output wire          trig_20_o,
  output wire          trig_21_o,
  output wire          trig_22_o,
  output wire          trig_23_o,
  output wire          trig_24_o,
  output wire          trig_25_o,
  output wire          trig_26_o,
  output wire          trig_27_o,
  output wire          trig_28_o,
  output wire          trig_29_o,
  output wire          trig_30_o,
  output wire          trig_31_o,
  output wire [3:0]    port_0_dt_o,
  output wire [3:0]    port_1_dt_o,
  output wire [3:0]    port_2_dt_o,
  output wire [3:0]    port_3_dt_o,
  output wire [31:0]   ps_debug_do,
  output wire [31:0]   t_debug_do,
  output wire [31:0]   t_fifo_do,
  output wire [31:0]   c_time_usr_do,
  output wire [31:0]   c_debug_do,
  output wire [31:0]   c_time_ref_do,
  output wire [31:0]   c_proc_do,
  output wire [31:0]   c_port_do,
  output wire [31:0]   c_core_do
);

  wire       [47:0]   qickProcessor_1_t_time_abs_o;
  wire                qickProcessor_1_pulse_sync_o;
  wire                qickProcessor_1_qnet_en_o;
  wire       [4:0]    qickProcessor_1_qnet_op_o;
  wire       [31:0]   qickProcessor_1_qnet_a_dt_o;
  wire       [31:0]   qickProcessor_1_qnet_b_dt_o;
  wire       [31:0]   qickProcessor_1_qnet_c_dt_o;
  wire                qickProcessor_1_qcom_en_o;
  wire       [4:0]    qickProcessor_1_qcom_op_o;
  wire       [31:0]   qickProcessor_1_qcom_dt_o;
  wire                qickProcessor_1_qp1_en_o;
  wire       [4:0]    qickProcessor_1_qp1_op_o;
  wire       [31:0]   qickProcessor_1_qp1_a_dt_o;
  wire       [31:0]   qickProcessor_1_qp1_b_dt_o;
  wire       [31:0]   qickProcessor_1_qp1_c_dt_o;
  wire       [31:0]   qickProcessor_1_qp1_d_dt_o;
  wire                qickProcessor_1_qp2_en_o;
  wire       [4:0]    qickProcessor_1_qp2_op_o;
  wire       [31:0]   qickProcessor_1_qp2_a_dt_o;
  wire       [31:0]   qickProcessor_1_qp2_b_dt_o;
  wire       [31:0]   qickProcessor_1_qp2_c_dt_o;
  wire       [31:0]   qickProcessor_1_qp2_d_dt_o;
  wire                qickProcessor_1_s_dma_axis_tready_o;
  wire                qickProcessor_1_m_dma_axis_tvalid_o;
  wire       [255:0]  qickProcessor_1_m_dma_axis_tdata_o;
  wire                qickProcessor_1_m_dma_axis_tlast_o;
  wire                qickProcessor_1_s_axi_awready;
  wire                qickProcessor_1_s_axi_wready;
  wire                qickProcessor_1_s_axi_bvalid;
  wire       [1:0]    qickProcessor_1_s_axi_bresp;
  wire                qickProcessor_1_s_axi_arready;
  wire                qickProcessor_1_s_axi_rvalid;
  wire       [31:0]   qickProcessor_1_s_axi_rdata;
  wire       [1:0]    qickProcessor_1_s_axi_rresp;
  wire                qickProcessor_1_s0_axis_tready;
  wire                qickProcessor_1_s1_axis_tready;
  wire                qickProcessor_1_s2_axis_tready;
  wire                qickProcessor_1_s3_axis_tready;
  wire                qickProcessor_1_s4_axis_tready;
  wire                qickProcessor_1_s5_axis_tready;
  wire                qickProcessor_1_s6_axis_tready;
  wire                qickProcessor_1_s7_axis_tready;
  wire                qickProcessor_1_s8_axis_tready;
  wire                qickProcessor_1_s9_axis_tready;
  wire                qickProcessor_1_s10_axis_tready;
  wire                qickProcessor_1_s11_axis_tready;
  wire                qickProcessor_1_s12_axis_tready;
  wire                qickProcessor_1_s13_axis_tready;
  wire                qickProcessor_1_s14_axis_tready;
  wire                qickProcessor_1_s15_axis_tready;
  wire                qickProcessor_1_m0_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m0_axis_tdata;
  wire                qickProcessor_1_m1_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m1_axis_tdata;
  wire                qickProcessor_1_m2_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m2_axis_tdata;
  wire                qickProcessor_1_m3_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m3_axis_tdata;
  wire                qickProcessor_1_m4_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m4_axis_tdata;
  wire                qickProcessor_1_m5_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m5_axis_tdata;
  wire                qickProcessor_1_m6_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m6_axis_tdata;
  wire                qickProcessor_1_m7_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m7_axis_tdata;
  wire                qickProcessor_1_m8_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m8_axis_tdata;
  wire                qickProcessor_1_m9_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m9_axis_tdata;
  wire                qickProcessor_1_m10_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m10_axis_tdata;
  wire                qickProcessor_1_m11_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m11_axis_tdata;
  wire                qickProcessor_1_m12_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m12_axis_tdata;
  wire                qickProcessor_1_m13_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m13_axis_tdata;
  wire                qickProcessor_1_m14_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m14_axis_tdata;
  wire                qickProcessor_1_m15_axis_tvalid;
  wire       [167:0]  qickProcessor_1_m15_axis_tdata;
  wire                qickProcessor_1_trig_0_o;
  wire                qickProcessor_1_trig_1_o;
  wire                qickProcessor_1_trig_2_o;
  wire                qickProcessor_1_trig_3_o;
  wire                qickProcessor_1_trig_4_o;
  wire                qickProcessor_1_trig_5_o;
  wire                qickProcessor_1_trig_6_o;
  wire                qickProcessor_1_trig_7_o;
  wire                qickProcessor_1_trig_8_o;
  wire                qickProcessor_1_trig_9_o;
  wire                qickProcessor_1_trig_10_o;
  wire                qickProcessor_1_trig_11_o;
  wire                qickProcessor_1_trig_12_o;
  wire                qickProcessor_1_trig_13_o;
  wire                qickProcessor_1_trig_14_o;
  wire                qickProcessor_1_trig_15_o;
  wire                qickProcessor_1_trig_16_o;
  wire                qickProcessor_1_trig_17_o;
  wire                qickProcessor_1_trig_18_o;
  wire                qickProcessor_1_trig_19_o;
  wire                qickProcessor_1_trig_20_o;
  wire                qickProcessor_1_trig_21_o;
  wire                qickProcessor_1_trig_22_o;
  wire                qickProcessor_1_trig_23_o;
  wire                qickProcessor_1_trig_24_o;
  wire                qickProcessor_1_trig_25_o;
  wire                qickProcessor_1_trig_26_o;
  wire                qickProcessor_1_trig_27_o;
  wire                qickProcessor_1_trig_28_o;
  wire                qickProcessor_1_trig_29_o;
  wire                qickProcessor_1_trig_30_o;
  wire                qickProcessor_1_trig_31_o;
  wire       [3:0]    qickProcessor_1_port_0_dt_o;
  wire       [3:0]    qickProcessor_1_port_1_dt_o;
  wire       [3:0]    qickProcessor_1_port_2_dt_o;
  wire       [3:0]    qickProcessor_1_port_3_dt_o;
  wire       [31:0]   qickProcessor_1_ps_debug_do;
  wire       [31:0]   qickProcessor_1_t_debug_do;
  wire       [31:0]   qickProcessor_1_t_fifo_do;
  wire       [31:0]   qickProcessor_1_c_time_usr_do;
  wire       [31:0]   qickProcessor_1_c_debug_do;
  wire       [31:0]   qickProcessor_1_c_time_ref_do;
  wire       [31:0]   qickProcessor_1_c_proc_do;
  wire       [31:0]   qickProcessor_1_c_port_do;
  wire       [31:0]   qickProcessor_1_c_core_do;

  axis_qick_processor #(
    .DUAL_CORE     (0  ),
    .GEN_SYNC      (0  ),
    .IO_CTRL       (1  ),
    .TIME_CTRL     (0  ),
    .CORE_CTRL     (0  ),
    .OUT_TIME      (0  ),
    .DEBUG         (1  ),
    .QNET          (0  ),
    .QCOM          (0  ),
    .CUSTOM_PERIPH (0  ),
    .LFSR          (1  ),
    .DIVIDER       (1  ),
    .ARITH         (1  ),
    .EXT_FLAG      (0  ),
    .TIME_READ     (1  ),
    .FIFO_DEPTH    (9  ),
    .PMEM_AW       (12 ),
    .DMEM_AW       (14 ),
    .WMEM_AW       (10 ),
    .REG_AW        (4  ),
    .IN_PORT_QTY   (7  ),
    .OUT_TRIG_QTY  (17 ),
    .OUT_DPORT_QTY (1  ),
    .OUT_DPORT_DW  (8  ),
    .OUT_WPORT_QTY (5  ),
    .CALL_DEPTH    (255)
  ) qickProcessor_1 (
    .c_clk_i             (c_clk_i                                  ), //i
    .c_resetn            (c_resetn                                 ), //i
    .t_clk_i             (t_clk_i                                  ), //i
    .t_resetn            (t_resetn                                 ), //i
    .ps_clk_i            (ps_clk_i                                 ), //i
    .ps_resetn           (ps_resetn                                ), //i
    .ext_flag_i          (ext_flag_i                               ), //i
    .proc_start_i        (proc_start_i                             ), //i
    .proc_stop_i         (proc_stop_i                              ), //i
    .core_start_i        (core_start_i                             ), //i
    .core_stop_i         (core_stop_i                              ), //i
    .time_rst_i          (time_rst_i                               ), //i
    .time_init_i         (time_init_i                              ), //i
    .time_updt_i         (time_updt_i                              ), //i
    .time_dt_i           (time_dt_i[31:0]                          ), //i
    .t_time_abs_o        (qickProcessor_1_t_time_abs_o[47:0]       ), //o
    .pulse_sync_o        (qickProcessor_1_pulse_sync_o             ), //o
    .qnet_en_o           (qickProcessor_1_qnet_en_o                ), //o
    .qnet_op_o           (qickProcessor_1_qnet_op_o[4:0]           ), //o
    .qnet_a_dt_o         (qickProcessor_1_qnet_a_dt_o[31:0]        ), //o
    .qnet_b_dt_o         (qickProcessor_1_qnet_b_dt_o[31:0]        ), //o
    .qnet_c_dt_o         (qickProcessor_1_qnet_c_dt_o[31:0]        ), //o
    .qnet_rdy_i          (qnet_rdy_i                               ), //i
    .qnet_dt1_i          (qnet_dt1_i[31:0]                         ), //i
    .qnet_dt2_i          (qnet_dt2_i[31:0]                         ), //i
    .qnet_vld_i          (qnet_vld_i                               ), //i
    .qnet_flag_i         (qnet_flag_i                              ), //i
    .qcom_en_o           (qickProcessor_1_qcom_en_o                ), //o
    .qcom_op_o           (qickProcessor_1_qcom_op_o[4:0]           ), //o
    .qcom_dt_o           (qickProcessor_1_qcom_dt_o[31:0]          ), //o
    .qcom_rdy_i          (qcom_rdy_i                               ), //i
    .qcom_dt1_i          (qcom_dt1_i[31:0]                         ), //i
    .qcom_dt2_i          (qcom_dt2_i[31:0]                         ), //i
    .qcom_vld_i          (qcom_vld_i                               ), //i
    .qcom_flag_i         (qcom_flag_i                              ), //i
    .qp1_en_o            (qickProcessor_1_qp1_en_o                 ), //o
    .qp1_op_o            (qickProcessor_1_qp1_op_o[4:0]            ), //o
    .qp1_a_dt_o          (qickProcessor_1_qp1_a_dt_o[31:0]         ), //o
    .qp1_b_dt_o          (qickProcessor_1_qp1_b_dt_o[31:0]         ), //o
    .qp1_c_dt_o          (qickProcessor_1_qp1_c_dt_o[31:0]         ), //o
    .qp1_d_dt_o          (qickProcessor_1_qp1_d_dt_o[31:0]         ), //o
    .qp1_rdy_i           (qp1_rdy_i                                ), //i
    .qp1_dt1_i           (qp1_dt1_i[31:0]                          ), //i
    .qp1_dt2_i           (qp1_dt2_i[31:0]                          ), //i
    .qp1_vld_i           (qp1_vld_i                                ), //i
    .qp1_flag_i          (qp1_flag_i                               ), //i
    .qp2_en_o            (qickProcessor_1_qp2_en_o                 ), //o
    .qp2_op_o            (qickProcessor_1_qp2_op_o[4:0]            ), //o
    .qp2_a_dt_o          (qickProcessor_1_qp2_a_dt_o[31:0]         ), //o
    .qp2_b_dt_o          (qickProcessor_1_qp2_b_dt_o[31:0]         ), //o
    .qp2_c_dt_o          (qickProcessor_1_qp2_c_dt_o[31:0]         ), //o
    .qp2_d_dt_o          (qickProcessor_1_qp2_d_dt_o[31:0]         ), //o
    .qp2_rdy_i           (qp2_rdy_i                                ), //i
    .qp2_dt1_i           (qp2_dt1_i[31:0]                          ), //i
    .qp2_dt2_i           (qp2_dt2_i[31:0]                          ), //i
    .qp2_vld_i           (qp2_vld_i                                ), //i
    .s_dma_axis_tvalid_i (s_dma_axis_tvalid_i                      ), //i
    .s_dma_axis_tready_o (qickProcessor_1_s_dma_axis_tready_o      ), //o
    .s_dma_axis_tdata_i  (s_dma_axis_tdata_i[255:0]                ), //i
    .s_dma_axis_tlast_i  (s_dma_axis_tlast_i                       ), //i
    .m_dma_axis_tvalid_o (qickProcessor_1_m_dma_axis_tvalid_o      ), //o
    .m_dma_axis_tready_i (m_dma_axis_tready_i                      ), //i
    .m_dma_axis_tdata_o  (qickProcessor_1_m_dma_axis_tdata_o[255:0]), //o
    .m_dma_axis_tlast_o  (qickProcessor_1_m_dma_axis_tlast_o       ), //o
    .s_axi_awvalid       (s_axi_awvalid                            ), //i
    .s_axi_awready       (qickProcessor_1_s_axi_awready            ), //o
    .s_axi_awaddr        (s_axi_awaddr[7:0]                        ), //i
    .s_axi_awprot        (s_axi_awprot[2:0]                        ), //i
    .s_axi_wvalid        (s_axi_wvalid                             ), //i
    .s_axi_wready        (qickProcessor_1_s_axi_wready             ), //o
    .s_axi_wdata         (s_axi_wdata[31:0]                        ), //i
    .s_axi_wstrb         (s_axi_wstrb[3:0]                         ), //i
    .s_axi_bvalid        (qickProcessor_1_s_axi_bvalid             ), //o
    .s_axi_bready        (s_axi_bready                             ), //i
    .s_axi_bresp         (qickProcessor_1_s_axi_bresp[1:0]         ), //o
    .s_axi_arvalid       (s_axi_arvalid                            ), //i
    .s_axi_arready       (qickProcessor_1_s_axi_arready            ), //o
    .s_axi_araddr        (s_axi_araddr[7:0]                        ), //i
    .s_axi_arprot        (s_axi_arprot[2:0]                        ), //i
    .s_axi_rvalid        (qickProcessor_1_s_axi_rvalid             ), //o
    .s_axi_rready        (s_axi_rready                             ), //i
    .s_axi_rdata         (qickProcessor_1_s_axi_rdata[31:0]        ), //o
    .s_axi_rresp         (qickProcessor_1_s_axi_rresp[1:0]         ), //o
    .s0_axis_tvalid      (s0_axis_tvalid                           ), //i
    .s0_axis_tready      (qickProcessor_1_s0_axis_tready           ), //o
    .s0_axis_tdata       (s0_axis_tdata[63:0]                      ), //i
    .s1_axis_tvalid      (s1_axis_tvalid                           ), //i
    .s1_axis_tready      (qickProcessor_1_s1_axis_tready           ), //o
    .s1_axis_tdata       (s1_axis_tdata[63:0]                      ), //i
    .s2_axis_tvalid      (s2_axis_tvalid                           ), //i
    .s2_axis_tready      (qickProcessor_1_s2_axis_tready           ), //o
    .s2_axis_tdata       (s2_axis_tdata[63:0]                      ), //i
    .s3_axis_tvalid      (s3_axis_tvalid                           ), //i
    .s3_axis_tready      (qickProcessor_1_s3_axis_tready           ), //o
    .s3_axis_tdata       (s3_axis_tdata[63:0]                      ), //i
    .s4_axis_tvalid      (s4_axis_tvalid                           ), //i
    .s4_axis_tready      (qickProcessor_1_s4_axis_tready           ), //o
    .s4_axis_tdata       (s4_axis_tdata[63:0]                      ), //i
    .s5_axis_tvalid      (s5_axis_tvalid                           ), //i
    .s5_axis_tready      (qickProcessor_1_s5_axis_tready           ), //o
    .s5_axis_tdata       (s5_axis_tdata[63:0]                      ), //i
    .s6_axis_tvalid      (s6_axis_tvalid                           ), //i
    .s6_axis_tready      (qickProcessor_1_s6_axis_tready           ), //o
    .s6_axis_tdata       (s6_axis_tdata[63:0]                      ), //i
    .s7_axis_tvalid      (s7_axis_tvalid                           ), //i
    .s7_axis_tready      (qickProcessor_1_s7_axis_tready           ), //o
    .s7_axis_tdata       (s7_axis_tdata[63:0]                      ), //i
    .s8_axis_tvalid      (s8_axis_tvalid                           ), //i
    .s8_axis_tready      (qickProcessor_1_s8_axis_tready           ), //o
    .s8_axis_tdata       (s8_axis_tdata[63:0]                      ), //i
    .s9_axis_tvalid      (s9_axis_tvalid                           ), //i
    .s9_axis_tready      (qickProcessor_1_s9_axis_tready           ), //o
    .s9_axis_tdata       (s9_axis_tdata[63:0]                      ), //i
    .s10_axis_tvalid     (s10_axis_tvalid                          ), //i
    .s10_axis_tready     (qickProcessor_1_s10_axis_tready          ), //o
    .s10_axis_tdata      (s10_axis_tdata[63:0]                     ), //i
    .s11_axis_tvalid     (s11_axis_tvalid                          ), //i
    .s11_axis_tready     (qickProcessor_1_s11_axis_tready          ), //o
    .s11_axis_tdata      (s11_axis_tdata[63:0]                     ), //i
    .s12_axis_tvalid     (s12_axis_tvalid                          ), //i
    .s12_axis_tready     (qickProcessor_1_s12_axis_tready          ), //o
    .s12_axis_tdata      (s12_axis_tdata[63:0]                     ), //i
    .s13_axis_tvalid     (s13_axis_tvalid                          ), //i
    .s13_axis_tready     (qickProcessor_1_s13_axis_tready          ), //o
    .s13_axis_tdata      (s13_axis_tdata[63:0]                     ), //i
    .s14_axis_tvalid     (s14_axis_tvalid                          ), //i
    .s14_axis_tready     (qickProcessor_1_s14_axis_tready          ), //o
    .s14_axis_tdata      (s14_axis_tdata[63:0]                     ), //i
    .s15_axis_tvalid     (s15_axis_tvalid                          ), //i
    .s15_axis_tready     (qickProcessor_1_s15_axis_tready          ), //o
    .s15_axis_tdata      (s15_axis_tdata[63:0]                     ), //i
    .m0_axis_tvalid      (qickProcessor_1_m0_axis_tvalid           ), //o
    .m0_axis_tready      (m0_axis_tready                           ), //i
    .m0_axis_tdata       (qickProcessor_1_m0_axis_tdata[167:0]     ), //o
    .m1_axis_tvalid      (qickProcessor_1_m1_axis_tvalid           ), //o
    .m1_axis_tready      (m1_axis_tready                           ), //i
    .m1_axis_tdata       (qickProcessor_1_m1_axis_tdata[167:0]     ), //o
    .m2_axis_tvalid      (qickProcessor_1_m2_axis_tvalid           ), //o
    .m2_axis_tready      (m2_axis_tready                           ), //i
    .m2_axis_tdata       (qickProcessor_1_m2_axis_tdata[167:0]     ), //o
    .m3_axis_tvalid      (qickProcessor_1_m3_axis_tvalid           ), //o
    .m3_axis_tready      (m3_axis_tready                           ), //i
    .m3_axis_tdata       (qickProcessor_1_m3_axis_tdata[167:0]     ), //o
    .m4_axis_tvalid      (qickProcessor_1_m4_axis_tvalid           ), //o
    .m4_axis_tready      (m4_axis_tready                           ), //i
    .m4_axis_tdata       (qickProcessor_1_m4_axis_tdata[167:0]     ), //o
    .m5_axis_tvalid      (qickProcessor_1_m5_axis_tvalid           ), //o
    .m5_axis_tready      (m5_axis_tready                           ), //i
    .m5_axis_tdata       (qickProcessor_1_m5_axis_tdata[167:0]     ), //o
    .m6_axis_tvalid      (qickProcessor_1_m6_axis_tvalid           ), //o
    .m6_axis_tready      (m6_axis_tready                           ), //i
    .m6_axis_tdata       (qickProcessor_1_m6_axis_tdata[167:0]     ), //o
    .m7_axis_tvalid      (qickProcessor_1_m7_axis_tvalid           ), //o
    .m7_axis_tready      (m7_axis_tready                           ), //i
    .m7_axis_tdata       (qickProcessor_1_m7_axis_tdata[167:0]     ), //o
    .m8_axis_tvalid      (qickProcessor_1_m8_axis_tvalid           ), //o
    .m8_axis_tready      (m8_axis_tready                           ), //i
    .m8_axis_tdata       (qickProcessor_1_m8_axis_tdata[167:0]     ), //o
    .m9_axis_tvalid      (qickProcessor_1_m9_axis_tvalid           ), //o
    .m9_axis_tready      (m9_axis_tready                           ), //i
    .m9_axis_tdata       (qickProcessor_1_m9_axis_tdata[167:0]     ), //o
    .m10_axis_tvalid     (qickProcessor_1_m10_axis_tvalid          ), //o
    .m10_axis_tready     (m10_axis_tready                          ), //i
    .m10_axis_tdata      (qickProcessor_1_m10_axis_tdata[167:0]    ), //o
    .m11_axis_tvalid     (qickProcessor_1_m11_axis_tvalid          ), //o
    .m11_axis_tready     (m11_axis_tready                          ), //i
    .m11_axis_tdata      (qickProcessor_1_m11_axis_tdata[167:0]    ), //o
    .m12_axis_tvalid     (qickProcessor_1_m12_axis_tvalid          ), //o
    .m12_axis_tready     (m12_axis_tready                          ), //i
    .m12_axis_tdata      (qickProcessor_1_m12_axis_tdata[167:0]    ), //o
    .m13_axis_tvalid     (qickProcessor_1_m13_axis_tvalid          ), //o
    .m13_axis_tready     (m13_axis_tready                          ), //i
    .m13_axis_tdata      (qickProcessor_1_m13_axis_tdata[167:0]    ), //o
    .m14_axis_tvalid     (qickProcessor_1_m14_axis_tvalid          ), //o
    .m14_axis_tready     (m14_axis_tready                          ), //i
    .m14_axis_tdata      (qickProcessor_1_m14_axis_tdata[167:0]    ), //o
    .m15_axis_tvalid     (qickProcessor_1_m15_axis_tvalid          ), //o
    .m15_axis_tready     (m15_axis_tready                          ), //i
    .m15_axis_tdata      (qickProcessor_1_m15_axis_tdata[167:0]    ), //o
    .trig_0_o            (qickProcessor_1_trig_0_o                 ), //o
    .trig_1_o            (qickProcessor_1_trig_1_o                 ), //o
    .trig_2_o            (qickProcessor_1_trig_2_o                 ), //o
    .trig_3_o            (qickProcessor_1_trig_3_o                 ), //o
    .trig_4_o            (qickProcessor_1_trig_4_o                 ), //o
    .trig_5_o            (qickProcessor_1_trig_5_o                 ), //o
    .trig_6_o            (qickProcessor_1_trig_6_o                 ), //o
    .trig_7_o            (qickProcessor_1_trig_7_o                 ), //o
    .trig_8_o            (qickProcessor_1_trig_8_o                 ), //o
    .trig_9_o            (qickProcessor_1_trig_9_o                 ), //o
    .trig_10_o           (qickProcessor_1_trig_10_o                ), //o
    .trig_11_o           (qickProcessor_1_trig_11_o                ), //o
    .trig_12_o           (qickProcessor_1_trig_12_o                ), //o
    .trig_13_o           (qickProcessor_1_trig_13_o                ), //o
    .trig_14_o           (qickProcessor_1_trig_14_o                ), //o
    .trig_15_o           (qickProcessor_1_trig_15_o                ), //o
    .trig_16_o           (qickProcessor_1_trig_16_o                ), //o
    .trig_17_o           (qickProcessor_1_trig_17_o                ), //o
    .trig_18_o           (qickProcessor_1_trig_18_o                ), //o
    .trig_19_o           (qickProcessor_1_trig_19_o                ), //o
    .trig_20_o           (qickProcessor_1_trig_20_o                ), //o
    .trig_21_o           (qickProcessor_1_trig_21_o                ), //o
    .trig_22_o           (qickProcessor_1_trig_22_o                ), //o
    .trig_23_o           (qickProcessor_1_trig_23_o                ), //o
    .trig_24_o           (qickProcessor_1_trig_24_o                ), //o
    .trig_25_o           (qickProcessor_1_trig_25_o                ), //o
    .trig_26_o           (qickProcessor_1_trig_26_o                ), //o
    .trig_27_o           (qickProcessor_1_trig_27_o                ), //o
    .trig_28_o           (qickProcessor_1_trig_28_o                ), //o
    .trig_29_o           (qickProcessor_1_trig_29_o                ), //o
    .trig_30_o           (qickProcessor_1_trig_30_o                ), //o
    .trig_31_o           (qickProcessor_1_trig_31_o                ), //o
    .port_0_dt_o         (qickProcessor_1_port_0_dt_o[3:0]         ), //o
    .port_1_dt_o         (qickProcessor_1_port_1_dt_o[3:0]         ), //o
    .port_2_dt_o         (qickProcessor_1_port_2_dt_o[3:0]         ), //o
    .port_3_dt_o         (qickProcessor_1_port_3_dt_o[3:0]         ), //o
    .ps_debug_do         (qickProcessor_1_ps_debug_do[31:0]        ), //o
    .t_debug_do          (qickProcessor_1_t_debug_do[31:0]         ), //o
    .t_fifo_do           (qickProcessor_1_t_fifo_do[31:0]          ), //o
    .c_time_usr_do       (qickProcessor_1_c_time_usr_do[31:0]      ), //o
    .c_debug_do          (qickProcessor_1_c_debug_do[31:0]         ), //o
    .c_time_ref_do       (qickProcessor_1_c_time_ref_do[31:0]      ), //o
    .c_proc_do           (qickProcessor_1_c_proc_do[31:0]          ), //o
    .c_port_do           (qickProcessor_1_c_port_do[31:0]          ), //o
    .c_core_do           (qickProcessor_1_c_core_do[31:0]          )  //o
  );
  assign t_time_abs_o = qickProcessor_1_t_time_abs_o;
  assign pulse_sync_o = qickProcessor_1_pulse_sync_o;
  assign qnet_en_o = qickProcessor_1_qnet_en_o;
  assign qnet_op_o = qickProcessor_1_qnet_op_o;
  assign qnet_a_dt_o = qickProcessor_1_qnet_a_dt_o;
  assign qnet_b_dt_o = qickProcessor_1_qnet_b_dt_o;
  assign qnet_c_dt_o = qickProcessor_1_qnet_c_dt_o;
  assign qcom_en_o = qickProcessor_1_qcom_en_o;
  assign qcom_op_o = qickProcessor_1_qcom_op_o;
  assign qcom_dt_o = qickProcessor_1_qcom_dt_o;
  assign qp1_en_o = qickProcessor_1_qp1_en_o;
  assign qp1_op_o = qickProcessor_1_qp1_op_o;
  assign qp1_a_dt_o = qickProcessor_1_qp1_a_dt_o;
  assign qp1_b_dt_o = qickProcessor_1_qp1_b_dt_o;
  assign qp1_c_dt_o = qickProcessor_1_qp1_c_dt_o;
  assign qp1_d_dt_o = qickProcessor_1_qp1_d_dt_o;
  assign qp2_en_o = qickProcessor_1_qp2_en_o;
  assign qp2_op_o = qickProcessor_1_qp2_op_o;
  assign qp2_a_dt_o = qickProcessor_1_qp2_a_dt_o;
  assign qp2_b_dt_o = qickProcessor_1_qp2_b_dt_o;
  assign qp2_c_dt_o = qickProcessor_1_qp2_c_dt_o;
  assign qp2_d_dt_o = qickProcessor_1_qp2_d_dt_o;
  assign s_dma_axis_tready_o = qickProcessor_1_s_dma_axis_tready_o;
  assign m_dma_axis_tvalid_o = qickProcessor_1_m_dma_axis_tvalid_o;
  assign m_dma_axis_tdata_o = qickProcessor_1_m_dma_axis_tdata_o;
  assign m_dma_axis_tlast_o = qickProcessor_1_m_dma_axis_tlast_o;
  assign s_axi_awready = qickProcessor_1_s_axi_awready;
  assign s_axi_wready = qickProcessor_1_s_axi_wready;
  assign s_axi_bvalid = qickProcessor_1_s_axi_bvalid;
  assign s_axi_bresp = qickProcessor_1_s_axi_bresp;
  assign s_axi_arready = qickProcessor_1_s_axi_arready;
  assign s_axi_rvalid = qickProcessor_1_s_axi_rvalid;
  assign s_axi_rdata = qickProcessor_1_s_axi_rdata;
  assign s_axi_rresp = qickProcessor_1_s_axi_rresp;
  assign s0_axis_tready = qickProcessor_1_s0_axis_tready;
  assign s1_axis_tready = qickProcessor_1_s1_axis_tready;
  assign s2_axis_tready = qickProcessor_1_s2_axis_tready;
  assign s3_axis_tready = qickProcessor_1_s3_axis_tready;
  assign s4_axis_tready = qickProcessor_1_s4_axis_tready;
  assign s5_axis_tready = qickProcessor_1_s5_axis_tready;
  assign s6_axis_tready = qickProcessor_1_s6_axis_tready;
  assign s7_axis_tready = qickProcessor_1_s7_axis_tready;
  assign s8_axis_tready = qickProcessor_1_s8_axis_tready;
  assign s9_axis_tready = qickProcessor_1_s9_axis_tready;
  assign s10_axis_tready = qickProcessor_1_s10_axis_tready;
  assign s11_axis_tready = qickProcessor_1_s11_axis_tready;
  assign s12_axis_tready = qickProcessor_1_s12_axis_tready;
  assign s13_axis_tready = qickProcessor_1_s13_axis_tready;
  assign s14_axis_tready = qickProcessor_1_s14_axis_tready;
  assign s15_axis_tready = qickProcessor_1_s15_axis_tready;
  assign m0_axis_tvalid = qickProcessor_1_m0_axis_tvalid;
  assign m0_axis_tdata = qickProcessor_1_m0_axis_tdata;
  assign m1_axis_tvalid = qickProcessor_1_m1_axis_tvalid;
  assign m1_axis_tdata = qickProcessor_1_m1_axis_tdata;
  assign m2_axis_tvalid = qickProcessor_1_m2_axis_tvalid;
  assign m2_axis_tdata = qickProcessor_1_m2_axis_tdata;
  assign m3_axis_tvalid = qickProcessor_1_m3_axis_tvalid;
  assign m3_axis_tdata = qickProcessor_1_m3_axis_tdata;
  assign m4_axis_tvalid = qickProcessor_1_m4_axis_tvalid;
  assign m4_axis_tdata = qickProcessor_1_m4_axis_tdata;
  assign m5_axis_tvalid = qickProcessor_1_m5_axis_tvalid;
  assign m5_axis_tdata = qickProcessor_1_m5_axis_tdata;
  assign m6_axis_tvalid = qickProcessor_1_m6_axis_tvalid;
  assign m6_axis_tdata = qickProcessor_1_m6_axis_tdata;
  assign m7_axis_tvalid = qickProcessor_1_m7_axis_tvalid;
  assign m7_axis_tdata = qickProcessor_1_m7_axis_tdata;
  assign m8_axis_tvalid = qickProcessor_1_m8_axis_tvalid;
  assign m8_axis_tdata = qickProcessor_1_m8_axis_tdata;
  assign m9_axis_tvalid = qickProcessor_1_m9_axis_tvalid;
  assign m9_axis_tdata = qickProcessor_1_m9_axis_tdata;
  assign m10_axis_tvalid = qickProcessor_1_m10_axis_tvalid;
  assign m10_axis_tdata = qickProcessor_1_m10_axis_tdata;
  assign m11_axis_tvalid = qickProcessor_1_m11_axis_tvalid;
  assign m11_axis_tdata = qickProcessor_1_m11_axis_tdata;
  assign m12_axis_tvalid = qickProcessor_1_m12_axis_tvalid;
  assign m12_axis_tdata = qickProcessor_1_m12_axis_tdata;
  assign m13_axis_tvalid = qickProcessor_1_m13_axis_tvalid;
  assign m13_axis_tdata = qickProcessor_1_m13_axis_tdata;
  assign m14_axis_tvalid = qickProcessor_1_m14_axis_tvalid;
  assign m14_axis_tdata = qickProcessor_1_m14_axis_tdata;
  assign m15_axis_tvalid = qickProcessor_1_m15_axis_tvalid;
  assign m15_axis_tdata = qickProcessor_1_m15_axis_tdata;
  assign trig_0_o = qickProcessor_1_trig_0_o;
  assign trig_1_o = qickProcessor_1_trig_1_o;
  assign trig_2_o = qickProcessor_1_trig_2_o;
  assign trig_3_o = qickProcessor_1_trig_3_o;
  assign trig_4_o = qickProcessor_1_trig_4_o;
  assign trig_5_o = qickProcessor_1_trig_5_o;
  assign trig_6_o = qickProcessor_1_trig_6_o;
  assign trig_7_o = qickProcessor_1_trig_7_o;
  assign trig_8_o = qickProcessor_1_trig_8_o;
  assign trig_9_o = qickProcessor_1_trig_9_o;
  assign trig_10_o = qickProcessor_1_trig_10_o;
  assign trig_11_o = qickProcessor_1_trig_11_o;
  assign trig_12_o = qickProcessor_1_trig_12_o;
  assign trig_13_o = qickProcessor_1_trig_13_o;
  assign trig_14_o = qickProcessor_1_trig_14_o;
  assign trig_15_o = qickProcessor_1_trig_15_o;
  assign trig_16_o = qickProcessor_1_trig_16_o;
  assign trig_17_o = qickProcessor_1_trig_17_o;
  assign trig_18_o = qickProcessor_1_trig_18_o;
  assign trig_19_o = qickProcessor_1_trig_19_o;
  assign trig_20_o = qickProcessor_1_trig_20_o;
  assign trig_21_o = qickProcessor_1_trig_21_o;
  assign trig_22_o = qickProcessor_1_trig_22_o;
  assign trig_23_o = qickProcessor_1_trig_23_o;
  assign trig_24_o = qickProcessor_1_trig_24_o;
  assign trig_25_o = qickProcessor_1_trig_25_o;
  assign trig_26_o = qickProcessor_1_trig_26_o;
  assign trig_27_o = qickProcessor_1_trig_27_o;
  assign trig_28_o = qickProcessor_1_trig_28_o;
  assign trig_29_o = qickProcessor_1_trig_29_o;
  assign trig_30_o = qickProcessor_1_trig_30_o;
  assign trig_31_o = qickProcessor_1_trig_31_o;
  assign port_0_dt_o = qickProcessor_1_port_0_dt_o;
  assign port_1_dt_o = qickProcessor_1_port_1_dt_o;
  assign port_2_dt_o = qickProcessor_1_port_2_dt_o;
  assign port_3_dt_o = qickProcessor_1_port_3_dt_o;
  assign ps_debug_do = qickProcessor_1_ps_debug_do;
  assign t_debug_do = qickProcessor_1_t_debug_do;
  assign t_fifo_do = qickProcessor_1_t_fifo_do;
  assign c_time_usr_do = qickProcessor_1_c_time_usr_do;
  assign c_debug_do = qickProcessor_1_c_debug_do;
  assign c_time_ref_do = qickProcessor_1_c_time_ref_do;
  assign c_proc_do = qickProcessor_1_c_proc_do;
  assign c_port_do = qickProcessor_1_c_port_do;
  assign c_core_do = qickProcessor_1_c_core_do;

endmodule
