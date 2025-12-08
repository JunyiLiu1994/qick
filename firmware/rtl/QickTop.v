// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : QickTop
// Git hash  : 9794782384d54d56abcf4f87377a79f8b9a64020

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
  input  wire          qick_processor_0_t_clk_i,
  input  wire          qick_processor_0_t_resetn,
  input  wire          qick_processor_0_ps_clk_i,
  input  wire          qick_processor_0_ps_resetn,
  input  wire          qick_processor_0_proc_start_i,
  input  wire          qick_processor_0_proc_stop_i,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_s_dma_axis_i TVALID" *) input  wire          qick_processor_0_s_dma_axis_tvalid_i,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_s_dma_axis_i TREADY" *) output wire          qick_processor_0_s_dma_axis_tready_o,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" , X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_s_dma_axis_i TDATA" *) input  wire [255:0]  qick_processor_0_s_dma_axis_tdata_i,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_s_dma_axis_i TLAST" *) input  wire          qick_processor_0_s_dma_axis_tlast_i,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_m_dma_axis_o TVALID" *) output wire          qick_processor_0_m_dma_axis_tvalid_o,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_m_dma_axis_o TREADY" *) input  wire          qick_processor_0_m_dma_axis_tready_i,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" , X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_m_dma_axis_o TDATA" *) output wire [255:0]  qick_processor_0_m_dma_axis_tdata_o,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 qick_processor_0_m_dma_axis_o TLAST" *) output wire          qick_processor_0_m_dma_axis_tlast_o,
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
  output wire [3:0]    qick_processor_0_port_0_dt_o,
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
  input  wire          axis_avg_buffer_0_trigger,
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
  input  wire          axis_avg_buffer_1_trigger,
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
  input  wire          axis_avg_buffer_2_trigger,
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
  input  wire          axis_avg_buffer_3_trigger,
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
  input  wire          axis_avg_buffer_4_trigger,
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
  input  wire          axis_avg_buffer_5_trigger,
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
  input  wire          axis_avg_buffer_6_trigger,
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
  input  wire          mr_buffer_et_0_trigger,
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
  output reg           axis_signal_gen_v6_0_m_axis_tvalid,
  input  wire          axis_signal_gen_v6_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output reg  [255:0]  axis_signal_gen_v6_0_m_axis_tdata,
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
  output reg           axis_signal_gen_v6_1_m_axis_tvalid,
  input  wire          axis_signal_gen_v6_1_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output reg  [255:0]  axis_signal_gen_v6_1_m_axis_tdata,
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
  input  wire          axis_cdcsync_v1_1_s0_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s0_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s1_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s1_axis_tdata,
  input  wire          axis_cdcsync_v1_1_s2_axis_tvalid,
  output wire          axis_cdcsync_v1_1_s2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [167:0]  axis_cdcsync_v1_1_s2_axis_tdata,
  output wire          axis_cdcsync_v1_1_m0_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m0_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m0_axis_tdata,
  output wire          axis_cdcsync_v1_1_m1_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m1_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m1_axis_tdata,
  output wire          axis_cdcsync_v1_1_m2_axis_tvalid,
  input  wire          axis_cdcsync_v1_1_m2_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  axis_cdcsync_v1_1_m2_axis_tdata,
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
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [39:0]   axis_sg_mux8_v1_0_s_axis_tdata,
  output reg           axis_sg_mux8_v1_0_m_axis_tvalid,
  input  wire          axis_sg_mux8_v1_0_m_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output reg  [255:0]  axis_sg_mux8_v1_0_m_axis_tdata,
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
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [63:0]   axis_resampler_2x1_v1_0_m_axis_tdata
);

  reg                 qickProcessor_t_clk_i;
  reg                 qickProcessor_t_resetn;
  reg                 qickProcessor_ps_clk_i;
  reg                 qickProcessor_ps_resetn;
  reg                 qickProcessor_s0_axis_tvalid;
  reg        [63:0]   qickProcessor_s0_axis_tdata;
  reg                 qickProcessor_s1_axis_tvalid;
  reg        [63:0]   qickProcessor_s1_axis_tdata;
  reg                 qickProcessor_s2_axis_tvalid;
  reg        [63:0]   qickProcessor_s2_axis_tdata;
  reg                 qickProcessor_s3_axis_tvalid;
  reg        [63:0]   qickProcessor_s3_axis_tdata;
  reg                 qickProcessor_s4_axis_tvalid;
  reg        [63:0]   qickProcessor_s4_axis_tdata;
  reg                 qickProcessor_s5_axis_tvalid;
  reg        [63:0]   qickProcessor_s5_axis_tdata;
  reg                 qickProcessor_s6_axis_tvalid;
  reg        [63:0]   qickProcessor_s6_axis_tdata;
  reg                 qickProcessor_m0_axis_tready;
  reg                 qickProcessor_m1_axis_tready;
  reg                 axis_avg_buffer_0_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_0_1_s_axi_aresetn;
  reg                 axis_avg_buffer_0_1_trigger;
  reg                 axis_avg_buffer_0_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_0_1_s_axis_aresetn;
  reg                 axis_avg_buffer_0_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_0_1_m_axis_aresetn;
  reg                 axis_avg_buffer_0_1_m2_axis_tready;
  reg                 axis_avg_buffer_1_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_1_1_s_axi_aresetn;
  reg                 axis_avg_buffer_1_1_trigger;
  reg                 axis_avg_buffer_1_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_1_1_s_axis_aresetn;
  reg                 axis_avg_buffer_1_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_1_1_m_axis_aresetn;
  reg                 axis_avg_buffer_1_1_m2_axis_tready;
  reg                 axis_avg_buffer_2_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_2_1_s_axi_aresetn;
  reg                 axis_avg_buffer_2_1_trigger;
  reg                 axis_avg_buffer_2_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_2_1_s_axis_aresetn;
  reg                 axis_avg_buffer_2_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_2_1_m_axis_aresetn;
  reg                 axis_avg_buffer_2_1_m2_axis_tready;
  reg                 axis_avg_buffer_3_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_3_1_s_axi_aresetn;
  reg                 axis_avg_buffer_3_1_trigger;
  reg                 axis_avg_buffer_3_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_3_1_s_axis_aresetn;
  reg                 axis_avg_buffer_3_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_3_1_m_axis_aresetn;
  reg                 axis_avg_buffer_3_1_m2_axis_tready;
  reg                 axis_avg_buffer_4_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_4_1_s_axi_aresetn;
  reg                 axis_avg_buffer_4_1_trigger;
  reg                 axis_avg_buffer_4_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_4_1_s_axis_aresetn;
  reg                 axis_avg_buffer_4_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_4_1_m_axis_aresetn;
  reg                 axis_avg_buffer_4_1_m2_axis_tready;
  reg                 axis_avg_buffer_5_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_5_1_s_axi_aresetn;
  reg                 axis_avg_buffer_5_1_trigger;
  reg                 axis_avg_buffer_5_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_5_1_s_axis_aresetn;
  reg                 axis_avg_buffer_5_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_5_1_m_axis_aresetn;
  reg                 axis_avg_buffer_5_1_m2_axis_tready;
  reg                 axis_avg_buffer_6_1_s_axi_aclk_i;
  reg                 axis_avg_buffer_6_1_s_axi_aresetn;
  reg                 axis_avg_buffer_6_1_trigger;
  reg                 axis_avg_buffer_6_1_s_axis_aclk_i;
  reg                 axis_avg_buffer_6_1_s_axis_aresetn;
  reg                 axis_avg_buffer_6_1_m_axis_aclk_i;
  reg                 axis_avg_buffer_6_1_m_axis_aresetn;
  reg                 axis_avg_buffer_6_1_m2_axis_tready;
  reg                 mr_buffer_et_0_1_trigger;
  reg                 mr_buffer_et_0_1_s00_axi_aclk;
  reg                 mr_buffer_et_0_1_s00_axi_aresetn;
  reg                 mr_buffer_et_0_1_s00_axis_aclk;
  reg                 mr_buffer_et_0_1_s00_axis_aresetn;
  reg                 mr_buffer_et_0_1_m00_axis_aclk;
  reg                 mr_buffer_et_0_1_m00_axis_aresetn;
  reg                 axis_pfb_readout_v3_0_1_s_axi_aresetn;
  reg                 axis_pfb_readout_v3_0_1_s_axi_aclk_i;
  reg                 axis_pfb_readout_v3_0_1_aresetn;
  reg                 axis_pfb_readout_v3_0_1_aclk_i;
  reg                 axis_readout_v2_0_1_s_axi_aclk_i;
  reg                 axis_readout_v2_0_1_s_axi_aresetn;
  reg                 axis_readout_v2_0_1_aresetn;
  reg                 axis_readout_v2_0_1_aclk_i;
  reg                 axis_readout_v3_0_1_aclk_i;
  reg                 axis_readout_v3_0_1_aresetn;
  reg                 axis_readout_v3_0_1_s0_axis_tvalid;
  reg        [87:0]   axis_readout_v3_0_1_s0_axis_tdata;
  reg                 axis_readout_v3_0_1_s1_axis_tvalid;
  reg        [63:0]   axis_readout_v3_0_1_s1_axis_tdata;
  reg                 axis_dyn_readout_v1_0_1_aresetn;
  reg                 axis_dyn_readout_v1_0_1_aclk;
  reg                 axis_dyn_readout_v1_0_1_s0_axis_tvalid;
  reg        [87:0]   axis_dyn_readout_v1_0_1_s0_axis_tdata;
  reg                 axis_signal_gen_v6_0_1_s_axi_aclk_i;
  reg                 axis_signal_gen_v6_0_1_s_axi_aresetn;
  reg                 axis_signal_gen_v6_0_1_s0_axis_aclk_i;
  reg                 axis_signal_gen_v6_0_1_s0_axis_aresetn;
  reg                 axis_signal_gen_v6_0_1_aresetn;
  reg                 axis_signal_gen_v6_0_1_aclk_i;
  reg                 axis_signal_gen_v6_0_1_s1_axis_tvalid;
  reg        [159:0]  axis_signal_gen_v6_0_1_s1_axis_tdata;
  reg                 axis_signal_gen_v6_0_1_m_axis_tready;
  reg                 axis_signal_gen_v6_1_1_s_axi_aclk_i;
  reg                 axis_signal_gen_v6_1_1_s_axi_aresetn;
  reg                 axis_signal_gen_v6_1_1_s0_axis_aclk_i;
  reg                 axis_signal_gen_v6_1_1_s0_axis_aresetn;
  reg                 axis_signal_gen_v6_1_1_aresetn;
  reg                 axis_signal_gen_v6_1_1_aclk_i;
  reg                 axis_signal_gen_v6_1_1_s1_axis_tvalid;
  reg        [159:0]  axis_signal_gen_v6_1_1_s1_axis_tdata;
  reg                 axis_signal_gen_v6_1_1_m_axis_tready;
  reg                 axis_tmux_v1_0_1_aresetn;
  reg                 axis_tmux_v1_0_1_aclk;
  reg                 axis_cdcsync_v1_1_1_s_axis_aresetn;
  reg                 axis_cdcsync_v1_1_1_s_axis_aclk;
  reg                 axis_cdcsync_v1_1_1_m_axis_aresetn;
  reg                 axis_cdcsync_v1_1_1_m_axis_aclk;
  reg                 axis_cdcsync_v1_1_1_m0_axis_tready;
  reg                 axis_cdcsync_v1_1_1_m1_axis_tready;
  reg                 axis_cdcsync_v1_1_1_m2_axis_tready;
  reg                 axis_sg_mux8_v1_0_1_s_axi_aresetn;
  reg                 axis_sg_mux8_v1_0_1_s_axi_aclk_i;
  reg                 axis_sg_mux8_v1_0_1_aclk_i;
  reg                 axis_sg_mux8_v1_0_1_aresetn;
  reg                 axis_sg_mux8_v1_0_1_s_axis_tvalid;
  reg        [39:0]   axis_sg_mux8_v1_0_1_s_axis_tdata;
  reg                 axis_sg_mux8_v1_0_1_m_axis_tready;
  reg                 axis_sg_mixmux8_v1_0_1_s_axi_aresetn;
  reg                 axis_sg_mixmux8_v1_0_1_s_axi_aclk_i;
  reg                 axis_sg_mixmux8_v1_0_1_aresetn;
  reg                 axis_sg_mixmux8_v1_0_1_aclk_i;
  reg                 axis_sg_mixmux8_v1_0_1_s_axis_tvalid;
  reg        [39:0]   axis_sg_mixmux8_v1_0_1_s_axis_tdata;
  reg                 axis_sg_int4_v2_0_1_s_axi_aclk_i;
  reg                 axis_sg_int4_v2_0_1_s_axi_aresetn;
  reg                 axis_sg_int4_v2_0_1_s0_axis_aclk;
  reg                 axis_sg_int4_v2_0_1_s0_axis_aresetn;
  reg                 axis_sg_int4_v2_0_1_aresetn;
  reg                 axis_sg_int4_v2_0_1_aclk_i;
  reg                 axis_sg_int4_v2_0_1_s1_axis_tvalid;
  reg        [159:0]  axis_sg_int4_v2_0_1_s1_axis_tdata;
  reg                 axis_sg_int4_v2_1_1_s_axi_aclk_i;
  reg                 axis_sg_int4_v2_1_1_s_axi_aresetn;
  reg                 axis_sg_int4_v2_1_1_s0_axis_aclk;
  reg                 axis_sg_int4_v2_1_1_s0_axis_aresetn;
  reg                 axis_sg_int4_v2_1_1_aresetn;
  reg                 axis_sg_int4_v2_1_1_aclk_i;
  reg                 axis_sg_int4_v2_1_1_s1_axis_tvalid;
  reg        [159:0]  axis_sg_int4_v2_1_1_s1_axis_tdata;
  reg                 axis_resampler_2x1_v1_0_1_aclk;
  reg                 axis_resampler_2x1_v1_0_1_aresetn;
  reg                 axis_resampler_2x1_v1_0_1_m_axis_tready;
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
  wire       [3:0]    qickProcessor_port_0_dt_o;
  wire                axis_avg_buffer_0_1_s_axi_awready;
  wire                axis_avg_buffer_0_1_s_axi_wready;
  wire                axis_avg_buffer_0_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_0_1_s_axi_bresp;
  wire                axis_avg_buffer_0_1_s_axi_arready;
  wire                axis_avg_buffer_0_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_0_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_0_1_s_axi_rresp;
  wire                axis_avg_buffer_0_1_s_axis_tready;
  wire                axis_avg_buffer_0_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_0_1_m0_axis_tdata;
  wire                axis_avg_buffer_0_1_m0_axis_tlast;
  wire                axis_avg_buffer_0_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_0_1_m1_axis_tdata;
  wire                axis_avg_buffer_0_1_m1_axis_tlast;
  wire                axis_avg_buffer_0_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_0_1_m2_axis_tdata;
  wire                m2_axis_queue_io_push_ready;
  wire                m2_axis_queue_io_pop_valid;
  wire       [63:0]   m2_axis_queue_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_io_popOccupancy;
  wire                m2_axis_queue_toplevel_rst_100_synchronized_1;
  wire                axis_avg_buffer_1_1_s_axi_awready;
  wire                axis_avg_buffer_1_1_s_axi_wready;
  wire                axis_avg_buffer_1_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_1_1_s_axi_bresp;
  wire                axis_avg_buffer_1_1_s_axi_arready;
  wire                axis_avg_buffer_1_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_1_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_1_1_s_axi_rresp;
  wire                axis_avg_buffer_1_1_s_axis_tready;
  wire                axis_avg_buffer_1_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_1_1_m0_axis_tdata;
  wire                axis_avg_buffer_1_1_m0_axis_tlast;
  wire                axis_avg_buffer_1_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_1_1_m1_axis_tdata;
  wire                axis_avg_buffer_1_1_m1_axis_tlast;
  wire                axis_avg_buffer_1_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_1_1_m2_axis_tdata;
  wire                m2_axis_queue_1_io_push_ready;
  wire                m2_axis_queue_1_io_pop_valid;
  wire       [63:0]   m2_axis_queue_1_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_1_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_1_io_popOccupancy;
  wire                axis_avg_buffer_2_1_s_axi_awready;
  wire                axis_avg_buffer_2_1_s_axi_wready;
  wire                axis_avg_buffer_2_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_2_1_s_axi_bresp;
  wire                axis_avg_buffer_2_1_s_axi_arready;
  wire                axis_avg_buffer_2_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_2_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_2_1_s_axi_rresp;
  wire                axis_avg_buffer_2_1_s_axis_tready;
  wire                axis_avg_buffer_2_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_2_1_m0_axis_tdata;
  wire                axis_avg_buffer_2_1_m0_axis_tlast;
  wire                axis_avg_buffer_2_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_2_1_m1_axis_tdata;
  wire                axis_avg_buffer_2_1_m1_axis_tlast;
  wire                axis_avg_buffer_2_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_2_1_m2_axis_tdata;
  wire                m2_axis_queue_2_io_push_ready;
  wire                m2_axis_queue_2_io_pop_valid;
  wire       [63:0]   m2_axis_queue_2_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_2_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_2_io_popOccupancy;
  wire                axis_avg_buffer_3_1_s_axi_awready;
  wire                axis_avg_buffer_3_1_s_axi_wready;
  wire                axis_avg_buffer_3_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_3_1_s_axi_bresp;
  wire                axis_avg_buffer_3_1_s_axi_arready;
  wire                axis_avg_buffer_3_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_3_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_3_1_s_axi_rresp;
  wire                axis_avg_buffer_3_1_s_axis_tready;
  wire                axis_avg_buffer_3_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_3_1_m0_axis_tdata;
  wire                axis_avg_buffer_3_1_m0_axis_tlast;
  wire                axis_avg_buffer_3_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_3_1_m1_axis_tdata;
  wire                axis_avg_buffer_3_1_m1_axis_tlast;
  wire                axis_avg_buffer_3_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_3_1_m2_axis_tdata;
  wire                m2_axis_queue_3_io_push_ready;
  wire                m2_axis_queue_3_io_pop_valid;
  wire       [63:0]   m2_axis_queue_3_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_3_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_3_io_popOccupancy;
  wire                axis_avg_buffer_4_1_s_axi_awready;
  wire                axis_avg_buffer_4_1_s_axi_wready;
  wire                axis_avg_buffer_4_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_4_1_s_axi_bresp;
  wire                axis_avg_buffer_4_1_s_axi_arready;
  wire                axis_avg_buffer_4_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_4_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_4_1_s_axi_rresp;
  wire                axis_avg_buffer_4_1_s_axis_tready;
  wire                axis_avg_buffer_4_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_4_1_m0_axis_tdata;
  wire                axis_avg_buffer_4_1_m0_axis_tlast;
  wire                axis_avg_buffer_4_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_4_1_m1_axis_tdata;
  wire                axis_avg_buffer_4_1_m1_axis_tlast;
  wire                axis_avg_buffer_4_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_4_1_m2_axis_tdata;
  wire                m2_axis_queue_4_io_push_ready;
  wire                m2_axis_queue_4_io_pop_valid;
  wire       [63:0]   m2_axis_queue_4_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_4_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_4_io_popOccupancy;
  wire                axis_avg_buffer_5_1_s_axi_awready;
  wire                axis_avg_buffer_5_1_s_axi_wready;
  wire                axis_avg_buffer_5_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_5_1_s_axi_bresp;
  wire                axis_avg_buffer_5_1_s_axi_arready;
  wire                axis_avg_buffer_5_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_5_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_5_1_s_axi_rresp;
  wire                axis_avg_buffer_5_1_s_axis_tready;
  wire                axis_avg_buffer_5_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_5_1_m0_axis_tdata;
  wire                axis_avg_buffer_5_1_m0_axis_tlast;
  wire                axis_avg_buffer_5_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_5_1_m1_axis_tdata;
  wire                axis_avg_buffer_5_1_m1_axis_tlast;
  wire                axis_avg_buffer_5_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_5_1_m2_axis_tdata;
  wire                m2_axis_queue_5_io_push_ready;
  wire                m2_axis_queue_5_io_pop_valid;
  wire       [63:0]   m2_axis_queue_5_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_5_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_5_io_popOccupancy;
  wire                axis_avg_buffer_6_1_s_axi_awready;
  wire                axis_avg_buffer_6_1_s_axi_wready;
  wire                axis_avg_buffer_6_1_s_axi_bvalid;
  wire       [1:0]    axis_avg_buffer_6_1_s_axi_bresp;
  wire                axis_avg_buffer_6_1_s_axi_arready;
  wire                axis_avg_buffer_6_1_s_axi_rvalid;
  wire       [31:0]   axis_avg_buffer_6_1_s_axi_rdata;
  wire       [1:0]    axis_avg_buffer_6_1_s_axi_rresp;
  wire                axis_avg_buffer_6_1_s_axis_tready;
  wire                axis_avg_buffer_6_1_m0_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_6_1_m0_axis_tdata;
  wire                axis_avg_buffer_6_1_m0_axis_tlast;
  wire                axis_avg_buffer_6_1_m1_axis_tvalid;
  wire       [31:0]   axis_avg_buffer_6_1_m1_axis_tdata;
  wire                axis_avg_buffer_6_1_m1_axis_tlast;
  wire                axis_avg_buffer_6_1_m2_axis_tvalid;
  wire       [63:0]   axis_avg_buffer_6_1_m2_axis_tdata;
  wire                m2_axis_queue_6_io_push_ready;
  wire                m2_axis_queue_6_io_pop_valid;
  wire       [63:0]   m2_axis_queue_6_io_pop_payload_data;
  wire       [1:0]    m2_axis_queue_6_io_pushOccupancy;
  wire       [1:0]    m2_axis_queue_6_io_popOccupancy;
  wire                mr_buffer_et_0_1_s00_axi_awready;
  wire                mr_buffer_et_0_1_s00_axi_wready;
  wire                mr_buffer_et_0_1_s00_axi_bvalid;
  wire       [1:0]    mr_buffer_et_0_1_s00_axi_bresp;
  wire                mr_buffer_et_0_1_s00_axi_arready;
  wire                mr_buffer_et_0_1_s00_axi_rvalid;
  wire       [31:0]   mr_buffer_et_0_1_s00_axi_rdata;
  wire       [1:0]    mr_buffer_et_0_1_s00_axi_rresp;
  wire                mr_buffer_et_0_1_s00_axis_tready;
  wire                mr_buffer_et_0_1_m00_axis_tvalid;
  wire       [31:0]   mr_buffer_et_0_1_m00_axis_tdata;
  wire       [3:0]    mr_buffer_et_0_1_m00_axis_tstrb;
  wire                mr_buffer_et_0_1_m00_axis_tlast;
  wire                axis_pfb_readout_v3_0_1_s_axi_awready;
  wire                axis_pfb_readout_v3_0_1_s_axi_wready;
  wire                axis_pfb_readout_v3_0_1_s_axi_bvalid;
  wire       [1:0]    axis_pfb_readout_v3_0_1_s_axi_bresp;
  wire                axis_pfb_readout_v3_0_1_s_axi_arready;
  wire                axis_pfb_readout_v3_0_1_s_axi_rvalid;
  wire       [31:0]   axis_pfb_readout_v3_0_1_s_axi_rdata;
  wire       [1:0]    axis_pfb_readout_v3_0_1_s_axi_rresp;
  wire                axis_pfb_readout_v3_0_1_m0_axis_tvalid;
  wire       [31:0]   axis_pfb_readout_v3_0_1_m0_axis_tdata;
  wire                axis_pfb_readout_v3_0_1_m1_axis_tvalid;
  wire       [31:0]   axis_pfb_readout_v3_0_1_m1_axis_tdata;
  wire                axis_pfb_readout_v3_0_1_m2_axis_tvalid;
  wire       [31:0]   axis_pfb_readout_v3_0_1_m2_axis_tdata;
  wire                axis_pfb_readout_v3_0_1_m3_axis_tvalid;
  wire       [31:0]   axis_pfb_readout_v3_0_1_m3_axis_tdata;
  wire                axis_readout_v2_0_1_s_axi_awready;
  wire                axis_readout_v2_0_1_s_axi_wready;
  wire                axis_readout_v2_0_1_s_axi_bvalid;
  wire       [1:0]    axis_readout_v2_0_1_s_axi_bresp;
  wire                axis_readout_v2_0_1_s_axi_arready;
  wire                axis_readout_v2_0_1_s_axi_rvalid;
  wire       [31:0]   axis_readout_v2_0_1_s_axi_rdata;
  wire       [1:0]    axis_readout_v2_0_1_s_axi_rresp;
  wire                axis_readout_v2_0_1_s_axis_tready;
  wire                axis_readout_v2_0_1_m0_axis_tvalid;
  wire       [255:0]  axis_readout_v2_0_1_m0_axis_tdata;
  wire                axis_readout_v2_0_1_m1_axis_tvalid;
  wire       [31:0]   axis_readout_v2_0_1_m1_axis_tdata;
  wire                axis_readout_v3_0_1_s0_axis_tready;
  wire                axis_readout_v3_0_1_s1_axis_tready;
  wire                axis_readout_v3_0_1_m_axis_tvalid;
  wire       [31:0]   axis_readout_v3_0_1_m_axis_tdata;
  wire                axis_dyn_readout_v1_0_1_s0_axis_tready;
  wire                axis_dyn_readout_v1_0_1_s1_axis_tready;
  wire                axis_dyn_readout_v1_0_1_m0_axis_tvalid;
  wire       [255:0]  axis_dyn_readout_v1_0_1_m0_axis_tdata;
  wire                axis_dyn_readout_v1_0_1_m1_axis_tvalid;
  wire       [31:0]   axis_dyn_readout_v1_0_1_m1_axis_tdata;
  wire                axis_signal_gen_v6_0_1_s_axi_awready;
  wire                axis_signal_gen_v6_0_1_s_axi_wready;
  wire                axis_signal_gen_v6_0_1_s_axi_bvalid;
  wire       [1:0]    axis_signal_gen_v6_0_1_s_axi_bresp;
  wire                axis_signal_gen_v6_0_1_s_axi_arready;
  wire                axis_signal_gen_v6_0_1_s_axi_rvalid;
  wire       [31:0]   axis_signal_gen_v6_0_1_s_axi_rdata;
  wire       [1:0]    axis_signal_gen_v6_0_1_s_axi_rresp;
  wire                axis_signal_gen_v6_0_1_s0_axis_tready;
  wire                axis_signal_gen_v6_0_1_s1_axis_tready;
  wire                axis_signal_gen_v6_0_1_m_axis_tvalid;
  wire       [255:0]  axis_signal_gen_v6_0_1_m_axis_tdata;
  wire                axis_signal_gen_v6_1_1_s_axi_awready;
  wire                axis_signal_gen_v6_1_1_s_axi_wready;
  wire                axis_signal_gen_v6_1_1_s_axi_bvalid;
  wire       [1:0]    axis_signal_gen_v6_1_1_s_axi_bresp;
  wire                axis_signal_gen_v6_1_1_s_axi_arready;
  wire                axis_signal_gen_v6_1_1_s_axi_rvalid;
  wire       [31:0]   axis_signal_gen_v6_1_1_s_axi_rdata;
  wire       [1:0]    axis_signal_gen_v6_1_1_s_axi_rresp;
  wire                axis_signal_gen_v6_1_1_s0_axis_tready;
  wire                axis_signal_gen_v6_1_1_s1_axis_tready;
  wire                axis_signal_gen_v6_1_1_m_axis_tvalid;
  wire       [255:0]  axis_signal_gen_v6_1_1_m_axis_tdata;
  wire                axis_tmux_v1_0_1_s_axis_tready;
  wire                axis_tmux_v1_0_1_m0_axis_tvalid;
  wire       [167:0]  axis_tmux_v1_0_1_m0_axis_tdata;
  wire                axis_tmux_v1_0_1_m1_axis_tvalid;
  wire       [167:0]  axis_tmux_v1_0_1_m1_axis_tdata;
  wire                axis_tmux_v1_0_1_m2_axis_tvalid;
  wire       [167:0]  axis_tmux_v1_0_1_m2_axis_tdata;
  wire                axis_tmux_v1_0_1_m3_axis_tvalid;
  wire       [167:0]  axis_tmux_v1_0_1_m3_axis_tdata;
  wire                axis_cdcsync_v1_1_1_s0_axis_tready;
  wire                axis_cdcsync_v1_1_1_s1_axis_tready;
  wire                axis_cdcsync_v1_1_1_s2_axis_tready;
  wire                axis_cdcsync_v1_1_1_m0_axis_tvalid;
  wire       [167:0]  axis_cdcsync_v1_1_1_m0_axis_tdata;
  wire                axis_cdcsync_v1_1_1_m1_axis_tvalid;
  wire       [167:0]  axis_cdcsync_v1_1_1_m1_axis_tdata;
  wire                axis_cdcsync_v1_1_1_m2_axis_tvalid;
  wire       [167:0]  axis_cdcsync_v1_1_1_m2_axis_tdata;
  wire                axis_sg_mux8_v1_0_1_s_axi_awready;
  wire                axis_sg_mux8_v1_0_1_s_axi_wready;
  wire                axis_sg_mux8_v1_0_1_s_axi_bvalid;
  wire       [1:0]    axis_sg_mux8_v1_0_1_s_axi_bresp;
  wire                axis_sg_mux8_v1_0_1_s_axi_arready;
  wire                axis_sg_mux8_v1_0_1_s_axi_rvalid;
  wire       [31:0]   axis_sg_mux8_v1_0_1_s_axi_rdata;
  wire       [1:0]    axis_sg_mux8_v1_0_1_s_axi_rresp;
  wire                axis_sg_mux8_v1_0_1_s_axis_tready;
  wire                axis_sg_mux8_v1_0_1_m_axis_tvalid;
  wire       [255:0]  axis_sg_mux8_v1_0_1_m_axis_tdata;
  wire                axis_sg_mixmux8_v1_0_1_s_axi_awready;
  wire                axis_sg_mixmux8_v1_0_1_s_axi_wready;
  wire                axis_sg_mixmux8_v1_0_1_s_axi_bvalid;
  wire       [1:0]    axis_sg_mixmux8_v1_0_1_s_axi_bresp;
  wire                axis_sg_mixmux8_v1_0_1_s_axi_arready;
  wire                axis_sg_mixmux8_v1_0_1_s_axi_rvalid;
  wire       [31:0]   axis_sg_mixmux8_v1_0_1_s_axi_rdata;
  wire       [1:0]    axis_sg_mixmux8_v1_0_1_s_axi_rresp;
  wire                axis_sg_mixmux8_v1_0_1_s_axis_tready;
  wire                axis_sg_mixmux8_v1_0_1_m_axis_tvalid;
  wire       [127:0]  axis_sg_mixmux8_v1_0_1_m_axis_tdata;
  wire                axis_sg_int4_v2_0_1_s_axi_awready;
  wire                axis_sg_int4_v2_0_1_s_axi_wready;
  wire                axis_sg_int4_v2_0_1_s_axi_bvalid;
  wire       [1:0]    axis_sg_int4_v2_0_1_s_axi_bresp;
  wire                axis_sg_int4_v2_0_1_s_axi_arready;
  wire                axis_sg_int4_v2_0_1_s_axi_rvalid;
  wire       [31:0]   axis_sg_int4_v2_0_1_s_axi_rdata;
  wire       [1:0]    axis_sg_int4_v2_0_1_s_axi_rresp;
  wire                axis_sg_int4_v2_0_1_s0_axis_tready;
  wire                axis_sg_int4_v2_0_1_s1_axis_tready;
  wire                axis_sg_int4_v2_0_1_m_axis_tvalid;
  wire       [127:0]  axis_sg_int4_v2_0_1_m_axis_tdata;
  wire                axis_sg_int4_v2_1_1_s_axi_awready;
  wire                axis_sg_int4_v2_1_1_s_axi_wready;
  wire                axis_sg_int4_v2_1_1_s_axi_bvalid;
  wire       [1:0]    axis_sg_int4_v2_1_1_s_axi_bresp;
  wire                axis_sg_int4_v2_1_1_s_axi_arready;
  wire                axis_sg_int4_v2_1_1_s_axi_rvalid;
  wire       [31:0]   axis_sg_int4_v2_1_1_s_axi_rdata;
  wire       [1:0]    axis_sg_int4_v2_1_1_s_axi_rresp;
  wire                axis_sg_int4_v2_1_1_s0_axis_tready;
  wire                axis_sg_int4_v2_1_1_s1_axis_tready;
  wire                axis_sg_int4_v2_1_1_m_axis_tvalid;
  wire       [127:0]  axis_sg_int4_v2_1_1_m_axis_tdata;
  wire                axis_resampler_2x1_v1_0_1_s_axis_tready;
  wire                axis_resampler_2x1_v1_0_1_m_axis_tvalid;
  wire       [63:0]   axis_resampler_2x1_v1_0_1_m_axis_tdata;
  wire                sg_translator_0_1_s_axis_tready;
  wire                sg_translator_0_1_m_gen_v6_axis_tvalid;
  wire       [159:0]  sg_translator_0_1_m_gen_v6_axis_tdata;
  wire                sg_translator_1_1_s_axis_tready;
  wire                sg_translator_1_1_m_mux4_axis_tvalid;
  wire       [39:0]   sg_translator_1_1_m_mux4_axis_tdata;
  wire                sg_translator_2_1_s_axis_tready;
  wire                sg_translator_2_1_m_gen_v6_axis_tvalid;
  wire       [159:0]  sg_translator_2_1_m_gen_v6_axis_tdata;
  wire                sg_translator_3_1_s_axis_tready;
  wire                sg_translator_3_1_m_gen_v6_axis_tvalid;
  wire       [159:0]  sg_translator_3_1_m_gen_v6_axis_tdata;
  wire                sg_translator_4_1_s_axis_tready;
  wire                sg_translator_4_1_m_gen_v6_axis_tvalid;
  wire       [159:0]  sg_translator_4_1_m_gen_v6_axis_tdata;
  wire                sg_translator_5_1_s_axis_tready;
  wire                sg_translator_5_1_m_mux4_axis_tvalid;
  wire       [39:0]   sg_translator_5_1_m_mux4_axis_tdata;
  wire                sg_translator_6_1_s_axis_tready;
  wire                sg_translator_6_1_m_readout_axis_tvalid;
  wire       [87:0]   sg_translator_6_1_m_readout_axis_tdata;
  wire                m_axis_2_toStream_queue_io_push_ready;
  wire                m_axis_2_toStream_queue_io_pop_valid;
  wire       [167:0]  m_axis_2_toStream_queue_io_pop_payload;
  wire       [1:0]    m_axis_2_toStream_queue_io_pushOccupancy;
  wire       [1:0]    m_axis_2_toStream_queue_io_popOccupancy;
  wire                sg_translator_7_1_s_axis_tready;
  wire                sg_translator_7_1_m_readout_axis_tvalid;
  wire       [87:0]   sg_translator_7_1_m_readout_axis_tdata;
  wire                qick_processor_0_s0_axis_tvalid;
  reg                 qick_processor_0_s0_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s0_axis_tdata;
  wire                qick_processor_0_s1_axis_tvalid;
  reg                 qick_processor_0_s1_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s1_axis_tdata;
  wire                qick_processor_0_s2_axis_tvalid;
  reg                 qick_processor_0_s2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s2_axis_tdata;
  wire                qick_processor_0_s3_axis_tvalid;
  reg                 qick_processor_0_s3_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s3_axis_tdata;
  wire                qick_processor_0_s4_axis_tvalid;
  reg                 qick_processor_0_s4_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s4_axis_tdata;
  wire                qick_processor_0_s5_axis_tvalid;
  reg                 qick_processor_0_s5_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s5_axis_tdata;
  wire                qick_processor_0_s6_axis_tvalid;
  reg                 qick_processor_0_s6_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 204800000" *) wire       [63:0]   qick_processor_0_s6_axis_tdata;
  wire                axis_avg_buffer_0_s_axi_aclk;
  wire                axis_avg_buffer_0_s_axi_aresetn;
  wire                axis_avg_buffer_0_s_axis_aclk;
  wire                axis_avg_buffer_0_s_axis_aresetn;
  wire                axis_avg_buffer_0_m_axis_aclk;
  wire                axis_avg_buffer_0_m_axis_aresetn;
  reg                 axis_avg_buffer_0_m2_axis_tvalid;
  wire                axis_avg_buffer_0_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_0_m2_axis_tdata;
  wire                axis_avg_buffer_1_s_axi_aclk;
  wire                axis_avg_buffer_1_s_axi_aresetn;
  wire                axis_avg_buffer_1_s_axis_aclk;
  wire                axis_avg_buffer_1_s_axis_aresetn;
  wire                axis_avg_buffer_1_m_axis_aclk;
  wire                axis_avg_buffer_1_m_axis_aresetn;
  reg                 axis_avg_buffer_1_m2_axis_tvalid;
  wire                axis_avg_buffer_1_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_1_m2_axis_tdata;
  wire                axis_avg_buffer_2_s_axi_aclk;
  wire                axis_avg_buffer_2_s_axi_aresetn;
  wire                axis_avg_buffer_2_s_axis_aclk;
  wire                axis_avg_buffer_2_s_axis_aresetn;
  wire                axis_avg_buffer_2_m_axis_aclk;
  wire                axis_avg_buffer_2_m_axis_aresetn;
  reg                 axis_avg_buffer_2_m2_axis_tvalid;
  wire                axis_avg_buffer_2_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_2_m2_axis_tdata;
  wire                axis_avg_buffer_3_s_axi_aclk;
  wire                axis_avg_buffer_3_s_axi_aresetn;
  wire                axis_avg_buffer_3_s_axis_aclk;
  wire                axis_avg_buffer_3_s_axis_aresetn;
  wire                axis_avg_buffer_3_m_axis_aclk;
  wire                axis_avg_buffer_3_m_axis_aresetn;
  reg                 axis_avg_buffer_3_m2_axis_tvalid;
  wire                axis_avg_buffer_3_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_3_m2_axis_tdata;
  wire                axis_avg_buffer_4_s_axi_aclk;
  wire                axis_avg_buffer_4_s_axi_aresetn;
  wire                axis_avg_buffer_4_s_axis_aclk;
  wire                axis_avg_buffer_4_s_axis_aresetn;
  wire                axis_avg_buffer_4_m_axis_aclk;
  wire                axis_avg_buffer_4_m_axis_aresetn;
  reg                 axis_avg_buffer_4_m2_axis_tvalid;
  wire                axis_avg_buffer_4_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_4_m2_axis_tdata;
  wire                axis_avg_buffer_5_s_axi_aclk;
  wire                axis_avg_buffer_5_s_axi_aresetn;
  wire                axis_avg_buffer_5_s_axis_aclk;
  wire                axis_avg_buffer_5_s_axis_aresetn;
  wire                axis_avg_buffer_5_m_axis_aclk;
  wire                axis_avg_buffer_5_m_axis_aresetn;
  reg                 axis_avg_buffer_5_m2_axis_tvalid;
  wire                axis_avg_buffer_5_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_5_m2_axis_tdata;
  wire                axis_avg_buffer_6_s_axi_aclk;
  wire                axis_avg_buffer_6_s_axi_aresetn;
  wire                axis_avg_buffer_6_s_axis_aclk;
  wire                axis_avg_buffer_6_s_axis_aresetn;
  wire                axis_avg_buffer_6_m_axis_aclk;
  wire                axis_avg_buffer_6_m_axis_aresetn;
  reg                 axis_avg_buffer_6_m2_axis_tvalid;
  wire                axis_avg_buffer_6_m2_axis_tready;
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) reg        [63:0]   axis_avg_buffer_6_m2_axis_tdata;
  wire                mr_buffer_et_0_s00_axi_aclk;
  wire                mr_buffer_et_0_s00_axi_aresetn;
  wire                mr_buffer_et_0_s00_axis_aclk;
  wire                mr_buffer_et_0_s00_axis_aresetn;
  wire                mr_buffer_et_0_m00_axis_aclk;
  wire                mr_buffer_et_0_m00_axis_aresetn;
  wire                axis_pfb_readout_v3_0_s_axi_aresetn;
  wire                axis_pfb_readout_v3_0_s_axi_aclk;
  wire                axis_pfb_readout_v3_0_aresetn;
  wire                axis_pfb_readout_v3_0_aclk;
  wire                axis_readout_v2_0_s_axi_aclk;
  wire                axis_readout_v2_0_s_axi_aresetn;
  wire                axis_readout_v2_0_aresetn;
  wire                axis_readout_v2_0_aclk;
  wire                axis_readout_v3_0_aclk;
  wire                axis_readout_v3_0_aresetn;
  wire                axis_dyn_readout_v1_0_aresetn;
  wire                axis_dyn_readout_v1_0_aclk;
  wire                axis_signal_gen_v6_0_s_axi_aclk;
  wire                axis_signal_gen_v6_0_s_axi_aresetn;
  wire                axis_signal_gen_v6_0_s0_axis_aclk;
  wire                axis_signal_gen_v6_0_s0_axis_aresetn;
  wire                axis_signal_gen_v6_0_aresetn;
  wire                axis_signal_gen_v6_0_aclk;
  wire                m_axis_toFlow_valid;
  wire       [255:0]  m_axis_toFlow_payload_data;
  reg                 m_axis_toFlow_stage_valid;
  reg        [255:0]  m_axis_toFlow_stage_payload_data;
  reg                 m_axis_toFlow_stage_stage_valid;
  reg        [255:0]  m_axis_toFlow_stage_stage_payload_data;
  reg                 m_axis_toFlow_stage_stage_stage_valid;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_payload_data;
  reg                 m_axis_toFlow_stage_stage_stage_stage_valid;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_payload_data;
  reg                 m_axis_toFlow_stage_stage_stage_stage_stage_valid;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_payload_data;
  reg                 m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data;
  wire                m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid;
  wire                m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_ready;
  wire       [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data;
  wire                axis_signal_gen_v6_1_s_axi_aclk;
  wire                axis_signal_gen_v6_1_s_axi_aresetn;
  wire                axis_signal_gen_v6_1_s0_axis_aclk;
  wire                axis_signal_gen_v6_1_s0_axis_aresetn;
  wire                axis_signal_gen_v6_1_aresetn;
  wire                axis_signal_gen_v6_1_aclk_i;
  wire                m_axis_toFlow_valid_1;
  wire       [255:0]  m_axis_toFlow_payload_data_1;
  reg                 m_axis_toFlow_stage_valid_1;
  reg        [255:0]  m_axis_toFlow_stage_payload_data_1;
  reg                 m_axis_toFlow_stage_stage_valid_1;
  reg        [255:0]  m_axis_toFlow_stage_stage_payload_data_1;
  reg                 m_axis_toFlow_stage_stage_stage_valid_1;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_payload_data_1;
  reg                 m_axis_toFlow_stage_stage_stage_stage_valid_1;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_payload_data_1;
  reg                 m_axis_toFlow_stage_stage_stage_stage_stage_valid_1;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_payload_data_1;
  reg                 m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_1;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data_1;
  wire                m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid_1;
  wire                m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_ready_1;
  wire       [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data_1;
  wire                axis_tmux_v1_0_aresetn;
  wire                axis_tmux_v1_0_aclk;
  wire                axis_cdcsync_v1_1_s_axis_aresetn;
  wire                axis_cdcsync_v1_1_s_axis_aclk;
  wire                axis_cdcsync_v1_1_m_axis_aresetn;
  wire                axis_cdcsync_v1_1_m_axis_aclk;
  wire                axis_sg_mux8_v1_0_s_axi_aresetn;
  wire                axis_sg_mux8_v1_0_s_axi_aclk;
  wire                axis_sg_mux8_v1_0_aclk;
  wire                axis_sg_mux8_v1_0_aresetn;
  wire                m_axis_toFlow_valid_2;
  wire       [255:0]  m_axis_toFlow_payload_data_2;
  reg                 m_axis_toFlow_stage_valid_2;
  reg        [255:0]  m_axis_toFlow_stage_payload_data_2;
  reg                 m_axis_toFlow_stage_stage_valid_2;
  reg        [255:0]  m_axis_toFlow_stage_stage_payload_data_2;
  reg                 m_axis_toFlow_stage_stage_stage_valid_2;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_payload_data_2;
  reg                 m_axis_toFlow_stage_stage_stage_stage_valid_2;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_payload_data_2;
  reg                 m_axis_toFlow_stage_stage_stage_stage_stage_valid_2;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_payload_data_2;
  reg                 m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_2;
  reg        [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data_2;
  wire                m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid_2;
  wire                m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_ready_2;
  wire       [255:0]  m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data_2;
  wire                axis_sg_mixmux8_v1_0_s_axi_aresetn;
  wire                axis_sg_mixmux8_v1_0_s_axi_aclk;
  wire                axis_sg_mixmux8_v1_0_aresetn;
  wire                axis_sg_mixmux8_v1_0_aclk;
  wire                axis_sg_int4_v2_0_s_axi_aclk_i;
  wire                axis_sg_int4_v2_0_s_axi_aresetn;
  wire                axis_sg_int4_v2_0_s0_axis_aclk;
  wire                axis_sg_int4_v2_0_s0_axis_aresetn;
  wire                axis_sg_int4_v2_0_aresetn;
  wire                axis_sg_int4_v2_0_aclk_i;
  wire                axis_sg_int4_v2_1_s_axi_aclk;
  wire                axis_sg_int4_v2_1_s_axi_aresetn;
  wire                axis_sg_int4_v2_1_s0_axis_aclk;
  wire                axis_sg_int4_v2_1_s0_axis_aresetn;
  wire                axis_sg_int4_v2_1_aresetn;
  wire                axis_sg_int4_v2_1_aclk;
  wire                axis_resampler_2x1_v1_0_aclk;
  wire                axis_resampler_2x1_v1_0_aresetn;
  wire                m_axis_s2mPipe_valid;
  reg                 m_axis_s2mPipe_ready;
  wire       [63:0]   m_axis_s2mPipe_payload_data;
  reg                 m_axis_rValidN;
  reg        [63:0]   m_axis_rData_data;
  wire                m_axis_s2mPipe_m2sPipe_valid;
  wire                m_axis_s2mPipe_m2sPipe_ready;
  wire       [63:0]   m_axis_s2mPipe_m2sPipe_payload_data;
  reg                 m_axis_s2mPipe_rValid;
  reg        [63:0]   m_axis_s2mPipe_rData_data;
  wire                when_Stream_l477;
  wire                m_gen_v6_axis_s2mPipe_valid;
  reg                 m_gen_v6_axis_s2mPipe_ready;
  wire       [159:0]  m_gen_v6_axis_s2mPipe_payload_data;
  reg                 m_gen_v6_axis_rValidN;
  reg        [159:0]  m_gen_v6_axis_rData_data;
  wire                m_gen_v6_axis_s2mPipe_m2sPipe_valid;
  wire                m_gen_v6_axis_s2mPipe_m2sPipe_ready;
  wire       [159:0]  m_gen_v6_axis_s2mPipe_m2sPipe_payload_data;
  reg                 m_gen_v6_axis_s2mPipe_rValid;
  reg        [159:0]  m_gen_v6_axis_s2mPipe_rData_data;
  wire                when_Stream_l477_1;
  wire                m_mux4_axis_s2mPipe_valid;
  reg                 m_mux4_axis_s2mPipe_ready;
  wire       [39:0]   m_mux4_axis_s2mPipe_payload_data;
  reg                 m_mux4_axis_rValidN;
  reg        [39:0]   m_mux4_axis_rData_data;
  wire                m_mux4_axis_s2mPipe_m2sPipe_valid;
  wire                m_mux4_axis_s2mPipe_m2sPipe_ready;
  wire       [39:0]   m_mux4_axis_s2mPipe_m2sPipe_payload_data;
  reg                 m_mux4_axis_s2mPipe_rValid;
  reg        [39:0]   m_mux4_axis_s2mPipe_rData_data;
  wire                when_Stream_l477_2;
  wire                m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_valid;
  reg                 m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_ready;
  wire       [39:0]   m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_payload_data;
  reg                 m_mux4_axis_s2mPipe_m2sPipe_rValidN;
  reg        [39:0]   m_mux4_axis_s2mPipe_m2sPipe_rData_data;
  wire                m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_valid;
  wire                m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_ready;
  wire       [39:0]   m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_payload_data;
  reg                 m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rValid;
  reg        [39:0]   m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rData_data;
  wire                when_Stream_l477_3;
  wire                m_axis_0_toStream_valid;
  wire                m_axis_0_toStream_ready;
  wire       [167:0]  m_axis_0_toStream_payload;
  wire                m_axis_0_toStream_transmuted_valid;
  wire                m_axis_0_toStream_transmuted_ready;
  wire       [167:0]  m_axis_0_toStream_transmuted_payload_data;
  wire                m_gen_v6_axis_s2mPipe_valid_1;
  reg                 m_gen_v6_axis_s2mPipe_ready_1;
  wire       [159:0]  m_gen_v6_axis_s2mPipe_payload_data_1;
  reg                 m_gen_v6_axis_rValidN_1;
  reg        [159:0]  m_gen_v6_axis_rData_data_1;
  wire                m_gen_v6_axis_s2mPipe_m2sPipe_valid_1;
  wire                m_gen_v6_axis_s2mPipe_m2sPipe_ready_1;
  wire       [159:0]  m_gen_v6_axis_s2mPipe_m2sPipe_payload_data_1;
  reg                 m_gen_v6_axis_s2mPipe_rValid_1;
  reg        [159:0]  m_gen_v6_axis_s2mPipe_rData_data_1;
  wire                when_Stream_l477_4;
  wire                m_axis_2_toStream_valid;
  wire                m_axis_2_toStream_ready;
  wire       [167:0]  m_axis_2_toStream_payload;
  wire                io_pop_transmuted_valid;
  wire                io_pop_transmuted_ready;
  wire       [167:0]  io_pop_transmuted_payload_data;
  wire                m_axis_3_toStream_valid;
  wire                m_axis_3_toStream_ready;
  wire       [167:0]  m_axis_3_toStream_payload;
  wire                m_axis_3_toStream_transmuted_valid;
  wire                m_axis_3_toStream_transmuted_ready;
  wire       [167:0]  m_axis_3_toStream_transmuted_payload_data;
  wire                m_readout_axis_s2mPipe_valid;
  reg                 m_readout_axis_s2mPipe_ready;
  wire       [87:0]   m_readout_axis_s2mPipe_payload_data;
  reg                 m_readout_axis_rValidN;
  reg        [87:0]   m_readout_axis_rData_data;
  wire                m_readout_axis_s2mPipe_m2sPipe_valid;
  wire                m_readout_axis_s2mPipe_m2sPipe_ready;
  wire       [87:0]   m_readout_axis_s2mPipe_m2sPipe_payload_data;
  reg                 m_readout_axis_s2mPipe_rValid;
  reg        [87:0]   m_readout_axis_s2mPipe_rData_data;
  wire                when_Stream_l477_5;

  qick_processor_0 qickProcessor (
    .c_clk_i             (qick_processor_0_c_clk_i                  ), //i
    .c_resetn            (qick_processor_0_c_resetn                 ), //i
    .t_clk_i             (qickProcessor_t_clk_i                     ), //i
    .t_resetn            (qickProcessor_t_resetn                    ), //i
    .ps_clk_i            (qickProcessor_ps_clk_i                    ), //i
    .ps_resetn           (qickProcessor_ps_resetn                   ), //i
    .proc_start_i        (qick_processor_0_proc_start_i             ), //i
    .proc_stop_i         (qick_processor_0_proc_stop_i              ), //i
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
    .s0_axis_tvalid      (qickProcessor_s0_axis_tvalid              ), //i
    .s0_axis_tready      (qickProcessor_s0_axis_tready              ), //o
    .s0_axis_tdata       (qickProcessor_s0_axis_tdata[63:0]         ), //i
    .s1_axis_tvalid      (qickProcessor_s1_axis_tvalid              ), //i
    .s1_axis_tready      (qickProcessor_s1_axis_tready              ), //o
    .s1_axis_tdata       (qickProcessor_s1_axis_tdata[63:0]         ), //i
    .s2_axis_tvalid      (qickProcessor_s2_axis_tvalid              ), //i
    .s2_axis_tready      (qickProcessor_s2_axis_tready              ), //o
    .s2_axis_tdata       (qickProcessor_s2_axis_tdata[63:0]         ), //i
    .s3_axis_tvalid      (qickProcessor_s3_axis_tvalid              ), //i
    .s3_axis_tready      (qickProcessor_s3_axis_tready              ), //o
    .s3_axis_tdata       (qickProcessor_s3_axis_tdata[63:0]         ), //i
    .s4_axis_tvalid      (qickProcessor_s4_axis_tvalid              ), //i
    .s4_axis_tready      (qickProcessor_s4_axis_tready              ), //o
    .s4_axis_tdata       (qickProcessor_s4_axis_tdata[63:0]         ), //i
    .s5_axis_tvalid      (qickProcessor_s5_axis_tvalid              ), //i
    .s5_axis_tready      (qickProcessor_s5_axis_tready              ), //o
    .s5_axis_tdata       (qickProcessor_s5_axis_tdata[63:0]         ), //i
    .s6_axis_tvalid      (qickProcessor_s6_axis_tvalid              ), //i
    .s6_axis_tready      (qickProcessor_s6_axis_tready              ), //o
    .s6_axis_tdata       (qickProcessor_s6_axis_tdata[63:0]         ), //i
    .m0_axis_tvalid      (qickProcessor_m0_axis_tvalid              ), //o
    .m0_axis_tready      (qickProcessor_m0_axis_tready              ), //i
    .m0_axis_tdata       (qickProcessor_m0_axis_tdata[167:0]        ), //o
    .m1_axis_tvalid      (qickProcessor_m1_axis_tvalid              ), //o
    .m1_axis_tready      (qickProcessor_m1_axis_tready              ), //i
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
    .port_0_dt_o         (qickProcessor_port_0_dt_o[3:0]            )  //o
  );
  AxisAvgBuffer axis_avg_buffer_0_1 (
    .s_axi_awvalid  (axis_avg_buffer_0_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_0_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_0_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_0_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_0_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_0_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_0_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_0_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_0_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_0_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_0_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_0_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_0_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_0_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_0_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_0_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_0_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_0_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_0_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_0_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_0_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_0_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_0_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_0_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_0_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_0_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_0_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_0_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_0_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_0_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_0_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_0_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_0_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_0_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_0_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_0_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC m2_axis_queue (
    .io_push_valid                   (axis_avg_buffer_0_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_io_push_ready                  ), //o
    .io_push_payload_data            (axis_avg_buffer_0_1_m2_axis_tdata[63:0]      ), //i
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
  AxisAvgBuffer_1 axis_avg_buffer_1_1 (
    .s_axi_awvalid  (axis_avg_buffer_1_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_1_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_1_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_1_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_1_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_1_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_1_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_1_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_1_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_1_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_1_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_1_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_1_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_1_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_1_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_1_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_1_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_1_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_1_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_1_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_1_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_1_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_1_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_1_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_1_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_1_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_1_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_1_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_1_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_1_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_1_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_1_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_1_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_1_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_1_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_1_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_1_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_1_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_1_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_1_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_1 (
    .io_push_valid                   (axis_avg_buffer_1_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_1_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_1_1_m2_axis_tdata[63:0]      ), //i
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
  AxisAvgBuffer_2 axis_avg_buffer_2_1 (
    .s_axi_awvalid  (axis_avg_buffer_2_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_2_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_2_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_2_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_2_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_2_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_2_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_2_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_2_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_2_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_2_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_2_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_2_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_2_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_2_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_2_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_2_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_2_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_2_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_2_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_2_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_2_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_2_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_2_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_2_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_2_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_2_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_2_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_2_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_2_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_2_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_2_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_2_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_2_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_2_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_2_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_2_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_2_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_2_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_2_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_2 (
    .io_push_valid                   (axis_avg_buffer_2_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_2_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_2_1_m2_axis_tdata[63:0]      ), //i
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
  AxisAvgBuffer_3 axis_avg_buffer_3_1 (
    .s_axi_awvalid  (axis_avg_buffer_3_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_3_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_3_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_3_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_3_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_3_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_3_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_3_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_3_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_3_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_3_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_3_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_3_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_3_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_3_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_3_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_3_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_3_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_3_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_3_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_3_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_3_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_3_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_3_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_3_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_3_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_3_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_3_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_3_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_3_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_3_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_3_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_3_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_3_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_3_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_3_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_3_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_3_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_3_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_3_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_3 (
    .io_push_valid                   (axis_avg_buffer_3_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_3_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_3_1_m2_axis_tdata[63:0]      ), //i
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
  AxisAvgBuffer_4 axis_avg_buffer_4_1 (
    .s_axi_awvalid  (axis_avg_buffer_4_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_4_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_4_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_4_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_4_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_4_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_4_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_4_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_4_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_4_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_4_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_4_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_4_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_4_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_4_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_4_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_4_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_4_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_4_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_4_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_4_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_4_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_4_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_4_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_4_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_4_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_4_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_4_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_4_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_4_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_4_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_4_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_4_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_4_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_4_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_4_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_4_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_4_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_4_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_4_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_4 (
    .io_push_valid                   (axis_avg_buffer_4_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_4_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_4_1_m2_axis_tdata[63:0]      ), //i
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
  AxisAvgBuffer_5 axis_avg_buffer_5_1 (
    .s_axi_awvalid  (axis_avg_buffer_5_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_5_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_5_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_5_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_5_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_5_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_5_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_5_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_5_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_5_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_5_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_5_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_5_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_5_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_5_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_5_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_5_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_5_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_5_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_5_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_5_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_5_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_5_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_5_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_5_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_5_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_5_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_5_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_5_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_5_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_5_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_5_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_5_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_5_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_5_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_5_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_5_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_5_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_5_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_5_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_5 (
    .io_push_valid                   (axis_avg_buffer_5_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_5_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_5_1_m2_axis_tdata[63:0]      ), //i
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
  AxisAvgBuffer_6 axis_avg_buffer_6_1 (
    .s_axi_awvalid  (axis_avg_buffer_6_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_avg_buffer_6_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_avg_buffer_6_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_avg_buffer_6_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_avg_buffer_6_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_avg_buffer_6_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_avg_buffer_6_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_avg_buffer_6_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_avg_buffer_6_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_avg_buffer_6_s_axi_bready         ), //i
    .s_axi_bresp    (axis_avg_buffer_6_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_avg_buffer_6_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_avg_buffer_6_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_avg_buffer_6_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_avg_buffer_6_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_avg_buffer_6_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_avg_buffer_6_s_axi_rready         ), //i
    .s_axi_rdata    (axis_avg_buffer_6_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_avg_buffer_6_1_s_axi_rresp[1:0]   ), //o
    .s_axi_aclk_i   (axis_avg_buffer_6_1_s_axi_aclk_i       ), //i
    .s_axi_aresetn  (axis_avg_buffer_6_1_s_axi_aresetn      ), //i
    .trigger        (axis_avg_buffer_6_1_trigger            ), //i
    .s_axis_tvalid  (axis_avg_buffer_6_s_axis_tvalid        ), //i
    .s_axis_tready  (axis_avg_buffer_6_1_s_axis_tready      ), //o
    .s_axis_tdata   (axis_avg_buffer_6_s_axis_tdata[31:0]   ), //i
    .s_axis_aclk_i  (axis_avg_buffer_6_1_s_axis_aclk_i      ), //i
    .s_axis_aresetn (axis_avg_buffer_6_1_s_axis_aresetn     ), //i
    .m_axis_aclk_i  (axis_avg_buffer_6_1_m_axis_aclk_i      ), //i
    .m_axis_aresetn (axis_avg_buffer_6_1_m_axis_aresetn     ), //i
    .m0_axis_tvalid (axis_avg_buffer_6_1_m0_axis_tvalid     ), //o
    .m0_axis_tready (axis_avg_buffer_6_m0_axis_tready       ), //i
    .m0_axis_tdata  (axis_avg_buffer_6_1_m0_axis_tdata[63:0]), //o
    .m0_axis_tlast  (axis_avg_buffer_6_1_m0_axis_tlast      ), //o
    .m1_axis_tvalid (axis_avg_buffer_6_1_m1_axis_tvalid     ), //o
    .m1_axis_tready (axis_avg_buffer_6_m1_axis_tready       ), //i
    .m1_axis_tdata  (axis_avg_buffer_6_1_m1_axis_tdata[31:0]), //o
    .m1_axis_tlast  (axis_avg_buffer_6_1_m1_axis_tlast      ), //o
    .m2_axis_tvalid (axis_avg_buffer_6_1_m2_axis_tvalid     ), //o
    .m2_axis_tready (axis_avg_buffer_6_1_m2_axis_tready     ), //i
    .m2_axis_tdata  (axis_avg_buffer_6_1_m2_axis_tdata[63:0])  //o
  );
  StreamFifoCC_1 m2_axis_queue_6 (
    .io_push_valid                   (axis_avg_buffer_6_1_m2_axis_tvalid           ), //i
    .io_push_ready                   (m2_axis_queue_6_io_push_ready                ), //o
    .io_push_payload_data            (axis_avg_buffer_6_1_m2_axis_tdata[63:0]      ), //i
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
  MrBufferV1 mr_buffer_et_0_1 (
    .trigger          (mr_buffer_et_0_1_trigger             ), //i
    .s00_axi_awvalid  (mr_buffer_et_0_s00_axi_awvalid       ), //i
    .s00_axi_awready  (mr_buffer_et_0_1_s00_axi_awready     ), //o
    .s00_axi_awaddr   (mr_buffer_et_0_s00_axi_awaddr[5:0]   ), //i
    .s00_axi_awprot   (mr_buffer_et_0_s00_axi_awprot[2:0]   ), //i
    .s00_axi_wvalid   (mr_buffer_et_0_s00_axi_wvalid        ), //i
    .s00_axi_wready   (mr_buffer_et_0_1_s00_axi_wready      ), //o
    .s00_axi_wdata    (mr_buffer_et_0_s00_axi_wdata[31:0]   ), //i
    .s00_axi_wstrb    (mr_buffer_et_0_s00_axi_wstrb[3:0]    ), //i
    .s00_axi_bvalid   (mr_buffer_et_0_1_s00_axi_bvalid      ), //o
    .s00_axi_bready   (mr_buffer_et_0_s00_axi_bready        ), //i
    .s00_axi_bresp    (mr_buffer_et_0_1_s00_axi_bresp[1:0]  ), //o
    .s00_axi_arvalid  (mr_buffer_et_0_s00_axi_arvalid       ), //i
    .s00_axi_arready  (mr_buffer_et_0_1_s00_axi_arready     ), //o
    .s00_axi_araddr   (mr_buffer_et_0_s00_axi_araddr[5:0]   ), //i
    .s00_axi_arprot   (mr_buffer_et_0_s00_axi_arprot[2:0]   ), //i
    .s00_axi_rvalid   (mr_buffer_et_0_1_s00_axi_rvalid      ), //o
    .s00_axi_rready   (mr_buffer_et_0_s00_axi_rready        ), //i
    .s00_axi_rdata    (mr_buffer_et_0_1_s00_axi_rdata[31:0] ), //o
    .s00_axi_rresp    (mr_buffer_et_0_1_s00_axi_rresp[1:0]  ), //o
    .s00_axi_aclk     (mr_buffer_et_0_1_s00_axi_aclk        ), //i
    .s00_axi_aresetn  (mr_buffer_et_0_1_s00_axi_aresetn     ), //i
    .s00_axis_tvalid  (mr_buffer_et_0_s00_axis_tvalid       ), //i
    .s00_axis_tready  (mr_buffer_et_0_1_s00_axis_tready     ), //o
    .s00_axis_tdata   (mr_buffer_et_0_s00_axis_tdata[255:0] ), //i
    .s00_axis_tstrb   (mr_buffer_et_0_s00_axis_tstrb[31:0]  ), //i
    .s00_axis_tlast   (mr_buffer_et_0_s00_axis_tlast        ), //i
    .s00_axis_aclk    (mr_buffer_et_0_1_s00_axis_aclk       ), //i
    .s00_axis_aresetn (mr_buffer_et_0_1_s00_axis_aresetn    ), //i
    .m00_axis_tvalid  (mr_buffer_et_0_1_m00_axis_tvalid     ), //o
    .m00_axis_tready  (mr_buffer_et_0_m00_axis_tready       ), //i
    .m00_axis_tdata   (mr_buffer_et_0_1_m00_axis_tdata[31:0]), //o
    .m00_axis_tstrb   (mr_buffer_et_0_1_m00_axis_tstrb[3:0] ), //o
    .m00_axis_tlast   (mr_buffer_et_0_1_m00_axis_tlast      ), //o
    .m00_axis_aclk    (mr_buffer_et_0_1_m00_axis_aclk       ), //i
    .m00_axis_aresetn (mr_buffer_et_0_1_m00_axis_aresetn    )  //i
  );
  AxisPfbReadout axis_pfb_readout_v3_0_1 (
    .s_axi_aresetn  (axis_pfb_readout_v3_0_1_s_axi_aresetn      ), //i
    .s_axi_aclk_i   (axis_pfb_readout_v3_0_1_s_axi_aclk_i       ), //i
    .s_axi_awvalid  (axis_pfb_readout_v3_0_s_axi_awvalid        ), //i
    .s_axi_awready  (axis_pfb_readout_v3_0_1_s_axi_awready      ), //o
    .s_axi_awaddr   (axis_pfb_readout_v3_0_s_axi_awaddr[5:0]    ), //i
    .s_axi_awprot   (axis_pfb_readout_v3_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid   (axis_pfb_readout_v3_0_s_axi_wvalid         ), //i
    .s_axi_wready   (axis_pfb_readout_v3_0_1_s_axi_wready       ), //o
    .s_axi_wdata    (axis_pfb_readout_v3_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb    (axis_pfb_readout_v3_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid   (axis_pfb_readout_v3_0_1_s_axi_bvalid       ), //o
    .s_axi_bready   (axis_pfb_readout_v3_0_s_axi_bready         ), //i
    .s_axi_bresp    (axis_pfb_readout_v3_0_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (axis_pfb_readout_v3_0_s_axi_arvalid        ), //i
    .s_axi_arready  (axis_pfb_readout_v3_0_1_s_axi_arready      ), //o
    .s_axi_araddr   (axis_pfb_readout_v3_0_s_axi_araddr[5:0]    ), //i
    .s_axi_arprot   (axis_pfb_readout_v3_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid   (axis_pfb_readout_v3_0_1_s_axi_rvalid       ), //o
    .s_axi_rready   (axis_pfb_readout_v3_0_s_axi_rready         ), //i
    .s_axi_rdata    (axis_pfb_readout_v3_0_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axis_pfb_readout_v3_0_1_s_axi_rresp[1:0]   ), //o
    .aresetn        (axis_pfb_readout_v3_0_1_aresetn            ), //i
    .aclk_i         (axis_pfb_readout_v3_0_1_aclk_i             ), //i
    .s_axis_tvalid  (axis_pfb_readout_v3_0_s_axis_tvalid        ), //i
    .s_axis_tdata   (axis_pfb_readout_v3_0_s_axis_tdata[127:0]  ), //i
    .m0_axis_tvalid (axis_pfb_readout_v3_0_1_m0_axis_tvalid     ), //o
    .m0_axis_tdata  (axis_pfb_readout_v3_0_1_m0_axis_tdata[31:0]), //o
    .m1_axis_tvalid (axis_pfb_readout_v3_0_1_m1_axis_tvalid     ), //o
    .m1_axis_tdata  (axis_pfb_readout_v3_0_1_m1_axis_tdata[31:0]), //o
    .m2_axis_tvalid (axis_pfb_readout_v3_0_1_m2_axis_tvalid     ), //o
    .m2_axis_tdata  (axis_pfb_readout_v3_0_1_m2_axis_tdata[31:0]), //o
    .m3_axis_tvalid (axis_pfb_readout_v3_0_1_m3_axis_tvalid     ), //o
    .m3_axis_tdata  (axis_pfb_readout_v3_0_1_m3_axis_tdata[31:0])  //o
  );
  AxisReadoutV2 axis_readout_v2_0_1 (
    .s_axi_awvalid  (axis_readout_v2_0_s_axi_awvalid         ), //i
    .s_axi_awready  (axis_readout_v2_0_1_s_axi_awready       ), //o
    .s_axi_awaddr   (axis_readout_v2_0_s_axi_awaddr[5:0]     ), //i
    .s_axi_awprot   (axis_readout_v2_0_s_axi_awprot[2:0]     ), //i
    .s_axi_wvalid   (axis_readout_v2_0_s_axi_wvalid          ), //i
    .s_axi_wready   (axis_readout_v2_0_1_s_axi_wready        ), //o
    .s_axi_wdata    (axis_readout_v2_0_s_axi_wdata[31:0]     ), //i
    .s_axi_wstrb    (axis_readout_v2_0_s_axi_wstrb[3:0]      ), //i
    .s_axi_bvalid   (axis_readout_v2_0_1_s_axi_bvalid        ), //o
    .s_axi_bready   (axis_readout_v2_0_s_axi_bready          ), //i
    .s_axi_bresp    (axis_readout_v2_0_1_s_axi_bresp[1:0]    ), //o
    .s_axi_arvalid  (axis_readout_v2_0_s_axi_arvalid         ), //i
    .s_axi_arready  (axis_readout_v2_0_1_s_axi_arready       ), //o
    .s_axi_araddr   (axis_readout_v2_0_s_axi_araddr[5:0]     ), //i
    .s_axi_arprot   (axis_readout_v2_0_s_axi_arprot[2:0]     ), //i
    .s_axi_rvalid   (axis_readout_v2_0_1_s_axi_rvalid        ), //o
    .s_axi_rready   (axis_readout_v2_0_s_axi_rready          ), //i
    .s_axi_rdata    (axis_readout_v2_0_1_s_axi_rdata[31:0]   ), //o
    .s_axi_rresp    (axis_readout_v2_0_1_s_axi_rresp[1:0]    ), //o
    .s_axi_aclk_i   (axis_readout_v2_0_1_s_axi_aclk_i        ), //i
    .s_axi_aresetn  (axis_readout_v2_0_1_s_axi_aresetn       ), //i
    .aresetn        (axis_readout_v2_0_1_aresetn             ), //i
    .aclk_i         (axis_readout_v2_0_1_aclk_i              ), //i
    .s_axis_tvalid  (axis_readout_v2_0_s_axis_tvalid         ), //i
    .s_axis_tready  (axis_readout_v2_0_1_s_axis_tready       ), //o
    .s_axis_tdata   (axis_readout_v2_0_s_axis_tdata[127:0]   ), //i
    .m0_axis_tvalid (axis_readout_v2_0_1_m0_axis_tvalid      ), //o
    .m0_axis_tready (axis_readout_v2_0_m0_axis_tready        ), //i
    .m0_axis_tdata  (axis_readout_v2_0_1_m0_axis_tdata[255:0]), //o
    .m1_axis_tvalid (axis_readout_v2_0_1_m1_axis_tvalid      ), //o
    .m1_axis_tready (axis_readout_v2_0_m1_axis_tready        ), //i
    .m1_axis_tdata  (axis_readout_v2_0_1_m1_axis_tdata[31:0] )  //o
  );
  AxisReadoutV3 axis_readout_v3_0_1 (
    .aclk_i         (axis_readout_v3_0_1_aclk_i             ), //i
    .aresetn        (axis_readout_v3_0_1_aresetn            ), //i
    .s0_axis_tvalid (axis_readout_v3_0_1_s0_axis_tvalid     ), //i
    .s0_axis_tready (axis_readout_v3_0_1_s0_axis_tready     ), //o
    .s0_axis_tdata  (axis_readout_v3_0_1_s0_axis_tdata[87:0]), //i
    .s1_axis_tvalid (axis_readout_v3_0_1_s1_axis_tvalid     ), //i
    .s1_axis_tready (axis_readout_v3_0_1_s1_axis_tready     ), //o
    .s1_axis_tdata  (axis_readout_v3_0_1_s1_axis_tdata[63:0]), //i
    .m_axis_tvalid  (axis_readout_v3_0_1_m_axis_tvalid      ), //o
    .m_axis_tready  (axis_readout_v3_0_m_axis_tready        ), //i
    .m_axis_tdata   (axis_readout_v3_0_1_m_axis_tdata[31:0] )  //o
  );
  AxisDynReadout axis_dyn_readout_v1_0_1 (
    .aresetn        (axis_dyn_readout_v1_0_1_aresetn             ), //i
    .aclk           (axis_dyn_readout_v1_0_1_aclk                ), //i
    .s0_axis_tvalid (axis_dyn_readout_v1_0_1_s0_axis_tvalid      ), //i
    .s0_axis_tready (axis_dyn_readout_v1_0_1_s0_axis_tready      ), //o
    .s0_axis_tdata  (axis_dyn_readout_v1_0_1_s0_axis_tdata[87:0] ), //i
    .s1_axis_tvalid (axis_dyn_readout_v1_0_s1_axis_tvalid        ), //i
    .s1_axis_tready (axis_dyn_readout_v1_0_1_s1_axis_tready      ), //o
    .s1_axis_tdata  (axis_dyn_readout_v1_0_s1_axis_tdata[127:0]  ), //i
    .m0_axis_tvalid (axis_dyn_readout_v1_0_1_m0_axis_tvalid      ), //o
    .m0_axis_tready (axis_dyn_readout_v1_0_m0_axis_tready        ), //i
    .m0_axis_tdata  (axis_dyn_readout_v1_0_1_m0_axis_tdata[255:0]), //o
    .m1_axis_tvalid (axis_dyn_readout_v1_0_1_m1_axis_tvalid      ), //o
    .m1_axis_tready (axis_dyn_readout_v1_0_m1_axis_tready        ), //i
    .m1_axis_tdata  (axis_dyn_readout_v1_0_1_m1_axis_tdata[31:0] )  //o
  );
  AxisSignalGenV6 axis_signal_gen_v6_0_1 (
    .s_axi_aclk_i    (axis_signal_gen_v6_0_1_s_axi_aclk_i        ), //i
    .s_axi_aresetn   (axis_signal_gen_v6_0_1_s_axi_aresetn       ), //i
    .s_axi_awvalid   (axis_signal_gen_v6_0_s_axi_awvalid         ), //i
    .s_axi_awready   (axis_signal_gen_v6_0_1_s_axi_awready       ), //o
    .s_axi_awaddr    (axis_signal_gen_v6_0_s_axi_awaddr[5:0]     ), //i
    .s_axi_awprot    (axis_signal_gen_v6_0_s_axi_awprot[2:0]     ), //i
    .s_axi_wvalid    (axis_signal_gen_v6_0_s_axi_wvalid          ), //i
    .s_axi_wready    (axis_signal_gen_v6_0_1_s_axi_wready        ), //o
    .s_axi_wdata     (axis_signal_gen_v6_0_s_axi_wdata[31:0]     ), //i
    .s_axi_wstrb     (axis_signal_gen_v6_0_s_axi_wstrb[3:0]      ), //i
    .s_axi_bvalid    (axis_signal_gen_v6_0_1_s_axi_bvalid        ), //o
    .s_axi_bready    (axis_signal_gen_v6_0_s_axi_bready          ), //i
    .s_axi_bresp     (axis_signal_gen_v6_0_1_s_axi_bresp[1:0]    ), //o
    .s_axi_arvalid   (axis_signal_gen_v6_0_s_axi_arvalid         ), //i
    .s_axi_arready   (axis_signal_gen_v6_0_1_s_axi_arready       ), //o
    .s_axi_araddr    (axis_signal_gen_v6_0_s_axi_araddr[5:0]     ), //i
    .s_axi_arprot    (axis_signal_gen_v6_0_s_axi_arprot[2:0]     ), //i
    .s_axi_rvalid    (axis_signal_gen_v6_0_1_s_axi_rvalid        ), //o
    .s_axi_rready    (axis_signal_gen_v6_0_s_axi_rready          ), //i
    .s_axi_rdata     (axis_signal_gen_v6_0_1_s_axi_rdata[31:0]   ), //o
    .s_axi_rresp     (axis_signal_gen_v6_0_1_s_axi_rresp[1:0]    ), //o
    .s0_axis_aclk_i  (axis_signal_gen_v6_0_1_s0_axis_aclk_i      ), //i
    .s0_axis_aresetn (axis_signal_gen_v6_0_1_s0_axis_aresetn     ), //i
    .s0_axis_tvalid  (axis_signal_gen_v6_0_s0_axis_tvalid        ), //i
    .s0_axis_tready  (axis_signal_gen_v6_0_1_s0_axis_tready      ), //o
    .s0_axis_tdata   (axis_signal_gen_v6_0_s0_axis_tdata[31:0]   ), //i
    .aresetn         (axis_signal_gen_v6_0_1_aresetn             ), //i
    .aclk_i          (axis_signal_gen_v6_0_1_aclk_i              ), //i
    .s1_axis_tvalid  (axis_signal_gen_v6_0_1_s1_axis_tvalid      ), //i
    .s1_axis_tready  (axis_signal_gen_v6_0_1_s1_axis_tready      ), //o
    .s1_axis_tdata   (axis_signal_gen_v6_0_1_s1_axis_tdata[159:0]), //i
    .m_axis_tvalid   (axis_signal_gen_v6_0_1_m_axis_tvalid       ), //o
    .m_axis_tready   (axis_signal_gen_v6_0_1_m_axis_tready       ), //i
    .m_axis_tdata    (axis_signal_gen_v6_0_1_m_axis_tdata[255:0] )  //o
  );
  AxisSignalGenV6_1 axis_signal_gen_v6_1_1 (
    .s_axi_aclk_i    (axis_signal_gen_v6_1_1_s_axi_aclk_i        ), //i
    .s_axi_aresetn   (axis_signal_gen_v6_1_1_s_axi_aresetn       ), //i
    .s_axi_awvalid   (axis_signal_gen_v6_1_s_axi_awvalid         ), //i
    .s_axi_awready   (axis_signal_gen_v6_1_1_s_axi_awready       ), //o
    .s_axi_awaddr    (axis_signal_gen_v6_1_s_axi_awaddr[5:0]     ), //i
    .s_axi_awprot    (axis_signal_gen_v6_1_s_axi_awprot[2:0]     ), //i
    .s_axi_wvalid    (axis_signal_gen_v6_1_s_axi_wvalid          ), //i
    .s_axi_wready    (axis_signal_gen_v6_1_1_s_axi_wready        ), //o
    .s_axi_wdata     (axis_signal_gen_v6_1_s_axi_wdata[31:0]     ), //i
    .s_axi_wstrb     (axis_signal_gen_v6_1_s_axi_wstrb[3:0]      ), //i
    .s_axi_bvalid    (axis_signal_gen_v6_1_1_s_axi_bvalid        ), //o
    .s_axi_bready    (axis_signal_gen_v6_1_s_axi_bready          ), //i
    .s_axi_bresp     (axis_signal_gen_v6_1_1_s_axi_bresp[1:0]    ), //o
    .s_axi_arvalid   (axis_signal_gen_v6_1_s_axi_arvalid         ), //i
    .s_axi_arready   (axis_signal_gen_v6_1_1_s_axi_arready       ), //o
    .s_axi_araddr    (axis_signal_gen_v6_1_s_axi_araddr[5:0]     ), //i
    .s_axi_arprot    (axis_signal_gen_v6_1_s_axi_arprot[2:0]     ), //i
    .s_axi_rvalid    (axis_signal_gen_v6_1_1_s_axi_rvalid        ), //o
    .s_axi_rready    (axis_signal_gen_v6_1_s_axi_rready          ), //i
    .s_axi_rdata     (axis_signal_gen_v6_1_1_s_axi_rdata[31:0]   ), //o
    .s_axi_rresp     (axis_signal_gen_v6_1_1_s_axi_rresp[1:0]    ), //o
    .s0_axis_aclk_i  (axis_signal_gen_v6_1_1_s0_axis_aclk_i      ), //i
    .s0_axis_aresetn (axis_signal_gen_v6_1_1_s0_axis_aresetn     ), //i
    .s0_axis_tvalid  (axis_signal_gen_v6_1_s0_axis_tvalid        ), //i
    .s0_axis_tready  (axis_signal_gen_v6_1_1_s0_axis_tready      ), //o
    .s0_axis_tdata   (axis_signal_gen_v6_1_s0_axis_tdata[31:0]   ), //i
    .aresetn         (axis_signal_gen_v6_1_1_aresetn             ), //i
    .aclk_i          (axis_signal_gen_v6_1_1_aclk_i              ), //i
    .s1_axis_tvalid  (axis_signal_gen_v6_1_1_s1_axis_tvalid      ), //i
    .s1_axis_tready  (axis_signal_gen_v6_1_1_s1_axis_tready      ), //o
    .s1_axis_tdata   (axis_signal_gen_v6_1_1_s1_axis_tdata[159:0]), //i
    .m_axis_tvalid   (axis_signal_gen_v6_1_1_m_axis_tvalid       ), //o
    .m_axis_tready   (axis_signal_gen_v6_1_1_m_axis_tready       ), //i
    .m_axis_tdata    (axis_signal_gen_v6_1_1_m_axis_tdata[255:0] )  //o
  );
  AxisTMuxV1 axis_tmux_v1_0_1 (
    .aresetn        (axis_tmux_v1_0_1_aresetn             ), //i
    .aclk           (axis_tmux_v1_0_1_aclk                ), //i
    .s_axis_tvalid  (axis_tmux_v1_0_s_axis_tvalid         ), //i
    .s_axis_tready  (axis_tmux_v1_0_1_s_axis_tready       ), //o
    .s_axis_tdata   (axis_tmux_v1_0_s_axis_tdata[167:0]   ), //i
    .m0_axis_tvalid (axis_tmux_v1_0_1_m0_axis_tvalid      ), //o
    .m0_axis_tdata  (axis_tmux_v1_0_1_m0_axis_tdata[167:0]), //o
    .m1_axis_tvalid (axis_tmux_v1_0_1_m1_axis_tvalid      ), //o
    .m1_axis_tdata  (axis_tmux_v1_0_1_m1_axis_tdata[167:0]), //o
    .m2_axis_tvalid (axis_tmux_v1_0_1_m2_axis_tvalid      ), //o
    .m2_axis_tdata  (axis_tmux_v1_0_1_m2_axis_tdata[167:0]), //o
    .m3_axis_tvalid (axis_tmux_v1_0_1_m3_axis_tvalid      ), //o
    .m3_axis_tdata  (axis_tmux_v1_0_1_m3_axis_tdata[167:0])  //o
  );
  AxisCdcsync axis_cdcsync_v1_1_1 (
    .s_axis_aresetn (axis_cdcsync_v1_1_1_s_axis_aresetn      ), //i
    .s_axis_aclk    (axis_cdcsync_v1_1_1_s_axis_aclk         ), //i
    .s0_axis_tvalid (axis_cdcsync_v1_1_s0_axis_tvalid        ), //i
    .s0_axis_tready (axis_cdcsync_v1_1_1_s0_axis_tready      ), //o
    .s0_axis_tdata  (axis_cdcsync_v1_1_s0_axis_tdata[167:0]  ), //i
    .s1_axis_tvalid (axis_cdcsync_v1_1_s1_axis_tvalid        ), //i
    .s1_axis_tready (axis_cdcsync_v1_1_1_s1_axis_tready      ), //o
    .s1_axis_tdata  (axis_cdcsync_v1_1_s1_axis_tdata[167:0]  ), //i
    .s2_axis_tvalid (axis_cdcsync_v1_1_s2_axis_tvalid        ), //i
    .s2_axis_tready (axis_cdcsync_v1_1_1_s2_axis_tready      ), //o
    .s2_axis_tdata  (axis_cdcsync_v1_1_s2_axis_tdata[167:0]  ), //i
    .m_axis_aresetn (axis_cdcsync_v1_1_1_m_axis_aresetn      ), //i
    .m_axis_aclk    (axis_cdcsync_v1_1_1_m_axis_aclk         ), //i
    .m0_axis_tvalid (axis_cdcsync_v1_1_1_m0_axis_tvalid      ), //o
    .m0_axis_tready (axis_cdcsync_v1_1_1_m0_axis_tready      ), //i
    .m0_axis_tdata  (axis_cdcsync_v1_1_1_m0_axis_tdata[167:0]), //o
    .m1_axis_tvalid (axis_cdcsync_v1_1_1_m1_axis_tvalid      ), //o
    .m1_axis_tready (axis_cdcsync_v1_1_1_m1_axis_tready      ), //i
    .m1_axis_tdata  (axis_cdcsync_v1_1_1_m1_axis_tdata[167:0]), //o
    .m2_axis_tvalid (axis_cdcsync_v1_1_1_m2_axis_tvalid      ), //o
    .m2_axis_tready (axis_cdcsync_v1_1_1_m2_axis_tready      ), //i
    .m2_axis_tdata  (axis_cdcsync_v1_1_1_m2_axis_tdata[167:0])  //o
  );
  AxisSgMux8 axis_sg_mux8_v1_0_1 (
    .s_axi_aresetn (axis_sg_mux8_v1_0_1_s_axi_aresetn      ), //i
    .s_axi_aclk_i  (axis_sg_mux8_v1_0_1_s_axi_aclk_i       ), //i
    .s_axi_awvalid (axis_sg_mux8_v1_0_s_axi_awvalid        ), //i
    .s_axi_awready (axis_sg_mux8_v1_0_1_s_axi_awready      ), //o
    .s_axi_awaddr  (axis_sg_mux8_v1_0_s_axi_awaddr[7:0]    ), //i
    .s_axi_awprot  (axis_sg_mux8_v1_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid  (axis_sg_mux8_v1_0_s_axi_wvalid         ), //i
    .s_axi_wready  (axis_sg_mux8_v1_0_1_s_axi_wready       ), //o
    .s_axi_wdata   (axis_sg_mux8_v1_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb   (axis_sg_mux8_v1_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid  (axis_sg_mux8_v1_0_1_s_axi_bvalid       ), //o
    .s_axi_bready  (axis_sg_mux8_v1_0_s_axi_bready         ), //i
    .s_axi_bresp   (axis_sg_mux8_v1_0_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid (axis_sg_mux8_v1_0_s_axi_arvalid        ), //i
    .s_axi_arready (axis_sg_mux8_v1_0_1_s_axi_arready      ), //o
    .s_axi_araddr  (axis_sg_mux8_v1_0_s_axi_araddr[7:0]    ), //i
    .s_axi_arprot  (axis_sg_mux8_v1_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid  (axis_sg_mux8_v1_0_1_s_axi_rvalid       ), //o
    .s_axi_rready  (axis_sg_mux8_v1_0_s_axi_rready         ), //i
    .s_axi_rdata   (axis_sg_mux8_v1_0_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp   (axis_sg_mux8_v1_0_1_s_axi_rresp[1:0]   ), //o
    .aclk_i        (axis_sg_mux8_v1_0_1_aclk_i             ), //i
    .aresetn       (axis_sg_mux8_v1_0_1_aresetn            ), //i
    .s_axis_tvalid (axis_sg_mux8_v1_0_1_s_axis_tvalid      ), //i
    .s_axis_tready (axis_sg_mux8_v1_0_1_s_axis_tready      ), //o
    .s_axis_tdata  (axis_sg_mux8_v1_0_1_s_axis_tdata[39:0] ), //i
    .m_axis_tvalid (axis_sg_mux8_v1_0_1_m_axis_tvalid      ), //o
    .m_axis_tready (axis_sg_mux8_v1_0_1_m_axis_tready      ), //i
    .m_axis_tdata  (axis_sg_mux8_v1_0_1_m_axis_tdata[255:0])  //o
  );
  AxisSgMixMux8 axis_sg_mixmux8_v1_0_1 (
    .s_axi_aresetn (axis_sg_mixmux8_v1_0_1_s_axi_aresetn      ), //i
    .s_axi_aclk_i  (axis_sg_mixmux8_v1_0_1_s_axi_aclk_i       ), //i
    .s_axi_awvalid (axis_sg_mixmux8_v1_0_s_axi_awvalid        ), //i
    .s_axi_awready (axis_sg_mixmux8_v1_0_1_s_axi_awready      ), //o
    .s_axi_awaddr  (axis_sg_mixmux8_v1_0_s_axi_awaddr[7:0]    ), //i
    .s_axi_awprot  (axis_sg_mixmux8_v1_0_s_axi_awprot[2:0]    ), //i
    .s_axi_wvalid  (axis_sg_mixmux8_v1_0_s_axi_wvalid         ), //i
    .s_axi_wready  (axis_sg_mixmux8_v1_0_1_s_axi_wready       ), //o
    .s_axi_wdata   (axis_sg_mixmux8_v1_0_s_axi_wdata[31:0]    ), //i
    .s_axi_wstrb   (axis_sg_mixmux8_v1_0_s_axi_wstrb[3:0]     ), //i
    .s_axi_bvalid  (axis_sg_mixmux8_v1_0_1_s_axi_bvalid       ), //o
    .s_axi_bready  (axis_sg_mixmux8_v1_0_s_axi_bready         ), //i
    .s_axi_bresp   (axis_sg_mixmux8_v1_0_1_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid (axis_sg_mixmux8_v1_0_s_axi_arvalid        ), //i
    .s_axi_arready (axis_sg_mixmux8_v1_0_1_s_axi_arready      ), //o
    .s_axi_araddr  (axis_sg_mixmux8_v1_0_s_axi_araddr[7:0]    ), //i
    .s_axi_arprot  (axis_sg_mixmux8_v1_0_s_axi_arprot[2:0]    ), //i
    .s_axi_rvalid  (axis_sg_mixmux8_v1_0_1_s_axi_rvalid       ), //o
    .s_axi_rready  (axis_sg_mixmux8_v1_0_s_axi_rready         ), //i
    .s_axi_rdata   (axis_sg_mixmux8_v1_0_1_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp   (axis_sg_mixmux8_v1_0_1_s_axi_rresp[1:0]   ), //o
    .aresetn       (axis_sg_mixmux8_v1_0_1_aresetn            ), //i
    .aclk_i        (axis_sg_mixmux8_v1_0_1_aclk_i             ), //i
    .s_axis_tvalid (axis_sg_mixmux8_v1_0_1_s_axis_tvalid      ), //i
    .s_axis_tready (axis_sg_mixmux8_v1_0_1_s_axis_tready      ), //o
    .s_axis_tdata  (axis_sg_mixmux8_v1_0_1_s_axis_tdata[39:0] ), //i
    .m_axis_tvalid (axis_sg_mixmux8_v1_0_1_m_axis_tvalid      ), //o
    .m_axis_tready (axis_sg_mixmux8_v1_0_m_axis_tready        ), //i
    .m_axis_tdata  (axis_sg_mixmux8_v1_0_1_m_axis_tdata[127:0])  //o
  );
  AxisSgInt4 axis_sg_int4_v2_0_1 (
    .s_axi_awvalid   (axis_sg_int4_v2_0_s_axi_awvalid         ), //i
    .s_axi_awready   (axis_sg_int4_v2_0_1_s_axi_awready       ), //o
    .s_axi_awaddr    (axis_sg_int4_v2_0_s_axi_awaddr[5:0]     ), //i
    .s_axi_awprot    (axis_sg_int4_v2_0_s_axi_awprot[2:0]     ), //i
    .s_axi_wvalid    (axis_sg_int4_v2_0_s_axi_wvalid          ), //i
    .s_axi_wready    (axis_sg_int4_v2_0_1_s_axi_wready        ), //o
    .s_axi_wdata     (axis_sg_int4_v2_0_s_axi_wdata[31:0]     ), //i
    .s_axi_wstrb     (axis_sg_int4_v2_0_s_axi_wstrb[3:0]      ), //i
    .s_axi_bvalid    (axis_sg_int4_v2_0_1_s_axi_bvalid        ), //o
    .s_axi_bready    (axis_sg_int4_v2_0_s_axi_bready          ), //i
    .s_axi_bresp     (axis_sg_int4_v2_0_1_s_axi_bresp[1:0]    ), //o
    .s_axi_arvalid   (axis_sg_int4_v2_0_s_axi_arvalid         ), //i
    .s_axi_arready   (axis_sg_int4_v2_0_1_s_axi_arready       ), //o
    .s_axi_araddr    (axis_sg_int4_v2_0_s_axi_araddr[5:0]     ), //i
    .s_axi_arprot    (axis_sg_int4_v2_0_s_axi_arprot[2:0]     ), //i
    .s_axi_rvalid    (axis_sg_int4_v2_0_1_s_axi_rvalid        ), //o
    .s_axi_rready    (axis_sg_int4_v2_0_s_axi_rready          ), //i
    .s_axi_rdata     (axis_sg_int4_v2_0_1_s_axi_rdata[31:0]   ), //o
    .s_axi_rresp     (axis_sg_int4_v2_0_1_s_axi_rresp[1:0]    ), //o
    .s_axi_aclk_i    (axis_sg_int4_v2_0_1_s_axi_aclk_i        ), //i
    .s_axi_aresetn   (axis_sg_int4_v2_0_1_s_axi_aresetn       ), //i
    .s0_axis_tvalid  (axis_sg_int4_v2_0_s0_axis_tvalid        ), //i
    .s0_axis_tready  (axis_sg_int4_v2_0_1_s0_axis_tready      ), //o
    .s0_axis_tdata   (axis_sg_int4_v2_0_s0_axis_tdata[31:0]   ), //i
    .s0_axis_aclk    (axis_sg_int4_v2_0_1_s0_axis_aclk        ), //i
    .s0_axis_aresetn (axis_sg_int4_v2_0_1_s0_axis_aresetn     ), //i
    .aresetn         (axis_sg_int4_v2_0_1_aresetn             ), //i
    .aclk_i          (axis_sg_int4_v2_0_1_aclk_i              ), //i
    .s1_axis_tvalid  (axis_sg_int4_v2_0_1_s1_axis_tvalid      ), //i
    .s1_axis_tready  (axis_sg_int4_v2_0_1_s1_axis_tready      ), //o
    .s1_axis_tdata   (axis_sg_int4_v2_0_1_s1_axis_tdata[159:0]), //i
    .m_axis_tvalid   (axis_sg_int4_v2_0_1_m_axis_tvalid       ), //o
    .m_axis_tready   (axis_sg_int4_v2_0_m_axis_tready         ), //i
    .m_axis_tdata    (axis_sg_int4_v2_0_1_m_axis_tdata[127:0] )  //o
  );
  AxisSgInt4_1 axis_sg_int4_v2_1_1 (
    .s_axi_awvalid   (axis_sg_int4_v2_1_s_axi_awvalid         ), //i
    .s_axi_awready   (axis_sg_int4_v2_1_1_s_axi_awready       ), //o
    .s_axi_awaddr    (axis_sg_int4_v2_1_s_axi_awaddr[5:0]     ), //i
    .s_axi_awprot    (axis_sg_int4_v2_1_s_axi_awprot[2:0]     ), //i
    .s_axi_wvalid    (axis_sg_int4_v2_1_s_axi_wvalid          ), //i
    .s_axi_wready    (axis_sg_int4_v2_1_1_s_axi_wready        ), //o
    .s_axi_wdata     (axis_sg_int4_v2_1_s_axi_wdata[31:0]     ), //i
    .s_axi_wstrb     (axis_sg_int4_v2_1_s_axi_wstrb[3:0]      ), //i
    .s_axi_bvalid    (axis_sg_int4_v2_1_1_s_axi_bvalid        ), //o
    .s_axi_bready    (axis_sg_int4_v2_1_s_axi_bready          ), //i
    .s_axi_bresp     (axis_sg_int4_v2_1_1_s_axi_bresp[1:0]    ), //o
    .s_axi_arvalid   (axis_sg_int4_v2_1_s_axi_arvalid         ), //i
    .s_axi_arready   (axis_sg_int4_v2_1_1_s_axi_arready       ), //o
    .s_axi_araddr    (axis_sg_int4_v2_1_s_axi_araddr[5:0]     ), //i
    .s_axi_arprot    (axis_sg_int4_v2_1_s_axi_arprot[2:0]     ), //i
    .s_axi_rvalid    (axis_sg_int4_v2_1_1_s_axi_rvalid        ), //o
    .s_axi_rready    (axis_sg_int4_v2_1_s_axi_rready          ), //i
    .s_axi_rdata     (axis_sg_int4_v2_1_1_s_axi_rdata[31:0]   ), //o
    .s_axi_rresp     (axis_sg_int4_v2_1_1_s_axi_rresp[1:0]    ), //o
    .s_axi_aclk_i    (axis_sg_int4_v2_1_1_s_axi_aclk_i        ), //i
    .s_axi_aresetn   (axis_sg_int4_v2_1_1_s_axi_aresetn       ), //i
    .s0_axis_tvalid  (axis_sg_int4_v2_1_s0_axis_tvalid        ), //i
    .s0_axis_tready  (axis_sg_int4_v2_1_1_s0_axis_tready      ), //o
    .s0_axis_tdata   (axis_sg_int4_v2_1_s0_axis_tdata[31:0]   ), //i
    .s0_axis_aclk    (axis_sg_int4_v2_1_1_s0_axis_aclk        ), //i
    .s0_axis_aresetn (axis_sg_int4_v2_1_1_s0_axis_aresetn     ), //i
    .aresetn         (axis_sg_int4_v2_1_1_aresetn             ), //i
    .aclk_i          (axis_sg_int4_v2_1_1_aclk_i              ), //i
    .s1_axis_tvalid  (axis_sg_int4_v2_1_1_s1_axis_tvalid      ), //i
    .s1_axis_tready  (axis_sg_int4_v2_1_1_s1_axis_tready      ), //o
    .s1_axis_tdata   (axis_sg_int4_v2_1_1_s1_axis_tdata[159:0]), //i
    .m_axis_tvalid   (axis_sg_int4_v2_1_1_m_axis_tvalid       ), //o
    .m_axis_tready   (axis_sg_int4_v2_1_m_axis_tready         ), //i
    .m_axis_tdata    (axis_sg_int4_v2_1_1_m_axis_tdata[127:0] )  //o
  );
  AxisResampler axis_resampler_2x1_v1_0_1 (
    .aclk          (axis_resampler_2x1_v1_0_1_aclk              ), //i
    .aresetn       (axis_resampler_2x1_v1_0_1_aresetn           ), //i
    .s_axis_tvalid (axis_resampler_2x1_v1_0_s_axis_tvalid       ), //i
    .s_axis_tready (axis_resampler_2x1_v1_0_1_s_axis_tready     ), //o
    .s_axis_tdata  (axis_resampler_2x1_v1_0_s_axis_tdata[127:0] ), //i
    .m_axis_tvalid (axis_resampler_2x1_v1_0_1_m_axis_tvalid     ), //o
    .m_axis_tready (axis_resampler_2x1_v1_0_1_m_axis_tready     ), //i
    .m_axis_tdata  (axis_resampler_2x1_v1_0_1_m_axis_tdata[63:0])  //o
  );
  sg_translator_0 sg_translator_0_1 (
    .aresetn              (rst_dac2                                    ), //i
    .aclk                 (clk_dac2                                    ), //i
    .s_axis_tvalid        (qickProcessor_m0_axis_tvalid                ), //i
    .s_axis_tready        (sg_translator_0_1_s_axis_tready             ), //o
    .s_axis_tdata         (qickProcessor_m0_axis_tdata[167:0]          ), //i
    .m_gen_v6_axis_tvalid (sg_translator_0_1_m_gen_v6_axis_tvalid      ), //o
    .m_gen_v6_axis_tready (m_gen_v6_axis_rValidN                       ), //i
    .m_gen_v6_axis_tdata  (sg_translator_0_1_m_gen_v6_axis_tdata[159:0])  //o
  );
  sg_translator_1 sg_translator_1_1 (
    .aresetn            (rst_dac2                                 ), //i
    .aclk               (clk_dac2                                 ), //i
    .s_axis_tvalid      (qickProcessor_m1_axis_tvalid             ), //i
    .s_axis_tready      (sg_translator_1_1_s_axis_tready          ), //o
    .s_axis_tdata       (qickProcessor_m1_axis_tdata[167:0]       ), //i
    .m_mux4_axis_tvalid (sg_translator_1_1_m_mux4_axis_tvalid     ), //o
    .m_mux4_axis_tready (m_mux4_axis_rValidN                      ), //i
    .m_mux4_axis_tdata  (sg_translator_1_1_m_mux4_axis_tdata[39:0])  //o
  );
  sg_translator_2 sg_translator_2_1 (
    .aresetn              (rst_dac2                                        ), //i
    .aclk                 (clk_dac2                                        ), //i
    .s_axis_tvalid        (m_axis_0_toStream_transmuted_valid              ), //i
    .s_axis_tready        (sg_translator_2_1_s_axis_tready                 ), //o
    .s_axis_tdata         (m_axis_0_toStream_transmuted_payload_data[167:0]), //i
    .m_gen_v6_axis_tvalid (sg_translator_2_1_m_gen_v6_axis_tvalid          ), //o
    .m_gen_v6_axis_tready (m_gen_v6_axis_rValidN_1                         ), //i
    .m_gen_v6_axis_tdata  (sg_translator_2_1_m_gen_v6_axis_tdata[159:0]    )  //o
  );
  sg_translator_3 sg_translator_3_1 (
    .aresetn              (rst_dac3                                    ), //i
    .aclk                 (clk_dac3                                    ), //i
    .s_axis_tvalid        (axis_cdcsync_v1_1_1_m0_axis_tvalid          ), //i
    .s_axis_tready        (sg_translator_3_1_s_axis_tready             ), //o
    .s_axis_tdata         (axis_cdcsync_v1_1_1_m0_axis_tdata[167:0]    ), //i
    .m_gen_v6_axis_tvalid (sg_translator_3_1_m_gen_v6_axis_tvalid      ), //o
    .m_gen_v6_axis_tready (axis_sg_int4_v2_0_1_s1_axis_tready          ), //i
    .m_gen_v6_axis_tdata  (sg_translator_3_1_m_gen_v6_axis_tdata[159:0])  //o
  );
  sg_translator_4 sg_translator_4_1 (
    .aresetn              (rst_dac3                                    ), //i
    .aclk                 (clk_dac3                                    ), //i
    .s_axis_tvalid        (axis_cdcsync_v1_1_1_m1_axis_tvalid          ), //i
    .s_axis_tready        (sg_translator_4_1_s_axis_tready             ), //o
    .s_axis_tdata         (axis_cdcsync_v1_1_1_m1_axis_tdata[167:0]    ), //i
    .m_gen_v6_axis_tvalid (sg_translator_4_1_m_gen_v6_axis_tvalid      ), //o
    .m_gen_v6_axis_tready (axis_sg_int4_v2_1_1_s1_axis_tready          ), //i
    .m_gen_v6_axis_tdata  (sg_translator_4_1_m_gen_v6_axis_tdata[159:0])  //o
  );
  sg_translator_5 sg_translator_5_1 (
    .aresetn            (rst_dac3                                 ), //i
    .aclk               (clk_dac3                                 ), //i
    .s_axis_tvalid      (axis_cdcsync_v1_1_1_m2_axis_tvalid       ), //i
    .s_axis_tready      (sg_translator_5_1_s_axis_tready          ), //o
    .s_axis_tdata       (axis_cdcsync_v1_1_1_m2_axis_tdata[167:0] ), //i
    .m_mux4_axis_tvalid (sg_translator_5_1_m_mux4_axis_tvalid     ), //o
    .m_mux4_axis_tready (axis_sg_mixmux8_v1_0_1_s_axis_tready     ), //i
    .m_mux4_axis_tdata  (sg_translator_5_1_m_mux4_axis_tdata[39:0])  //o
  );
  sg_translator_6 sg_translator_6_1 (
    .aresetn               (rst_adc2                                    ), //i
    .aclk                  (clk_adc2                                    ), //i
    .s_axis_tvalid         (io_pop_transmuted_valid                     ), //i
    .s_axis_tready         (sg_translator_6_1_s_axis_tready             ), //o
    .s_axis_tdata          (io_pop_transmuted_payload_data[167:0]       ), //i
    .m_readout_axis_tvalid (sg_translator_6_1_m_readout_axis_tvalid     ), //o
    .m_readout_axis_tready (axis_dyn_readout_v1_0_1_s0_axis_tready      ), //i
    .m_readout_axis_tdata  (sg_translator_6_1_m_readout_axis_tdata[87:0])  //o
  );
  StreamFifoCC_7 m_axis_2_toStream_queue (
    .io_push_valid    (m_axis_2_toStream_valid                      ), //i
    .io_push_ready    (m_axis_2_toStream_queue_io_push_ready        ), //o
    .io_push_payload  (m_axis_2_toStream_payload[167:0]             ), //i
    .io_pop_valid     (m_axis_2_toStream_queue_io_pop_valid         ), //o
    .io_pop_ready     (io_pop_transmuted_ready                      ), //i
    .io_pop_payload   (m_axis_2_toStream_queue_io_pop_payload[167:0]), //o
    .io_pushOccupancy (m_axis_2_toStream_queue_io_pushOccupancy[1:0]), //o
    .io_popOccupancy  (m_axis_2_toStream_queue_io_popOccupancy[1:0] ), //o
    .clk_dac2         (clk_dac2                                     ), //i
    .rst_dac2         (rst_dac2                                     ), //i
    .clk_adc2         (clk_adc2                                     )  //i
  );
  sg_translator_7 sg_translator_7_1 (
    .aresetn               (rst_dac2                                        ), //i
    .aclk                  (clk_dac2                                        ), //i
    .s_axis_tvalid         (m_axis_3_toStream_transmuted_valid              ), //i
    .s_axis_tready         (sg_translator_7_1_s_axis_tready                 ), //o
    .s_axis_tdata          (m_axis_3_toStream_transmuted_payload_data[167:0]), //i
    .m_readout_axis_tvalid (sg_translator_7_1_m_readout_axis_tvalid         ), //o
    .m_readout_axis_tready (m_readout_axis_rValidN                          ), //i
    .m_readout_axis_tdata  (sg_translator_7_1_m_readout_axis_tdata[87:0]    )  //o
  );
  always @(*) begin
    qickProcessor_t_clk_i = qick_processor_0_t_clk_i;
    qickProcessor_t_clk_i = clk_dac2;
  end

  always @(*) begin
    qickProcessor_t_resetn = qick_processor_0_t_resetn;
    qickProcessor_t_resetn = rst_dac2;
  end

  always @(*) begin
    qickProcessor_ps_clk_i = qick_processor_0_ps_clk_i;
    qickProcessor_ps_clk_i = clk_pl;
  end

  always @(*) begin
    qickProcessor_ps_resetn = qick_processor_0_ps_resetn;
    qickProcessor_ps_resetn = rst_100;
  end

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
  always @(*) begin
    qickProcessor_s0_axis_tvalid = qick_processor_0_s0_axis_tvalid;
    qickProcessor_s0_axis_tvalid = m2_axis_queue_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s0_axis_tready = qickProcessor_s0_axis_tready;
    qick_processor_0_s0_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s0_axis_tdata = qick_processor_0_s0_axis_tdata;
    qickProcessor_s0_axis_tdata = m2_axis_queue_io_pop_payload_data;
  end

  always @(*) begin
    qickProcessor_s1_axis_tvalid = qick_processor_0_s1_axis_tvalid;
    qickProcessor_s1_axis_tvalid = m2_axis_queue_1_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s1_axis_tready = qickProcessor_s1_axis_tready;
    qick_processor_0_s1_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s1_axis_tdata = qick_processor_0_s1_axis_tdata;
    qickProcessor_s1_axis_tdata = m2_axis_queue_1_io_pop_payload_data;
  end

  always @(*) begin
    qickProcessor_s2_axis_tvalid = qick_processor_0_s2_axis_tvalid;
    qickProcessor_s2_axis_tvalid = m2_axis_queue_2_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s2_axis_tready = qickProcessor_s2_axis_tready;
    qick_processor_0_s2_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s2_axis_tdata = qick_processor_0_s2_axis_tdata;
    qickProcessor_s2_axis_tdata = m2_axis_queue_2_io_pop_payload_data;
  end

  always @(*) begin
    qickProcessor_s3_axis_tvalid = qick_processor_0_s3_axis_tvalid;
    qickProcessor_s3_axis_tvalid = m2_axis_queue_3_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s3_axis_tready = qickProcessor_s3_axis_tready;
    qick_processor_0_s3_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s3_axis_tdata = qick_processor_0_s3_axis_tdata;
    qickProcessor_s3_axis_tdata = m2_axis_queue_3_io_pop_payload_data;
  end

  always @(*) begin
    qickProcessor_s4_axis_tvalid = qick_processor_0_s4_axis_tvalid;
    qickProcessor_s4_axis_tvalid = m2_axis_queue_4_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s4_axis_tready = qickProcessor_s4_axis_tready;
    qick_processor_0_s4_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s4_axis_tdata = qick_processor_0_s4_axis_tdata;
    qickProcessor_s4_axis_tdata = m2_axis_queue_4_io_pop_payload_data;
  end

  always @(*) begin
    qickProcessor_s5_axis_tvalid = qick_processor_0_s5_axis_tvalid;
    qickProcessor_s5_axis_tvalid = m2_axis_queue_5_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s5_axis_tready = qickProcessor_s5_axis_tready;
    qick_processor_0_s5_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s5_axis_tdata = qick_processor_0_s5_axis_tdata;
    qickProcessor_s5_axis_tdata = m2_axis_queue_5_io_pop_payload_data;
  end

  always @(*) begin
    qickProcessor_s6_axis_tvalid = qick_processor_0_s6_axis_tvalid;
    qickProcessor_s6_axis_tvalid = m2_axis_queue_6_io_pop_valid;
  end

  always @(*) begin
    qick_processor_0_s6_axis_tready = qickProcessor_s6_axis_tready;
    qick_processor_0_s6_axis_tready = 1'bx;
  end

  always @(*) begin
    qickProcessor_s6_axis_tdata = qick_processor_0_s6_axis_tdata;
    qickProcessor_s6_axis_tdata = m2_axis_queue_6_io_pop_payload_data;
  end

  assign qick_processor_0_m0_axis_tvalid = qickProcessor_m0_axis_tvalid;
  always @(*) begin
    qickProcessor_m0_axis_tready = qick_processor_0_m0_axis_tready;
    qickProcessor_m0_axis_tready = sg_translator_0_1_s_axis_tready;
  end

  assign qick_processor_0_m0_axis_tdata = qickProcessor_m0_axis_tdata;
  assign qick_processor_0_m1_axis_tvalid = qickProcessor_m1_axis_tvalid;
  always @(*) begin
    qickProcessor_m1_axis_tready = qick_processor_0_m1_axis_tready;
    qickProcessor_m1_axis_tready = sg_translator_1_1_s_axis_tready;
  end

  assign qick_processor_0_m1_axis_tdata = qickProcessor_m1_axis_tdata;
  assign qick_processor_0_m2_axis_tvalid = qickProcessor_m2_axis_tvalid;
  assign qick_processor_0_m2_axis_tdata = qickProcessor_m2_axis_tdata;
  assign qick_processor_0_m3_axis_tvalid = qickProcessor_m3_axis_tvalid;
  assign qick_processor_0_m3_axis_tdata = qickProcessor_m3_axis_tdata;
  assign qick_processor_0_m4_axis_tvalid = qickProcessor_m4_axis_tvalid;
  assign qick_processor_0_m4_axis_tdata = qickProcessor_m4_axis_tdata;
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
  assign qick_processor_0_port_0_dt_o = qickProcessor_port_0_dt_o;
  assign axis_avg_buffer_0_s_axi_awready = axis_avg_buffer_0_1_s_axi_awready;
  assign axis_avg_buffer_0_s_axi_wready = axis_avg_buffer_0_1_s_axi_wready;
  assign axis_avg_buffer_0_s_axi_bvalid = axis_avg_buffer_0_1_s_axi_bvalid;
  assign axis_avg_buffer_0_s_axi_bresp = axis_avg_buffer_0_1_s_axi_bresp;
  assign axis_avg_buffer_0_s_axi_arready = axis_avg_buffer_0_1_s_axi_arready;
  assign axis_avg_buffer_0_s_axi_rvalid = axis_avg_buffer_0_1_s_axi_rvalid;
  assign axis_avg_buffer_0_s_axi_rdata = axis_avg_buffer_0_1_s_axi_rdata;
  assign axis_avg_buffer_0_s_axi_rresp = axis_avg_buffer_0_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_0_1_s_axi_aclk_i = axis_avg_buffer_0_s_axi_aclk;
    axis_avg_buffer_0_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_0_1_s_axi_aresetn = axis_avg_buffer_0_s_axi_aresetn;
    axis_avg_buffer_0_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_0_1_trigger = axis_avg_buffer_0_trigger;
    axis_avg_buffer_0_1_trigger = qickProcessor_trig_10_o;
  end

  assign axis_avg_buffer_0_s_axis_tready = axis_avg_buffer_0_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_0_1_s_axis_aclk_i = axis_avg_buffer_0_s_axis_aclk;
    axis_avg_buffer_0_1_s_axis_aclk_i = clk_adc2;
  end

  always @(*) begin
    axis_avg_buffer_0_1_s_axis_aresetn = axis_avg_buffer_0_s_axis_aresetn;
    axis_avg_buffer_0_1_s_axis_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_avg_buffer_0_1_m_axis_aclk_i = axis_avg_buffer_0_m_axis_aclk;
    axis_avg_buffer_0_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_0_1_m_axis_aresetn = axis_avg_buffer_0_m_axis_aresetn;
    axis_avg_buffer_0_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_0_m0_axis_tvalid = axis_avg_buffer_0_1_m0_axis_tvalid;
  assign axis_avg_buffer_0_m0_axis_tdata = axis_avg_buffer_0_1_m0_axis_tdata;
  assign axis_avg_buffer_0_m0_axis_tlast = axis_avg_buffer_0_1_m0_axis_tlast;
  assign axis_avg_buffer_0_m1_axis_tvalid = axis_avg_buffer_0_1_m1_axis_tvalid;
  assign axis_avg_buffer_0_m1_axis_tdata = axis_avg_buffer_0_1_m1_axis_tdata;
  assign axis_avg_buffer_0_m1_axis_tlast = axis_avg_buffer_0_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_0_m2_axis_tvalid = axis_avg_buffer_0_1_m2_axis_tvalid;
    axis_avg_buffer_0_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_0_1_m2_axis_tready = axis_avg_buffer_0_m2_axis_tready;
    axis_avg_buffer_0_1_m2_axis_tready = m2_axis_queue_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_0_m2_axis_tdata = axis_avg_buffer_0_1_m2_axis_tdata;
    axis_avg_buffer_0_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_0_m2_axis_tready = 1'bx;
  assign qick_processor_0_s0_axis_tvalid = 1'bx;
  assign qick_processor_0_s0_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  assign axis_avg_buffer_1_s_axi_awready = axis_avg_buffer_1_1_s_axi_awready;
  assign axis_avg_buffer_1_s_axi_wready = axis_avg_buffer_1_1_s_axi_wready;
  assign axis_avg_buffer_1_s_axi_bvalid = axis_avg_buffer_1_1_s_axi_bvalid;
  assign axis_avg_buffer_1_s_axi_bresp = axis_avg_buffer_1_1_s_axi_bresp;
  assign axis_avg_buffer_1_s_axi_arready = axis_avg_buffer_1_1_s_axi_arready;
  assign axis_avg_buffer_1_s_axi_rvalid = axis_avg_buffer_1_1_s_axi_rvalid;
  assign axis_avg_buffer_1_s_axi_rdata = axis_avg_buffer_1_1_s_axi_rdata;
  assign axis_avg_buffer_1_s_axi_rresp = axis_avg_buffer_1_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_1_1_s_axi_aclk_i = axis_avg_buffer_1_s_axi_aclk;
    axis_avg_buffer_1_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_1_1_s_axi_aresetn = axis_avg_buffer_1_s_axi_aresetn;
    axis_avg_buffer_1_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_1_1_trigger = axis_avg_buffer_1_trigger;
    axis_avg_buffer_1_1_trigger = qickProcessor_trig_11_o;
  end

  assign axis_avg_buffer_1_s_axis_tready = axis_avg_buffer_1_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_1_1_s_axis_aclk_i = axis_avg_buffer_1_s_axis_aclk;
    axis_avg_buffer_1_1_s_axis_aclk_i = clk_dac2;
  end

  always @(*) begin
    axis_avg_buffer_1_1_s_axis_aresetn = axis_avg_buffer_1_s_axis_aresetn;
    axis_avg_buffer_1_1_s_axis_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_avg_buffer_1_1_m_axis_aclk_i = axis_avg_buffer_1_m_axis_aclk;
    axis_avg_buffer_1_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_1_1_m_axis_aresetn = axis_avg_buffer_1_m_axis_aresetn;
    axis_avg_buffer_1_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_1_m0_axis_tvalid = axis_avg_buffer_1_1_m0_axis_tvalid;
  assign axis_avg_buffer_1_m0_axis_tdata = axis_avg_buffer_1_1_m0_axis_tdata;
  assign axis_avg_buffer_1_m0_axis_tlast = axis_avg_buffer_1_1_m0_axis_tlast;
  assign axis_avg_buffer_1_m1_axis_tvalid = axis_avg_buffer_1_1_m1_axis_tvalid;
  assign axis_avg_buffer_1_m1_axis_tdata = axis_avg_buffer_1_1_m1_axis_tdata;
  assign axis_avg_buffer_1_m1_axis_tlast = axis_avg_buffer_1_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_1_m2_axis_tvalid = axis_avg_buffer_1_1_m2_axis_tvalid;
    axis_avg_buffer_1_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_1_1_m2_axis_tready = axis_avg_buffer_1_m2_axis_tready;
    axis_avg_buffer_1_1_m2_axis_tready = m2_axis_queue_1_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_1_m2_axis_tdata = axis_avg_buffer_1_1_m2_axis_tdata;
    axis_avg_buffer_1_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_1_m2_axis_tready = 1'bx;
  assign qick_processor_0_s1_axis_tvalid = 1'bx;
  assign qick_processor_0_s1_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  assign axis_avg_buffer_2_s_axi_awready = axis_avg_buffer_2_1_s_axi_awready;
  assign axis_avg_buffer_2_s_axi_wready = axis_avg_buffer_2_1_s_axi_wready;
  assign axis_avg_buffer_2_s_axi_bvalid = axis_avg_buffer_2_1_s_axi_bvalid;
  assign axis_avg_buffer_2_s_axi_bresp = axis_avg_buffer_2_1_s_axi_bresp;
  assign axis_avg_buffer_2_s_axi_arready = axis_avg_buffer_2_1_s_axi_arready;
  assign axis_avg_buffer_2_s_axi_rvalid = axis_avg_buffer_2_1_s_axi_rvalid;
  assign axis_avg_buffer_2_s_axi_rdata = axis_avg_buffer_2_1_s_axi_rdata;
  assign axis_avg_buffer_2_s_axi_rresp = axis_avg_buffer_2_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_2_1_s_axi_aclk_i = axis_avg_buffer_2_s_axi_aclk;
    axis_avg_buffer_2_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_2_1_s_axi_aresetn = axis_avg_buffer_2_s_axi_aresetn;
    axis_avg_buffer_2_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_2_1_trigger = axis_avg_buffer_2_trigger;
    axis_avg_buffer_2_1_trigger = qickProcessor_trig_12_o;
  end

  assign axis_avg_buffer_2_s_axis_tready = axis_avg_buffer_2_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_2_1_s_axis_aclk_i = axis_avg_buffer_2_s_axis_aclk;
    axis_avg_buffer_2_1_s_axis_aclk_i = clk_adc2;
  end

  always @(*) begin
    axis_avg_buffer_2_1_s_axis_aresetn = axis_avg_buffer_2_s_axis_aresetn;
    axis_avg_buffer_2_1_s_axis_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_avg_buffer_2_1_m_axis_aclk_i = axis_avg_buffer_2_m_axis_aclk;
    axis_avg_buffer_2_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_2_1_m_axis_aresetn = axis_avg_buffer_2_m_axis_aresetn;
    axis_avg_buffer_2_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_2_m0_axis_tvalid = axis_avg_buffer_2_1_m0_axis_tvalid;
  assign axis_avg_buffer_2_m0_axis_tdata = axis_avg_buffer_2_1_m0_axis_tdata;
  assign axis_avg_buffer_2_m0_axis_tlast = axis_avg_buffer_2_1_m0_axis_tlast;
  assign axis_avg_buffer_2_m1_axis_tvalid = axis_avg_buffer_2_1_m1_axis_tvalid;
  assign axis_avg_buffer_2_m1_axis_tdata = axis_avg_buffer_2_1_m1_axis_tdata;
  assign axis_avg_buffer_2_m1_axis_tlast = axis_avg_buffer_2_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_2_m2_axis_tvalid = axis_avg_buffer_2_1_m2_axis_tvalid;
    axis_avg_buffer_2_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_2_1_m2_axis_tready = axis_avg_buffer_2_m2_axis_tready;
    axis_avg_buffer_2_1_m2_axis_tready = m2_axis_queue_2_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_2_m2_axis_tdata = axis_avg_buffer_2_1_m2_axis_tdata;
    axis_avg_buffer_2_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_2_m2_axis_tready = 1'bx;
  assign qick_processor_0_s2_axis_tvalid = 1'bx;
  assign qick_processor_0_s2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  assign axis_avg_buffer_3_s_axi_awready = axis_avg_buffer_3_1_s_axi_awready;
  assign axis_avg_buffer_3_s_axi_wready = axis_avg_buffer_3_1_s_axi_wready;
  assign axis_avg_buffer_3_s_axi_bvalid = axis_avg_buffer_3_1_s_axi_bvalid;
  assign axis_avg_buffer_3_s_axi_bresp = axis_avg_buffer_3_1_s_axi_bresp;
  assign axis_avg_buffer_3_s_axi_arready = axis_avg_buffer_3_1_s_axi_arready;
  assign axis_avg_buffer_3_s_axi_rvalid = axis_avg_buffer_3_1_s_axi_rvalid;
  assign axis_avg_buffer_3_s_axi_rdata = axis_avg_buffer_3_1_s_axi_rdata;
  assign axis_avg_buffer_3_s_axi_rresp = axis_avg_buffer_3_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_3_1_s_axi_aclk_i = axis_avg_buffer_3_s_axi_aclk;
    axis_avg_buffer_3_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_3_1_s_axi_aresetn = axis_avg_buffer_3_s_axi_aresetn;
    axis_avg_buffer_3_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_3_1_trigger = axis_avg_buffer_3_trigger;
    axis_avg_buffer_3_1_trigger = qickProcessor_trig_13_o;
  end

  assign axis_avg_buffer_3_s_axis_tready = axis_avg_buffer_3_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_3_1_s_axis_aclk_i = axis_avg_buffer_3_s_axis_aclk;
    axis_avg_buffer_3_1_s_axis_aclk_i = clk_adc2;
  end

  always @(*) begin
    axis_avg_buffer_3_1_s_axis_aresetn = axis_avg_buffer_3_s_axis_aresetn;
    axis_avg_buffer_3_1_s_axis_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_avg_buffer_3_1_m_axis_aclk_i = axis_avg_buffer_3_m_axis_aclk;
    axis_avg_buffer_3_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_3_1_m_axis_aresetn = axis_avg_buffer_3_m_axis_aresetn;
    axis_avg_buffer_3_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_3_m0_axis_tvalid = axis_avg_buffer_3_1_m0_axis_tvalid;
  assign axis_avg_buffer_3_m0_axis_tdata = axis_avg_buffer_3_1_m0_axis_tdata;
  assign axis_avg_buffer_3_m0_axis_tlast = axis_avg_buffer_3_1_m0_axis_tlast;
  assign axis_avg_buffer_3_m1_axis_tvalid = axis_avg_buffer_3_1_m1_axis_tvalid;
  assign axis_avg_buffer_3_m1_axis_tdata = axis_avg_buffer_3_1_m1_axis_tdata;
  assign axis_avg_buffer_3_m1_axis_tlast = axis_avg_buffer_3_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_3_m2_axis_tvalid = axis_avg_buffer_3_1_m2_axis_tvalid;
    axis_avg_buffer_3_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_3_1_m2_axis_tready = axis_avg_buffer_3_m2_axis_tready;
    axis_avg_buffer_3_1_m2_axis_tready = m2_axis_queue_3_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_3_m2_axis_tdata = axis_avg_buffer_3_1_m2_axis_tdata;
    axis_avg_buffer_3_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_3_m2_axis_tready = 1'bx;
  assign qick_processor_0_s3_axis_tvalid = 1'bx;
  assign qick_processor_0_s3_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  assign axis_avg_buffer_4_s_axi_awready = axis_avg_buffer_4_1_s_axi_awready;
  assign axis_avg_buffer_4_s_axi_wready = axis_avg_buffer_4_1_s_axi_wready;
  assign axis_avg_buffer_4_s_axi_bvalid = axis_avg_buffer_4_1_s_axi_bvalid;
  assign axis_avg_buffer_4_s_axi_bresp = axis_avg_buffer_4_1_s_axi_bresp;
  assign axis_avg_buffer_4_s_axi_arready = axis_avg_buffer_4_1_s_axi_arready;
  assign axis_avg_buffer_4_s_axi_rvalid = axis_avg_buffer_4_1_s_axi_rvalid;
  assign axis_avg_buffer_4_s_axi_rdata = axis_avg_buffer_4_1_s_axi_rdata;
  assign axis_avg_buffer_4_s_axi_rresp = axis_avg_buffer_4_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_4_1_s_axi_aclk_i = axis_avg_buffer_4_s_axi_aclk;
    axis_avg_buffer_4_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_4_1_s_axi_aresetn = axis_avg_buffer_4_s_axi_aresetn;
    axis_avg_buffer_4_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_4_1_trigger = axis_avg_buffer_4_trigger;
    axis_avg_buffer_4_1_trigger = qickProcessor_trig_14_o;
  end

  assign axis_avg_buffer_4_s_axis_tready = axis_avg_buffer_4_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_4_1_s_axis_aclk_i = axis_avg_buffer_4_s_axis_aclk;
    axis_avg_buffer_4_1_s_axis_aclk_i = clk_adc2;
  end

  always @(*) begin
    axis_avg_buffer_4_1_s_axis_aresetn = axis_avg_buffer_4_s_axis_aresetn;
    axis_avg_buffer_4_1_s_axis_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_avg_buffer_4_1_m_axis_aclk_i = axis_avg_buffer_4_m_axis_aclk;
    axis_avg_buffer_4_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_4_1_m_axis_aresetn = axis_avg_buffer_4_m_axis_aresetn;
    axis_avg_buffer_4_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_4_m0_axis_tvalid = axis_avg_buffer_4_1_m0_axis_tvalid;
  assign axis_avg_buffer_4_m0_axis_tdata = axis_avg_buffer_4_1_m0_axis_tdata;
  assign axis_avg_buffer_4_m0_axis_tlast = axis_avg_buffer_4_1_m0_axis_tlast;
  assign axis_avg_buffer_4_m1_axis_tvalid = axis_avg_buffer_4_1_m1_axis_tvalid;
  assign axis_avg_buffer_4_m1_axis_tdata = axis_avg_buffer_4_1_m1_axis_tdata;
  assign axis_avg_buffer_4_m1_axis_tlast = axis_avg_buffer_4_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_4_m2_axis_tvalid = axis_avg_buffer_4_1_m2_axis_tvalid;
    axis_avg_buffer_4_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_4_1_m2_axis_tready = axis_avg_buffer_4_m2_axis_tready;
    axis_avg_buffer_4_1_m2_axis_tready = m2_axis_queue_4_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_4_m2_axis_tdata = axis_avg_buffer_4_1_m2_axis_tdata;
    axis_avg_buffer_4_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_4_m2_axis_tready = 1'bx;
  assign qick_processor_0_s4_axis_tvalid = 1'bx;
  assign qick_processor_0_s4_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  assign axis_avg_buffer_5_s_axi_awready = axis_avg_buffer_5_1_s_axi_awready;
  assign axis_avg_buffer_5_s_axi_wready = axis_avg_buffer_5_1_s_axi_wready;
  assign axis_avg_buffer_5_s_axi_bvalid = axis_avg_buffer_5_1_s_axi_bvalid;
  assign axis_avg_buffer_5_s_axi_bresp = axis_avg_buffer_5_1_s_axi_bresp;
  assign axis_avg_buffer_5_s_axi_arready = axis_avg_buffer_5_1_s_axi_arready;
  assign axis_avg_buffer_5_s_axi_rvalid = axis_avg_buffer_5_1_s_axi_rvalid;
  assign axis_avg_buffer_5_s_axi_rdata = axis_avg_buffer_5_1_s_axi_rdata;
  assign axis_avg_buffer_5_s_axi_rresp = axis_avg_buffer_5_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_5_1_s_axi_aclk_i = axis_avg_buffer_5_s_axi_aclk;
    axis_avg_buffer_5_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_5_1_s_axi_aresetn = axis_avg_buffer_5_s_axi_aresetn;
    axis_avg_buffer_5_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_5_1_trigger = axis_avg_buffer_5_trigger;
    axis_avg_buffer_5_1_trigger = qickProcessor_trig_15_o;
  end

  assign axis_avg_buffer_5_s_axis_tready = axis_avg_buffer_5_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_5_1_s_axis_aclk_i = axis_avg_buffer_5_s_axis_aclk;
    axis_avg_buffer_5_1_s_axis_aclk_i = clk_adc2;
  end

  always @(*) begin
    axis_avg_buffer_5_1_s_axis_aresetn = axis_avg_buffer_5_s_axis_aresetn;
    axis_avg_buffer_5_1_s_axis_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_avg_buffer_5_1_m_axis_aclk_i = axis_avg_buffer_5_m_axis_aclk;
    axis_avg_buffer_5_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_5_1_m_axis_aresetn = axis_avg_buffer_5_m_axis_aresetn;
    axis_avg_buffer_5_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_5_m0_axis_tvalid = axis_avg_buffer_5_1_m0_axis_tvalid;
  assign axis_avg_buffer_5_m0_axis_tdata = axis_avg_buffer_5_1_m0_axis_tdata;
  assign axis_avg_buffer_5_m0_axis_tlast = axis_avg_buffer_5_1_m0_axis_tlast;
  assign axis_avg_buffer_5_m1_axis_tvalid = axis_avg_buffer_5_1_m1_axis_tvalid;
  assign axis_avg_buffer_5_m1_axis_tdata = axis_avg_buffer_5_1_m1_axis_tdata;
  assign axis_avg_buffer_5_m1_axis_tlast = axis_avg_buffer_5_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_5_m2_axis_tvalid = axis_avg_buffer_5_1_m2_axis_tvalid;
    axis_avg_buffer_5_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_5_1_m2_axis_tready = axis_avg_buffer_5_m2_axis_tready;
    axis_avg_buffer_5_1_m2_axis_tready = m2_axis_queue_5_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_5_m2_axis_tdata = axis_avg_buffer_5_1_m2_axis_tdata;
    axis_avg_buffer_5_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_5_m2_axis_tready = 1'bx;
  assign qick_processor_0_s5_axis_tvalid = 1'bx;
  assign qick_processor_0_s5_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  assign axis_avg_buffer_6_s_axi_awready = axis_avg_buffer_6_1_s_axi_awready;
  assign axis_avg_buffer_6_s_axi_wready = axis_avg_buffer_6_1_s_axi_wready;
  assign axis_avg_buffer_6_s_axi_bvalid = axis_avg_buffer_6_1_s_axi_bvalid;
  assign axis_avg_buffer_6_s_axi_bresp = axis_avg_buffer_6_1_s_axi_bresp;
  assign axis_avg_buffer_6_s_axi_arready = axis_avg_buffer_6_1_s_axi_arready;
  assign axis_avg_buffer_6_s_axi_rvalid = axis_avg_buffer_6_1_s_axi_rvalid;
  assign axis_avg_buffer_6_s_axi_rdata = axis_avg_buffer_6_1_s_axi_rdata;
  assign axis_avg_buffer_6_s_axi_rresp = axis_avg_buffer_6_1_s_axi_rresp;
  always @(*) begin
    axis_avg_buffer_6_1_s_axi_aclk_i = axis_avg_buffer_6_s_axi_aclk;
    axis_avg_buffer_6_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_6_1_s_axi_aresetn = axis_avg_buffer_6_s_axi_aresetn;
    axis_avg_buffer_6_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_avg_buffer_6_1_trigger = axis_avg_buffer_6_trigger;
    axis_avg_buffer_6_1_trigger = qickProcessor_trig_16_o;
  end

  assign axis_avg_buffer_6_s_axis_tready = axis_avg_buffer_6_1_s_axis_tready;
  always @(*) begin
    axis_avg_buffer_6_1_s_axis_aclk_i = axis_avg_buffer_6_s_axis_aclk;
    axis_avg_buffer_6_1_s_axis_aclk_i = clk_adc2;
  end

  always @(*) begin
    axis_avg_buffer_6_1_s_axis_aresetn = axis_avg_buffer_6_s_axis_aresetn;
    axis_avg_buffer_6_1_s_axis_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_avg_buffer_6_1_m_axis_aclk_i = axis_avg_buffer_6_m_axis_aclk;
    axis_avg_buffer_6_1_m_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_avg_buffer_6_1_m_axis_aresetn = axis_avg_buffer_6_m_axis_aresetn;
    axis_avg_buffer_6_1_m_axis_aresetn = rst_100;
  end

  assign axis_avg_buffer_6_m0_axis_tvalid = axis_avg_buffer_6_1_m0_axis_tvalid;
  assign axis_avg_buffer_6_m0_axis_tdata = axis_avg_buffer_6_1_m0_axis_tdata;
  assign axis_avg_buffer_6_m0_axis_tlast = axis_avg_buffer_6_1_m0_axis_tlast;
  assign axis_avg_buffer_6_m1_axis_tvalid = axis_avg_buffer_6_1_m1_axis_tvalid;
  assign axis_avg_buffer_6_m1_axis_tdata = axis_avg_buffer_6_1_m1_axis_tdata;
  assign axis_avg_buffer_6_m1_axis_tlast = axis_avg_buffer_6_1_m1_axis_tlast;
  always @(*) begin
    axis_avg_buffer_6_m2_axis_tvalid = axis_avg_buffer_6_1_m2_axis_tvalid;
    axis_avg_buffer_6_m2_axis_tvalid = 1'bx;
  end

  always @(*) begin
    axis_avg_buffer_6_1_m2_axis_tready = axis_avg_buffer_6_m2_axis_tready;
    axis_avg_buffer_6_1_m2_axis_tready = m2_axis_queue_6_io_push_ready;
  end

  always @(*) begin
    axis_avg_buffer_6_m2_axis_tdata = axis_avg_buffer_6_1_m2_axis_tdata;
    axis_avg_buffer_6_m2_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  end

  assign axis_avg_buffer_6_m2_axis_tready = 1'bx;
  assign qick_processor_0_s6_axis_tvalid = 1'bx;
  assign qick_processor_0_s6_axis_tdata = 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
  always @(*) begin
    mr_buffer_et_0_1_trigger = mr_buffer_et_0_trigger;
    mr_buffer_et_0_1_trigger = qickProcessor_trig_9_o;
  end

  assign mr_buffer_et_0_s00_axi_awready = mr_buffer_et_0_1_s00_axi_awready;
  assign mr_buffer_et_0_s00_axi_wready = mr_buffer_et_0_1_s00_axi_wready;
  assign mr_buffer_et_0_s00_axi_bvalid = mr_buffer_et_0_1_s00_axi_bvalid;
  assign mr_buffer_et_0_s00_axi_bresp = mr_buffer_et_0_1_s00_axi_bresp;
  assign mr_buffer_et_0_s00_axi_arready = mr_buffer_et_0_1_s00_axi_arready;
  assign mr_buffer_et_0_s00_axi_rvalid = mr_buffer_et_0_1_s00_axi_rvalid;
  assign mr_buffer_et_0_s00_axi_rdata = mr_buffer_et_0_1_s00_axi_rdata;
  assign mr_buffer_et_0_s00_axi_rresp = mr_buffer_et_0_1_s00_axi_rresp;
  always @(*) begin
    mr_buffer_et_0_1_s00_axi_aclk = mr_buffer_et_0_s00_axi_aclk;
    mr_buffer_et_0_1_s00_axi_aclk = clk_pl;
  end

  always @(*) begin
    mr_buffer_et_0_1_s00_axi_aresetn = mr_buffer_et_0_s00_axi_aresetn;
    mr_buffer_et_0_1_s00_axi_aresetn = rst_100;
  end

  assign mr_buffer_et_0_s00_axis_tready = mr_buffer_et_0_1_s00_axis_tready;
  always @(*) begin
    mr_buffer_et_0_1_s00_axis_aclk = mr_buffer_et_0_s00_axis_aclk;
    mr_buffer_et_0_1_s00_axis_aclk = clk_adc2;
  end

  always @(*) begin
    mr_buffer_et_0_1_s00_axis_aresetn = mr_buffer_et_0_s00_axis_aresetn;
    mr_buffer_et_0_1_s00_axis_aresetn = rst_adc2;
  end

  assign mr_buffer_et_0_m00_axis_tvalid = mr_buffer_et_0_1_m00_axis_tvalid;
  assign mr_buffer_et_0_m00_axis_tdata = mr_buffer_et_0_1_m00_axis_tdata;
  assign mr_buffer_et_0_m00_axis_tstrb = mr_buffer_et_0_1_m00_axis_tstrb;
  assign mr_buffer_et_0_m00_axis_tlast = mr_buffer_et_0_1_m00_axis_tlast;
  always @(*) begin
    mr_buffer_et_0_1_m00_axis_aclk = mr_buffer_et_0_m00_axis_aclk;
    mr_buffer_et_0_1_m00_axis_aclk = clk_pl;
  end

  always @(*) begin
    mr_buffer_et_0_1_m00_axis_aresetn = mr_buffer_et_0_m00_axis_aresetn;
    mr_buffer_et_0_1_m00_axis_aresetn = rst_100;
  end

  always @(*) begin
    axis_pfb_readout_v3_0_1_s_axi_aresetn = axis_pfb_readout_v3_0_s_axi_aresetn;
    axis_pfb_readout_v3_0_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_pfb_readout_v3_0_1_s_axi_aclk_i = axis_pfb_readout_v3_0_s_axi_aclk;
    axis_pfb_readout_v3_0_1_s_axi_aclk_i = clk_pl;
  end

  assign axis_pfb_readout_v3_0_s_axi_awready = axis_pfb_readout_v3_0_1_s_axi_awready;
  assign axis_pfb_readout_v3_0_s_axi_wready = axis_pfb_readout_v3_0_1_s_axi_wready;
  assign axis_pfb_readout_v3_0_s_axi_bvalid = axis_pfb_readout_v3_0_1_s_axi_bvalid;
  assign axis_pfb_readout_v3_0_s_axi_bresp = axis_pfb_readout_v3_0_1_s_axi_bresp;
  assign axis_pfb_readout_v3_0_s_axi_arready = axis_pfb_readout_v3_0_1_s_axi_arready;
  assign axis_pfb_readout_v3_0_s_axi_rvalid = axis_pfb_readout_v3_0_1_s_axi_rvalid;
  assign axis_pfb_readout_v3_0_s_axi_rdata = axis_pfb_readout_v3_0_1_s_axi_rdata;
  assign axis_pfb_readout_v3_0_s_axi_rresp = axis_pfb_readout_v3_0_1_s_axi_rresp;
  always @(*) begin
    axis_pfb_readout_v3_0_1_aresetn = axis_pfb_readout_v3_0_aresetn;
    axis_pfb_readout_v3_0_1_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_pfb_readout_v3_0_1_aclk_i = axis_pfb_readout_v3_0_aclk;
    axis_pfb_readout_v3_0_1_aclk_i = clk_adc2;
  end

  assign axis_pfb_readout_v3_0_m0_axis_tvalid = axis_pfb_readout_v3_0_1_m0_axis_tvalid;
  assign axis_pfb_readout_v3_0_m0_axis_tdata = axis_pfb_readout_v3_0_1_m0_axis_tdata;
  assign axis_pfb_readout_v3_0_m1_axis_tvalid = axis_pfb_readout_v3_0_1_m1_axis_tvalid;
  assign axis_pfb_readout_v3_0_m1_axis_tdata = axis_pfb_readout_v3_0_1_m1_axis_tdata;
  assign axis_pfb_readout_v3_0_m2_axis_tvalid = axis_pfb_readout_v3_0_1_m2_axis_tvalid;
  assign axis_pfb_readout_v3_0_m2_axis_tdata = axis_pfb_readout_v3_0_1_m2_axis_tdata;
  assign axis_pfb_readout_v3_0_m3_axis_tvalid = axis_pfb_readout_v3_0_1_m3_axis_tvalid;
  assign axis_pfb_readout_v3_0_m3_axis_tdata = axis_pfb_readout_v3_0_1_m3_axis_tdata;
  assign axis_readout_v2_0_s_axi_awready = axis_readout_v2_0_1_s_axi_awready;
  assign axis_readout_v2_0_s_axi_wready = axis_readout_v2_0_1_s_axi_wready;
  assign axis_readout_v2_0_s_axi_bvalid = axis_readout_v2_0_1_s_axi_bvalid;
  assign axis_readout_v2_0_s_axi_bresp = axis_readout_v2_0_1_s_axi_bresp;
  assign axis_readout_v2_0_s_axi_arready = axis_readout_v2_0_1_s_axi_arready;
  assign axis_readout_v2_0_s_axi_rvalid = axis_readout_v2_0_1_s_axi_rvalid;
  assign axis_readout_v2_0_s_axi_rdata = axis_readout_v2_0_1_s_axi_rdata;
  assign axis_readout_v2_0_s_axi_rresp = axis_readout_v2_0_1_s_axi_rresp;
  always @(*) begin
    axis_readout_v2_0_1_s_axi_aclk_i = axis_readout_v2_0_s_axi_aclk;
    axis_readout_v2_0_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_readout_v2_0_1_s_axi_aresetn = axis_readout_v2_0_s_axi_aresetn;
    axis_readout_v2_0_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_readout_v2_0_1_aresetn = axis_readout_v2_0_aresetn;
    axis_readout_v2_0_1_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_readout_v2_0_1_aclk_i = axis_readout_v2_0_aclk;
    axis_readout_v2_0_1_aclk_i = clk_adc2;
  end

  assign axis_readout_v2_0_s_axis_tready = axis_readout_v2_0_1_s_axis_tready;
  assign axis_readout_v2_0_m0_axis_tvalid = axis_readout_v2_0_1_m0_axis_tvalid;
  assign axis_readout_v2_0_m0_axis_tdata = axis_readout_v2_0_1_m0_axis_tdata;
  assign axis_readout_v2_0_m1_axis_tvalid = axis_readout_v2_0_1_m1_axis_tvalid;
  assign axis_readout_v2_0_m1_axis_tdata = axis_readout_v2_0_1_m1_axis_tdata;
  always @(*) begin
    axis_readout_v3_0_1_aclk_i = axis_readout_v3_0_aclk;
    axis_readout_v3_0_1_aclk_i = clk_dac2;
  end

  always @(*) begin
    axis_readout_v3_0_1_aresetn = axis_readout_v3_0_aresetn;
    axis_readout_v3_0_1_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_readout_v3_0_1_s0_axis_tvalid = axis_readout_v3_0_s0_axis_tvalid;
    axis_readout_v3_0_1_s0_axis_tvalid = m_readout_axis_s2mPipe_m2sPipe_valid;
  end

  assign axis_readout_v3_0_s0_axis_tready = axis_readout_v3_0_1_s0_axis_tready;
  always @(*) begin
    axis_readout_v3_0_1_s0_axis_tdata = axis_readout_v3_0_s0_axis_tdata;
    axis_readout_v3_0_1_s0_axis_tdata = m_readout_axis_s2mPipe_m2sPipe_payload_data;
  end

  always @(*) begin
    axis_readout_v3_0_1_s1_axis_tvalid = axis_readout_v3_0_s1_axis_tvalid;
    axis_readout_v3_0_1_s1_axis_tvalid = m_axis_s2mPipe_m2sPipe_valid;
  end

  assign axis_readout_v3_0_s1_axis_tready = axis_readout_v3_0_1_s1_axis_tready;
  always @(*) begin
    axis_readout_v3_0_1_s1_axis_tdata = axis_readout_v3_0_s1_axis_tdata;
    axis_readout_v3_0_1_s1_axis_tdata = m_axis_s2mPipe_m2sPipe_payload_data;
  end

  assign axis_readout_v3_0_m_axis_tvalid = axis_readout_v3_0_1_m_axis_tvalid;
  assign axis_readout_v3_0_m_axis_tdata = axis_readout_v3_0_1_m_axis_tdata;
  always @(*) begin
    axis_dyn_readout_v1_0_1_aresetn = axis_dyn_readout_v1_0_aresetn;
    axis_dyn_readout_v1_0_1_aresetn = rst_adc2;
  end

  always @(*) begin
    axis_dyn_readout_v1_0_1_aclk = axis_dyn_readout_v1_0_aclk;
    axis_dyn_readout_v1_0_1_aclk = clk_adc2;
  end

  always @(*) begin
    axis_dyn_readout_v1_0_1_s0_axis_tvalid = axis_dyn_readout_v1_0_s0_axis_tvalid;
    axis_dyn_readout_v1_0_1_s0_axis_tvalid = sg_translator_6_1_m_readout_axis_tvalid;
  end

  assign axis_dyn_readout_v1_0_s0_axis_tready = axis_dyn_readout_v1_0_1_s0_axis_tready;
  always @(*) begin
    axis_dyn_readout_v1_0_1_s0_axis_tdata = axis_dyn_readout_v1_0_s0_axis_tdata;
    axis_dyn_readout_v1_0_1_s0_axis_tdata = sg_translator_6_1_m_readout_axis_tdata;
  end

  assign axis_dyn_readout_v1_0_s1_axis_tready = axis_dyn_readout_v1_0_1_s1_axis_tready;
  assign axis_dyn_readout_v1_0_m0_axis_tvalid = axis_dyn_readout_v1_0_1_m0_axis_tvalid;
  assign axis_dyn_readout_v1_0_m0_axis_tdata = axis_dyn_readout_v1_0_1_m0_axis_tdata;
  assign axis_dyn_readout_v1_0_m1_axis_tvalid = axis_dyn_readout_v1_0_1_m1_axis_tvalid;
  assign axis_dyn_readout_v1_0_m1_axis_tdata = axis_dyn_readout_v1_0_1_m1_axis_tdata;
  always @(*) begin
    axis_signal_gen_v6_0_1_s_axi_aclk_i = axis_signal_gen_v6_0_s_axi_aclk;
    axis_signal_gen_v6_0_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_signal_gen_v6_0_1_s_axi_aresetn = axis_signal_gen_v6_0_s_axi_aresetn;
    axis_signal_gen_v6_0_1_s_axi_aresetn = rst_100;
  end

  assign axis_signal_gen_v6_0_s_axi_awready = axis_signal_gen_v6_0_1_s_axi_awready;
  assign axis_signal_gen_v6_0_s_axi_wready = axis_signal_gen_v6_0_1_s_axi_wready;
  assign axis_signal_gen_v6_0_s_axi_bvalid = axis_signal_gen_v6_0_1_s_axi_bvalid;
  assign axis_signal_gen_v6_0_s_axi_bresp = axis_signal_gen_v6_0_1_s_axi_bresp;
  assign axis_signal_gen_v6_0_s_axi_arready = axis_signal_gen_v6_0_1_s_axi_arready;
  assign axis_signal_gen_v6_0_s_axi_rvalid = axis_signal_gen_v6_0_1_s_axi_rvalid;
  assign axis_signal_gen_v6_0_s_axi_rdata = axis_signal_gen_v6_0_1_s_axi_rdata;
  assign axis_signal_gen_v6_0_s_axi_rresp = axis_signal_gen_v6_0_1_s_axi_rresp;
  always @(*) begin
    axis_signal_gen_v6_0_1_s0_axis_aclk_i = axis_signal_gen_v6_0_s0_axis_aclk;
    axis_signal_gen_v6_0_1_s0_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_signal_gen_v6_0_1_s0_axis_aresetn = axis_signal_gen_v6_0_s0_axis_aresetn;
    axis_signal_gen_v6_0_1_s0_axis_aresetn = rst_100;
  end

  assign axis_signal_gen_v6_0_s0_axis_tready = axis_signal_gen_v6_0_1_s0_axis_tready;
  always @(*) begin
    axis_signal_gen_v6_0_1_aresetn = axis_signal_gen_v6_0_aresetn;
    axis_signal_gen_v6_0_1_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_signal_gen_v6_0_1_aclk_i = axis_signal_gen_v6_0_aclk;
    axis_signal_gen_v6_0_1_aclk_i = clk_dac2;
  end

  always @(*) begin
    axis_signal_gen_v6_0_1_s1_axis_tvalid = axis_signal_gen_v6_0_s1_axis_tvalid;
    axis_signal_gen_v6_0_1_s1_axis_tvalid = m_gen_v6_axis_s2mPipe_m2sPipe_valid;
  end

  assign axis_signal_gen_v6_0_s1_axis_tready = axis_signal_gen_v6_0_1_s1_axis_tready;
  always @(*) begin
    axis_signal_gen_v6_0_1_s1_axis_tdata = axis_signal_gen_v6_0_s1_axis_tdata;
    axis_signal_gen_v6_0_1_s1_axis_tdata = m_gen_v6_axis_s2mPipe_m2sPipe_payload_data;
  end

  always @(*) begin
    axis_signal_gen_v6_0_m_axis_tvalid = axis_signal_gen_v6_0_1_m_axis_tvalid;
    axis_signal_gen_v6_0_m_axis_tvalid = m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid;
  end

  always @(*) begin
    axis_signal_gen_v6_0_1_m_axis_tready = axis_signal_gen_v6_0_m_axis_tready;
    axis_signal_gen_v6_0_1_m_axis_tready = 1'b1;
  end

  always @(*) begin
    axis_signal_gen_v6_0_m_axis_tdata = axis_signal_gen_v6_0_1_m_axis_tdata;
    axis_signal_gen_v6_0_m_axis_tdata = m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data;
  end

  assign m_axis_toFlow_valid = axis_signal_gen_v6_0_1_m_axis_tvalid;
  assign m_axis_toFlow_payload_data = axis_signal_gen_v6_0_1_m_axis_tdata;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid = m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data = m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_ready = axis_signal_gen_v6_0_m_axis_tready;
  always @(*) begin
    axis_signal_gen_v6_1_1_s_axi_aclk_i = axis_signal_gen_v6_1_s_axi_aclk;
    axis_signal_gen_v6_1_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_signal_gen_v6_1_1_s_axi_aresetn = axis_signal_gen_v6_1_s_axi_aresetn;
    axis_signal_gen_v6_1_1_s_axi_aresetn = rst_100;
  end

  assign axis_signal_gen_v6_1_s_axi_awready = axis_signal_gen_v6_1_1_s_axi_awready;
  assign axis_signal_gen_v6_1_s_axi_wready = axis_signal_gen_v6_1_1_s_axi_wready;
  assign axis_signal_gen_v6_1_s_axi_bvalid = axis_signal_gen_v6_1_1_s_axi_bvalid;
  assign axis_signal_gen_v6_1_s_axi_bresp = axis_signal_gen_v6_1_1_s_axi_bresp;
  assign axis_signal_gen_v6_1_s_axi_arready = axis_signal_gen_v6_1_1_s_axi_arready;
  assign axis_signal_gen_v6_1_s_axi_rvalid = axis_signal_gen_v6_1_1_s_axi_rvalid;
  assign axis_signal_gen_v6_1_s_axi_rdata = axis_signal_gen_v6_1_1_s_axi_rdata;
  assign axis_signal_gen_v6_1_s_axi_rresp = axis_signal_gen_v6_1_1_s_axi_rresp;
  always @(*) begin
    axis_signal_gen_v6_1_1_s0_axis_aclk_i = axis_signal_gen_v6_1_s0_axis_aclk;
    axis_signal_gen_v6_1_1_s0_axis_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_signal_gen_v6_1_1_s0_axis_aresetn = axis_signal_gen_v6_1_s0_axis_aresetn;
    axis_signal_gen_v6_1_1_s0_axis_aresetn = rst_100;
  end

  assign axis_signal_gen_v6_1_s0_axis_tready = axis_signal_gen_v6_1_1_s0_axis_tready;
  always @(*) begin
    axis_signal_gen_v6_1_1_aresetn = axis_signal_gen_v6_1_aresetn;
    axis_signal_gen_v6_1_1_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_signal_gen_v6_1_1_aclk_i = axis_signal_gen_v6_1_aclk_i;
    axis_signal_gen_v6_1_1_aclk_i = clk_dac2;
  end

  always @(*) begin
    axis_signal_gen_v6_1_1_s1_axis_tvalid = axis_signal_gen_v6_1_s1_axis_tvalid;
    axis_signal_gen_v6_1_1_s1_axis_tvalid = m_gen_v6_axis_s2mPipe_m2sPipe_valid_1;
  end

  assign axis_signal_gen_v6_1_s1_axis_tready = axis_signal_gen_v6_1_1_s1_axis_tready;
  always @(*) begin
    axis_signal_gen_v6_1_1_s1_axis_tdata = axis_signal_gen_v6_1_s1_axis_tdata;
    axis_signal_gen_v6_1_1_s1_axis_tdata = m_gen_v6_axis_s2mPipe_m2sPipe_payload_data_1;
  end

  always @(*) begin
    axis_signal_gen_v6_1_m_axis_tvalid = axis_signal_gen_v6_1_1_m_axis_tvalid;
    axis_signal_gen_v6_1_m_axis_tvalid = m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid_1;
  end

  always @(*) begin
    axis_signal_gen_v6_1_1_m_axis_tready = axis_signal_gen_v6_1_m_axis_tready;
    axis_signal_gen_v6_1_1_m_axis_tready = 1'b1;
  end

  always @(*) begin
    axis_signal_gen_v6_1_m_axis_tdata = axis_signal_gen_v6_1_1_m_axis_tdata;
    axis_signal_gen_v6_1_m_axis_tdata = m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data_1;
  end

  assign m_axis_toFlow_valid_1 = axis_signal_gen_v6_1_1_m_axis_tvalid;
  assign m_axis_toFlow_payload_data_1 = axis_signal_gen_v6_1_1_m_axis_tdata;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid_1 = m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_1;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data_1 = m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data_1;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_ready_1 = axis_signal_gen_v6_1_m_axis_tready;
  always @(*) begin
    axis_tmux_v1_0_1_aresetn = axis_tmux_v1_0_aresetn;
    axis_tmux_v1_0_1_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_tmux_v1_0_1_aclk = axis_tmux_v1_0_aclk;
    axis_tmux_v1_0_1_aclk = clk_dac2;
  end

  assign axis_tmux_v1_0_s_axis_tready = axis_tmux_v1_0_1_s_axis_tready;
  assign axis_tmux_v1_0_m0_axis_tvalid = axis_tmux_v1_0_1_m0_axis_tvalid;
  assign axis_tmux_v1_0_m0_axis_tdata = axis_tmux_v1_0_1_m0_axis_tdata;
  assign axis_tmux_v1_0_m1_axis_tvalid = axis_tmux_v1_0_1_m1_axis_tvalid;
  assign axis_tmux_v1_0_m1_axis_tdata = axis_tmux_v1_0_1_m1_axis_tdata;
  assign axis_tmux_v1_0_m2_axis_tvalid = axis_tmux_v1_0_1_m2_axis_tvalid;
  assign axis_tmux_v1_0_m2_axis_tdata = axis_tmux_v1_0_1_m2_axis_tdata;
  assign axis_tmux_v1_0_m3_axis_tvalid = axis_tmux_v1_0_1_m3_axis_tvalid;
  assign axis_tmux_v1_0_m3_axis_tdata = axis_tmux_v1_0_1_m3_axis_tdata;
  always @(*) begin
    axis_cdcsync_v1_1_1_s_axis_aresetn = axis_cdcsync_v1_1_s_axis_aresetn;
    axis_cdcsync_v1_1_1_s_axis_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_cdcsync_v1_1_1_s_axis_aclk = axis_cdcsync_v1_1_s_axis_aclk;
    axis_cdcsync_v1_1_1_s_axis_aclk = clk_dac2;
  end

  assign axis_cdcsync_v1_1_s0_axis_tready = axis_cdcsync_v1_1_1_s0_axis_tready;
  assign axis_cdcsync_v1_1_s1_axis_tready = axis_cdcsync_v1_1_1_s1_axis_tready;
  assign axis_cdcsync_v1_1_s2_axis_tready = axis_cdcsync_v1_1_1_s2_axis_tready;
  always @(*) begin
    axis_cdcsync_v1_1_1_m_axis_aresetn = axis_cdcsync_v1_1_m_axis_aresetn;
    axis_cdcsync_v1_1_1_m_axis_aresetn = rst_dac3;
  end

  always @(*) begin
    axis_cdcsync_v1_1_1_m_axis_aclk = axis_cdcsync_v1_1_m_axis_aclk;
    axis_cdcsync_v1_1_1_m_axis_aclk = clk_dac3;
  end

  assign axis_cdcsync_v1_1_m0_axis_tvalid = axis_cdcsync_v1_1_1_m0_axis_tvalid;
  always @(*) begin
    axis_cdcsync_v1_1_1_m0_axis_tready = axis_cdcsync_v1_1_m0_axis_tready;
    axis_cdcsync_v1_1_1_m0_axis_tready = sg_translator_3_1_s_axis_tready;
  end

  assign axis_cdcsync_v1_1_m0_axis_tdata = axis_cdcsync_v1_1_1_m0_axis_tdata;
  assign axis_cdcsync_v1_1_m1_axis_tvalid = axis_cdcsync_v1_1_1_m1_axis_tvalid;
  always @(*) begin
    axis_cdcsync_v1_1_1_m1_axis_tready = axis_cdcsync_v1_1_m1_axis_tready;
    axis_cdcsync_v1_1_1_m1_axis_tready = sg_translator_4_1_s_axis_tready;
  end

  assign axis_cdcsync_v1_1_m1_axis_tdata = axis_cdcsync_v1_1_1_m1_axis_tdata;
  assign axis_cdcsync_v1_1_m2_axis_tvalid = axis_cdcsync_v1_1_1_m2_axis_tvalid;
  always @(*) begin
    axis_cdcsync_v1_1_1_m2_axis_tready = axis_cdcsync_v1_1_m2_axis_tready;
    axis_cdcsync_v1_1_1_m2_axis_tready = sg_translator_5_1_s_axis_tready;
  end

  assign axis_cdcsync_v1_1_m2_axis_tdata = axis_cdcsync_v1_1_1_m2_axis_tdata;
  always @(*) begin
    axis_sg_mux8_v1_0_1_s_axi_aresetn = axis_sg_mux8_v1_0_s_axi_aresetn;
    axis_sg_mux8_v1_0_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_sg_mux8_v1_0_1_s_axi_aclk_i = axis_sg_mux8_v1_0_s_axi_aclk;
    axis_sg_mux8_v1_0_1_s_axi_aclk_i = clk_pl;
  end

  assign axis_sg_mux8_v1_0_s_axi_awready = axis_sg_mux8_v1_0_1_s_axi_awready;
  assign axis_sg_mux8_v1_0_s_axi_wready = axis_sg_mux8_v1_0_1_s_axi_wready;
  assign axis_sg_mux8_v1_0_s_axi_bvalid = axis_sg_mux8_v1_0_1_s_axi_bvalid;
  assign axis_sg_mux8_v1_0_s_axi_bresp = axis_sg_mux8_v1_0_1_s_axi_bresp;
  assign axis_sg_mux8_v1_0_s_axi_arready = axis_sg_mux8_v1_0_1_s_axi_arready;
  assign axis_sg_mux8_v1_0_s_axi_rvalid = axis_sg_mux8_v1_0_1_s_axi_rvalid;
  assign axis_sg_mux8_v1_0_s_axi_rdata = axis_sg_mux8_v1_0_1_s_axi_rdata;
  assign axis_sg_mux8_v1_0_s_axi_rresp = axis_sg_mux8_v1_0_1_s_axi_rresp;
  always @(*) begin
    axis_sg_mux8_v1_0_1_aclk_i = axis_sg_mux8_v1_0_aclk;
    axis_sg_mux8_v1_0_1_aclk_i = clk_dac2;
  end

  always @(*) begin
    axis_sg_mux8_v1_0_1_aresetn = axis_sg_mux8_v1_0_aresetn;
    axis_sg_mux8_v1_0_1_aresetn = rst_dac2;
  end

  always @(*) begin
    axis_sg_mux8_v1_0_1_s_axis_tvalid = axis_sg_mux8_v1_0_s_axis_tvalid;
    axis_sg_mux8_v1_0_1_s_axis_tvalid = m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_valid;
  end

  assign axis_sg_mux8_v1_0_s_axis_tready = axis_sg_mux8_v1_0_1_s_axis_tready;
  always @(*) begin
    axis_sg_mux8_v1_0_1_s_axis_tdata = axis_sg_mux8_v1_0_s_axis_tdata;
    axis_sg_mux8_v1_0_1_s_axis_tdata = m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_payload_data;
  end

  always @(*) begin
    axis_sg_mux8_v1_0_m_axis_tvalid = axis_sg_mux8_v1_0_1_m_axis_tvalid;
    axis_sg_mux8_v1_0_m_axis_tvalid = m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid_2;
  end

  always @(*) begin
    axis_sg_mux8_v1_0_1_m_axis_tready = axis_sg_mux8_v1_0_m_axis_tready;
    axis_sg_mux8_v1_0_1_m_axis_tready = 1'b1;
  end

  always @(*) begin
    axis_sg_mux8_v1_0_m_axis_tdata = axis_sg_mux8_v1_0_1_m_axis_tdata;
    axis_sg_mux8_v1_0_m_axis_tdata = m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data_2;
  end

  assign m_axis_toFlow_valid_2 = axis_sg_mux8_v1_0_1_m_axis_tvalid;
  assign m_axis_toFlow_payload_data_2 = axis_sg_mux8_v1_0_1_m_axis_tdata;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_valid_2 = m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_2;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_payload_data_2 = m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data_2;
  assign m_axis_toFlow_stage_stage_stage_stage_stage_stage_toStream_ready_2 = axis_sg_mux8_v1_0_m_axis_tready;
  always @(*) begin
    axis_sg_mixmux8_v1_0_1_s_axi_aresetn = axis_sg_mixmux8_v1_0_s_axi_aresetn;
    axis_sg_mixmux8_v1_0_1_s_axi_aresetn = rst_100;
  end

  always @(*) begin
    axis_sg_mixmux8_v1_0_1_s_axi_aclk_i = axis_sg_mixmux8_v1_0_s_axi_aclk;
    axis_sg_mixmux8_v1_0_1_s_axi_aclk_i = clk_pl;
  end

  assign axis_sg_mixmux8_v1_0_s_axi_awready = axis_sg_mixmux8_v1_0_1_s_axi_awready;
  assign axis_sg_mixmux8_v1_0_s_axi_wready = axis_sg_mixmux8_v1_0_1_s_axi_wready;
  assign axis_sg_mixmux8_v1_0_s_axi_bvalid = axis_sg_mixmux8_v1_0_1_s_axi_bvalid;
  assign axis_sg_mixmux8_v1_0_s_axi_bresp = axis_sg_mixmux8_v1_0_1_s_axi_bresp;
  assign axis_sg_mixmux8_v1_0_s_axi_arready = axis_sg_mixmux8_v1_0_1_s_axi_arready;
  assign axis_sg_mixmux8_v1_0_s_axi_rvalid = axis_sg_mixmux8_v1_0_1_s_axi_rvalid;
  assign axis_sg_mixmux8_v1_0_s_axi_rdata = axis_sg_mixmux8_v1_0_1_s_axi_rdata;
  assign axis_sg_mixmux8_v1_0_s_axi_rresp = axis_sg_mixmux8_v1_0_1_s_axi_rresp;
  always @(*) begin
    axis_sg_mixmux8_v1_0_1_aresetn = axis_sg_mixmux8_v1_0_aresetn;
    axis_sg_mixmux8_v1_0_1_aresetn = rst_dac3;
  end

  always @(*) begin
    axis_sg_mixmux8_v1_0_1_aclk_i = axis_sg_mixmux8_v1_0_aclk;
    axis_sg_mixmux8_v1_0_1_aclk_i = clk_dac3;
  end

  always @(*) begin
    axis_sg_mixmux8_v1_0_1_s_axis_tvalid = axis_sg_mixmux8_v1_0_s_axis_tvalid;
    axis_sg_mixmux8_v1_0_1_s_axis_tvalid = sg_translator_5_1_m_mux4_axis_tvalid;
  end

  assign axis_sg_mixmux8_v1_0_s_axis_tready = axis_sg_mixmux8_v1_0_1_s_axis_tready;
  always @(*) begin
    axis_sg_mixmux8_v1_0_1_s_axis_tdata = axis_sg_mixmux8_v1_0_s_axis_tdata;
    axis_sg_mixmux8_v1_0_1_s_axis_tdata = sg_translator_5_1_m_mux4_axis_tdata;
  end

  assign axis_sg_mixmux8_v1_0_m_axis_tvalid = axis_sg_mixmux8_v1_0_1_m_axis_tvalid;
  assign axis_sg_mixmux8_v1_0_m_axis_tdata = axis_sg_mixmux8_v1_0_1_m_axis_tdata;
  assign axis_sg_int4_v2_0_s_axi_awready = axis_sg_int4_v2_0_1_s_axi_awready;
  assign axis_sg_int4_v2_0_s_axi_wready = axis_sg_int4_v2_0_1_s_axi_wready;
  assign axis_sg_int4_v2_0_s_axi_bvalid = axis_sg_int4_v2_0_1_s_axi_bvalid;
  assign axis_sg_int4_v2_0_s_axi_bresp = axis_sg_int4_v2_0_1_s_axi_bresp;
  assign axis_sg_int4_v2_0_s_axi_arready = axis_sg_int4_v2_0_1_s_axi_arready;
  assign axis_sg_int4_v2_0_s_axi_rvalid = axis_sg_int4_v2_0_1_s_axi_rvalid;
  assign axis_sg_int4_v2_0_s_axi_rdata = axis_sg_int4_v2_0_1_s_axi_rdata;
  assign axis_sg_int4_v2_0_s_axi_rresp = axis_sg_int4_v2_0_1_s_axi_rresp;
  always @(*) begin
    axis_sg_int4_v2_0_1_s_axi_aclk_i = axis_sg_int4_v2_0_s_axi_aclk_i;
    axis_sg_int4_v2_0_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_sg_int4_v2_0_1_s_axi_aresetn = axis_sg_int4_v2_0_s_axi_aresetn;
    axis_sg_int4_v2_0_1_s_axi_aresetn = rst_100;
  end

  assign axis_sg_int4_v2_0_s0_axis_tready = axis_sg_int4_v2_0_1_s0_axis_tready;
  always @(*) begin
    axis_sg_int4_v2_0_1_s0_axis_aclk = axis_sg_int4_v2_0_s0_axis_aclk;
    axis_sg_int4_v2_0_1_s0_axis_aclk = clk_pl;
  end

  always @(*) begin
    axis_sg_int4_v2_0_1_s0_axis_aresetn = axis_sg_int4_v2_0_s0_axis_aresetn;
    axis_sg_int4_v2_0_1_s0_axis_aresetn = rst_100;
  end

  always @(*) begin
    axis_sg_int4_v2_0_1_aresetn = axis_sg_int4_v2_0_aresetn;
    axis_sg_int4_v2_0_1_aresetn = rst_dac3;
  end

  always @(*) begin
    axis_sg_int4_v2_0_1_aclk_i = axis_sg_int4_v2_0_aclk_i;
    axis_sg_int4_v2_0_1_aclk_i = clk_dac3;
  end

  always @(*) begin
    axis_sg_int4_v2_0_1_s1_axis_tvalid = axis_sg_int4_v2_0_s1_axis_tvalid;
    axis_sg_int4_v2_0_1_s1_axis_tvalid = sg_translator_3_1_m_gen_v6_axis_tvalid;
  end

  assign axis_sg_int4_v2_0_s1_axis_tready = axis_sg_int4_v2_0_1_s1_axis_tready;
  always @(*) begin
    axis_sg_int4_v2_0_1_s1_axis_tdata = axis_sg_int4_v2_0_s1_axis_tdata;
    axis_sg_int4_v2_0_1_s1_axis_tdata = sg_translator_3_1_m_gen_v6_axis_tdata;
  end

  assign axis_sg_int4_v2_0_m_axis_tvalid = axis_sg_int4_v2_0_1_m_axis_tvalid;
  assign axis_sg_int4_v2_0_m_axis_tdata = axis_sg_int4_v2_0_1_m_axis_tdata;
  assign axis_sg_int4_v2_1_s_axi_awready = axis_sg_int4_v2_1_1_s_axi_awready;
  assign axis_sg_int4_v2_1_s_axi_wready = axis_sg_int4_v2_1_1_s_axi_wready;
  assign axis_sg_int4_v2_1_s_axi_bvalid = axis_sg_int4_v2_1_1_s_axi_bvalid;
  assign axis_sg_int4_v2_1_s_axi_bresp = axis_sg_int4_v2_1_1_s_axi_bresp;
  assign axis_sg_int4_v2_1_s_axi_arready = axis_sg_int4_v2_1_1_s_axi_arready;
  assign axis_sg_int4_v2_1_s_axi_rvalid = axis_sg_int4_v2_1_1_s_axi_rvalid;
  assign axis_sg_int4_v2_1_s_axi_rdata = axis_sg_int4_v2_1_1_s_axi_rdata;
  assign axis_sg_int4_v2_1_s_axi_rresp = axis_sg_int4_v2_1_1_s_axi_rresp;
  always @(*) begin
    axis_sg_int4_v2_1_1_s_axi_aclk_i = axis_sg_int4_v2_1_s_axi_aclk;
    axis_sg_int4_v2_1_1_s_axi_aclk_i = clk_pl;
  end

  always @(*) begin
    axis_sg_int4_v2_1_1_s_axi_aresetn = axis_sg_int4_v2_1_s_axi_aresetn;
    axis_sg_int4_v2_1_1_s_axi_aresetn = rst_100;
  end

  assign axis_sg_int4_v2_1_s0_axis_tready = axis_sg_int4_v2_1_1_s0_axis_tready;
  always @(*) begin
    axis_sg_int4_v2_1_1_s0_axis_aclk = axis_sg_int4_v2_1_s0_axis_aclk;
    axis_sg_int4_v2_1_1_s0_axis_aclk = clk_pl;
  end

  always @(*) begin
    axis_sg_int4_v2_1_1_s0_axis_aresetn = axis_sg_int4_v2_1_s0_axis_aresetn;
    axis_sg_int4_v2_1_1_s0_axis_aresetn = rst_100;
  end

  always @(*) begin
    axis_sg_int4_v2_1_1_aresetn = axis_sg_int4_v2_1_aresetn;
    axis_sg_int4_v2_1_1_aresetn = rst_dac3;
  end

  always @(*) begin
    axis_sg_int4_v2_1_1_aclk_i = axis_sg_int4_v2_1_aclk;
    axis_sg_int4_v2_1_1_aclk_i = clk_dac3;
  end

  always @(*) begin
    axis_sg_int4_v2_1_1_s1_axis_tvalid = axis_sg_int4_v2_1_s1_axis_tvalid;
    axis_sg_int4_v2_1_1_s1_axis_tvalid = sg_translator_4_1_m_gen_v6_axis_tvalid;
  end

  assign axis_sg_int4_v2_1_s1_axis_tready = axis_sg_int4_v2_1_1_s1_axis_tready;
  always @(*) begin
    axis_sg_int4_v2_1_1_s1_axis_tdata = axis_sg_int4_v2_1_s1_axis_tdata;
    axis_sg_int4_v2_1_1_s1_axis_tdata = sg_translator_4_1_m_gen_v6_axis_tdata;
  end

  assign axis_sg_int4_v2_1_m_axis_tvalid = axis_sg_int4_v2_1_1_m_axis_tvalid;
  assign axis_sg_int4_v2_1_m_axis_tdata = axis_sg_int4_v2_1_1_m_axis_tdata;
  always @(*) begin
    axis_resampler_2x1_v1_0_1_aclk = axis_resampler_2x1_v1_0_aclk;
    axis_resampler_2x1_v1_0_1_aclk = clk_dac2;
  end

  always @(*) begin
    axis_resampler_2x1_v1_0_1_aresetn = axis_resampler_2x1_v1_0_aresetn;
    axis_resampler_2x1_v1_0_1_aresetn = rst_dac2;
  end

  assign axis_resampler_2x1_v1_0_s_axis_tready = axis_resampler_2x1_v1_0_1_s_axis_tready;
  assign axis_resampler_2x1_v1_0_m_axis_tvalid = axis_resampler_2x1_v1_0_1_m_axis_tvalid;
  always @(*) begin
    axis_resampler_2x1_v1_0_1_m_axis_tready = axis_resampler_2x1_v1_0_m_axis_tready;
    axis_resampler_2x1_v1_0_1_m_axis_tready = m_axis_rValidN;
  end

  assign axis_resampler_2x1_v1_0_m_axis_tdata = axis_resampler_2x1_v1_0_1_m_axis_tdata;
  assign m_axis_s2mPipe_valid = (axis_resampler_2x1_v1_0_1_m_axis_tvalid || (! m_axis_rValidN));
  assign m_axis_s2mPipe_payload_data = (m_axis_rValidN ? axis_resampler_2x1_v1_0_1_m_axis_tdata : m_axis_rData_data);
  always @(*) begin
    m_axis_s2mPipe_ready = m_axis_s2mPipe_m2sPipe_ready;
    if(when_Stream_l477) begin
      m_axis_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l477 = (! m_axis_s2mPipe_m2sPipe_valid);
  assign m_axis_s2mPipe_m2sPipe_valid = m_axis_s2mPipe_rValid;
  assign m_axis_s2mPipe_m2sPipe_payload_data = m_axis_s2mPipe_rData_data;
  assign m_axis_s2mPipe_m2sPipe_ready = axis_readout_v3_0_1_s1_axis_tready;
  assign m_gen_v6_axis_s2mPipe_valid = (sg_translator_0_1_m_gen_v6_axis_tvalid || (! m_gen_v6_axis_rValidN));
  assign m_gen_v6_axis_s2mPipe_payload_data = (m_gen_v6_axis_rValidN ? sg_translator_0_1_m_gen_v6_axis_tdata : m_gen_v6_axis_rData_data);
  always @(*) begin
    m_gen_v6_axis_s2mPipe_ready = m_gen_v6_axis_s2mPipe_m2sPipe_ready;
    if(when_Stream_l477_1) begin
      m_gen_v6_axis_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l477_1 = (! m_gen_v6_axis_s2mPipe_m2sPipe_valid);
  assign m_gen_v6_axis_s2mPipe_m2sPipe_valid = m_gen_v6_axis_s2mPipe_rValid;
  assign m_gen_v6_axis_s2mPipe_m2sPipe_payload_data = m_gen_v6_axis_s2mPipe_rData_data;
  assign m_gen_v6_axis_s2mPipe_m2sPipe_ready = axis_signal_gen_v6_0_1_s1_axis_tready;
  assign m_mux4_axis_s2mPipe_valid = (sg_translator_1_1_m_mux4_axis_tvalid || (! m_mux4_axis_rValidN));
  assign m_mux4_axis_s2mPipe_payload_data = (m_mux4_axis_rValidN ? sg_translator_1_1_m_mux4_axis_tdata : m_mux4_axis_rData_data);
  always @(*) begin
    m_mux4_axis_s2mPipe_ready = m_mux4_axis_s2mPipe_m2sPipe_ready;
    if(when_Stream_l477_2) begin
      m_mux4_axis_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l477_2 = (! m_mux4_axis_s2mPipe_m2sPipe_valid);
  assign m_mux4_axis_s2mPipe_m2sPipe_valid = m_mux4_axis_s2mPipe_rValid;
  assign m_mux4_axis_s2mPipe_m2sPipe_payload_data = m_mux4_axis_s2mPipe_rData_data;
  assign m_mux4_axis_s2mPipe_m2sPipe_ready = m_mux4_axis_s2mPipe_m2sPipe_rValidN;
  assign m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_valid = (m_mux4_axis_s2mPipe_m2sPipe_valid || (! m_mux4_axis_s2mPipe_m2sPipe_rValidN));
  assign m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_payload_data = (m_mux4_axis_s2mPipe_m2sPipe_rValidN ? m_mux4_axis_s2mPipe_m2sPipe_payload_data : m_mux4_axis_s2mPipe_m2sPipe_rData_data);
  always @(*) begin
    m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_ready = m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_ready;
    if(when_Stream_l477_3) begin
      m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l477_3 = (! m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_valid);
  assign m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_valid = m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rValid;
  assign m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_payload_data = m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rData_data;
  assign m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_m2sPipe_ready = axis_sg_mux8_v1_0_1_s_axis_tready;
  assign m_axis_0_toStream_valid = axis_tmux_v1_0_1_m0_axis_tvalid;
  assign m_axis_0_toStream_payload = axis_tmux_v1_0_1_m0_axis_tdata;
  assign m_axis_0_toStream_transmuted_valid = m_axis_0_toStream_valid;
  assign m_axis_0_toStream_ready = m_axis_0_toStream_transmuted_ready;
  assign m_axis_0_toStream_transmuted_payload_data = m_axis_0_toStream_payload[167 : 0];
  assign m_axis_0_toStream_transmuted_ready = sg_translator_2_1_s_axis_tready;
  assign m_gen_v6_axis_s2mPipe_valid_1 = (sg_translator_2_1_m_gen_v6_axis_tvalid || (! m_gen_v6_axis_rValidN_1));
  assign m_gen_v6_axis_s2mPipe_payload_data_1 = (m_gen_v6_axis_rValidN_1 ? sg_translator_2_1_m_gen_v6_axis_tdata : m_gen_v6_axis_rData_data_1);
  always @(*) begin
    m_gen_v6_axis_s2mPipe_ready_1 = m_gen_v6_axis_s2mPipe_m2sPipe_ready_1;
    if(when_Stream_l477_4) begin
      m_gen_v6_axis_s2mPipe_ready_1 = 1'b1;
    end
  end

  assign when_Stream_l477_4 = (! m_gen_v6_axis_s2mPipe_m2sPipe_valid_1);
  assign m_gen_v6_axis_s2mPipe_m2sPipe_valid_1 = m_gen_v6_axis_s2mPipe_rValid_1;
  assign m_gen_v6_axis_s2mPipe_m2sPipe_payload_data_1 = m_gen_v6_axis_s2mPipe_rData_data_1;
  assign m_gen_v6_axis_s2mPipe_m2sPipe_ready_1 = axis_signal_gen_v6_1_1_s1_axis_tready;
  assign m_axis_2_toStream_valid = axis_tmux_v1_0_1_m2_axis_tvalid;
  assign m_axis_2_toStream_payload = axis_tmux_v1_0_1_m2_axis_tdata;
  assign m_axis_2_toStream_ready = m_axis_2_toStream_queue_io_push_ready;
  assign io_pop_transmuted_valid = m_axis_2_toStream_queue_io_pop_valid;
  assign io_pop_transmuted_payload_data = m_axis_2_toStream_queue_io_pop_payload[167 : 0];
  assign io_pop_transmuted_ready = sg_translator_6_1_s_axis_tready;
  assign m_axis_3_toStream_valid = axis_tmux_v1_0_1_m3_axis_tvalid;
  assign m_axis_3_toStream_payload = axis_tmux_v1_0_1_m3_axis_tdata;
  assign m_axis_3_toStream_transmuted_valid = m_axis_3_toStream_valid;
  assign m_axis_3_toStream_ready = m_axis_3_toStream_transmuted_ready;
  assign m_axis_3_toStream_transmuted_payload_data = m_axis_3_toStream_payload[167 : 0];
  assign m_axis_3_toStream_transmuted_ready = sg_translator_7_1_s_axis_tready;
  assign m_readout_axis_s2mPipe_valid = (sg_translator_7_1_m_readout_axis_tvalid || (! m_readout_axis_rValidN));
  assign m_readout_axis_s2mPipe_payload_data = (m_readout_axis_rValidN ? sg_translator_7_1_m_readout_axis_tdata : m_readout_axis_rData_data);
  always @(*) begin
    m_readout_axis_s2mPipe_ready = m_readout_axis_s2mPipe_m2sPipe_ready;
    if(when_Stream_l477_5) begin
      m_readout_axis_s2mPipe_ready = 1'b1;
    end
  end

  assign when_Stream_l477_5 = (! m_readout_axis_s2mPipe_m2sPipe_valid);
  assign m_readout_axis_s2mPipe_m2sPipe_valid = m_readout_axis_s2mPipe_rValid;
  assign m_readout_axis_s2mPipe_m2sPipe_payload_data = m_readout_axis_s2mPipe_rData_data;
  assign m_readout_axis_s2mPipe_m2sPipe_ready = axis_readout_v3_0_1_s0_axis_tready;
  assign axis_avg_buffer_0_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_0_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_0_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_0_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_0_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_0_m_axis_aresetn = 1'bx;
  assign axis_avg_buffer_1_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_1_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_1_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_1_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_1_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_1_m_axis_aresetn = 1'bx;
  assign axis_avg_buffer_2_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_2_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_2_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_2_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_2_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_2_m_axis_aresetn = 1'bx;
  assign axis_avg_buffer_3_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_3_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_3_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_3_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_3_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_3_m_axis_aresetn = 1'bx;
  assign axis_avg_buffer_4_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_4_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_4_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_4_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_4_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_4_m_axis_aresetn = 1'bx;
  assign axis_avg_buffer_5_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_5_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_5_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_5_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_5_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_5_m_axis_aresetn = 1'bx;
  assign axis_avg_buffer_6_s_axi_aclk = 1'bx;
  assign axis_avg_buffer_6_s_axi_aresetn = 1'bx;
  assign axis_avg_buffer_6_s_axis_aclk = 1'bx;
  assign axis_avg_buffer_6_s_axis_aresetn = 1'bx;
  assign axis_avg_buffer_6_m_axis_aclk = 1'bx;
  assign axis_avg_buffer_6_m_axis_aresetn = 1'bx;
  assign mr_buffer_et_0_s00_axi_aclk = 1'bx;
  assign mr_buffer_et_0_s00_axi_aresetn = 1'bx;
  assign mr_buffer_et_0_s00_axis_aclk = 1'bx;
  assign mr_buffer_et_0_s00_axis_aresetn = 1'bx;
  assign mr_buffer_et_0_m00_axis_aclk = 1'bx;
  assign mr_buffer_et_0_m00_axis_aresetn = 1'bx;
  assign axis_pfb_readout_v3_0_s_axi_aresetn = 1'bx;
  assign axis_pfb_readout_v3_0_s_axi_aclk = 1'bx;
  assign axis_pfb_readout_v3_0_aresetn = 1'bx;
  assign axis_pfb_readout_v3_0_aclk = 1'bx;
  assign axis_readout_v2_0_s_axi_aclk = 1'bx;
  assign axis_readout_v2_0_s_axi_aresetn = 1'bx;
  assign axis_readout_v2_0_aresetn = 1'bx;
  assign axis_readout_v2_0_aclk = 1'bx;
  assign axis_readout_v3_0_aclk = 1'bx;
  assign axis_readout_v3_0_aresetn = 1'bx;
  assign axis_dyn_readout_v1_0_aresetn = 1'bx;
  assign axis_dyn_readout_v1_0_aclk = 1'bx;
  assign axis_signal_gen_v6_0_s_axi_aclk = 1'bx;
  assign axis_signal_gen_v6_0_s_axi_aresetn = 1'bx;
  assign axis_signal_gen_v6_0_s0_axis_aclk = 1'bx;
  assign axis_signal_gen_v6_0_s0_axis_aresetn = 1'bx;
  assign axis_signal_gen_v6_0_aresetn = 1'bx;
  assign axis_signal_gen_v6_0_aclk = 1'bx;
  assign axis_signal_gen_v6_1_s_axi_aclk = 1'bx;
  assign axis_signal_gen_v6_1_s_axi_aresetn = 1'bx;
  assign axis_signal_gen_v6_1_s0_axis_aclk = 1'bx;
  assign axis_signal_gen_v6_1_s0_axis_aresetn = 1'bx;
  assign axis_signal_gen_v6_1_aresetn = 1'bx;
  assign axis_signal_gen_v6_1_aclk_i = 1'bx;
  assign axis_tmux_v1_0_aresetn = 1'bx;
  assign axis_tmux_v1_0_aclk = 1'bx;
  assign axis_cdcsync_v1_1_s_axis_aresetn = 1'bx;
  assign axis_cdcsync_v1_1_s_axis_aclk = 1'bx;
  assign axis_cdcsync_v1_1_m_axis_aresetn = 1'bx;
  assign axis_cdcsync_v1_1_m_axis_aclk = 1'bx;
  assign axis_sg_mux8_v1_0_s_axi_aresetn = 1'bx;
  assign axis_sg_mux8_v1_0_s_axi_aclk = 1'bx;
  assign axis_sg_mux8_v1_0_aclk = 1'bx;
  assign axis_sg_mux8_v1_0_aresetn = 1'bx;
  assign axis_sg_mixmux8_v1_0_s_axi_aresetn = 1'bx;
  assign axis_sg_mixmux8_v1_0_s_axi_aclk = 1'bx;
  assign axis_sg_mixmux8_v1_0_aresetn = 1'bx;
  assign axis_sg_mixmux8_v1_0_aclk = 1'bx;
  assign axis_sg_int4_v2_0_s_axi_aclk_i = 1'bx;
  assign axis_sg_int4_v2_0_s_axi_aresetn = 1'bx;
  assign axis_sg_int4_v2_0_s0_axis_aclk = 1'bx;
  assign axis_sg_int4_v2_0_s0_axis_aresetn = 1'bx;
  assign axis_sg_int4_v2_0_aresetn = 1'bx;
  assign axis_sg_int4_v2_0_aclk_i = 1'bx;
  assign axis_sg_int4_v2_1_s_axi_aclk = 1'bx;
  assign axis_sg_int4_v2_1_s_axi_aresetn = 1'bx;
  assign axis_sg_int4_v2_1_s0_axis_aclk = 1'bx;
  assign axis_sg_int4_v2_1_s0_axis_aresetn = 1'bx;
  assign axis_sg_int4_v2_1_aresetn = 1'bx;
  assign axis_sg_int4_v2_1_aclk = 1'bx;
  assign axis_resampler_2x1_v1_0_aclk = 1'bx;
  assign axis_resampler_2x1_v1_0_aresetn = 1'bx;
  always @(posedge clk_dac2 or posedge rst_dac2) begin
    if(rst_dac2) begin
      m_axis_toFlow_stage_valid <= 1'b0;
      m_axis_toFlow_stage_stage_valid <= 1'b0;
      m_axis_toFlow_stage_stage_stage_valid <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_valid <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_stage_valid <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid <= 1'b0;
      m_axis_toFlow_stage_valid_1 <= 1'b0;
      m_axis_toFlow_stage_stage_valid_1 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_valid_1 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_valid_1 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_stage_valid_1 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_1 <= 1'b0;
      m_axis_toFlow_stage_valid_2 <= 1'b0;
      m_axis_toFlow_stage_stage_valid_2 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_valid_2 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_valid_2 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_stage_valid_2 <= 1'b0;
      m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_2 <= 1'b0;
      m_axis_rValidN <= 1'b1;
      m_axis_s2mPipe_rValid <= 1'b0;
      m_gen_v6_axis_rValidN <= 1'b1;
      m_gen_v6_axis_s2mPipe_rValid <= 1'b0;
      m_mux4_axis_rValidN <= 1'b1;
      m_mux4_axis_s2mPipe_rValid <= 1'b0;
      m_mux4_axis_s2mPipe_m2sPipe_rValidN <= 1'b1;
      m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rValid <= 1'b0;
      m_gen_v6_axis_rValidN_1 <= 1'b1;
      m_gen_v6_axis_s2mPipe_rValid_1 <= 1'b0;
      m_readout_axis_rValidN <= 1'b1;
      m_readout_axis_s2mPipe_rValid <= 1'b0;
    end else begin
      m_axis_toFlow_stage_valid <= m_axis_toFlow_valid;
      m_axis_toFlow_stage_stage_valid <= m_axis_toFlow_stage_valid;
      m_axis_toFlow_stage_stage_stage_valid <= m_axis_toFlow_stage_stage_valid;
      m_axis_toFlow_stage_stage_stage_stage_valid <= m_axis_toFlow_stage_stage_stage_valid;
      m_axis_toFlow_stage_stage_stage_stage_stage_valid <= m_axis_toFlow_stage_stage_stage_stage_valid;
      m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid <= m_axis_toFlow_stage_stage_stage_stage_stage_valid;
      m_axis_toFlow_stage_valid_1 <= m_axis_toFlow_valid_1;
      m_axis_toFlow_stage_stage_valid_1 <= m_axis_toFlow_stage_valid_1;
      m_axis_toFlow_stage_stage_stage_valid_1 <= m_axis_toFlow_stage_stage_valid_1;
      m_axis_toFlow_stage_stage_stage_stage_valid_1 <= m_axis_toFlow_stage_stage_stage_valid_1;
      m_axis_toFlow_stage_stage_stage_stage_stage_valid_1 <= m_axis_toFlow_stage_stage_stage_stage_valid_1;
      m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_1 <= m_axis_toFlow_stage_stage_stage_stage_stage_valid_1;
      m_axis_toFlow_stage_valid_2 <= m_axis_toFlow_valid_2;
      m_axis_toFlow_stage_stage_valid_2 <= m_axis_toFlow_stage_valid_2;
      m_axis_toFlow_stage_stage_stage_valid_2 <= m_axis_toFlow_stage_stage_valid_2;
      m_axis_toFlow_stage_stage_stage_stage_valid_2 <= m_axis_toFlow_stage_stage_stage_valid_2;
      m_axis_toFlow_stage_stage_stage_stage_stage_valid_2 <= m_axis_toFlow_stage_stage_stage_stage_valid_2;
      m_axis_toFlow_stage_stage_stage_stage_stage_stage_valid_2 <= m_axis_toFlow_stage_stage_stage_stage_stage_valid_2;
      if(axis_resampler_2x1_v1_0_1_m_axis_tvalid) begin
        m_axis_rValidN <= 1'b0;
      end
      if(m_axis_s2mPipe_ready) begin
        m_axis_rValidN <= 1'b1;
      end
      if(m_axis_s2mPipe_ready) begin
        m_axis_s2mPipe_rValid <= m_axis_s2mPipe_valid;
      end
      if(sg_translator_0_1_m_gen_v6_axis_tvalid) begin
        m_gen_v6_axis_rValidN <= 1'b0;
      end
      if(m_gen_v6_axis_s2mPipe_ready) begin
        m_gen_v6_axis_rValidN <= 1'b1;
      end
      if(m_gen_v6_axis_s2mPipe_ready) begin
        m_gen_v6_axis_s2mPipe_rValid <= m_gen_v6_axis_s2mPipe_valid;
      end
      if(sg_translator_1_1_m_mux4_axis_tvalid) begin
        m_mux4_axis_rValidN <= 1'b0;
      end
      if(m_mux4_axis_s2mPipe_ready) begin
        m_mux4_axis_rValidN <= 1'b1;
      end
      if(m_mux4_axis_s2mPipe_ready) begin
        m_mux4_axis_s2mPipe_rValid <= m_mux4_axis_s2mPipe_valid;
      end
      if(m_mux4_axis_s2mPipe_m2sPipe_valid) begin
        m_mux4_axis_s2mPipe_m2sPipe_rValidN <= 1'b0;
      end
      if(m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_ready) begin
        m_mux4_axis_s2mPipe_m2sPipe_rValidN <= 1'b1;
      end
      if(m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_ready) begin
        m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rValid <= m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_valid;
      end
      if(sg_translator_2_1_m_gen_v6_axis_tvalid) begin
        m_gen_v6_axis_rValidN_1 <= 1'b0;
      end
      if(m_gen_v6_axis_s2mPipe_ready_1) begin
        m_gen_v6_axis_rValidN_1 <= 1'b1;
      end
      if(m_gen_v6_axis_s2mPipe_ready_1) begin
        m_gen_v6_axis_s2mPipe_rValid_1 <= m_gen_v6_axis_s2mPipe_valid_1;
      end
      if(sg_translator_7_1_m_readout_axis_tvalid) begin
        m_readout_axis_rValidN <= 1'b0;
      end
      if(m_readout_axis_s2mPipe_ready) begin
        m_readout_axis_rValidN <= 1'b1;
      end
      if(m_readout_axis_s2mPipe_ready) begin
        m_readout_axis_s2mPipe_rValid <= m_readout_axis_s2mPipe_valid;
      end
    end
  end

  always @(posedge clk_dac2) begin
    m_axis_toFlow_stage_payload_data <= m_axis_toFlow_payload_data;
    m_axis_toFlow_stage_stage_payload_data <= m_axis_toFlow_stage_payload_data;
    m_axis_toFlow_stage_stage_stage_payload_data <= m_axis_toFlow_stage_stage_payload_data;
    m_axis_toFlow_stage_stage_stage_stage_payload_data <= m_axis_toFlow_stage_stage_stage_payload_data;
    m_axis_toFlow_stage_stage_stage_stage_stage_payload_data <= m_axis_toFlow_stage_stage_stage_stage_payload_data;
    m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data <= m_axis_toFlow_stage_stage_stage_stage_stage_payload_data;
    m_axis_toFlow_stage_payload_data_1 <= m_axis_toFlow_payload_data_1;
    m_axis_toFlow_stage_stage_payload_data_1 <= m_axis_toFlow_stage_payload_data_1;
    m_axis_toFlow_stage_stage_stage_payload_data_1 <= m_axis_toFlow_stage_stage_payload_data_1;
    m_axis_toFlow_stage_stage_stage_stage_payload_data_1 <= m_axis_toFlow_stage_stage_stage_payload_data_1;
    m_axis_toFlow_stage_stage_stage_stage_stage_payload_data_1 <= m_axis_toFlow_stage_stage_stage_stage_payload_data_1;
    m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data_1 <= m_axis_toFlow_stage_stage_stage_stage_stage_payload_data_1;
    m_axis_toFlow_stage_payload_data_2 <= m_axis_toFlow_payload_data_2;
    m_axis_toFlow_stage_stage_payload_data_2 <= m_axis_toFlow_stage_payload_data_2;
    m_axis_toFlow_stage_stage_stage_payload_data_2 <= m_axis_toFlow_stage_stage_payload_data_2;
    m_axis_toFlow_stage_stage_stage_stage_payload_data_2 <= m_axis_toFlow_stage_stage_stage_payload_data_2;
    m_axis_toFlow_stage_stage_stage_stage_stage_payload_data_2 <= m_axis_toFlow_stage_stage_stage_stage_payload_data_2;
    m_axis_toFlow_stage_stage_stage_stage_stage_stage_payload_data_2 <= m_axis_toFlow_stage_stage_stage_stage_stage_payload_data_2;
    if(axis_resampler_2x1_v1_0_1_m_axis_tready) begin
      m_axis_rData_data <= axis_resampler_2x1_v1_0_1_m_axis_tdata;
    end
    if(m_axis_s2mPipe_ready) begin
      m_axis_s2mPipe_rData_data <= m_axis_s2mPipe_payload_data;
    end
    if(m_gen_v6_axis_rValidN) begin
      m_gen_v6_axis_rData_data <= sg_translator_0_1_m_gen_v6_axis_tdata;
    end
    if(m_gen_v6_axis_s2mPipe_ready) begin
      m_gen_v6_axis_s2mPipe_rData_data <= m_gen_v6_axis_s2mPipe_payload_data;
    end
    if(m_mux4_axis_rValidN) begin
      m_mux4_axis_rData_data <= sg_translator_1_1_m_mux4_axis_tdata;
    end
    if(m_mux4_axis_s2mPipe_ready) begin
      m_mux4_axis_s2mPipe_rData_data <= m_mux4_axis_s2mPipe_payload_data;
    end
    if(m_mux4_axis_s2mPipe_m2sPipe_ready) begin
      m_mux4_axis_s2mPipe_m2sPipe_rData_data <= m_mux4_axis_s2mPipe_m2sPipe_payload_data;
    end
    if(m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_ready) begin
      m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_rData_data <= m_mux4_axis_s2mPipe_m2sPipe_s2mPipe_payload_data;
    end
    if(m_gen_v6_axis_rValidN_1) begin
      m_gen_v6_axis_rData_data_1 <= sg_translator_2_1_m_gen_v6_axis_tdata;
    end
    if(m_gen_v6_axis_s2mPipe_ready_1) begin
      m_gen_v6_axis_s2mPipe_rData_data_1 <= m_gen_v6_axis_s2mPipe_payload_data_1;
    end
    if(m_readout_axis_rValidN) begin
      m_readout_axis_rData_data <= sg_translator_7_1_m_readout_axis_tdata;
    end
    if(m_readout_axis_s2mPipe_ready) begin
      m_readout_axis_s2mPipe_rData_data <= m_readout_axis_s2mPipe_payload_data;
    end
  end


endmodule

module StreamFifoCC_7 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [167:0]  io_push_payload,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [167:0]  io_pop_payload,
  output wire [1:0]    io_pushOccupancy,
  output wire [1:0]    io_popOccupancy,
  input  wire          clk_dac2,
  input  wire          rst_dac2,
  input  wire          clk_adc2
);

  reg        [167:0]  ram_spinal_port1;
  wire       [1:0]    popToPushGray_buffercc_io_dataOut;
  wire                toplevel_rst_dac2_asyncAssertSyncDeassert_buffercc_io_dataOut;
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
  wire                toplevel_rst_dac2_asyncAssertSyncDeassert;
  wire                toplevel_rst_dac2_synchronized;
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
  wire       [167:0]  popCC_readPort_rsp;
  wire                popCC_addressGen_toFlowFire_valid;
  wire       [0:0]    popCC_addressGen_toFlowFire_payload;
  wire                popCC_readArbitation_translated_valid;
  wire                popCC_readArbitation_translated_ready;
  wire       [167:0]  popCC_readArbitation_translated_payload;
  wire                popCC_readArbitation_fire;
  (* altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    popCC_ptrToPush;
  reg        [1:0]    popCC_ptrToOccupancy;
  wire                _zz_io_popOccupancy;
  reg [167:0] ram [0:1];

  assign _zz_pushCC_pushPtrGray = (pushCC_pushPtrPlus >>> 1'b1);
  assign _zz_ram_port = pushCC_pushPtr[0:0];
  assign _zz_popCC_popPtrGray = (popCC_popPtr >>> 1'b1);
  always @(posedge clk_dac2) begin
    if(_zz_1) begin
      ram[_zz_ram_port] <= io_push_payload;
    end
  end

  always @(posedge clk_adc2) begin
    if(popCC_readPort_cmd_valid) begin
      ram_spinal_port1 <= ram[popCC_readPort_cmd_payload];
    end
  end

  (* keep_hierarchy = "TRUE" *) BufferCC_15 popToPushGray_buffercc (
    .io_dataIn  (popToPushGray[1:0]                    ), //i
    .io_dataOut (popToPushGray_buffercc_io_dataOut[1:0]), //o
    .clk_dac2   (clk_dac2                              ), //i
    .rst_dac2   (rst_dac2                              )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_16 toplevel_rst_dac2_asyncAssertSyncDeassert_buffercc (
    .io_dataIn  (toplevel_rst_dac2_asyncAssertSyncDeassert                    ), //i
    .io_dataOut (toplevel_rst_dac2_asyncAssertSyncDeassert_buffercc_io_dataOut), //o
    .clk_adc2   (clk_adc2                                                     ), //i
    .rst_dac2   (rst_dac2                                                     )  //i
  );
  (* keep_hierarchy = "TRUE" *) BufferCC_17 pushToPopGray_buffercc (
    .io_dataIn                      (pushToPopGray[1:0]                    ), //i
    .io_dataOut                     (pushToPopGray_buffercc_io_dataOut[1:0]), //o
    .clk_adc2                       (clk_adc2                              ), //i
    .toplevel_rst_dac2_synchronized (toplevel_rst_dac2_synchronized        )  //i
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
  assign toplevel_rst_dac2_asyncAssertSyncDeassert = (1'b0 ^ 1'b0);
  assign toplevel_rst_dac2_synchronized = toplevel_rst_dac2_asyncAssertSyncDeassert_buffercc_io_dataOut;
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
  assign popCC_readPort_rsp = ram_spinal_port1;
  assign popCC_addressGen_toFlowFire_valid = popCC_addressGen_fire;
  assign popCC_addressGen_toFlowFire_payload = popCC_addressGen_payload;
  assign popCC_readPort_cmd_valid = popCC_addressGen_toFlowFire_valid;
  assign popCC_readPort_cmd_payload = popCC_addressGen_toFlowFire_payload;
  assign popCC_readArbitation_translated_valid = popCC_readArbitation_valid;
  assign popCC_readArbitation_ready = popCC_readArbitation_translated_ready;
  assign popCC_readArbitation_translated_payload = popCC_readPort_rsp;
  assign io_pop_valid = popCC_readArbitation_translated_valid;
  assign popCC_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = popCC_readArbitation_translated_payload;
  assign popCC_readArbitation_fire = (popCC_readArbitation_valid && popCC_readArbitation_ready);
  assign _zz_io_popOccupancy = popCC_pushPtrGray[1];
  assign io_popOccupancy = ({_zz_io_popOccupancy,(popCC_pushPtrGray[0] ^ _zz_io_popOccupancy)} - popCC_ptrToOccupancy);
  assign pushToPopGray = pushCC_pushPtrGray;
  assign popToPushGray = popCC_ptrToPush;
  always @(posedge clk_dac2 or posedge rst_dac2) begin
    if(rst_dac2) begin
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

  always @(posedge clk_adc2 or posedge toplevel_rst_dac2_synchronized) begin
    if(toplevel_rst_dac2_synchronized) begin
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

  always @(posedge clk_adc2) begin
    if(popCC_addressGen_ready) begin
      popCC_addressGen_rData <= popCC_addressGen_payload;
    end
  end


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

  axis_resampler_2x1_v1_0 axisResampler_1 (
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

module AxisSgInt4_1 (
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

  axis_sg_int4_v2_1 axisSgInt4_2 (
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

  axis_sg_int4_v2_0 axisSgInt4_2 (
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

  axis_sg_mixmux8_v1_0 axisSgMixMux8_1 (
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
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) input  wire [39:0]   s_axis_tdata,
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

  axis_sg_mux8_v1_0 axisSgMux8_1 (
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
    .s_axis_tdata  (s_axis_tdata[39:0]              ), //i
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
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 430080000" *) output wire [167:0]  m2_axis_tdata
);

  wire                axisCdcsync_1_s0_axis_tready;
  wire                axisCdcsync_1_s1_axis_tready;
  wire                axisCdcsync_1_s2_axis_tready;
  wire                axisCdcsync_1_m0_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m0_axis_tdata;
  wire                axisCdcsync_1_m1_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m1_axis_tdata;
  wire                axisCdcsync_1_m2_axis_tvalid;
  wire       [167:0]  axisCdcsync_1_m2_axis_tdata;

  axis_cdcsync_v1_1 axisCdcsync_1 (
    .s_axis_aresetn (s_axis_aresetn                    ), //i
    .s_axis_aclk    (s_axis_aclk                       ), //i
    .s0_axis_tvalid (s0_axis_tvalid                    ), //i
    .s0_axis_tready (axisCdcsync_1_s0_axis_tready      ), //o
    .s0_axis_tdata  (s0_axis_tdata[167:0]              ), //i
    .s1_axis_tvalid (s1_axis_tvalid                    ), //i
    .s1_axis_tready (axisCdcsync_1_s1_axis_tready      ), //o
    .s1_axis_tdata  (s1_axis_tdata[167:0]              ), //i
    .s2_axis_tvalid (s2_axis_tvalid                    ), //i
    .s2_axis_tready (axisCdcsync_1_s2_axis_tready      ), //o
    .s2_axis_tdata  (s2_axis_tdata[167:0]              ), //i
    .m_axis_aresetn (m_axis_aresetn                    ), //i
    .m_axis_aclk    (m_axis_aclk                       ), //i
    .m0_axis_tvalid (axisCdcsync_1_m0_axis_tvalid      ), //o
    .m0_axis_tready (m0_axis_tready                    ), //i
    .m0_axis_tdata  (axisCdcsync_1_m0_axis_tdata[167:0]), //o
    .m1_axis_tvalid (axisCdcsync_1_m1_axis_tvalid      ), //o
    .m1_axis_tready (m1_axis_tready                    ), //i
    .m1_axis_tdata  (axisCdcsync_1_m1_axis_tdata[167:0]), //o
    .m2_axis_tvalid (axisCdcsync_1_m2_axis_tvalid      ), //o
    .m2_axis_tready (m2_axis_tready                    ), //i
    .m2_axis_tdata  (axisCdcsync_1_m2_axis_tdata[167:0])  //o
  );
  assign s0_axis_tready = axisCdcsync_1_s0_axis_tready;
  assign s1_axis_tready = axisCdcsync_1_s1_axis_tready;
  assign s2_axis_tready = axisCdcsync_1_s2_axis_tready;
  assign m0_axis_tvalid = axisCdcsync_1_m0_axis_tvalid;
  assign m0_axis_tdata = axisCdcsync_1_m0_axis_tdata;
  assign m1_axis_tvalid = axisCdcsync_1_m1_axis_tvalid;
  assign m1_axis_tdata = axisCdcsync_1_m1_axis_tdata;
  assign m2_axis_tvalid = axisCdcsync_1_m2_axis_tvalid;
  assign m2_axis_tdata = axisCdcsync_1_m2_axis_tdata;

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
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 614400000" *) output wire [167:0]  m3_axis_tdata
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

  axis_tmux_v1_0 axisTmuxV1_1 (
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
    .m3_axis_tdata  (axisTmuxV1_1_m3_axis_tdata[167:0])  //o
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

  axis_signal_gen_v6_1 axisSignalGenV6_2 (
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

  axis_signal_gen_v6_0 axisSignalGenV6_2 (
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

  axis_dyn_readout_v1_0 axisDynReadout_1 (
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

  axis_readout_v3_0 axisReadout (
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

  axis_readout_v2_0 axisReadout (
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

  axis_pfb_readout_v3_0 axisPfbReadout_1 (
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
  input  wire          m00_axis_aresetn
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

  mr_buffer_et_0 mrbuffer (
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
    .m00_axis_aresetn (m00_axis_aresetn             )  //i
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

endmodule

//StreamFifoCC_6 replaced by StreamFifoCC_1

module AxisAvgBuffer_6 (
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

  axis_avg_buffer_6 axisAvgBuffer_7 (
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

//StreamFifoCC_5 replaced by StreamFifoCC_1

module AxisAvgBuffer_5 (
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

  axis_avg_buffer_5 axisAvgBuffer_7 (
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

//StreamFifoCC_4 replaced by StreamFifoCC_1

module AxisAvgBuffer_4 (
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

  axis_avg_buffer_4 axisAvgBuffer_7 (
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

//StreamFifoCC_3 replaced by StreamFifoCC_1

module AxisAvgBuffer_3 (
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

  axis_avg_buffer_3 axisAvgBuffer_7 (
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

  axis_avg_buffer_2 axisAvgBuffer_7 (
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

module AxisAvgBuffer_1 (
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

  axis_avg_buffer_1 axisAvgBuffer_7 (
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

  axis_avg_buffer_0 axisAvgBuffer_7 (
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

module BufferCC_17 (
  input  wire [1:0]    io_dataIn,
  output wire [1:0]    io_dataOut,
  input  wire          clk_adc2,
  input  wire          toplevel_rst_dac2_synchronized
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    buffers_0;
  (* async_reg = "true" *) reg        [1:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_adc2 or posedge toplevel_rst_dac2_synchronized) begin
    if(toplevel_rst_dac2_synchronized) begin
      buffers_0 <= 2'b00;
      buffers_1 <= 2'b00;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_16 (
  input  wire          io_dataIn,
  output wire          io_dataOut,
  input  wire          clk_adc2,
  input  wire          rst_dac2
);

  (* async_reg = "true" *) reg                 buffers_0;
  (* async_reg = "true" *) reg                 buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_adc2 or posedge rst_dac2) begin
    if(rst_dac2) begin
      buffers_0 <= 1'b1;
      buffers_1 <= 1'b1;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


endmodule

module BufferCC_15 (
  input  wire [1:0]    io_dataIn,
  output wire [1:0]    io_dataOut,
  input  wire          clk_dac2,
  input  wire          rst_dac2
);

  (* async_reg = "true" , altera_attribute = "-name ADV_NETLIST_OPT_ALLOWED NEVER_ALLOW" *) reg        [1:0]    buffers_0;
  (* async_reg = "true" *) reg        [1:0]    buffers_1;

  assign io_dataOut = buffers_1;
  always @(posedge clk_dac2 or posedge rst_dac2) begin
    if(rst_dac2) begin
      buffers_0 <= 2'b00;
      buffers_1 <= 2'b00;
    end else begin
      buffers_0 <= io_dataIn;
      buffers_1 <= buffers_0;
    end
  end


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
