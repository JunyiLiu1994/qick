package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class QickProcessorIo() extends Bundle {
  val c_clk_i = in Bool()
  val c_resetn = in Bool()
  val t_clk_i = in Bool()
  val t_resetn = in Bool()
  val ps_clk_i = in Bool()
  val ps_resetn = in Bool()
  
  // External Control
  val ext_flag_i = in Bool()
  val proc_start_i = in Bool()
  val proc_stop_i = in Bool()
  val core_start_i = in Bool()
  val core_stop_i = in Bool()
  val time_rst_i = in Bool()
  val time_init_i = in Bool()
  val time_updt_i = in Bool()
  val time_dt_i = in Bits(32 bits)
  val t_time_abs_o = out Bits(48 bits)
  val pulse_sync_o = out Bool()
  
  // QNET
  val qnet_en_o = out Bool()
  val qnet_op_o = out Bits(5 bits)
  val qnet_a_dt_o = out Bits(32 bits)
  val qnet_b_dt_o = out Bits(32 bits)
  val qnet_c_dt_o = out Bits(32 bits)
  val qnet_rdy_i = in Bool()
  val qnet_dt1_i = in Bits(32 bits)
  val qnet_dt2_i = in Bits(32 bits)
  val qnet_vld_i = in Bool()
  val qnet_flag_i = in Bool()
  
  // QCOM
  val qcom_en_o = out Bool()
  val qcom_op_o = out Bits(5 bits)
  val qcom_dt_o = out Bits(32 bits)
  val qcom_rdy_i = in Bool()
  val qcom_dt1_i = in Bits(32 bits)
  val qcom_dt2_i = in Bits(32 bits)
  val qcom_vld_i = in Bool()
  val qcom_flag_i = in Bool()
  
  // QP1
  val qp1_en_o = out Bool()
  val qp1_op_o = out Bits(5 bits)
  val qp1_a_dt_o = out Bits(32 bits)
  val qp1_b_dt_o = out Bits(32 bits)
  val qp1_c_dt_o = out Bits(32 bits)
  val qp1_d_dt_o = out Bits(32 bits)
  val qp1_rdy_i = in Bool()
  val qp1_dt1_i = in Bits(32 bits)
  val qp1_dt2_i = in Bits(32 bits)
  val qp1_vld_i = in Bool()
  val qp1_flag_i = in Bool()
  
  // QP2
  val qp2_en_o = out Bool()
  val qp2_op_o = out Bits(5 bits)
  val qp2_a_dt_o = out Bits(32 bits)
  val qp2_b_dt_o = out Bits(32 bits)
  val qp2_c_dt_o = out Bits(32 bits)
  val qp2_d_dt_o = out Bits(32 bits)
  val qp2_rdy_i = in Bool()
  val qp2_dt1_i = in Bits(32 bits)
  val qp2_dt2_i = in Bits(32 bits)
  val qp2_vld_i = in Bool()
  
  // DMA AXIS FOR READ AND WRITE MEMORY
  val s_dma_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 256 / 8, useLast = true))
  s_dma_axis.payload.data.setName("s_dma_axis_tdata_i")
  s_dma_axis.payload.last.setName("s_dma_axis_tlast_i")
  s_dma_axis.valid.setName("s_dma_axis_tvalid_i")
  s_dma_axis.ready.setName("s_dma_axis_tready_o")
  s_dma_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  // VivadoAxi4Stream.addInference(s_dma_axis, "s_dma_axis_i")

  val m_dma_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 256 / 8, useLast = true))
  m_dma_axis.payload.data.setName("m_dma_axis_tdata_o")
  m_dma_axis.payload.last.setName("m_dma_axis_tlast_o")
  m_dma_axis.valid.setName("m_dma_axis_tvalid_o")
  m_dma_axis.ready.setName("m_dma_axis_tready_i")
  m_dma_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  // VivadoAxi4Stream.addInference(m_dma_axis, "m_dma_axis_o")

  // AXI-Lite DATA Slave I/F
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 8))
  s_axi_lite.aw.addr.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  s_axi_lite.aw.addr.setName("s_axi_awaddr")
  s_axi_lite.aw.prot.setName("s_axi_awprot")
  s_axi_lite.aw.valid.setName("s_axi_awvalid")
  s_axi_lite.aw.ready.setName("s_axi_awready")
  s_axi_lite.w.data.setName("s_axi_wdata")
  s_axi_lite.w.strb.setName("s_axi_wstrb")
  s_axi_lite.w.valid.setName("s_axi_wvalid")
  s_axi_lite.w.ready.setName("s_axi_wready")
  s_axi_lite.b.resp.setName("s_axi_bresp")
  s_axi_lite.b.valid.setName("s_axi_bvalid")
  s_axi_lite.b.ready.setName("s_axi_bready")
  s_axi_lite.ar.addr.setName("s_axi_araddr")
  s_axi_lite.ar.prot.setName("s_axi_arprot")
  s_axi_lite.ar.valid.setName("s_axi_arvalid")
  s_axi_lite.ar.ready.setName("s_axi_arready")
  s_axi_lite.r.data.setName("s_axi_rdata")
  s_axi_lite.r.resp.setName("s_axi_rresp")
  s_axi_lite.r.valid.setName("s_axi_rvalid")
  s_axi_lite.r.ready.setName("s_axi_rready")
  // VivadoAxi4Lite.addInference(s_axi_lite, "s_axi")
  
  // DATA PORT INPUT
  val s_axis = Vec.fill(16)(slave port Axi4Stream(Axi4StreamConfig(dataWidth = 64 / 8)))
  for((ifc, idx) <- s_axis.zipWithIndex) {
    ifc.payload.data.setName(s"s${idx}_axis_tdata")
    ifc.valid.setName(s"s${idx}_axis_tvalid")
    ifc.ready.setName(s"s${idx}_axis_tready")
    ifc.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 204800000")
    // VivadoAxi4Stream.addInference(ifc, s"s${idx}_axis")
  }
  
  // OUT WAVE PORTS
  val m_axis = Vec.fill(16)(master port Axi4Stream(Axi4StreamConfig(dataWidth = 168 / 8)))
  for((ifc, idx) <- m_axis.zipWithIndex) {
    ifc.payload.data.setName(s"m${idx}_axis_tdata")
    ifc.valid.setName(s"m${idx}_axis_tvalid")
    ifc.ready.setName(s"m${idx}_axis_tready")
    ifc.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
    // VivadoAxi4Stream.addInference(ifc, s"m${idx}_axis")
  }
  
  // TRIGGERS
  val trig_o = Vec.fill(32)(out Bool())
  for((ifc, idx) <- trig_o.zipWithIndex) {
    ifc.setName(s"trig_${idx}_o")
  }
  
  // OUT DATA PORTS
  val port_0_dt_o = out Bits(4 bits) // OUT_DPORT_DW-1:0, using parameter value from comment
  val port_1_dt_o = out Bits(4 bits)
  val port_2_dt_o = out Bits(4 bits)
  val port_3_dt_o = out Bits(4 bits)
  
  // Debug Signals
  val ps_debug_do = out Bits(32 bits)
  val t_debug_do = out Bits(32 bits)
  val t_fifo_do = out Bits(32 bits)
  val c_time_usr_do = out Bits(32 bits)
  val c_debug_do = out Bits(32 bits)
  val c_time_ref_do = out Bits(32 bits)
  val c_proc_do = out Bits(32 bits)
  val c_port_do = out Bits(32 bits)
  val c_core_do = out Bits(32 bits)
}

