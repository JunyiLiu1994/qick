// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : QickTop
// Git hash  : 4b21a4f4b99e9a25b16e9d620b1bfdd7f1b1a452

`timescale 1ns/1ps

module QickTop (
  input  wire          clk_adc2,
  input  wire          clk_dac2,
  input  wire          clk_dac3,
  input  wire          clk_pl,
  input  wire          rst_100,
  input  wire          rst_adc2,
  input  wire          rst_dac2,
  input  wire          rst_dac3,
  input  wire          qick_processor_0_c_clk_i,
  input  wire          qick_processor_0_c_resetn,
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
  input  wire          axis_avg_buffer_0_s_axis_tvalid,
  output wire          axis_avg_buffer_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_0_s_axis_tdata,
  output wire          axis_avg_buffer_0_m0_axis_tvalid,
  input  wire          axis_avg_buffer_0_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_0_m0_axis_tdata,
  output wire          axis_avg_buffer_0_m0_axis_tlast,
  output wire          axis_avg_buffer_0_m1_axis_tvalid,
  input  wire          axis_avg_buffer_0_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_0_m1_axis_tdata,
  output wire          axis_avg_buffer_0_m1_axis_tlast,
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
  input  wire          axis_avg_buffer_1_s_axis_tvalid,
  output wire          axis_avg_buffer_1_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_1_s_axis_tdata,
  output wire          axis_avg_buffer_1_m0_axis_tvalid,
  input  wire          axis_avg_buffer_1_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_1_m0_axis_tdata,
  output wire          axis_avg_buffer_1_m0_axis_tlast,
  output wire          axis_avg_buffer_1_m1_axis_tvalid,
  input  wire          axis_avg_buffer_1_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_1_m1_axis_tdata,
  output wire          axis_avg_buffer_1_m1_axis_tlast,
  input  wire          axis_avg_buffer_2_s_axi_awvalid,
  output wire          axis_avg_buffer_2_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_2_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_2_s_axi_awprot,
  input  wire          axis_avg_buffer_2_s_axi_wvalid,
  output wire          axis_avg_buffer_2_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_2_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_2_s_axi_wstrb,
  output wire          axis_avg_buffer_2_s_axi_bvalid,
  input  wire          axis_avg_buffer_2_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_2_s_axi_bresp,
  input  wire          axis_avg_buffer_2_s_axi_arvalid,
  output wire          axis_avg_buffer_2_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_2_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_2_s_axi_arprot,
  output wire          axis_avg_buffer_2_s_axi_rvalid,
  input  wire          axis_avg_buffer_2_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_2_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_2_s_axi_rresp,
  input  wire          axis_avg_buffer_2_s_axis_tvalid,
  output wire          axis_avg_buffer_2_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_2_s_axis_tdata,
  output wire          axis_avg_buffer_2_m0_axis_tvalid,
  input  wire          axis_avg_buffer_2_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_2_m0_axis_tdata,
  output wire          axis_avg_buffer_2_m0_axis_tlast,
  output wire          axis_avg_buffer_2_m1_axis_tvalid,
  input  wire          axis_avg_buffer_2_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_2_m1_axis_tdata,
  output wire          axis_avg_buffer_2_m1_axis_tlast,
  input  wire          axis_avg_buffer_3_s_axi_awvalid,
  output wire          axis_avg_buffer_3_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_3_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_3_s_axi_awprot,
  input  wire          axis_avg_buffer_3_s_axi_wvalid,
  output wire          axis_avg_buffer_3_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_3_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_3_s_axi_wstrb,
  output wire          axis_avg_buffer_3_s_axi_bvalid,
  input  wire          axis_avg_buffer_3_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_3_s_axi_bresp,
  input  wire          axis_avg_buffer_3_s_axi_arvalid,
  output wire          axis_avg_buffer_3_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_3_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_3_s_axi_arprot,
  output wire          axis_avg_buffer_3_s_axi_rvalid,
  input  wire          axis_avg_buffer_3_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_3_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_3_s_axi_rresp,
  input  wire          axis_avg_buffer_3_s_axis_tvalid,
  output wire          axis_avg_buffer_3_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_3_s_axis_tdata,
  output wire          axis_avg_buffer_3_m0_axis_tvalid,
  input  wire          axis_avg_buffer_3_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_3_m0_axis_tdata,
  output wire          axis_avg_buffer_3_m0_axis_tlast,
  output wire          axis_avg_buffer_3_m1_axis_tvalid,
  input  wire          axis_avg_buffer_3_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_3_m1_axis_tdata,
  output wire          axis_avg_buffer_3_m1_axis_tlast,
  input  wire          axis_avg_buffer_4_s_axi_awvalid,
  output wire          axis_avg_buffer_4_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_4_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_4_s_axi_awprot,
  input  wire          axis_avg_buffer_4_s_axi_wvalid,
  output wire          axis_avg_buffer_4_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_4_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_4_s_axi_wstrb,
  output wire          axis_avg_buffer_4_s_axi_bvalid,
  input  wire          axis_avg_buffer_4_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_4_s_axi_bresp,
  input  wire          axis_avg_buffer_4_s_axi_arvalid,
  output wire          axis_avg_buffer_4_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_4_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_4_s_axi_arprot,
  output wire          axis_avg_buffer_4_s_axi_rvalid,
  input  wire          axis_avg_buffer_4_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_4_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_4_s_axi_rresp,
  input  wire          axis_avg_buffer_4_s_axis_tvalid,
  output wire          axis_avg_buffer_4_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_4_s_axis_tdata,
  output wire          axis_avg_buffer_4_m0_axis_tvalid,
  input  wire          axis_avg_buffer_4_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_4_m0_axis_tdata,
  output wire          axis_avg_buffer_4_m0_axis_tlast,
  output wire          axis_avg_buffer_4_m1_axis_tvalid,
  input  wire          axis_avg_buffer_4_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_4_m1_axis_tdata,
  output wire          axis_avg_buffer_4_m1_axis_tlast,
  input  wire          axis_avg_buffer_5_s_axi_awvalid,
  output wire          axis_avg_buffer_5_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_5_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_5_s_axi_awprot,
  input  wire          axis_avg_buffer_5_s_axi_wvalid,
  output wire          axis_avg_buffer_5_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_5_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_5_s_axi_wstrb,
  output wire          axis_avg_buffer_5_s_axi_bvalid,
  input  wire          axis_avg_buffer_5_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_5_s_axi_bresp,
  input  wire          axis_avg_buffer_5_s_axi_arvalid,
  output wire          axis_avg_buffer_5_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_5_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_5_s_axi_arprot,
  output wire          axis_avg_buffer_5_s_axi_rvalid,
  input  wire          axis_avg_buffer_5_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_5_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_5_s_axi_rresp,
  input  wire          axis_avg_buffer_5_s_axis_tvalid,
  output wire          axis_avg_buffer_5_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_5_s_axis_tdata,
  output wire          axis_avg_buffer_5_m0_axis_tvalid,
  input  wire          axis_avg_buffer_5_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_5_m0_axis_tdata,
  output wire          axis_avg_buffer_5_m0_axis_tlast,
  output wire          axis_avg_buffer_5_m1_axis_tvalid,
  input  wire          axis_avg_buffer_5_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_5_m1_axis_tdata,
  output wire          axis_avg_buffer_5_m1_axis_tlast,
  input  wire          axis_avg_buffer_6_s_axi_awvalid,
  output wire          axis_avg_buffer_6_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_avg_buffer_6_s_axi_awaddr,
  input  wire [2:0]    axis_avg_buffer_6_s_axi_awprot,
  input  wire          axis_avg_buffer_6_s_axi_wvalid,
  output wire          axis_avg_buffer_6_s_axi_wready,
  input  wire [31:0]   axis_avg_buffer_6_s_axi_wdata,
  input  wire [3:0]    axis_avg_buffer_6_s_axi_wstrb,
  output wire          axis_avg_buffer_6_s_axi_bvalid,
  input  wire          axis_avg_buffer_6_s_axi_bready,
  output wire [1:0]    axis_avg_buffer_6_s_axi_bresp,
  input  wire          axis_avg_buffer_6_s_axi_arvalid,
  output wire          axis_avg_buffer_6_s_axi_arready,
  input  wire [5:0]    axis_avg_buffer_6_s_axi_araddr,
  input  wire [2:0]    axis_avg_buffer_6_s_axi_arprot,
  output wire          axis_avg_buffer_6_s_axi_rvalid,
  input  wire          axis_avg_buffer_6_s_axi_rready,
  output wire [31:0]   axis_avg_buffer_6_s_axi_rdata,
  output wire [1:0]    axis_avg_buffer_6_s_axi_rresp,
  input  wire          axis_avg_buffer_6_s_axis_tvalid,
  output wire          axis_avg_buffer_6_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [31:0]   axis_avg_buffer_6_s_axis_tdata,
  output wire          axis_avg_buffer_6_m0_axis_tvalid,
  input  wire          axis_avg_buffer_6_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [63:0]   axis_avg_buffer_6_m0_axis_tdata,
  output wire          axis_avg_buffer_6_m0_axis_tlast,
  output wire          axis_avg_buffer_6_m1_axis_tvalid,
  input  wire          axis_avg_buffer_6_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   axis_avg_buffer_6_m1_axis_tdata,
  output wire          axis_avg_buffer_6_m1_axis_tlast,
  input  wire          mr_buffer_et_0_s00_axi_awvalid,
  output wire          mr_buffer_et_0_s00_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    mr_buffer_et_0_s00_axi_awaddr,
  input  wire [2:0]    mr_buffer_et_0_s00_axi_awprot,
  input  wire          mr_buffer_et_0_s00_axi_wvalid,
  output wire          mr_buffer_et_0_s00_axi_wready,
  input  wire [31:0]   mr_buffer_et_0_s00_axi_wdata,
  input  wire [3:0]    mr_buffer_et_0_s00_axi_wstrb,
  output wire          mr_buffer_et_0_s00_axi_bvalid,
  input  wire          mr_buffer_et_0_s00_axi_bready,
  output wire [1:0]    mr_buffer_et_0_s00_axi_bresp,
  input  wire          mr_buffer_et_0_s00_axi_arvalid,
  output wire          mr_buffer_et_0_s00_axi_arready,
  input  wire [5:0]    mr_buffer_et_0_s00_axi_araddr,
  input  wire [2:0]    mr_buffer_et_0_s00_axi_arprot,
  output wire          mr_buffer_et_0_s00_axi_rvalid,
  input  wire          mr_buffer_et_0_s00_axi_rready,
  output wire [31:0]   mr_buffer_et_0_s00_axi_rdata,
  output wire [1:0]    mr_buffer_et_0_s00_axi_rresp,
  input  wire          mr_buffer_et_0_s00_axis_tvalid,
  output wire          mr_buffer_et_0_s00_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [255:0]  mr_buffer_et_0_s00_axis_tdata,
  input  wire [31:0]   mr_buffer_et_0_s00_axis_tstrb,
  input  wire          mr_buffer_et_0_s00_axis_tlast,
  output wire          mr_buffer_et_0_m00_axis_tvalid,
  input  wire          mr_buffer_et_0_m00_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   mr_buffer_et_0_m00_axis_tdata,
  output wire [3:0]    mr_buffer_et_0_m00_axis_tstrb,
  output wire          mr_buffer_et_0_m00_axis_tlast,
  output wire          mr_buffer_et_0_s_dbg_probe,
  output wire          mr_buffer_et_0_m_dbg_probe,
  input  wire          axis_pfb_readout_v3_0_s_axi_awvalid,
  output wire          axis_pfb_readout_v3_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_pfb_readout_v3_0_s_axi_awaddr,
  input  wire [2:0]    axis_pfb_readout_v3_0_s_axi_awprot,
  input  wire          axis_pfb_readout_v3_0_s_axi_wvalid,
  output wire          axis_pfb_readout_v3_0_s_axi_wready,
  input  wire [31:0]   axis_pfb_readout_v3_0_s_axi_wdata,
  input  wire [3:0]    axis_pfb_readout_v3_0_s_axi_wstrb,
  output wire          axis_pfb_readout_v3_0_s_axi_bvalid,
  input  wire          axis_pfb_readout_v3_0_s_axi_bready,
  output wire [1:0]    axis_pfb_readout_v3_0_s_axi_bresp,
  input  wire          axis_pfb_readout_v3_0_s_axi_arvalid,
  output wire          axis_pfb_readout_v3_0_s_axi_arready,
  input  wire [5:0]    axis_pfb_readout_v3_0_s_axi_araddr,
  input  wire [2:0]    axis_pfb_readout_v3_0_s_axi_arprot,
  output wire          axis_pfb_readout_v3_0_s_axi_rvalid,
  input  wire          axis_pfb_readout_v3_0_s_axi_rready,
  output wire [31:0]   axis_pfb_readout_v3_0_s_axi_rdata,
  output wire [1:0]    axis_pfb_readout_v3_0_s_axi_rresp,
  input  wire          axis_pfb_readout_v3_0_s_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [127:0]  axis_pfb_readout_v3_0_s_axis_tdata,
  output wire          axis_pfb_readout_v3_0_m0_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_pfb_readout_v3_0_m0_axis_tdata,
  output wire          axis_pfb_readout_v3_0_m1_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_pfb_readout_v3_0_m1_axis_tdata,
  output wire          axis_pfb_readout_v3_0_m2_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_pfb_readout_v3_0_m2_axis_tdata,
  output wire          axis_pfb_readout_v3_0_m3_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_pfb_readout_v3_0_m3_axis_tdata,
  input  wire          axis_readout_v2_0_s_axi_awvalid,
  output wire          axis_readout_v2_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_readout_v2_0_s_axi_awaddr,
  input  wire [2:0]    axis_readout_v2_0_s_axi_awprot,
  input  wire          axis_readout_v2_0_s_axi_wvalid,
  output wire          axis_readout_v2_0_s_axi_wready,
  input  wire [31:0]   axis_readout_v2_0_s_axi_wdata,
  input  wire [3:0]    axis_readout_v2_0_s_axi_wstrb,
  output wire          axis_readout_v2_0_s_axi_bvalid,
  input  wire          axis_readout_v2_0_s_axi_bready,
  output wire [1:0]    axis_readout_v2_0_s_axi_bresp,
  input  wire          axis_readout_v2_0_s_axi_arvalid,
  output wire          axis_readout_v2_0_s_axi_arready,
  input  wire [5:0]    axis_readout_v2_0_s_axi_araddr,
  input  wire [2:0]    axis_readout_v2_0_s_axi_arprot,
  output wire          axis_readout_v2_0_s_axi_rvalid,
  input  wire          axis_readout_v2_0_s_axi_rready,
  output wire [31:0]   axis_readout_v2_0_s_axi_rdata,
  output wire [1:0]    axis_readout_v2_0_s_axi_rresp,
  input  wire          axis_readout_v2_0_s_axis_tvalid,
  output wire          axis_readout_v2_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [127:0]  axis_readout_v2_0_s_axis_tdata,
  output wire          axis_readout_v2_0_m0_axis_tvalid,
  input  wire          axis_readout_v2_0_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [255:0]  axis_readout_v2_0_m0_axis_tdata,
  output wire          axis_readout_v2_0_m1_axis_tvalid,
  input  wire          axis_readout_v2_0_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_readout_v2_0_m1_axis_tdata,
  input  wire          axis_readout_v3_0_s0_axis_tvalid,
  output wire          axis_readout_v3_0_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [87:0]   axis_readout_v3_0_s0_axis_tdata,
  input  wire          axis_readout_v3_0_s1_axis_tvalid,
  output wire          axis_readout_v3_0_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [63:0]   axis_readout_v3_0_s1_axis_tdata,
  output wire          axis_readout_v3_0_m_axis_tvalid,
  input  wire          axis_readout_v3_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_readout_v3_0_m_axis_tdata,
  input  wire          axis_dyn_readout_v1_0_s0_axis_tvalid,
  output wire          axis_dyn_readout_v1_0_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [87:0]   axis_dyn_readout_v1_0_s0_axis_tdata,
  input  wire          axis_dyn_readout_v1_0_s1_axis_tvalid,
  output wire          axis_dyn_readout_v1_0_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [127:0]  axis_dyn_readout_v1_0_s1_axis_tdata,
  output wire          axis_dyn_readout_v1_0_m0_axis_tvalid,
  input  wire          axis_dyn_readout_v1_0_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [255:0]  axis_dyn_readout_v1_0_m0_axis_tdata,
  output wire          axis_dyn_readout_v1_0_m1_axis_tvalid,
  input  wire          axis_dyn_readout_v1_0_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   axis_dyn_readout_v1_0_m1_axis_tdata,
  input  wire          axis_signal_gen_v6_0_s_axi_awvalid,
  output wire          axis_signal_gen_v6_0_s_axi_awready,
  input  wire [5:0]    axis_signal_gen_v6_0_s_axi_awaddr,
  input  wire [2:0]    axis_signal_gen_v6_0_s_axi_awprot,
  input  wire          axis_signal_gen_v6_0_s_axi_wvalid,
  output wire          axis_signal_gen_v6_0_s_axi_wready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   axis_signal_gen_v6_0_s_axi_wdata,
  input  wire [3:0]    axis_signal_gen_v6_0_s_axi_wstrb,
  output wire          axis_signal_gen_v6_0_s_axi_bvalid,
  input  wire          axis_signal_gen_v6_0_s_axi_bready,
  output wire [1:0]    axis_signal_gen_v6_0_s_axi_bresp,
  input  wire          axis_signal_gen_v6_0_s_axi_arvalid,
  output wire          axis_signal_gen_v6_0_s_axi_arready,
  input  wire [5:0]    axis_signal_gen_v6_0_s_axi_araddr,
  input  wire [2:0]    axis_signal_gen_v6_0_s_axi_arprot,
  output wire          axis_signal_gen_v6_0_s_axi_rvalid,
  input  wire          axis_signal_gen_v6_0_s_axi_rready,
  output wire [31:0]   axis_signal_gen_v6_0_s_axi_rdata,
  output wire [1:0]    axis_signal_gen_v6_0_s_axi_rresp,
  input  wire          axis_signal_gen_v6_0_s0_axis_tvalid,
  output wire          axis_signal_gen_v6_0_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   axis_signal_gen_v6_0_s0_axis_tdata,
  input  wire          axis_signal_gen_v6_0_s1_axis_tvalid,
  output wire          axis_signal_gen_v6_0_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [159:0]  axis_signal_gen_v6_0_s1_axis_tdata,
  output wire          axis_signal_gen_v6_0_m_axis_tvalid,
  input  wire          axis_signal_gen_v6_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  axis_signal_gen_v6_0_m_axis_tdata,
  input  wire          axis_signal_gen_v6_1_s_axi_awvalid,
  output wire          axis_signal_gen_v6_1_s_axi_awready,
  input  wire [5:0]    axis_signal_gen_v6_1_s_axi_awaddr,
  input  wire [2:0]    axis_signal_gen_v6_1_s_axi_awprot,
  input  wire          axis_signal_gen_v6_1_s_axi_wvalid,
  output wire          axis_signal_gen_v6_1_s_axi_wready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   axis_signal_gen_v6_1_s_axi_wdata,
  input  wire [3:0]    axis_signal_gen_v6_1_s_axi_wstrb,
  output wire          axis_signal_gen_v6_1_s_axi_bvalid,
  input  wire          axis_signal_gen_v6_1_s_axi_bready,
  output wire [1:0]    axis_signal_gen_v6_1_s_axi_bresp,
  input  wire          axis_signal_gen_v6_1_s_axi_arvalid,
  output wire          axis_signal_gen_v6_1_s_axi_arready,
  input  wire [5:0]    axis_signal_gen_v6_1_s_axi_araddr,
  input  wire [2:0]    axis_signal_gen_v6_1_s_axi_arprot,
  output wire          axis_signal_gen_v6_1_s_axi_rvalid,
  input  wire          axis_signal_gen_v6_1_s_axi_rready,
  output wire [31:0]   axis_signal_gen_v6_1_s_axi_rdata,
  output wire [1:0]    axis_signal_gen_v6_1_s_axi_rresp,
  input  wire          axis_signal_gen_v6_1_s0_axis_tvalid,
  output wire          axis_signal_gen_v6_1_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   axis_signal_gen_v6_1_s0_axis_tdata,
  input  wire          axis_signal_gen_v6_1_s1_axis_tvalid,
  output wire          axis_signal_gen_v6_1_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [159:0]  axis_signal_gen_v6_1_s1_axis_tdata,
  output wire          axis_signal_gen_v6_1_m_axis_tvalid,
  input  wire          axis_signal_gen_v6_1_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  axis_signal_gen_v6_1_m_axis_tdata,
  input  wire          axis_tmux_v1_0_s_axis_tvalid,
  output wire          axis_tmux_v1_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_tmux_v1_0_s_axis_tdata,
  output wire          axis_tmux_v1_0_m0_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m0_axis_tdata,
  output wire          axis_tmux_v1_0_m1_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m1_axis_tdata,
  output wire          axis_tmux_v1_0_m2_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m2_axis_tdata,
  output wire          axis_tmux_v1_0_m3_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m3_axis_tdata,
  output wire          axis_tmux_v1_0_m4_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m4_axis_tdata,
  output wire          axis_tmux_v1_0_m5_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m5_axis_tdata,
  output wire          axis_tmux_v1_0_m6_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m6_axis_tdata,
  output wire          axis_tmux_v1_0_m7_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  axis_tmux_v1_0_m7_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s0_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s0_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s1_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s1_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s2_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s2_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s3_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s3_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s4_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s4_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s5_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s5_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s6_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s6_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s7_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s7_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s8_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s8_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s9_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s9_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s10_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s10_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s11_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s11_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s12_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s12_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s13_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s13_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s14_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s14_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s15_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s15_axis_tdata,
  output wire          axis_cdcsync_v1_1_m0_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m0_axis_tdata,
  output wire          axis_cdcsync_v1_1_m1_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m1_axis_tdata,
  output wire          axis_cdcsync_v1_1_m2_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m2_axis_tdata,
  output wire          axis_cdcsync_v1_1_m3_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m3_axis_tdata,
  output wire          axis_cdcsync_v1_1_m4_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m4_axis_tdata,
  output wire          axis_cdcsync_v1_1_m5_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m5_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m5_axis_tdata,
  output wire          axis_cdcsync_v1_1_m6_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m6_axis_tdata,
  output wire          axis_cdcsync_v1_1_m7_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m7_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m7_axis_tdata,
  output wire          axis_cdcsync_v1_1_m8_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m8_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m8_axis_tdata,
  output wire          axis_cdcsync_v1_1_m9_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m9_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m9_axis_tdata,
  output wire          axis_cdcsync_v1_1_m10_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m10_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m10_axis_tdata,
  output wire          axis_cdcsync_v1_1_m11_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m11_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m11_axis_tdata,
  output wire          axis_cdcsync_v1_1_m12_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m12_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m12_axis_tdata,
  output wire          axis_cdcsync_v1_1_m13_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m13_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m13_axis_tdata,
  output wire          axis_cdcsync_v1_1_m14_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m14_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m14_axis_tdata,
  output wire          axis_cdcsync_v1_1_m15_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m15_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m15_axis_tdata,
  input  wire          axis_sg_mux8_v1_0_s_axi_awvalid,
  output wire          axis_sg_mux8_v1_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [7:0]    axis_sg_mux8_v1_0_s_axi_awaddr,
  input  wire [2:0]    axis_sg_mux8_v1_0_s_axi_awprot,
  input  wire          axis_sg_mux8_v1_0_s_axi_wvalid,
  output wire          axis_sg_mux8_v1_0_s_axi_wready,
  input  wire [31:0]   axis_sg_mux8_v1_0_s_axi_wdata,
  input  wire [3:0]    axis_sg_mux8_v1_0_s_axi_wstrb,
  output wire          axis_sg_mux8_v1_0_s_axi_bvalid,
  input  wire          axis_sg_mux8_v1_0_s_axi_bready,
  output wire [1:0]    axis_sg_mux8_v1_0_s_axi_bresp,
  input  wire          axis_sg_mux8_v1_0_s_axi_arvalid,
  output wire          axis_sg_mux8_v1_0_s_axi_arready,
  input  wire [7:0]    axis_sg_mux8_v1_0_s_axi_araddr,
  input  wire [2:0]    axis_sg_mux8_v1_0_s_axi_arprot,
  output wire          axis_sg_mux8_v1_0_s_axi_rvalid,
  input  wire          axis_sg_mux8_v1_0_s_axi_rready,
  output wire [31:0]   axis_sg_mux8_v1_0_s_axi_rdata,
  output wire [1:0]    axis_sg_mux8_v1_0_s_axi_rresp,
  input  wire          axis_sg_mux8_v1_0_s_axis_tvalid,
  output wire          axis_sg_mux8_v1_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [31:0]   axis_sg_mux8_v1_0_s_axis_tdata,
  output wire          axis_sg_mux8_v1_0_m_axis_tvalid,
  input  wire          axis_sg_mux8_v1_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  axis_sg_mux8_v1_0_m_axis_tdata,
  input  wire          axis_sg_mixmux8_v1_0_s_axi_awvalid,
  output wire          axis_sg_mixmux8_v1_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [7:0]    axis_sg_mixmux8_v1_0_s_axi_awaddr,
  input  wire [2:0]    axis_sg_mixmux8_v1_0_s_axi_awprot,
  input  wire          axis_sg_mixmux8_v1_0_s_axi_wvalid,
  output wire          axis_sg_mixmux8_v1_0_s_axi_wready,
  input  wire [31:0]   axis_sg_mixmux8_v1_0_s_axi_wdata,
  input  wire [3:0]    axis_sg_mixmux8_v1_0_s_axi_wstrb,
  output wire          axis_sg_mixmux8_v1_0_s_axi_bvalid,
  input  wire          axis_sg_mixmux8_v1_0_s_axi_bready,
  output wire [1:0]    axis_sg_mixmux8_v1_0_s_axi_bresp,
  input  wire          axis_sg_mixmux8_v1_0_s_axi_arvalid,
  output wire          axis_sg_mixmux8_v1_0_s_axi_arready,
  input  wire [7:0]    axis_sg_mixmux8_v1_0_s_axi_araddr,
  input  wire [2:0]    axis_sg_mixmux8_v1_0_s_axi_arprot,
  output wire          axis_sg_mixmux8_v1_0_s_axi_rvalid,
  input  wire          axis_sg_mixmux8_v1_0_s_axi_rready,
  output wire [31:0]   axis_sg_mixmux8_v1_0_s_axi_rdata,
  output wire [1:0]    axis_sg_mixmux8_v1_0_s_axi_rresp,
  input  wire          axis_sg_mixmux8_v1_0_s_axis_tvalid,
  output wire          axis_sg_mixmux8_v1_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [39:0]   axis_sg_mixmux8_v1_0_s_axis_tdata,
  output wire          axis_sg_mixmux8_v1_0_m_axis_tvalid,
  input  wire          axis_sg_mixmux8_v1_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  axis_sg_mixmux8_v1_0_m_axis_tdata,
  input  wire          axis_sg_int4_v2_0_s_axi_awvalid,
  output wire          axis_sg_int4_v2_0_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_sg_int4_v2_0_s_axi_awaddr,
  input  wire [2:0]    axis_sg_int4_v2_0_s_axi_awprot,
  input  wire          axis_sg_int4_v2_0_s_axi_wvalid,
  output wire          axis_sg_int4_v2_0_s_axi_wready,
  input  wire [31:0]   axis_sg_int4_v2_0_s_axi_wdata,
  input  wire [3:0]    axis_sg_int4_v2_0_s_axi_wstrb,
  output wire          axis_sg_int4_v2_0_s_axi_bvalid,
  input  wire          axis_sg_int4_v2_0_s_axi_bready,
  output wire [1:0]    axis_sg_int4_v2_0_s_axi_bresp,
  input  wire          axis_sg_int4_v2_0_s_axi_arvalid,
  output wire          axis_sg_int4_v2_0_s_axi_arready,
  input  wire [5:0]    axis_sg_int4_v2_0_s_axi_araddr,
  input  wire [2:0]    axis_sg_int4_v2_0_s_axi_arprot,
  output wire          axis_sg_int4_v2_0_s_axi_rvalid,
  input  wire          axis_sg_int4_v2_0_s_axi_rready,
  output wire [31:0]   axis_sg_int4_v2_0_s_axi_rdata,
  output wire [1:0]    axis_sg_int4_v2_0_s_axi_rresp,
  input  wire          axis_sg_int4_v2_0_s0_axis_tvalid,
  output wire          axis_sg_int4_v2_0_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   axis_sg_int4_v2_0_s0_axis_tdata,
  input  wire          axis_sg_int4_v2_0_s1_axis_tvalid,
  output wire          axis_sg_int4_v2_0_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [159:0]  axis_sg_int4_v2_0_s1_axis_tdata,
  output wire          axis_sg_int4_v2_0_m_axis_tvalid,
  input  wire          axis_sg_int4_v2_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  axis_sg_int4_v2_0_m_axis_tdata,
  input  wire          axis_sg_int4_v2_1_s_axi_awvalid,
  output wire          axis_sg_int4_v2_1_s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    axis_sg_int4_v2_1_s_axi_awaddr,
  input  wire [2:0]    axis_sg_int4_v2_1_s_axi_awprot,
  input  wire          axis_sg_int4_v2_1_s_axi_wvalid,
  output wire          axis_sg_int4_v2_1_s_axi_wready,
  input  wire [31:0]   axis_sg_int4_v2_1_s_axi_wdata,
  input  wire [3:0]    axis_sg_int4_v2_1_s_axi_wstrb,
  output wire          axis_sg_int4_v2_1_s_axi_bvalid,
  input  wire          axis_sg_int4_v2_1_s_axi_bready,
  output wire [1:0]    axis_sg_int4_v2_1_s_axi_bresp,
  input  wire          axis_sg_int4_v2_1_s_axi_arvalid,
  output wire          axis_sg_int4_v2_1_s_axi_arready,
  input  wire [5:0]    axis_sg_int4_v2_1_s_axi_araddr,
  input  wire [2:0]    axis_sg_int4_v2_1_s_axi_arprot,
  output wire          axis_sg_int4_v2_1_s_axi_rvalid,
  input  wire          axis_sg_int4_v2_1_s_axi_rready,
  output wire [31:0]   axis_sg_int4_v2_1_s_axi_rdata,
  output wire [1:0]    axis_sg_int4_v2_1_s_axi_rresp,
  input  wire          axis_sg_int4_v2_1_s0_axis_tvalid,
  output wire          axis_sg_int4_v2_1_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   axis_sg_int4_v2_1_s0_axis_tdata,
  input  wire          axis_sg_int4_v2_1_s1_axis_tvalid,
  output wire          axis_sg_int4_v2_1_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [159:0]  axis_sg_int4_v2_1_s1_axis_tdata,
  output wire          axis_sg_int4_v2_1_m_axis_tvalid,
  input  wire          axis_sg_int4_v2_1_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  axis_sg_int4_v2_1_m_axis_tdata,
  input  wire          axis_resampler_2x1_v1_0_s_axis_tvalid,
  output wire          axis_resampler_2x1_v1_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [127:0]  axis_resampler_2x1_v1_0_s_axis_tdata,
  output wire          axis_resampler_2x1_v1_0_m_axis_tvalid,
  input  wire          axis_resampler_2x1_v1_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [63:0]   axis_resampler_2x1_v1_0_m_axis_tdata,
  input  wire          axis_register_slice_0_s_axis_tvalid,
  output wire          axis_register_slice_0_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [255:0]  axis_register_slice_0_s_axis_tdata,
  output wire          axis_register_slice_0_m_axis_tvalid,
  input  wire          axis_register_slice_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  axis_register_slice_0_m_axis_tdata,
  input  wire          axis_register_slice_1_s_axis_tvalid,
  output wire          axis_register_slice_1_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [255:0]  axis_register_slice_1_s_axis_tdata,
  output wire          axis_register_slice_1_m_axis_tvalid,
  input  wire          axis_register_slice_1_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  axis_register_slice_1_m_axis_tdata,
  input  wire          axis_register_slice_2_s_axis_tvalid,
  output wire          axis_register_slice_2_s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [255:0]  axis_register_slice_2_s_axis_tdata,
  output wire          axis_register_slice_2_m_axis_tvalid,
  input  wire          axis_register_slice_2_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  axis_register_slice_2_m_axis_tdata,
  input  wire          sg_translator_0_s_tproc_axis_tvalid,
  output wire          sg_translator_0_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  sg_translator_0_s_tproc_axis_tdata,
  output wire          sg_translator_0_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_0_m_gen_v6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [159:0]  sg_translator_0_m_gen_v6_axis_tdata,
  output wire          sg_translator_0_m_int4_axis_tvalid,
  input  wire          sg_translator_0_m_int4_axis_tready,
  output wire [87:0]   sg_translator_0_m_int4_axis_tdata,
  output wire          sg_translator_0_m_mux4_axis_tvalid,
  input  wire          sg_translator_0_m_mux4_axis_tready,
  output wire [39:0]   sg_translator_0_m_mux4_axis_tdata,
  output wire          sg_translator_0_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_0_m_readout_v3_axis_tready,
  output wire [87:0]   sg_translator_0_m_readout_v3_axis_tdata,
  input  wire          sg_translator_1_s_tproc_axis_tvalid,
  output wire          sg_translator_1_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  sg_translator_1_s_tproc_axis_tdata,
  output wire          sg_translator_1_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_1_m_gen_v6_axis_tready,
  output wire [159:0]  sg_translator_1_m_gen_v6_axis_tdata,
  output wire          sg_translator_1_m_int4_axis_tvalid,
  input  wire          sg_translator_1_m_int4_axis_tready,
  output wire [87:0]   sg_translator_1_m_int4_axis_tdata,
  output wire          sg_translator_1_m_mux4_axis_tvalid,
  input  wire          sg_translator_1_m_mux4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [39:0]   sg_translator_1_m_mux4_axis_tdata,
  output wire          sg_translator_1_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_1_m_readout_v3_axis_tready,
  output wire [87:0]   sg_translator_1_m_readout_v3_axis_tdata,
  input  wire          sg_translator_2_s_tproc_axis_tvalid,
  output wire          sg_translator_2_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  sg_translator_2_s_tproc_axis_tdata,
  output wire          sg_translator_2_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_2_m_gen_v6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [159:0]  sg_translator_2_m_gen_v6_axis_tdata,
  output wire          sg_translator_2_m_int4_axis_tvalid,
  input  wire          sg_translator_2_m_int4_axis_tready,
  output wire [87:0]   sg_translator_2_m_int4_axis_tdata,
  output wire          sg_translator_2_m_mux4_axis_tvalid,
  input  wire          sg_translator_2_m_mux4_axis_tready,
  output wire [39:0]   sg_translator_2_m_mux4_axis_tdata,
  output wire          sg_translator_2_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_2_m_readout_v3_axis_tready,
  output wire [87:0]   sg_translator_2_m_readout_v3_axis_tdata,
  input  wire          sg_translator_3_s_tproc_axis_tvalid,
  output wire          sg_translator_3_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [167:0]  sg_translator_3_s_tproc_axis_tdata,
  output wire          sg_translator_3_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_3_m_gen_v6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [159:0]  sg_translator_3_m_gen_v6_axis_tdata,
  output wire          sg_translator_3_m_int4_axis_tvalid,
  input  wire          sg_translator_3_m_int4_axis_tready,
  output wire [87:0]   sg_translator_3_m_int4_axis_tdata,
  output wire          sg_translator_3_m_mux4_axis_tvalid,
  input  wire          sg_translator_3_m_mux4_axis_tready,
  output wire [39:0]   sg_translator_3_m_mux4_axis_tdata,
  output wire          sg_translator_3_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_3_m_readout_v3_axis_tready,
  output wire [87:0]   sg_translator_3_m_readout_v3_axis_tdata,
  input  wire          sg_translator_4_s_tproc_axis_tvalid,
  output wire          sg_translator_4_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [167:0]  sg_translator_4_s_tproc_axis_tdata,
  output wire          sg_translator_4_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_4_m_gen_v6_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [159:0]  sg_translator_4_m_gen_v6_axis_tdata,
  output wire          sg_translator_4_m_int4_axis_tvalid,
  input  wire          sg_translator_4_m_int4_axis_tready,
  output wire [87:0]   sg_translator_4_m_int4_axis_tdata,
  output wire          sg_translator_4_m_mux4_axis_tvalid,
  input  wire          sg_translator_4_m_mux4_axis_tready,
  output wire [39:0]   sg_translator_4_m_mux4_axis_tdata,
  output wire          sg_translator_4_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_4_m_readout_v3_axis_tready,
  output wire [87:0]   sg_translator_4_m_readout_v3_axis_tdata,
  input  wire          sg_translator_5_s_tproc_axis_tvalid,
  output wire          sg_translator_5_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [167:0]  sg_translator_5_s_tproc_axis_tdata,
  output wire          sg_translator_5_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_5_m_gen_v6_axis_tready,
  output wire [159:0]  sg_translator_5_m_gen_v6_axis_tdata,
  output wire          sg_translator_5_m_int4_axis_tvalid,
  input  wire          sg_translator_5_m_int4_axis_tready,
  output wire [87:0]   sg_translator_5_m_int4_axis_tdata,
  output wire          sg_translator_5_m_mux4_axis_tvalid,
  input  wire          sg_translator_5_m_mux4_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [39:0]   sg_translator_5_m_mux4_axis_tdata,
  output wire          sg_translator_5_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_5_m_readout_v3_axis_tready,
  output wire [87:0]   sg_translator_5_m_readout_v3_axis_tdata,
  input  wire          sg_translator_6_s_tproc_axis_tvalid,
  output wire          sg_translator_6_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [167:0]  sg_translator_6_s_tproc_axis_tdata,
  output wire          sg_translator_6_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_6_m_gen_v6_axis_tready,
  output wire [159:0]  sg_translator_6_m_gen_v6_axis_tdata,
  output wire          sg_translator_6_m_int4_axis_tvalid,
  input  wire          sg_translator_6_m_int4_axis_tready,
  output wire [87:0]   sg_translator_6_m_int4_axis_tdata,
  output wire          sg_translator_6_m_mux4_axis_tvalid,
  input  wire          sg_translator_6_m_mux4_axis_tready,
  output wire [39:0]   sg_translator_6_m_mux4_axis_tdata,
  output wire          sg_translator_6_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_6_m_readout_v3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [87:0]   sg_translator_6_m_readout_v3_axis_tdata,
  input  wire          sg_translator_7_s_tproc_axis_tvalid,
  output wire          sg_translator_7_s_tproc_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  sg_translator_7_s_tproc_axis_tdata,
  output wire          sg_translator_7_m_gen_v6_axis_tvalid,
  input  wire          sg_translator_7_m_gen_v6_axis_tready,
  output wire [159:0]  sg_translator_7_m_gen_v6_axis_tdata,
  output wire          sg_translator_7_m_int4_axis_tvalid,
  input  wire          sg_translator_7_m_int4_axis_tready,
  output wire [87:0]   sg_translator_7_m_int4_axis_tdata,
  output wire          sg_translator_7_m_mux4_axis_tvalid,
  input  wire          sg_translator_7_m_mux4_axis_tready,
  output wire [39:0]   sg_translator_7_m_mux4_axis_tdata,
  output wire          sg_translator_7_m_readout_v3_axis_tvalid,
  input  wire          sg_translator_7_m_readout_v3_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [87:0]   sg_translator_7_m_readout_v3_axis_tdata
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
  wire                m2_axis_queue_io_push_ready;
  wire                m2_axis_queue_io_pop_valid;
  wire       [63:0]   m2_axis_queue_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_io_popOccupancy;
  wire                m2_axis_queue_toplevel_rst_100_synchronized_1;
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
  wire                m2_axis_queue_1_io_push_ready;
  wire                m2_axis_queue_1_io_pop_valid;
  wire       [63:0]   m2_axis_queue_1_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_1_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_1_io_popOccupancy;
  wire                axis_avg_buffer_2_s_axi_awready_1;
  wire                axis_avg_buffer_2_s_axi_wready_1;
  wire                axis_avg_buffer_2_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_2_s_axi_bresp_1;
  wire                axis_avg_buffer_2_s_axi_arready_1;
  wire                axis_avg_buffer_2_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_2_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_2_s_axi_rresp_1;
  wire                axis_avg_buffer_2_s_axis_tready_1;
  wire                axis_avg_buffer_2_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_2_m0_axis_tdata_1;
  wire                axis_avg_buffer_2_m0_axis_tlast_1;
  wire                axis_avg_buffer_2_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_2_m1_axis_tdata_1;
  wire                axis_avg_buffer_2_m1_axis_tlast_1;
  wire                axis_avg_buffer_2_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_2_m2_axis_tdata_1;
  wire                m2_axis_queue_2_io_push_ready;
  wire                m2_axis_queue_2_io_pop_valid;
  wire       [63:0]   m2_axis_queue_2_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_2_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_2_io_popOccupancy;
  wire                axis_avg_buffer_3_s_axi_awready_1;
  wire                axis_avg_buffer_3_s_axi_wready_1;
  wire                axis_avg_buffer_3_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_3_s_axi_bresp_1;
  wire                axis_avg_buffer_3_s_axi_arready_1;
  wire                axis_avg_buffer_3_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_3_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_3_s_axi_rresp_1;
  wire                axis_avg_buffer_3_s_axis_tready_1;
  wire                axis_avg_buffer_3_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_3_m0_axis_tdata_1;
  wire                axis_avg_buffer_3_m0_axis_tlast_1;
  wire                axis_avg_buffer_3_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_3_m1_axis_tdata_1;
  wire                axis_avg_buffer_3_m1_axis_tlast_1;
  wire                axis_avg_buffer_3_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_3_m2_axis_tdata_1;
  wire                m2_axis_queue_3_io_push_ready;
  wire                m2_axis_queue_3_io_pop_valid;
  wire       [63:0]   m2_axis_queue_3_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_3_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_3_io_popOccupancy;
  wire                axis_avg_buffer_4_s_axi_awready_1;
  wire                axis_avg_buffer_4_s_axi_wready_1;
  wire                axis_avg_buffer_4_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_4_s_axi_bresp_1;
  wire                axis_avg_buffer_4_s_axi_arready_1;
  wire                axis_avg_buffer_4_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_4_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_4_s_axi_rresp_1;
  wire                axis_avg_buffer_4_s_axis_tready_1;
  wire                axis_avg_buffer_4_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_4_m0_axis_tdata_1;
  wire                axis_avg_buffer_4_m0_axis_tlast_1;
  wire                axis_avg_buffer_4_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_4_m1_axis_tdata_1;
  wire                axis_avg_buffer_4_m1_axis_tlast_1;
  wire                axis_avg_buffer_4_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_4_m2_axis_tdata_1;
  wire                m2_axis_queue_4_io_push_ready;
  wire                m2_axis_queue_4_io_pop_valid;
  wire       [63:0]   m2_axis_queue_4_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_4_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_4_io_popOccupancy;
  wire                axis_avg_buffer_5_s_axi_awready_1;
  wire                axis_avg_buffer_5_s_axi_wready_1;
  wire                axis_avg_buffer_5_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_5_s_axi_bresp_1;
  wire                axis_avg_buffer_5_s_axi_arready_1;
  wire                axis_avg_buffer_5_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_5_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_5_s_axi_rresp_1;
  wire                axis_avg_buffer_5_s_axis_tready_1;
  wire                axis_avg_buffer_5_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_5_m0_axis_tdata_1;
  wire                axis_avg_buffer_5_m0_axis_tlast_1;
  wire                axis_avg_buffer_5_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_5_m1_axis_tdata_1;
  wire                axis_avg_buffer_5_m1_axis_tlast_1;
  wire                axis_avg_buffer_5_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_5_m2_axis_tdata_1;
  wire                m2_axis_queue_5_io_push_ready;
  wire                m2_axis_queue_5_io_pop_valid;
  wire       [63:0]   m2_axis_queue_5_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_5_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_5_io_popOccupancy;
  wire                axis_avg_buffer_6_s_axi_awready_1;
  wire                axis_avg_buffer_6_s_axi_wready_1;
  wire                axis_avg_buffer_6_s_axi_bvalid_1;
  wire       [1:0]    axis_avg_buffer_6_s_axi_bresp_1;
  wire                axis_avg_buffer_6_s_axi_arready_1;
  wire                axis_avg_buffer_6_s_axi_rvalid_1;
  wire       [31:0]   axis_avg_buffer_6_s_axi_rdata_1;
  wire       [1:0]    axis_avg_buffer_6_s_axi_rresp_1;
  wire                axis_avg_buffer_6_s_axis_tready_1;
  wire                axis_avg_buffer_6_m0_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_6_m0_axis_tdata_1;
  wire                axis_avg_buffer_6_m0_axis_tlast_1;
  wire                axis_avg_buffer_6_m1_axis_tvalid_1;
  wire       [31:0]   axis_avg_buffer_6_m1_axis_tdata_1;
  wire                axis_avg_buffer_6_m1_axis_tlast_1;
  wire                axis_avg_buffer_6_m2_axis_tvalid_1;
  wire       [63:0]   axis_avg_buffer_6_m2_axis_tdata_1;
  wire                m2_axis_queue_6_io_push_ready;
  wire                m2_axis_queue_6_io_pop_valid;
  wire       [63:0]   m2_axis_queue_6_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_6_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_6_io_popOccupancy;
  wire                mr_buffer_et_0_s00_axi_awready_1;
  wire                mr_buffer_et_0_s00_axi_wready_1;
  wire                mr_buffer_et_0_s00_axi_bvalid_1;
  wire       [1:0]    mr_buffer_et_0_s00_axi_bresp_1;
  wire                mr_buffer_et_0_s00_axi_arready_1;
  wire                mr_buffer_et_0_s00_axi_rvalid_1;
  wire       [31:0]   mr_buffer_et_0_s00_axi_rdata_1;
  wire       [1:0]    mr_buffer_et_0_s00_axi_rresp_1;
  wire                mr_buffer_et_0_s00_axis_tready_1;
  wire                mr_buffer_et_0_m00_axis_tvalid_1;
  wire       [31:0]   mr_buffer_et_0_m00_axis_tdata_1;
  wire       [3:0]    mr_buffer_et_0_m00_axis_tstrb_1;
  wire                mr_buffer_et_0_m00_axis_tlast_1;
  wire                mr_buffer_et_0_s_dbg_probe_1;
  wire                mr_buffer_et_0_m_dbg_probe_1;
  wire                axis_pfb_readout_v3_0_s_axi_awready_1;
  wire                axis_pfb_readout_v3_0_s_axi_wready_1;
  wire                axis_pfb_readout_v3_0_s_axi_bvalid_1;
  wire       [1:0]    axis_pfb_readout_v3_0_s_axi_bresp_1;
  wire                axis_pfb_readout_v3_0_s_axi_arready_1;
  wire                axis_pfb_readout_v3_0_s_axi_rvalid_1;
  wire       [31:0]   axis_pfb_readout_v3_0_s_axi_rdata_1;
  wire       [1:0]    axis_pfb_readout_v3_0_s_axi_rresp_1;
  wire                axis_pfb_readout_v3_0_m0_axis_tvalid_1;
  wire       [31:0]   axis_pfb_readout_v3_0_m0_axis_tdata_1;
  wire                axis_pfb_readout_v3_0_m1_axis_tvalid_1;
  wire       [31:0]   axis_pfb_readout_v3_0_m1_axis_tdata_1;
  wire                axis_pfb_readout_v3_0_m2_axis_tvalid_1;
  wire       [31:0]   axis_pfb_readout_v3_0_m2_axis_tdata_1;
  wire                axis_pfb_readout_v3_0_m3_axis_tvalid_1;
  wire       [31:0]   axis_pfb_readout_v3_0_m3_axis_tdata_1;
  wire                axis_readout_v2_0_s_axi_awready_1;
  wire                axis_readout_v2_0_s_axi_wready_1;
  wire                axis_readout_v2_0_s_axi_bvalid_1;
  wire       [1:0]    axis_readout_v2_0_s_axi_bresp_1;
  wire                axis_readout_v2_0_s_axi_arready_1;
  wire                axis_readout_v2_0_s_axi_rvalid_1;
  wire       [31:0]   axis_readout_v2_0_s_axi_rdata_1;
  wire       [1:0]    axis_readout_v2_0_s_axi_rresp_1;
  wire                axis_readout_v2_0_s_axis_tready_1;
  wire                axis_readout_v2_0_m0_axis_tvalid_1;
  wire       [255:0]  axis_readout_v2_0_m0_axis_tdata_1;
  wire                axis_readout_v2_0_m1_axis_tvalid_1;
  wire       [31:0]   axis_readout_v2_0_m1_axis_tdata_1;
  wire                axis_readout_v3_0_s0_axis_tready_1;
  wire                axis_readout_v3_0_s1_axis_tready_1;
  wire                axis_readout_v3_0_m_axis_tvalid_1;
  wire       [31:0]   axis_readout_v3_0_m_axis_tdata_1;
  wire                axis_dyn_readout_v1_0_s0_axis_tready_1;
  wire                axis_dyn_readout_v1_0_s1_axis_tready_1;
  wire                axis_dyn_readout_v1_0_m0_axis_tvalid_1;
  wire       [255:0]  axis_dyn_readout_v1_0_m0_axis_tdata_1;
  wire                axis_dyn_readout_v1_0_m1_axis_tvalid_1;
  wire       [31:0]   axis_dyn_readout_v1_0_m1_axis_tdata_1;
  wire                axis_signal_gen_v6_0_s_axi_awready_1;
  wire                axis_signal_gen_v6_0_s_axi_wready_1;
  wire                axis_signal_gen_v6_0_s_axi_bvalid_1;
  wire       [1:0]    axis_signal_gen_v6_0_s_axi_bresp_1;
  wire                axis_signal_gen_v6_0_s_axi_arready_1;
  wire                axis_signal_gen_v6_0_s_axi_rvalid_1;
  wire       [31:0]   axis_signal_gen_v6_0_s_axi_rdata_1;
  wire       [1:0]    axis_signal_gen_v6_0_s_axi_rresp_1;
  wire                axis_signal_gen_v6_0_s0_axis_tready_1;
  wire                axis_signal_gen_v6_0_s1_axis_tready_1;
  wire                axis_signal_gen_v6_0_m_axis_tvalid_1;
  wire       [255:0]  axis_signal_gen_v6_0_m_axis_tdata_1;
  wire                axis_signal_gen_v6_1_s_axi_awready_1;
  wire                axis_signal_gen_v6_1_s_axi_wready_1;
  wire                axis_signal_gen_v6_1_s_axi_bvalid_1;
  wire       [1:0]    axis_signal_gen_v6_1_s_axi_bresp_1;
  wire                axis_signal_gen_v6_1_s_axi_arready_1;
  wire                axis_signal_gen_v6_1_s_axi_rvalid_1;
  wire       [31:0]   axis_signal_gen_v6_1_s_axi_rdata_1;
  wire       [1:0]    axis_signal_gen_v6_1_s_axi_rresp_1;
  wire                axis_signal_gen_v6_1_s0_axis_tready_1;
  wire                axis_signal_gen_v6_1_s1_axis_tready_1;
  wire                axis_signal_gen_v6_1_m_axis_tvalid_1;
  wire       [255:0]  axis_signal_gen_v6_1_m_axis_tdata_1;
  wire                axis_tmux_v1_0_s_axis_tready_1;
  wire                axis_tmux_v1_0_m0_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m0_axis_tdata_1;
  wire                axis_tmux_v1_0_m1_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m1_axis_tdata_1;
  wire                axis_tmux_v1_0_m2_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m2_axis_tdata_1;
  wire                axis_tmux_v1_0_m3_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m3_axis_tdata_1;
  wire                axis_tmux_v1_0_m4_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m4_axis_tdata_1;
  wire                axis_tmux_v1_0_m5_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m5_axis_tdata_1;
  wire                axis_tmux_v1_0_m6_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m6_axis_tdata_1;
  wire                axis_tmux_v1_0_m7_axis_tvalid_1;
  wire       [167:0]  axis_tmux_v1_0_m7_axis_tdata_1;
  wire                axis_cdcsync_v1_1_s0_axis_tready_1;
  wire                axis_cdcsync_v1_1_s1_axis_tready_1;
  wire                axis_cdcsync_v1_1_s2_axis_tready_1;
  wire                axis_cdcsync_v1_1_s3_axis_tready_1;
  wire                axis_cdcsync_v1_1_s4_axis_tready_1;
  wire                axis_cdcsync_v1_1_s5_axis_tready_1;
  wire                axis_cdcsync_v1_1_s6_axis_tready_1;
  wire                axis_cdcsync_v1_1_s7_axis_tready_1;
  wire                axis_cdcsync_v1_1_s8_axis_tready_1;
  wire                axis_cdcsync_v1_1_s9_axis_tready_1;
  wire                axis_cdcsync_v1_1_s10_axis_tready_1;
  wire                axis_cdcsync_v1_1_s11_axis_tready_1;
  wire                axis_cdcsync_v1_1_s12_axis_tready_1;
  wire                axis_cdcsync_v1_1_s13_axis_tready_1;
  wire                axis_cdcsync_v1_1_s14_axis_tready_1;
  wire                axis_cdcsync_v1_1_s15_axis_tready_1;
  wire                axis_cdcsync_v1_1_m0_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m0_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m1_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m1_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m2_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m2_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m3_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m3_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m4_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m4_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m5_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m5_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m6_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m6_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m7_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m7_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m8_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m8_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m9_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m9_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m10_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m10_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m11_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m11_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m12_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m12_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m13_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m13_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m14_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m14_axis_tdata_1;
  wire                axis_cdcsync_v1_1_m15_axis_tvalid_1;
  wire       [167:0]  axis_cdcsync_v1_1_m15_axis_tdata_1;
  wire                axis_sg_mux8_v1_0_s_axi_awready_1;
  wire                axis_sg_mux8_v1_0_s_axi_wready_1;
  wire                axis_sg_mux8_v1_0_s_axi_bvalid_1;
  wire       [1:0]    axis_sg_mux8_v1_0_s_axi_bresp_1;
  wire                axis_sg_mux8_v1_0_s_axi_arready_1;
  wire                axis_sg_mux8_v1_0_s_axi_rvalid_1;
  wire       [31:0]   axis_sg_mux8_v1_0_s_axi_rdata_1;
  wire       [1:0]    axis_sg_mux8_v1_0_s_axi_rresp_1;
  wire                axis_sg_mux8_v1_0_s_axis_tready_1;
  wire                axis_sg_mux8_v1_0_m_axis_tvalid_1;
  wire       [255:0]  axis_sg_mux8_v1_0_m_axis_tdata_1;
  wire                axis_sg_mixmux8_v1_0_s_axi_awready_1;
  wire                axis_sg_mixmux8_v1_0_s_axi_wready_1;
  wire                axis_sg_mixmux8_v1_0_s_axi_bvalid_1;
  wire       [1:0]    axis_sg_mixmux8_v1_0_s_axi_bresp_1;
  wire                axis_sg_mixmux8_v1_0_s_axi_arready_1;
  wire                axis_sg_mixmux8_v1_0_s_axi_rvalid_1;
  wire       [31:0]   axis_sg_mixmux8_v1_0_s_axi_rdata_1;
  wire       [1:0]    axis_sg_mixmux8_v1_0_s_axi_rresp_1;
  wire                axis_sg_mixmux8_v1_0_s_axis_tready_1;
  wire                axis_sg_mixmux8_v1_0_m_axis_tvalid_1;
  wire       [127:0]  axis_sg_mixmux8_v1_0_m_axis_tdata_1;
  wire                axis_sg_int4_v2_0_s_axi_awready_1;
  wire                axis_sg_int4_v2_0_s_axi_wready_1;
  wire                axis_sg_int4_v2_0_s_axi_bvalid_1;
  wire       [1:0]    axis_sg_int4_v2_0_s_axi_bresp_1;
  wire                axis_sg_int4_v2_0_s_axi_arready_1;
  wire                axis_sg_int4_v2_0_s_axi_rvalid_1;
  wire       [31:0]   axis_sg_int4_v2_0_s_axi_rdata_1;
  wire       [1:0]    axis_sg_int4_v2_0_s_axi_rresp_1;
  wire                axis_sg_int4_v2_0_s0_axis_tready_1;
  wire                axis_sg_int4_v2_0_s1_axis_tready_1;
  wire                axis_sg_int4_v2_0_m_axis_tvalid_1;
  wire       [127:0]  axis_sg_int4_v2_0_m_axis_tdata_1;
  wire                axis_sg_int4_v2_1_s_axi_awready_1;
  wire                axis_sg_int4_v2_1_s_axi_wready_1;
  wire                axis_sg_int4_v2_1_s_axi_bvalid_1;
  wire       [1:0]    axis_sg_int4_v2_1_s_axi_bresp_1;
  wire                axis_sg_int4_v2_1_s_axi_arready_1;
  wire                axis_sg_int4_v2_1_s_axi_rvalid_1;
  wire       [31:0]   axis_sg_int4_v2_1_s_axi_rdata_1;
  wire       [1:0]    axis_sg_int4_v2_1_s_axi_rresp_1;
  wire                axis_sg_int4_v2_1_s0_axis_tready_1;
  wire                axis_sg_int4_v2_1_s1_axis_tready_1;
  wire                axis_sg_int4_v2_1_m_axis_tvalid_1;
  wire       [127:0]  axis_sg_int4_v2_1_m_axis_tdata_1;
  wire                axis_resampler_2x1_v1_0_s_axis_tready_1;
  wire                axis_resampler_2x1_v1_0_m_axis_tvalid_1;
  wire       [63:0]   axis_resampler_2x1_v1_0_m_axis_tdata_1;
  wire                axis_register_slice_0_s_axis_tready_1;
  wire                axis_register_slice_0_m_axis_tvalid_1;
  wire       [255:0]  axis_register_slice_0_m_axis_tdata_1;
  wire                axis_register_slice_1_s_axis_tready_1;
  wire                axis_register_slice_1_m_axis_tvalid_1;
  wire       [255:0]  axis_register_slice_1_m_axis_tdata_1;
  wire                axis_register_slice_2_s_axis_tready_1;
  wire                axis_register_slice_2_m_axis_tvalid_1;
  wire       [255:0]  axis_register_slice_2_m_axis_tdata_1;
  wire                sg_translator_0_s_tproc_axis_tready_1;
  wire                sg_translator_0_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_0_m_gen_v6_axis_tdata_1;
  wire                sg_translator_0_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_0_m_int4_axis_tdata_1;
  wire                sg_translator_0_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_0_m_mux4_axis_tdata_1;
  wire                sg_translator_0_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_0_m_readout_v3_axis_tdata_1;
  wire                sg_translator_1_s_tproc_axis_tready_1;
  wire                sg_translator_1_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_1_m_gen_v6_axis_tdata_1;
  wire                sg_translator_1_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_1_m_int4_axis_tdata_1;
  wire                sg_translator_1_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_1_m_mux4_axis_tdata_1;
  wire                sg_translator_1_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_1_m_readout_v3_axis_tdata_1;
  wire                sg_translator_2_s_tproc_axis_tready_1;
  wire                sg_translator_2_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_2_m_gen_v6_axis_tdata_1;
  wire                sg_translator_2_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_2_m_int4_axis_tdata_1;
  wire                sg_translator_2_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_2_m_mux4_axis_tdata_1;
  wire                sg_translator_2_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_2_m_readout_v3_axis_tdata_1;
  wire                sg_translator_3_s_tproc_axis_tready_1;
  wire                sg_translator_3_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_3_m_gen_v6_axis_tdata_1;
  wire                sg_translator_3_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_3_m_int4_axis_tdata_1;
  wire                sg_translator_3_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_3_m_mux4_axis_tdata_1;
  wire                sg_translator_3_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_3_m_readout_v3_axis_tdata_1;
  wire                sg_translator_4_s_tproc_axis_tready_1;
  wire                sg_translator_4_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_4_m_gen_v6_axis_tdata_1;
  wire                sg_translator_4_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_4_m_int4_axis_tdata_1;
  wire                sg_translator_4_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_4_m_mux4_axis_tdata_1;
  wire                sg_translator_4_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_4_m_readout_v3_axis_tdata_1;
  wire                sg_translator_5_s_tproc_axis_tready_1;
  wire                sg_translator_5_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_5_m_gen_v6_axis_tdata_1;
  wire                sg_translator_5_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_5_m_int4_axis_tdata_1;
  wire                sg_translator_5_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_5_m_mux4_axis_tdata_1;
  wire                sg_translator_5_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_5_m_readout_v3_axis_tdata_1;
  wire                sg_translator_6_s_tproc_axis_tready_1;
  wire                sg_translator_6_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_6_m_gen_v6_axis_tdata_1;
  wire                sg_translator_6_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_6_m_int4_axis_tdata_1;
  wire                sg_translator_6_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_6_m_mux4_axis_tdata_1;
  wire                sg_translator_6_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_6_m_readout_v3_axis_tdata_1;
  wire                sg_translator_7_s_tproc_axis_tready_1;
  wire                sg_translator_7_m_gen_v6_axis_tvalid_1;
  wire       [159:0]  sg_translator_7_m_gen_v6_axis_tdata_1;
  wire                sg_translator_7_m_int4_axis_tvalid_1;
  wire       [87:0]   sg_translator_7_m_int4_axis_tdata_1;
  wire                sg_translator_7_m_mux4_axis_tvalid_1;
  wire       [39:0]   sg_translator_7_m_mux4_axis_tdata_1;
  wire                sg_translator_7_m_readout_v3_axis_tvalid_1;
  wire       [87:0]   sg_translator_7_m_readout_v3_axis_tdata_1;
  wire                qick_processor_0_t_clk_i;
  wire                qick_processor_0_t_resetn;
  wire                qick_processor_0_ps_clk_i;
  wire                qick_processor_0_ps_resetn;
  wire                qick_processor_0_s0_axis_tvalid;
  wire                qick_processor_0_s0_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s0_axis_tdata;
  wire                qick_processor_0_s1_axis_tvalid;
  wire                qick_processor_0_s1_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s1_axis_tdata;
  wire                qick_processor_0_s2_axis_tvalid;
  wire                qick_processor_0_s2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s2_axis_tdata;
  wire                qick_processor_0_s3_axis_tvalid;
  wire                qick_processor_0_s3_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s3_axis_tdata;
  wire                qick_processor_0_s4_axis_tvalid;
  wire                qick_processor_0_s4_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s4_axis_tdata;
  wire                qick_processor_0_s5_axis_tvalid;
  wire                qick_processor_0_s5_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s5_axis_tdata;
  wire                qick_processor_0_s6_axis_tvalid;
  wire                qick_processor_0_s6_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s6_axis_tdata;
  wire                axis_avg_buffer_0_s_axi_aclk_i;
  wire                axis_avg_buffer_0_s_axi_aresetn;
  wire                axis_avg_buffer_0_trigger;
  wire                axis_avg_buffer_0_s_axis_aclk_i;
  wire                axis_avg_buffer_0_s_axis_aresetn;
  wire                axis_avg_buffer_0_m_axis_aclk_i;
  wire                axis_avg_buffer_0_m_axis_aresetn;
  wire                axis_avg_buffer_0_m2_axis_tvalid;
  wire                axis_avg_buffer_0_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_0_m2_axis_tdata;
  wire                axis_avg_buffer_1_s_axi_aclk_i;
  wire                axis_avg_buffer_1_s_axi_aresetn;
  wire                axis_avg_buffer_1_trigger;
  wire                axis_avg_buffer_1_s_axis_aclk_i;
  wire                axis_avg_buffer_1_s_axis_aresetn;
  wire                axis_avg_buffer_1_m_axis_aclk_i;
  wire                axis_avg_buffer_1_m_axis_aresetn;
  wire                axis_avg_buffer_1_m2_axis_tvalid;
  wire                axis_avg_buffer_1_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_1_m2_axis_tdata;
  wire                axis_avg_buffer_2_s_axi_aclk_i;
  wire                axis_avg_buffer_2_s_axi_aresetn;
  wire                axis_avg_buffer_2_trigger;
  wire                axis_avg_buffer_2_s_axis_aclk_i;
  wire                axis_avg_buffer_2_s_axis_aresetn;
  wire                axis_avg_buffer_2_m_axis_aclk_i;
  wire                axis_avg_buffer_2_m_axis_aresetn;
  wire                axis_avg_buffer_2_m2_axis_tvalid;
  wire                axis_avg_buffer_2_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_2_m2_axis_tdata;
  wire                axis_avg_buffer_3_s_axi_aclk_i;
  wire                axis_avg_buffer_3_s_axi_aresetn;
  wire                axis_avg_buffer_3_trigger;
  wire                axis_avg_buffer_3_s_axis_aclk_i;
  wire                axis_avg_buffer_3_s_axis_aresetn;
  wire                axis_avg_buffer_3_m_axis_aclk_i;
  wire                axis_avg_buffer_3_m_axis_aresetn;
  wire                axis_avg_buffer_3_m2_axis_tvalid;
  wire                axis_avg_buffer_3_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_3_m2_axis_tdata;
  wire                axis_avg_buffer_4_s_axi_aclk_i;
  wire                axis_avg_buffer_4_s_axi_aresetn;
  wire                axis_avg_buffer_4_trigger;
  wire                axis_avg_buffer_4_s_axis_aclk_i;
  wire                axis_avg_buffer_4_s_axis_aresetn;
  wire                axis_avg_buffer_4_m_axis_aclk_i;
  wire                axis_avg_buffer_4_m_axis_aresetn;
  wire                axis_avg_buffer_4_m2_axis_tvalid;
  wire                axis_avg_buffer_4_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_4_m2_axis_tdata;
  wire                axis_avg_buffer_5_s_axi_aclk_i;
  wire                axis_avg_buffer_5_s_axi_aresetn;
  wire                axis_avg_buffer_5_trigger;
  wire                axis_avg_buffer_5_s_axis_aclk_i;
  wire                axis_avg_buffer_5_s_axis_aresetn;
  wire                axis_avg_buffer_5_m_axis_aclk_i;
  wire                axis_avg_buffer_5_m_axis_aresetn;
  wire                axis_avg_buffer_5_m2_axis_tvalid;
  wire                axis_avg_buffer_5_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_5_m2_axis_tdata;
  wire                axis_avg_buffer_6_s_axi_aclk_i;
  wire                axis_avg_buffer_6_s_axi_aresetn;
  wire                axis_avg_buffer_6_trigger;
  wire                axis_avg_buffer_6_s_axis_aclk_i;
  wire                axis_avg_buffer_6_s_axis_aresetn;
  wire                axis_avg_buffer_6_m_axis_aclk_i;
  wire                axis_avg_buffer_6_m_axis_aresetn;
  wire                axis_avg_buffer_6_m2_axis_tvalid;
  wire                axis_avg_buffer_6_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) wire       [63:0]   axis_avg_buffer_6_m2_axis_tdata;
  wire                mr_buffer_et_0_trigger;
  wire                mr_buffer_et_0_s00_axi_aclk;
  wire                mr_buffer_et_0_s00_axi_aresetn;
  wire                mr_buffer_et_0_s00_axis_aclk;
  wire                mr_buffer_et_0_s00_axis_aresetn;
  wire                mr_buffer_et_0_m00_axis_aclk;
  wire                mr_buffer_et_0_m00_axis_aresetn;
  wire                axis_pfb_readout_v3_0_s_axi_aresetn;
  wire                axis_pfb_readout_v3_0_s_axi_aclk_i;
  wire                axis_pfb_readout_v3_0_aresetn;
  wire                axis_pfb_readout_v3_0_aclk_i;
  wire                axis_readout_v2_0_s_axi_aclk_i;
  wire                axis_readout_v2_0_s_axi_aresetn;
  wire                axis_readout_v2_0_aresetn;
  wire                axis_readout_v2_0_aclk_i;
  wire                axis_readout_v3_0_aclk_i;
  wire                axis_readout_v3_0_aresetn;
  wire                axis_dyn_readout_v1_0_aresetn;
  wire                axis_dyn_readout_v1_0_aclk;
  wire                axis_signal_gen_v6_0_s_axi_aclk_i;
  wire                axis_signal_gen_v6_0_s_axi_aresetn;
  wire                axis_signal_gen_v6_0_s0_axis_aclk_i;
  wire                axis_signal_gen_v6_0_s0_axis_aresetn;
  wire                axis_signal_gen_v6_0_aresetn;
  wire                axis_signal_gen_v6_0_aclk_i;
  wire                axis_signal_gen_v6_1_s_axi_aclk_i;
  wire                axis_signal_gen_v6_1_s_axi_aresetn;
  wire                axis_signal_gen_v6_1_s0_axis_aclk_i;
  wire                axis_signal_gen_v6_1_s0_axis_aresetn;
  wire                axis_signal_gen_v6_1_aresetn;
  wire                axis_signal_gen_v6_1_aclk_i;
  wire                axis_tmux_v1_0_aresetn;
  wire                axis_tmux_v1_0_aclk;
  wire                axis_cdcsync_v1_1_s_axis_aresetn;
  wire                axis_cdcsync_v1_1_s_axis_aclk;
  wire                axis_cdcsync_v1_1_m_axis_aresetn;
  wire                axis_cdcsync_v1_1_m_axis_aclk;
  wire                axis_sg_mux8_v1_0_s_axi_aresetn;
  wire                axis_sg_mux8_v1_0_s_axi_aclk_i;
  wire                axis_sg_mux8_v1_0_aclk_i;
  wire                axis_sg_mux8_v1_0_aresetn;
  wire                axis_sg_mixmux8_v1_0_s_axi_aresetn;
  wire                axis_sg_mixmux8_v1_0_s_axi_aclk_i;
  wire                axis_sg_mixmux8_v1_0_aresetn;
  wire                axis_sg_mixmux8_v1_0_aclk_i;
  wire                axis_sg_int4_v2_0_s_axi_aclk_i;
  wire                axis_sg_int4_v2_0_s_axi_aresetn;
  wire                axis_sg_int4_v2_0_s0_axis_aclk;
  wire                axis_sg_int4_v2_0_s0_axis_aresetn;
  wire                axis_sg_int4_v2_0_aresetn;
  wire                axis_sg_int4_v2_0_aclk_i;
  wire                axis_sg_int4_v2_1_s_axi_aclk_i;
  wire                axis_sg_int4_v2_1_s_axi_aresetn;
  wire                axis_sg_int4_v2_1_s0_axis_aclk;
  wire                axis_sg_int4_v2_1_s0_axis_aresetn;
  wire                axis_sg_int4_v2_1_aresetn;
  wire                axis_sg_int4_v2_1_aclk_i;
  wire                axis_resampler_2x1_v1_0_aclk;
  wire                axis_resampler_2x1_v1_0_aresetn;
  wire                axis_register_slice_0_aresetn;
  wire                axis_register_slice_0_aclk;
  wire                axis_register_slice_1_aresetn;
  wire                axis_register_slice_1_aclk;
  wire                axis_register_slice_2_aresetn;
  wire                axis_register_slice_2_aclk;
  wire                sg_translator_0_aresetn;
  wire                sg_translator_0_aclk;
  wire                sg_translator_1_aresetn;
  wire                sg_translator_1_aclk;
  wire                sg_translator_2_aresetn;
  wire                sg_translator_2_aclk;
  wire                sg_translator_3_aresetn;
  wire                sg_translator_3_aclk;
  wire                sg_translator_4_aresetn;
  wire                sg_translator_4_aclk;
  wire                sg_translator_5_aresetn;
  wire                sg_translator_5_aclk;
  wire                sg_translator_6_aresetn;
  wire                sg_translator_6_aclk;
  wire                sg_translator_7_aresetn;
  wire                sg_translator_7_aclk;

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
    .t_clk_i             (clk_dac2                                  ), //i
    .t_resetn            (rst_dac2                                  ), //i
    .ps_clk_i            (clk_pl                                    ), //i
    .ps_resetn           (rst_100                                   ), //i
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
    .s0_axis_tvalid      (m2_axis_queue_io_pop_valid                ), //i
    .s0_axis_tready      (qickProcessor_s0_axis_tready              ), //o
    .s0_axis_tdata       (m2_axis_queue_io_pop_payload_data[63:0]   ), //i
    .s1_axis_tvalid      (m2_axis_queue_1_io_pop_valid              ), //i
    .s1_axis_tready      (qickProcessor_s1_axis_tready              ), //o
    .s1_axis_tdata       (m2_axis_queue_1_io_pop_payload_data[63:0] ), //i
    .s2_axis_tvalid      (m2_axis_queue_2_io_pop_valid              ), //i
    .s2_axis_tready      (qickProcessor_s2_axis_tready              ), //o
    .s2_axis_tdata       (m2_axis_queue_2_io_pop_payload_data[63:0] ), //i
    .s3_axis_tvalid      (m2_axis_queue_3_io_pop_valid              ), //i
    .s3_axis_tready      (qickProcessor_s3_axis_tready              ), //o
    .s3_axis_tdata       (m2_axis_queue_3_io_pop_payload_data[63:0] ), //i
    .s4_axis_tvalid      (m2_axis_queue_4_io_pop_valid              ), //i
    .s4_axis_tready      (qickProcessor_s4_axis_tready              ), //o
    .s4_axis_tdata       (m2_axis_queue_4_io_pop_payload_data[63:0] ), //i
    .s5_axis_tvalid      (m2_axis_queue_5_io_pop_valid              ), //i
    .s5_axis_tready      (qickProcessor_s5_axis_tready              ), //o
    .s5_axis_tdata       (m2_axis_queue_5_io_pop_payload_data[63:0] ), //i
    .s6_axis_tvalid      (m2_axis_queue_6_io_pop_valid              ), //i
    .s6_axis_tready      (qickProcessor_s6_axis_tready              ), //o
    .s6_axis_tdata       (m2_axis_queue_6_io_pop_payload_data[63:0] ), //i
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
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_10_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_0_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_0_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_0_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_adc2                               ), //i
    .s_axis_aresetn (rst_adc2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_0_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_0_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_0_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_0_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_0_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_0_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_0_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_0_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_0_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_io_push_ready            ), //i
    .m2_axis_tdata  (axis_avg_buffer_0_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC m2_axis_queue (
    .io_push_valid                   (axis_avg_buffer_0_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_io_push_ready                  ), //o
    .io_push_payload_data            (axis_avg_buffer_0_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_io_pop_valid                   ), //o
    .io_pop_ready                    (qickProcessor_s0_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_io_pop_payload_data[63:0]      ), //o
    .io_pushOccupancy                (m2_axis_queue_io_pushOccupancy[1:0]          ), //o
    .io_popOccupancy                 (m2_axis_queue_io_popOccupancy[1:0]           ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //o
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
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_11_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_1_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_1_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_1_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_dac2                               ), //i
    .s_axis_aresetn (rst_dac2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_1_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_1_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_1_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_1_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_1_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_1_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_1_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_1_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_1_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_1_io_push_ready          ), //i
    .m2_axis_tdata  (axis_avg_buffer_1_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_1 (
    .io_push_valid                   (axis_avg_buffer_1_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_1_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_1_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_1_io_pop_valid                 ), //o
    .io_pop_ready                    (qickProcessor_s1_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_1_io_pop_payload_data[63:0]    ), //o
    .io_pushOccupancy                (m2_axis_queue_1_io_pushOccupancy[1:0]        ), //o
    .io_popOccupancy                 (m2_axis_queue_1_io_popOccupancy[1:0]         ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //i
  );
  AxisAvgBuffer_2 axis_avg_buffer_2 (
    .s_axi_awvalid  (axis_avg_buffer_2_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_2_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_2_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_2_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_2_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_2_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_2_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_2_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_2_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_2_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_2_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_2_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_2_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_2_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_2_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_2_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_2_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_2_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_2_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_12_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_2_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_2_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_2_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_adc2                               ), //i
    .s_axis_aresetn (rst_adc2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_2_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_2_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_2_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_2_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_2_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_2_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_2_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_2_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_2_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_2_io_push_ready          ), //i
    .m2_axis_tdata  (axis_avg_buffer_2_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_2 (
    .io_push_valid                   (axis_avg_buffer_2_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_2_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_2_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_2_io_pop_valid                 ), //o
    .io_pop_ready                    (qickProcessor_s2_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_2_io_pop_payload_data[63:0]    ), //o
    .io_pushOccupancy                (m2_axis_queue_2_io_pushOccupancy[1:0]        ), //o
    .io_popOccupancy                 (m2_axis_queue_2_io_popOccupancy[1:0]         ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //i
  );
  AxisAvgBuffer_2 axis_avg_buffer_3 (
    .s_axi_awvalid  (axis_avg_buffer_3_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_3_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_3_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_3_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_3_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_3_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_3_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_3_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_3_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_3_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_3_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_3_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_3_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_3_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_3_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_3_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_3_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_3_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_3_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_13_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_3_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_3_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_3_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_adc2                               ), //i
    .s_axis_aresetn (rst_adc2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_3_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_3_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_3_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_3_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_3_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_3_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_3_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_3_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_3_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_3_io_push_ready          ), //i
    .m2_axis_tdata  (axis_avg_buffer_3_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_3 (
    .io_push_valid                   (axis_avg_buffer_3_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_3_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_3_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_3_io_pop_valid                 ), //o
    .io_pop_ready                    (qickProcessor_s3_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_3_io_pop_payload_data[63:0]    ), //o
    .io_pushOccupancy                (m2_axis_queue_3_io_pushOccupancy[1:0]        ), //o
    .io_popOccupancy                 (m2_axis_queue_3_io_popOccupancy[1:0]         ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //i
  );
  AxisAvgBuffer_2 axis_avg_buffer_4 (
    .s_axi_awvalid  (axis_avg_buffer_4_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_4_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_4_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_4_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_4_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_4_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_4_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_4_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_4_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_4_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_4_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_4_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_4_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_4_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_4_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_4_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_4_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_4_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_4_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_14_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_4_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_4_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_4_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_adc2                               ), //i
    .s_axis_aresetn (rst_adc2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_4_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_4_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_4_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_4_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_4_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_4_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_4_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_4_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_4_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_4_io_push_ready          ), //i
    .m2_axis_tdata  (axis_avg_buffer_4_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_4 (
    .io_push_valid                   (axis_avg_buffer_4_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_4_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_4_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_4_io_pop_valid                 ), //o
    .io_pop_ready                    (qickProcessor_s4_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_4_io_pop_payload_data[63:0]    ), //o
    .io_pushOccupancy                (m2_axis_queue_4_io_pushOccupancy[1:0]        ), //o
    .io_popOccupancy                 (m2_axis_queue_4_io_popOccupancy[1:0]         ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //i
  );
  AxisAvgBuffer_2 axis_avg_buffer_5 (
    .s_axi_awvalid  (axis_avg_buffer_5_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_5_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_5_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_5_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_5_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_5_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_5_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_5_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_5_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_5_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_5_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_5_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_5_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_5_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_5_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_5_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_5_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_5_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_5_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_15_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_5_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_5_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_5_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_adc2                               ), //i
    .s_axis_aresetn (rst_adc2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_5_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_5_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_5_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_5_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_5_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_5_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_5_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_5_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_5_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_5_io_push_ready          ), //i
    .m2_axis_tdata  (axis_avg_buffer_5_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_5 (
    .io_push_valid                   (axis_avg_buffer_5_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_5_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_5_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_5_io_pop_valid                 ), //o
    .io_pop_ready                    (qickProcessor_s5_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_5_io_pop_payload_data[63:0]    ), //o
    .io_pushOccupancy                (m2_axis_queue_5_io_pushOccupancy[1:0]        ), //o
    .io_popOccupancy                 (m2_axis_queue_5_io_popOccupancy[1:0]         ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //i
  );
  AxisAvgBuffer axis_avg_buffer_6 (
    .s_axi_awvalid  (axis_avg_buffer_6_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_6_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_avg_buffer_6_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_6_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_6_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_6_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_avg_buffer_6_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_6_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_6_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_avg_buffer_6_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_6_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_6_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_6_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_avg_buffer_6_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_6_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_6_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_avg_buffer_6_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_6_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_6_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i   (clk_pl                                 ), //i
    .s_axi_aresetn  (rst_100                                ), //i
    .trigger        (qickProcessor_trig_16_o                ), //i
    .s_axis_tvalid  (axis_avg_buffer_6_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_6_s_axis_tready_1      ), //o
    .s_axis_tdata   (axis_avg_buffer_6_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (clk_adc2                               ), //i
    .s_axis_aresetn (rst_adc2                               ), //i
    .m_axis_aclk_i  (clk_pl                                 ), //i
    .m_axis_aresetn (rst_100                                ), //i
    .m0_axis_tvalid (axis_avg_buffer_6_m0_axis_tvalid_1     ), //o
    .m0_axis_tready (axis_avg_buffer_6_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_6_m0_axis_tdata_1[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_6_m0_axis_tlast_1      ), //o
    .m1_axis_tvalid (axis_avg_buffer_6_m1_axis_tvalid_1     ), //o
    .m1_axis_tready (axis_avg_buffer_6_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_6_m1_axis_tdata_1[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_6_m1_axis_tlast_1      ), //o
    .m2_axis_tvalid (axis_avg_buffer_6_m2_axis_tvalid_1     ), //o
    .m2_axis_tready (m2_axis_queue_6_io_push_ready          ), //i
    .m2_axis_tdata  (axis_avg_buffer_6_m2_axis_tdata_1[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_6 (
    .io_push_valid                   (axis_avg_buffer_6_m2_axis_tvalid_1           ), //i
    .io_push_ready                   (m2_axis_queue_6_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_6_m2_axis_tdata_1[63:0]      ), //i
    .io_pop_valid                    (m2_axis_queue_6_io_pop_valid                 ), //o
    .io_pop_ready                    (qickProcessor_s6_axis_tready                 ), //i
    .io_pop_payload_data             (m2_axis_queue_6_io_pop_payload_data[63:0]    ), //o
    .io_pushOccupancy                (m2_axis_queue_6_io_pushOccupancy[1:0]        ), //o
    .io_popOccupancy                 (m2_axis_queue_6_io_popOccupancy[1:0]         ), //o
    .clk_pl                          (clk_pl                                       ), //i
    .rst_100                         (rst_100                                      ), //i
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i                     ), //i
    .toplevel_rst_100_synchronized_1 (m2_axis_queue_toplevel_rst_100_synchronized_1)  //i
  );
  MrBufferV1 mr_buffer_et_0 (
    .trigger          (qickProcessor_trig_9_o               ), //i
    .s00_axi_awvalid  (mr_buffer_et_0_s00_axi_awvalid       ), //i
    .s00_axi_awready  (mr_buffer_et_0_s00_axi_awready_1     ), //o
    .s00_axi_awaddr   (mr_buffer_et_0_s00_axi_awaddr[5:0]   ), //i
    .s00_axi_awprot   (mr_buffer_et_0_s00_axi_awprot[2:0]   ), //i
    .s00_axi_wvalid   (mr_buffer_et_0_s00_axi_wvalid        ), //i
    .s00_axi_wready   (mr_buffer_et_0_s00_axi_wready_1      ), //o
    .s00_axi_wdata    (mr_buffer_et_0_s00_axi_wdata[31:0]   ), //i
    .s00_axi_wstrb    (mr_buffer_et_0_s00_axi_wstrb[3:0]    ), //i
    .s00_axi_bvalid   (mr_buffer_et_0_s00_axi_bvalid_1      ), //o
    .s00_axi_bready   (mr_buffer_et_0_s00_axi_bready        ), //i
    .s00_axi_bresp    (mr_buffer_et_0_s00_axi_bresp_1[1:0]  ), //o
    .s00_axi_arvalid  (mr_buffer_et_0_s00_axi_arvalid       ), //i
    .s00_axi_arready  (mr_buffer_et_0_s00_axi_arready_1     ), //o
    .s00_axi_araddr   (mr_buffer_et_0_s00_axi_araddr[5:0]   ), //i
    .s00_axi_arprot   (mr_buffer_et_0_s00_axi_arprot[2:0]   ), //i
    .s00_axi_rvalid   (mr_buffer_et_0_s00_axi_rvalid_1      ), //o
    .s00_axi_rready   (mr_buffer_et_0_s00_axi_rready        ), //i
    .s00_axi_rdata    (mr_buffer_et_0_s00_axi_rdata_1[31:0] ), //o
    .s00_axi_rresp    (mr_buffer_et_0_s00_axi_rresp_1[1:0]  ), //o
    .s00_axi_aclk     (clk_pl                               ), //i
    .s00_axi_aresetn  (rst_100                              ), //i
    .s00_axis_tvalid  (mr_buffer_et_0_s00_axis_tvalid       ), //i
    .s00_axis_tready  (mr_buffer_et_0_s00_axis_tready_1     ), //o
    .s00_axis_tdata   (mr_buffer_et_0_s00_axis_tdata[255:0] ), //i
    .s00_axis_tstrb   (mr_buffer_et_0_s00_axis_tstrb[31:0]  ), //i
    .s00_axis_tlast   (mr_buffer_et_0_s00_axis_tlast        ), //i
    .s00_axis_aclk    (clk_adc2                             ), //i
    .s00_axis_aresetn (rst_adc2                             ), //i
    .m00_axis_tvalid  (mr_buffer_et_0_m00_axis_tvalid_1     ), //o
    .m00_axis_tready  (mr_buffer_et_0_m00_axis_tready       ), //i
    .m00_axis_tdata   (mr_buffer_et_0_m00_axis_tdata_1[31:0]), //o
    .m00_axis_tstrb   (mr_buffer_et_0_m00_axis_tstrb_1[3:0] ), //o
    .m00_axis_tlast   (mr_buffer_et_0_m00_axis_tlast_1      ), //o
    .m00_axis_aclk    (clk_pl                               ), //i
    .m00_axis_aresetn (rst_100                              ), //i
    .s_dbg_probe      (mr_buffer_et_0_s_dbg_probe_1         ), //o
    .m_dbg_probe      (mr_buffer_et_0_m_dbg_probe_1         )  //o
  );
  AxisPfbReadout axis_pfb_readout_v3_0 (
    .s_axi_aresetn  (rst_100                                    ), //i
    .s_axi_aclk_i   (clk_pl                                     ), //i
    .s_axi_awvalid  (axis_pfb_readout_v3_0_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_pfb_readout_v3_0_s_axi_awready_1      ), //o
    .s_axi_awaddr   (axis_pfb_readout_v3_0_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_pfb_readout_v3_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_pfb_readout_v3_0_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_pfb_readout_v3_0_s_axi_wready_1       ), //o
    .s_axi_wdata    (axis_pfb_readout_v3_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_pfb_readout_v3_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_pfb_readout_v3_0_s_axi_bvalid_1       ), //o
    .s_axi_bready   (axis_pfb_readout_v3_0_s_axi_bready         ), //i
    .s_axi_bresp    (axis_pfb_readout_v3_0_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid  (axis_pfb_readout_v3_0_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_pfb_readout_v3_0_s_axi_arready_1      ), //o
    .s_axi_araddr   (axis_pfb_readout_v3_0_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_pfb_readout_v3_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_pfb_readout_v3_0_s_axi_rvalid_1       ), //o
    .s_axi_rready   (axis_pfb_readout_v3_0_s_axi_rready         ), //i
    .s_axi_rdata    (axis_pfb_readout_v3_0_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp    (axis_pfb_readout_v3_0_s_axi_rresp_1[1:0]   ), //o
    .aresetn        (rst_adc2                                   ), //i
    .aclk_i         (clk_adc2                                   ), //i
    .s_axis_tvalid  (axis_pfb_readout_v3_0_s_axis_tvalid        ), //i
    .s_axis_tdata   (axis_pfb_readout_v3_0_s_axis_tdata[127:0]  ), //i
    .m0_axis_tvalid (axis_pfb_readout_v3_0_m0_axis_tvalid_1     ), //o
    .m0_axis_tdata  (axis_pfb_readout_v3_0_m0_axis_tdata_1[31:0]), //o
    .m1_axis_tvalid (axis_pfb_readout_v3_0_m1_axis_tvalid_1     ), //o
    .m1_axis_tdata  (axis_pfb_readout_v3_0_m1_axis_tdata_1[31:0]), //o
    .m2_axis_tvalid (axis_pfb_readout_v3_0_m2_axis_tvalid_1     ), //o
    .m2_axis_tdata  (axis_pfb_readout_v3_0_m2_axis_tdata_1[31:0]), //o
    .m3_axis_tvalid (axis_pfb_readout_v3_0_m3_axis_tvalid_1     ), //o
    .m3_axis_tdata  (axis_pfb_readout_v3_0_m3_axis_tdata_1[31:0])  //o
  );
  AxisReadoutV2 axis_readout_v2_0 (
    .s_axi_awvalid  (axis_readout_v2_0_s_axi_awvalid         ), //i
    .s_axi_awready  (axis_readout_v2_0_s_axi_awready_1       ), //o
    .s_axi_awaddr   (axis_readout_v2_0_s_axi_awaddr[5:0]     ), //i
    .s_axi_awprot   (axis_readout_v2_0_s_axi_awprot[2:0]     ), //i
    .s_axi_wvalid   (axis_readout_v2_0_s_axi_wvalid          ), //i
    .s_axi_wready   (axis_readout_v2_0_s_axi_wready_1        ), //o
    .s_axi_wdata    (axis_readout_v2_0_s_axi_wdata[31:0]     ), //i
    .s_axi_wstrb    (axis_readout_v2_0_s_axi_wstrb[3:0]      ), //i
    .s_axi_bvalid   (axis_readout_v2_0_s_axi_bvalid_1        ), //o
    .s_axi_bready   (axis_readout_v2_0_s_axi_bready          ), //i
    .s_axi_bresp    (axis_readout_v2_0_s_axi_bresp_1[1:0]    ), //o
    .s_axi_arvalid  (axis_readout_v2_0_s_axi_arvalid         ), //i
    .s_axi_arready  (axis_readout_v2_0_s_axi_arready_1       ), //o
    .s_axi_araddr   (axis_readout_v2_0_s_axi_araddr[5:0]     ), //i
    .s_axi_arprot   (axis_readout_v2_0_s_axi_arprot[2:0]     ), //i
    .s_axi_rvalid   (axis_readout_v2_0_s_axi_rvalid_1        ), //o
    .s_axi_rready   (axis_readout_v2_0_s_axi_rready          ), //i
    .s_axi_rdata    (axis_readout_v2_0_s_axi_rdata_1[31:0]   ), //o
    .s_axi_rresp    (axis_readout_v2_0_s_axi_rresp_1[1:0]    ), //o
    .s_axi_aclk_i   (clk_pl                                  ), //i
    .s_axi_aresetn  (rst_100                                 ), //i
    .aresetn        (rst_adc2                                ), //i
    .aclk_i         (clk_adc2                                ), //i
    .s_axis_tvalid  (axis_readout_v2_0_s_axis_tvalid         ), //i
    .s_axis_tready  (axis_readout_v2_0_s_axis_tready_1       ), //o
    .s_axis_tdata   (axis_readout_v2_0_s_axis_tdata[127:0]   ), //i
    .m0_axis_tvalid (axis_readout_v2_0_m0_axis_tvalid_1      ), //o
    .m0_axis_tready (axis_readout_v2_0_m0_axis_tready        ), //i
    .m0_axis_tdata  (axis_readout_v2_0_m0_axis_tdata_1[255:0]), //o
    .m1_axis_tvalid (axis_readout_v2_0_m1_axis_tvalid_1      ), //o
    .m1_axis_tready (axis_readout_v2_0_m1_axis_tready        ), //i
    .m1_axis_tdata  (axis_readout_v2_0_m1_axis_tdata_1[31:0] )  //o
  );
  AxisReadoutV3 axis_readout_v3_0 (
    .aclk_i         (clk_dac2                              ), //i
    .aresetn        (rst_dac2                              ), //i
    .s0_axis_tvalid (axis_readout_v3_0_s0_axis_tvalid      ), //i
    .s0_axis_tready (axis_readout_v3_0_s0_axis_tready_1    ), //o
    .s0_axis_tdata  (axis_readout_v3_0_s0_axis_tdata[87:0] ), //i
    .s1_axis_tvalid (axis_readout_v3_0_s1_axis_tvalid      ), //i
    .s1_axis_tready (axis_readout_v3_0_s1_axis_tready_1    ), //o
    .s1_axis_tdata  (axis_readout_v3_0_s1_axis_tdata[63:0] ), //i
    .m_axis_tvalid  (axis_readout_v3_0_m_axis_tvalid_1     ), //o
    .m_axis_tready  (axis_readout_v3_0_m_axis_tready       ), //i
    .m_axis_tdata   (axis_readout_v3_0_m_axis_tdata_1[31:0])  //o
  );
  AxisDynReadout axis_dyn_readout_v1_0 (
    .aresetn        (rst_adc2                                    ), //i
    .aclk           (clk_adc2                                    ), //i
    .s0_axis_tvalid (axis_dyn_readout_v1_0_s0_axis_tvalid        ), //i
    .s0_axis_tready (axis_dyn_readout_v1_0_s0_axis_tready_1      ), //o
    .s0_axis_tdata  (axis_dyn_readout_v1_0_s0_axis_tdata[87:0]   ), //i
    .s1_axis_tvalid (axis_dyn_readout_v1_0_s1_axis_tvalid        ), //i
    .s1_axis_tready (axis_dyn_readout_v1_0_s1_axis_tready_1      ), //o
    .s1_axis_tdata  (axis_dyn_readout_v1_0_s1_axis_tdata[127:0]  ), //i
    .m0_axis_tvalid (axis_dyn_readout_v1_0_m0_axis_tvalid_1      ), //o
    .m0_axis_tready (axis_dyn_readout_v1_0_m0_axis_tready        ), //i
    .m0_axis_tdata  (axis_dyn_readout_v1_0_m0_axis_tdata_1[255:0]), //o
    .m1_axis_tvalid (axis_dyn_readout_v1_0_m1_axis_tvalid_1      ), //o
    .m1_axis_tready (axis_dyn_readout_v1_0_m1_axis_tready        ), //i
    .m1_axis_tdata  (axis_dyn_readout_v1_0_m1_axis_tdata_1[31:0] )  //o
  );
  AxisSignalGenV6 axis_signal_gen_v6_0 (
    .s_axi_aclk_i    (clk_pl                                    ), //i
    .s_axi_aresetn   (rst_100                                   ), //i
    .s_axi_awvalid   (axis_signal_gen_v6_0_s_axi_awvalid        ), //i
    .s_axi_awready   (axis_signal_gen_v6_0_s_axi_awready_1      ), //o
    .s_axi_awaddr    (axis_signal_gen_v6_0_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot    (axis_signal_gen_v6_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid    (axis_signal_gen_v6_0_s_axi_wvalid         ), //i
    .s_axi_wready    (axis_signal_gen_v6_0_s_axi_wready_1       ), //o
    .s_axi_wdata     (axis_signal_gen_v6_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb     (axis_signal_gen_v6_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid    (axis_signal_gen_v6_0_s_axi_bvalid_1       ), //o
    .s_axi_bready    (axis_signal_gen_v6_0_s_axi_bready         ), //i
    .s_axi_bresp     (axis_signal_gen_v6_0_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid   (axis_signal_gen_v6_0_s_axi_arvalid        ), //i
    .s_axi_arready   (axis_signal_gen_v6_0_s_axi_arready_1      ), //o
    .s_axi_araddr    (axis_signal_gen_v6_0_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot    (axis_signal_gen_v6_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid    (axis_signal_gen_v6_0_s_axi_rvalid_1       ), //o
    .s_axi_rready    (axis_signal_gen_v6_0_s_axi_rready         ), //i
    .s_axi_rdata     (axis_signal_gen_v6_0_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp     (axis_signal_gen_v6_0_s_axi_rresp_1[1:0]   ), //o
    .s0_axis_aclk_i  (clk_pl                                    ), //i
    .s0_axis_aresetn (rst_100                                   ), //i
    .s0_axis_tvalid  (axis_signal_gen_v6_0_s0_axis_tvalid       ), //i
    .s0_axis_tready  (axis_signal_gen_v6_0_s0_axis_tready_1     ), //o
    .s0_axis_tdata   (axis_signal_gen_v6_0_s0_axis_tdata[31:0]  ), //i
    .aresetn         (rst_dac2                                  ), //i
    .aclk_i          (clk_dac2                                  ), //i
    .s1_axis_tvalid  (axis_signal_gen_v6_0_s1_axis_tvalid       ), //i
    .s1_axis_tready  (axis_signal_gen_v6_0_s1_axis_tready_1     ), //o
    .s1_axis_tdata   (axis_signal_gen_v6_0_s1_axis_tdata[159:0] ), //i
    .m_axis_tvalid   (axis_signal_gen_v6_0_m_axis_tvalid_1      ), //o
    .m_axis_tready   (axis_signal_gen_v6_0_m_axis_tready        ), //i
    .m_axis_tdata    (axis_signal_gen_v6_0_m_axis_tdata_1[255:0])  //o
  );
  AxisSignalGenV6_1 axis_signal_gen_v6_1 (
    .s_axi_aclk_i    (clk_pl                                    ), //i
    .s_axi_aresetn   (rst_100                                   ), //i
    .s_axi_awvalid   (axis_signal_gen_v6_1_s_axi_awvalid        ), //i
    .s_axi_awready   (axis_signal_gen_v6_1_s_axi_awready_1      ), //o
    .s_axi_awaddr    (axis_signal_gen_v6_1_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot    (axis_signal_gen_v6_1_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid    (axis_signal_gen_v6_1_s_axi_wvalid         ), //i
    .s_axi_wready    (axis_signal_gen_v6_1_s_axi_wready_1       ), //o
    .s_axi_wdata     (axis_signal_gen_v6_1_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb     (axis_signal_gen_v6_1_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid    (axis_signal_gen_v6_1_s_axi_bvalid_1       ), //o
    .s_axi_bready    (axis_signal_gen_v6_1_s_axi_bready         ), //i
    .s_axi_bresp     (axis_signal_gen_v6_1_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid   (axis_signal_gen_v6_1_s_axi_arvalid        ), //i
    .s_axi_arready   (axis_signal_gen_v6_1_s_axi_arready_1      ), //o
    .s_axi_araddr    (axis_signal_gen_v6_1_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot    (axis_signal_gen_v6_1_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid    (axis_signal_gen_v6_1_s_axi_rvalid_1       ), //o
    .s_axi_rready    (axis_signal_gen_v6_1_s_axi_rready         ), //i
    .s_axi_rdata     (axis_signal_gen_v6_1_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp     (axis_signal_gen_v6_1_s_axi_rresp_1[1:0]   ), //o
    .s0_axis_aclk_i  (clk_pl                                    ), //i
    .s0_axis_aresetn (rst_100                                   ), //i
    .s0_axis_tvalid  (axis_signal_gen_v6_1_s0_axis_tvalid       ), //i
    .s0_axis_tready  (axis_signal_gen_v6_1_s0_axis_tready_1     ), //o
    .s0_axis_tdata   (axis_signal_gen_v6_1_s0_axis_tdata[31:0]  ), //i
    .aresetn         (rst_dac2                                  ), //i
    .aclk_i          (clk_dac2                                  ), //i
    .s1_axis_tvalid  (axis_signal_gen_v6_1_s1_axis_tvalid       ), //i
    .s1_axis_tready  (axis_signal_gen_v6_1_s1_axis_tready_1     ), //o
    .s1_axis_tdata   (axis_signal_gen_v6_1_s1_axis_tdata[159:0] ), //i
    .m_axis_tvalid   (axis_signal_gen_v6_1_m_axis_tvalid_1      ), //o
    .m_axis_tready   (axis_signal_gen_v6_1_m_axis_tready        ), //i
    .m_axis_tdata    (axis_signal_gen_v6_1_m_axis_tdata_1[255:0])  //o
  );
  AxisTMuxV1 axis_tmux_v1_0 (
    .aresetn        (rst_dac2                             ), //i
    .aclk           (clk_dac2                             ), //i
    .s_axis_tvalid  (axis_tmux_v1_0_s_axis_tvalid         ), //i
    .s_axis_tready  (axis_tmux_v1_0_s_axis_tready_1       ), //o
    .s_axis_tdata   (axis_tmux_v1_0_s_axis_tdata[167:0]   ), //i
    .m0_axis_tvalid (axis_tmux_v1_0_m0_axis_tvalid_1      ), //o
    .m0_axis_tdata  (axis_tmux_v1_0_m0_axis_tdata_1[167:0]), //o
    .m1_axis_tvalid (axis_tmux_v1_0_m1_axis_tvalid_1      ), //o
    .m1_axis_tdata  (axis_tmux_v1_0_m1_axis_tdata_1[167:0]), //o
    .m2_axis_tvalid (axis_tmux_v1_0_m2_axis_tvalid_1      ), //o
    .m2_axis_tdata  (axis_tmux_v1_0_m2_axis_tdata_1[167:0]), //o
    .m3_axis_tvalid (axis_tmux_v1_0_m3_axis_tvalid_1      ), //o
    .m3_axis_tdata  (axis_tmux_v1_0_m3_axis_tdata_1[167:0]), //o
    .m4_axis_tvalid (axis_tmux_v1_0_m4_axis_tvalid_1      ), //o
    .m4_axis_tdata  (axis_tmux_v1_0_m4_axis_tdata_1[167:0]), //o
    .m5_axis_tvalid (axis_tmux_v1_0_m5_axis_tvalid_1      ), //o
    .m5_axis_tdata  (axis_tmux_v1_0_m5_axis_tdata_1[167:0]), //o
    .m6_axis_tvalid (axis_tmux_v1_0_m6_axis_tvalid_1      ), //o
    .m6_axis_tdata  (axis_tmux_v1_0_m6_axis_tdata_1[167:0]), //o
    .m7_axis_tvalid (axis_tmux_v1_0_m7_axis_tvalid_1      ), //o
    .m7_axis_tdata  (axis_tmux_v1_0_m7_axis_tdata_1[167:0])  //o
  );
  AxisCdcsync axis_cdcsync_v1_1 (
    .s_axis_aresetn  (rst_dac2                                 ), //i
    .s_axis_aclk     (clk_dac2                                 ), //i
    .s0_axis_tvalid  (axis_cdcsync_v1_1_s0_axis_tvalid         ), //i
    .s0_axis_tready  (axis_cdcsync_v1_1_s0_axis_tready_1       ), //o
    .s0_axis_tdata   (axis_cdcsync_v1_1_s0_axis_tdata[167:0]   ), //i
    .s1_axis_tvalid  (axis_cdcsync_v1_1_s1_axis_tvalid         ), //i
    .s1_axis_tready  (axis_cdcsync_v1_1_s1_axis_tready_1       ), //o
    .s1_axis_tdata   (axis_cdcsync_v1_1_s1_axis_tdata[167:0]   ), //i
    .s2_axis_tvalid  (axis_cdcsync_v1_1_s2_axis_tvalid         ), //i
    .s2_axis_tready  (axis_cdcsync_v1_1_s2_axis_tready_1       ), //o
    .s2_axis_tdata   (axis_cdcsync_v1_1_s2_axis_tdata[167:0]   ), //i
    .s3_axis_tvalid  (axis_cdcsync_v1_1_s3_axis_tvalid         ), //i
    .s3_axis_tready  (axis_cdcsync_v1_1_s3_axis_tready_1       ), //o
    .s3_axis_tdata   (axis_cdcsync_v1_1_s3_axis_tdata[167:0]   ), //i
    .s4_axis_tvalid  (axis_cdcsync_v1_1_s4_axis_tvalid         ), //i
    .s4_axis_tready  (axis_cdcsync_v1_1_s4_axis_tready_1       ), //o
    .s4_axis_tdata   (axis_cdcsync_v1_1_s4_axis_tdata[167:0]   ), //i
    .s5_axis_tvalid  (axis_cdcsync_v1_1_s5_axis_tvalid         ), //i
    .s5_axis_tready  (axis_cdcsync_v1_1_s5_axis_tready_1       ), //o
    .s5_axis_tdata   (axis_cdcsync_v1_1_s5_axis_tdata[167:0]   ), //i
    .s6_axis_tvalid  (axis_cdcsync_v1_1_s6_axis_tvalid         ), //i
    .s6_axis_tready  (axis_cdcsync_v1_1_s6_axis_tready_1       ), //o
    .s6_axis_tdata   (axis_cdcsync_v1_1_s6_axis_tdata[167:0]   ), //i
    .s7_axis_tvalid  (axis_cdcsync_v1_1_s7_axis_tvalid         ), //i
    .s7_axis_tready  (axis_cdcsync_v1_1_s7_axis_tready_1       ), //o
    .s7_axis_tdata   (axis_cdcsync_v1_1_s7_axis_tdata[167:0]   ), //i
    .s8_axis_tvalid  (axis_cdcsync_v1_1_s8_axis_tvalid         ), //i
    .s8_axis_tready  (axis_cdcsync_v1_1_s8_axis_tready_1       ), //o
    .s8_axis_tdata   (axis_cdcsync_v1_1_s8_axis_tdata[167:0]   ), //i
    .s9_axis_tvalid  (axis_cdcsync_v1_1_s9_axis_tvalid         ), //i
    .s9_axis_tready  (axis_cdcsync_v1_1_s9_axis_tready_1       ), //o
    .s9_axis_tdata   (axis_cdcsync_v1_1_s9_axis_tdata[167:0]   ), //i
    .s10_axis_tvalid (axis_cdcsync_v1_1_s10_axis_tvalid        ), //i
    .s10_axis_tready (axis_cdcsync_v1_1_s10_axis_tready_1      ), //o
    .s10_axis_tdata  (axis_cdcsync_v1_1_s10_axis_tdata[167:0]  ), //i
    .s11_axis_tvalid (axis_cdcsync_v1_1_s11_axis_tvalid        ), //i
    .s11_axis_tready (axis_cdcsync_v1_1_s11_axis_tready_1      ), //o
    .s11_axis_tdata  (axis_cdcsync_v1_1_s11_axis_tdata[167:0]  ), //i
    .s12_axis_tvalid (axis_cdcsync_v1_1_s12_axis_tvalid        ), //i
    .s12_axis_tready (axis_cdcsync_v1_1_s12_axis_tready_1      ), //o
    .s12_axis_tdata  (axis_cdcsync_v1_1_s12_axis_tdata[167:0]  ), //i
    .s13_axis_tvalid (axis_cdcsync_v1_1_s13_axis_tvalid        ), //i
    .s13_axis_tready (axis_cdcsync_v1_1_s13_axis_tready_1      ), //o
    .s13_axis_tdata  (axis_cdcsync_v1_1_s13_axis_tdata[167:0]  ), //i
    .s14_axis_tvalid (axis_cdcsync_v1_1_s14_axis_tvalid        ), //i
    .s14_axis_tready (axis_cdcsync_v1_1_s14_axis_tready_1      ), //o
    .s14_axis_tdata  (axis_cdcsync_v1_1_s14_axis_tdata[167:0]  ), //i
    .s15_axis_tvalid (axis_cdcsync_v1_1_s15_axis_tvalid        ), //i
    .s15_axis_tready (axis_cdcsync_v1_1_s15_axis_tready_1      ), //o
    .s15_axis_tdata  (axis_cdcsync_v1_1_s15_axis_tdata[167:0]  ), //i
    .m_axis_aresetn  (rst_dac3                                 ), //i
    .m_axis_aclk     (clk_dac3                                 ), //i
    .m0_axis_tvalid  (axis_cdcsync_v1_1_m0_axis_tvalid_1       ), //o
    .m0_axis_tready  (axis_cdcsync_v1_1_m0_axis_tready         ), //i
    .m0_axis_tdata   (axis_cdcsync_v1_1_m0_axis_tdata_1[167:0] ), //o
    .m1_axis_tvalid  (axis_cdcsync_v1_1_m1_axis_tvalid_1       ), //o
    .m1_axis_tready  (axis_cdcsync_v1_1_m1_axis_tready         ), //i
    .m1_axis_tdata   (axis_cdcsync_v1_1_m1_axis_tdata_1[167:0] ), //o
    .m2_axis_tvalid  (axis_cdcsync_v1_1_m2_axis_tvalid_1       ), //o
    .m2_axis_tready  (axis_cdcsync_v1_1_m2_axis_tready         ), //i
    .m2_axis_tdata   (axis_cdcsync_v1_1_m2_axis_tdata_1[167:0] ), //o
    .m3_axis_tvalid  (axis_cdcsync_v1_1_m3_axis_tvalid_1       ), //o
    .m3_axis_tready  (axis_cdcsync_v1_1_m3_axis_tready         ), //i
    .m3_axis_tdata   (axis_cdcsync_v1_1_m3_axis_tdata_1[167:0] ), //o
    .m4_axis_tvalid  (axis_cdcsync_v1_1_m4_axis_tvalid_1       ), //o
    .m4_axis_tready  (axis_cdcsync_v1_1_m4_axis_tready         ), //i
    .m4_axis_tdata   (axis_cdcsync_v1_1_m4_axis_tdata_1[167:0] ), //o
    .m5_axis_tvalid  (axis_cdcsync_v1_1_m5_axis_tvalid_1       ), //o
    .m5_axis_tready  (axis_cdcsync_v1_1_m5_axis_tready         ), //i
    .m5_axis_tdata   (axis_cdcsync_v1_1_m5_axis_tdata_1[167:0] ), //o
    .m6_axis_tvalid  (axis_cdcsync_v1_1_m6_axis_tvalid_1       ), //o
    .m6_axis_tready  (axis_cdcsync_v1_1_m6_axis_tready         ), //i
    .m6_axis_tdata   (axis_cdcsync_v1_1_m6_axis_tdata_1[167:0] ), //o
    .m7_axis_tvalid  (axis_cdcsync_v1_1_m7_axis_tvalid_1       ), //o
    .m7_axis_tready  (axis_cdcsync_v1_1_m7_axis_tready         ), //i
    .m7_axis_tdata   (axis_cdcsync_v1_1_m7_axis_tdata_1[167:0] ), //o
    .m8_axis_tvalid  (axis_cdcsync_v1_1_m8_axis_tvalid_1       ), //o
    .m8_axis_tready  (axis_cdcsync_v1_1_m8_axis_tready         ), //i
    .m8_axis_tdata   (axis_cdcsync_v1_1_m8_axis_tdata_1[167:0] ), //o
    .m9_axis_tvalid  (axis_cdcsync_v1_1_m9_axis_tvalid_1       ), //o
    .m9_axis_tready  (axis_cdcsync_v1_1_m9_axis_tready         ), //i
    .m9_axis_tdata   (axis_cdcsync_v1_1_m9_axis_tdata_1[167:0] ), //o
    .m10_axis_tvalid (axis_cdcsync_v1_1_m10_axis_tvalid_1      ), //o
    .m10_axis_tready (axis_cdcsync_v1_1_m10_axis_tready        ), //i
    .m10_axis_tdata  (axis_cdcsync_v1_1_m10_axis_tdata_1[167:0]), //o
    .m11_axis_tvalid (axis_cdcsync_v1_1_m11_axis_tvalid_1      ), //o
    .m11_axis_tready (axis_cdcsync_v1_1_m11_axis_tready        ), //i
    .m11_axis_tdata  (axis_cdcsync_v1_1_m11_axis_tdata_1[167:0]), //o
    .m12_axis_tvalid (axis_cdcsync_v1_1_m12_axis_tvalid_1      ), //o
    .m12_axis_tready (axis_cdcsync_v1_1_m12_axis_tready        ), //i
    .m12_axis_tdata  (axis_cdcsync_v1_1_m12_axis_tdata_1[167:0]), //o
    .m13_axis_tvalid (axis_cdcsync_v1_1_m13_axis_tvalid_1      ), //o
    .m13_axis_tready (axis_cdcsync_v1_1_m13_axis_tready        ), //i
    .m13_axis_tdata  (axis_cdcsync_v1_1_m13_axis_tdata_1[167:0]), //o
    .m14_axis_tvalid (axis_cdcsync_v1_1_m14_axis_tvalid_1      ), //o
    .m14_axis_tready (axis_cdcsync_v1_1_m14_axis_tready        ), //i
    .m14_axis_tdata  (axis_cdcsync_v1_1_m14_axis_tdata_1[167:0]), //o
    .m15_axis_tvalid (axis_cdcsync_v1_1_m15_axis_tvalid_1      ), //o
    .m15_axis_tready (axis_cdcsync_v1_1_m15_axis_tready        ), //i
    .m15_axis_tdata  (axis_cdcsync_v1_1_m15_axis_tdata_1[167:0])  //o
  );
  AxisSgMux8 axis_sg_mux8_v1_0 (
    .s_axi_aresetn (rst_100                                ), //i
    .s_axi_aclk_i  (clk_pl                                 ), //i
    .s_axi_awvalid (axis_sg_mux8_v1_0_s_axi_awvalid        ), //i
    .s_axi_awready (axis_sg_mux8_v1_0_s_axi_awready_1      ), //o
    .s_axi_awaddr  (axis_sg_mux8_v1_0_s_axi_awaddr[7:0]    ), //i
    .s_axi_awprot  (axis_sg_mux8_v1_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid  (axis_sg_mux8_v1_0_s_axi_wvalid         ), //i
    .s_axi_wready  (axis_sg_mux8_v1_0_s_axi_wready_1       ), //o
    .s_axi_wdata   (axis_sg_mux8_v1_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb   (axis_sg_mux8_v1_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid  (axis_sg_mux8_v1_0_s_axi_bvalid_1       ), //o
    .s_axi_bready  (axis_sg_mux8_v1_0_s_axi_bready         ), //i
    .s_axi_bresp   (axis_sg_mux8_v1_0_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid (axis_sg_mux8_v1_0_s_axi_arvalid        ), //i
    .s_axi_arready (axis_sg_mux8_v1_0_s_axi_arready_1      ), //o
    .s_axi_araddr  (axis_sg_mux8_v1_0_s_axi_araddr[7:0]    ), //i
    .s_axi_arprot  (axis_sg_mux8_v1_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid  (axis_sg_mux8_v1_0_s_axi_rvalid_1       ), //o
    .s_axi_rready  (axis_sg_mux8_v1_0_s_axi_rready         ), //i
    .s_axi_rdata   (axis_sg_mux8_v1_0_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp   (axis_sg_mux8_v1_0_s_axi_rresp_1[1:0]   ), //o
    .aclk_i        (clk_dac2                               ), //i
    .aresetn       (rst_dac2                               ), //i
    .s_axis_tvalid (axis_sg_mux8_v1_0_s_axis_tvalid        ), //i
    .s_axis_tready (axis_sg_mux8_v1_0_s_axis_tready_1      ), //o
    .s_axis_tdata  (axis_sg_mux8_v1_0_s_axis_tdata[31:0]   ), //i
    .m_axis_tvalid (axis_sg_mux8_v1_0_m_axis_tvalid_1      ), //o
    .m_axis_tready (axis_sg_mux8_v1_0_m_axis_tready        ), //i
    .m_axis_tdata  (axis_sg_mux8_v1_0_m_axis_tdata_1[255:0])  //o
  );
  AxisSgMixMux8 axis_sg_mixmux8_v1_0 (
    .s_axi_aresetn (rst_100                                   ), //i
    .s_axi_aclk_i  (clk_pl                                    ), //i
    .s_axi_awvalid (axis_sg_mixmux8_v1_0_s_axi_awvalid        ), //i
    .s_axi_awready (axis_sg_mixmux8_v1_0_s_axi_awready_1      ), //o
    .s_axi_awaddr  (axis_sg_mixmux8_v1_0_s_axi_awaddr[7:0]    ), //i
    .s_axi_awprot  (axis_sg_mixmux8_v1_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid  (axis_sg_mixmux8_v1_0_s_axi_wvalid         ), //i
    .s_axi_wready  (axis_sg_mixmux8_v1_0_s_axi_wready_1       ), //o
    .s_axi_wdata   (axis_sg_mixmux8_v1_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb   (axis_sg_mixmux8_v1_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid  (axis_sg_mixmux8_v1_0_s_axi_bvalid_1       ), //o
    .s_axi_bready  (axis_sg_mixmux8_v1_0_s_axi_bready         ), //i
    .s_axi_bresp   (axis_sg_mixmux8_v1_0_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid (axis_sg_mixmux8_v1_0_s_axi_arvalid        ), //i
    .s_axi_arready (axis_sg_mixmux8_v1_0_s_axi_arready_1      ), //o
    .s_axi_araddr  (axis_sg_mixmux8_v1_0_s_axi_araddr[7:0]    ), //i
    .s_axi_arprot  (axis_sg_mixmux8_v1_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid  (axis_sg_mixmux8_v1_0_s_axi_rvalid_1       ), //o
    .s_axi_rready  (axis_sg_mixmux8_v1_0_s_axi_rready         ), //i
    .s_axi_rdata   (axis_sg_mixmux8_v1_0_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp   (axis_sg_mixmux8_v1_0_s_axi_rresp_1[1:0]   ), //o
    .aresetn       (rst_dac3                                  ), //i
    .aclk_i        (clk_dac3                                  ), //i
    .s_axis_tvalid (axis_sg_mixmux8_v1_0_s_axis_tvalid        ), //i
    .s_axis_tready (axis_sg_mixmux8_v1_0_s_axis_tready_1      ), //o
    .s_axis_tdata  (axis_sg_mixmux8_v1_0_s_axis_tdata[39:0]   ), //i
    .m_axis_tvalid (axis_sg_mixmux8_v1_0_m_axis_tvalid_1      ), //o
    .m_axis_tready (axis_sg_mixmux8_v1_0_m_axis_tready        ), //i
    .m_axis_tdata  (axis_sg_mixmux8_v1_0_m_axis_tdata_1[127:0])  //o
  );
  AxisSgInt4 axis_sg_int4_v2_0 (
    .s_axi_awvalid   (axis_sg_int4_v2_0_s_axi_awvalid        ), //i
    .s_axi_awready   (axis_sg_int4_v2_0_s_axi_awready_1      ), //o
    .s_axi_awaddr    (axis_sg_int4_v2_0_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot    (axis_sg_int4_v2_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid    (axis_sg_int4_v2_0_s_axi_wvalid         ), //i
    .s_axi_wready    (axis_sg_int4_v2_0_s_axi_wready_1       ), //o
    .s_axi_wdata     (axis_sg_int4_v2_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb     (axis_sg_int4_v2_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid    (axis_sg_int4_v2_0_s_axi_bvalid_1       ), //o
    .s_axi_bready    (axis_sg_int4_v2_0_s_axi_bready         ), //i
    .s_axi_bresp     (axis_sg_int4_v2_0_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid   (axis_sg_int4_v2_0_s_axi_arvalid        ), //i
    .s_axi_arready   (axis_sg_int4_v2_0_s_axi_arready_1      ), //o
    .s_axi_araddr    (axis_sg_int4_v2_0_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot    (axis_sg_int4_v2_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid    (axis_sg_int4_v2_0_s_axi_rvalid_1       ), //o
    .s_axi_rready    (axis_sg_int4_v2_0_s_axi_rready         ), //i
    .s_axi_rdata     (axis_sg_int4_v2_0_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp     (axis_sg_int4_v2_0_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i    (clk_pl                                 ), //i
    .s_axi_aresetn   (rst_100                                ), //i
    .s0_axis_tvalid  (axis_sg_int4_v2_0_s0_axis_tvalid       ), //i
    .s0_axis_tready  (axis_sg_int4_v2_0_s0_axis_tready_1     ), //o
    .s0_axis_tdata   (axis_sg_int4_v2_0_s0_axis_tdata[31:0]  ), //i
    .s0_axis_aclk    (clk_pl                                 ), //i
    .s0_axis_aresetn (rst_100                                ), //i
    .aresetn         (rst_dac3                               ), //i
    .aclk_i          (clk_dac3                               ), //i
    .s1_axis_tvalid  (axis_sg_int4_v2_0_s1_axis_tvalid       ), //i
    .s1_axis_tready  (axis_sg_int4_v2_0_s1_axis_tready_1     ), //o
    .s1_axis_tdata   (axis_sg_int4_v2_0_s1_axis_tdata[159:0] ), //i
    .m_axis_tvalid   (axis_sg_int4_v2_0_m_axis_tvalid_1      ), //o
    .m_axis_tready   (axis_sg_int4_v2_0_m_axis_tready        ), //i
    .m_axis_tdata    (axis_sg_int4_v2_0_m_axis_tdata_1[127:0])  //o
  );
  AxisSgInt4 axis_sg_int4_v2_1 (
    .s_axi_awvalid   (axis_sg_int4_v2_1_s_axi_awvalid        ), //i
    .s_axi_awready   (axis_sg_int4_v2_1_s_axi_awready_1      ), //o
    .s_axi_awaddr    (axis_sg_int4_v2_1_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot    (axis_sg_int4_v2_1_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid    (axis_sg_int4_v2_1_s_axi_wvalid         ), //i
    .s_axi_wready    (axis_sg_int4_v2_1_s_axi_wready_1       ), //o
    .s_axi_wdata     (axis_sg_int4_v2_1_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb     (axis_sg_int4_v2_1_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid    (axis_sg_int4_v2_1_s_axi_bvalid_1       ), //o
    .s_axi_bready    (axis_sg_int4_v2_1_s_axi_bready         ), //i
    .s_axi_bresp     (axis_sg_int4_v2_1_s_axi_bresp_1[1:0]   ), //o
    .s_axi_arvalid   (axis_sg_int4_v2_1_s_axi_arvalid        ), //i
    .s_axi_arready   (axis_sg_int4_v2_1_s_axi_arready_1      ), //o
    .s_axi_araddr    (axis_sg_int4_v2_1_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot    (axis_sg_int4_v2_1_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid    (axis_sg_int4_v2_1_s_axi_rvalid_1       ), //o
    .s_axi_rready    (axis_sg_int4_v2_1_s_axi_rready         ), //i
    .s_axi_rdata     (axis_sg_int4_v2_1_s_axi_rdata_1[31:0]  ), //o
    .s_axi_rresp     (axis_sg_int4_v2_1_s_axi_rresp_1[1:0]   ), //o
    .s_axi_aclk_i    (clk_pl                                 ), //i
    .s_axi_aresetn   (rst_100                                ), //i
    .s0_axis_tvalid  (axis_sg_int4_v2_1_s0_axis_tvalid       ), //i
    .s0_axis_tready  (axis_sg_int4_v2_1_s0_axis_tready_1     ), //o
    .s0_axis_tdata   (axis_sg_int4_v2_1_s0_axis_tdata[31:0]  ), //i
    .s0_axis_aclk    (clk_pl                                 ), //i
    .s0_axis_aresetn (rst_100                                ), //i
    .aresetn         (rst_dac3                               ), //i
    .aclk_i          (clk_dac3                               ), //i
    .s1_axis_tvalid  (axis_sg_int4_v2_1_s1_axis_tvalid       ), //i
    .s1_axis_tready  (axis_sg_int4_v2_1_s1_axis_tready_1     ), //o
    .s1_axis_tdata   (axis_sg_int4_v2_1_s1_axis_tdata[159:0] ), //i
    .m_axis_tvalid   (axis_sg_int4_v2_1_m_axis_tvalid_1      ), //o
    .m_axis_tready   (axis_sg_int4_v2_1_m_axis_tready        ), //i
    .m_axis_tdata    (axis_sg_int4_v2_1_m_axis_tdata_1[127:0])  //o
  );
  AxisResampler axis_resampler_2x1_v1_0 (
    .aclk          (clk_dac2                                    ), //i
    .aresetn       (rst_dac2                                    ), //i
    .s_axis_tvalid (axis_resampler_2x1_v1_0_s_axis_tvalid       ), //i
    .s_axis_tready (axis_resampler_2x1_v1_0_s_axis_tready_1     ), //o
    .s_axis_tdata  (axis_resampler_2x1_v1_0_s_axis_tdata[127:0] ), //i
    .m_axis_tvalid (axis_resampler_2x1_v1_0_m_axis_tvalid_1     ), //o
    .m_axis_tready (axis_resampler_2x1_v1_0_m_axis_tready       ), //i
    .m_axis_tdata  (axis_resampler_2x1_v1_0_m_axis_tdata_1[63:0])  //o
  );
  AxisRegisterSliceNb axis_register_slice_0 (
    .aresetn       (rst_dac2                                   ), //i
    .aclk          (clk_dac2                                   ), //i
    .s_axis_tvalid (axis_register_slice_0_s_axis_tvalid        ), //i
    .s_axis_tready (axis_register_slice_0_s_axis_tready_1      ), //o
    .s_axis_tdata  (axis_register_slice_0_s_axis_tdata[255:0]  ), //i
    .m_axis_tvalid (axis_register_slice_0_m_axis_tvalid_1      ), //o
    .m_axis_tready (axis_register_slice_0_m_axis_tready        ), //i
    .m_axis_tdata  (axis_register_slice_0_m_axis_tdata_1[255:0])  //o
  );
  AxisRegisterSliceNb axis_register_slice_1 (
    .aresetn       (rst_dac2                                   ), //i
    .aclk          (clk_dac2                                   ), //i
    .s_axis_tvalid (axis_register_slice_1_s_axis_tvalid        ), //i
    .s_axis_tready (axis_register_slice_1_s_axis_tready_1      ), //o
    .s_axis_tdata  (axis_register_slice_1_s_axis_tdata[255:0]  ), //i
    .m_axis_tvalid (axis_register_slice_1_m_axis_tvalid_1      ), //o
    .m_axis_tready (axis_register_slice_1_m_axis_tready        ), //i
    .m_axis_tdata  (axis_register_slice_1_m_axis_tdata_1[255:0])  //o
  );
  AxisRegisterSliceNb axis_register_slice_2 (
    .aresetn       (rst_dac2                                   ), //i
    .aclk          (clk_dac2                                   ), //i
    .s_axis_tvalid (axis_register_slice_2_s_axis_tvalid        ), //i
    .s_axis_tready (axis_register_slice_2_s_axis_tready_1      ), //o
    .s_axis_tdata  (axis_register_slice_2_s_axis_tdata[255:0]  ), //i
    .m_axis_tvalid (axis_register_slice_2_m_axis_tvalid_1      ), //o
    .m_axis_tready (axis_register_slice_2_m_axis_tready        ), //i
    .m_axis_tdata  (axis_register_slice_2_m_axis_tdata_1[255:0])  //o
  );
  QickSgTranslator sg_translator_0 (
    .aresetn                  (rst_dac2                                       ), //i
    .aclk                     (clk_dac2                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_0_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_0_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_0_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_0_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_0_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_0_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_0_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_0_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_0_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_0_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_0_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_0_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_0_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_0_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_0_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator_1 sg_translator_1 (
    .aresetn                  (rst_dac2                                       ), //i
    .aclk                     (clk_dac2                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_1_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_1_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_1_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_1_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_1_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_1_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_1_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_1_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_1_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_1_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_1_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_1_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_1_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_1_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_1_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator sg_translator_2 (
    .aresetn                  (rst_dac2                                       ), //i
    .aclk                     (clk_dac2                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_2_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_2_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_2_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_2_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_2_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_2_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_2_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_2_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_2_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_2_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_2_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_2_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_2_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_2_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_2_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator sg_translator_3 (
    .aresetn                  (rst_dac3                                       ), //i
    .aclk                     (clk_dac3                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_3_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_3_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_3_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_3_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_3_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_3_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_3_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_3_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_3_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_3_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_3_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_3_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_3_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_3_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_3_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator sg_translator_4 (
    .aresetn                  (rst_dac3                                       ), //i
    .aclk                     (clk_dac3                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_4_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_4_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_4_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_4_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_4_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_4_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_4_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_4_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_4_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_4_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_4_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_4_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_4_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_4_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_4_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator_1 sg_translator_5 (
    .aresetn                  (rst_dac3                                       ), //i
    .aclk                     (clk_dac3                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_5_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_5_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_5_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_5_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_5_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_5_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_5_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_5_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_5_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_5_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_5_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_5_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_5_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_5_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_5_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator_6 sg_translator_6 (
    .aresetn                  (rst_adc2                                       ), //i
    .aclk                     (clk_adc2                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_6_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_6_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_6_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_6_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_6_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_6_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_6_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_6_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_6_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_6_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_6_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_6_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_6_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_6_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_6_m_readout_v3_axis_tdata_1[87:0])  //o
  );
  QickSgTranslator_6 sg_translator_7 (
    .aresetn                  (rst_dac2                                       ), //i
    .aclk                     (clk_dac2                                       ), //i
    .s_tproc_axis_tvalid      (sg_translator_7_s_tproc_axis_tvalid            ), //i
    .s_tproc_axis_tready      (sg_translator_7_s_tproc_axis_tready_1          ), //o
    .s_tproc_axis_tdata       (sg_translator_7_s_tproc_axis_tdata[167:0]      ), //i
    .m_gen_v6_axis_tvalid     (sg_translator_7_m_gen_v6_axis_tvalid_1         ), //o
    .m_gen_v6_axis_tready     (sg_translator_7_m_gen_v6_axis_tready           ), //i
    .m_gen_v6_axis_tdata      (sg_translator_7_m_gen_v6_axis_tdata_1[159:0]   ), //o
    .m_int4_axis_tvalid       (sg_translator_7_m_int4_axis_tvalid_1           ), //o
    .m_int4_axis_tready       (sg_translator_7_m_int4_axis_tready             ), //i
    .m_int4_axis_tdata        (sg_translator_7_m_int4_axis_tdata_1[87:0]      ), //o
    .m_mux4_axis_tvalid       (sg_translator_7_m_mux4_axis_tvalid_1           ), //o
    .m_mux4_axis_tready       (sg_translator_7_m_mux4_axis_tready             ), //i
    .m_mux4_axis_tdata        (sg_translator_7_m_mux4_axis_tdata_1[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sg_translator_7_m_readout_v3_axis_tvalid_1     ), //o
    .m_readout_v3_axis_tready (sg_translator_7_m_readout_v3_axis_tready       ), //i
    .m_readout_v3_axis_tdata  (sg_translator_7_m_readout_v3_axis_tdata_1[87:0])  //o
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
  assign axis_avg_buffer_2_s_axi_awready = axis_avg_buffer_2_s_axi_awready_1;
  assign axis_avg_buffer_2_s_axi_wready = axis_avg_buffer_2_s_axi_wready_1;
  assign axis_avg_buffer_2_s_axi_bvalid = axis_avg_buffer_2_s_axi_bvalid_1;
  assign axis_avg_buffer_2_s_axi_bresp = axis_avg_buffer_2_s_axi_bresp_1;
  assign axis_avg_buffer_2_s_axi_arready = axis_avg_buffer_2_s_axi_arready_1;
  assign axis_avg_buffer_2_s_axi_rvalid = axis_avg_buffer_2_s_axi_rvalid_1;
  assign axis_avg_buffer_2_s_axi_rdata = axis_avg_buffer_2_s_axi_rdata_1;
  assign axis_avg_buffer_2_s_axi_rresp = axis_avg_buffer_2_s_axi_rresp_1;
  assign axis_avg_buffer_2_s_axis_tready = axis_avg_buffer_2_s_axis_tready_1;
  assign axis_avg_buffer_2_m0_axis_tvalid = axis_avg_buffer_2_m0_axis_tvalid_1;
  assign axis_avg_buffer_2_m0_axis_tdata = axis_avg_buffer_2_m0_axis_tdata_1;
  assign axis_avg_buffer_2_m0_axis_tlast = axis_avg_buffer_2_m0_axis_tlast_1;
  assign axis_avg_buffer_2_m1_axis_tvalid = axis_avg_buffer_2_m1_axis_tvalid_1;
  assign axis_avg_buffer_2_m1_axis_tdata = axis_avg_buffer_2_m1_axis_tdata_1;
  assign axis_avg_buffer_2_m1_axis_tlast = axis_avg_buffer_2_m1_axis_tlast_1;
  assign axis_avg_buffer_3_s_axi_awready = axis_avg_buffer_3_s_axi_awready_1;
  assign axis_avg_buffer_3_s_axi_wready = axis_avg_buffer_3_s_axi_wready_1;
  assign axis_avg_buffer_3_s_axi_bvalid = axis_avg_buffer_3_s_axi_bvalid_1;
  assign axis_avg_buffer_3_s_axi_bresp = axis_avg_buffer_3_s_axi_bresp_1;
  assign axis_avg_buffer_3_s_axi_arready = axis_avg_buffer_3_s_axi_arready_1;
  assign axis_avg_buffer_3_s_axi_rvalid = axis_avg_buffer_3_s_axi_rvalid_1;
  assign axis_avg_buffer_3_s_axi_rdata = axis_avg_buffer_3_s_axi_rdata_1;
  assign axis_avg_buffer_3_s_axi_rresp = axis_avg_buffer_3_s_axi_rresp_1;
  assign axis_avg_buffer_3_s_axis_tready = axis_avg_buffer_3_s_axis_tready_1;
  assign axis_avg_buffer_3_m0_axis_tvalid = axis_avg_buffer_3_m0_axis_tvalid_1;
  assign axis_avg_buffer_3_m0_axis_tdata = axis_avg_buffer_3_m0_axis_tdata_1;
  assign axis_avg_buffer_3_m0_axis_tlast = axis_avg_buffer_3_m0_axis_tlast_1;
  assign axis_avg_buffer_3_m1_axis_tvalid = axis_avg_buffer_3_m1_axis_tvalid_1;
  assign axis_avg_buffer_3_m1_axis_tdata = axis_avg_buffer_3_m1_axis_tdata_1;
  assign axis_avg_buffer_3_m1_axis_tlast = axis_avg_buffer_3_m1_axis_tlast_1;
  assign axis_avg_buffer_4_s_axi_awready = axis_avg_buffer_4_s_axi_awready_1;
  assign axis_avg_buffer_4_s_axi_wready = axis_avg_buffer_4_s_axi_wready_1;
  assign axis_avg_buffer_4_s_axi_bvalid = axis_avg_buffer_4_s_axi_bvalid_1;
  assign axis_avg_buffer_4_s_axi_bresp = axis_avg_buffer_4_s_axi_bresp_1;
  assign axis_avg_buffer_4_s_axi_arready = axis_avg_buffer_4_s_axi_arready_1;
  assign axis_avg_buffer_4_s_axi_rvalid = axis_avg_buffer_4_s_axi_rvalid_1;
  assign axis_avg_buffer_4_s_axi_rdata = axis_avg_buffer_4_s_axi_rdata_1;
  assign axis_avg_buffer_4_s_axi_rresp = axis_avg_buffer_4_s_axi_rresp_1;
  assign axis_avg_buffer_4_s_axis_tready = axis_avg_buffer_4_s_axis_tready_1;
  assign axis_avg_buffer_4_m0_axis_tvalid = axis_avg_buffer_4_m0_axis_tvalid_1;
  assign axis_avg_buffer_4_m0_axis_tdata = axis_avg_buffer_4_m0_axis_tdata_1;
  assign axis_avg_buffer_4_m0_axis_tlast = axis_avg_buffer_4_m0_axis_tlast_1;
  assign axis_avg_buffer_4_m1_axis_tvalid = axis_avg_buffer_4_m1_axis_tvalid_1;
  assign axis_avg_buffer_4_m1_axis_tdata = axis_avg_buffer_4_m1_axis_tdata_1;
  assign axis_avg_buffer_4_m1_axis_tlast = axis_avg_buffer_4_m1_axis_tlast_1;
  assign axis_avg_buffer_5_s_axi_awready = axis_avg_buffer_5_s_axi_awready_1;
  assign axis_avg_buffer_5_s_axi_wready = axis_avg_buffer_5_s_axi_wready_1;
  assign axis_avg_buffer_5_s_axi_bvalid = axis_avg_buffer_5_s_axi_bvalid_1;
  assign axis_avg_buffer_5_s_axi_bresp = axis_avg_buffer_5_s_axi_bresp_1;
  assign axis_avg_buffer_5_s_axi_arready = axis_avg_buffer_5_s_axi_arready_1;
  assign axis_avg_buffer_5_s_axi_rvalid = axis_avg_buffer_5_s_axi_rvalid_1;
  assign axis_avg_buffer_5_s_axi_rdata = axis_avg_buffer_5_s_axi_rdata_1;
  assign axis_avg_buffer_5_s_axi_rresp = axis_avg_buffer_5_s_axi_rresp_1;
  assign axis_avg_buffer_5_s_axis_tready = axis_avg_buffer_5_s_axis_tready_1;
  assign axis_avg_buffer_5_m0_axis_tvalid = axis_avg_buffer_5_m0_axis_tvalid_1;
  assign axis_avg_buffer_5_m0_axis_tdata = axis_avg_buffer_5_m0_axis_tdata_1;
  assign axis_avg_buffer_5_m0_axis_tlast = axis_avg_buffer_5_m0_axis_tlast_1;
  assign axis_avg_buffer_5_m1_axis_tvalid = axis_avg_buffer_5_m1_axis_tvalid_1;
  assign axis_avg_buffer_5_m1_axis_tdata = axis_avg_buffer_5_m1_axis_tdata_1;
  assign axis_avg_buffer_5_m1_axis_tlast = axis_avg_buffer_5_m1_axis_tlast_1;
  assign axis_avg_buffer_6_s_axi_awready = axis_avg_buffer_6_s_axi_awready_1;
  assign axis_avg_buffer_6_s_axi_wready = axis_avg_buffer_6_s_axi_wready_1;
  assign axis_avg_buffer_6_s_axi_bvalid = axis_avg_buffer_6_s_axi_bvalid_1;
  assign axis_avg_buffer_6_s_axi_bresp = axis_avg_buffer_6_s_axi_bresp_1;
  assign axis_avg_buffer_6_s_axi_arready = axis_avg_buffer_6_s_axi_arready_1;
  assign axis_avg_buffer_6_s_axi_rvalid = axis_avg_buffer_6_s_axi_rvalid_1;
  assign axis_avg_buffer_6_s_axi_rdata = axis_avg_buffer_6_s_axi_rdata_1;
  assign axis_avg_buffer_6_s_axi_rresp = axis_avg_buffer_6_s_axi_rresp_1;
  assign axis_avg_buffer_6_s_axis_tready = axis_avg_buffer_6_s_axis_tready_1;
  assign axis_avg_buffer_6_m0_axis_tvalid = axis_avg_buffer_6_m0_axis_tvalid_1;
  assign axis_avg_buffer_6_m0_axis_tdata = axis_avg_buffer_6_m0_axis_tdata_1;
  assign axis_avg_buffer_6_m0_axis_tlast = axis_avg_buffer_6_m0_axis_tlast_1;
  assign axis_avg_buffer_6_m1_axis_tvalid = axis_avg_buffer_6_m1_axis_tvalid_1;
  assign axis_avg_buffer_6_m1_axis_tdata = axis_avg_buffer_6_m1_axis_tdata_1;
  assign axis_avg_buffer_6_m1_axis_tlast = axis_avg_buffer_6_m1_axis_tlast_1;
  assign mr_buffer_et_0_s00_axi_awready = mr_buffer_et_0_s00_axi_awready_1;
  assign mr_buffer_et_0_s00_axi_wready = mr_buffer_et_0_s00_axi_wready_1;
  assign mr_buffer_et_0_s00_axi_bvalid = mr_buffer_et_0_s00_axi_bvalid_1;
  assign mr_buffer_et_0_s00_axi_bresp = mr_buffer_et_0_s00_axi_bresp_1;
  assign mr_buffer_et_0_s00_axi_arready = mr_buffer_et_0_s00_axi_arready_1;
  assign mr_buffer_et_0_s00_axi_rvalid = mr_buffer_et_0_s00_axi_rvalid_1;
  assign mr_buffer_et_0_s00_axi_rdata = mr_buffer_et_0_s00_axi_rdata_1;
  assign mr_buffer_et_0_s00_axi_rresp = mr_buffer_et_0_s00_axi_rresp_1;
  assign mr_buffer_et_0_s00_axis_tready = mr_buffer_et_0_s00_axis_tready_1;
  assign mr_buffer_et_0_m00_axis_tvalid = mr_buffer_et_0_m00_axis_tvalid_1;
  assign mr_buffer_et_0_m00_axis_tdata = mr_buffer_et_0_m00_axis_tdata_1;
  assign mr_buffer_et_0_m00_axis_tstrb = mr_buffer_et_0_m00_axis_tstrb_1;
  assign mr_buffer_et_0_m00_axis_tlast = mr_buffer_et_0_m00_axis_tlast_1;
  assign mr_buffer_et_0_s_dbg_probe = mr_buffer_et_0_s_dbg_probe_1;
  assign mr_buffer_et_0_m_dbg_probe = mr_buffer_et_0_m_dbg_probe_1;
  assign axis_pfb_readout_v3_0_s_axi_awready = axis_pfb_readout_v3_0_s_axi_awready_1;
  assign axis_pfb_readout_v3_0_s_axi_wready = axis_pfb_readout_v3_0_s_axi_wready_1;
  assign axis_pfb_readout_v3_0_s_axi_bvalid = axis_pfb_readout_v3_0_s_axi_bvalid_1;
  assign axis_pfb_readout_v3_0_s_axi_bresp = axis_pfb_readout_v3_0_s_axi_bresp_1;
  assign axis_pfb_readout_v3_0_s_axi_arready = axis_pfb_readout_v3_0_s_axi_arready_1;
  assign axis_pfb_readout_v3_0_s_axi_rvalid = axis_pfb_readout_v3_0_s_axi_rvalid_1;
  assign axis_pfb_readout_v3_0_s_axi_rdata = axis_pfb_readout_v3_0_s_axi_rdata_1;
  assign axis_pfb_readout_v3_0_s_axi_rresp = axis_pfb_readout_v3_0_s_axi_rresp_1;
  assign axis_pfb_readout_v3_0_m0_axis_tvalid = axis_pfb_readout_v3_0_m0_axis_tvalid_1;
  assign axis_pfb_readout_v3_0_m0_axis_tdata = axis_pfb_readout_v3_0_m0_axis_tdata_1;
  assign axis_pfb_readout_v3_0_m1_axis_tvalid = axis_pfb_readout_v3_0_m1_axis_tvalid_1;
  assign axis_pfb_readout_v3_0_m1_axis_tdata = axis_pfb_readout_v3_0_m1_axis_tdata_1;
  assign axis_pfb_readout_v3_0_m2_axis_tvalid = axis_pfb_readout_v3_0_m2_axis_tvalid_1;
  assign axis_pfb_readout_v3_0_m2_axis_tdata = axis_pfb_readout_v3_0_m2_axis_tdata_1;
  assign axis_pfb_readout_v3_0_m3_axis_tvalid = axis_pfb_readout_v3_0_m3_axis_tvalid_1;
  assign axis_pfb_readout_v3_0_m3_axis_tdata = axis_pfb_readout_v3_0_m3_axis_tdata_1;
  assign axis_readout_v2_0_s_axi_awready = axis_readout_v2_0_s_axi_awready_1;
  assign axis_readout_v2_0_s_axi_wready = axis_readout_v2_0_s_axi_wready_1;
  assign axis_readout_v2_0_s_axi_bvalid = axis_readout_v2_0_s_axi_bvalid_1;
  assign axis_readout_v2_0_s_axi_bresp = axis_readout_v2_0_s_axi_bresp_1;
  assign axis_readout_v2_0_s_axi_arready = axis_readout_v2_0_s_axi_arready_1;
  assign axis_readout_v2_0_s_axi_rvalid = axis_readout_v2_0_s_axi_rvalid_1;
  assign axis_readout_v2_0_s_axi_rdata = axis_readout_v2_0_s_axi_rdata_1;
  assign axis_readout_v2_0_s_axi_rresp = axis_readout_v2_0_s_axi_rresp_1;
  assign axis_readout_v2_0_s_axis_tready = axis_readout_v2_0_s_axis_tready_1;
  assign axis_readout_v2_0_m0_axis_tvalid = axis_readout_v2_0_m0_axis_tvalid_1;
  assign axis_readout_v2_0_m0_axis_tdata = axis_readout_v2_0_m0_axis_tdata_1;
  assign axis_readout_v2_0_m1_axis_tvalid = axis_readout_v2_0_m1_axis_tvalid_1;
  assign axis_readout_v2_0_m1_axis_tdata = axis_readout_v2_0_m1_axis_tdata_1;
  assign axis_readout_v3_0_s0_axis_tready = axis_readout_v3_0_s0_axis_tready_1;
  assign axis_readout_v3_0_s1_axis_tready = axis_readout_v3_0_s1_axis_tready_1;
  assign axis_readout_v3_0_m_axis_tvalid = axis_readout_v3_0_m_axis_tvalid_1;
  assign axis_readout_v3_0_m_axis_tdata = axis_readout_v3_0_m_axis_tdata_1;
  assign axis_dyn_readout_v1_0_s0_axis_tready = axis_dyn_readout_v1_0_s0_axis_tready_1;
  assign axis_dyn_readout_v1_0_s1_axis_tready = axis_dyn_readout_v1_0_s1_axis_tready_1;
  assign axis_dyn_readout_v1_0_m0_axis_tvalid = axis_dyn_readout_v1_0_m0_axis_tvalid_1;
  assign axis_dyn_readout_v1_0_m0_axis_tdata = axis_dyn_readout_v1_0_m0_axis_tdata_1;
  assign axis_dyn_readout_v1_0_m1_axis_tvalid = axis_dyn_readout_v1_0_m1_axis_tvalid_1;
  assign axis_dyn_readout_v1_0_m1_axis_tdata = axis_dyn_readout_v1_0_m1_axis_tdata_1;
  assign axis_signal_gen_v6_0_s_axi_awready = axis_signal_gen_v6_0_s_axi_awready_1;
  assign axis_signal_gen_v6_0_s_axi_wready = axis_signal_gen_v6_0_s_axi_wready_1;
  assign axis_signal_gen_v6_0_s_axi_bvalid = axis_signal_gen_v6_0_s_axi_bvalid_1;
  assign axis_signal_gen_v6_0_s_axi_bresp = axis_signal_gen_v6_0_s_axi_bresp_1;
  assign axis_signal_gen_v6_0_s_axi_arready = axis_signal_gen_v6_0_s_axi_arready_1;
  assign axis_signal_gen_v6_0_s_axi_rvalid = axis_signal_gen_v6_0_s_axi_rvalid_1;
  assign axis_signal_gen_v6_0_s_axi_rdata = axis_signal_gen_v6_0_s_axi_rdata_1;
  assign axis_signal_gen_v6_0_s_axi_rresp = axis_signal_gen_v6_0_s_axi_rresp_1;
  assign axis_signal_gen_v6_0_s0_axis_tready = axis_signal_gen_v6_0_s0_axis_tready_1;
  assign axis_signal_gen_v6_0_s1_axis_tready = axis_signal_gen_v6_0_s1_axis_tready_1;
  assign axis_signal_gen_v6_0_m_axis_tvalid = axis_signal_gen_v6_0_m_axis_tvalid_1;
  assign axis_signal_gen_v6_0_m_axis_tdata = axis_signal_gen_v6_0_m_axis_tdata_1;
  assign axis_signal_gen_v6_1_s_axi_awready = axis_signal_gen_v6_1_s_axi_awready_1;
  assign axis_signal_gen_v6_1_s_axi_wready = axis_signal_gen_v6_1_s_axi_wready_1;
  assign axis_signal_gen_v6_1_s_axi_bvalid = axis_signal_gen_v6_1_s_axi_bvalid_1;
  assign axis_signal_gen_v6_1_s_axi_bresp = axis_signal_gen_v6_1_s_axi_bresp_1;
  assign axis_signal_gen_v6_1_s_axi_arready = axis_signal_gen_v6_1_s_axi_arready_1;
  assign axis_signal_gen_v6_1_s_axi_rvalid = axis_signal_gen_v6_1_s_axi_rvalid_1;
  assign axis_signal_gen_v6_1_s_axi_rdata = axis_signal_gen_v6_1_s_axi_rdata_1;
  assign axis_signal_gen_v6_1_s_axi_rresp = axis_signal_gen_v6_1_s_axi_rresp_1;
  assign axis_signal_gen_v6_1_s0_axis_tready = axis_signal_gen_v6_1_s0_axis_tready_1;
  assign axis_signal_gen_v6_1_s1_axis_tready = axis_signal_gen_v6_1_s1_axis_tready_1;
  assign axis_signal_gen_v6_1_m_axis_tvalid = axis_signal_gen_v6_1_m_axis_tvalid_1;
  assign axis_signal_gen_v6_1_m_axis_tdata = axis_signal_gen_v6_1_m_axis_tdata_1;
  assign axis_tmux_v1_0_s_axis_tready = axis_tmux_v1_0_s_axis_tready_1;
  assign axis_tmux_v1_0_m0_axis_tvalid = axis_tmux_v1_0_m0_axis_tvalid_1;
  assign axis_tmux_v1_0_m0_axis_tdata = axis_tmux_v1_0_m0_axis_tdata_1;
  assign axis_tmux_v1_0_m1_axis_tvalid = axis_tmux_v1_0_m1_axis_tvalid_1;
  assign axis_tmux_v1_0_m1_axis_tdata = axis_tmux_v1_0_m1_axis_tdata_1;
  assign axis_tmux_v1_0_m2_axis_tvalid = axis_tmux_v1_0_m2_axis_tvalid_1;
  assign axis_tmux_v1_0_m2_axis_tdata = axis_tmux_v1_0_m2_axis_tdata_1;
  assign axis_tmux_v1_0_m3_axis_tvalid = axis_tmux_v1_0_m3_axis_tvalid_1;
  assign axis_tmux_v1_0_m3_axis_tdata = axis_tmux_v1_0_m3_axis_tdata_1;
  assign axis_tmux_v1_0_m4_axis_tvalid = axis_tmux_v1_0_m4_axis_tvalid_1;
  assign axis_tmux_v1_0_m4_axis_tdata = axis_tmux_v1_0_m4_axis_tdata_1;
  assign axis_tmux_v1_0_m5_axis_tvalid = axis_tmux_v1_0_m5_axis_tvalid_1;
  assign axis_tmux_v1_0_m5_axis_tdata = axis_tmux_v1_0_m5_axis_tdata_1;
  assign axis_tmux_v1_0_m6_axis_tvalid = axis_tmux_v1_0_m6_axis_tvalid_1;
  assign axis_tmux_v1_0_m6_axis_tdata = axis_tmux_v1_0_m6_axis_tdata_1;
  assign axis_tmux_v1_0_m7_axis_tvalid = axis_tmux_v1_0_m7_axis_tvalid_1;
  assign axis_tmux_v1_0_m7_axis_tdata = axis_tmux_v1_0_m7_axis_tdata_1;
  assign axis_cdcsync_v1_1_s0_axis_tready = axis_cdcsync_v1_1_s0_axis_tready_1;
  assign axis_cdcsync_v1_1_s1_axis_tready = axis_cdcsync_v1_1_s1_axis_tready_1;
  assign axis_cdcsync_v1_1_s2_axis_tready = axis_cdcsync_v1_1_s2_axis_tready_1;
  assign axis_cdcsync_v1_1_s3_axis_tready = axis_cdcsync_v1_1_s3_axis_tready_1;
  assign axis_cdcsync_v1_1_s4_axis_tready = axis_cdcsync_v1_1_s4_axis_tready_1;
  assign axis_cdcsync_v1_1_s5_axis_tready = axis_cdcsync_v1_1_s5_axis_tready_1;
  assign axis_cdcsync_v1_1_s6_axis_tready = axis_cdcsync_v1_1_s6_axis_tready_1;
  assign axis_cdcsync_v1_1_s7_axis_tready = axis_cdcsync_v1_1_s7_axis_tready_1;
  assign axis_cdcsync_v1_1_s8_axis_tready = axis_cdcsync_v1_1_s8_axis_tready_1;
  assign axis_cdcsync_v1_1_s9_axis_tready = axis_cdcsync_v1_1_s9_axis_tready_1;
  assign axis_cdcsync_v1_1_s10_axis_tready = axis_cdcsync_v1_1_s10_axis_tready_1;
  assign axis_cdcsync_v1_1_s11_axis_tready = axis_cdcsync_v1_1_s11_axis_tready_1;
  assign axis_cdcsync_v1_1_s12_axis_tready = axis_cdcsync_v1_1_s12_axis_tready_1;
  assign axis_cdcsync_v1_1_s13_axis_tready = axis_cdcsync_v1_1_s13_axis_tready_1;
  assign axis_cdcsync_v1_1_s14_axis_tready = axis_cdcsync_v1_1_s14_axis_tready_1;
  assign axis_cdcsync_v1_1_s15_axis_tready = axis_cdcsync_v1_1_s15_axis_tready_1;
  assign axis_cdcsync_v1_1_m0_axis_tvalid = axis_cdcsync_v1_1_m0_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m0_axis_tdata = axis_cdcsync_v1_1_m0_axis_tdata_1;
  assign axis_cdcsync_v1_1_m1_axis_tvalid = axis_cdcsync_v1_1_m1_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m1_axis_tdata = axis_cdcsync_v1_1_m1_axis_tdata_1;
  assign axis_cdcsync_v1_1_m2_axis_tvalid = axis_cdcsync_v1_1_m2_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m2_axis_tdata = axis_cdcsync_v1_1_m2_axis_tdata_1;
  assign axis_cdcsync_v1_1_m3_axis_tvalid = axis_cdcsync_v1_1_m3_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m3_axis_tdata = axis_cdcsync_v1_1_m3_axis_tdata_1;
  assign axis_cdcsync_v1_1_m4_axis_tvalid = axis_cdcsync_v1_1_m4_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m4_axis_tdata = axis_cdcsync_v1_1_m4_axis_tdata_1;
  assign axis_cdcsync_v1_1_m5_axis_tvalid = axis_cdcsync_v1_1_m5_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m5_axis_tdata = axis_cdcsync_v1_1_m5_axis_tdata_1;
  assign axis_cdcsync_v1_1_m6_axis_tvalid = axis_cdcsync_v1_1_m6_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m6_axis_tdata = axis_cdcsync_v1_1_m6_axis_tdata_1;
  assign axis_cdcsync_v1_1_m7_axis_tvalid = axis_cdcsync_v1_1_m7_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m7_axis_tdata = axis_cdcsync_v1_1_m7_axis_tdata_1;
  assign axis_cdcsync_v1_1_m8_axis_tvalid = axis_cdcsync_v1_1_m8_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m8_axis_tdata = axis_cdcsync_v1_1_m8_axis_tdata_1;
  assign axis_cdcsync_v1_1_m9_axis_tvalid = axis_cdcsync_v1_1_m9_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m9_axis_tdata = axis_cdcsync_v1_1_m9_axis_tdata_1;
  assign axis_cdcsync_v1_1_m10_axis_tvalid = axis_cdcsync_v1_1_m10_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m10_axis_tdata = axis_cdcsync_v1_1_m10_axis_tdata_1;
  assign axis_cdcsync_v1_1_m11_axis_tvalid = axis_cdcsync_v1_1_m11_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m11_axis_tdata = axis_cdcsync_v1_1_m11_axis_tdata_1;
  assign axis_cdcsync_v1_1_m12_axis_tvalid = axis_cdcsync_v1_1_m12_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m12_axis_tdata = axis_cdcsync_v1_1_m12_axis_tdata_1;
  assign axis_cdcsync_v1_1_m13_axis_tvalid = axis_cdcsync_v1_1_m13_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m13_axis_tdata = axis_cdcsync_v1_1_m13_axis_tdata_1;
  assign axis_cdcsync_v1_1_m14_axis_tvalid = axis_cdcsync_v1_1_m14_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m14_axis_tdata = axis_cdcsync_v1_1_m14_axis_tdata_1;
  assign axis_cdcsync_v1_1_m15_axis_tvalid = axis_cdcsync_v1_1_m15_axis_tvalid_1;
  assign axis_cdcsync_v1_1_m15_axis_tdata = axis_cdcsync_v1_1_m15_axis_tdata_1;
  assign axis_sg_mux8_v1_0_s_axi_awready = axis_sg_mux8_v1_0_s_axi_awready_1;
  assign axis_sg_mux8_v1_0_s_axi_wready = axis_sg_mux8_v1_0_s_axi_wready_1;
  assign axis_sg_mux8_v1_0_s_axi_bvalid = axis_sg_mux8_v1_0_s_axi_bvalid_1;
  assign axis_sg_mux8_v1_0_s_axi_bresp = axis_sg_mux8_v1_0_s_axi_bresp_1;
  assign axis_sg_mux8_v1_0_s_axi_arready = axis_sg_mux8_v1_0_s_axi_arready_1;
  assign axis_sg_mux8_v1_0_s_axi_rvalid = axis_sg_mux8_v1_0_s_axi_rvalid_1;
  assign axis_sg_mux8_v1_0_s_axi_rdata = axis_sg_mux8_v1_0_s_axi_rdata_1;
  assign axis_sg_mux8_v1_0_s_axi_rresp = axis_sg_mux8_v1_0_s_axi_rresp_1;
  assign axis_sg_mux8_v1_0_s_axis_tready = axis_sg_mux8_v1_0_s_axis_tready_1;
  assign axis_sg_mux8_v1_0_m_axis_tvalid = axis_sg_mux8_v1_0_m_axis_tvalid_1;
  assign axis_sg_mux8_v1_0_m_axis_tdata = axis_sg_mux8_v1_0_m_axis_tdata_1;
  assign axis_sg_mixmux8_v1_0_s_axi_awready = axis_sg_mixmux8_v1_0_s_axi_awready_1;
  assign axis_sg_mixmux8_v1_0_s_axi_wready = axis_sg_mixmux8_v1_0_s_axi_wready_1;
  assign axis_sg_mixmux8_v1_0_s_axi_bvalid = axis_sg_mixmux8_v1_0_s_axi_bvalid_1;
  assign axis_sg_mixmux8_v1_0_s_axi_bresp = axis_sg_mixmux8_v1_0_s_axi_bresp_1;
  assign axis_sg_mixmux8_v1_0_s_axi_arready = axis_sg_mixmux8_v1_0_s_axi_arready_1;
  assign axis_sg_mixmux8_v1_0_s_axi_rvalid = axis_sg_mixmux8_v1_0_s_axi_rvalid_1;
  assign axis_sg_mixmux8_v1_0_s_axi_rdata = axis_sg_mixmux8_v1_0_s_axi_rdata_1;
  assign axis_sg_mixmux8_v1_0_s_axi_rresp = axis_sg_mixmux8_v1_0_s_axi_rresp_1;
  assign axis_sg_mixmux8_v1_0_s_axis_tready = axis_sg_mixmux8_v1_0_s_axis_tready_1;
  assign axis_sg_mixmux8_v1_0_m_axis_tvalid = axis_sg_mixmux8_v1_0_m_axis_tvalid_1;
  assign axis_sg_mixmux8_v1_0_m_axis_tdata = axis_sg_mixmux8_v1_0_m_axis_tdata_1;
  assign axis_sg_int4_v2_0_s_axi_awready = axis_sg_int4_v2_0_s_axi_awready_1;
  assign axis_sg_int4_v2_0_s_axi_wready = axis_sg_int4_v2_0_s_axi_wready_1;
  assign axis_sg_int4_v2_0_s_axi_bvalid = axis_sg_int4_v2_0_s_axi_bvalid_1;
  assign axis_sg_int4_v2_0_s_axi_bresp = axis_sg_int4_v2_0_s_axi_bresp_1;
  assign axis_sg_int4_v2_0_s_axi_arready = axis_sg_int4_v2_0_s_axi_arready_1;
  assign axis_sg_int4_v2_0_s_axi_rvalid = axis_sg_int4_v2_0_s_axi_rvalid_1;
  assign axis_sg_int4_v2_0_s_axi_rdata = axis_sg_int4_v2_0_s_axi_rdata_1;
  assign axis_sg_int4_v2_0_s_axi_rresp = axis_sg_int4_v2_0_s_axi_rresp_1;
  assign axis_sg_int4_v2_0_s0_axis_tready = axis_sg_int4_v2_0_s0_axis_tready_1;
  assign axis_sg_int4_v2_0_s1_axis_tready = axis_sg_int4_v2_0_s1_axis_tready_1;
  assign axis_sg_int4_v2_0_m_axis_tvalid = axis_sg_int4_v2_0_m_axis_tvalid_1;
  assign axis_sg_int4_v2_0_m_axis_tdata = axis_sg_int4_v2_0_m_axis_tdata_1;
  assign axis_sg_int4_v2_1_s_axi_awready = axis_sg_int4_v2_1_s_axi_awready_1;
  assign axis_sg_int4_v2_1_s_axi_wready = axis_sg_int4_v2_1_s_axi_wready_1;
  assign axis_sg_int4_v2_1_s_axi_bvalid = axis_sg_int4_v2_1_s_axi_bvalid_1;
  assign axis_sg_int4_v2_1_s_axi_bresp = axis_sg_int4_v2_1_s_axi_bresp_1;
  assign axis_sg_int4_v2_1_s_axi_arready = axis_sg_int4_v2_1_s_axi_arready_1;
  assign axis_sg_int4_v2_1_s_axi_rvalid = axis_sg_int4_v2_1_s_axi_rvalid_1;
  assign axis_sg_int4_v2_1_s_axi_rdata = axis_sg_int4_v2_1_s_axi_rdata_1;
  assign axis_sg_int4_v2_1_s_axi_rresp = axis_sg_int4_v2_1_s_axi_rresp_1;
  assign axis_sg_int4_v2_1_s0_axis_tready = axis_sg_int4_v2_1_s0_axis_tready_1;
  assign axis_sg_int4_v2_1_s1_axis_tready = axis_sg_int4_v2_1_s1_axis_tready_1;
  assign axis_sg_int4_v2_1_m_axis_tvalid = axis_sg_int4_v2_1_m_axis_tvalid_1;
  assign axis_sg_int4_v2_1_m_axis_tdata = axis_sg_int4_v2_1_m_axis_tdata_1;
  assign axis_resampler_2x1_v1_0_s_axis_tready = axis_resampler_2x1_v1_0_s_axis_tready_1;
  assign axis_resampler_2x1_v1_0_m_axis_tvalid = axis_resampler_2x1_v1_0_m_axis_tvalid_1;
  assign axis_resampler_2x1_v1_0_m_axis_tdata = axis_resampler_2x1_v1_0_m_axis_tdata_1;
  assign axis_register_slice_0_s_axis_tready = axis_register_slice_0_s_axis_tready_1;
  assign axis_register_slice_0_m_axis_tvalid = axis_register_slice_0_m_axis_tvalid_1;
  assign axis_register_slice_0_m_axis_tdata = axis_register_slice_0_m_axis_tdata_1;
  assign axis_register_slice_1_s_axis_tready = axis_register_slice_1_s_axis_tready_1;
  assign axis_register_slice_1_m_axis_tvalid = axis_register_slice_1_m_axis_tvalid_1;
  assign axis_register_slice_1_m_axis_tdata = axis_register_slice_1_m_axis_tdata_1;
  assign axis_register_slice_2_s_axis_tready = axis_register_slice_2_s_axis_tready_1;
  assign axis_register_slice_2_m_axis_tvalid = axis_register_slice_2_m_axis_tvalid_1;
  assign axis_register_slice_2_m_axis_tdata = axis_register_slice_2_m_axis_tdata_1;
  assign sg_translator_0_s_tproc_axis_tready = sg_translator_0_s_tproc_axis_tready_1;
  assign sg_translator_0_m_gen_v6_axis_tvalid = sg_translator_0_m_gen_v6_axis_tvalid_1;
  assign sg_translator_0_m_gen_v6_axis_tdata = sg_translator_0_m_gen_v6_axis_tdata_1;
  assign sg_translator_0_m_int4_axis_tvalid = sg_translator_0_m_int4_axis_tvalid_1;
  assign sg_translator_0_m_int4_axis_tdata = sg_translator_0_m_int4_axis_tdata_1;
  assign sg_translator_0_m_mux4_axis_tvalid = sg_translator_0_m_mux4_axis_tvalid_1;
  assign sg_translator_0_m_mux4_axis_tdata = sg_translator_0_m_mux4_axis_tdata_1;
  assign sg_translator_0_m_readout_v3_axis_tvalid = sg_translator_0_m_readout_v3_axis_tvalid_1;
  assign sg_translator_0_m_readout_v3_axis_tdata = sg_translator_0_m_readout_v3_axis_tdata_1;
  assign sg_translator_1_s_tproc_axis_tready = sg_translator_1_s_tproc_axis_tready_1;
  assign sg_translator_1_m_gen_v6_axis_tvalid = sg_translator_1_m_gen_v6_axis_tvalid_1;
  assign sg_translator_1_m_gen_v6_axis_tdata = sg_translator_1_m_gen_v6_axis_tdata_1;
  assign sg_translator_1_m_int4_axis_tvalid = sg_translator_1_m_int4_axis_tvalid_1;
  assign sg_translator_1_m_int4_axis_tdata = sg_translator_1_m_int4_axis_tdata_1;
  assign sg_translator_1_m_mux4_axis_tvalid = sg_translator_1_m_mux4_axis_tvalid_1;
  assign sg_translator_1_m_mux4_axis_tdata = sg_translator_1_m_mux4_axis_tdata_1;
  assign sg_translator_1_m_readout_v3_axis_tvalid = sg_translator_1_m_readout_v3_axis_tvalid_1;
  assign sg_translator_1_m_readout_v3_axis_tdata = sg_translator_1_m_readout_v3_axis_tdata_1;
  assign sg_translator_2_s_tproc_axis_tready = sg_translator_2_s_tproc_axis_tready_1;
  assign sg_translator_2_m_gen_v6_axis_tvalid = sg_translator_2_m_gen_v6_axis_tvalid_1;
  assign sg_translator_2_m_gen_v6_axis_tdata = sg_translator_2_m_gen_v6_axis_tdata_1;
  assign sg_translator_2_m_int4_axis_tvalid = sg_translator_2_m_int4_axis_tvalid_1;
  assign sg_translator_2_m_int4_axis_tdata = sg_translator_2_m_int4_axis_tdata_1;
  assign sg_translator_2_m_mux4_axis_tvalid = sg_translator_2_m_mux4_axis_tvalid_1;
  assign sg_translator_2_m_mux4_axis_tdata = sg_translator_2_m_mux4_axis_tdata_1;
  assign sg_translator_2_m_readout_v3_axis_tvalid = sg_translator_2_m_readout_v3_axis_tvalid_1;
  assign sg_translator_2_m_readout_v3_axis_tdata = sg_translator_2_m_readout_v3_axis_tdata_1;
  assign sg_translator_3_s_tproc_axis_tready = sg_translator_3_s_tproc_axis_tready_1;
  assign sg_translator_3_m_gen_v6_axis_tvalid = sg_translator_3_m_gen_v6_axis_tvalid_1;
  assign sg_translator_3_m_gen_v6_axis_tdata = sg_translator_3_m_gen_v6_axis_tdata_1;
  assign sg_translator_3_m_int4_axis_tvalid = sg_translator_3_m_int4_axis_tvalid_1;
  assign sg_translator_3_m_int4_axis_tdata = sg_translator_3_m_int4_axis_tdata_1;
  assign sg_translator_3_m_mux4_axis_tvalid = sg_translator_3_m_mux4_axis_tvalid_1;
  assign sg_translator_3_m_mux4_axis_tdata = sg_translator_3_m_mux4_axis_tdata_1;
  assign sg_translator_3_m_readout_v3_axis_tvalid = sg_translator_3_m_readout_v3_axis_tvalid_1;
  assign sg_translator_3_m_readout_v3_axis_tdata = sg_translator_3_m_readout_v3_axis_tdata_1;
  assign sg_translator_4_s_tproc_axis_tready = sg_translator_4_s_tproc_axis_tready_1;
  assign sg_translator_4_m_gen_v6_axis_tvalid = sg_translator_4_m_gen_v6_axis_tvalid_1;
  assign sg_translator_4_m_gen_v6_axis_tdata = sg_translator_4_m_gen_v6_axis_tdata_1;
  assign sg_translator_4_m_int4_axis_tvalid = sg_translator_4_m_int4_axis_tvalid_1;
  assign sg_translator_4_m_int4_axis_tdata = sg_translator_4_m_int4_axis_tdata_1;
  assign sg_translator_4_m_mux4_axis_tvalid = sg_translator_4_m_mux4_axis_tvalid_1;
  assign sg_translator_4_m_mux4_axis_tdata = sg_translator_4_m_mux4_axis_tdata_1;
  assign sg_translator_4_m_readout_v3_axis_tvalid = sg_translator_4_m_readout_v3_axis_tvalid_1;
  assign sg_translator_4_m_readout_v3_axis_tdata = sg_translator_4_m_readout_v3_axis_tdata_1;
  assign sg_translator_5_s_tproc_axis_tready = sg_translator_5_s_tproc_axis_tready_1;
  assign sg_translator_5_m_gen_v6_axis_tvalid = sg_translator_5_m_gen_v6_axis_tvalid_1;
  assign sg_translator_5_m_gen_v6_axis_tdata = sg_translator_5_m_gen_v6_axis_tdata_1;
  assign sg_translator_5_m_int4_axis_tvalid = sg_translator_5_m_int4_axis_tvalid_1;
  assign sg_translator_5_m_int4_axis_tdata = sg_translator_5_m_int4_axis_tdata_1;
  assign sg_translator_5_m_mux4_axis_tvalid = sg_translator_5_m_mux4_axis_tvalid_1;
  assign sg_translator_5_m_mux4_axis_tdata = sg_translator_5_m_mux4_axis_tdata_1;
  assign sg_translator_5_m_readout_v3_axis_tvalid = sg_translator_5_m_readout_v3_axis_tvalid_1;
  assign sg_translator_5_m_readout_v3_axis_tdata = sg_translator_5_m_readout_v3_axis_tdata_1;
  assign sg_translator_6_s_tproc_axis_tready = sg_translator_6_s_tproc_axis_tready_1;
  assign sg_translator_6_m_gen_v6_axis_tvalid = sg_translator_6_m_gen_v6_axis_tvalid_1;
  assign sg_translator_6_m_gen_v6_axis_tdata = sg_translator_6_m_gen_v6_axis_tdata_1;
  assign sg_translator_6_m_int4_axis_tvalid = sg_translator_6_m_int4_axis_tvalid_1;
  assign sg_translator_6_m_int4_axis_tdata = sg_translator_6_m_int4_axis_tdata_1;
  assign sg_translator_6_m_mux4_axis_tvalid = sg_translator_6_m_mux4_axis_tvalid_1;
  assign sg_translator_6_m_mux4_axis_tdata = sg_translator_6_m_mux4_axis_tdata_1;
  assign sg_translator_6_m_readout_v3_axis_tvalid = sg_translator_6_m_readout_v3_axis_tvalid_1;
  assign sg_translator_6_m_readout_v3_axis_tdata = sg_translator_6_m_readout_v3_axis_tdata_1;
  assign sg_translator_7_s_tproc_axis_tready = sg_translator_7_s_tproc_axis_tready_1;
  assign sg_translator_7_m_gen_v6_axis_tvalid = sg_translator_7_m_gen_v6_axis_tvalid_1;
  assign sg_translator_7_m_gen_v6_axis_tdata = sg_translator_7_m_gen_v6_axis_tdata_1;
  assign sg_translator_7_m_int4_axis_tvalid = sg_translator_7_m_int4_axis_tvalid_1;
  assign sg_translator_7_m_int4_axis_tdata = sg_translator_7_m_int4_axis_tdata_1;
  assign sg_translator_7_m_mux4_axis_tvalid = sg_translator_7_m_mux4_axis_tvalid_1;
  assign sg_translator_7_m_mux4_axis_tdata = sg_translator_7_m_mux4_axis_tdata_1;
  assign sg_translator_7_m_readout_v3_axis_tvalid = sg_translator_7_m_readout_v3_axis_tvalid_1;
  assign sg_translator_7_m_readout_v3_axis_tdata = sg_translator_7_m_readout_v3_axis_tdata_1;

endmodule

//QickSgTranslator_7 replaced by QickSgTranslator_6

module QickSgTranslator_6 (
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

  wire                sgTranslator_s_tproc_axis_tready;
  wire                sgTranslator_m_gen_v6_axis_tvalid;
  wire       [159:0]  sgTranslator_m_gen_v6_axis_tdata;
  wire                sgTranslator_m_int4_axis_tvalid;
  wire       [87:0]   sgTranslator_m_int4_axis_tdata;
  wire                sgTranslator_m_mux4_axis_tvalid;
  wire       [39:0]   sgTranslator_m_mux4_axis_tdata;
  wire                sgTranslator_m_readout_v3_axis_tvalid;
  wire       [87:0]   sgTranslator_m_readout_v3_axis_tdata;

  sg_translator #(
    .OUT_TYPE (3)
  ) sgTranslator (
    .aresetn                  (aresetn                                   ), //i
    .aclk                     (aclk                                      ), //i
    .s_tproc_axis_tvalid      (s_tproc_axis_tvalid                       ), //i
    .s_tproc_axis_tready      (sgTranslator_s_tproc_axis_tready          ), //o
    .s_tproc_axis_tdata       (s_tproc_axis_tdata[167:0]                 ), //i
    .m_gen_v6_axis_tvalid     (sgTranslator_m_gen_v6_axis_tvalid         ), //o
    .m_gen_v6_axis_tready     (m_gen_v6_axis_tready                      ), //i
    .m_gen_v6_axis_tdata      (sgTranslator_m_gen_v6_axis_tdata[159:0]   ), //o
    .m_int4_axis_tvalid       (sgTranslator_m_int4_axis_tvalid           ), //o
    .m_int4_axis_tready       (m_int4_axis_tready                        ), //i
    .m_int4_axis_tdata        (sgTranslator_m_int4_axis_tdata[87:0]      ), //o
    .m_mux4_axis_tvalid       (sgTranslator_m_mux4_axis_tvalid           ), //o
    .m_mux4_axis_tready       (m_mux4_axis_tready                        ), //i
    .m_mux4_axis_tdata        (sgTranslator_m_mux4_axis_tdata[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sgTranslator_m_readout_v3_axis_tvalid     ), //o
    .m_readout_v3_axis_tready (m_readout_v3_axis_tready                  ), //i
    .m_readout_v3_axis_tdata  (sgTranslator_m_readout_v3_axis_tdata[87:0])  //o
  );
  assign s_tproc_axis_tready = sgTranslator_s_tproc_axis_tready;
  assign m_gen_v6_axis_tvalid = sgTranslator_m_gen_v6_axis_tvalid;
  assign m_gen_v6_axis_tdata = sgTranslator_m_gen_v6_axis_tdata;
  assign m_int4_axis_tvalid = sgTranslator_m_int4_axis_tvalid;
  assign m_int4_axis_tdata = sgTranslator_m_int4_axis_tdata;
  assign m_mux4_axis_tvalid = sgTranslator_m_mux4_axis_tvalid;
  assign m_mux4_axis_tdata = sgTranslator_m_mux4_axis_tdata;
  assign m_readout_v3_axis_tvalid = sgTranslator_m_readout_v3_axis_tvalid;
  assign m_readout_v3_axis_tdata = sgTranslator_m_readout_v3_axis_tdata;

endmodule

//QickSgTranslator_5 replaced by QickSgTranslator_1

//QickSgTranslator_4 replaced by QickSgTranslator

//QickSgTranslator_3 replaced by QickSgTranslator

//QickSgTranslator_2 replaced by QickSgTranslator

module QickSgTranslator_1 (
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

  wire                sgTranslator_s_tproc_axis_tready;
  wire                sgTranslator_m_gen_v6_axis_tvalid;
  wire       [159:0]  sgTranslator_m_gen_v6_axis_tdata;
  wire                sgTranslator_m_int4_axis_tvalid;
  wire       [87:0]   sgTranslator_m_int4_axis_tdata;
  wire                sgTranslator_m_mux4_axis_tvalid;
  wire       [39:0]   sgTranslator_m_mux4_axis_tdata;
  wire                sgTranslator_m_readout_v3_axis_tvalid;
  wire       [87:0]   sgTranslator_m_readout_v3_axis_tdata;

  sg_translator #(
    .OUT_TYPE (2)
  ) sgTranslator (
    .aresetn                  (aresetn                                   ), //i
    .aclk                     (aclk                                      ), //i
    .s_tproc_axis_tvalid      (s_tproc_axis_tvalid                       ), //i
    .s_tproc_axis_tready      (sgTranslator_s_tproc_axis_tready          ), //o
    .s_tproc_axis_tdata       (s_tproc_axis_tdata[167:0]                 ), //i
    .m_gen_v6_axis_tvalid     (sgTranslator_m_gen_v6_axis_tvalid         ), //o
    .m_gen_v6_axis_tready     (m_gen_v6_axis_tready                      ), //i
    .m_gen_v6_axis_tdata      (sgTranslator_m_gen_v6_axis_tdata[159:0]   ), //o
    .m_int4_axis_tvalid       (sgTranslator_m_int4_axis_tvalid           ), //o
    .m_int4_axis_tready       (m_int4_axis_tready                        ), //i
    .m_int4_axis_tdata        (sgTranslator_m_int4_axis_tdata[87:0]      ), //o
    .m_mux4_axis_tvalid       (sgTranslator_m_mux4_axis_tvalid           ), //o
    .m_mux4_axis_tready       (m_mux4_axis_tready                        ), //i
    .m_mux4_axis_tdata        (sgTranslator_m_mux4_axis_tdata[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sgTranslator_m_readout_v3_axis_tvalid     ), //o
    .m_readout_v3_axis_tready (m_readout_v3_axis_tready                  ), //i
    .m_readout_v3_axis_tdata  (sgTranslator_m_readout_v3_axis_tdata[87:0])  //o
  );
  assign s_tproc_axis_tready = sgTranslator_s_tproc_axis_tready;
  assign m_gen_v6_axis_tvalid = sgTranslator_m_gen_v6_axis_tvalid;
  assign m_gen_v6_axis_tdata = sgTranslator_m_gen_v6_axis_tdata;
  assign m_int4_axis_tvalid = sgTranslator_m_int4_axis_tvalid;
  assign m_int4_axis_tdata = sgTranslator_m_int4_axis_tdata;
  assign m_mux4_axis_tvalid = sgTranslator_m_mux4_axis_tvalid;
  assign m_mux4_axis_tdata = sgTranslator_m_mux4_axis_tdata;
  assign m_readout_v3_axis_tvalid = sgTranslator_m_readout_v3_axis_tvalid;
  assign m_readout_v3_axis_tdata = sgTranslator_m_readout_v3_axis_tdata;

endmodule

module QickSgTranslator (
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

  wire                sgTranslator_s_tproc_axis_tready;
  wire                sgTranslator_m_gen_v6_axis_tvalid;
  wire       [159:0]  sgTranslator_m_gen_v6_axis_tdata;
  wire                sgTranslator_m_int4_axis_tvalid;
  wire       [87:0]   sgTranslator_m_int4_axis_tdata;
  wire                sgTranslator_m_mux4_axis_tvalid;
  wire       [39:0]   sgTranslator_m_mux4_axis_tdata;
  wire                sgTranslator_m_readout_v3_axis_tvalid;
  wire       [87:0]   sgTranslator_m_readout_v3_axis_tdata;

  sg_translator #(
    .OUT_TYPE (0)
  ) sgTranslator (
    .aresetn                  (aresetn                                   ), //i
    .aclk                     (aclk                                      ), //i
    .s_tproc_axis_tvalid      (s_tproc_axis_tvalid                       ), //i
    .s_tproc_axis_tready      (sgTranslator_s_tproc_axis_tready          ), //o
    .s_tproc_axis_tdata       (s_tproc_axis_tdata[167:0]                 ), //i
    .m_gen_v6_axis_tvalid     (sgTranslator_m_gen_v6_axis_tvalid         ), //o
    .m_gen_v6_axis_tready     (m_gen_v6_axis_tready                      ), //i
    .m_gen_v6_axis_tdata      (sgTranslator_m_gen_v6_axis_tdata[159:0]   ), //o
    .m_int4_axis_tvalid       (sgTranslator_m_int4_axis_tvalid           ), //o
    .m_int4_axis_tready       (m_int4_axis_tready                        ), //i
    .m_int4_axis_tdata        (sgTranslator_m_int4_axis_tdata[87:0]      ), //o
    .m_mux4_axis_tvalid       (sgTranslator_m_mux4_axis_tvalid           ), //o
    .m_mux4_axis_tready       (m_mux4_axis_tready                        ), //i
    .m_mux4_axis_tdata        (sgTranslator_m_mux4_axis_tdata[39:0]      ), //o
    .m_readout_v3_axis_tvalid (sgTranslator_m_readout_v3_axis_tvalid     ), //o
    .m_readout_v3_axis_tready (m_readout_v3_axis_tready                  ), //i
    .m_readout_v3_axis_tdata  (sgTranslator_m_readout_v3_axis_tdata[87:0])  //o
  );
  assign s_tproc_axis_tready = sgTranslator_s_tproc_axis_tready;
  assign m_gen_v6_axis_tvalid = sgTranslator_m_gen_v6_axis_tvalid;
  assign m_gen_v6_axis_tdata = sgTranslator_m_gen_v6_axis_tdata;
  assign m_int4_axis_tvalid = sgTranslator_m_int4_axis_tvalid;
  assign m_int4_axis_tdata = sgTranslator_m_int4_axis_tdata;
  assign m_mux4_axis_tvalid = sgTranslator_m_mux4_axis_tvalid;
  assign m_mux4_axis_tdata = sgTranslator_m_mux4_axis_tdata;
  assign m_readout_v3_axis_tvalid = sgTranslator_m_readout_v3_axis_tvalid;
  assign m_readout_v3_axis_tdata = sgTranslator_m_readout_v3_axis_tdata;

endmodule

//AxisRegisterSliceNb_2 replaced by AxisRegisterSliceNb

//AxisRegisterSliceNb_1 replaced by AxisRegisterSliceNb

module AxisRegisterSliceNb (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [255:0]  s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  m_axis_tdata
);

  wire                axisRegisterSliceNb_3_s_axis_tready;
  wire                axisRegisterSliceNb_3_m_axis_tvalid;
  wire       [255:0]  axisRegisterSliceNb_3_m_axis_tdata;

  axis_register_slice_nb #(
    .B (256),
    .N (6  )
  ) axisRegisterSliceNb_3 (
    .aresetn       (aresetn                                  ), //i
    .aclk          (aclk                                     ), //i
    .s_axis_tvalid (s_axis_tvalid                            ), //i
    .s_axis_tready (axisRegisterSliceNb_3_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[255:0]                      ), //i
    .m_axis_tvalid (axisRegisterSliceNb_3_m_axis_tvalid      ), //o
    .m_axis_tready (m_axis_tready                            ), //i
    .m_axis_tdata  (axisRegisterSliceNb_3_m_axis_tdata[255:0])  //o
  );
  assign s_axis_tready = axisRegisterSliceNb_3_s_axis_tready;
  assign m_axis_tvalid = axisRegisterSliceNb_3_m_axis_tvalid;
  assign m_axis_tdata = axisRegisterSliceNb_3_m_axis_tdata;

endmodule

module AxisResampler (
  input  wire          aclk,
  input  wire          aresetn,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [127:0]  s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [63:0]   m_axis_tdata
);

  wire                axisResampler_1_s_axis_tready;
  wire                axisResampler_1_m_axis_tvalid;
  wire       [63:0]   axisResampler_1_m_axis_tdata;

  axis_resampler_2x1_v1 #(
    .B (16),
    .N (8 )
  ) axisResampler_1 (
    .aclk          (aclk                              ), //i
    .aresetn       (aresetn                           ), //i
    .s_axis_tvalid (s_axis_tvalid                     ), //i
    .s_axis_tready (axisResampler_1_s_axis_tready     ), //o
    .s_axis_tdata  (s_axis_tdata[127:0]               ), //i
    .m_axis_tvalid (axisResampler_1_m_axis_tvalid     ), //o
    .m_axis_tready (m_axis_tready                     ), //i
    .m_axis_tdata  (axisResampler_1_m_axis_tdata[63:0])  //o
  );
  assign s_axis_tready = axisResampler_1_s_axis_tready;
  assign m_axis_tvalid = axisResampler_1_m_axis_tvalid;
  assign m_axis_tdata = axisResampler_1_m_axis_tdata;

endmodule

//AxisSgInt4_1 replaced by AxisSgInt4

module AxisSgInt4 (
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
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   s0_axis_tdata,
  input  wire          s0_axis_aclk,
  input  wire          s0_axis_aresetn,
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [159:0]  s1_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  m_axis_tdata
);

  wire                axisSgInt4_2_s_axi_awready;
  wire                axisSgInt4_2_s_axi_wready;
  wire                axisSgInt4_2_s_axi_bvalid;
  wire       [1:0]    axisSgInt4_2_s_axi_bresp;
  wire                axisSgInt4_2_s_axi_arready;
  wire                axisSgInt4_2_s_axi_rvalid;
  wire       [31:0]   axisSgInt4_2_s_axi_rdata;
  wire       [1:0]    axisSgInt4_2_s_axi_rresp;
  wire                axisSgInt4_2_s0_axis_tready;
  wire                axisSgInt4_2_s1_axis_tready;
  wire                axisSgInt4_2_m_axis_tvalid;
  wire       [127:0]  axisSgInt4_2_m_axis_tdata;

  axis_sg_int4_v2 axisSgInt4_2 (
    .s_axi_awvalid   (s_axi_awvalid                   ), //i
    .s_axi_awready   (axisSgInt4_2_s_axi_awready      ), //o
    .s_axi_awaddr    (s_axi_awaddr[5:0]               ), //i
    .s_axi_awprot    (s_axi_awprot[2:0]               ), //i
    .s_axi_wvalid    (s_axi_wvalid                    ), //i
    .s_axi_wready    (axisSgInt4_2_s_axi_wready       ), //o
    .s_axi_wdata     (s_axi_wdata[31:0]               ), //i
    .s_axi_wstrb     (s_axi_wstrb[3:0]                ), //i
    .s_axi_bvalid    (axisSgInt4_2_s_axi_bvalid       ), //o
    .s_axi_bready    (s_axi_bready                    ), //i
    .s_axi_bresp     (axisSgInt4_2_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid   (s_axi_arvalid                   ), //i
    .s_axi_arready   (axisSgInt4_2_s_axi_arready      ), //o
    .s_axi_araddr    (s_axi_araddr[5:0]               ), //i
    .s_axi_arprot    (s_axi_arprot[2:0]               ), //i
    .s_axi_rvalid    (axisSgInt4_2_s_axi_rvalid       ), //o
    .s_axi_rready    (s_axi_rready                    ), //i
    .s_axi_rdata     (axisSgInt4_2_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp     (axisSgInt4_2_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk      (s_axi_aclk_i                    ), //i
    .s_axi_aresetn   (s_axi_aresetn                   ), //i
    .s0_axis_tvalid  (s0_axis_tvalid                  ), //i
    .s0_axis_tready  (axisSgInt4_2_s0_axis_tready     ), //o
    .s0_axis_tdata   (s0_axis_tdata[31:0]             ), //i
    .s0_axis_aclk    (s0_axis_aclk                    ), //i
    .s0_axis_aresetn (s0_axis_aresetn                 ), //i
    .aresetn         (aresetn                         ), //i
    .aclk            (aclk_i                          ), //i
    .s1_axis_tvalid  (s1_axis_tvalid                  ), //i
    .s1_axis_tready  (axisSgInt4_2_s1_axis_tready     ), //o
    .s1_axis_tdata   (s1_axis_tdata[159:0]            ), //i
    .m_axis_tvalid   (axisSgInt4_2_m_axis_tvalid      ), //o
    .m_axis_tready   (m_axis_tready                   ), //i
    .m_axis_tdata    (axisSgInt4_2_m_axis_tdata[127:0])  //o
  );
  assign s_axi_awready = axisSgInt4_2_s_axi_awready;
  assign s_axi_wready = axisSgInt4_2_s_axi_wready;
  assign s_axi_bvalid = axisSgInt4_2_s_axi_bvalid;
  assign s_axi_bresp = axisSgInt4_2_s_axi_bresp;
  assign s_axi_arready = axisSgInt4_2_s_axi_arready;
  assign s_axi_rvalid = axisSgInt4_2_s_axi_rvalid;
  assign s_axi_rdata = axisSgInt4_2_s_axi_rdata;
  assign s_axi_rresp = axisSgInt4_2_s_axi_rresp;
  assign s0_axis_tready = axisSgInt4_2_s0_axis_tready;
  assign s1_axis_tready = axisSgInt4_2_s1_axis_tready;
  assign m_axis_tvalid = axisSgInt4_2_m_axis_tvalid;
  assign m_axis_tdata = axisSgInt4_2_m_axis_tdata;

endmodule

module AxisSgMixMux8 (
  input  wire          s_axi_aresetn,
  input  wire          s_axi_aclk_i,
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
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) input  wire [39:0]   s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [127:0]  m_axis_tdata
);

  wire                axisSgMixMux8_1_s_axi_awready;
  wire                axisSgMixMux8_1_s_axi_wready;
  wire                axisSgMixMux8_1_s_axi_bvalid;
  wire       [1:0]    axisSgMixMux8_1_s_axi_bresp;
  wire                axisSgMixMux8_1_s_axi_arready;
  wire                axisSgMixMux8_1_s_axi_rvalid;
  wire       [31:0]   axisSgMixMux8_1_s_axi_rdata;
  wire       [1:0]    axisSgMixMux8_1_s_axi_rresp;
  wire                axisSgMixMux8_1_s_axis_tready;
  wire                axisSgMixMux8_1_m_axis_tvalid;
  wire       [127:0]  axisSgMixMux8_1_m_axis_tdata;

  axis_sg_mixmux8_v1 #(
    .N_DDS (4)
  ) axisSgMixMux8_1 (
    .s_axi_aresetn (s_axi_aresetn                      ), //i
    .s_axi_aclk    (s_axi_aclk_i                       ), //i
    .s_axi_awvalid (s_axi_awvalid                      ), //i
    .s_axi_awready (axisSgMixMux8_1_s_axi_awready      ), //o
    .s_axi_awaddr  (s_axi_awaddr[7:0]                  ), //i
    .s_axi_awprot  (s_axi_awprot[2:0]                  ), //i
    .s_axi_wvalid  (s_axi_wvalid                       ), //i
    .s_axi_wready  (axisSgMixMux8_1_s_axi_wready       ), //o
    .s_axi_wdata   (s_axi_wdata[31:0]                  ), //i
    .s_axi_wstrb   (s_axi_wstrb[3:0]                   ), //i
    .s_axi_bvalid  (axisSgMixMux8_1_s_axi_bvalid       ), //o
    .s_axi_bready  (s_axi_bready                       ), //i
    .s_axi_bresp   (axisSgMixMux8_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid (s_axi_arvalid                      ), //i
    .s_axi_arready (axisSgMixMux8_1_s_axi_arready      ), //o
    .s_axi_araddr  (s_axi_araddr[7:0]                  ), //i
    .s_axi_arprot  (s_axi_arprot[2:0]                  ), //i
    .s_axi_rvalid  (axisSgMixMux8_1_s_axi_rvalid       ), //o
    .s_axi_rready  (s_axi_rready                       ), //i
    .s_axi_rdata   (axisSgMixMux8_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp   (axisSgMixMux8_1_s_axi_rresp[1:0]   ), //o
    .aresetn       (aresetn                            ), //i
    .aclk          (aclk_i                             ), //i
    .s_axis_tvalid (s_axis_tvalid                      ), //i
    .s_axis_tready (axisSgMixMux8_1_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[39:0]                 ), //i
    .m_axis_tvalid (axisSgMixMux8_1_m_axis_tvalid      ), //o
    .m_axis_tready (m_axis_tready                      ), //i
    .m_axis_tdata  (axisSgMixMux8_1_m_axis_tdata[127:0])  //o
  );
  assign s_axi_awready = axisSgMixMux8_1_s_axi_awready;
  assign s_axi_wready = axisSgMixMux8_1_s_axi_wready;
  assign s_axi_bvalid = axisSgMixMux8_1_s_axi_bvalid;
  assign s_axi_bresp = axisSgMixMux8_1_s_axi_bresp;
  assign s_axi_arready = axisSgMixMux8_1_s_axi_arready;
  assign s_axi_rvalid = axisSgMixMux8_1_s_axi_rvalid;
  assign s_axi_rdata = axisSgMixMux8_1_s_axi_rdata;
  assign s_axi_rresp = axisSgMixMux8_1_s_axi_rresp;
  assign s_axis_tready = axisSgMixMux8_1_s_axis_tready;
  assign m_axis_tvalid = axisSgMixMux8_1_m_axis_tvalid;
  assign m_axis_tdata = axisSgMixMux8_1_m_axis_tdata;

endmodule

module AxisSgMux8 (
  input  wire          s_axi_aresetn,
  input  wire          s_axi_aclk_i,
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
  input  wire          aclk_i,
  input  wire          aresetn,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [31:0]   s_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  m_axis_tdata
);

  wire                axisSgMux8_1_s_axi_awready;
  wire                axisSgMux8_1_s_axi_wready;
  wire                axisSgMux8_1_s_axi_bvalid;
  wire       [1:0]    axisSgMux8_1_s_axi_bresp;
  wire                axisSgMux8_1_s_axi_arready;
  wire                axisSgMux8_1_s_axi_rvalid;
  wire       [31:0]   axisSgMux8_1_s_axi_rdata;
  wire       [1:0]    axisSgMux8_1_s_axi_rresp;
  wire                axisSgMux8_1_s_axis_tready;
  wire                axisSgMux8_1_m_axis_tvalid;
  wire       [255:0]  axisSgMux8_1_m_axis_tdata;

  axis_sg_mux8_v1 #(
    .N_DDS (16)
  ) axisSgMux8_1 (
    .s_axi_aresetn (s_axi_aresetn                   ), //i
    .s_axi_aclk    (s_axi_aclk_i                    ), //i
    .s_axi_awvalid (s_axi_awvalid                   ), //i
    .s_axi_awready (axisSgMux8_1_s_axi_awready      ), //o
    .s_axi_awaddr  (s_axi_awaddr[7:0]               ), //i
    .s_axi_awprot  (s_axi_awprot[2:0]               ), //i
    .s_axi_wvalid  (s_axi_wvalid                    ), //i
    .s_axi_wready  (axisSgMux8_1_s_axi_wready       ), //o
    .s_axi_wdata   (s_axi_wdata[31:0]               ), //i
    .s_axi_wstrb   (s_axi_wstrb[3:0]                ), //i
    .s_axi_bvalid  (axisSgMux8_1_s_axi_bvalid       ), //o
    .s_axi_bready  (s_axi_bready                    ), //i
    .s_axi_bresp   (axisSgMux8_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid (s_axi_arvalid                   ), //i
    .s_axi_arready (axisSgMux8_1_s_axi_arready      ), //o
    .s_axi_araddr  (s_axi_araddr[7:0]               ), //i
    .s_axi_arprot  (s_axi_arprot[2:0]               ), //i
    .s_axi_rvalid  (axisSgMux8_1_s_axi_rvalid       ), //o
    .s_axi_rready  (s_axi_rready                    ), //i
    .s_axi_rdata   (axisSgMux8_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp   (axisSgMux8_1_s_axi_rresp[1:0]   ), //o
    .aclk          (aclk_i                          ), //i
    .aresetn       (aresetn                         ), //i
    .s_axis_tvalid (s_axis_tvalid                   ), //i
    .s_axis_tready (axisSgMux8_1_s_axis_tready      ), //o
    .s_axis_tdata  (s_axis_tdata[31:0]              ), //i
    .m_axis_tvalid (axisSgMux8_1_m_axis_tvalid      ), //o
    .m_axis_tready (m_axis_tready                   ), //i
    .m_axis_tdata  (axisSgMux8_1_m_axis_tdata[255:0])  //o
  );
  assign s_axi_awready = axisSgMux8_1_s_axi_awready;
  assign s_axi_wready = axisSgMux8_1_s_axi_wready;
  assign s_axi_bvalid = axisSgMux8_1_s_axi_bvalid;
  assign s_axi_bresp = axisSgMux8_1_s_axi_bresp;
  assign s_axi_arready = axisSgMux8_1_s_axi_arready;
  assign s_axi_rvalid = axisSgMux8_1_s_axi_rvalid;
  assign s_axi_rdata = axisSgMux8_1_s_axi_rdata;
  assign s_axi_rresp = axisSgMux8_1_s_axi_rresp;
  assign s_axis_tready = axisSgMux8_1_s_axis_tready;
  assign m_axis_tvalid = axisSgMux8_1_m_axis_tvalid;
  assign m_axis_tdata = axisSgMux8_1_m_axis_tdata;

endmodule

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

  wire                axisCdcsync_1_s0_axis_tready;
  wire                axisCdcsync_1_s1_axis_tready;
  wire                axisCdcsync_1_s2_axis_tready;
  wire                axisCdcsync_1_s3_axis_tready;
  wire                axisCdcsync_1_s4_axis_tready;
  wire                axisCdcsync_1_s5_axis_tready;
  wire                axisCdcsync_1_s6_axis_tready;
  wire                axisCdcsync_1_s7_axis_tready;
  wire                axisCdcsync_1_s8_axis_tready;
  wire                axisCdcsync_1_s9_axis_tready;
  wire                axisCdcsync_1_s10_axis_tready;
  wire                axisCdcsync_1_s11_axis_tready;
  wire                axisCdcsync_1_s12_axis_tready;
  wire                axisCdcsync_1_s13_axis_tready;
  wire                axisCdcsync_1_s14_axis_tready;
  wire                axisCdcsync_1_s15_axis_tready;
  wire                axisCdcsync_1_m0_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m0_axis_tdata;
  wire                axisCdcsync_1_m1_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m1_axis_tdata;
  wire                axisCdcsync_1_m2_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m2_axis_tdata;
  wire                axisCdcsync_1_m3_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m3_axis_tdata;
  wire                axisCdcsync_1_m4_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m4_axis_tdata;
  wire                axisCdcsync_1_m5_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m5_axis_tdata;
  wire                axisCdcsync_1_m6_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m6_axis_tdata;
  wire                axisCdcsync_1_m7_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m7_axis_tdata;
  wire                axisCdcsync_1_m8_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m8_axis_tdata;
  wire                axisCdcsync_1_m9_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m9_axis_tdata;
  wire                axisCdcsync_1_m10_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m10_axis_tdata;
  wire                axisCdcsync_1_m11_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m11_axis_tdata;
  wire                axisCdcsync_1_m12_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m12_axis_tdata;
  wire                axisCdcsync_1_m13_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m13_axis_tdata;
  wire                axisCdcsync_1_m14_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m14_axis_tdata;
  wire                axisCdcsync_1_m15_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m15_axis_tdata;

  axis_cdcsync_v1 #(
    .N (3  ),
    .B (168)
  ) axisCdcsync_1 (
    .s_axis_aresetn  (s_axis_aresetn                     ), //i
    .s_axis_aclk     (s_axis_aclk                        ), //i
    .s0_axis_tvalid  (s0_axis_tvalid                     ), //i
    .s0_axis_tready  (axisCdcsync_1_s0_axis_tready       ), //o
    .s0_axis_tdata   (s0_axis_tdata[167:0]               ), //i
    .s1_axis_tvalid  (s1_axis_tvalid                     ), //i
    .s1_axis_tready  (axisCdcsync_1_s1_axis_tready       ), //o
    .s1_axis_tdata   (s1_axis_tdata[167:0]               ), //i
    .s2_axis_tvalid  (s2_axis_tvalid                     ), //i
    .s2_axis_tready  (axisCdcsync_1_s2_axis_tready       ), //o
    .s2_axis_tdata   (s2_axis_tdata[167:0]               ), //i
    .s3_axis_tvalid  (s3_axis_tvalid                     ), //i
    .s3_axis_tready  (axisCdcsync_1_s3_axis_tready       ), //o
    .s3_axis_tdata   (s3_axis_tdata[167:0]               ), //i
    .s4_axis_tvalid  (s4_axis_tvalid                     ), //i
    .s4_axis_tready  (axisCdcsync_1_s4_axis_tready       ), //o
    .s4_axis_tdata   (s4_axis_tdata[167:0]               ), //i
    .s5_axis_tvalid  (s5_axis_tvalid                     ), //i
    .s5_axis_tready  (axisCdcsync_1_s5_axis_tready       ), //o
    .s5_axis_tdata   (s5_axis_tdata[167:0]               ), //i
    .s6_axis_tvalid  (s6_axis_tvalid                     ), //i
    .s6_axis_tready  (axisCdcsync_1_s6_axis_tready       ), //o
    .s6_axis_tdata   (s6_axis_tdata[167:0]               ), //i
    .s7_axis_tvalid  (s7_axis_tvalid                     ), //i
    .s7_axis_tready  (axisCdcsync_1_s7_axis_tready       ), //o
    .s7_axis_tdata   (s7_axis_tdata[167:0]               ), //i
    .s8_axis_tvalid  (s8_axis_tvalid                     ), //i
    .s8_axis_tready  (axisCdcsync_1_s8_axis_tready       ), //o
    .s8_axis_tdata   (s8_axis_tdata[167:0]               ), //i
    .s9_axis_tvalid  (s9_axis_tvalid                     ), //i
    .s9_axis_tready  (axisCdcsync_1_s9_axis_tready       ), //o
    .s9_axis_tdata   (s9_axis_tdata[167:0]               ), //i
    .s10_axis_tvalid (s10_axis_tvalid                    ), //i
    .s10_axis_tready (axisCdcsync_1_s10_axis_tready      ), //o
    .s10_axis_tdata  (s10_axis_tdata[167:0]              ), //i
    .s11_axis_tvalid (s11_axis_tvalid                    ), //i
    .s11_axis_tready (axisCdcsync_1_s11_axis_tready      ), //o
    .s11_axis_tdata  (s11_axis_tdata[167:0]              ), //i
    .s12_axis_tvalid (s12_axis_tvalid                    ), //i
    .s12_axis_tready (axisCdcsync_1_s12_axis_tready      ), //o
    .s12_axis_tdata  (s12_axis_tdata[167:0]              ), //i
    .s13_axis_tvalid (s13_axis_tvalid                    ), //i
    .s13_axis_tready (axisCdcsync_1_s13_axis_tready      ), //o
    .s13_axis_tdata  (s13_axis_tdata[167:0]              ), //i
    .s14_axis_tvalid (s14_axis_tvalid                    ), //i
    .s14_axis_tready (axisCdcsync_1_s14_axis_tready      ), //o
    .s14_axis_tdata  (s14_axis_tdata[167:0]              ), //i
    .s15_axis_tvalid (s15_axis_tvalid                    ), //i
    .s15_axis_tready (axisCdcsync_1_s15_axis_tready      ), //o
    .s15_axis_tdata  (s15_axis_tdata[167:0]              ), //i
    .m_axis_aresetn  (m_axis_aresetn                     ), //i
    .m_axis_aclk     (m_axis_aclk                        ), //i
    .m0_axis_tvalid  (axisCdcsync_1_m0_axis_tvalid       ), //o
    .m0_axis_tready  (m0_axis_tready                     ), //i
    .m0_axis_tdata   (axisCdcsync_1_m0_axis_tdata[167:0] ), //o
    .m1_axis_tvalid  (axisCdcsync_1_m1_axis_tvalid       ), //o
    .m1_axis_tready  (m1_axis_tready                     ), //i
    .m1_axis_tdata   (axisCdcsync_1_m1_axis_tdata[167:0] ), //o
    .m2_axis_tvalid  (axisCdcsync_1_m2_axis_tvalid       ), //o
    .m2_axis_tready  (m2_axis_tready                     ), //i
    .m2_axis_tdata   (axisCdcsync_1_m2_axis_tdata[167:0] ), //o
    .m3_axis_tvalid  (axisCdcsync_1_m3_axis_tvalid       ), //o
    .m3_axis_tready  (m3_axis_tready                     ), //i
    .m3_axis_tdata   (axisCdcsync_1_m3_axis_tdata[167:0] ), //o
    .m4_axis_tvalid  (axisCdcsync_1_m4_axis_tvalid       ), //o
    .m4_axis_tready  (m4_axis_tready                     ), //i
    .m4_axis_tdata   (axisCdcsync_1_m4_axis_tdata[167:0] ), //o
    .m5_axis_tvalid  (axisCdcsync_1_m5_axis_tvalid       ), //o
    .m5_axis_tready  (m5_axis_tready                     ), //i
    .m5_axis_tdata   (axisCdcsync_1_m5_axis_tdata[167:0] ), //o
    .m6_axis_tvalid  (axisCdcsync_1_m6_axis_tvalid       ), //o
    .m6_axis_tready  (m6_axis_tready                     ), //i
    .m6_axis_tdata   (axisCdcsync_1_m6_axis_tdata[167:0] ), //o
    .m7_axis_tvalid  (axisCdcsync_1_m7_axis_tvalid       ), //o
    .m7_axis_tready  (m7_axis_tready                     ), //i
    .m7_axis_tdata   (axisCdcsync_1_m7_axis_tdata[167:0] ), //o
    .m8_axis_tvalid  (axisCdcsync_1_m8_axis_tvalid       ), //o
    .m8_axis_tready  (m8_axis_tready                     ), //i
    .m8_axis_tdata   (axisCdcsync_1_m8_axis_tdata[167:0] ), //o
    .m9_axis_tvalid  (axisCdcsync_1_m9_axis_tvalid       ), //o
    .m9_axis_tready  (m9_axis_tready                     ), //i
    .m9_axis_tdata   (axisCdcsync_1_m9_axis_tdata[167:0] ), //o
    .m10_axis_tvalid (axisCdcsync_1_m10_axis_tvalid      ), //o
    .m10_axis_tready (m10_axis_tready                    ), //i
    .m10_axis_tdata  (axisCdcsync_1_m10_axis_tdata[167:0]), //o
    .m11_axis_tvalid (axisCdcsync_1_m11_axis_tvalid      ), //o
    .m11_axis_tready (m11_axis_tready                    ), //i
    .m11_axis_tdata  (axisCdcsync_1_m11_axis_tdata[167:0]), //o
    .m12_axis_tvalid (axisCdcsync_1_m12_axis_tvalid      ), //o
    .m12_axis_tready (m12_axis_tready                    ), //i
    .m12_axis_tdata  (axisCdcsync_1_m12_axis_tdata[167:0]), //o
    .m13_axis_tvalid (axisCdcsync_1_m13_axis_tvalid      ), //o
    .m13_axis_tready (m13_axis_tready                    ), //i
    .m13_axis_tdata  (axisCdcsync_1_m13_axis_tdata[167:0]), //o
    .m14_axis_tvalid (axisCdcsync_1_m14_axis_tvalid      ), //o
    .m14_axis_tready (m14_axis_tready                    ), //i
    .m14_axis_tdata  (axisCdcsync_1_m14_axis_tdata[167:0]), //o
    .m15_axis_tvalid (axisCdcsync_1_m15_axis_tvalid      ), //o
    .m15_axis_tready (m15_axis_tready                    ), //i
    .m15_axis_tdata  (axisCdcsync_1_m15_axis_tdata[167:0])  //o
  );
  assign s0_axis_tready = axisCdcsync_1_s0_axis_tready;
  assign s1_axis_tready = axisCdcsync_1_s1_axis_tready;
  assign s2_axis_tready = axisCdcsync_1_s2_axis_tready;
  assign s3_axis_tready = axisCdcsync_1_s3_axis_tready;
  assign s4_axis_tready = axisCdcsync_1_s4_axis_tready;
  assign s5_axis_tready = axisCdcsync_1_s5_axis_tready;
  assign s6_axis_tready = axisCdcsync_1_s6_axis_tready;
  assign s7_axis_tready = axisCdcsync_1_s7_axis_tready;
  assign s8_axis_tready = axisCdcsync_1_s8_axis_tready;
  assign s9_axis_tready = axisCdcsync_1_s9_axis_tready;
  assign s10_axis_tready = axisCdcsync_1_s10_axis_tready;
  assign s11_axis_tready = axisCdcsync_1_s11_axis_tready;
  assign s12_axis_tready = axisCdcsync_1_s12_axis_tready;
  assign s13_axis_tready = axisCdcsync_1_s13_axis_tready;
  assign s14_axis_tready = axisCdcsync_1_s14_axis_tready;
  assign s15_axis_tready = axisCdcsync_1_s15_axis_tready;
  assign m0_axis_tvalid = axisCdcsync_1_m0_axis_tvalid;
  assign m0_axis_tdata = axisCdcsync_1_m0_axis_tdata;
  assign m1_axis_tvalid = axisCdcsync_1_m1_axis_tvalid;
  assign m1_axis_tdata = axisCdcsync_1_m1_axis_tdata;
  assign m2_axis_tvalid = axisCdcsync_1_m2_axis_tvalid;
  assign m2_axis_tdata = axisCdcsync_1_m2_axis_tdata;
  assign m3_axis_tvalid = axisCdcsync_1_m3_axis_tvalid;
  assign m3_axis_tdata = axisCdcsync_1_m3_axis_tdata;
  assign m4_axis_tvalid = axisCdcsync_1_m4_axis_tvalid;
  assign m4_axis_tdata = axisCdcsync_1_m4_axis_tdata;
  assign m5_axis_tvalid = axisCdcsync_1_m5_axis_tvalid;
  assign m5_axis_tdata = axisCdcsync_1_m5_axis_tdata;
  assign m6_axis_tvalid = axisCdcsync_1_m6_axis_tvalid;
  assign m6_axis_tdata = axisCdcsync_1_m6_axis_tdata;
  assign m7_axis_tvalid = axisCdcsync_1_m7_axis_tvalid;
  assign m7_axis_tdata = axisCdcsync_1_m7_axis_tdata;
  assign m8_axis_tvalid = axisCdcsync_1_m8_axis_tvalid;
  assign m8_axis_tdata = axisCdcsync_1_m8_axis_tdata;
  assign m9_axis_tvalid = axisCdcsync_1_m9_axis_tvalid;
  assign m9_axis_tdata = axisCdcsync_1_m9_axis_tdata;
  assign m10_axis_tvalid = axisCdcsync_1_m10_axis_tvalid;
  assign m10_axis_tdata = axisCdcsync_1_m10_axis_tdata;
  assign m11_axis_tvalid = axisCdcsync_1_m11_axis_tvalid;
  assign m11_axis_tdata = axisCdcsync_1_m11_axis_tdata;
  assign m12_axis_tvalid = axisCdcsync_1_m12_axis_tvalid;
  assign m12_axis_tdata = axisCdcsync_1_m12_axis_tdata;
  assign m13_axis_tvalid = axisCdcsync_1_m13_axis_tvalid;
  assign m13_axis_tdata = axisCdcsync_1_m13_axis_tdata;
  assign m14_axis_tvalid = axisCdcsync_1_m14_axis_tvalid;
  assign m14_axis_tdata = axisCdcsync_1_m14_axis_tdata;
  assign m15_axis_tvalid = axisCdcsync_1_m15_axis_tvalid;
  assign m15_axis_tdata = axisCdcsync_1_m15_axis_tdata;

endmodule

module AxisTMuxV1 (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  s_axis_tdata,
  output wire          m0_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m1_axis_tdata,
  output wire          m2_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m2_axis_tdata,
  output wire          m3_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m3_axis_tdata,
  output wire          m4_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m4_axis_tdata,
  output wire          m5_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m5_axis_tdata,
  output wire          m6_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m6_axis_tdata,
  output wire          m7_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m7_axis_tdata
);

  wire                axisTmuxV1_1_s_axis_tready;
  wire                axisTmuxV1_1_m0_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m0_axis_tdata;
  wire                axisTmuxV1_1_m1_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m1_axis_tdata;
  wire                axisTmuxV1_1_m2_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m2_axis_tdata;
  wire                axisTmuxV1_1_m3_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m3_axis_tdata;
  wire                axisTmuxV1_1_m4_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m4_axis_tdata;
  wire                axisTmuxV1_1_m5_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m5_axis_tdata;
  wire                axisTmuxV1_1_m6_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m6_axis_tdata;
  wire                axisTmuxV1_1_m7_axis_tvalid;
  wire       [167:0]  axisTmuxV1_1_m7_axis_tdata;

  axis_tmux_v1 #(
    .N (4  ),
    .B (168)
  ) axisTmuxV1_1 (
    .aresetn        (aresetn                          ), //i
    .aclk           (aclk                             ), //i
    .s_axis_tvalid  (s_axis_tvalid                    ), //i
    .s_axis_tready  (axisTmuxV1_1_s_axis_tready       ), //o
    .s_axis_tdata   (s_axis_tdata[167:0]              ), //i
    .m0_axis_tvalid (axisTmuxV1_1_m0_axis_tvalid      ), //o
    .m0_axis_tdata  (axisTmuxV1_1_m0_axis_tdata[167:0]), //o
    .m1_axis_tvalid (axisTmuxV1_1_m1_axis_tvalid      ), //o
    .m1_axis_tdata  (axisTmuxV1_1_m1_axis_tdata[167:0]), //o
    .m2_axis_tvalid (axisTmuxV1_1_m2_axis_tvalid      ), //o
    .m2_axis_tdata  (axisTmuxV1_1_m2_axis_tdata[167:0]), //o
    .m3_axis_tvalid (axisTmuxV1_1_m3_axis_tvalid      ), //o
    .m3_axis_tdata  (axisTmuxV1_1_m3_axis_tdata[167:0]), //o
    .m4_axis_tvalid (axisTmuxV1_1_m4_axis_tvalid      ), //o
    .m4_axis_tdata  (axisTmuxV1_1_m4_axis_tdata[167:0]), //o
    .m5_axis_tvalid (axisTmuxV1_1_m5_axis_tvalid      ), //o
    .m5_axis_tdata  (axisTmuxV1_1_m5_axis_tdata[167:0]), //o
    .m6_axis_tvalid (axisTmuxV1_1_m6_axis_tvalid      ), //o
    .m6_axis_tdata  (axisTmuxV1_1_m6_axis_tdata[167:0]), //o
    .m7_axis_tvalid (axisTmuxV1_1_m7_axis_tvalid      ), //o
    .m7_axis_tdata  (axisTmuxV1_1_m7_axis_tdata[167:0])  //o
  );
  assign s_axis_tready = axisTmuxV1_1_s_axis_tready;
  assign m0_axis_tvalid = axisTmuxV1_1_m0_axis_tvalid;
  assign m0_axis_tdata = axisTmuxV1_1_m0_axis_tdata;
  assign m1_axis_tvalid = axisTmuxV1_1_m1_axis_tvalid;
  assign m1_axis_tdata = axisTmuxV1_1_m1_axis_tdata;
  assign m2_axis_tvalid = axisTmuxV1_1_m2_axis_tvalid;
  assign m2_axis_tdata = axisTmuxV1_1_m2_axis_tdata;
  assign m3_axis_tvalid = axisTmuxV1_1_m3_axis_tvalid;
  assign m3_axis_tdata = axisTmuxV1_1_m3_axis_tdata;
  assign m4_axis_tvalid = axisTmuxV1_1_m4_axis_tvalid;
  assign m4_axis_tdata = axisTmuxV1_1_m4_axis_tdata;
  assign m5_axis_tvalid = axisTmuxV1_1_m5_axis_tvalid;
  assign m5_axis_tdata = axisTmuxV1_1_m5_axis_tdata;
  assign m6_axis_tvalid = axisTmuxV1_1_m6_axis_tvalid;
  assign m6_axis_tdata = axisTmuxV1_1_m6_axis_tdata;
  assign m7_axis_tvalid = axisTmuxV1_1_m7_axis_tvalid;
  assign m7_axis_tdata = axisTmuxV1_1_m7_axis_tdata;

endmodule

module AxisSignalGenV6_1 (
  input  wire          s_axi_aclk_i,
  input  wire          s_axi_aresetn,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  input  wire [5:0]    s_axi_awaddr,
  input  wire [2:0]    s_axi_awprot,
  input  wire          s_axi_wvalid,
  output wire          s_axi_wready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   s_axi_wdata,
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
  input  wire          s0_axis_aclk_i,
  input  wire          s0_axis_aresetn,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   s0_axis_tdata,
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [159:0]  s1_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  m_axis_tdata
);

  wire                axisSignalGenV6_2_s_axi_awready;
  wire                axisSignalGenV6_2_s_axi_wready;
  wire                axisSignalGenV6_2_s_axi_bvalid;
  wire       [1:0]    axisSignalGenV6_2_s_axi_bresp;
  wire                axisSignalGenV6_2_s_axi_arready;
  wire                axisSignalGenV6_2_s_axi_rvalid;
  wire       [31:0]   axisSignalGenV6_2_s_axi_rdata;
  wire       [1:0]    axisSignalGenV6_2_s_axi_rresp;
  wire                axisSignalGenV6_2_s0_axis_tready;
  wire                axisSignalGenV6_2_s1_axis_tready;
  wire                axisSignalGenV6_2_m_axis_tvalid;
  wire       [255:0]  axisSignalGenV6_2_m_axis_tdata;

  axis_signal_gen_v6 #(
    .N (9)
  ) axisSignalGenV6_2 (
    .s_axi_aclk      (s_axi_aclk_i                         ), //i
    .s_axi_aresetn   (s_axi_aresetn                        ), //i
    .s_axi_awvalid   (s_axi_awvalid                        ), //i
    .s_axi_awready   (axisSignalGenV6_2_s_axi_awready      ), //o
    .s_axi_awaddr    (s_axi_awaddr[5:0]                    ), //i
    .s_axi_awprot    (s_axi_awprot[2:0]                    ), //i
    .s_axi_wvalid    (s_axi_wvalid                         ), //i
    .s_axi_wready    (axisSignalGenV6_2_s_axi_wready       ), //o
    .s_axi_wdata     (s_axi_wdata[31:0]                    ), //i
    .s_axi_wstrb     (s_axi_wstrb[3:0]                     ), //i
    .s_axi_bvalid    (axisSignalGenV6_2_s_axi_bvalid       ), //o
    .s_axi_bready    (s_axi_bready                         ), //i
    .s_axi_bresp     (axisSignalGenV6_2_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid   (s_axi_arvalid                        ), //i
    .s_axi_arready   (axisSignalGenV6_2_s_axi_arready      ), //o
    .s_axi_araddr    (s_axi_araddr[5:0]                    ), //i
    .s_axi_arprot    (s_axi_arprot[2:0]                    ), //i
    .s_axi_rvalid    (axisSignalGenV6_2_s_axi_rvalid       ), //o
    .s_axi_rready    (s_axi_rready                         ), //i
    .s_axi_rdata     (axisSignalGenV6_2_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp     (axisSignalGenV6_2_s_axi_rresp[1:0]   ), //o
    .s0_axis_aclk    (s0_axis_aclk_i                       ), //i
    .s0_axis_aresetn (s0_axis_aresetn                      ), //i
    .s0_axis_tvalid  (s0_axis_tvalid                       ), //i
    .s0_axis_tready  (axisSignalGenV6_2_s0_axis_tready     ), //o
    .s0_axis_tdata   (s0_axis_tdata[31:0]                  ), //i
    .aresetn         (aresetn                              ), //i
    .aclk            (aclk_i                               ), //i
    .s1_axis_tvalid  (s1_axis_tvalid                       ), //i
    .s1_axis_tready  (axisSignalGenV6_2_s1_axis_tready     ), //o
    .s1_axis_tdata   (s1_axis_tdata[159:0]                 ), //i
    .m_axis_tvalid   (axisSignalGenV6_2_m_axis_tvalid      ), //o
    .m_axis_tready   (m_axis_tready                        ), //i
    .m_axis_tdata    (axisSignalGenV6_2_m_axis_tdata[255:0])  //o
  );
  assign s_axi_awready = axisSignalGenV6_2_s_axi_awready;
  assign s_axi_wready = axisSignalGenV6_2_s_axi_wready;
  assign s_axi_bvalid = axisSignalGenV6_2_s_axi_bvalid;
  assign s_axi_bresp = axisSignalGenV6_2_s_axi_bresp;
  assign s_axi_arready = axisSignalGenV6_2_s_axi_arready;
  assign s_axi_rvalid = axisSignalGenV6_2_s_axi_rvalid;
  assign s_axi_rdata = axisSignalGenV6_2_s_axi_rdata;
  assign s_axi_rresp = axisSignalGenV6_2_s_axi_rresp;
  assign s0_axis_tready = axisSignalGenV6_2_s0_axis_tready;
  assign s1_axis_tready = axisSignalGenV6_2_s1_axis_tready;
  assign m_axis_tvalid = axisSignalGenV6_2_m_axis_tvalid;
  assign m_axis_tdata = axisSignalGenV6_2_m_axis_tdata;

endmodule

module AxisSignalGenV6 (
  input  wire          s_axi_aclk_i,
  input  wire          s_axi_aresetn,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  input  wire [5:0]    s_axi_awaddr,
  input  wire [2:0]    s_axi_awprot,
  input  wire          s_axi_wvalid,
  output wire          s_axi_wready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   s_axi_wdata,
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
  input  wire          s0_axis_aclk_i,
  input  wire          s0_axis_aresetn,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [31:0]   s0_axis_tdata,
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [159:0]  s1_axis_tdata,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [255:0]  m_axis_tdata
);

  wire                axisSignalGenV6_2_s_axi_awready;
  wire                axisSignalGenV6_2_s_axi_wready;
  wire                axisSignalGenV6_2_s_axi_bvalid;
  wire       [1:0]    axisSignalGenV6_2_s_axi_bresp;
  wire                axisSignalGenV6_2_s_axi_arready;
  wire                axisSignalGenV6_2_s_axi_rvalid;
  wire       [31:0]   axisSignalGenV6_2_s_axi_rdata;
  wire       [1:0]    axisSignalGenV6_2_s_axi_rresp;
  wire                axisSignalGenV6_2_s0_axis_tready;
  wire                axisSignalGenV6_2_s1_axis_tready;
  wire                axisSignalGenV6_2_m_axis_tvalid;
  wire       [255:0]  axisSignalGenV6_2_m_axis_tdata;

  axis_signal_gen_v6 #(
    .N (10)
  ) axisSignalGenV6_2 (
    .s_axi_aclk      (s_axi_aclk_i                         ), //i
    .s_axi_aresetn   (s_axi_aresetn                        ), //i
    .s_axi_awvalid   (s_axi_awvalid                        ), //i
    .s_axi_awready   (axisSignalGenV6_2_s_axi_awready      ), //o
    .s_axi_awaddr    (s_axi_awaddr[5:0]                    ), //i
    .s_axi_awprot    (s_axi_awprot[2:0]                    ), //i
    .s_axi_wvalid    (s_axi_wvalid                         ), //i
    .s_axi_wready    (axisSignalGenV6_2_s_axi_wready       ), //o
    .s_axi_wdata     (s_axi_wdata[31:0]                    ), //i
    .s_axi_wstrb     (s_axi_wstrb[3:0]                     ), //i
    .s_axi_bvalid    (axisSignalGenV6_2_s_axi_bvalid       ), //o
    .s_axi_bready    (s_axi_bready                         ), //i
    .s_axi_bresp     (axisSignalGenV6_2_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid   (s_axi_arvalid                        ), //i
    .s_axi_arready   (axisSignalGenV6_2_s_axi_arready      ), //o
    .s_axi_araddr    (s_axi_araddr[5:0]                    ), //i
    .s_axi_arprot    (s_axi_arprot[2:0]                    ), //i
    .s_axi_rvalid    (axisSignalGenV6_2_s_axi_rvalid       ), //o
    .s_axi_rready    (s_axi_rready                         ), //i
    .s_axi_rdata     (axisSignalGenV6_2_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp     (axisSignalGenV6_2_s_axi_rresp[1:0]   ), //o
    .s0_axis_aclk    (s0_axis_aclk_i                       ), //i
    .s0_axis_aresetn (s0_axis_aresetn                      ), //i
    .s0_axis_tvalid  (s0_axis_tvalid                       ), //i
    .s0_axis_tready  (axisSignalGenV6_2_s0_axis_tready     ), //o
    .s0_axis_tdata   (s0_axis_tdata[31:0]                  ), //i
    .aresetn         (aresetn                              ), //i
    .aclk            (aclk_i                               ), //i
    .s1_axis_tvalid  (s1_axis_tvalid                       ), //i
    .s1_axis_tready  (axisSignalGenV6_2_s1_axis_tready     ), //o
    .s1_axis_tdata   (s1_axis_tdata[159:0]                 ), //i
    .m_axis_tvalid   (axisSignalGenV6_2_m_axis_tvalid      ), //o
    .m_axis_tready   (m_axis_tready                        ), //i
    .m_axis_tdata    (axisSignalGenV6_2_m_axis_tdata[255:0])  //o
  );
  assign s_axi_awready = axisSignalGenV6_2_s_axi_awready;
  assign s_axi_wready = axisSignalGenV6_2_s_axi_wready;
  assign s_axi_bvalid = axisSignalGenV6_2_s_axi_bvalid;
  assign s_axi_bresp = axisSignalGenV6_2_s_axi_bresp;
  assign s_axi_arready = axisSignalGenV6_2_s_axi_arready;
  assign s_axi_rvalid = axisSignalGenV6_2_s_axi_rvalid;
  assign s_axi_rdata = axisSignalGenV6_2_s_axi_rdata;
  assign s_axi_rresp = axisSignalGenV6_2_s_axi_rresp;
  assign s0_axis_tready = axisSignalGenV6_2_s0_axis_tready;
  assign s1_axis_tready = axisSignalGenV6_2_s1_axis_tready;
  assign m_axis_tvalid = axisSignalGenV6_2_m_axis_tvalid;
  assign m_axis_tdata = axisSignalGenV6_2_m_axis_tdata;

endmodule

module AxisDynReadout (
  input  wire          aresetn,
  input  wire          aclk,
  input  wire          s0_axis_tvalid,
  output wire          s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [87:0]   s0_axis_tdata,
  input  wire          s1_axis_tvalid,
  output wire          s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [127:0]  s1_axis_tdata,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [255:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m1_axis_tdata
);

  wire                axisDynReadout_1_s0_axis_tready;
  wire                axisDynReadout_1_s1_axis_tready;
  wire                axisDynReadout_1_m0_axis_tvalid;
  wire       [255:0]  axisDynReadout_1_m0_axis_tdata;
  wire                axisDynReadout_1_m1_axis_tvalid;
  wire       [31:0]   axisDynReadout_1_m1_axis_tdata;

  axis_dyn_readout_v1 axisDynReadout_1 (
    .aresetn        (aresetn                              ), //i
    .aclk           (aclk                                 ), //i
    .s0_axis_tvalid (s0_axis_tvalid                       ), //i
    .s0_axis_tready (axisDynReadout_1_s0_axis_tready      ), //o
    .s0_axis_tdata  (s0_axis_tdata[87:0]                  ), //i
    .s1_axis_tvalid (s1_axis_tvalid                       ), //i
    .s1_axis_tready (axisDynReadout_1_s1_axis_tready      ), //o
    .s1_axis_tdata  (s1_axis_tdata[127:0]                 ), //i
    .m0_axis_tvalid (axisDynReadout_1_m0_axis_tvalid      ), //o
    .m0_axis_tready (m0_axis_tready                       ), //i
    .m0_axis_tdata  (axisDynReadout_1_m0_axis_tdata[255:0]), //o
    .m1_axis_tvalid (axisDynReadout_1_m1_axis_tvalid      ), //o
    .m1_axis_tready (m1_axis_tready                       ), //i
    .m1_axis_tdata  (axisDynReadout_1_m1_axis_tdata[31:0] )  //o
  );
  assign s0_axis_tready = axisDynReadout_1_s0_axis_tready;
  assign s1_axis_tready = axisDynReadout_1_s1_axis_tready;
  assign m0_axis_tvalid = axisDynReadout_1_m0_axis_tvalid;
  assign m0_axis_tdata = axisDynReadout_1_m0_axis_tdata;
  assign m1_axis_tvalid = axisDynReadout_1_m1_axis_tvalid;
  assign m1_axis_tdata = axisDynReadout_1_m1_axis_tdata;

endmodule

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

module AxisReadoutV2 (
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
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [127:0]  s_axis_tdata,
  output wire          m0_axis_tvalid,
  input  wire          m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [255:0]  m0_axis_tdata,
  output wire          m1_axis_tvalid,
  input  wire          m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m1_axis_tdata
);

  wire                axisReadout_s_axi_awready;
  wire                axisReadout_s_axi_wready;
  wire                axisReadout_s_axi_bvalid;
  wire       [1:0]    axisReadout_s_axi_bresp;
  wire                axisReadout_s_axi_arready;
  wire                axisReadout_s_axi_rvalid;
  wire       [31:0]   axisReadout_s_axi_rdata;
  wire       [1:0]    axisReadout_s_axi_rresp;
  wire                axisReadout_s_axis_tready;
  wire                axisReadout_m0_axis_tvalid;
  wire       [255:0]  axisReadout_m0_axis_tdata;
  wire                axisReadout_m1_axis_tvalid;
  wire       [31:0]   axisReadout_m1_axis_tdata;

  axis_readout_v2 axisReadout (
    .s_axi_awvalid  (s_axi_awvalid                   ), //i
    .s_axi_awready  (axisReadout_s_axi_awready       ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]               ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]               ), //i
    .s_axi_wvalid   (s_axi_wvalid                    ), //i
    .s_axi_wready   (axisReadout_s_axi_wready        ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]               ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                ), //i
    .s_axi_bvalid   (axisReadout_s_axi_bvalid        ), //o
    .s_axi_bready   (s_axi_bready                    ), //i
    .s_axi_bresp    (axisReadout_s_axi_bresp[1:0]    ), //o
    .s_axi_arvalid  (s_axi_arvalid                   ), //i
    .s_axi_arready  (axisReadout_s_axi_arready       ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]               ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]               ), //i
    .s_axi_rvalid   (axisReadout_s_axi_rvalid        ), //o
    .s_axi_rready   (s_axi_rready                    ), //i
    .s_axi_rdata    (axisReadout_s_axi_rdata[31:0]   ), //o
    .s_axi_rresp    (axisReadout_s_axi_rresp[1:0]    ), //o
    .s_axi_aclk     (s_axi_aclk_i                    ), //i
    .s_axi_aresetn  (s_axi_aresetn                   ), //i
    .aresetn        (aresetn                         ), //i
    .aclk           (aclk_i                          ), //i
    .s_axis_tvalid  (s_axis_tvalid                   ), //i
    .s_axis_tready  (axisReadout_s_axis_tready       ), //o
    .s_axis_tdata   (s_axis_tdata[127:0]             ), //i
    .m0_axis_tvalid (axisReadout_m0_axis_tvalid      ), //o
    .m0_axis_tready (m0_axis_tready                  ), //i
    .m0_axis_tdata  (axisReadout_m0_axis_tdata[255:0]), //o
    .m1_axis_tvalid (axisReadout_m1_axis_tvalid      ), //o
    .m1_axis_tready (m1_axis_tready                  ), //i
    .m1_axis_tdata  (axisReadout_m1_axis_tdata[31:0] )  //o
  );
  assign s_axi_awready = axisReadout_s_axi_awready;
  assign s_axi_wready = axisReadout_s_axi_wready;
  assign s_axi_bvalid = axisReadout_s_axi_bvalid;
  assign s_axi_bresp = axisReadout_s_axi_bresp;
  assign s_axi_arready = axisReadout_s_axi_arready;
  assign s_axi_rvalid = axisReadout_s_axi_rvalid;
  assign s_axi_rdata = axisReadout_s_axi_rdata;
  assign s_axi_rresp = axisReadout_s_axi_rresp;
  assign s_axis_tready = axisReadout_s_axis_tready;
  assign m0_axis_tvalid = axisReadout_m0_axis_tvalid;
  assign m0_axis_tdata = axisReadout_m0_axis_tdata;
  assign m1_axis_tvalid = axisReadout_m1_axis_tvalid;
  assign m1_axis_tdata = axisReadout_m1_axis_tdata;

endmodule

module AxisPfbReadout (
  input  wire          s_axi_aresetn,
  input  wire          s_axi_aclk_i,
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
  input  wire          aresetn,
  input  wire          aclk_i,
  input  wire          s_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [127:0]  s_axis_tdata,
  output wire          m0_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m0_axis_tdata,
  output wire          m1_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m1_axis_tdata,
  output wire          m2_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m2_axis_tdata,
  output wire          m3_axis_tvalid,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) output wire [31:0]   m3_axis_tdata
);

  wire                axisPfbReadout_1_s_axi_awready;
  wire                axisPfbReadout_1_s_axi_wready;
  wire                axisPfbReadout_1_s_axi_bvalid;
  wire       [1:0]    axisPfbReadout_1_s_axi_bresp;
  wire                axisPfbReadout_1_s_axi_arready;
  wire                axisPfbReadout_1_s_axi_rvalid;
  wire       [31:0]   axisPfbReadout_1_s_axi_rdata;
  wire       [1:0]    axisPfbReadout_1_s_axi_rresp;
  wire                axisPfbReadout_1_m0_axis_tvalid;
  wire       [31:0]   axisPfbReadout_1_m0_axis_tdata;
  wire                axisPfbReadout_1_m1_axis_tvalid;
  wire       [31:0]   axisPfbReadout_1_m1_axis_tdata;
  wire                axisPfbReadout_1_m2_axis_tvalid;
  wire       [31:0]   axisPfbReadout_1_m2_axis_tdata;
  wire                axisPfbReadout_1_m3_axis_tvalid;
  wire       [31:0]   axisPfbReadout_1_m3_axis_tdata;

  axis_pfb_readout_v3 #(
    .N (64)
  ) axisPfbReadout_1 (
    .s_axi_aresetn  (s_axi_aresetn                       ), //i
    .s_axi_aclk     (s_axi_aclk_i                        ), //i
    .s_axi_awvalid  (s_axi_awvalid                       ), //i
    .s_axi_awready  (axisPfbReadout_1_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                   ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                   ), //i
    .s_axi_wvalid   (s_axi_wvalid                        ), //i
    .s_axi_wready   (axisPfbReadout_1_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                   ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                    ), //i
    .s_axi_bvalid   (axisPfbReadout_1_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                        ), //i
    .s_axi_bresp    (axisPfbReadout_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                       ), //i
    .s_axi_arready  (axisPfbReadout_1_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                   ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                   ), //i
    .s_axi_rvalid   (axisPfbReadout_1_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                        ), //i
    .s_axi_rdata    (axisPfbReadout_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisPfbReadout_1_s_axi_rresp[1:0]   ), //o
    .aresetn        (aresetn                             ), //i
    .aclk           (aclk_i                              ), //i
    .s_axis_tvalid  (s_axis_tvalid                       ), //i
    .s_axis_tdata   (s_axis_tdata[127:0]                 ), //i
    .m0_axis_tvalid (axisPfbReadout_1_m0_axis_tvalid     ), //o
    .m0_axis_tdata  (axisPfbReadout_1_m0_axis_tdata[31:0]), //o
    .m1_axis_tvalid (axisPfbReadout_1_m1_axis_tvalid     ), //o
    .m1_axis_tdata  (axisPfbReadout_1_m1_axis_tdata[31:0]), //o
    .m2_axis_tvalid (axisPfbReadout_1_m2_axis_tvalid     ), //o
    .m2_axis_tdata  (axisPfbReadout_1_m2_axis_tdata[31:0]), //o
    .m3_axis_tvalid (axisPfbReadout_1_m3_axis_tvalid     ), //o
    .m3_axis_tdata  (axisPfbReadout_1_m3_axis_tdata[31:0])  //o
  );
  assign s_axi_awready = axisPfbReadout_1_s_axi_awready;
  assign s_axi_wready = axisPfbReadout_1_s_axi_wready;
  assign s_axi_bvalid = axisPfbReadout_1_s_axi_bvalid;
  assign s_axi_bresp = axisPfbReadout_1_s_axi_bresp;
  assign s_axi_arready = axisPfbReadout_1_s_axi_arready;
  assign s_axi_rvalid = axisPfbReadout_1_s_axi_rvalid;
  assign s_axi_rdata = axisPfbReadout_1_s_axi_rdata;
  assign s_axi_rresp = axisPfbReadout_1_s_axi_rresp;
  assign m0_axis_tvalid = axisPfbReadout_1_m0_axis_tvalid;
  assign m0_axis_tdata = axisPfbReadout_1_m0_axis_tdata;
  assign m1_axis_tvalid = axisPfbReadout_1_m1_axis_tvalid;
  assign m1_axis_tdata = axisPfbReadout_1_m1_axis_tdata;
  assign m2_axis_tvalid = axisPfbReadout_1_m2_axis_tvalid;
  assign m2_axis_tdata = axisPfbReadout_1_m2_axis_tdata;
  assign m3_axis_tvalid = axisPfbReadout_1_m3_axis_tvalid;
  assign m3_axis_tdata = axisPfbReadout_1_m3_axis_tdata;

endmodule

module MrBufferV1 (
  input  wire          trigger,
  input  wire          s00_axi_awvalid,
  output wire          s00_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    s00_axi_awaddr,
  input  wire [2:0]    s00_axi_awprot,
  input  wire          s00_axi_wvalid,
  output wire          s00_axi_wready,
  input  wire [31:0]   s00_axi_wdata,
  input  wire [3:0]    s00_axi_wstrb,
  output wire          s00_axi_bvalid,
  input  wire          s00_axi_bready,
  output wire [1:0]    s00_axi_bresp,
  input  wire          s00_axi_arvalid,
  output wire          s00_axi_arready,
  input  wire [5:0]    s00_axi_araddr,
  input  wire [2:0]    s00_axi_arprot,
  output wire          s00_axi_rvalid,
  input  wire          s00_axi_rready,
  output wire [31:0]   s00_axi_rdata,
  output wire [1:0]    s00_axi_rresp,
  input  wire          s00_axi_aclk,
  input  wire          s00_axi_aresetn,
  input  wire          s00_axis_tvalid,
  output wire          s00_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 307200000" *) input  wire [255:0]  s00_axis_tdata,
  input  wire [31:0]   s00_axis_tstrb,
  input  wire          s00_axis_tlast,
  input  wire          s00_axis_aclk,
  input  wire          s00_axis_aresetn,
  output wire          m00_axis_tvalid,
  input  wire          m00_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) output wire [31:0]   m00_axis_tdata,
  output wire [3:0]    m00_axis_tstrb,
  output wire          m00_axis_tlast,
  input  wire          m00_axis_aclk,
  input  wire          m00_axis_aresetn,
  output wire          s_dbg_probe,
  output wire          m_dbg_probe
);

  wire                mrbuffer_s00_axi_awready;
  wire                mrbuffer_s00_axi_wready;
  wire                mrbuffer_s00_axi_bvalid;
  wire       [1:0]    mrbuffer_s00_axi_bresp;
  wire                mrbuffer_s00_axi_arready;
  wire                mrbuffer_s00_axi_rvalid;
  wire       [31:0]   mrbuffer_s00_axi_rdata;
  wire       [1:0]    mrbuffer_s00_axi_rresp;
  wire                mrbuffer_s00_axis_tready;
  wire                mrbuffer_m00_axis_tvalid;
  wire       [31:0]   mrbuffer_m00_axis_tdata;
  wire       [3:0]    mrbuffer_m00_axis_tstrb;
  wire                mrbuffer_m00_axis_tlast;
  wire                mrbuffer_s_dbg_probe;
  wire                mrbuffer_m_dbg_probe;

  mr_buffer_v1_0 #(
    .NM                   (8 ),
    .N                    (10),
    .B                    (32),
    .C_S00_AXI_DATA_WIDTH (32),
    .C_S00_AXI_ADDR_WIDTH (6 ),
    .DEBUG                (0 )
  ) mrbuffer (
    .trigger          (trigger                      ), //i
    .s00_axi_awvalid  (s00_axi_awvalid              ), //i
    .s00_axi_awready  (mrbuffer_s00_axi_awready     ), //o
    .s00_axi_awaddr   (s00_axi_awaddr[5:0]          ), //i
    .s00_axi_awprot   (s00_axi_awprot[2:0]          ), //i
    .s00_axi_wvalid   (s00_axi_wvalid               ), //i
    .s00_axi_wready   (mrbuffer_s00_axi_wready      ), //o
    .s00_axi_wdata    (s00_axi_wdata[31:0]          ), //i
    .s00_axi_wstrb    (s00_axi_wstrb[3:0]           ), //i
    .s00_axi_bvalid   (mrbuffer_s00_axi_bvalid      ), //o
    .s00_axi_bready   (s00_axi_bready               ), //i
    .s00_axi_bresp    (mrbuffer_s00_axi_bresp[1:0]  ), //o
    .s00_axi_arvalid  (s00_axi_arvalid              ), //i
    .s00_axi_arready  (mrbuffer_s00_axi_arready     ), //o
    .s00_axi_araddr   (s00_axi_araddr[5:0]          ), //i
    .s00_axi_arprot   (s00_axi_arprot[2:0]          ), //i
    .s00_axi_rvalid   (mrbuffer_s00_axi_rvalid      ), //o
    .s00_axi_rready   (s00_axi_rready               ), //i
    .s00_axi_rdata    (mrbuffer_s00_axi_rdata[31:0] ), //o
    .s00_axi_rresp    (mrbuffer_s00_axi_rresp[1:0]  ), //o
    .s00_axi_aclk     (s00_axi_aclk                 ), //i
    .s00_axi_aresetn  (s00_axi_aresetn              ), //i
    .s00_axis_tvalid  (s00_axis_tvalid              ), //i
    .s00_axis_tready  (mrbuffer_s00_axis_tready     ), //o
    .s00_axis_tdata   (s00_axis_tdata[255:0]        ), //i
    .s00_axis_tstrb   (s00_axis_tstrb[31:0]         ), //i
    .s00_axis_tlast   (s00_axis_tlast               ), //i
    .s00_axis_aclk    (s00_axis_aclk                ), //i
    .s00_axis_aresetn (s00_axis_aresetn             ), //i
    .m00_axis_tvalid  (mrbuffer_m00_axis_tvalid     ), //o
    .m00_axis_tready  (m00_axis_tready              ), //i
    .m00_axis_tdata   (mrbuffer_m00_axis_tdata[31:0]), //o
    .m00_axis_tstrb   (mrbuffer_m00_axis_tstrb[3:0] ), //o
    .m00_axis_tlast   (mrbuffer_m00_axis_tlast      ), //o
    .m00_axis_aclk    (m00_axis_aclk                ), //i
    .m00_axis_aresetn (m00_axis_aresetn             ), //i
    .s_dbg_probe      (mrbuffer_s_dbg_probe         ), //o
    .m_dbg_probe      (mrbuffer_m_dbg_probe         )  //o
  );
  assign s00_axi_awready = mrbuffer_s00_axi_awready;
  assign s00_axi_wready = mrbuffer_s00_axi_wready;
  assign s00_axi_bvalid = mrbuffer_s00_axi_bvalid;
  assign s00_axi_bresp = mrbuffer_s00_axi_bresp;
  assign s00_axi_arready = mrbuffer_s00_axi_arready;
  assign s00_axi_rvalid = mrbuffer_s00_axi_rvalid;
  assign s00_axi_rdata = mrbuffer_s00_axi_rdata;
  assign s00_axi_rresp = mrbuffer_s00_axi_rresp;
  assign s00_axis_tready = mrbuffer_s00_axis_tready;
  assign m00_axis_tvalid = mrbuffer_m00_axis_tvalid;
  assign m00_axis_tdata = mrbuffer_m00_axis_tdata;
  assign m00_axis_tstrb = mrbuffer_m00_axis_tstrb;
  assign m00_axis_tlast = mrbuffer_m00_axis_tlast;
  assign s_dbg_probe = mrbuffer_s_dbg_probe;
  assign m_dbg_probe = mrbuffer_m_dbg_probe;

endmodule

//StreamFifoCC_6 replaced by StreamFifoCC_1

//AxisAvgBuffer_6 replaced by AxisAvgBuffer

//StreamFifoCC_5 replaced by StreamFifoCC_1

//AxisAvgBuffer_5 replaced by AxisAvgBuffer_2

//StreamFifoCC_4 replaced by StreamFifoCC_1

//AxisAvgBuffer_4 replaced by AxisAvgBuffer_2

//StreamFifoCC_3 replaced by StreamFifoCC_1

//AxisAvgBuffer_3 replaced by AxisAvgBuffer_2

//StreamFifoCC_2 replaced by StreamFifoCC_1

module AxisAvgBuffer_2 (
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

  wire                axisAvgBuffer_7_s_axi_awready;
  wire                axisAvgBuffer_7_s_axi_wready;
  wire                axisAvgBuffer_7_s_axi_bvalid;
  wire       [1:0]    axisAvgBuffer_7_s_axi_bresp;
  wire                axisAvgBuffer_7_s_axi_arready;
  wire                axisAvgBuffer_7_s_axi_rvalid;
  wire       [31:0]   axisAvgBuffer_7_s_axi_rdata;
  wire       [1:0]    axisAvgBuffer_7_s_axi_rresp;
  wire                axisAvgBuffer_7_s_axis_tready;
  wire                axisAvgBuffer_7_m0_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_7_m0_axis_tdata;
  wire                axisAvgBuffer_7_m0_axis_tlast;
  wire                axisAvgBuffer_7_m1_axis_tvalid;
  wire       [31:0]   axisAvgBuffer_7_m1_axis_tdata;
  wire                axisAvgBuffer_7_m1_axis_tlast;
  wire                axisAvgBuffer_7_m2_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_7_m2_axis_tdata;

  axis_avg_buffer #(
    .N_AVG (13),
    .N_BUF (10),
    .B     (16)
  ) axisAvgBuffer_7 (
    .s_axi_awvalid  (s_axi_awvalid                      ), //i
    .s_axi_awready  (axisAvgBuffer_7_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                  ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                  ), //i
    .s_axi_wvalid   (s_axi_wvalid                       ), //i
    .s_axi_wready   (axisAvgBuffer_7_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                  ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                   ), //i
    .s_axi_bvalid   (axisAvgBuffer_7_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                       ), //i
    .s_axi_bresp    (axisAvgBuffer_7_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                      ), //i
    .s_axi_arready  (axisAvgBuffer_7_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                  ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                  ), //i
    .s_axi_rvalid   (axisAvgBuffer_7_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                       ), //i
    .s_axi_rdata    (axisAvgBuffer_7_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisAvgBuffer_7_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk     (s_axi_aclk_i                       ), //i
    .s_axi_aresetn  (s_axi_aresetn                      ), //i
    .trigger        (trigger                            ), //i
    .s_axis_tvalid  (s_axis_tvalid                      ), //i
    .s_axis_tready  (axisAvgBuffer_7_s_axis_tready      ), //o
    .s_axis_tdata   (s_axis_tdata[31:0]                 ), //i
    .s_axis_aclk    (s_axis_aclk_i                      ), //i
    .s_axis_aresetn (s_axis_aresetn                     ), //i
    .m_axis_aclk    (m_axis_aclk_i                      ), //i
    .m_axis_aresetn (m_axis_aresetn                     ), //i
    .m0_axis_tvalid (axisAvgBuffer_7_m0_axis_tvalid     ), //o
    .m0_axis_tready (m0_axis_tready                     ), //i
    .m0_axis_tdata  (axisAvgBuffer_7_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axisAvgBuffer_7_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axisAvgBuffer_7_m1_axis_tvalid     ), //o
    .m1_axis_tready (m1_axis_tready                     ), //i
    .m1_axis_tdata  (axisAvgBuffer_7_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axisAvgBuffer_7_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axisAvgBuffer_7_m2_axis_tvalid     ), //o
    .m2_axis_tready (m2_axis_tready                     ), //i
    .m2_axis_tdata  (axisAvgBuffer_7_m2_axis_tdata[63:0])  //o
  );
  assign s_axi_awready = axisAvgBuffer_7_s_axi_awready;
  assign s_axi_wready = axisAvgBuffer_7_s_axi_wready;
  assign s_axi_bvalid = axisAvgBuffer_7_s_axi_bvalid;
  assign s_axi_bresp = axisAvgBuffer_7_s_axi_bresp;
  assign s_axi_arready = axisAvgBuffer_7_s_axi_arready;
  assign s_axi_rvalid = axisAvgBuffer_7_s_axi_rvalid;
  assign s_axi_rdata = axisAvgBuffer_7_s_axi_rdata;
  assign s_axi_rresp = axisAvgBuffer_7_s_axi_rresp;
  assign s_axis_tready = axisAvgBuffer_7_s_axis_tready;
  assign m0_axis_tvalid = axisAvgBuffer_7_m0_axis_tvalid;
  assign m0_axis_tdata = axisAvgBuffer_7_m0_axis_tdata;
  assign m0_axis_tlast = axisAvgBuffer_7_m0_axis_tlast;
  assign m1_axis_tvalid = axisAvgBuffer_7_m1_axis_tvalid;
  assign m1_axis_tdata = axisAvgBuffer_7_m1_axis_tdata;
  assign m1_axis_tlast = axisAvgBuffer_7_m1_axis_tlast;
  assign m2_axis_tvalid = axisAvgBuffer_7_m2_axis_tvalid;
  assign m2_axis_tdata = axisAvgBuffer_7_m2_axis_tdata;

endmodule

module StreamFifoCC_1 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [63:0]   io_push_payload_data,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [63:0]   io_pop_payload_data,
  output wire [1:0]    io_pushOccupancy,
  output wire [1:0]    io_popOccupancy,
  input  wire          clk_pl,
  input  wire          rst_100,
  input  wire          qick_processor_0_c_clk_i,
  input  wire          toplevel_rst_100_synchronized_1
);

  reg        [63:0]   ram_spinal_port1;
  wire       [1:0]    popToPushGray_buffercc_io_dataOut;
  wire       [1:0]    pushToPopGray_buffercc_io_dataOut;
  wire       [1:0]    _zz_pushCC_pushPtrGray;
  wire       [0:0]    _zz_ram_port;
  wire       [1:0]    _zz_popCC_popPtrGray;
  reg                 _zz_1;
  wire       [1:0]    popToPushGray;
  wire       [1:0]    pushToPopGray;
  reg        [1:0]    pushCC_pushPtr;
  wire       [1:0]    pushCC_pushPtrPlus;
  wire                io_push_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    pushCC_pushPtrGray;
  wire       [1:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_io_pushOccupancy;
  reg        [1:0]    popCC_popPtr;
  (* keep , syn_keep *) wire       [1:0]    popCC_popPtrPlus /* synthesis syn_keep = 1 */ ;
  wire       [1:0]    popCC_popPtrGray;
  wire       [1:0]    popCC_pushPtrGray;
  wire                popCC_addressGen_valid;
  reg                 popCC_addressGen_ready;
  wire       [0:0]    popCC_addressGen_payload;
  wire                popCC_empty;
  wire                popCC_addressGen_fire;
  wire                popCC_readArbitation_valid;
  wire                popCC_readArbitation_ready;
  wire       [0:0]    popCC_readArbitation_payload;
  reg                 popCC_addressGen_rValid;
  reg        [0:0]    popCC_addressGen_rData;
  wire                when_Stream_l477;
  wire                popCC_readPort_cmd_valid;
  wire       [0:0]    popCC_readPort_cmd_payload;
  wire       [63:0]   popCC_readPort_rsp_data;
  wire                popCC_addressGen_toFlowFire_valid;
  wire       [0:0]    popCC_addressGen_toFlowFire_payload;
  wire                popCC_readArbitation_translated_valid;
  wire                popCC_readArbitation_translated_ready;
  wire       [63:0]   popCC_readArbitation_translated_payload_data;
  wire                popCC_readArbitation_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    popCC_ptrToPush;
  reg        [1:0]    popCC_ptrToOccupancy;
  wire                _zz_io_popOccupancy;
  reg [63:0] ram [0:1];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[0:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtr >>> 1'b1);
  always @(posedge clk_pl) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= io_push_payload_data;
    end
  end

  always @(posedge qick_processor_0_c_clk_i) begin
    if(popCC_readPort_cmd_valid) begin
      ram_spinal_port1 <= ram[popCC_readPort_cmd_payload];
    end
  end

  (* keep_hierarchy = "TRUE" *) BufferCC popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[1:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[1:0]), //o
    .clk_pl     (clk_pl                                ), //i
    .rst_100    (rst_100                               )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_4 pushToPopGray_buffercc (
    .io_dataIn                       (pushToPopGray[1:0]                    ), //i
    .io_dataOut                      (pushToPopGray_buffercc_io_dataOut[1:0]), //o
    .qick_processor_0_c_clk_i        (qick_processor_0_c_clk_i              ), //i
    .toplevel_rst_100_synchronized_1 (toplevel_rst_100_synchronized_1       )  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 2'b01);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[1 : 0] == (~ pushCC_popPtrGray[1 : 0])) && 1'b1);
  assign io_push_ready = (! pushCC_full);
  assign _zz_io_pushOccupancy = pushCC_popPtrGray[1];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy,(pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy)});
  assign popCC_popPtrPlus = (popCC_popPtr + 2'b01);
  assign popCC_popPtrGray = (_zz_popCC_popPtrGray ^ popCC_popPtr);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign popCC_addressGen_valid = (! popCC_empty);
  assign popCC_addressGen_payload = popCC_popPtr[0:0];
  assign popCC_addressGen_fire = (popCC_addressGen_valid && popCC_addressGen_ready);
  always @(*) begin
    popCC_addressGen_ready = popCC_readArbitation_ready;
    if(when_Stream_l477) begin
      popCC_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l477 = (! popCC_readArbitation_valid);
  assign popCC_readArbitation_valid = popCC_addressGen_rValid;
  assign popCC_readArbitation_payload = popCC_addressGen_rData;
  assign popCC_readPort_rsp_data = ram_spinal_port1[63 : 0];
  assign popCC_addressGen_toFlowFire_valid = popCC_addressGen_fire;
  assign popCC_addressGen_toFlowFire_payload = popCC_addressGen_payload;
  assign popCC_readPort_cmd_valid = popCC_addressGen_toFlowFire_valid;
  assign popCC_readPort_cmd_payload = popCC_addressGen_toFlowFire_payload;
  assign popCC_readArbitation_translated_valid = popCC_readArbitation_valid;
  assign popCC_readArbitation_ready = popCC_readArbitation_translated_ready;
  assign popCC_readArbitation_translated_payload_data = popCC_readPort_rsp_data;
  assign io_pop_valid = popCC_readArbitation_translated_valid;
  assign popCC_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_data = popCC_readArbitation_translated_payload_data;
  assign popCC_readArbitation_fire = (popCC_readArbitation_valid && popCC_readArbitation_ready);
  assign _zz_io_popOccupancy = popCC_pushPtrGray[1];
  assign io_popOccupancy = ({_zz_io_popOccupancy,(popCC_pushPtrGray[0] ^ _zz_io_popOccupancy)} - popCC_ptrToOccupancy);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_ptrToPush;
  always @(posedge clk_pl or posedge rst_100) begin
    if(rst_100) begin
      pushCC_pushPtr <= 2'b00;
      pushCC_pushPtrGray <= 2'b00;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge qick_processor_0_c_clk_i or posedge toplevel_rst_100_synchronized_1) begin
    if(toplevel_rst_100_synchronized_1) begin
      popCC_popPtr <= 2'b00;
      popCC_addressGen_rValid <= 1'b0;
      popCC_ptrToPush <= 2'b00;
      popCC_ptrToOccupancy <= 2'b00;
    end else begin
      if(popCC_addressGen_fire) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
      if(popCC_addressGen_ready) begin
        popCC_addressGen_rValid <= popCC_addressGen_valid;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToPush <= popCC_popPtrGray;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToOccupancy <= popCC_popPtr;
      end
    end
  end

  always @(posedge qick_processor_0_c_clk_i) begin
    if(popCC_addressGen_ready) begin
      popCC_addressGen_rData <= popCC_addressGen_payload;
    end
  end


endmodule

//AxisAvgBuffer_1 replaced by AxisAvgBuffer

module StreamFifoCC (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [63:0]   io_push_payload_data,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [63:0]   io_pop_payload_data,
  output wire [1:0]    io_pushOccupancy,
  output wire [1:0]    io_popOccupancy,
  input  wire          clk_pl,
  input  wire          rst_100,
  input  wire          qick_processor_0_c_clk_i,
  output wire          toplevel_rst_100_synchronized_1
);

  reg        [63:0]   ram_spinal_port1;
  wire       [1:0]    popToPushGray_buffercc_io_dataOut;
  wire                toplevel_rst_100_asyncAssertSyncDeassert_buffercc_io_dataOut;
  wire       [1:0]    pushToPopGray_buffercc_io_dataOut;
  wire       [1:0]    _zz_pushCC_pushPtrGray;
  wire       [0:0]    _zz_ram_port;
  wire       [1:0]    _zz_popCC_popPtrGray;
  reg                 _zz_1;
  wire       [1:0]    popToPushGray;
  wire       [1:0]    pushToPopGray;
  reg        [1:0]    pushCC_pushPtr;
  wire       [1:0]    pushCC_pushPtrPlus;
  wire                io_push_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    pushCC_pushPtrGray;
  wire       [1:0]    pushCC_popPtrGray;
  wire                pushCC_full;
  wire                _zz_io_pushOccupancy;
  wire                toplevel_rst_100_asyncAssertSyncDeassert;
  wire                toplevel_rst_100_synchronized;
  reg        [1:0]    popCC_popPtr;
  (* keep , syn_keep *) wire       [1:0]    popCC_popPtrPlus /* synthesis syn_keep = 1 */ ;
  wire       [1:0]    popCC_popPtrGray;
  wire       [1:0]    popCC_pushPtrGray;
  wire                popCC_addressGen_valid;
  reg                 popCC_addressGen_ready;
  wire       [0:0]    popCC_addressGen_payload;
  wire                popCC_empty;
  wire                popCC_addressGen_fire;
  wire                popCC_readArbitation_valid;
  wire                popCC_readArbitation_ready;
  wire       [0:0]    popCC_readArbitation_payload;
  reg                 popCC_addressGen_rValid;
  reg        [0:0]    popCC_addressGen_rData;
  wire                when_Stream_l477;
  wire                popCC_readPort_cmd_valid;
  wire       [0:0]    popCC_readPort_cmd_payload;
  wire       [63:0]   popCC_readPort_rsp_data;
  wire                popCC_addressGen_toFlowFire_valid;
  wire       [0:0]    popCC_addressGen_toFlowFire_payload;
  wire                popCC_readArbitation_translated_valid;
  wire                popCC_readArbitation_translated_ready;
  wire       [63:0]   popCC_readArbitation_translated_payload_data;
  wire                popCC_readArbitation_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    popCC_ptrToPush;
  reg        [1:0]    popCC_ptrToOccupancy;
  wire                _zz_io_popOccupancy;
  reg [63:0] ram [0:1];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[0:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtr >>> 1'b1);
  always @(posedge clk_pl) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= io_push_payload_data;
    end
  end

  always @(posedge qick_processor_0_c_clk_i) begin
    if(popCC_readPort_cmd_valid) begin
      ram_spinal_port1 <= ram[popCC_readPort_cmd_payload];
    end
  end

  (* keep_hierarchy = "TRUE" *) BufferCC popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[1:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[1:0]), //o
    .clk_pl     (clk_pl                                ), //i
    .rst_100    (rst_100                               )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_1 toplevel_rst_100_asyncAssertSyncDeassert_buffercc (
    .io_dataIn                (toplevel_rst_100_asyncAssertSyncDeassert                    ), //i
    .io_dataOut               (toplevel_rst_100_asyncAssertSyncDeassert_buffercc_io_dataOut), //o
    .qick_processor_0_c_clk_i (qick_processor_0_c_clk_i                                    ), //i
    .rst_100                  (rst_100                                                     )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_2 pushToPopGray_buffercc (
    .io_dataIn                     (pushToPopGray[1:0]                    ), //i
    .io_dataOut                    (pushToPopGray_buffercc_io_dataOut[1:0]), //o
    .qick_processor_0_c_clk_i      (qick_processor_0_c_clk_i              ), //i
    .toplevel_rst_100_synchronized (toplevel_rst_100_synchronized         )  //i
  );
  always @(*) begin
    _zz_1 = 1'b0;
    if(io_push_fire) begin
      _zz_1 = 1'b1;
    end
  end

  assign pushCC_pushPtrPlus = (pushCC_pushPtr + 2'b01);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign pushCC_popPtrGray = popToPushGray_buffercc_io_dataOut;
  assign pushCC_full = ((pushCC_pushPtrGray[1 : 0] == (~ pushCC_popPtrGray[1 : 0])) && 1'b1);
  assign io_push_ready = (! pushCC_full);
  assign _zz_io_pushOccupancy = pushCC_popPtrGray[1];
  assign io_pushOccupancy = (pushCC_pushPtr - {_zz_io_pushOccupancy,(pushCC_popPtrGray[0] ^ _zz_io_pushOccupancy)});
  assign toplevel_rst_100_asyncAssertSyncDeassert = (1'b0 ^ 1'b0);
  assign toplevel_rst_100_synchronized = toplevel_rst_100_asyncAssertSyncDeassert_buffercc_io_dataOut;
  assign popCC_popPtrPlus = (popCC_popPtr + 2'b01);
  assign popCC_popPtrGray = (_zz_popCC_popPtrGray ^ popCC_popPtr);
  assign popCC_pushPtrGray = pushToPopGray_buffercc_io_dataOut;
  assign popCC_empty = (popCC_popPtrGray == popCC_pushPtrGray);
  assign popCC_addressGen_valid = (! popCC_empty);
  assign popCC_addressGen_payload = popCC_popPtr[0:0];
  assign popCC_addressGen_fire = (popCC_addressGen_valid && popCC_addressGen_ready);
  always @(*) begin
    popCC_addressGen_ready = popCC_readArbitation_ready;
    if(when_Stream_l477) begin
      popCC_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l477 = (! popCC_readArbitation_valid);
  assign popCC_readArbitation_valid = popCC_addressGen_rValid;
  assign popCC_readArbitation_payload = popCC_addressGen_rData;
  assign popCC_readPort_rsp_data = ram_spinal_port1[63 : 0];
  assign popCC_addressGen_toFlowFire_valid = popCC_addressGen_fire;
  assign popCC_addressGen_toFlowFire_payload = popCC_addressGen_payload;
  assign popCC_readPort_cmd_valid = popCC_addressGen_toFlowFire_valid;
  assign popCC_readPort_cmd_payload = popCC_addressGen_toFlowFire_payload;
  assign popCC_readArbitation_translated_valid = popCC_readArbitation_valid;
  assign popCC_readArbitation_ready = popCC_readArbitation_translated_ready;
  assign popCC_readArbitation_translated_payload_data = popCC_readPort_rsp_data;
  assign io_pop_valid = popCC_readArbitation_translated_valid;
  assign popCC_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_data = popCC_readArbitation_translated_payload_data;
  assign popCC_readArbitation_fire = (popCC_readArbitation_valid && popCC_readArbitation_ready);
  assign _zz_io_popOccupancy = popCC_pushPtrGray[1];
  assign io_popOccupancy = ({_zz_io_popOccupancy,(popCC_pushPtrGray[0] ^ _zz_io_popOccupancy)} - popCC_ptrToOccupancy);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_ptrToPush;
  assign toplevel_rst_100_synchronized_1 = toplevel_rst_100_synchronized;
  always @(posedge clk_pl or posedge rst_100) begin
    if(rst_100) begin
      pushCC_pushPtr <= 2'b00;
      pushCC_pushPtrGray <= 2'b00;
    end else begin
      if(io_push_fire) begin
        pushCC_pushPtrGray <= (_zz_pushCC_pushPtrGray ^ pushCC_pushPtrPlus);
      end
      if(io_push_fire) begin
        pushCC_pushPtr <= pushCC_pushPtrPlus;
      end
    end
  end

  always @(posedge qick_processor_0_c_clk_i or posedge toplevel_rst_100_synchronized) begin
    if(toplevel_rst_100_synchronized) begin
      popCC_popPtr <= 2'b00;
      popCC_addressGen_rValid <= 1'b0;
      popCC_ptrToPush <= 2'b00;
      popCC_ptrToOccupancy <= 2'b00;
    end else begin
      if(popCC_addressGen_fire) begin
        popCC_popPtr <= popCC_popPtrPlus;
      end
      if(popCC_addressGen_ready) begin
        popCC_addressGen_rValid <= popCC_addressGen_valid;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToPush <= popCC_popPtrGray;
      end
      if(popCC_readArbitation_fire) begin
        popCC_ptrToOccupancy <= popCC_popPtr;
      end
    end
  end

  always @(posedge qick_processor_0_c_clk_i) begin
    if(popCC_addressGen_ready) begin
      popCC_addressGen_rData <= popCC_addressGen_payload;
    end
  end


endmodule

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

  wire                axisAvgBuffer_7_s_axi_awready;
  wire                axisAvgBuffer_7_s_axi_wready;
  wire                axisAvgBuffer_7_s_axi_bvalid;
  wire       [1:0]    axisAvgBuffer_7_s_axi_bresp;
  wire                axisAvgBuffer_7_s_axi_arready;
  wire                axisAvgBuffer_7_s_axi_rvalid;
  wire       [31:0]   axisAvgBuffer_7_s_axi_rdata;
  wire       [1:0]    axisAvgBuffer_7_s_axi_rresp;
  wire                axisAvgBuffer_7_s_axis_tready;
  wire                axisAvgBuffer_7_m0_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_7_m0_axis_tdata;
  wire                axisAvgBuffer_7_m0_axis_tlast;
  wire                axisAvgBuffer_7_m1_axis_tvalid;
  wire       [31:0]   axisAvgBuffer_7_m1_axis_tdata;
  wire                axisAvgBuffer_7_m1_axis_tlast;
  wire                axisAvgBuffer_7_m2_axis_tvalid;
  wire       [63:0]   axisAvgBuffer_7_m2_axis_tdata;

  axis_avg_buffer #(
    .N_AVG (13),
    .N_BUF (12),
    .B     (16)
  ) axisAvgBuffer_7 (
    .s_axi_awvalid  (s_axi_awvalid                      ), //i
    .s_axi_awready  (axisAvgBuffer_7_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                  ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                  ), //i
    .s_axi_wvalid   (s_axi_wvalid                       ), //i
    .s_axi_wready   (axisAvgBuffer_7_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                  ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                   ), //i
    .s_axi_bvalid   (axisAvgBuffer_7_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                       ), //i
    .s_axi_bresp    (axisAvgBuffer_7_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                      ), //i
    .s_axi_arready  (axisAvgBuffer_7_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                  ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                  ), //i
    .s_axi_rvalid   (axisAvgBuffer_7_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                       ), //i
    .s_axi_rdata    (axisAvgBuffer_7_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisAvgBuffer_7_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk     (s_axi_aclk_i                       ), //i
    .s_axi_aresetn  (s_axi_aresetn                      ), //i
    .trigger        (trigger                            ), //i
    .s_axis_tvalid  (s_axis_tvalid                      ), //i
    .s_axis_tready  (axisAvgBuffer_7_s_axis_tready      ), //o
    .s_axis_tdata   (s_axis_tdata[31:0]                 ), //i
    .s_axis_aclk    (s_axis_aclk_i                      ), //i
    .s_axis_aresetn (s_axis_aresetn                     ), //i
    .m_axis_aclk    (m_axis_aclk_i                      ), //i
    .m_axis_aresetn (m_axis_aresetn                     ), //i
    .m0_axis_tvalid (axisAvgBuffer_7_m0_axis_tvalid     ), //o
    .m0_axis_tready (m0_axis_tready                     ), //i
    .m0_axis_tdata  (axisAvgBuffer_7_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axisAvgBuffer_7_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axisAvgBuffer_7_m1_axis_tvalid     ), //o
    .m1_axis_tready (m1_axis_tready                     ), //i
    .m1_axis_tdata  (axisAvgBuffer_7_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axisAvgBuffer_7_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axisAvgBuffer_7_m2_axis_tvalid     ), //o
    .m2_axis_tready (m2_axis_tready                     ), //i
    .m2_axis_tdata  (axisAvgBuffer_7_m2_axis_tdata[63:0])  //o
  );
  assign s_axi_awready = axisAvgBuffer_7_s_axi_awready;
  assign s_axi_wready = axisAvgBuffer_7_s_axi_wready;
  assign s_axi_bvalid = axisAvgBuffer_7_s_axi_bvalid;
  assign s_axi_bresp = axisAvgBuffer_7_s_axi_bresp;
  assign s_axi_arready = axisAvgBuffer_7_s_axi_arready;
  assign s_axi_rvalid = axisAvgBuffer_7_s_axi_rvalid;
  assign s_axi_rdata = axisAvgBuffer_7_s_axi_rdata;
  assign s_axi_rresp = axisAvgBuffer_7_s_axi_rresp;
  assign s_axis_tready = axisAvgBuffer_7_s_axis_tready;
  assign m0_axis_tvalid = axisAvgBuffer_7_m0_axis_tvalid;
  assign m0_axis_tdata = axisAvgBuffer_7_m0_axis_tdata;
  assign m0_axis_tlast = axisAvgBuffer_7_m0_axis_tlast;
  assign m1_axis_tvalid = axisAvgBuffer_7_m1_axis_tvalid;
  assign m1_axis_tdata = axisAvgBuffer_7_m1_axis_tdata;
  assign m1_axis_tlast = axisAvgBuffer_7_m1_axis_tlast;
  assign m2_axis_tvalid = axisAvgBuffer_7_m2_axis_tvalid;
  assign m2_axis_tdata = axisAvgBuffer_7_m2_axis_tdata;

endmodule

//BufferCC_14 replaced by BufferCC_4

//BufferCC_13 replaced by BufferCC

//BufferCC_12 replaced by BufferCC_4

//BufferCC_11 replaced by BufferCC

//BufferCC_10 replaced by BufferCC_4

//BufferCC_9 replaced by BufferCC

//BufferCC_8 replaced by BufferCC_4

//BufferCC_7 replaced by BufferCC

//BufferCC_6 replaced by BufferCC_4

//BufferCC_5 replaced by BufferCC

module BufferCC_4 (
  input  wire [1:0]    io_dataIn,
  output wire [1:0]    io_dataOut,
  input  wire          qick_processor_0_c_clk_i,
  input  wire          toplevel_rst_100_synchronized_1
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    buffers_0;
  (* async_reg = "true" *) reg        [1:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge qick_processor_0_c_clk_i or posedge toplevel_rst_100_synchronized_1) begin
    if(toplevel_rst_100_synchronized_1) begin
      buffers_0 <= 2'b00;
      buffers_1 <= 2'b00;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

//BufferCC_3 replaced by BufferCC

module BufferCC_2 (
  input  wire [1:0]    io_dataIn,
  output wire [1:0]    io_dataOut,
  input  wire          qick_processor_0_c_clk_i,
  input  wire          toplevel_rst_100_synchronized
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    buffers_0;
  (* async_reg = "true" *) reg        [1:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge qick_processor_0_c_clk_i or posedge toplevel_rst_100_synchronized) begin
    if(toplevel_rst_100_synchronized) begin
      buffers_0 <= 2'b00;
      buffers_1 <= 2'b00;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_1 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          qick_processor_0_c_clk_i,
  input  wire          rst_100
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge qick_processor_0_c_clk_i or posedge rst_100) begin
    if(rst_100) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC (
  input  wire [1:0]    io_dataIn,
  output wire [1:0]    io_dataOut,
  input  wire          clk_pl,
  input  wire          rst_100
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    buffers_0;
  (* async_reg = "true" *) reg        [1:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_pl or posedge rst_100) begin
    if(rst_100) begin
      buffers_0 <= 2'b00;
      buffers_1 <= 2'b00;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule
