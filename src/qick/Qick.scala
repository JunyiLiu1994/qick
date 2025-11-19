package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axilite._

case class QickTop() extends Component {
  noIoPrefix()
  /* -- qick_processor_0 -- */
  val qick_processor_0_io = QickProcessorIo()
  qick_processor_0_io.setName("")
  qick_processor_0_io.flatten.foreach { w =>
    w.setName("qick_processor_0_" + w.getName())
  }
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
  /* -- axis_avg_buffer_0 -- */
  val axis_avg_buffer_0_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 12, B = 16)
  axis_avg_buffer_0_io.setName("")
  axis_avg_buffer_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_0_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_0_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_0_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_0_" + w.getName())
  }
  val axis_avg_buffer_0 = AxisAvgBuffer(N_AVG = 13, N_BUF = 12)
  axis_avg_buffer_0_io <> axis_avg_buffer_0.io
  /* -- axis_avg_buffer_1 -- */
  val axis_avg_buffer_1_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 12, B = 16)
  axis_avg_buffer_1_io.setName("")
  axis_avg_buffer_1_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_1_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_1_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_1_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_1_" + w.getName())
  }
  val axis_avg_buffer_1 = AxisAvgBuffer(N_AVG = 13, N_BUF = 12)
  axis_avg_buffer_1_io <> axis_avg_buffer_1.io
}

object QickTop extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./firmware/rtl/"
  ).generate(
    QickTop()
  )
}
