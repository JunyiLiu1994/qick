package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisReadoutV3IO() extends Bundle {
  val aclk = in Bool()
  val aresetn = in Bool()
  val s0_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 88 / 8))
  s0_axis.data.setName("s0_axis_tdata")
  s0_axis.valid.setName("s0_axis_tvalid")
  s0_axis.ready.setName("s0_axis_tready")
  s0_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  val s1_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 4 * 16 / 8))
  s1_axis.data.setName("s1_axis_tdata")
  s1_axis.valid.setName("s1_axis_tvalid")
  s1_axis.ready.setName("s1_axis_tready")
  s1_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  val m_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 32 / 8))
  m_axis.payload.data.setName("m_axis_tdata")
  m_axis.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
  m_axis.valid.setName("m_axis_tvalid")
  m_axis.ready.setName("m_axis_tready")
}

case class axis_readout_v3() extends BlackBox {
  val io = AxisReadoutV3IO()
  noIoPrefix()
}

case class AxisReadoutV3() extends Component {
  val io = AxisReadoutV3IO()
  val axisReadout = axis_readout_v3()
  noIoPrefix()
  io <> axisReadout.io
  io.aclk.setName("aclk_i")
}

object AxisReadoutV3 extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisReadoutV3()
    dut.setDefinitionName("AxisReadoutV3")
  }
}
