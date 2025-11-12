// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : MrBufferV1
// Git hash  : 00179051d5d50684ff213a5973330a887184571f

`timescale 1ns/1ps

module MrBufferV1 (
  input  wire          trigger,
  input  wire          s00_axi_awvalid,
  output wire          s00_axi_awready,
  input  wire [5:0]    s00_axi_awaddr,
  input  wire [2:0]    s00_axi_awprot,
  input  wire          s00_axi_wvalid,
  output wire          s00_axi_wready,
  input  wire [31:0]   s00_axi_wdata,
  input  wire [3:0]    s00_axi_wstrb,
  output wire          s00_axi_bvalid,
  input  wire          s00_axi_bready,
  output wire [1:0]    s00_axi_bresp,
  input  wire          s00_axi_arvalid,
  output wire          s00_axi_arready,
  input  wire [5:0]    s00_axi_araddr,
  input  wire [2:0]    s00_axi_arprot,
  output wire          s00_axi_rvalid,
  input  wire          s00_axi_rready,
  output wire [31:0]   s00_axi_rdata,
  output wire [1:0]    s00_axi_rresp,
  input  wire          s00_axi_aclk,
  input  wire          s00_axi_aresetn,
  input  wire          s00_axis_tvalid,
  output wire          s00_axis_tready,
  input  wire [255:0]  s00_axis_tdata,
  input  wire [31:0]   s00_axis_tstrb,
  input  wire          s00_axis_tlast,
  input  wire          s00_axis_aclk,
  input  wire          s00_axis_aresetn,
  output wire          m00_axis_tvalid,
  input  wire          m00_axis_tready,
  output wire [31:0]   m00_axis_tdata,
  output wire [3:0]    m00_axis_tstrb,
  output wire          m00_axis_tlast,
  input  wire          m00_axis_aclk,
  input  wire          m00_axis_aresetn,
  output wire          s_dbg_probe,
  output wire          m_dbg_probe
);

  wire                mrbuffer_s00_axi_awready;
  wire                mrbuffer_s00_axi_wready;
  wire                mrbuffer_s00_axi_bvalid;
  wire       [1:0]    mrbuffer_s00_axi_bresp;
  wire                mrbuffer_s00_axi_arready;
  wire                mrbuffer_s00_axi_rvalid;
  wire       [31:0]   mrbuffer_s00_axi_rdata;
  wire       [1:0]    mrbuffer_s00_axi_rresp;
  wire                mrbuffer_s00_axis_tready;
  wire                mrbuffer_m00_axis_tvalid;
  wire       [31:0]   mrbuffer_m00_axis_tdata;
  wire       [3:0]    mrbuffer_m00_axis_tstrb;
  wire                mrbuffer_m00_axis_tlast;
  wire                mrbuffer_s_dbg_probe;
  wire                mrbuffer_m_dbg_probe;

  mr_buffer_v1_0 #(
    .NM                   (8 ),
    .N                    (10),
    .B                    (32),
    .C_S00_AXI_DATA_WIDTH (32),
    .C_S00_AXI_ADDR_WIDTH (6 ),
    .DEBUG                (0 )
  ) mrbuffer (
    .trigger          (trigger                      ), //i
    .s00_axi_awvalid  (s00_axi_awvalid              ), //i
    .s00_axi_awready  (mrbuffer_s00_axi_awready     ), //o
    .s00_axi_awaddr   (s00_axi_awaddr[5:0]          ), //i
    .s00_axi_awprot   (s00_axi_awprot[2:0]          ), //i
    .s00_axi_wvalid   (s00_axi_wvalid               ), //i
    .s00_axi_wready   (mrbuffer_s00_axi_wready      ), //o
    .s00_axi_wdata    (s00_axi_wdata[31:0]          ), //i
    .s00_axi_wstrb    (s00_axi_wstrb[3:0]           ), //i
    .s00_axi_bvalid   (mrbuffer_s00_axi_bvalid      ), //o
    .s00_axi_bready   (s00_axi_bready               ), //i
    .s00_axi_bresp    (mrbuffer_s00_axi_bresp[1:0]  ), //o
    .s00_axi_arvalid  (s00_axi_arvalid              ), //i
    .s00_axi_arready  (mrbuffer_s00_axi_arready     ), //o
    .s00_axi_araddr   (s00_axi_araddr[5:0]          ), //i
    .s00_axi_arprot   (s00_axi_arprot[2:0]          ), //i
    .s00_axi_rvalid   (mrbuffer_s00_axi_rvalid      ), //o
    .s00_axi_rready   (s00_axi_rready               ), //i
    .s00_axi_rdata    (mrbuffer_s00_axi_rdata[31:0] ), //o
    .s00_axi_rresp    (mrbuffer_s00_axi_rresp[1:0]  ), //o
    .s00_axi_aclk     (s00_axi_aclk                 ), //i
    .s00_axi_aresetn  (s00_axi_aresetn              ), //i
    .s00_axis_tvalid  (s00_axis_tvalid              ), //i
    .s00_axis_tready  (mrbuffer_s00_axis_tready     ), //o
    .s00_axis_tdata   (s00_axis_tdata[255:0]        ), //i
    .s00_axis_tstrb   (s00_axis_tstrb[31:0]         ), //i
    .s00_axis_tlast   (s00_axis_tlast               ), //i
    .s00_axis_aclk    (s00_axis_aclk                ), //i
    .s00_axis_aresetn (s00_axis_aresetn             ), //i
    .m00_axis_tvalid  (mrbuffer_m00_axis_tvalid     ), //o
    .m00_axis_tready  (m00_axis_tready              ), //i
    .m00_axis_tdata   (mrbuffer_m00_axis_tdata[31:0]), //o
    .m00_axis_tstrb   (mrbuffer_m00_axis_tstrb[3:0] ), //o
    .m00_axis_tlast   (mrbuffer_m00_axis_tlast      ), //o
    .m00_axis_aclk    (m00_axis_aclk                ), //i
    .m00_axis_aresetn (m00_axis_aresetn             ), //i
    .s_dbg_probe      (mrbuffer_s_dbg_probe         ), //o
    .m_dbg_probe      (mrbuffer_m_dbg_probe         )  //o
  );
  assign s00_axi_awready = mrbuffer_s00_axi_awready;
  assign s00_axi_wready = mrbuffer_s00_axi_wready;
  assign s00_axi_bvalid = mrbuffer_s00_axi_bvalid;
  assign s00_axi_bresp = mrbuffer_s00_axi_bresp;
  assign s00_axi_arready = mrbuffer_s00_axi_arready;
  assign s00_axi_rvalid = mrbuffer_s00_axi_rvalid;
  assign s00_axi_rdata = mrbuffer_s00_axi_rdata;
  assign s00_axi_rresp = mrbuffer_s00_axi_rresp;
  assign s00_axis_tready = mrbuffer_s00_axis_tready;
  assign m00_axis_tvalid = mrbuffer_m00_axis_tvalid;
  assign m00_axis_tdata = mrbuffer_m00_axis_tdata;
  assign m00_axis_tstrb = mrbuffer_m00_axis_tstrb;
  assign m00_axis_tlast = mrbuffer_m00_axis_tlast;
  assign s_dbg_probe = mrbuffer_s_dbg_probe;
  assign m_dbg_probe = mrbuffer_m_dbg_probe;

endmodule
