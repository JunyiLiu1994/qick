package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisSgMixMux8IO(N_DDS: Int) extends Bundle {
  val aresetn = in Bool()
  val aclk = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 40 / 8))
  s_axis.payload.data.setName("s_axis_tdata_i")
  s_axis.valid.setName("s_axis_tvalid_i")
  s_axis.ready.setName("s_axis_tready_o")
  val m_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = N_DDS * 32 / 8))
  m_axis.payload.data.setName("m_axis_tdata_o")
  m_axis.valid.setName("m_axis_tvalid_o")
  m_axis.ready.setName("m_axis_tready_i")
  val pinc = Vec.fill(8)(in port Bits(32 bits))
  val poff = Vec.fill(8)(in port Bits(32 bits))
  val gain = Vec.fill(8)(in port Bits(16 bits))
  for(i <- 0 until 8) {
    pinc(i).setName(f"PINC${i}_REG")
    poff(i).setName(f"POFF${i}_REG")
    gain(i).setName(f"GAIN${i}_REG")
  }
  val WE_REG = in Bool()
}

case class sg_mux8(N_DDS: Int = 2) extends BlackBox {
  addGeneric("N_DDS", N_DDS)
  val io = AxisSgMixMux8IO(N_DDS)
  noIoPrefix()
}

case class AxisSgMixMux8(N_DDS: Int = 2) extends Component {
  val io = AxisSgMixMux8IO(N_DDS)
  val axisSgMixMux8 = sg_mux8(N_DDS)
  noIoPrefix()
  io <> axisSgMixMux8.io
}

object AxisSgMixMux8 extends App {
  SpinalConfig(
    mode=Verilog,
    targetDirectory=s"./firmware/rtl/AxisSgMixMux8"
  ).generate{
    val dut = AxisSgMixMux8(4)
    dut.setDefinitionName("AxisSgMixMux8")
  }
}
