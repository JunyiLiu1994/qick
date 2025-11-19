package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisAvgBufferIO(N_AVG: Int, N_BUF: Int, B: Int) extends Bundle {
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 6))
  val s_axi_aclk = in Bool()
  val s_axi_aresetn = in Bool()
  s_axi_lite.aw.addr.setName("s_axi_awaddr")
  s_axi_lite.aw.addr.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
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
  val trigger = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 2 * B / 8))
  val s_axis_aclk = in Bool()
  val s_axis_aresetn = in Bool()
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.data.setName("s_axis_tdata")
  s_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
  s_axis.ready.setName("s_axis_tready")
  val m_axis_aclk = in Bool()
  val m_axis_aresetn = in Bool()
  val m0_axis = master port Axi4Stream(
    Axi4StreamConfig(dataWidth = 4 * B / 8, useLast=true))
  m0_axis.valid.setName("m0_axis_tvalid")
  m0_axis.ready.setName("m0_axis_tready")
  m0_axis.data.setName("m0_axis_tdata")
  m0_axis.last.setName("m0_axis_tlast")
  m0_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  val m1_axis = master port Axi4Stream(
    Axi4StreamConfig(dataWidth = 2 * B / 8, useLast=true))
  m1_axis.valid.setName("m1_axis_tvalid")
  m1_axis.ready.setName("m1_axis_tready")
  m1_axis.data.setName("m1_axis_tdata")
  m1_axis.last.setName("m1_axis_tlast")
  m1_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  val m2_axis = master port Axi4Stream(
    Axi4StreamConfig(dataWidth = 4 * B / 8))
  m2_axis.valid.setName("m2_axis_tvalid")
  m2_axis.ready.setName("m2_axis_tready")
  m2_axis.data.setName("m2_axis_tdata")
  m2_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
}

case class axis_avg_buffer(N_AVG: Int, N_BUF: Int, B: Int) extends BlackBox {
  addGeneric("N_AVG", N_AVG)
  addGeneric("N_BUF", N_BUF)
  addGeneric("B", B)
  val io = AxisAvgBufferIO(N_AVG, N_BUF, B)
  noIoPrefix()
}

case class AxisAvgBuffer(
  N_AVG: Int = 10, N_BUF: Int = 10, B: Int = 16) extends Component {
  val io = AxisAvgBufferIO(N_AVG, N_BUF, B)
  val axisAvgBuffer = axis_avg_buffer(N_AVG, N_BUF, B)
  noIoPrefix()
  io <> axisAvgBuffer.io
  io.s_axi_aclk.setName("s_axi_aclk_i")
  io.s_axis_aclk.setName("s_axis_aclk_i")
  io.m_axis_aclk.setName("m_axis_aclk_i")
}

object AxisAvgBuffer extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisAvgBuffer(N_AVG = 13)
    dut.setDefinitionName("AxisAvgBuffer_13")
  }
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisAvgBuffer(N_AVG = 13, N_BUF = 12)
    dut.setDefinitionName("AxisAvgBuffer_13_12")
  }
}
