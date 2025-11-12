package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisTMuxV1IO(N: Int, B: Int) extends Bundle {
  val aresetn = in Bool()
  val aclk = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = B / 8))
  s_axis.payload.data.setName("s_axis_tdata")
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.ready.setName("s_axis_tready")
  val m_axis = Vec.fill(8)(out port Flow(Bits(B bits)))
  for((a, i) <- m_axis.zipWithIndex) {
    a.payload.setName(f"m${i}_axis_tdata")
    a.valid.setName(f"m${i}_axis_tvalid")
  }
}

case class axis_tmux_v1(N: Int = 8, B: Int = 16) extends BlackBox {
  addGeneric("N", N)
  addGeneric("B", B)
  val io = AxisTMuxV1IO(N, B)
  noIoPrefix()
}

case class AxisTMuxV1(N: Int = 8, B: Int = 16) extends Component {
  val io = AxisTMuxV1IO(N, B)
  val axisTmuxV1 = axis_tmux_v1(N, B)
  noIoPrefix()
  io <> axisTmuxV1.io
}


object AxisTMuxV1 extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/"
  ).generate{
    val dut = AxisTMuxV1(4, 168)
    dut.setDefinitionName("AxisTMuxV1")
  }
}
