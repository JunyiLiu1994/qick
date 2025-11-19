// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : QickTop
// Git hash  : 7cdeb97820a27a0b6dbd8cb4d07c8ec06f038d47

`timescale 1ns/1ps

module QickTop (
  input  wire          qick_processor_0_c_clk_i,
  input  wire          qick_processor_0_c_resetn,
  input  wire          qick_processor_0_t_clk_i,
  input  wire          qick_processor_0_t_resetn,
  input  wire          qick_processor_0_ps_clk_i,
  input  wire          qick_processor_0_ps_resetn,
  input  wire          qick_processor_0_ext_flag_i,
  input  wire          qick_processor_0_proc_start_i,
  input  wire          qick_processor_0_proc_stop_i,
  input  wire          qick_processor_0_core_start_i,
  input  wire          qick_processor_0_core_stop_i,
  input  wire          qick_processor_0_time_rst_i,
  input  wire          qick_processor_0_time_init_i,
  input  wire          qick_processor_0_time_updt_i,
  input  wire [31:0]   qick_processor_0_time_dt_i,
  output wire [47:0]   qick_processor_0_t_time_abs_o,
  output wire          qick_processor_0_pulse_sync_o,
  output wire          qick_processor_0_qnet_en_o,
  output wire [4:0]    qick_processor_0_qnet_op_o,
  output wire [31:0]   qick_processor_0_qnet_a_dt_o,
  output wire [31:0]   qick_processor_0_qnet_b_dt_o,
  output wire [31:0]   qick_processor_0_qnet_c_dt_o,
  input  wire          qick_processor_0_qnet_rdy_i,
  input  wire [31:0]   qick_processor_0_qnet_dt1_i,
  input  wire [31:0]   qick_processor_0_qnet_dt2_i,
  input  wire          qick_processor_0_qnet_vld_i,
  input  wire          qick_processor_0_qnet_flag_i,
  output wire          qick_processor_0_qcom_en_o,
  output wire [4:0]    qick_processor_0_qcom_op_o,
  output wire [31:0]   qick_processor_0_qcom_dt_o,
  input  wire          qick_processor_0_qcom_rdy_i,
  input  wire [31:0]   qick_processor_0_qcom_dt1_i,
  input  wire [31:0]   qick_processor_0_qcom_dt2_i,
  input  wire          qick_processor_0_qcom_vld_i,
  input  wire          qick_processor_0_qcom_flag_i,
  output wire          qick_processor_0_qp1_en_o,
  output wire [4:0]    qick_processor_0_qp1_op_o,
  output wire [31:0]   qick_processor_0_qp1_a_dt_o,
  output wire [31:0]   qick_processor_0_qp1_b_dt_o,
  output wire [31:0]   qick_processor_0_qp1_c_dt_o,
  output wire [31:0]   qick_processor_0_qp1_d_dt_o,
  input  wire          qick_processor_0_qp1_rdy_i,
  input  wire [31:0]   qick_processor_0_qp1_dt1_i,
  input  wire [31:0]   qick_processor_0_qp1_dt2_i,
  input  wire          qick_processor_0_qp1_vld_i,
  input  wire          qick_processor_0_qp1_flag_i,
  output wire          qick_processor_0_qp2_en_o,
  output wire [4:0]    qick_processor_0_qp2_op_o,
  output wire [31:0]   qick_processor_0_qp2_a_dt_o,
  output wire [31:0]   qick_processor_0_qp2_b_dt_o,
  output wire [31:0]   qick_processor_0_qp2_c_dt_o,
  output wire [31:0]   qick_processor_0_qp2_d_dt_o,
  input  wire          qick_processor_0_qp2_rdy_i,
  input  wire [31:0]   qick_processor_0_qp2_dt1_i,
  input  wire [31:0]   qick_processor_0_qp2_dt2_i,
  input  wire          qick_processor_0_qp2_vld_i,
  input  wire          qick_processor_0_s_dma_axis_tvalid_i,
  output wire          qick_processor_0_s_dma_axis_tready_o,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [255:0]  qick_processor_0_s_dma_axis_tdata_i,
  input  wire          qick_processor_0_s_dma_axis_tlast_i,
  output wire          qick_processor_0_m_dma_axis_tvalid_o,
  input  wire          qick_processor_0_m_dma_axis_tready_i,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [255:0]  qick_processor_0_m_dma_axis_tdata_o,
  output wire          qick_processor_0_m_dma_axis_tlast_o,
  input  wire          qick_processor_0_s_axi_awvalid,
  output wire          qick_processor_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [7:0]    qick_processor_0_s_axi_awaddr,
  input  wire [2:0]    qick_processor_0_s_axi_awprot,
  input  wire          qick_processor_0_s_axi_wvalid,
  output wire          qick_processor_0_s_axi_wready,
  input  wire [31:0]   qick_processor_0_s_axi_wdata,
  input  wire [3:0]    qick_processor_0_s_axi_wstrb,
  output wire          qick_processor_0_s_axi_bvalid,
  input  wire          qick_processor_0_s_axi_bready,
  output wire [1:0]    qick_processor_0_s_axi_bresp,
  input  wire          qick_processor_0_s_axi_arvalid,
  output wire          qick_processor_0_s_axi_arready,
  input  wire [7:0]    qick_processor_0_s_axi_araddr,
  input  wire [2:0]    qick_processor_0_s_axi_arprot,
  output wire          qick_processor_0_s_axi_rvalid,
  input  wire          qick_processor_0_s_axi_rready,
  output wire [31:0]   qick_processor_0_s_axi_rdata,
  output wire [1:0]    qick_processor_0_s_axi_rresp,
  input  wire          qick_processor_0_s0_axis_tvalid,
  output wire          qick_processor_0_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s0_axis_tdata,
  input  wire          qick_processor_0_s1_axis_tvalid,
  output wire          qick_processor_0_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s1_axis_tdata,
  input  wire          qick_processor_0_s2_axis_tvalid,
  output wire          qick_processor_0_s2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s2_axis_tdata,
  input  wire          qick_processor_0_s3_axis_tvalid,
  output wire          qick_processor_0_s3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s3_axis_tdata,
  input  wire          qick_processor_0_s4_axis_tvalid,
  output wire          qick_processor_0_s4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s4_axis_tdata,
  input  wire          qick_processor_0_s5_axis_tvalid,
  output wire          qick_processor_0_s5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s5_axis_tdata,
  input  wire          qick_processor_0_s6_axis_tvalid,
  output wire          qick_processor_0_s6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s6_axis_tdata,
  input  wire          qick_processor_0_s7_axis_tvalid,
  output wire          qick_processor_0_s7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s7_axis_tdata,
  input  wire          qick_processor_0_s8_axis_tvalid,
  output wire          qick_processor_0_s8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s8_axis_tdata,
  input  wire          qick_processor_0_s9_axis_tvalid,
  output wire          qick_processor_0_s9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s9_axis_tdata,
  input  wire          qick_processor_0_s10_axis_tvalid,
  output wire          qick_processor_0_s10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s10_axis_tdata,
  input  wire          qick_processor_0_s11_axis_tvalid,
  output wire          qick_processor_0_s11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s11_axis_tdata,
  input  wire          qick_processor_0_s12_axis_tvalid,
  output wire          qick_processor_0_s12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s12_axis_tdata,
  input  wire          qick_processor_0_s13_axis_tvalid,
  output wire          qick_processor_0_s13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s13_axis_tdata,
  input  wire          qick_processor_0_s14_axis_tvalid,
  output wire          qick_processor_0_s14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s14_axis_tdata,
  input  wire          qick_processor_0_s15_axis_tvalid,
  output wire          qick_processor_0_s15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) input  wire [63:0]   qick_processor_0_s15_axis_tdata,
  output wire          qick_processor_0_m0_axis_tvalid,
  input  wire          qick_processor_0_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m0_axis_tdata,
  output wire          qick_processor_0_m1_axis_tvalid,
  input  wire          qick_processor_0_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m1_axis_tdata,
  output wire          qick_processor_0_m2_axis_tvalid,
  input  wire          qick_processor_0_m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m2_axis_tdata,
  output wire          qick_processor_0_m3_axis_tvalid,
  input  wire          qick_processor_0_m3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m3_axis_tdata,
  output wire          qick_processor_0_m4_axis_tvalid,
  input  wire          qick_processor_0_m4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m4_axis_tdata,
  output wire          qick_processor_0_m5_axis_tvalid,
  input  wire          qick_processor_0_m5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m5_axis_tdata,
  output wire          qick_processor_0_m6_axis_tvalid,
  input  wire          qick_processor_0_m6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m6_axis_tdata,
  output wire          qick_processor_0_m7_axis_tvalid,
  input  wire          qick_processor_0_m7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m7_axis_tdata,
  output wire          qick_processor_0_m8_axis_tvalid,
  input  wire          qick_processor_0_m8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m8_axis_tdata,
  output wire          qick_processor_0_m9_axis_tvalid,
  input  wire          qick_processor_0_m9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m9_axis_tdata,
  output wire          qick_processor_0_m10_axis_tvalid,
  input  wire          qick_processor_0_m10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m10_axis_tdata,
  output wire          qick_processor_0_m11_axis_tvalid,
  input  wire          qick_processor_0_m11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m11_axis_tdata,
  output wire          qick_processor_0_m12_axis_tvalid,
  input  wire          qick_processor_0_m12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m12_axis_tdata,
  output wire          qick_processor_0_m13_axis_tvalid,
  input  wire          qick_processor_0_m13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m13_axis_tdata,
  output wire          qick_processor_0_m14_axis_tvalid,
  input  wire          qick_processor_0_m14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m14_axis_tdata,
  output wire          qick_processor_0_m15_axis_tvalid,
  input  wire          qick_processor_0_m15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  qick_processor_0_m15_axis_tdata,
  output wire          qick_processor_0_trig_0_o,
  output wire          qick_processor_0_trig_1_o,
  output wire          qick_processor_0_trig_2_o,
  output wire          qick_processor_0_trig_3_o,
  output wire          qick_processor_0_trig_4_o,
  output wire          qick_processor_0_trig_5_o,
  output wire          qick_processor_0_trig_6_o,
  output wire          qick_processor_0_trig_7_o,
  output wire          qick_processor_0_trig_8_o,
  output wire          qick_processor_0_trig_9_o,
  output wire          qick_processor_0_trig_10_o,
  output wire          qick_processor_0_trig_11_o,
  output wire          qick_processor_0_trig_12_o,
  output wire          qick_processor_0_trig_13_o,
  output wire          qick_processor_0_trig_14_o,
  output wire          qick_processor_0_trig_15_o,
  output wire          qick_processor_0_trig_16_o,
  output wire          qick_processor_0_trig_17_o,
  output wire          qick_processor_0_trig_18_o,
  output wire          qick_processor_0_trig_19_o,
  output wire          qick_processor_0_trig_20_o,
  output wire          qick_processor_0_trig_21_o,
  output wire          qick_processor_0_trig_22_o,
  output wire          qick_processor_0_trig_23_o,
  output wire          qick_processor_0_trig_24_o,
  output wire          qick_processor_0_trig_25_o,
  output wire          qick_processor_0_trig_26_o,
  output wire          qick_processor_0_trig_27_o,
  output wire          qick_processor_0_trig_28_o,
  output wire          qick_processor_0_trig_29_o,
  output wire          qick_processor_0_trig_30_o,
  output wire          qick_processor_0_trig_31_o,
  output wire [3:0]    qick_processor_0_port_0_dt_o,
  output wire [3:0]    qick_processor_0_port_1_dt_o,
  output wire [3:0]    qick_processor_0_port_2_dt_o,
  output wire [3:0]    qick_processor_0_port_3_dt_o,
  output wire [31:0]   qick_processor_0_ps_debug_do,
  output wire [31:0]   qick_processor_0_t_debug_do,
  output wire [31:0]   qick_processor_0_t_fifo_do,
  output wire [31:0]   qick_processor_0_c_time_usr_do,
  output wire [31:0]   qick_processor_0_c_debug_do,
  output wire [31:0]   qick_processor_0_c_time_ref_do,
  output wire [31:0]   qick_processor_0_c_proc_do,
  output wire [31:0]   qick_processor_0_c_port_do,
  output wire [31:0]   qick_processor_0_c_core_do,
  input  wire          axis_avg_buffer_0_s_axi_awvalid,
  output wire          axis_avg_buffer_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_0_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_0_s_axi_awprot,
  input  wire          axis_avg_buffer_0_s_axi_wvalid,
  output wire          axis_avg_buffer_0_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_0_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_0_s_axi_wstrb,
  output wire          axis_avg_buffer_0_s_axi_bvalid,
  input  wire          axis_avg_buffer_0_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_0_s_axi_bresp,
  input  wire          axis_avg_buffer_0_s_axi_arvalid,
  output wire          axis_avg_buffer_0_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_0_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_0_s_axi_arprot,
  output wire          axis_avg_buffer_0_s_axi_rvalid,
  input  wire          axis_avg_buffer_0_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_0_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_0_s_axi_rresp,
  input  wire          axis_avg_buffer_0_s_axi_aclk_i,
  input  wire          axis_avg_buffer_0_s_axi_aresetn,
  input  wire          axis_avg_buffer_0_trigger,
  input  wire          axis_avg_buffer_0_s_axis_tvalid,
  output wire          axis_avg_buffer_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_0_s_axis_tdata,
  input  wire          axis_avg_buffer_0_s_axis_aclk_i,
  input  wire          axis_avg_buffer_0_s_axis_aresetn,
  input  wire          axis_avg_buffer_0_m_axis_aclk_i,
  input  wire          axis_avg_buffer_0_m_axis_aresetn,
  output wire          axis_avg_buffer_0_m0_axis_tvalid,
  input  wire          axis_avg_buffer_0_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_0_m0_axis_tdata,
  output wire          axis_avg_buffer_0_m0_axis_tlast,
  output wire          axis_avg_buffer_0_m1_axis_tvalid,
  input  wire          axis_avg_buffer_0_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_0_m1_axis_tdata,
  output wire          axis_avg_buffer_0_m1_axis_tlast,
  output wire          axis_avg_buffer_0_m2_axis_tvalid,
  input  wire          axis_avg_buffer_0_m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_0_m2_axis_tdata,
  input  wire          axis_avg_buffer_1_s_axi_awvalid,
  output wire          axis_avg_buffer_1_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_1_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_1_s_axi_awprot,
  input  wire          axis_avg_buffer_1_s_axi_wvalid,
  output wire          axis_avg_buffer_1_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_1_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_1_s_axi_wstrb,
  output wire          axis_avg_buffer_1_s_axi_bvalid,
  input  wire          axis_avg_buffer_1_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_1_s_axi_bresp,
  input  wire          axis_avg_buffer_1_s_axi_arvalid,
  output wire          axis_avg_buffer_1_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_1_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_1_s_axi_arprot,
  output wire          axis_avg_buffer_1_s_axi_rvalid,
  input  wire          axis_avg_buffer_1_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_1_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_1_s_axi_rresp,
  input  wire          axis_avg_buffer_1_s_axi_aclk_i,
  input  wire          axis_avg_buffer_1_s_axi_aresetn,
  input  wire          axis_avg_buffer_1_trigger,
  input  wire          axis_avg_buffer_1_s_axis_tvalid,
  output wire          axis_avg_buffer_1_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_1_s_axis_tdata,
  input  wire          axis_avg_buffer_1_s_axis_aclk_i,
  input  wire          axis_avg_buffer_1_s_axis_aresetn,
  input  wire          axis_avg_buffer_1_m_axis_aclk_i,
  input  wire          axis_avg_buffer_1_m_axis_aresetn,
  output wire          axis_avg_buffer_1_m0_axis_tvalid,
  input  wire          axis_avg_buffer_1_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_1_m0_axis_tdata,
  output wire          axis_avg_buffer_1_m0_axis_tlast,
  output wire          axis_avg_buffer_1_m1_axis_tvalid,
  input  wire          axis_avg_buffer_1_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_1_m1_axis_tdata,
  output wire          axis_avg_buffer_1_m1_axis_tlast,
  output wire          axis_avg_buffer_1_m2_axis_tvalid,
  input  wire          axis_avg_buffer_1_m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_1_m2_axis_tdata
);

  wire       [47:0]   qickProcessor_t_time_abs_o;
  wire                qickProcessor_pulse_sync_o;
  wire                qickProcessor_qnet_en_o;
  wire       [4:0]    qickProcessor_qnet_op_o;
  wire       [31:0]   qickProcessor_qnet_a_dt_o;
  wire       [31:0]   qickProcessor_qnet_b_dt_o;
  wire       [31:0]   qickProcessor_qnet_c_dt_o;
  wire                qickProcessor_qcom_en_o;
  wire       [4:0]    qickProcessor_qcom_op_o;
  wire       [31:0]   qickProcessor_qcom_dt_o;
  wire                qickProcessor_qp1_en_o;
  wire       [4:0]    qickProcessor_qp1_op_o;
  wire       [31:0]   qickProcessor_qp1_a_dt_o;
  wire       [31:0]   qickProcessor_qp1_b_dt_o;
  wire       [31:0]   qickProcessor_qp1_c_dt_o;
  wire       [31:0]   qickProcessor_qp1_d_dt_o;
  wire                qickProcessor_qp2_en_o;
  wire       [4:0]    qickProcessor_qp2_op_o;
  wire       [31:0]   qickProcessor_qp2_a_dt_o;
  wire       [31:0]   qickProcessor_qp2_b_dt_o;
  wire       [31:0]   qickProcessor_qp2_c_dt_o;
  wire       [31:0]   qickProcessor_qp2_d_dt_o;
  wire                qickProcessor_s_dma_axis_tready_o;
  wire                qickProcessor_m_dma_axis_tvalid_o;
  wire       [255:0]  qickProcessor_m_dma_axis_tdata_o;
  wire                qickProcessor_m_dma_axis_tlast_o;
  wire                qickProcessor_s_axi_awready;
  wire                qickProcessor_s_axi_wready;
  wire                qickProcessor_s_axi_bvalid;
  wire       [1:0]    qickProcessor_s_axi_bresp;
  wire                qickProcessor_s_axi_arready;
  wire                qickProcessor_s_axi_rvalid;
  wire       [31:0]   qickProcessor_s_axi_rdata;
  wire       [1:0]    qickProcessor_s_axi_rresp;
  wire                qickProcessor_s0_axis_tready;
  wire                qickProcessor_s1_axis_tready;
  wire                qickProcessor_s2_axis_tready;
  wire                qickProcessor_s3_axis_tready;
  wire                qickProcessor_s4_axis_tready;
  wire                qickProcessor_s5_axis_tready;
  wire                qickProcessor_s6_axis_tready;
  wire                qickProcessor_s7_axis_tready;
  wire                qickProcessor_s8_axis_tready;
  wire                qickProcessor_s9_axis_tready;
  wire                qickProcessor_s10_axis_tready;
  wire                qickProcessor_s11_axis_tready;
  wire                qickProcessor_s12_axis_tready;
  wire                qickProcessor_s13_axis_tready;
  wire                qickProcessor_s14_axis_tready;
  wire                qickProcessor_s15_axis_tready;
  wire                qickProcessor_m0_axis_tvalid;
  wire       [167:0]  qickProcessor_m0_axis_tdata;
  wire                qickProcessor_m1_axis_tvalid;
  wire       [167:0]  qickProcessor_m1_axis_tdata;
  wire                qickProcessor_m2_axis_tvalid;
  wire       [167:0]  qickProcessor_m2_axis_tdata;
  wire                qickProcessor_m3_axis_tvalid;
  wire       [167:0]  qickProcessor_m3_axis_tdata;
  wire                qickProcessor_m4_axis_tvalid;
  wire       [167:0]  qickProcessor_m4_axis_tdata;
  wire                qickProcessor_m5_axis_tvalid;
  wire       [167:0]  qickProcessor_m5_axis_tdata;
  wire                qickProcessor_m6_axis_tvalid;
  wire       [167:0]  qickProcessor_m6_axis_tdata;
  wire                qickProcessor_m7_axis_tvalid;
  wire       [167:0]  qickProcessor_m7_axis_tdata;
  wire                qickProcessor_m8_axis_tvalid;
  wire       [167:0]  qickProcessor_m8_axis_tdata;
  wire                qickProcessor_m9_axis_tvalid;
  wire       [167:0]  qickProcessor_m9_axis_tdata;
  wire                qickProcessor_m10_axis_tvalid;
  wire       [167:0]  qickProcessor_m10_axis_tdata;
  wire                qickProcessor_m11_axis_tvalid;
  wire       [167:0]  qickProcessor_m11_axis_tdata;
  wire                qickProcessor_m12_axis_tvalid;
  wire       [167:0]  qickProcessor_m12_axis_tdata;
  wire                qickProcessor_m13_axis_tvalid;
  wire       [167:0]  qickProcessor_m13_axis_tdata;
  wire                qickProcessor_m14_axis_tvalid;
  wire       [167:0]  qickProcessor_m14_axis_tdata;
  wire                qickProcessor_m15_axis_tvalid;
  wire       [167:0]  qickProcessor_m15_axis_tdata;
  wire                qickProcessor_trig_0_o;
  wire                qickProcessor_trig_1_o;
  wire                qickProcessor_trig_2_o;
  wire                qickProcessor_trig_3_o;
  wire                qickProcessor_trig_4_o;
  wire                qickProcessor_trig_5_o;
  wire                qickProcessor_trig_6_o;
  wire                qickProcessor_trig_7_o;
  wire                qickProcessor_trig_8_o;
  wire                qickProcessor_trig_9_o;
  wire                qickProcessor_trig_10_o;
  wire                qickProcessor_trig_11_o;
  wire                qickProcessor_trig_12_o;
  wire                qickProcessor_trig_13_o;
  wire                qickProcessor_trig_14_o;
  wire                qickProcessor_trig_15_o;
  wire                qickProcessor_trig_16_o;
  wire                qickProcessor_trig_17_o;
  wire                qickProcessor_trig_18_o;
  wire                qickProcessor_trig_19_o;
  wire                qickProcessor_trig_20_o;
  wire                qickProcessor_trig_21_o;
  wire                qickProcessor_trig_22_o;
  wire                qickProcessor_trig_23_o;
  wire                qickProcessor_trig_24_o;
  wire                qickProcessor_trig_25_o;
  wire                qickProcessor_trig_26_o;
  wire                qickProcessor_trig_27_o;
  wire                qickProcessor_trig_28_o;
  wire                qickProcessor_trig_29_o;
  wire                qickProcessor_trig_30_o;
  wire                qickProcessor_trig_31_o;
  wire       [3:0]    qickProcessor_port_0_dt_o;
  wire       [3:0]    qickProcessor_port_1_dt_o;
  wire       [3:0]    qickProcessor_port_2_dt_o;
  wire       [3:0]    qickProcessor_port_3_dt_o;
  wire       [31:0]   qickProcessor_ps_debug_do;
  wire       [31:0]   qickProcessor_t_debug_do;
  wire       [31:0]   qickProcessor_t_fifo_do;
  wire       [31:0]   qickProcessor_c_time_usr_do;
  wire       [31:0]   qickProcessor_c_debug_do;
  wire       [31:0]   qickProcessor_c_time_ref_do;
  wire       [31:0]   qickProcessor_c_proc_do;
  wire       [31:0]   qickProcessor_c_port_do;
  wire       [31:0]   qickProcessor_c_core_do;
  wire                axis_avg_buffer_0_s_axi_awready_1;
  wire                axis_avg_buffer_0_s_axi_wready_1;
  wire                axis_avg_buffer_0_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_0_s_axi_bresp_1;
  wire                axis_avg_buffer_0_s_axi_arready_1;
  wire                axis_avg_buffer_0_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_0_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_0_s_axi_rresp_1;
  wire                axis_avg_buffer_0_s_axis_tready_1;
  wire                axis_avg_buffer_0_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_0_m0_axis_tdata_1;
  wire                axis_avg_buffer_0_m0_axis_tlast_1;
  wire                axis_avg_buffer_0_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_0_m1_axis_tdata_1;
  wire                axis_avg_buffer_0_m1_axis_tlast_1;
  wire                axis_avg_buffer_0_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_0_m2_axis_tdata_1;
  wire                axis_avg_buffer_1_s_axi_awready_1;
  wire                axis_avg_buffer_1_s_axi_wready_1;
  wire                axis_avg_buffer_1_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_1_s_axi_bresp_1;
  wire                axis_avg_buffer_1_s_axi_arready_1;
  wire                axis_avg_buffer_1_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_1_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_1_s_axi_rresp_1;
  wire                axis_avg_buffer_1_s_axis_tready_1;
  wire                axis_avg_buffer_1_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_1_m0_axis_tdata_1;
  wire                axis_avg_buffer_1_m0_axis_tlast_1;
  wire                axis_avg_buffer_1_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_1_m1_axis_tdata_1;
  wire                axis_avg_buffer_1_m1_axis_tlast_1;
  wire                axis_avg_buffer_1_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_1_m2_axis_tdata_1;

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
  ) qickProcessor (
    .c_clk_i             (qick_processor_0_c_clk_i                  ), //i
    .c_resetn            (qick_processor_0_c_resetn                 ), //i
    .t_clk_i             (qick_processor_0_t_clk_i                  ), //i
    .t_resetn            (qick_processor_0_t_resetn                 ), //i
    .ps_clk_i            (qick_processor_0_ps_clk_i                 ), //i
    .ps_resetn           (qick_processor_0_ps_resetn                ), //i
    .ext_flag_i          (qick_processor_0_ext_flag_i               ), //i
    .proc_start_i        (qick_processor_0_proc_start_i             ), //i
    .proc_stop_i         (qick_processor_0_proc_stop_i              ), //i
    .core_start_i        (qick_processor_0_core_start_i             ), //i
    .core_stop_i         (qick_processor_0_core_stop_i              ), //i
    .time_rst_i          (qick_processor_0_time_rst_i               ), //i
    .time_init_i         (qick_processor_0_time_init_i              ), //i
    .time_updt_i         (qick_processor_0_time_updt_i              ), //i
    .time_dt_i           (qick_processor_0_time_dt_i[31:0]          ), //i
    .t_time_abs_o        (qickProcessor_t_time_abs_o[47:0]          ), //o
    .pulse_sync_o        (qickProcessor_pulse_sync_o                ), //o
    .qnet_en_o           (qickProcessor_qnet_en_o                   ), //o
    .qnet_op_o           (qickProcessor_qnet_op_o[4:0]              ), //o
    .qnet_a_dt_o         (qickProcessor_qnet_a_dt_o[31:0]           ), //o
    .qnet_b_dt_o         (qickProcessor_qnet_b_dt_o[31:0]           ), //o
    .qnet_c_dt_o         (qickProcessor_qnet_c_dt_o[31:0]           ), //o
    .qnet_rdy_i          (qick_processor_0_qnet_rdy_i               ), //i
    .qnet_dt1_i          (qick_processor_0_qnet_dt1_i[31:0]         ), //i
    .qnet_dt2_i          (qick_processor_0_qnet_dt2_i[31:0]         ), //i
    .qnet_vld_i          (qick_processor_0_qnet_vld_i               ), //i
    .qnet_flag_i         (qick_processor_0_qnet_flag_i              ), //i
    .qcom_en_o           (qickProcessor_qcom_en_o                   ), //o
    .qcom_op_o           (qickProcessor_qcom_op_o[4:0]              ), //o
    .qcom_dt_o           (qickProcessor_qcom_dt_o[31:0]             ), //o
    .qcom_rdy_i          (qick_processor_0_qcom_rdy_i               ), //i
    .qcom_dt1_i          (qick_processor_0_qcom_dt1_i[31:0]         ), //i
    .qcom_dt2_i          (qick_processor_0_qcom_dt2_i[31:0]         ), //i
    .qcom_vld_i          (qick_processor_0_qcom_vld_i               ), //i
    .qcom_flag_i         (qick_processor_0_qcom_flag_i              ), //i
    .qp1_en_o            (qickProcessor_qp1_en_o                    ), //o
    .qp1_op_o            (qickProcessor_qp1_op_o[4:0]               ), //o
    .qp1_a_dt_o          (qickProcessor_qp1_a_dt_o[31:0]            ), //o
    .qp1_b_dt_o          (qickProcessor_qp1_b_dt_o[31:0]            ), //o
    .qp1_c_dt_o          (qickProcessor_qp1_c_dt_o[31:0]            ), //o
    .qp1_d_dt_o          (qickProcessor_qp1_d_dt_o[31:0]            ), //o
    .qp1_rdy_i           (qick_processor_0_qp1_rdy_i                ), //i
    .qp1_dt1_i           (qick_processor_0_qp1_dt1_i[31:0]          ), //i
    .qp1_dt2_i           (qick_processor_0_qp1_dt2_i[31:0]          ), //i
    .qp1_vld_i           (qick_processor_0_qp1_vld_i                ), //i
    .qp1_flag_i          (qick_processor_0_qp1_flag_i               ), //i
    .qp2_en_o            (qickProcessor_qp2_en_o                    ), //o
    .qp2_op_o            (qickProcessor_qp2_op_o[4:0]               ), //o
    .qp2_a_dt_o          (qickProcessor_qp2_a_dt_o[31:0]            ), //o
    .qp2_b_dt_o          (qickProcessor_qp2_b_dt_o[31:0]            ), //o
    .qp2_c_dt_o          (qickProcessor_qp2_c_dt_o[31:0]            ), //o
    .qp2_d_dt_o          (qickProcessor_qp2_d_dt_o[31:0]            ), //o
    .qp2_rdy_i           (qick_processor_0_qp2_rdy_i                ), //i
    .qp2_dt1_i           (qick_processor_0_qp2_dt1_i[31:0]          ), //i
    .qp2_dt2_i           (qick_processor_0_qp2_dt2_i[31:0]          ), //i
    .qp2_vld_i           (qick_processor_0_qp2_vld_i                ), //i
    .s_dma_axis_tvalid_i (qick_processor_0_s_dma_axis_tvalid_i      ), //i
    .s_dma_axis_tready_o (qickProcessor_s_dma_axis_tready_o         ), //o
    .s_dma_axis_tdata_i  (qick_processor_0_s_dma_axis_tdata_i[255:0]), //i
    .s_dma_axis_tlast_i  (qick_processor_0_s_dma_axis_tlast_i       ), //i
    .m_dma_axis_tvalid_o (qickProcessor_m_dma_axis_tvalid_o         ), //o
    .m_dma_axis_tready_i (qick_processor_0_m_dma_axis_tready_i      ), //i
    .m_dma_axis_tdata_o  (qickProcessor_m_dma_axis_tdata_o[255:0]   ), //o
    .m_dma_axis_tlast_o  (qickProcessor_m_dma_axis_tlast_o          ), //o
    .s_axi_awvalid       (qick_processor_0_s_axi_awvalid            ), //i
    .s_axi_awready       (qickProcessor_s_axi_awready               ), //o
    .s_axi_awaddr        (qick_processor_0_s_axi_awaddr[7:0]        ), //i
    .s_axi_awprot        (qick_processor_0_s_axi_awprot[2:0]        ), //i
    .s_axi_wvalid        (qick_processor_0_s_axi_wvalid             ), //i
    .s_axi_wready        (qickProcessor_s_axi_wready                ), //o
    .s_axi_wdata         (qick_processor_0_s_axi_wdata[31:0]        ), //i
    .s_axi_wstrb         (qick_processor_0_s_axi_wstrb[3:0]         ), //i
    .s_axi_bvalid        (qickProcessor_s_axi_bvalid                ), //o
    .s_axi_bready        (qick_processor_0_s_axi_bready             ), //i
    .s_axi_bresp         (qickProcessor_s_axi_bresp[1:0]            ), //o
    .s_axi_arvalid       (qick_processor_0_s_axi_arvalid            ), //i
    .s_axi_arready       (qickProcessor_s_axi_arready               ), //o
    .s_axi_araddr        (qick_processor_0_s_axi_araddr[7:0]        ), //i
    .s_axi_arprot        (qick_processor_0_s_axi_arprot[2:0]        ), //i
    .s_axi_rvalid        (qickProcessor_s_axi_rvalid                ), //o
    .s_axi_rready        (qick_processor_0_s_axi_rready             ), //i
    .s_axi_rdata         (qickProcessor_s_axi_rdata[31:0]           ), //o
    .s_axi_rresp         (qickProcessor_s_axi_rresp[1:0]            ), //o
    .s0_axis_tvalid      (qick_processor_0_s0_axis_tvalid           ), //i
    .s0_axis_tready      (qickProcessor_s0_axis_tready              ), //o
    .s0_axis_tdata       (qick_processor_0_s0_axis_tdata[63:0]      ), //i
    .s1_axis_tvalid      (qick_processor_0_s1_axis_tvalid           ), //i
    .s1_axis_tready      (qickProcessor_s1_axis_tready              ), //o
    .s1_axis_tdata       (qick_processor_0_s1_axis_tdata[63:0]      ), //i
    .s2_axis_tvalid      (qick_processor_0_s2_axis_tvalid           ), //i
    .s2_axis_tready      (qickProcessor_s2_axis_tready              ), //o
    .s2_axis_tdata       (qick_processor_0_s2_axis_tdata[63:0]      ), //i
    .s3_axis_tvalid      (qick_processor_0_s3_axis_tvalid           ), //i
    .s3_axis_tready      (qickProcessor_s3_axis_tready              ), //o
    .s3_axis_tdata       (qick_processor_0_s3_axis_tdata[63:0]      ), //i
    .s4_axis_tvalid      (qick_processor_0_s4_axis_tvalid           ), //i
    .s4_axis_tready      (qickProcessor_s4_axis_tready              ), //o
    .s4_axis_tdata       (qick_processor_0_s4_axis_tdata[63:0]      ), //i
    .s5_axis_tvalid      (qick_processor_0_s5_axis_tvalid           ), //i
    .s5_axis_tready      (qickProcessor_s5_axis_tready              ), //o
    .s5_axis_tdata       (qick_processor_0_s5_axis_tdata[63:0]      ), //i
    .s6_axis_tvalid      (qick_processor_0_s6_axis_tvalid           ), //i
    .s6_axis_tready      (qickProcessor_s6_axis_tready              ), //o
    .s6_axis_tdata       (qick_processor_0_s6_axis_tdata[63:0]      ), //i
    .s7_axis_tvalid      (qick_processor_0_s7_axis_tvalid           ), //i
    .s7_axis_tready      (qickProcessor_s7_axis_tready              ), //o
    .s7_axis_tdata       (qick_processor_0_s7_axis_tdata[63:0]      ), //i
    .s8_axis_tvalid      (qick_processor_0_s8_axis_tvalid           ), //i
    .s8_axis_tready      (qickProcessor_s8_axis_tready              ), //o
    .s8_axis_tdata       (qick_processor_0_s8_axis_tdata[63:0]      ), //i
    .s9_axis_tvalid      (qick_processor_0_s9_axis_tvalid           ), //i
    .s9_axis_tready      (qickProcessor_s9_axis_tready              ), //o
    .s9_axis_tdata       (qick_processor_0_s9_axis_tdata[63:0]      ), //i
    .s10_axis_tvalid     (qick_processor_0_s10_axis_tvalid          ), //i
    .s10_axis_tready     (qickProcessor_s10_axis_tready             ), //o
    .s10_axis_tdata      (qick_processor_0_s10_axis_tdata[63:0]     ), //i
    .s11_axis_tvalid     (qick_processor_0_s11_axis_tvalid          ), //i
    .s11_axis_tready     (qickProcessor_s11_axis_tready             ), //o
    .s11_axis_tdata      (qick_processor_0_s11_axis_tdata[63:0]     ), //i
    .s12_axis_tvalid     (qick_processor_0_s12_axis_tvalid          ), //i
    .s12_axis_tready     (qickProcessor_s12_axis_tready             ), //o
    .s12_axis_tdata      (qick_processor_0_s12_axis_tdata[63:0]     ), //i
    .s13_axis_tvalid     (qick_processor_0_s13_axis_tvalid          ), //i
    .s13_axis_tready     (qickProcessor_s13_axis_tready             ), //o
    .s13_axis_tdata      (qick_processor_0_s13_axis_tdata[63:0]     ), //i
    .s14_axis_tvalid     (qick_processor_0_s14_axis_tvalid          ), //i
    .s14_axis_tready     (qickProcessor_s14_axis_tready             ), //o
    .s14_axis_tdata      (qick_processor_0_s14_axis_tdata[63:0]     ), //i
    .s15_axis_tvalid     (qick_processor_0_s15_axis_tvalid          ), //i
    .s15_axis_tready     (qickProcessor_s15_axis_tready             ), //o
    .s15_axis_tdata      (qick_processor_0_s15_axis_tdata[63:0]     ), //i
    .m0_axis_tvalid      (qickProcessor_m0_axis_tvalid              ), //o
    .m0_axis_tready      (qick_processor_0_m0_axis_tready           ), //i
    .m0_axis_tdata       (qickProcessor_m0_axis_tdata[167:0]        ), //o
    .m1_axis_tvalid      (qickProcessor_m1_axis_tvalid              ), //o
    .m1_axis_tready      (qick_processor_0_m1_axis_tready           ), //i
    .m1_axis_tdata       (qickProcessor_m1_axis_tdata[167:0]        ), //o
    .m2_axis_tvalid      (qickProcessor_m2_axis_tvalid              ), //o
    .m2_axis_tready      (qick_processor_0_m2_axis_tready           ), //i
    .m2_axis_tdata       (qickProcessor_m2_axis_tdata[167:0]        ), //o
    .m3_axis_tvalid      (qickProcessor_m3_axis_tvalid              ), //o
    .m3_axis_tready      (qick_processor_0_m3_axis_tready           ), //i
    .m3_axis_tdata       (qickProcessor_m3_axis_tdata[167:0]        ), //o
    .m4_axis_tvalid      (qickProcessor_m4_axis_tvalid              ), //o
    .m4_axis_tready      (qick_processor_0_m4_axis_tready           ), //i
    .m4_axis_tdata       (qickProcessor_m4_axis_tdata[167:0]        ), //o
    .m5_axis_tvalid      (qickProcessor_m5_axis_tvalid              ), //o
    .m5_axis_tready      (qick_processor_0_m5_axis_tready           ), //i
    .m5_axis_tdata       (qickProcessor_m5_axis_tdata[167:0]        ), //o
    .m6_axis_tvalid      (qickProcessor_m6_axis_tvalid              ), //o
    .m6_axis_tready      (qick_processor_0_m6_axis_tready           ), //i
    .m6_axis_tdata       (qickProcessor_m6_axis_tdata[167:0]        ), //o
    .m7_axis_tvalid      (qickProcessor_m7_axis_tvalid              ), //o
    .m7_axis_tready      (qick_processor_0_m7_axis_tready           ), //i
    .m7_axis_tdata       (qickProcessor_m7_axis_tdata[167:0]        ), //o
    .m8_axis_tvalid      (qickProcessor_m8_axis_tvalid              ), //o
    .m8_axis_tready      (qick_processor_0_m8_axis_tready           ), //i
    .m8_axis_tdata       (qickProcessor_m8_axis_tdata[167:0]        ), //o
    .m9_axis_tvalid      (qickProcessor_m9_axis_tvalid              ), //o
    .m9_axis_tready      (qick_processor_0_m9_axis_tready           ), //i
    .m9_axis_tdata       (qickProcessor_m9_axis_tdata[167:0]        ), //o
    .m10_axis_tvalid     (qickProcessor_m10_axis_tvalid             ), //o
    .m10_axis_tready     (qick_processor_0_m10_axis_tready          ), //i
    .m10_axis_tdata      (qickProcessor_m10_axis_tdata[167:0]       ), //o
    .m11_axis_tvalid     (qickProcessor_m11_axis_tvalid             ), //o
    .m11_axis_tready     (qick_processor_0_m11_axis_tready          ), //i
    .m11_axis_tdata      (qickProcessor_m11_axis_tdata[167:0]       ), //o
    .m12_axis_tvalid     (qickProcessor_m12_axis_tvalid             ), //o
    .m12_axis_tready     (qick_processor_0_m12_axis_tready          ), //i
    .m12_axis_tdata      (qickProcessor_m12_axis_tdata[167:0]       ), //o
    .m13_axis_tvalid     (qickProcessor_m13_axis_tvalid             ), //o
    .m13_axis_tready     (qick_processor_0_m13_axis_tready          ), //i
    .m13_axis_tdata      (qickProcessor_m13_axis_tdata[167:0]       ), //o
    .m14_axis_tvalid     (qickProcessor_m14_axis_tvalid             ), //o
    .m14_axis_tready     (qick_processor_0_m14_axis_tready          ), //i
    .m14_axis_tdata      (qickProcessor_m14_axis_tdata[167:0]       ), //o
    .m15_axis_tvalid     (qickProcessor_m15_axis_tvalid             ), //o
    .m15_axis_tready     (qick_processor_0_m15_axis_tready          ), //i
    .m15_axis_tdata      (qickProcessor_m15_axis_tdata[167:0]       ), //o
    .trig_0_o            (qickProcessor_trig_0_o                    ), //o
    .trig_1_o            (qickProcessor_trig_1_o                    ), //o
    .trig_2_o            (qickProcessor_trig_2_o                    ), //o
    .trig_3_o            (qickProcessor_trig_3_o                    ), //o
    .trig_4_o            (qickProcessor_trig_4_o                    ), //o
    .trig_5_o            (qickProcessor_trig_5_o                    ), //o
    .trig_6_o            (qickProcessor_trig_6_o                    ), //o
    .trig_7_o            (qickProcessor_trig_7_o                    ), //o
    .trig_8_o            (qickProcessor_trig_8_o                    ), //o
    .trig_9_o            (qickProcessor_trig_9_o                    ), //o
    .trig_10_o           (qickProcessor_trig_10_o                   ), //o
    .trig_11_o           (qickProcessor_trig_11_o                   ), //o
    .trig_12_o           (qickProcessor_trig_12_o                   ), //o
    .trig_13_o           (qickProcessor_trig_13_o                   ), //o
    .trig_14_o           (qickProcessor_trig_14_o                   ), //o
    .trig_15_o           (qickProcessor_trig_15_o                   ), //o
    .trig_16_o           (qickProcessor_trig_16_o                   ), //o
    .trig_17_o           (qickProcessor_trig_17_o                   ), //o
    .trig_18_o           (qickProcessor_trig_18_o                   ), //o
    .trig_19_o           (qickProcessor_trig_19_o                   ), //o
    .trig_20_o           (qickProcessor_trig_20_o                   ), //o
    .trig_21_o           (qickProcessor_trig_21_o                   ), //o
    .trig_22_o           (qickProcessor_trig_22_o                   ), //o
    .trig_23_o           (qickProcessor_trig_23_o                   ), //o
    .trig_24_o           (qickProcessor_trig_24_o                   ), //o
    .trig_25_o           (qickProcessor_trig_25_o                   ), //o
    .trig_26_o           (qickProcessor_trig_26_o                   ), //o
    .trig_27_o           (qickProcessor_trig_27_o                   ), //o
    .trig_28_o           (qickProcessor_trig_28_o                   ), //o
    .trig_29_o           (qickProcessor_trig_29_o                   ), //o
    .trig_30_o           (qickProcessor_trig_30_o                   ), //o
    .trig_31_o           (qickProcessor_trig_31_o                   ), //o
    .port_0_dt_o         (qickProcessor_port_0_dt_o[3:0]            ), //o
    .port_1_dt_o         (qickProcessor_port_1_dt_o[3:0]            ), //o
    .port_2_dt_o         (qickProcessor_port_2_dt_o[3:0]            ), //o
    .port_3_dt_o         (qickProcessor_port_3_dt_o[3:0]            ), //o
    .ps_debug_do         (qickProcessor_ps_debug_do[31:0]           ), //o
    .t_debug_do          (qickProcessor_t_debug_do[31:0]            ), //o
    .t_fifo_do           (qickProcessor_t_fifo_do[31:0]             ), //o
    .c_time_usr_do       (qickProcessor_c_time_usr_do[31:0]         ), //o
    .c_debug_do          (qickProcessor_c_debug_do[31:0]            ), //o
    .c_time_ref_do       (qickProcessor_c_time_ref_do[31:0]         ), //o
    .c_proc_do           (qickProcessor_c_proc_do[31:0]             ), //o
    .c_port_do           (qickProcessor_c_port_do[31:0]             ), //o
    .c_core_do           (qickProcessor_c_core_do[31:0]             )  //o
  );
  AxisAvgBuffer axis_avg_buffer_0 (
    .s_axi_awvalid  (axis_avg_buffer_0_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_0_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_0_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_0_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_0_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_0_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_0_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_0_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_0_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_0_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_0_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_0_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_0_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_0_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_0_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_0_s_axi_aclk_i         ), //i
    .s_axi_aresetn  (axis_avg_buffer_0_s_axi_aresetn        ), //i
    .trigger        (axis_avg_buffer_0_trigger              ), //i
    .s_axis_tvalid  (axis_avg_buffer_0_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_0_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_0_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_0_s_axis_aclk_i        ), //i
    .s_axis_aresetn (axis_avg_buffer_0_s_axis_aresetn       ), //i
    .m_axis_aclk_i  (axis_avg_buffer_0_m_axis_aclk_i        ), //i
    .m_axis_aresetn (axis_avg_buffer_0_m_axis_aresetn       ), //i
    .m0_axis_tvalid (axis_avg_buffer_0_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_0_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_0_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_0_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_0_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_0_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_0_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_0_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_0_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (axis_avg_buffer_0_m2_axis_tready       ), //i
    .m2_axis_tdata  (axis_avg_buffer_0_m2_axis_tdata_1[63:0])  //o
  );
  AxisAvgBuffer axis_avg_buffer_1 (
    .s_axi_awvalid  (axis_avg_buffer_1_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_1_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_1_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_1_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_1_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_1_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_1_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_1_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_1_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_1_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_1_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_1_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_1_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_1_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_1_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_1_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_1_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_1_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_1_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_1_s_axi_aclk_i         ), //i
    .s_axi_aresetn  (axis_avg_buffer_1_s_axi_aresetn        ), //i
    .trigger        (axis_avg_buffer_1_trigger              ), //i
    .s_axis_tvalid  (axis_avg_buffer_1_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_1_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_1_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_1_s_axis_aclk_i        ), //i
    .s_axis_aresetn (axis_avg_buffer_1_s_axis_aresetn       ), //i
    .m_axis_aclk_i  (axis_avg_buffer_1_m_axis_aclk_i        ), //i
    .m_axis_aresetn (axis_avg_buffer_1_m_axis_aresetn       ), //i
    .m0_axis_tvalid (axis_avg_buffer_1_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_1_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_1_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_1_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_1_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_1_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_1_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_1_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_1_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (axis_avg_buffer_1_m2_axis_tready       ), //i
    .m2_axis_tdata  (axis_avg_buffer_1_m2_axis_tdata_1[63:0])  //o
  );
  assign qick_processor_0_t_time_abs_o = qickProcessor_t_time_abs_o;
  assign qick_processor_0_pulse_sync_o = qickProcessor_pulse_sync_o;
  assign qick_processor_0_qnet_en_o = qickProcessor_qnet_en_o;
  assign qick_processor_0_qnet_op_o = qickProcessor_qnet_op_o;
  assign qick_processor_0_qnet_a_dt_o = qickProcessor_qnet_a_dt_o;
  assign qick_processor_0_qnet_b_dt_o = qickProcessor_qnet_b_dt_o;
  assign qick_processor_0_qnet_c_dt_o = qickProcessor_qnet_c_dt_o;
  assign qick_processor_0_qcom_en_o = qickProcessor_qcom_en_o;
  assign qick_processor_0_qcom_op_o = qickProcessor_qcom_op_o;
  assign qick_processor_0_qcom_dt_o = qickProcessor_qcom_dt_o;
  assign qick_processor_0_qp1_en_o = qickProcessor_qp1_en_o;
  assign qick_processor_0_qp1_op_o = qickProcessor_qp1_op_o;
  assign qick_processor_0_qp1_a_dt_o = qickProcessor_qp1_a_dt_o;
  assign qick_processor_0_qp1_b_dt_o = qickProcessor_qp1_b_dt_o;
  assign qick_processor_0_qp1_c_dt_o = qickProcessor_qp1_c_dt_o;
  assign qick_processor_0_qp1_d_dt_o = qickProcessor_qp1_d_dt_o;
  assign qick_processor_0_qp2_en_o = qickProcessor_qp2_en_o;
  assign qick_processor_0_qp2_op_o = qickProcessor_qp2_op_o;
  assign qick_processor_0_qp2_a_dt_o = qickProcessor_qp2_a_dt_o;
  assign qick_processor_0_qp2_b_dt_o = qickProcessor_qp2_b_dt_o;
  assign qick_processor_0_qp2_c_dt_o = qickProcessor_qp2_c_dt_o;
  assign qick_processor_0_qp2_d_dt_o = qickProcessor_qp2_d_dt_o;
  assign qick_processor_0_s_dma_axis_tready_o = qickProcessor_s_dma_axis_tready_o;
  assign qick_processor_0_m_dma_axis_tvalid_o = qickProcessor_m_dma_axis_tvalid_o;
  assign qick_processor_0_m_dma_axis_tdata_o = qickProcessor_m_dma_axis_tdata_o;
  assign qick_processor_0_m_dma_axis_tlast_o = qickProcessor_m_dma_axis_tlast_o;
  assign qick_processor_0_s_axi_awready = qickProcessor_s_axi_awready;
  assign qick_processor_0_s_axi_wready = qickProcessor_s_axi_wready;
  assign qick_processor_0_s_axi_bvalid = qickProcessor_s_axi_bvalid;
  assign qick_processor_0_s_axi_bresp = qickProcessor_s_axi_bresp;
  assign qick_processor_0_s_axi_arready = qickProcessor_s_axi_arready;
  assign qick_processor_0_s_axi_rvalid = qickProcessor_s_axi_rvalid;
  assign qick_processor_0_s_axi_rdata = qickProcessor_s_axi_rdata;
  assign qick_processor_0_s_axi_rresp = qickProcessor_s_axi_rresp;
  assign qick_processor_0_s0_axis_tready = qickProcessor_s0_axis_tready;
  assign qick_processor_0_s1_axis_tready = qickProcessor_s1_axis_tready;
  assign qick_processor_0_s2_axis_tready = qickProcessor_s2_axis_tready;
  assign qick_processor_0_s3_axis_tready = qickProcessor_s3_axis_tready;
  assign qick_processor_0_s4_axis_tready = qickProcessor_s4_axis_tready;
  assign qick_processor_0_s5_axis_tready = qickProcessor_s5_axis_tready;
  assign qick_processor_0_s6_axis_tready = qickProcessor_s6_axis_tready;
  assign qick_processor_0_s7_axis_tready = qickProcessor_s7_axis_tready;
  assign qick_processor_0_s8_axis_tready = qickProcessor_s8_axis_tready;
  assign qick_processor_0_s9_axis_tready = qickProcessor_s9_axis_tready;
  assign qick_processor_0_s10_axis_tready = qickProcessor_s10_axis_tready;
  assign qick_processor_0_s11_axis_tready = qickProcessor_s11_axis_tready;
  assign qick_processor_0_s12_axis_tready = qickProcessor_s12_axis_tready;
  assign qick_processor_0_s13_axis_tready = qickProcessor_s13_axis_tready;
  assign qick_processor_0_s14_axis_tready = qickProcessor_s14_axis_tready;
  assign qick_processor_0_s15_axis_tready = qickProcessor_s15_axis_tready;
  assign qick_processor_0_m0_axis_tvalid = qickProcessor_m0_axis_tvalid;
  assign qick_processor_0_m0_axis_tdata = qickProcessor_m0_axis_tdata;
  assign qick_processor_0_m1_axis_tvalid = qickProcessor_m1_axis_tvalid;
  assign qick_processor_0_m1_axis_tdata = qickProcessor_m1_axis_tdata;
  assign qick_processor_0_m2_axis_tvalid = qickProcessor_m2_axis_tvalid;
  assign qick_processor_0_m2_axis_tdata = qickProcessor_m2_axis_tdata;
  assign qick_processor_0_m3_axis_tvalid = qickProcessor_m3_axis_tvalid;
  assign qick_processor_0_m3_axis_tdata = qickProcessor_m3_axis_tdata;
  assign qick_processor_0_m4_axis_tvalid = qickProcessor_m4_axis_tvalid;
  assign qick_processor_0_m4_axis_tdata = qickProcessor_m4_axis_tdata;
  assign qick_processor_0_m5_axis_tvalid = qickProcessor_m5_axis_tvalid;
  assign qick_processor_0_m5_axis_tdata = qickProcessor_m5_axis_tdata;
  assign qick_processor_0_m6_axis_tvalid = qickProcessor_m6_axis_tvalid;
  assign qick_processor_0_m6_axis_tdata = qickProcessor_m6_axis_tdata;
  assign qick_processor_0_m7_axis_tvalid = qickProcessor_m7_axis_tvalid;
  assign qick_processor_0_m7_axis_tdata = qickProcessor_m7_axis_tdata;
  assign qick_processor_0_m8_axis_tvalid = qickProcessor_m8_axis_tvalid;
  assign qick_processor_0_m8_axis_tdata = qickProcessor_m8_axis_tdata;
  assign qick_processor_0_m9_axis_tvalid = qickProcessor_m9_axis_tvalid;
  assign qick_processor_0_m9_axis_tdata = qickProcessor_m9_axis_tdata;
  assign qick_processor_0_m10_axis_tvalid = qickProcessor_m10_axis_tvalid;
  assign qick_processor_0_m10_axis_tdata = qickProcessor_m10_axis_tdata;
  assign qick_processor_0_m11_axis_tvalid = qickProcessor_m11_axis_tvalid;
  assign qick_processor_0_m11_axis_tdata = qickProcessor_m11_axis_tdata;
  assign qick_processor_0_m12_axis_tvalid = qickProcessor_m12_axis_tvalid;
  assign qick_processor_0_m12_axis_tdata = qickProcessor_m12_axis_tdata;
  assign qick_processor_0_m13_axis_tvalid = qickProcessor_m13_axis_tvalid;
  assign qick_processor_0_m13_axis_tdata = qickProcessor_m13_axis_tdata;
  assign qick_processor_0_m14_axis_tvalid = qickProcessor_m14_axis_tvalid;
  assign qick_processor_0_m14_axis_tdata = qickProcessor_m14_axis_tdata;
  assign qick_processor_0_m15_axis_tvalid = qickProcessor_m15_axis_tvalid;
  assign qick_processor_0_m15_axis_tdata = qickProcessor_m15_axis_tdata;
  assign qick_processor_0_trig_0_o = qickProcessor_trig_0_o;
  assign qick_processor_0_trig_1_o = qickProcessor_trig_1_o;
  assign qick_processor_0_trig_2_o = qickProcessor_trig_2_o;
  assign qick_processor_0_trig_3_o = qickProcessor_trig_3_o;
  assign qick_processor_0_trig_4_o = qickProcessor_trig_4_o;
  assign qick_processor_0_trig_5_o = qickProcessor_trig_5_o;
  assign qick_processor_0_trig_6_o = qickProcessor_trig_6_o;
  assign qick_processor_0_trig_7_o = qickProcessor_trig_7_o;
  assign qick_processor_0_trig_8_o = qickProcessor_trig_8_o;
  assign qick_processor_0_trig_9_o = qickProcessor_trig_9_o;
  assign qick_processor_0_trig_10_o = qickProcessor_trig_10_o;
  assign qick_processor_0_trig_11_o = qickProcessor_trig_11_o;
  assign qick_processor_0_trig_12_o = qickProcessor_trig_12_o;
  assign qick_processor_0_trig_13_o = qickProcessor_trig_13_o;
  assign qick_processor_0_trig_14_o = qickProcessor_trig_14_o;
  assign qick_processor_0_trig_15_o = qickProcessor_trig_15_o;
  assign qick_processor_0_trig_16_o = qickProcessor_trig_16_o;
  assign qick_processor_0_trig_17_o = qickProcessor_trig_17_o;
  assign qick_processor_0_trig_18_o = qickProcessor_trig_18_o;
  assign qick_processor_0_trig_19_o = qickProcessor_trig_19_o;
  assign qick_processor_0_trig_20_o = qickProcessor_trig_20_o;
  assign qick_processor_0_trig_21_o = qickProcessor_trig_21_o;
  assign qick_processor_0_trig_22_o = qickProcessor_trig_22_o;
  assign qick_processor_0_trig_23_o = qickProcessor_trig_23_o;
  assign qick_processor_0_trig_24_o = qickProcessor_trig_24_o;
  assign qick_processor_0_trig_25_o = qickProcessor_trig_25_o;
  assign qick_processor_0_trig_26_o = qickProcessor_trig_26_o;
  assign qick_processor_0_trig_27_o = qickProcessor_trig_27_o;
  assign qick_processor_0_trig_28_o = qickProcessor_trig_28_o;
  assign qick_processor_0_trig_29_o = qickProcessor_trig_29_o;
  assign qick_processor_0_trig_30_o = qickProcessor_trig_30_o;
  assign qick_processor_0_trig_31_o = qickProcessor_trig_31_o;
  assign qick_processor_0_port_0_dt_o = qickProcessor_port_0_dt_o;
  assign qick_processor_0_port_1_dt_o = qickProcessor_port_1_dt_o;
  assign qick_processor_0_port_2_dt_o = qickProcessor_port_2_dt_o;
  assign qick_processor_0_port_3_dt_o = qickProcessor_port_3_dt_o;
  assign qick_processor_0_ps_debug_do = qickProcessor_ps_debug_do;
  assign qick_processor_0_t_debug_do = qickProcessor_t_debug_do;
  assign qick_processor_0_t_fifo_do = qickProcessor_t_fifo_do;
  assign qick_processor_0_c_time_usr_do = qickProcessor_c_time_usr_do;
  assign qick_processor_0_c_debug_do = qickProcessor_c_debug_do;
  assign qick_processor_0_c_time_ref_do = qickProcessor_c_time_ref_do;
  assign qick_processor_0_c_proc_do = qickProcessor_c_proc_do;
  assign qick_processor_0_c_port_do = qickProcessor_c_port_do;
  assign qick_processor_0_c_core_do = qickProcessor_c_core_do;
  assign axis_avg_buffer_0_s_axi_awready = axis_avg_buffer_0_s_axi_awready_1;
  assign axis_avg_buffer_0_s_axi_wready = axis_avg_buffer_0_s_axi_wready_1;
  assign axis_avg_buffer_0_s_axi_bvalid = axis_avg_buffer_0_s_axi_bvalid_1;
  assign axis_avg_buffer_0_s_axi_bresp = axis_avg_buffer_0_s_axi_bresp_1;
  assign axis_avg_buffer_0_s_axi_arready = axis_avg_buffer_0_s_axi_arready_1;
  assign axis_avg_buffer_0_s_axi_rvalid = axis_avg_buffer_0_s_axi_rvalid_1;
  assign axis_avg_buffer_0_s_axi_rdata = axis_avg_buffer_0_s_axi_rdata_1;
  assign axis_avg_buffer_0_s_axi_rresp = axis_avg_buffer_0_s_axi_rresp_1;
  assign axis_avg_buffer_0_s_axis_tready = axis_avg_buffer_0_s_axis_tready_1;
  assign axis_avg_buffer_0_m0_axis_tvalid = axis_avg_buffer_0_m0_axis_tvalid_1;
  assign axis_avg_buffer_0_m0_axis_tdata = axis_avg_buffer_0_m0_axis_tdata_1;
  assign axis_avg_buffer_0_m0_axis_tlast = axis_avg_buffer_0_m0_axis_tlast_1;
  assign axis_avg_buffer_0_m1_axis_tvalid = axis_avg_buffer_0_m1_axis_tvalid_1;
  assign axis_avg_buffer_0_m1_axis_tdata = axis_avg_buffer_0_m1_axis_tdata_1;
  assign axis_avg_buffer_0_m1_axis_tlast = axis_avg_buffer_0_m1_axis_tlast_1;
  assign axis_avg_buffer_0_m2_axis_tvalid = axis_avg_buffer_0_m2_axis_tvalid_1;
  assign axis_avg_buffer_0_m2_axis_tdata = axis_avg_buffer_0_m2_axis_tdata_1;
  assign axis_avg_buffer_1_s_axi_awready = axis_avg_buffer_1_s_axi_awready_1;
  assign axis_avg_buffer_1_s_axi_wready = axis_avg_buffer_1_s_axi_wready_1;
  assign axis_avg_buffer_1_s_axi_bvalid = axis_avg_buffer_1_s_axi_bvalid_1;
  assign axis_avg_buffer_1_s_axi_bresp = axis_avg_buffer_1_s_axi_bresp_1;
  assign axis_avg_buffer_1_s_axi_arready = axis_avg_buffer_1_s_axi_arready_1;
  assign axis_avg_buffer_1_s_axi_rvalid = axis_avg_buffer_1_s_axi_rvalid_1;
  assign axis_avg_buffer_1_s_axi_rdata = axis_avg_buffer_1_s_axi_rdata_1;
  assign axis_avg_buffer_1_s_axi_rresp = axis_avg_buffer_1_s_axi_rresp_1;
  assign axis_avg_buffer_1_s_axis_tready = axis_avg_buffer_1_s_axis_tready_1;
  assign axis_avg_buffer_1_m0_axis_tvalid = axis_avg_buffer_1_m0_axis_tvalid_1;
  assign axis_avg_buffer_1_m0_axis_tdata = axis_avg_buffer_1_m0_axis_tdata_1;
  assign axis_avg_buffer_1_m0_axis_tlast = axis_avg_buffer_1_m0_axis_tlast_1;
  assign axis_avg_buffer_1_m1_axis_tvalid = axis_avg_buffer_1_m1_axis_tvalid_1;
  assign axis_avg_buffer_1_m1_axis_tdata = axis_avg_buffer_1_m1_axis_tdata_1;
  assign axis_avg_buffer_1_m1_axis_tlast = axis_avg_buffer_1_m1_axis_tlast_1;
  assign axis_avg_buffer_1_m2_axis_tvalid = axis_avg_buffer_1_m2_axis_tvalid_1;
  assign axis_avg_buffer_1_m2_axis_tdata = axis_avg_buffer_1_m2_axis_tdata_1;

endmodule

//AxisAvgBuffer_1 replaced by AxisAvgBuffer

module AxisAvgBuffer (
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    s_axi_awaddr,
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
  input  wire [5:0]    s_axi_araddr,
  input  wire [2:0]    s_axi_arprot,
  output wire          s_axi_rvalid,
  input  wire          s_axi_rready,
  output wire [31:0]   s_axi_rdata,
  output wire [1:0]    s_axi_rresp,
  input  wire          s_axi_aclk_i,
  input  wire          s_axi_aresetn,
  input  wire          trigger,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   s_axis_tdata,
  input  wire          s_axis_aclk_i,
  input  wire          s_axis_aresetn,
  input  wire          m_axis_aclk_i,
  input  wire          m_axis_aresetn,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   m0_axis_tdata,
  output wire          m0_axis_tlast,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   m1_axis_tdata,
  output wire          m1_axis_tlast,
  output wire          m2_axis_tvalid,
  input  wire          m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   m2_axis_tdata
);

  wire                axisAvgBuffer_2_s_axi_awready;
  wire                axisAvgBuffer_2_s_axi_wready;
  wire                axisAvgBuffer_2_s_axi_bvalid;
  wire       [1:0]    axisAvgBuffer_2_s_axi_bresp;
  wire                axisAvgBuffer_2_s_axi_arready;
  wire                axisAvgBuffer_2_s_axi_rvalid;
  wire       [31:0]   axisAvgBuffer_2_s_axi_rdata;
  wire       [1:0]    axisAvgBuffer_2_s_axi_rresp;
  wire                axisAvgBuffer_2_s_axis_tready;
  wire                axisAvgBuffer_2_m0_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_2_m0_axis_tdata;
  wire                axisAvgBuffer_2_m0_axis_tlast;
  wire                axisAvgBuffer_2_m1_axis_tvalid;
  wire       [31:0]   axisAvgBuffer_2_m1_axis_tdata;
  wire                axisAvgBuffer_2_m1_axis_tlast;
  wire                axisAvgBuffer_2_m2_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_2_m2_axis_tdata;

  axis_avg_buffer #(
    .N_AVG (13),
    .N_BUF (12),
    .B     (16)
  ) axisAvgBuffer_2 (
    .s_axi_awvalid  (s_axi_awvalid                      ), //i
    .s_axi_awready  (axisAvgBuffer_2_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                  ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                  ), //i
    .s_axi_wvalid   (s_axi_wvalid                       ), //i
    .s_axi_wready   (axisAvgBuffer_2_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                  ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                   ), //i
    .s_axi_bvalid   (axisAvgBuffer_2_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                       ), //i
    .s_axi_bresp    (axisAvgBuffer_2_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                      ), //i
    .s_axi_arready  (axisAvgBuffer_2_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                  ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                  ), //i
    .s_axi_rvalid   (axisAvgBuffer_2_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                       ), //i
    .s_axi_rdata    (axisAvgBuffer_2_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisAvgBuffer_2_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk     (s_axi_aclk_i                       ), //i
    .s_axi_aresetn  (s_axi_aresetn                      ), //i
    .trigger        (trigger                            ), //i
    .s_axis_tvalid  (s_axis_tvalid                      ), //i
    .s_axis_tready  (axisAvgBuffer_2_s_axis_tready      ), //o
    .s_axis_tdata   (s_axis_tdata[31:0]                 ), //i
    .s_axis_aclk    (s_axis_aclk_i                      ), //i
    .s_axis_aresetn (s_axis_aresetn                     ), //i
    .m_axis_aclk    (m_axis_aclk_i                      ), //i
    .m_axis_aresetn (m_axis_aresetn                     ), //i
    .m0_axis_tvalid (axisAvgBuffer_2_m0_axis_tvalid     ), //o
    .m0_axis_tready (m0_axis_tready                     ), //i
    .m0_axis_tdata  (axisAvgBuffer_2_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axisAvgBuffer_2_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axisAvgBuffer_2_m1_axis_tvalid     ), //o
    .m1_axis_tready (m1_axis_tready                     ), //i
    .m1_axis_tdata  (axisAvgBuffer_2_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axisAvgBuffer_2_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axisAvgBuffer_2_m2_axis_tvalid     ), //o
    .m2_axis_tready (m2_axis_tready                     ), //i
    .m2_axis_tdata  (axisAvgBuffer_2_m2_axis_tdata[63:0])  //o
  );
  assign s_axi_awready = axisAvgBuffer_2_s_axi_awready;
  assign s_axi_wready = axisAvgBuffer_2_s_axi_wready;
  assign s_axi_bvalid = axisAvgBuffer_2_s_axi_bvalid;
  assign s_axi_bresp = axisAvgBuffer_2_s_axi_bresp;
  assign s_axi_arready = axisAvgBuffer_2_s_axi_arready;
  assign s_axi_rvalid = axisAvgBuffer_2_s_axi_rvalid;
  assign s_axi_rdata = axisAvgBuffer_2_s_axi_rdata;
  assign s_axi_rresp = axisAvgBuffer_2_s_axi_rresp;
  assign s_axis_tready = axisAvgBuffer_2_s_axis_tready;
  assign m0_axis_tvalid = axisAvgBuffer_2_m0_axis_tvalid;
  assign m0_axis_tdata = axisAvgBuffer_2_m0_axis_tdata;
  assign m0_axis_tlast = axisAvgBuffer_2_m0_axis_tlast;
  assign m1_axis_tvalid = axisAvgBuffer_2_m1_axis_tvalid;
  assign m1_axis_tdata = axisAvgBuffer_2_m1_axis_tdata;
  assign m1_axis_tlast = axisAvgBuffer_2_m1_axis_tlast;
  assign m2_axis_tvalid = axisAvgBuffer_2_m2_axis_tvalid;
  assign m2_axis_tdata = axisAvgBuffer_2_m2_axis_tdata;

endmodule
