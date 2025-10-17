package qick

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axis._
import spinal.lib.bus.amba4.axilite._

case class AxisRegisterSliceNbIo(B: Int, N: Int) extends Bundle {
   val aresetn = in Bool()
   val aclk = in Bool()
   val s_axis = slave port Axi4Stream(Axi4StreamConfig(dataWidth = B / 8))
   s_axis.payload.data.setName("s_axis_tdata")
   s_axis.valid.setName("s_axis_tvalid")
   s_axis.ready.setName("s_axis_tready")
   val m_axis = master port Axi4Stream(Axi4StreamConfig(dataWidth = B / 8))
   m_axis.payload.data.setName("m_axis_tdata")
   m_axis.valid.setName("m_axis_tvalid")
}

case class axis_register_slice_nb(B: Int = 16, N: Int = 4) extends BlackBox {
  addGeneric("B", B)
  addGeneric("N", N)
  val io = AxisRegisterSliceNbIo(B, N)
  noIoPrefix()
}

case class AxisRegisterSliceNb(B: Int = 16, N: Int = 4) extends Component {
  val io = AxisRegisterSliceNbIo(B, N)
  val axisRegisterSliceNb = axis_register_slice_nb(B, N)
  noIoPrefix()
  io <> axisRegisterSliceNb.io
}

object AxisRegisterSliceNb extends App {
  val params = List(
    (256, 6),
    (256, 6),
    (256, 6),
  )
  for(((b, n), i) <- params.zipWithIndex) {
    SpinalConfig(
      mode = Verilog,
      targetDirectory = s"./firmware/rtl/AxisRegisterSliceNb"
    ).generate{
      val dut = AxisRegisterSliceNb(b, n)
      dut.setDefinitionName(s"AxisRegisterSliceNb_${i}")
    }
  }
}