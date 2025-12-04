package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisSgMixMux8IO(N_DDS: Int) extends Bundle {
  val s_axi_aresetn = in Bool()
  val s_axi_aclk = in Bool()
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 8))
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
  val aresetn = in Bool()
  val aclk = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 40 / 8))
  s_axis.payload.data.setName("s_axis_tdata")
  s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.ready.setName("s_axis_tready")
  val m_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = N_DDS * 32 / 8))
  m_axis.payload.data.setName("m_axis_tdata")
  m_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  m_axis.valid.setName("m_axis_tvalid")
  m_axis.ready.setName("m_axis_tready")
}

case class axis_sg_mixmux8_v1(N_DDS: Int = 2) extends BlackBox {
  // addGeneric("N_DDS", N_DDS)
  val io = AxisSgMixMux8IO(N_DDS)
  noIoPrefix()
}

case class AxisSgMixMux8(N_DDS: Int = 2) extends Component {
  val io = AxisSgMixMux8IO(N_DDS)
  val axisSgMixMux8 = axis_sg_mixmux8_v1(N_DDS)
  noIoPrefix()
  io <> axisSgMixMux8.io
  io.s_axi_aclk.setName("s_axi_aclk_i")
  io.aclk.setName("aclk_i")
}

object AxisSgMixMux8 extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisSgMixMux8(4)
    dut.setDefinitionName("AxisSgMixMux8")
  }
}
