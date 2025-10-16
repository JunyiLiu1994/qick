package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

object VivadoAxi4Stream {
  def addInference[T <: Data](s: Stream[Axi4Stream.Axi4StreamBundle], ifcName: String = "AXIS") = {
    s.payload.data.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:axis:1.0 " + ifcName + " TDATA")
    Option(s.payload.last).foreach(_.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:axis:1.0 " + ifcName + " TLAST"))
    s.valid.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:axis:1.0 " + ifcName + " TVALID")
    s.ready.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:axis:1.0 " + ifcName + " TREADY")

  }
}

object VivadoAxi4Lite {
  def addInference[T <: Data](axi: AxiLite4, ifcName: String = "AXI_LITE") = {
    axi.addAttribute("X_INTERFACE_PARAMETER", "PROTOCOL AXI4LITE")
    //  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN <value>,PHASE <value>,MAX_BURST_LENGTH <value>,NUM_WRITE_OUTSTANDING <value>,NUM_READ_OUTSTANDING <value>,SUPPORTS_NARROW_BURST <value>,READ_WRITE_MODE <value>,BUSER_WIDTH <value>,RUSER_WIDTH <value>,WUSER_WIDTH <value>,ARUSER_WIDTH <value>,AWUSER_WIDTH <value>,ADDR_WIDTH <value>,ID_WIDTH <value>,FREQ_HZ <value>,PROTOCOL <value>,DATA_WIDTH <value>,HAS_BURST <value>,HAS_CACHE <value>,HAS_LOCK <value>,HAS_PROT <value>,HAS_QOS <value>,HAS_REGION <value>,HAS_WSTRB <value>,HAS_BRESP <value>,HAS_RRESP <value>" *)
    axi.aw.addr.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" AWADDR")
    axi.aw.prot.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" AWPROT")
    axi.aw.valid.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" AWVALID")
    axi.aw.ready.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" AWREADY")

    axi.w.data.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" WDATA")
    axi.w.strb.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" WSTRB")
    axi.w.valid.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" WVALID")
    axi.w.ready.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" WREADY")

    axi.b.resp.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" BRESP")
    axi.b.valid.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" BVALID")
    axi.b.ready.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" BREADY")

    axi.ar.addr.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" ARADDR")
    axi.ar.prot.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" ARPROT")
    axi.ar.valid.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" ARVALID")
    axi.ar.ready.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" ARREADY")

    axi.r.data.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" RDATA")
    axi.r.resp.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" RRESP")
    axi.r.valid.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" RVALID")
    axi.r.ready.addAttribute("X_INTERFACE_INFO", "xilinx.com:interface:aximm:1.0 " + ifcName +" RREADY")
  }
}
