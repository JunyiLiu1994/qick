package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisBufferDdrIO(
  DATA_WIDTH: Int,
  ID_WIDTH : Int = 1) extends Bundle {
  val trigger = in Bool()
  val s_axi_aclk = in Bool()
  val s_axi_aresetn = in Bool()
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
  val aclk = in Bool()
  val aresetn = in Bool()
  val m_axi = master port Axi4(Axi4Config(
    dataWidth = DATA_WIDTH, addressWidth = 32, idWidth = ID_WIDTH))
  // Write Address Channel.
  m_axi.aw.id.setName("m_axi_awid")
  m_axi.aw.addr.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 333250000")
  m_axi.aw.addr.setName("m_axi_awaddr")
  m_axi.aw.len.setName("m_axi_awlen")
  m_axi.aw.size.setName("m_axi_awsize")
  m_axi.aw.burst.setName("m_axi_awburst")
  m_axi.aw.lock.setName("m_axi_awlock")
  m_axi.aw.cache.setName("m_axi_awcache")
  m_axi.aw.prot.setName("m_axi_awprot")
  m_axi.aw.region.setName("m_axi_awregion")
  m_axi.aw.qos.setName("m_axi_awqos")
  m_axi.aw.valid.setName("m_axi_awvalid")
  m_axi.aw.ready.setName("m_axi_awready")
  // Write Data Channel.
  m_axi.w.data.setName("m_axi_wdata")
  m_axi.w.strb.setName("m_axi_wstrb")
  m_axi.w.last.setName("m_axi_wlast")
  m_axi.w.valid.setName("m_axi_wvalid")
  m_axi.w.ready.setName("m_axi_wready")
  // Write Response Channel.
  m_axi.b.id.setName("m_axi_bid")
  m_axi.b.resp.setName("m_axi_bresp")
  m_axi.b.valid.setName("m_axi_bvalid")
  m_axi.b.ready.setName("m_axi_bready")
  // Read Address Channel.
  m_axi.ar.id.setName("m_axi_arid")
  m_axi.ar.addr.setName("m_axi_araddr")
  m_axi.ar.len.setName("m_axi_arlen")
  m_axi.ar.size.setName("m_axi_arsize")
  m_axi.ar.burst.setName("m_axi_arburst")
  m_axi.ar.lock.setName("m_axi_arlock")
  m_axi.ar.cache.setName("m_axi_arcache")
  m_axi.ar.prot.setName("m_axi_arprot")
  m_axi.ar.region.setName("m_axi_arregion")
  m_axi.ar.qos.setName("m_axi_arqos")
  m_axi.ar.valid.setName("m_axi_arvalid")
  m_axi.ar.ready.setName("m_axi_arready")
  // Read Data Channel
  m_axi.r.id.setName("m_axi_rid")
  m_axi.r.data.setName("m_axi_rdata")
  m_axi.r.resp.setName("m_axi_rresp")
  m_axi.r.last.setName("m_axi_rlast")
  m_axi.r.valid.setName("m_axi_rvalid")
  m_axi.r.ready.setName("m_axi_rready")
  val m_axis = master port Axi4Stream(
    Axi4StreamConfig(dataWidth = DATA_WIDTH / 8, useStrb = true, useLast = true))
  m_axis.valid.setName("m_axis_tvalid")
  m_axis.data.setName("m_axis_tdata")
  m_axis.strb.setName("m_axis_tstrb")
  m_axis.last.setName("m_axis_tlast")
  m_axis.ready.setName("m_axis_tready")
  val s_axis = slave port Axi4Stream(
    Axi4StreamConfig(dataWidth = DATA_WIDTH / 8, useStrb = true, useLast = true))
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.data.setName("s_axis_tdata")
  s_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 333250000")
  s_axis.strb.setName("s_axis_tstrb")
  s_axis.last.setName("s_axis_tlast")
  s_axis.ready.setName("s_axis_tready")
}

case class axis_buffer_ddr_v1(
  TARGET_SLAVE_BASE_ADDR : Int,
  DATA_WIDTH: Int) extends BlackBox {
  addGeneric("TARGET_SLAVE_BASE_ADDR", TARGET_SLAVE_BASE_ADDR)
  addGeneric("DATA_WIDTH", DATA_WIDTH)
  val io = AxisBufferDdrIO(DATA_WIDTH)
  noIoPrefix()
}

case class AxisBufferDdr(
  TARGET_SLAVE_BASE_ADDR : Int = 0x40000000,
  DATA_WIDTH: Int = 512) extends Component {
  val io = AxisBufferDdrIO(DATA_WIDTH)
  val axisBufferDdr = axis_buffer_ddr_v1(TARGET_SLAVE_BASE_ADDR, DATA_WIDTH)
  noIoPrefix()
  io <> axisBufferDdr.io
  io.s_axi_aclk.setName("s_axi_aclk_i")
  io.aclk.setName("aclk_i")
}

object AxisBufferDdr extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisBufferDdr(0, 256)
    dut.setDefinitionName("AxisBufferDdr")
  }
}
