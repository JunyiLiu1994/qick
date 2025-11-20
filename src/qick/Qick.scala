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
  /* -- axis_avg_buffer_2 -- */
  val axis_avg_buffer_2_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 10, B = 16)
  axis_avg_buffer_2_io.setName("")
  axis_avg_buffer_2_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_2_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_2_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_2_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_2_" + w.getName())
  }
  val axis_avg_buffer_2 = AxisAvgBuffer(N_AVG = 13)
  axis_avg_buffer_2_io <> axis_avg_buffer_2.io
  /* -- axis_avg_buffer_3 -- */
  val axis_avg_buffer_3_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 10, B = 16)
  axis_avg_buffer_3_io.setName("")
  axis_avg_buffer_3_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_3_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_3_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_3_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_3_" + w.getName())
  }
  val axis_avg_buffer_3 = AxisAvgBuffer(N_AVG = 13)
  axis_avg_buffer_3_io <> axis_avg_buffer_3.io
  /* -- axis_avg_buffer_4 -- */
  val axis_avg_buffer_4_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 10, B = 16)
  axis_avg_buffer_4_io.setName("")
  axis_avg_buffer_4_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_4_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_4_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_4_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_4_" + w.getName())
  }
  val axis_avg_buffer_4 = AxisAvgBuffer(N_AVG = 13)
  axis_avg_buffer_4_io <> axis_avg_buffer_4.io
  /* -- axis_avg_buffer_5 -- */
  val axis_avg_buffer_5_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 10, B = 16)
  axis_avg_buffer_5_io.setName("")
  axis_avg_buffer_5_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_5_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_5_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_5_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_5_" + w.getName())
  }
  val axis_avg_buffer_5 = AxisAvgBuffer(N_AVG = 13)
  axis_avg_buffer_5_io <> axis_avg_buffer_5.io
  /* -- axis_avg_buffer_6 -- */
  val axis_avg_buffer_6_io = AxisAvgBufferIO(N_AVG = 13, N_BUF = 12, B = 16)
  axis_avg_buffer_6_io.setName("")
  axis_avg_buffer_6_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_avg_buffer_6_io.s_axis_aclk.setName("s_axis_aclk_i")
  axis_avg_buffer_6_io.m_axis_aclk.setName("m_axis_aclk_i")
  axis_avg_buffer_6_io.flatten.foreach { w =>
    w.setName("axis_avg_buffer_6_" + w.getName())
  }
  val axis_avg_buffer_6 = AxisAvgBuffer(N_AVG = 13, N_BUF = 12)
  axis_avg_buffer_6_io <> axis_avg_buffer_6.io
  /* -- mr_buffer_et_0 -- */
  val mr_buffer_et_0_io = MrBufferIO(B=32, N=10, NM=8,
    C_S00_AXI_DATA_WIDTH = 32, C_S00_AXI_ADDR_WIDTH = 6, DEBUG = 0)
  mr_buffer_et_0_io.setName("")
  mr_buffer_et_0_io.flatten.foreach { w =>
    w.setName("mr_buffer_et_0_" + w.getName())
  }
  val mr_buffer_et_0 = MrBufferV1(B=32, N=10)
  mr_buffer_et_0_io <> mr_buffer_et_0.io
  /* -- axis_pfb_readout_v3_0 -- */
  val axis_pfb_readout_v3_0_io = AxisPfbReadoutIO(64)
  axis_pfb_readout_v3_0_io.setName("")
  axis_pfb_readout_v3_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_pfb_readout_v3_0_io.aclk.setName("aclk_i")
  axis_pfb_readout_v3_0_io.flatten.foreach { w =>
    w.setName("axis_pfb_readout_v3_0_" + w.getName())
  }
  val axis_pfb_readout_v3_0 = AxisPfbReadout()
  axis_pfb_readout_v3_0_io <> axis_pfb_readout_v3_0.io
  /* -- axis_readout_v2_0 -- */
  val axis_readout_v2_0_io = AxisReadoutV2IO()
  axis_readout_v2_0_io.setName("")
  axis_readout_v2_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_readout_v2_0_io.aclk.setName("aclk_i")
  axis_readout_v2_0_io.flatten.foreach { w =>
    w.setName("axis_readout_v2_0_" + w.getName())
  }
  val axis_readout_v2_0 = AxisReadoutV2()
  axis_readout_v2_0_io <> axis_readout_v2_0.io
  /* -- axis_readout_v3_0 -- */
  val axis_readout_v3_0_io = AxisReadoutV3IO()
  axis_readout_v3_0_io.setName("")
  axis_readout_v3_0_io.aclk.setName("aclk_i")
  axis_readout_v3_0_io.flatten.foreach { w =>
    w.setName("axis_readout_v3_0_" + w.getName())
  }
  val axis_readout_v3_0 = AxisReadoutV3()
  axis_readout_v3_0_io <> axis_readout_v3_0.io
  /* -- axis_dyn_readout_v1_0 -- */
  val axis_dyn_readout_v1_0_io = AxisDynReadoutIO()
  axis_dyn_readout_v1_0_io.setName("")
  axis_dyn_readout_v1_0_io.flatten.foreach { w =>
    w.setName("axis_dyn_readout_v1_0_" + w.getName())
  }
  val axis_dyn_readout_v1_0 = AxisDynReadout()
  axis_dyn_readout_v1_0_io <> axis_dyn_readout_v1_0.io
  /* -- axis_signal_gen_v6_0 -- */
  val axis_signal_gen_v6_0_io = AxisSignalGenV6IO(10)
  axis_signal_gen_v6_0_io.setName("")
  axis_signal_gen_v6_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_signal_gen_v6_0_io.s0_axis_aclk.setName("s0_axis_aclk_i")
  axis_signal_gen_v6_0_io.aclk.setName("aclk_i")
  axis_signal_gen_v6_0_io.flatten.foreach { w => 
    w.setName("axis_signal_gen_v6_0_" + w.getName())
  }
  val axis_signal_gen_v6_0 = AxisSignalGenV6(10)
  axis_signal_gen_v6_0_io <> axis_signal_gen_v6_0.io
  /* -- axis_signal_gen_v6_1 -- */
  val axis_signal_gen_v6_1_io = AxisSignalGenV6IO(9)
  axis_signal_gen_v6_1_io.setName("")
  axis_signal_gen_v6_1_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_signal_gen_v6_1_io.s0_axis_aclk.setName("s0_axis_aclk_i")
  axis_signal_gen_v6_1_io.aclk.setName("aclk_i")
  axis_signal_gen_v6_1_io.flatten.foreach { w => 
    w.setName("axis_signal_gen_v6_1_" + w.getName())
  }
  val axis_signal_gen_v6_1 = AxisSignalGenV6(9)
  axis_signal_gen_v6_1_io <> axis_signal_gen_v6_1.io
  /* -- axis_tmux_v1_0 -- */
  val axis_tmux_v1_0_io = AxisTMuxV1IO(4, 168)
  axis_tmux_v1_0_io.setName("")
  axis_tmux_v1_0_io.flatten.foreach { w => 
    w.setName("axis_tmux_v1_0_" + w.getName())
  }
  val axis_tmux_v1_0 = AxisTMuxV1(4, 168)
  axis_tmux_v1_0_io <> axis_tmux_v1_0.io
  /* -- axis_cdcsync_v1_1 -- */
  val axis_cdcsync_v1_1_io = AxisCdcsyncIO(3, 168)
  axis_cdcsync_v1_1_io.setName("")
  axis_cdcsync_v1_1_io.flatten.foreach { w =>
    w.setName("axis_cdcsync_v1_1_" + w.getName())
  }
  val axis_cdcsync_v1_1 = AxisCdcsync(3, 168)
  axis_cdcsync_v1_1_io <> axis_cdcsync_v1_1.io

}

object QickTop extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./firmware/rtl/"
  ).generate(
    QickTop()
  )
}
