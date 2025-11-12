package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class MrBufferIO(
  NM : Int, N : Int, B : Int,
  C_S00_AXI_DATA_WIDTH : Int, C_S00_AXI_ADDR_WIDTH : Int,
  DEBUG : Int
) extends Bundle {
  val trigger = in Bool()
  val s00_axi_lite = slave port AxiLite4(
    AxiLite4Config(dataWidth = C_S00_AXI_DATA_WIDTH, addressWidth = C_S00_AXI_ADDR_WIDTH))
  val s00_axi_aclk = in Bool()
  val s00_axi_aresetn = in Bool()
  s00_axi_lite.aw.addr.setName("s00_axi_awaddr")
  //s00_axi_lite.aw.addr.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 99999985")
  s00_axi_lite.aw.prot.setName("s00_axi_awprot")
  s00_axi_lite.aw.valid.setName("s00_axi_awvalid")
  s00_axi_lite.aw.ready.setName("s00_axi_awready")
  s00_axi_lite.w.data.setName("s00_axi_wdata")
  s00_axi_lite.w.strb.setName("s00_axi_wstrb")
  s00_axi_lite.w.valid.setName("s00_axi_wvalid")
  s00_axi_lite.w.ready.setName("s00_axi_wready")
  s00_axi_lite.b.resp.setName("s00_axi_bresp")
  s00_axi_lite.b.valid.setName("s00_axi_bvalid")
  s00_axi_lite.b.ready.setName("s00_axi_bready")
  s00_axi_lite.ar.addr.setName("s00_axi_araddr")
  s00_axi_lite.ar.prot.setName("s00_axi_arprot")
  s00_axi_lite.ar.valid.setName("s00_axi_arvalid")
  s00_axi_lite.ar.ready.setName("s00_axi_arready")
  s00_axi_lite.r.data.setName("s00_axi_rdata")
  s00_axi_lite.r.resp.setName("s00_axi_rresp")
  s00_axi_lite.r.valid.setName("s00_axi_rvalid")
  s00_axi_lite.r.ready.setName("s00_axi_rready")
  val s00_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = NM * B / 8, useStrb = true, useLast = true))
  val s00_axis_aclk = in Bool()
  val s00_axis_aresetn = in Bool()
  s00_axis.ready.setName("s00_axis_tready")
  s00_axis.data.setName("s00_axis_tdata")
  s00_axis.strb.setName("s00_axis_tstrb")
  s00_axis.last.setName("s00_axis_tlast")
  s00_axis.valid.setName("s00_axis_tvalid")
  val m00_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = B / 8, useStrb = true, useLast = true))
  val m00_axis_aclk = in Bool()
  val m00_axis_aresetn = in Bool()
  m00_axis.ready.setName("m00_axis_tready")
  m00_axis.data.setName("m00_axis_tdata")
  m00_axis.strb.setName("m00_axis_tstrb")
  m00_axis.last.setName("m00_axis_tlast")
  m00_axis.valid.setName("m00_axis_tvalid")
  val s_dbg_probe = out Bool()
  val m_dbg_probe = out Bool()
}

case class mr_buffer_v1_0(
  NM : Int, N : Int, B : Int,
  C_S00_AXI_DATA_WIDTH : Int, C_S00_AXI_ADDR_WIDTH : Int,
  DEBUG : Int
) extends BlackBox {
  addGeneric("NM", NM)
  addGeneric("N", N)
  addGeneric("B", B)
  addGeneric("C_S00_AXI_DATA_WIDTH", C_S00_AXI_DATA_WIDTH)
  addGeneric("C_S00_AXI_ADDR_WIDTH", C_S00_AXI_ADDR_WIDTH)
  addGeneric("DEBUG", DEBUG)
  val io = MrBufferIO(NM, N, B,
    C_S00_AXI_DATA_WIDTH, C_S00_AXI_ADDR_WIDTH, DEBUG)
  noIoPrefix()
}

case class MrBufferV1(
  NM : Int = 8, N : Int = 8, B : Int = 16,
  C_S00_AXI_DATA_WIDTH : Int = 32, C_S00_AXI_ADDR_WIDTH : Int = 6,
  DEBUG : Int = 0) extends Component {
  val io = MrBufferIO(NM, N, B,
    C_S00_AXI_DATA_WIDTH, C_S00_AXI_ADDR_WIDTH, DEBUG)
  val mrbuffer = mr_buffer_v1_0(NM, N, B,
    C_S00_AXI_DATA_WIDTH, C_S00_AXI_ADDR_WIDTH, DEBUG)
  noIoPrefix()
  io <> mrbuffer.io
}

object MrBufferV1 extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = MrBufferV1(B=32, N=10)
    dut.setDefinitionName("MrBufferV1")
  }
}
