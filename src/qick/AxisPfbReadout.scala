package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisPfbReadoutIO(N: Int) extends Bundle {
  val s_axi_aresetn = in Bool()
  val s_axi_aclk = in Bool()
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 6))
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
  val s_axis = in port Flow(Bits(4 * 32 bits))
  s_axis.payload.setName("s_axis_tdata")
  s_axis.valid.setName("s_axis_tvalid")
  val m_axis = Vec.fill(4)(out port Flow(Bits(32 bits)))
  for(i <- 0 until 4) {
    m_axis(i).payload.setName(f"m${i}_axis_tdata")
    m_axis(i).valid.setName(f"m${i}_axis_tvalid")
  }
}

case class axis_pfb_readout_v3(N: Int) extends BlackBox {
  addGeneric("N", N)
  val io = AxisPfbReadoutIO(N)
  noIoPrefix()
}

case class AxisPfbReadout(N: Int = 64) extends Component {
  val io = AxisPfbReadoutIO(N)
  val axisPfbReadout = axis_pfb_readout_v3(N)
  noIoPrefix()
  io <> axisPfbReadout.io
  io.s_axi_aclk.setName("s_axi_aclk_i")
}

object AxisPfbReadout extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/AxisPfbReadout"
  ).generate{
    val dut = AxisPfbReadout()
    dut.setDefinitionName("AxisPfbReadout")
  }
}
