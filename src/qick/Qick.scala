package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba4.axilite._

case class QickTop() extends Component {
  noIoPrefix()

  def removeAssignmentsAll(datas: Seq[Data]) = {
    for(data <- datas) {
      data.removeAssignments()
    }
  }

  def setAsDirectionlessAll(datas : Seq[Data]) = {
    for(data <- datas) {
      data.setAsDirectionLess()
    }
  }
  
  val clk_adc2 = in Bool()
  val clk_dac2 = in Bool()
  val clk_dac3 = in Bool()
  val clk_pl = in Bool()
  val rst_100 = in Bool()
  val rst_adc2 = in Bool()
  val rst_dac2 = in Bool()
  val rst_dac3 = in Bool()

  val cd_adc2 = ClockDomain(clk_adc2, rst_adc2)
  val cd_dac2 = ClockDomain(clk_dac2, rst_dac2)
  val cd_dac3 = ClockDomain(clk_dac3, rst_dac3)
  val cd_pl = ClockDomain(clk_pl, rst_100)
  /* -- qick_processor_0 -- */
  val qick_processor_0_io = QickProcessorIo()
  val cd_qick_core = ClockDomain(qick_processor_0_io.c_clk_i, qick_processor_0_io.c_resetn)
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
  removeAssignmentsAll(Seq(
    qickProcessor.io.t_clk_i,
    qickProcessor.io.ps_clk_i,
    qickProcessor.io.ps_resetn,
    qickProcessor.io.t_resetn))
  qickProcessor.io.t_clk_i := clk_dac2
  qickProcessor.io.ps_clk_i := clk_pl
  qickProcessor.io.ps_resetn := rst_100
  qickProcessor.io.t_resetn := rst_dac2
  setAsDirectionlessAll(Seq(
    qick_processor_0_io.t_clk_i,
    qick_processor_0_io.ps_clk_i,
    qick_processor_0_io.ps_resetn,
    qick_processor_0_io.t_resetn))
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_0.io.s_axis_aclk,
    axis_avg_buffer_0.io.s_axi_aclk,
    axis_avg_buffer_0.io.m_axis_aclk,
    axis_avg_buffer_0.io.s_axi_aresetn,
    axis_avg_buffer_0.io.m_axis_aresetn,
    axis_avg_buffer_0.io.s_axis_aresetn))
  axis_avg_buffer_0.io.s_axis_aclk := clk_adc2
  axis_avg_buffer_0.io.s_axi_aclk := clk_pl
  axis_avg_buffer_0.io.m_axis_aclk := clk_pl
  axis_avg_buffer_0.io.s_axi_aresetn := rst_100
  axis_avg_buffer_0.io.m_axis_aresetn := rst_100
  axis_avg_buffer_0.io.s_axis_aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_0_io.s_axis_aclk,
    axis_avg_buffer_0_io.s_axi_aclk,
    axis_avg_buffer_0_io.m_axis_aclk,
    axis_avg_buffer_0_io.s_axi_aresetn,
    axis_avg_buffer_0_io.m_axis_aresetn,
    axis_avg_buffer_0_io.s_axis_aresetn
    ))
  
  axis_avg_buffer_0_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_0_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(0).setAsDirectionLess()
  qick_processor_0_io.s_axis(0).removeAssignments()
  axis_avg_buffer_0.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(0).payload.removeAssignments()
  qickProcessor.io.s_axis(0).valid.removeAssignments()
  axis_avg_buffer_0.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(0)
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_1.io.s_axis_aclk,
    axis_avg_buffer_1.io.s_axi_aclk,
    axis_avg_buffer_1.io.m_axis_aclk,
    axis_avg_buffer_1.io.s_axi_aresetn,
    axis_avg_buffer_1.io.m_axis_aresetn,
    axis_avg_buffer_1.io.s_axis_aresetn))
  axis_avg_buffer_1.io.s_axis_aclk := clk_dac2
  axis_avg_buffer_1.io.s_axi_aclk := clk_pl
  axis_avg_buffer_1.io.m_axis_aclk := clk_pl
  axis_avg_buffer_1.io.s_axi_aresetn := rst_100
  axis_avg_buffer_1.io.m_axis_aresetn := rst_100
  axis_avg_buffer_1.io.s_axis_aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_1_io.s_axis_aclk,
    axis_avg_buffer_1_io.s_axi_aclk,
    axis_avg_buffer_1_io.m_axis_aclk,
    axis_avg_buffer_1_io.s_axi_aresetn,
    axis_avg_buffer_1_io.m_axis_aresetn,
    axis_avg_buffer_1_io.s_axis_aresetn))

  axis_avg_buffer_1_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_1_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(1).setAsDirectionLess()
  qick_processor_0_io.s_axis(1).removeAssignments()
  axis_avg_buffer_1.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(1).payload.removeAssignments()
  qickProcessor.io.s_axis(1).valid.removeAssignments()
  axis_avg_buffer_1.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(1)
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_2.io.s_axis_aclk,
    axis_avg_buffer_2.io.s_axi_aclk,
    axis_avg_buffer_2.io.m_axis_aclk,
    axis_avg_buffer_2.io.s_axi_aresetn,
    axis_avg_buffer_2.io.m_axis_aresetn,
    axis_avg_buffer_2.io.s_axis_aresetn))
  axis_avg_buffer_2.io.s_axis_aclk := clk_adc2
  axis_avg_buffer_2.io.s_axi_aclk := clk_pl
  axis_avg_buffer_2.io.m_axis_aclk := clk_pl
  axis_avg_buffer_2.io.s_axi_aresetn := rst_100
  axis_avg_buffer_2.io.m_axis_aresetn := rst_100
  axis_avg_buffer_2.io.s_axis_aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_2_io.s_axis_aclk,
    axis_avg_buffer_2_io.s_axi_aclk,
    axis_avg_buffer_2_io.m_axis_aclk,
    axis_avg_buffer_2_io.s_axi_aresetn,
    axis_avg_buffer_2_io.m_axis_aresetn,
    axis_avg_buffer_2_io.s_axis_aresetn))


  axis_avg_buffer_2_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_2_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(2).setAsDirectionLess()
  qick_processor_0_io.s_axis(2).removeAssignments()
  axis_avg_buffer_2.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(2).payload.removeAssignments()
  qickProcessor.io.s_axis(2).valid.removeAssignments()
  axis_avg_buffer_2.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(2)
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_3.io.s_axis_aclk,
    axis_avg_buffer_3.io.s_axi_aclk,
    axis_avg_buffer_3.io.m_axis_aclk,
    axis_avg_buffer_3.io.s_axi_aresetn,
    axis_avg_buffer_3.io.m_axis_aresetn,
    axis_avg_buffer_3.io.s_axis_aresetn))
  axis_avg_buffer_3.io.s_axis_aclk := clk_adc2
  axis_avg_buffer_3.io.s_axi_aclk := clk_pl
  axis_avg_buffer_3.io.m_axis_aclk := clk_pl
  axis_avg_buffer_3.io.s_axi_aresetn := rst_100
  axis_avg_buffer_3.io.m_axis_aresetn := rst_100
  axis_avg_buffer_3.io.s_axis_aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_3_io.s_axis_aclk,
    axis_avg_buffer_3_io.s_axi_aclk,
    axis_avg_buffer_3_io.m_axis_aclk,
    axis_avg_buffer_3_io.s_axi_aresetn,
    axis_avg_buffer_3_io.m_axis_aresetn,
    axis_avg_buffer_3_io.s_axis_aresetn))


  axis_avg_buffer_3_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_3_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(3).setAsDirectionLess()
  qick_processor_0_io.s_axis(3).removeAssignments()
  axis_avg_buffer_3.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(3).payload.removeAssignments()
  qickProcessor.io.s_axis(3).valid.removeAssignments()
  axis_avg_buffer_3.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(3)
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_4.io.s_axis_aclk,
    axis_avg_buffer_4.io.s_axi_aclk,
    axis_avg_buffer_4.io.m_axis_aclk,
    axis_avg_buffer_4.io.s_axi_aresetn,
    axis_avg_buffer_4.io.m_axis_aresetn,
    axis_avg_buffer_4.io.s_axis_aresetn))
  axis_avg_buffer_4.io.s_axis_aclk := clk_adc2
  axis_avg_buffer_4.io.s_axi_aclk := clk_pl
  axis_avg_buffer_4.io.m_axis_aclk := clk_pl
  axis_avg_buffer_4.io.s_axi_aresetn := rst_100
  axis_avg_buffer_4.io.m_axis_aresetn := rst_100
  axis_avg_buffer_4.io.s_axis_aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_4_io.s_axis_aclk,
    axis_avg_buffer_4_io.s_axi_aclk,
    axis_avg_buffer_4_io.m_axis_aclk,
    axis_avg_buffer_4_io.s_axi_aresetn,
    axis_avg_buffer_4_io.m_axis_aresetn,
    axis_avg_buffer_4_io.s_axis_aresetn))

  
  axis_avg_buffer_4_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_4_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(4).setAsDirectionLess()
  qick_processor_0_io.s_axis(4).removeAssignments()
  axis_avg_buffer_4.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(4).payload.removeAssignments()
  qickProcessor.io.s_axis(4).valid.removeAssignments()
  axis_avg_buffer_4.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(4)
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_5.io.s_axis_aclk,
    axis_avg_buffer_5.io.s_axi_aclk,
    axis_avg_buffer_5.io.m_axis_aclk,
    axis_avg_buffer_5.io.s_axi_aresetn,
    axis_avg_buffer_5.io.m_axis_aresetn,
    axis_avg_buffer_5.io.s_axis_aresetn))
  axis_avg_buffer_5.io.s_axis_aclk := clk_adc2
  axis_avg_buffer_5.io.s_axi_aclk := clk_pl
  axis_avg_buffer_5.io.m_axis_aclk := clk_pl
  axis_avg_buffer_5.io.s_axi_aresetn := rst_100
  axis_avg_buffer_5.io.m_axis_aresetn := rst_100
  axis_avg_buffer_5.io.s_axis_aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_5_io.s_axis_aclk,
    axis_avg_buffer_5_io.s_axi_aclk,
    axis_avg_buffer_5_io.m_axis_aclk,
    axis_avg_buffer_5_io.s_axi_aresetn,
    axis_avg_buffer_5_io.m_axis_aresetn,
    axis_avg_buffer_5_io.s_axis_aresetn))


  axis_avg_buffer_5_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_5_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(5).setAsDirectionLess()
  qick_processor_0_io.s_axis(5).removeAssignments()
  axis_avg_buffer_5.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(5).payload.removeAssignments()
  qickProcessor.io.s_axis(5).valid.removeAssignments()
  axis_avg_buffer_5.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(5)
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
  removeAssignmentsAll(Seq(
    axis_avg_buffer_6.io.s_axis_aclk,
    axis_avg_buffer_6.io.s_axi_aclk,
    axis_avg_buffer_6.io.m_axis_aclk,
    axis_avg_buffer_6.io.s_axi_aresetn,
    axis_avg_buffer_6.io.m_axis_aresetn,
    axis_avg_buffer_6.io.s_axis_aresetn))
  axis_avg_buffer_6.io.s_axis_aclk := clk_adc2
  axis_avg_buffer_6.io.s_axi_aclk := clk_pl
  axis_avg_buffer_6.io.m_axis_aclk := clk_pl
  axis_avg_buffer_6.io.s_axi_aresetn := rst_100
  axis_avg_buffer_6.io.m_axis_aresetn := rst_100
  axis_avg_buffer_6.io.s_axis_aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_6_io.s_axis_aclk,
    axis_avg_buffer_6_io.s_axi_aclk,
    axis_avg_buffer_6_io.m_axis_aclk,
    axis_avg_buffer_6_io.s_axi_aresetn,
    axis_avg_buffer_6_io.m_axis_aresetn,
    axis_avg_buffer_6_io.s_axis_aresetn))

  axis_avg_buffer_6_io.m2_axis.setAsDirectionLess()
  axis_avg_buffer_6_io.m2_axis.removeAssignments()
  qick_processor_0_io.s_axis(6).setAsDirectionLess()
  qick_processor_0_io.s_axis(6).removeAssignments()
  axis_avg_buffer_6.io.m2_axis.ready.removeAssignments()
  qickProcessor.io.s_axis(6).payload.removeAssignments()
  qickProcessor.io.s_axis(6).valid.removeAssignments()
  axis_avg_buffer_6.io.m2_axis.queue(2, cd_pl, cd_qick_core) >> qickProcessor.io.s_axis(6)
  /* -- mr_buffer_et_0 -- */
  val mr_buffer_et_0_io = MrBufferIO(B=32, N=10, NM=8,
    C_S00_AXI_DATA_WIDTH = 32, C_S00_AXI_ADDR_WIDTH = 6, DEBUG = 0)
  mr_buffer_et_0_io.setName("")
  mr_buffer_et_0_io.flatten.foreach { w =>
    w.setName("mr_buffer_et_0_" + w.getName())
  }
  val mr_buffer_et_0 = MrBufferV1(B=32, N=10)
  mr_buffer_et_0_io <> mr_buffer_et_0.io
  removeAssignmentsAll(Seq(
    mr_buffer_et_0.io.s00_axis_aclk,
    mr_buffer_et_0.io.s00_axi_aclk,
    mr_buffer_et_0.io.m00_axis_aclk,
    mr_buffer_et_0.io.s00_axi_aresetn,
    mr_buffer_et_0.io.s00_axis_aresetn,
    mr_buffer_et_0.io.m00_axis_aresetn))
  mr_buffer_et_0.io.s00_axis_aclk := clk_adc2
  mr_buffer_et_0.io.s00_axi_aclk := clk_pl
  mr_buffer_et_0.io.m00_axis_aclk := clk_pl
  mr_buffer_et_0.io.s00_axi_aresetn := rst_100
  mr_buffer_et_0.io.s00_axis_aresetn := rst_adc2
  mr_buffer_et_0.io.m00_axis_aresetn := rst_100
  setAsDirectionlessAll(Seq(
    mr_buffer_et_0_io.s00_axis_aclk,
    mr_buffer_et_0_io.s00_axi_aclk,
    mr_buffer_et_0_io.m00_axis_aclk,
    mr_buffer_et_0_io.s00_axi_aresetn,
    mr_buffer_et_0_io.s00_axis_aresetn,
    mr_buffer_et_0_io.m00_axis_aresetn))
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
  removeAssignmentsAll(Seq(
    axis_pfb_readout_v3_0.io.s_axi_aclk,
    axis_pfb_readout_v3_0.io.aclk,
    axis_pfb_readout_v3_0.io.s_axi_aresetn,
    axis_pfb_readout_v3_0.io.aresetn))
  axis_pfb_readout_v3_0.io.s_axi_aclk := clk_pl
  axis_pfb_readout_v3_0.io.aclk := clk_adc2
  axis_pfb_readout_v3_0.io.s_axi_aresetn := rst_100
  axis_pfb_readout_v3_0.io.aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_pfb_readout_v3_0_io.s_axi_aclk,
    axis_pfb_readout_v3_0_io.aclk,
    axis_pfb_readout_v3_0_io.s_axi_aresetn,
    axis_pfb_readout_v3_0_io.aresetn))
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
  removeAssignmentsAll(Seq(
    axis_readout_v2_0.io.s_axi_aclk,
    axis_readout_v2_0.io.aclk,
    axis_readout_v2_0.io.s_axi_aresetn,
    axis_readout_v2_0.io.aresetn
  ))
  axis_readout_v2_0.io.s_axi_aclk := clk_pl
  axis_readout_v2_0.io.aclk := clk_adc2
  axis_readout_v2_0.io.s_axi_aresetn := rst_100
  axis_readout_v2_0.io.aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_readout_v2_0_io.s_axi_aclk,
    axis_readout_v2_0_io.aclk,
    axis_readout_v2_0_io.s_axi_aresetn,
    axis_readout_v2_0_io.aresetn))
  /* -- axis_readout_v3_0 -- */
  val axis_readout_v3_0_io = AxisReadoutV3IO()
  axis_readout_v3_0_io.setName("")
  axis_readout_v3_0_io.aclk.setName("aclk_i")
  axis_readout_v3_0_io.flatten.foreach { w =>
    w.setName("axis_readout_v3_0_" + w.getName())
  }
  val axis_readout_v3_0 = AxisReadoutV3()
  axis_readout_v3_0_io <> axis_readout_v3_0.io
  removeAssignmentsAll(Seq(
    axis_readout_v3_0.io.aclk,
    axis_readout_v3_0.io.aresetn
  ))
  axis_readout_v3_0.io.aclk := clk_dac2
  axis_readout_v3_0.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_readout_v3_0_io.aclk,
    axis_readout_v3_0_io.aresetn))
  /* -- axis_dyn_readout_v1_0 -- */
  val axis_dyn_readout_v1_0_io = AxisDynReadoutIO()
  axis_dyn_readout_v1_0_io.setName("")
  axis_dyn_readout_v1_0_io.flatten.foreach { w =>
    w.setName("axis_dyn_readout_v1_0_" + w.getName())
  }
  val axis_dyn_readout_v1_0 = AxisDynReadout()
  axis_dyn_readout_v1_0_io <> axis_dyn_readout_v1_0.io
  removeAssignmentsAll(Seq(
    axis_dyn_readout_v1_0.io.aclk,
    axis_dyn_readout_v1_0.io.aresetn))
  axis_dyn_readout_v1_0.io.aclk := clk_adc2
  axis_dyn_readout_v1_0.io.aresetn := rst_adc2
  setAsDirectionlessAll(Seq(
    axis_dyn_readout_v1_0_io.aclk,
    axis_dyn_readout_v1_0_io.aresetn))
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
  removeAssignmentsAll(Seq(
    axis_signal_gen_v6_0.io.s_axi_aclk,
    axis_signal_gen_v6_0.io.s0_axis_aclk,
    axis_signal_gen_v6_0.io.aclk,
    axis_signal_gen_v6_0.io.s_axi_aresetn,
    axis_signal_gen_v6_0.io.s0_axis_aresetn,
    axis_signal_gen_v6_0.io.aresetn))
  axis_signal_gen_v6_0.io.s_axi_aclk := clk_pl
  axis_signal_gen_v6_0.io.s0_axis_aclk := clk_pl
  axis_signal_gen_v6_0.io.aclk := clk_dac2
  axis_signal_gen_v6_0.io.s_axi_aresetn := rst_100
  axis_signal_gen_v6_0.io.s0_axis_aresetn := rst_100
  axis_signal_gen_v6_0.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_signal_gen_v6_0_io.s_axi_aclk,
    axis_signal_gen_v6_0_io.s0_axis_aclk,
    axis_signal_gen_v6_0_io.aclk,
    axis_signal_gen_v6_0_io.s_axi_aresetn,
    axis_signal_gen_v6_0_io.s0_axis_aresetn,
    axis_signal_gen_v6_0_io.aresetn))
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
  removeAssignmentsAll(Seq(
    axis_signal_gen_v6_1.io.s_axi_aclk,
    axis_signal_gen_v6_1.io.s0_axis_aclk,
    axis_signal_gen_v6_1.io.aclk,
    axis_signal_gen_v6_1.io.s_axi_aresetn,
    axis_signal_gen_v6_1.io.s0_axis_aresetn,
    axis_signal_gen_v6_1.io.aresetn))
  axis_signal_gen_v6_1.io.s_axi_aclk := clk_pl
  axis_signal_gen_v6_1.io.s0_axis_aclk := clk_pl
  axis_signal_gen_v6_1.io.aclk := clk_dac2
  axis_signal_gen_v6_1.io.s_axi_aresetn := rst_100
  axis_signal_gen_v6_1.io.s0_axis_aresetn := rst_100
  axis_signal_gen_v6_1.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_signal_gen_v6_1_io.s_axi_aclk,
    axis_signal_gen_v6_1_io.s0_axis_aclk,
    axis_signal_gen_v6_1_io.aclk,
    axis_signal_gen_v6_1_io.s_axi_aresetn,
    axis_signal_gen_v6_1_io.s0_axis_aresetn,
    axis_signal_gen_v6_1_io.aresetn))
  /* -- axis_tmux_v1_0 -- */
  val axis_tmux_v1_0_io = AxisTMuxV1IO(4, 168)
  axis_tmux_v1_0_io.setName("")
  axis_tmux_v1_0_io.flatten.foreach { w => 
    w.setName("axis_tmux_v1_0_" + w.getName())
  }
  val axis_tmux_v1_0 = AxisTMuxV1(4, 168)
  axis_tmux_v1_0_io <> axis_tmux_v1_0.io
  removeAssignmentsAll(Seq(
    axis_tmux_v1_0.io.aclk,
    axis_tmux_v1_0.io.aresetn))
  axis_tmux_v1_0.io.aclk := clk_dac2
  axis_tmux_v1_0.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_tmux_v1_0_io.aclk,
    axis_tmux_v1_0_io.aresetn))
  /* -- axis_cdcsync_v1_1 -- */
  val axis_cdcsync_v1_1_io = AxisCdcsyncIO(3, 168)
  axis_cdcsync_v1_1_io.setName("")
  axis_cdcsync_v1_1_io.flatten.foreach { w =>
    w.setName("axis_cdcsync_v1_1_" + w.getName())
  }
  val axis_cdcsync_v1_1 = AxisCdcsync(3, 168)
  axis_cdcsync_v1_1_io <> axis_cdcsync_v1_1.io
  removeAssignmentsAll(Seq(
    axis_cdcsync_v1_1.io.s_axis_aclk,
    axis_cdcsync_v1_1.io.m_axis_aclk,
    axis_cdcsync_v1_1.io.s_axis_aresetn,
    axis_cdcsync_v1_1.io.m_axis_aresetn))
  axis_cdcsync_v1_1.io.s_axis_aclk := clk_dac2
  axis_cdcsync_v1_1.io.m_axis_aclk := clk_dac3
  axis_cdcsync_v1_1.io.s_axis_aresetn := rst_dac2
  axis_cdcsync_v1_1.io.m_axis_aresetn := rst_dac3
  setAsDirectionlessAll(Seq(
    axis_cdcsync_v1_1_io.s_axis_aclk,
    axis_cdcsync_v1_1_io.m_axis_aclk,
    axis_cdcsync_v1_1_io.s_axis_aresetn,
    axis_cdcsync_v1_1_io.m_axis_aresetn))
  /* -- axis_sg_mux8_v1_0 -- */
  val axis_sg_mux8_v1_0_io = AxisSgMux8IO(16)
  axis_sg_mux8_v1_0_io.setName("")
  axis_sg_mux8_v1_0_io.aclk.setName("aclk_i")
  axis_sg_mux8_v1_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_sg_mux8_v1_0_io.flatten.foreach { w =>
    w.setName("axis_sg_mux8_v1_0_" + w.getName())
  }
  val axis_sg_mux8_v1_0 = AxisSgMux8(16)
  axis_sg_mux8_v1_0_io <> axis_sg_mux8_v1_0.io
  removeAssignmentsAll(Seq(
    axis_sg_mux8_v1_0.io.s_axi_aclk,
    axis_sg_mux8_v1_0.io.aclk,
    axis_sg_mux8_v1_0.io.s_axi_aresetn,
    axis_sg_mux8_v1_0.io.aresetn))
  axis_sg_mux8_v1_0.io.s_axi_aclk := clk_pl
  axis_sg_mux8_v1_0.io.aclk := clk_dac2
  axis_sg_mux8_v1_0.io.s_axi_aresetn := rst_100
  axis_sg_mux8_v1_0.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_sg_mux8_v1_0_io.s_axi_aclk,
    axis_sg_mux8_v1_0_io.aclk,
    axis_sg_mux8_v1_0_io.s_axi_aresetn,
    axis_sg_mux8_v1_0_io.aresetn))
  /* -- axis_sg_mixmux8_v1_0 -- */
  val axis_sg_mixmux8_v1_0_io = AxisSgMixMux8IO(4)
  axis_sg_mixmux8_v1_0_io.setName("")
  axis_sg_mixmux8_v1_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_sg_mixmux8_v1_0_io.aclk.setName("aclk_i")
  axis_sg_mixmux8_v1_0_io.flatten.foreach { w =>
    w.setName("axis_sg_mixmux8_v1_0_" + w.getName())
  }
  val axis_sg_mixmux8_v1_0 = AxisSgMixMux8(4)
  axis_sg_mixmux8_v1_0_io <> axis_sg_mixmux8_v1_0.io
  removeAssignmentsAll(Seq(
    axis_sg_mixmux8_v1_0.io.s_axi_aclk,
    axis_sg_mixmux8_v1_0.io.aclk,
    axis_sg_mixmux8_v1_0.io.s_axi_aresetn,
    axis_sg_mixmux8_v1_0.io.aresetn))
  axis_sg_mixmux8_v1_0.io.s_axi_aclk := clk_pl
  axis_sg_mixmux8_v1_0.io.aclk := clk_dac3
  axis_sg_mixmux8_v1_0.io.s_axi_aresetn := rst_100
  axis_sg_mixmux8_v1_0.io.aresetn := rst_dac3
  setAsDirectionlessAll(Seq(
    axis_sg_mixmux8_v1_0_io.s_axi_aclk,
    axis_sg_mixmux8_v1_0_io.aclk,
    axis_sg_mixmux8_v1_0_io.s_axi_aresetn,
    axis_sg_mixmux8_v1_0_io.aresetn))
  /* -- axis_sg_int4_v2_0 -- */
  val axis_sg_int4_v2_0_io = AxisSgInt4IO()
  axis_sg_int4_v2_0_io.setName("")
  axis_sg_int4_v2_0_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_sg_int4_v2_0_io.aclk.setName("aclk_i")
  axis_sg_int4_v2_0_io.flatten.foreach { w =>
    w.setName("axis_sg_int4_v2_0_" + w.getName())
  }
  val axis_sg_int4_v2_0 = AxisSgInt4()
  axis_sg_int4_v2_0_io <> axis_sg_int4_v2_0.io
  removeAssignmentsAll(Seq(
    axis_sg_int4_v2_0.io.s_axi_aclk,
    axis_sg_int4_v2_0.io.s0_axis_aclk,
    axis_sg_int4_v2_0.io.aclk,
    axis_sg_int4_v2_0.io.s_axi_aresetn,
    axis_sg_int4_v2_0.io.s0_axis_aresetn,
    axis_sg_int4_v2_0.io.aresetn))
  axis_sg_int4_v2_0.io.s_axi_aclk := clk_pl
  axis_sg_int4_v2_0.io.s0_axis_aclk := clk_pl
  axis_sg_int4_v2_0.io.aclk := clk_dac3
  axis_sg_int4_v2_0.io.s_axi_aresetn := rst_100
  axis_sg_int4_v2_0.io.s0_axis_aresetn := rst_100
  axis_sg_int4_v2_0.io.aresetn := rst_dac3
  setAsDirectionlessAll(Seq(
    axis_sg_int4_v2_0_io.s_axi_aclk,
    axis_sg_int4_v2_0_io.s0_axis_aclk,
    axis_sg_int4_v2_0_io.aclk,
    axis_sg_int4_v2_0_io.s_axi_aresetn,
    axis_sg_int4_v2_0_io.s0_axis_aresetn,
    axis_sg_int4_v2_0_io.aresetn))
  /* -- axis_sg_int4_v2_1 -- */
  val axis_sg_int4_v2_1_io = AxisSgInt4IO()
  axis_sg_int4_v2_1_io.setName("")
  axis_sg_int4_v2_1_io.s_axi_aclk.setName("s_axi_aclk_i")
  axis_sg_int4_v2_1_io.aclk.setName("aclk_i")
  axis_sg_int4_v2_1_io.flatten.foreach { w =>
    w.setName("axis_sg_int4_v2_1_" + w.getName())
  }
  val axis_sg_int4_v2_1 = AxisSgInt4()
  axis_sg_int4_v2_1_io <> axis_sg_int4_v2_1.io
  removeAssignmentsAll(Seq(
    axis_sg_int4_v2_1.io.s_axi_aclk,
    axis_sg_int4_v2_1.io.s0_axis_aclk,
    axis_sg_int4_v2_1.io.aclk,
    axis_sg_int4_v2_1.io.s_axi_aresetn,
    axis_sg_int4_v2_1.io.s0_axis_aresetn,
    axis_sg_int4_v2_1.io.aresetn))
  axis_sg_int4_v2_1.io.s_axi_aclk := clk_pl
  axis_sg_int4_v2_1.io.s0_axis_aclk := clk_pl
  axis_sg_int4_v2_1.io.aclk := clk_dac3
  axis_sg_int4_v2_1.io.s_axi_aresetn := rst_100
  axis_sg_int4_v2_1.io.s0_axis_aresetn := rst_100
  axis_sg_int4_v2_1.io.aresetn := rst_dac3
  setAsDirectionlessAll(Seq(
    axis_sg_int4_v2_1_io.s_axi_aclk,
    axis_sg_int4_v2_1_io.s0_axis_aclk,
    axis_sg_int4_v2_1_io.aclk,
    axis_sg_int4_v2_1_io.s_axi_aresetn,
    axis_sg_int4_v2_1_io.s0_axis_aresetn,
    axis_sg_int4_v2_1_io.aresetn))
  /* -- axis_resampler_2x1_v1_0 -- */
  val axis_resampler_2x1_v1_0_io = AxisResamplerIO(B = 16, N = 8)
  axis_resampler_2x1_v1_0_io.setName("")
  axis_resampler_2x1_v1_0_io.flatten.foreach { w =>
    w.setName("axis_resampler_2x1_v1_0_" + w.getName())
  }
  val axis_resampler_2x1_v1_0 = AxisResampler(B = 16, N = 8)
  axis_resampler_2x1_v1_0_io <> axis_resampler_2x1_v1_0.io
  removeAssignmentsAll(Seq(
    axis_resampler_2x1_v1_0.io.aclk,
    axis_resampler_2x1_v1_0.io.aresetn))
  axis_resampler_2x1_v1_0.io.aclk := clk_dac2
  axis_resampler_2x1_v1_0.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_resampler_2x1_v1_0_io.aclk,
    axis_resampler_2x1_v1_0_io.aresetn))
  /* -- axis_register_slice_0 -- */
  val axis_register_slice_0_io = AxisRegisterSliceNbIo(B = 256, N = 6)
  axis_register_slice_0_io.setName("")
  axis_register_slice_0_io.flatten.foreach { w =>
    w.setName("axis_register_slice_0_" + w.getName())
  }
  val axis_register_slice_0 = AxisRegisterSliceNb(B = 256, N = 6)
  axis_register_slice_0_io <> axis_register_slice_0.io
  removeAssignmentsAll(Seq(
    axis_register_slice_0.io.aclk,
    axis_register_slice_0.io.aresetn))
  axis_register_slice_0.io.aclk := clk_dac2
  axis_register_slice_0.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_register_slice_0_io.aclk,
    axis_register_slice_0_io.aresetn))
  /* -- axis_register_slice_1 -- */
  val axis_register_slice_1_io = AxisRegisterSliceNbIo(B = 256, N = 6)
  axis_register_slice_1_io.setName("")
  axis_register_slice_1_io.flatten.foreach { w =>
    w.setName("axis_register_slice_1_" + w.getName())
  }
  val axis_register_slice_1 = AxisRegisterSliceNb(B = 256, N = 6)
  axis_register_slice_1_io <> axis_register_slice_1.io
  removeAssignmentsAll(Seq(
    axis_register_slice_1.io.aclk,
    axis_register_slice_1.io.aresetn))
  axis_register_slice_1.io.aclk := clk_dac2
  axis_register_slice_1.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_register_slice_1_io.aclk,
    axis_register_slice_1_io.aresetn))
  /* -- axis_register_slice_2 -- */
  val axis_register_slice_2_io = AxisRegisterSliceNbIo(B = 256, N = 6)
  axis_register_slice_2_io.setName("")
  axis_register_slice_2_io.flatten.foreach { w =>
    w.setName("axis_register_slice_2_" + w.getName())
  }
  val axis_register_slice_2 = AxisRegisterSliceNb(B = 256, N = 6)
  axis_register_slice_2_io <> axis_register_slice_2.io
  removeAssignmentsAll(Seq(
    axis_register_slice_2.io.aclk,
    axis_register_slice_2.io.aresetn))
  axis_register_slice_2.io.aclk := clk_dac2
  axis_register_slice_2.io.aresetn := rst_dac2
  setAsDirectionlessAll(Seq(
    axis_register_slice_2_io.aclk,
    axis_register_slice_2_io.aresetn))
  /* -- loops -- */
  removeAssignmentsAll(Seq(
    axis_avg_buffer_0.io.trigger,
    axis_avg_buffer_1.io.trigger,
    axis_avg_buffer_2.io.trigger,
    axis_avg_buffer_3.io.trigger,
    axis_avg_buffer_4.io.trigger,
    axis_avg_buffer_5.io.trigger,
    axis_avg_buffer_6.io.trigger,
    mr_buffer_et_0.io.trigger
  ))
  axis_avg_buffer_0.io.trigger := qickProcessor.io.trig_o(10)
  axis_avg_buffer_1.io.trigger := qickProcessor.io.trig_o(11)
  axis_avg_buffer_2.io.trigger := qickProcessor.io.trig_o(12)
  axis_avg_buffer_3.io.trigger := qickProcessor.io.trig_o(13)
  axis_avg_buffer_4.io.trigger := qickProcessor.io.trig_o(14)
  axis_avg_buffer_5.io.trigger := qickProcessor.io.trig_o(15)
  axis_avg_buffer_6.io.trigger := qickProcessor.io.trig_o(16)
  mr_buffer_et_0.io.trigger := qickProcessor.io.trig_o(9)
  setAsDirectionlessAll(Seq(
    axis_avg_buffer_0_io.trigger,
    axis_avg_buffer_1_io.trigger,
    axis_avg_buffer_2_io.trigger,
    axis_avg_buffer_3_io.trigger,
    axis_avg_buffer_4_io.trigger,
    axis_avg_buffer_5_io.trigger,
    axis_avg_buffer_6_io.trigger,
    mr_buffer_et_0_io.trigger
  ))

  val sg_translator_0_io = QickSgTranslatorIo()
  sg_translator_0_io.setName("")
  sg_translator_0_io.flatten.foreach { w =>
    w.setName("sg_translator_0_" + w.getName())
  }
  sg_translator_0_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  sg_translator_0_io.m_gen_v6_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  val sg_translator_0 = QickSgTranslator()
  sg_translator_0_io <> sg_translator_0.io
  removeAssignmentsAll(Seq(
    sg_translator_0.io.aresetn,
    sg_translator_0.io.aclk,
  ))
  sg_translator_0.io.aresetn := rst_dac2
  sg_translator_0.io.aclk := clk_dac2
  setAsDirectionlessAll(Seq(
    sg_translator_0_io.aresetn,
    sg_translator_0_io.aclk,
  ))

  val sg_translator_1_io = QickSgTranslatorIo()
  sg_translator_1_io.setName("")
  sg_translator_1_io.flatten.foreach { w =>
    w.setName("sg_translator_1_" + w.getName())
  }
  sg_translator_1_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  sg_translator_1_io.m_mux4_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  val sg_translator_1 = QickSgTranslator(2)
  sg_translator_1_io <> sg_translator_1.io
  removeAssignmentsAll(Seq(
    sg_translator_1.io.aresetn,
    sg_translator_1.io.aclk,
  ))
  sg_translator_1.io.aresetn := rst_dac2
  sg_translator_1.io.aclk := clk_dac2
  setAsDirectionlessAll(Seq(
    sg_translator_1_io.aresetn,
    sg_translator_1_io.aclk,
  ))

  val sg_translator_2_io = QickSgTranslatorIo()
  sg_translator_2_io.setName("")
  sg_translator_2_io.flatten.foreach { w =>
    w.setName("sg_translator_2_" + w.getName())
  }
  sg_translator_2_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  sg_translator_2_io.m_gen_v6_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  val sg_translator_2 = QickSgTranslator()
  sg_translator_2_io <> sg_translator_2.io
  removeAssignmentsAll(Seq(
    sg_translator_2.io.aresetn,
    sg_translator_2.io.aclk,
  ))
  sg_translator_2.io.aresetn := rst_dac2
  sg_translator_2.io.aclk := clk_dac2
  setAsDirectionlessAll(Seq(
    sg_translator_2_io.aresetn,
    sg_translator_2_io.aclk,
  ))

  val sg_translator_3_io = QickSgTranslatorIo()
  sg_translator_3_io.setName("")
  sg_translator_3_io.flatten.foreach { w =>
    w.setName("sg_translator_3_" + w.getName())
  }
  sg_translator_3_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  sg_translator_3_io.m_gen_v6_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  val sg_translator_3 = QickSgTranslator(0)
  sg_translator_3_io <> sg_translator_3.io
  removeAssignmentsAll(Seq(
    sg_translator_3.io.aresetn,
    sg_translator_3.io.aclk,
  ))
  sg_translator_3.io.aresetn := rst_dac3
  sg_translator_3.io.aclk := clk_dac3
  setAsDirectionlessAll(Seq(
    sg_translator_3_io.aresetn,
    sg_translator_3_io.aclk,
  ))

  val sg_translator_4_io = QickSgTranslatorIo()
  sg_translator_4_io.setName("")
  sg_translator_4_io.flatten.foreach { w =>
    w.setName("sg_translator_4_" + w.getName())
  }
  sg_translator_4_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  sg_translator_4_io.m_gen_v6_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  val sg_translator_4 = QickSgTranslator(0)
  sg_translator_4_io <> sg_translator_4.io
  removeAssignmentsAll(Seq(
    sg_translator_4.io.aresetn,
    sg_translator_4.io.aclk,
  ))
  sg_translator_4.io.aresetn := rst_dac3
  sg_translator_4.io.aclk := clk_dac3
  setAsDirectionlessAll(Seq(
    sg_translator_4_io.aresetn,
    sg_translator_4_io.aclk,
  ))

  val sg_translator_5_io = QickSgTranslatorIo()
  sg_translator_5_io.setName("")
  sg_translator_5_io.flatten.foreach { w =>
    w.setName("sg_translator_5_" + w.getName())
  }
  sg_translator_5_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  sg_translator_5_io.m_mux4_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 430080000")
  val sg_translator_5 = QickSgTranslator(2)
  sg_translator_5_io <> sg_translator_5.io
  removeAssignmentsAll(Seq(
    sg_translator_5.io.aresetn,
    sg_translator_5.io.aclk,
  ))
  sg_translator_5.io.aresetn := rst_dac3
  sg_translator_5.io.aclk := clk_dac3
  setAsDirectionlessAll(Seq(
    sg_translator_5_io.aresetn,
    sg_translator_5_io.aclk,
  ))

  val sg_translator_6_io = QickSgTranslatorIo()
  sg_translator_6_io.setName("")
  sg_translator_6_io.flatten.foreach { w =>
    w.setName("sg_translator_6_" + w.getName())
  }
  sg_translator_6_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
  sg_translator_6_io.m_readout_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 307200000")
  val sg_translator_6 = QickSgTranslator(3)
  sg_translator_6_io <> sg_translator_6.io
  removeAssignmentsAll(Seq(
    sg_translator_6.io.aresetn,
    sg_translator_6.io.aclk,
  ))
  sg_translator_6.io.aresetn := rst_adc2
  sg_translator_6.io.aclk := clk_adc2
  setAsDirectionlessAll(Seq(
    sg_translator_6_io.aresetn,
    sg_translator_6_io.aclk,
  ))

  val sg_translator_7_io = QickSgTranslatorIo()
  sg_translator_7_io.setName("")
  sg_translator_7_io.flatten.foreach { w =>
    w.setName("sg_translator_7_" + w.getName())
  }
  sg_translator_7_io.s_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  sg_translator_7_io.m_readout_axis.payload.data.addAttribute("X_INTERFACE_PARAMETER", "FREQ_HZ 614400000")
  val sg_translator_7 = QickSgTranslator(3)
  sg_translator_7_io <> sg_translator_7.io
  removeAssignmentsAll(Seq(
    sg_translator_7.io.aresetn,
    sg_translator_7.io.aclk,
  ))
  sg_translator_7.io.aresetn := rst_dac2
  sg_translator_7.io.aclk := clk_dac2
  setAsDirectionlessAll(Seq(
    sg_translator_7_io.aresetn,
    sg_translator_7_io.aclk,
  ))
}

object QickTop extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./firmware/rtl/"
  ).generate(
    QickTop()
  )
}
