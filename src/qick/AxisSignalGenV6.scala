package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisSignalGenV6IO(N: Int) extends Bundle {
  val s_axi_aclk = in Bool()
  val s_axi_aresetn = in Bool()
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 6))
  s_axi_lite.aw.addr.setName("s_axi_awaddr")
  s_axi_lite.aw.prot.setName("s_axi_awprot")
  s_axi_lite.aw.valid.setName("s_axi_awvalid")
  s_axi_lite.aw.ready.setName("s_axi_awready")
  s_axi_lite.w.data.setName("s_axi_wdata")
  s_axi_lite.w.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
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
  val s0_axis_aclk = in Bool()
  val s0_axis_aresetn = in Bool()
  val s0_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 32 / 8))
  s0_axis.payload.data.setName("s0_axis_tdata") 
  s0_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  s0_axis.valid.setName("s0_axis_tvalid")
  s0_axis.ready.setName("s0_axis_tready")
  val aresetn = in Bool()
  val aclk = in Bool()
  val s1_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 160 / 8))
  s1_axis.payload.data.setName("s1_axis_tdata")
  s1_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  s1_axis.valid.setName("s1_axis_tvalid")
  s1_axis.ready.setName("s1_axis_tready")
  val N_DDS = 16
  val m_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 16 * N_DDS / 8))
  m_axis.payload.data.setName("m_axis_tdata")
  m_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  m_axis.valid.setName("m_axis_tvalid")
  m_axis.ready.setName("m_axis_tready")
}

case class axis_signal_gen_v6(N : Int) extends BlackBox {
  addGeneric("N", N)
  val io = AxisSignalGenV6IO(N)
  noIoPrefix()
}

case class AxisSignalGenV6(N : Int) extends Component {
  val io = AxisSignalGenV6IO(N)
  val axisSignalGenV6 = axis_signal_gen_v6(N)
  noIoPrefix()
  io <> axisSignalGenV6.io
  io.s_axi_aclk.setName("s_axi_aclk_i")
  io.s0_axis_aclk.setName("s0_axis_aclk_i")
  io.aclk.setName("aclk_i")
}

object AxisSignalGenV6 extends App {
  for(n <- List(9, 10)) {
    SpinalConfig(
      mode=Verilog,
      targetDirectory=s"./firmware/rtl/AxisSignalGenV6"
    ).generate{
      val dut = AxisSignalGenV6(n)
      dut.setDefinitionName(f"AxisSignalGenV6_${n}")
    }
  }
}
