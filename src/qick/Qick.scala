package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axilite._

case class QickTop() extends Component {
  val qick_processor_0_io = QickProcessorIo()
  qick_processor_0_io.setName("")
  qick_processor_0_io.flatten.foreach { w =>
    w.setName("qick_processor_0_" + w.getName())
  }
  noIoPrefix()
  val qickProcessor = axis_qick_processor(
    ARITH = 1,
    DEBUG = 1,
    DIVIDER = 1,
    DMEM_AW = 14,
    EXT_FLAG = 0,
    IN_PORT_QTY = 7,
    IO_CTRL = 1,
    OUT_DPORT_DW = 8,
    OUT_DPORT_QTY = 1,
    OUT_TRIG_QTY = 17,
    OUT_WPORT_QTY = 5,
    PMEM_AW = 12,
    WMEM_AW = 10,
  )
  qick_processor_0_io <> qickProcessor.io
}

object QickTop extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./firmware/rtl/"
  ).generate(
    QickTop()
  )
}
