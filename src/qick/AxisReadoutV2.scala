package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisReadoutV2IO() extends Bundle {
  val N_DDS = 8 // local param
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 6))
  val s_axi_aclk = in Bool()
  val s_axi_aresetn = in Bool()
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
  s_axi_lite.aw.addr.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  val aresetn = in Bool()
  val aclk = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = N_DDS * 16 / 8))
  s_axis.payload.data.setName("s_axis_tdata")
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.ready.setName("s_axis_tready")
  s_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
  val m0_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = N_DDS * 32 / 8))
  m0_axis.data.setName("m0_axis_tdata")
  m0_axis.valid.setName("m0_axis_tvalid")
  m0_axis.ready.setName("m0_axis_tready")
  m0_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
  val m1_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 32 / 8))
  m1_axis.data.setName("m1_axis_tdata")
  m1_axis.valid.setName("m1_axis_tvalid")
  m1_axis.ready.setName("m1_axis_tready")
  m1_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
}

case class axis_readout_v2() extends BlackBox {
  val io = AxisReadoutV2IO()
  noIoPrefix()
}

case class AxisReadoutV2() extends Component {
  val io = AxisReadoutV2IO()
  val axisReadout = axis_readout_v2()
  noIoPrefix()
  io <> axisReadout.io
  io.s_axi_aclk.setName("s_axi_aclk_i")
  io.aclk.setName("aclk_i")
}

object AxisReadoutV2 extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisReadoutV2()
    dut.setDefinitionName("AxisReadoutV2")
  }
}
