package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class QickSgTranslatorIo() extends Bundle {
  val aresetn = in Bool()
  val aclk = in Bool()
  val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = 168))
  s_axis.payload.data.setName("s_axis_tdata")
  s_axis.valid.setName("s_axis_tvalid")
  s_axis.ready.setName("s_axis_tready")
  val m_gen_v6_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 160))
  m_gen_v6_axis.payload.data.setName("m_gen_v6_axis_tdata")
  m_gen_v6_axis.valid.setName("m_gen_v6_axis_tvalid")
  m_gen_v6_axis.ready.setName("m_gen_v6_axis_tready")
  val m_int4_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 88))
  m_int4_axis.payload.data.setName("m_int4_axis_tdata")
  m_int4_axis.valid.setName("m_int4_axis_tvalid")
  m_int4_axis.ready.setName("m_int4_axis_tready")
  val m_mux4_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 40))
  m_mux4_axis.payload.data.setName("m_mux4_axis_tdata")
  m_mux4_axis.valid.setName("m_mux4_axis_tvalid")
  m_mux4_axis.ready.setName("m_mux4_axis_tready")
  val m_readout_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = 88))
  m_readout_axis.payload.data.setName("m_readout_axis_tdata")
  m_readout_axis.valid.setName("m_readout_axis_tvalid")
  m_readout_axis.ready.setName("m_readout_axis_tready")
}

case class sg_translator(
  OUT_TYPE: Int = 0
) extends BlackBox {
  addGeneric("OUT_TYPE", OUT_TYPE)
  val io = QickSgTranslatorIo()
  noIoPrefix()
}

case class QickSgTranslator(OUT_TYPE : Int = 0) extends Component {
  val io = QickSgTranslatorIo()
  val sgTranslator = sg_translator(OUT_TYPE)
  noIoPrefix()
  io <> sgTranslator.io
}

object QickSgTranslator extends App {
  for(i <- 0 until 4) {
    SpinalConfig(
      mode=Verilog,
      targetDirectory=s"./firmware/rtl/QickSgTranslator"
    ).generate{
      val dut = QickSgTranslator(i)
      dut.setDefinitionName(f"QickSgTranslator_${i}")
    }
  }
}


