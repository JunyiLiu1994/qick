package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisDynReadoutIO(N_DDS: Int) extends Bundle {
  val aresetn = in Bool()
  val aclk = in Bool()
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
}

case class axi_dyn_readout_v1(N_DDS: Int) extends BlackBox {
  addGeneric("N_DDS", N_DDS)
  val io = AxisDynReadoutIO(N_DDS)
  noIoPrefix()
}

case class AxisDynReadout(N_DDS: Int = 8) extends Component {
  val io = AxisDynReadoutIO(N_DDS)
  val axisDynReadout = axi_dyn_readout_v1(N_DDS)
  noIoPrefix()
  io <> axisDynReadout.io
}

object AxisDynReadout extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/AxisDynReadout"
  ).generate{
    val dut = AxisDynReadout()
    dut.setDefinitionName("AxisDynReadout")
  }
}
