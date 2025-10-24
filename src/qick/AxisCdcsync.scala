package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisCdcsyncIO(N: Int, B: Int) extends Bundle {
  val s_axis_aresetn = in Bool()
  val s_axis_aclk = in Bool()
  val s_axis = Vec.fill(16)(slave port Axi4Stream(Axi4StreamConfig(dataWidth = B / 8)))
  for((a, i) <- s_axis.zipWithIndex) {
    a.payload.data.setName(f"s${i}_axis_tdata")
    a.valid.setName(f"s${i}_axis_tvalid")
    a.ready.setName(f"s${i}_axis_tready")
  }
  val m_axis_aresetn = in Bool()
  val m_axis_aclk = in Bool()
  val m_axis = Vec.fill(16)(master port Axi4Stream(Axi4StreamConfig(dataWidth = B / 8)))
  for((a, i) <- m_axis.zipWithIndex) {
    a.payload.data.setName(f"m${i}_axis_tdata")
    a.valid.setName(f"m${i}_axis_tvalid")
    a.ready.setName(f"m${i}_axis_tready")
  }
}

case class axis_cdcsync_v1(N: Int = 2, B: Int = 8) extends BlackBox {
  addGeneric("N", N)
  addGeneric("B", B)
  val io = AxisCdcsyncIO(N, B)
  noIoPrefix()
}

case class AxisCdcsync(N: Int = 2, B: Int = 8) extends Component {
  val io = AxisCdcsyncIO(N, B)
  val axisCdcsync = axis_cdcsync_v1(N, B)
  noIoPrefix()
  io <> axisCdcsync.io
}


object AxisCdcsync extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/AxisCdcsync"
  ).generate{
    val dut = AxisCdcsync(3, 168)
    dut.setDefinitionName("AxisCdcsync")
  }
}

