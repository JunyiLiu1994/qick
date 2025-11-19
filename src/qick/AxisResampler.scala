package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisResamplerIO(B: Int, N: Int) extends Bundle {
  val aclk = in Bool()
  val aresetn = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = N * B / 8))
  s_axis.payload.data.setName("s_axis_tdata")
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.ready.setName("s_axis_tready")
  val m_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = (N / 2) * B / 8))
  m_axis.payload.data.setName("m_axis_tdata")
  m_axis.valid.setName("m_axis_tvalid")
  m_axis.ready.setName("m_axis_tready")
}

case class axis_resampler_2x1_v1(B: Int, N: Int) extends BlackBox {
  addGeneric("B", B)
  addGeneric("N", N)
  val io = AxisResamplerIO(B, N)
  noIoPrefix()
}

case class AxisResampler(B: Int = 16, N: Int = 8) extends Component {
  val io = AxisResamplerIO(B, N)
  val axisResampler = axis_resampler_2x1_v1(B, N)
  noIoPrefix()
  io <> axisResampler.io
}

object AxisResampler extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisResampler(4, 168)
    dut.setDefinitionName("AxisResampler")
  }
}


