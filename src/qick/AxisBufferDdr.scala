package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisBufferDdrIO(DATA_WIDTH: Int) extends Bundle {
  val trigger = in Bool()
  val a_axi_aclk = in Bool()
  val a_axi_aresetn = in Bool()
  val s_axi_lite = slave port AxiLite4(AxiLite4Config(dataWidth = 32, addressWidth = 6))
  s_axi_lite.aw.addr.setName("s_axi_awaddr")
  //s_axi_lite.aw.addr.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
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
  val aclk = in Bool()
  val aresetn = in Bool()


  /*
  val s0_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 88 / 8))
  s0_axis.payload.data.setName("s0_axis_tdata")
  s0_axis.valid.setName("s0_axis_tvalid")
  s0_axis.ready.setName("s0_axis_tready")
  val s1_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 16 * N_DDS / 8))
  s1_axis.payload.data.setName("s1_axis_tdata")
  s1_axis.valid.setName("s1_axis_tvalid")
  s1_axis.ready.setName("s1_axis_tready")
  val m0_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 32 * N_DDS / 8))
  m0_axis.payload.data.setName("m0_axis_tdata")
  m0_axis.valid.setName("m0_axis_tvalid")
  m0_axis.ready.setName("m0_axis_tready")
  val m1_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 32 / 8))
  m1_axis.payload.data.setName("m1_axis_tdata")
  m1_axis.valid.setName("m1_axis_tvalid")
  m1_axis.ready.setName("m1_axis_tready")
  */
}