case class axis_qick_processor(
  DUAL_CORE: Int = 0,
  GEN_SYNC: Int = 0,
  IO_CTRL: Int = 0,
  TIME_CTRL: Int = 0,
  CORE_CTRL: Int = 0,
  OUT_TIME: Int = 0,
  DEBUG: Int = 1,
  QNET: Int = 0,
  QCOM: Int = 0,
  CUSTOM_PERIPH: Int = 0,
  LFSR: Int = 1,
  DIVIDER: Int = 0,
  ARITH: Int = 0,
  EXT_FLAG: Int = 0,
  TIME_READ: Int = 1,
  FIFO_DEPTH: Int = 9,
  PMEM_AW: Int = 8,
  DMEM_AW: Int = 8,
  WMEM_AW: Int = 8,
  REG_AW: Int = 4,
  IN_PORT_QTY: Int = 1,
  OUT_TRIG_QTY: Int = 2,
  OUT_DPORT_QTY: Int = 1,
  OUT_DPORT_DW: Int = 4,
  OUT_WPORT_QTY: Int = 1,
  CALL_DEPTH: Int = 255
) extends BlackBox {
  addGeneric("DUAL_CORE", DUAL_CORE)
  addGeneric("GEN_SYNC", GEN_SYNC)
  addGeneric("IO_CTRL", IO_CTRL)
  addGeneric("TIME_CTRL", TIME_CTRL)
  addGeneric("CORE_CTRL", CORE_CTRL)
  addGeneric("OUT_TIME", OUT_TIME)
  addGeneric("DEBUG", DEBUG)
  addGeneric("QNET", QNET)
  addGeneric("QCOM", QCOM)
  addGeneric("CUSTOM_PERIPH", CUSTOM_PERIPH)
  addGeneric("LFSR", LFSR)
  addGeneric("DIVIDER", DIVIDER)
  addGeneric("ARITH", ARITH)
  addGeneric("EXT_FLAG", EXT_FLAG)
  addGeneric("TIME_READ", TIME_READ)
  addGeneric("FIFO_DEPTH", FIFO_DEPTH)
  addGeneric("PMEM_AW", PMEM_AW)
  addGeneric("DMEM_AW", DMEM_AW)
  addGeneric("WMEM_AW", WMEM_AW)
  addGeneric("REG_AW", REG_AW)
  addGeneric("IN_PORT_QTY", IN_PORT_QTY)
  addGeneric("OUT_TRIG_QTY", OUT_TRIG_QTY)
  addGeneric("OUT_DPORT_QTY", OUT_DPORT_QTY)
  addGeneric("OUT_DPORT_DW", OUT_DPORT_DW)
  addGeneric("OUT_WPORT_QTY", OUT_WPORT_QTY)
  addGeneric("CALL_DEPTH", CALL_DEPTH)
  val io = QickProcessorIo()
  noIoPrefix()
}

case class QickProcessor() extends Component {
  val io = QickProcessorIo()
  noIoPrefix()
  val qickProcessor = axis_qick_processor(
    ARITH = 1,
    DEBUG = 1,
    DIVIDER = 1,
    DMEM_AW = 14,
    EXT_FLAG = 0,
    IN_PORT_QTY = 7,
    IO_CTRL = 1,
    OUT_DPORT_DW = 8,
    OUT_DPORT_QTY = 1,
    OUT_TRIG_QTY = 17,
    OUT_WPORT_QTY = 5,
    PMEM_AW = 12,
    WMEM_AW = 10,
  )
  io <> qickProcessor.io
}

object QickProcessor extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./firmware/rtl/QickProcessor"
  ).generate(
    QickProcessor()
  )
}