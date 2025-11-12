// Generator : SpinalHDL v1.12.3    git head : 591e64062329e5e2e2b81f4d52422948053edb97
// Component : AxisBufferDdr
// Git hash  : dc5472be1928b3bc8bb90ff1d313e08ff70cfc16

`timescale 1ns/1ps

module AxisBufferDdr (
  input  wire          trigger,
  input  wire          s_axi_aclk_i,
  input  wire          s_axi_aresetn,
  input  wire          s_axi_awvalid,
  output wire          s_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 99999985" *) input  wire [5:0]    s_axi_awaddr,
  input  wire [2:0]    s_axi_awprot,
  input  wire          s_axi_wvalid,
  output wire          s_axi_wready,
  input  wire [31:0]   s_axi_wdata,
  input  wire [3:0]    s_axi_wstrb,
  output wire          s_axi_bvalid,
  input  wire          s_axi_bready,
  output wire [1:0]    s_axi_bresp,
  input  wire          s_axi_arvalid,
  output wire          s_axi_arready,
  input  wire [5:0]    s_axi_araddr,
  input  wire [2:0]    s_axi_arprot,
  output wire          s_axi_rvalid,
  input  wire          s_axi_rready,
  output wire [31:0]   s_axi_rdata,
  output wire [1:0]    s_axi_rresp,
  input  wire          aclk_i,
  input  wire          aresetn,
  output wire          m_axi_awvalid,
  input  wire          m_axi_awready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 333250000" *) output wire [31:0]   m_axi_awaddr,
  output wire [0:0]    m_axi_awid,
  output wire [3:0]    m_axi_awregion,
  output wire [7:0]    m_axi_awlen,
  output wire [2:0]    m_axi_awsize,
  output wire [1:0]    m_axi_awburst,
  output wire [0:0]    m_axi_awlock,
  output wire [3:0]    m_axi_awcache,
  output wire [3:0]    m_axi_awqos,
  output wire [2:0]    m_axi_awprot,
  output wire          m_axi_wvalid,
  input  wire          m_axi_wready,
  output wire [255:0]  m_axi_wdata,
  output wire [31:0]   m_axi_wstrb,
  output wire          m_axi_wlast,
  input  wire          m_axi_bvalid,
  output wire          m_axi_bready,
  input  wire [0:0]    m_axi_bid,
  input  wire [1:0]    m_axi_bresp,
  output wire          m_axi_arvalid,
  input  wire          m_axi_arready,
  output wire [31:0]   m_axi_araddr,
  output wire [0:0]    m_axi_arid,
  output wire [3:0]    m_axi_arregion,
  output wire [7:0]    m_axi_arlen,
  output wire [2:0]    m_axi_arsize,
  output wire [1:0]    m_axi_arburst,
  output wire [0:0]    m_axi_arlock,
  output wire [3:0]    m_axi_arcache,
  output wire [3:0]    m_axi_arqos,
  output wire [2:0]    m_axi_arprot,
  input  wire          m_axi_rvalid,
  output wire          m_axi_rready,
  input  wire [255:0]  m_axi_rdata,
  input  wire [0:0]    m_axi_rid,
  input  wire [1:0]    m_axi_rresp,
  input  wire          m_axi_rlast,
  output wire          m_axis_tvalid,
  input  wire          m_axis_tready,
  output wire [255:0]  m_axis_tdata,
  output wire [31:0]   m_axis_tstrb,
  output wire          m_axis_tlast,
  input  wire          s_axis_tvalid,
  output wire          s_axis_tready,
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 333250000" *) input  wire [255:0]  s_axis_tdata,
  input  wire [31:0]   s_axis_tstrb,
  input  wire          s_axis_tlast
);

  wire                axisBufferDdr_s_axi_awready;
  wire                axisBufferDdr_s_axi_wready;
  wire                axisBufferDdr_s_axi_bvalid;
  wire       [1:0]    axisBufferDdr_s_axi_bresp;
  wire                axisBufferDdr_s_axi_arready;
  wire                axisBufferDdr_s_axi_rvalid;
  wire       [31:0]   axisBufferDdr_s_axi_rdata;
  wire       [1:0]    axisBufferDdr_s_axi_rresp;
  wire                axisBufferDdr_m_axi_arvalid;
  wire       [31:0]   axisBufferDdr_m_axi_araddr;
  wire       [0:0]    axisBufferDdr_m_axi_arid;
  wire       [3:0]    axisBufferDdr_m_axi_arregion;
  wire       [7:0]    axisBufferDdr_m_axi_arlen;
  wire       [2:0]    axisBufferDdr_m_axi_arsize;
  wire       [1:0]    axisBufferDdr_m_axi_arburst;
  wire       [0:0]    axisBufferDdr_m_axi_arlock;
  wire       [3:0]    axisBufferDdr_m_axi_arcache;
  wire       [3:0]    axisBufferDdr_m_axi_arqos;
  wire       [2:0]    axisBufferDdr_m_axi_arprot;
  wire                axisBufferDdr_m_axi_awvalid;
  wire       [31:0]   axisBufferDdr_m_axi_awaddr;
  wire       [0:0]    axisBufferDdr_m_axi_awid;
  wire       [3:0]    axisBufferDdr_m_axi_awregion;
  wire       [7:0]    axisBufferDdr_m_axi_awlen;
  wire       [2:0]    axisBufferDdr_m_axi_awsize;
  wire       [1:0]    axisBufferDdr_m_axi_awburst;
  wire       [0:0]    axisBufferDdr_m_axi_awlock;
  wire       [3:0]    axisBufferDdr_m_axi_awcache;
  wire       [3:0]    axisBufferDdr_m_axi_awqos;
  wire       [2:0]    axisBufferDdr_m_axi_awprot;
  wire                axisBufferDdr_m_axi_wvalid;
  wire       [255:0]  axisBufferDdr_m_axi_wdata;
  wire       [31:0]   axisBufferDdr_m_axi_wstrb;
  wire                axisBufferDdr_m_axi_wlast;
  wire                axisBufferDdr_m_axi_rready;
  wire                axisBufferDdr_m_axi_bready;
  wire                axisBufferDdr_m_axis_tvalid;
  wire       [255:0]  axisBufferDdr_m_axis_tdata;
  wire       [31:0]   axisBufferDdr_m_axis_tstrb;
  wire                axisBufferDdr_m_axis_tlast;
  wire                axisBufferDdr_s_axis_tready;

  axis_buffer_ddr_v1 #(
    .TARGET_SLAVE_BASE_ADDR (0  ),
    .DATA_WIDTH             (256)
  ) axisBufferDdr (
    .trigger        (trigger                          ), //i
    .s_axi_aclk     (s_axi_aclk_i                     ), //i
    .s_axi_aresetn  (s_axi_aresetn                    ), //i
    .s_axi_awvalid  (s_axi_awvalid                    ), //i
    .s_axi_awready  (axisBufferDdr_s_axi_awready      ), //o
    .s_axi_awaddr   (s_axi_awaddr[5:0]                ), //i
    .s_axi_awprot   (s_axi_awprot[2:0]                ), //i
    .s_axi_wvalid   (s_axi_wvalid                     ), //i
    .s_axi_wready   (axisBufferDdr_s_axi_wready       ), //o
    .s_axi_wdata    (s_axi_wdata[31:0]                ), //i
    .s_axi_wstrb    (s_axi_wstrb[3:0]                 ), //i
    .s_axi_bvalid   (axisBufferDdr_s_axi_bvalid       ), //o
    .s_axi_bready   (s_axi_bready                     ), //i
    .s_axi_bresp    (axisBufferDdr_s_axi_bresp[1:0]   ), //o
    .s_axi_arvalid  (s_axi_arvalid                    ), //i
    .s_axi_arready  (axisBufferDdr_s_axi_arready      ), //o
    .s_axi_araddr   (s_axi_araddr[5:0]                ), //i
    .s_axi_arprot   (s_axi_arprot[2:0]                ), //i
    .s_axi_rvalid   (axisBufferDdr_s_axi_rvalid       ), //o
    .s_axi_rready   (s_axi_rready                     ), //i
    .s_axi_rdata    (axisBufferDdr_s_axi_rdata[31:0]  ), //o
    .s_axi_rresp    (axisBufferDdr_s_axi_rresp[1:0]   ), //o
    .aclk           (aclk_i                           ), //i
    .aresetn        (aresetn                          ), //i
    .m_axi_awvalid  (axisBufferDdr_m_axi_awvalid      ), //o
    .m_axi_awready  (m_axi_awready                    ), //i
    .m_axi_awaddr   (axisBufferDdr_m_axi_awaddr[31:0] ), //o
    .m_axi_awid     (axisBufferDdr_m_axi_awid         ), //o
    .m_axi_awregion (axisBufferDdr_m_axi_awregion[3:0]), //o
    .m_axi_awlen    (axisBufferDdr_m_axi_awlen[7:0]   ), //o
    .m_axi_awsize   (axisBufferDdr_m_axi_awsize[2:0]  ), //o
    .m_axi_awburst  (axisBufferDdr_m_axi_awburst[1:0] ), //o
    .m_axi_awlock   (axisBufferDdr_m_axi_awlock       ), //o
    .m_axi_awcache  (axisBufferDdr_m_axi_awcache[3:0] ), //o
    .m_axi_awqos    (axisBufferDdr_m_axi_awqos[3:0]   ), //o
    .m_axi_awprot   (axisBufferDdr_m_axi_awprot[2:0]  ), //o
    .m_axi_wvalid   (axisBufferDdr_m_axi_wvalid       ), //o
    .m_axi_wready   (m_axi_wready                     ), //i
    .m_axi_wdata    (axisBufferDdr_m_axi_wdata[255:0] ), //o
    .m_axi_wstrb    (axisBufferDdr_m_axi_wstrb[31:0]  ), //o
    .m_axi_wlast    (axisBufferDdr_m_axi_wlast        ), //o
    .m_axi_bvalid   (m_axi_bvalid                     ), //i
    .m_axi_bready   (axisBufferDdr_m_axi_bready       ), //o
    .m_axi_bid      (m_axi_bid                        ), //i
    .m_axi_bresp    (m_axi_bresp[1:0]                 ), //i
    .m_axi_arvalid  (axisBufferDdr_m_axi_arvalid      ), //o
    .m_axi_arready  (m_axi_arready                    ), //i
    .m_axi_araddr   (axisBufferDdr_m_axi_araddr[31:0] ), //o
    .m_axi_arid     (axisBufferDdr_m_axi_arid         ), //o
    .m_axi_arregion (axisBufferDdr_m_axi_arregion[3:0]), //o
    .m_axi_arlen    (axisBufferDdr_m_axi_arlen[7:0]   ), //o
    .m_axi_arsize   (axisBufferDdr_m_axi_arsize[2:0]  ), //o
    .m_axi_arburst  (axisBufferDdr_m_axi_arburst[1:0] ), //o
    .m_axi_arlock   (axisBufferDdr_m_axi_arlock       ), //o
    .m_axi_arcache  (axisBufferDdr_m_axi_arcache[3:0] ), //o
    .m_axi_arqos    (axisBufferDdr_m_axi_arqos[3:0]   ), //o
    .m_axi_arprot   (axisBufferDdr_m_axi_arprot[2:0]  ), //o
    .m_axi_rvalid   (m_axi_rvalid                     ), //i
    .m_axi_rready   (axisBufferDdr_m_axi_rready       ), //o
    .m_axi_rdata    (m_axi_rdata[255:0]               ), //i
    .m_axi_rid      (m_axi_rid                        ), //i
    .m_axi_rresp    (m_axi_rresp[1:0]                 ), //i
    .m_axi_rlast    (m_axi_rlast                      ), //i
    .m_axis_tvalid  (axisBufferDdr_m_axis_tvalid      ), //o
    .m_axis_tready  (m_axis_tready                    ), //i
    .m_axis_tdata   (axisBufferDdr_m_axis_tdata[255:0]), //o
    .m_axis_tstrb   (axisBufferDdr_m_axis_tstrb[31:0] ), //o
    .m_axis_tlast   (axisBufferDdr_m_axis_tlast       ), //o
    .s_axis_tvalid  (s_axis_tvalid                    ), //i
    .s_axis_tready  (axisBufferDdr_s_axis_tready      ), //o
    .s_axis_tdata   (s_axis_tdata[255:0]              ), //i
    .s_axis_tstrb   (s_axis_tstrb[31:0]               ), //i
    .s_axis_tlast   (s_axis_tlast                     )  //i
  );
  assign s_axi_awready = axisBufferDdr_s_axi_awready;
  assign s_axi_wready = axisBufferDdr_s_axi_wready;
  assign s_axi_bvalid = axisBufferDdr_s_axi_bvalid;
  assign s_axi_bresp = axisBufferDdr_s_axi_bresp;
  assign s_axi_arready = axisBufferDdr_s_axi_arready;
  assign s_axi_rvalid = axisBufferDdr_s_axi_rvalid;
  assign s_axi_rdata = axisBufferDdr_s_axi_rdata;
  assign s_axi_rresp = axisBufferDdr_s_axi_rresp;
  assign m_axi_awvalid = axisBufferDdr_m_axi_awvalid;
  assign m_axi_awaddr = axisBufferDdr_m_axi_awaddr;
  assign m_axi_awid = axisBufferDdr_m_axi_awid;
  assign m_axi_awregion = axisBufferDdr_m_axi_awregion;
  assign m_axi_awlen = axisBufferDdr_m_axi_awlen;
  assign m_axi_awsize = axisBufferDdr_m_axi_awsize;
  assign m_axi_awburst = axisBufferDdr_m_axi_awburst;
  assign m_axi_awlock = axisBufferDdr_m_axi_awlock;
  assign m_axi_awcache = axisBufferDdr_m_axi_awcache;
  assign m_axi_awqos = axisBufferDdr_m_axi_awqos;
  assign m_axi_awprot = axisBufferDdr_m_axi_awprot;
  assign m_axi_wvalid = axisBufferDdr_m_axi_wvalid;
  assign m_axi_wdata = axisBufferDdr_m_axi_wdata;
  assign m_axi_wstrb = axisBufferDdr_m_axi_wstrb;
  assign m_axi_wlast = axisBufferDdr_m_axi_wlast;
  assign m_axi_bready = axisBufferDdr_m_axi_bready;
  assign m_axi_arvalid = axisBufferDdr_m_axi_arvalid;
  assign m_axi_araddr = axisBufferDdr_m_axi_araddr;
  assign m_axi_arid = axisBufferDdr_m_axi_arid;
  assign m_axi_arregion = axisBufferDdr_m_axi_arregion;
  assign m_axi_arlen = axisBufferDdr_m_axi_arlen;
  assign m_axi_arsize = axisBufferDdr_m_axi_arsize;
  assign m_axi_arburst = axisBufferDdr_m_axi_arburst;
  assign m_axi_arlock = axisBufferDdr_m_axi_arlock;
  assign m_axi_arcache = axisBufferDdr_m_axi_arcache;
  assign m_axi_arqos = axisBufferDdr_m_axi_arqos;
  assign m_axi_arprot = axisBufferDdr_m_axi_arprot;
  assign m_axi_rready = axisBufferDdr_m_axi_rready;
  assign m_axis_tvalid = axisBufferDdr_m_axis_tvalid;
  assign m_axis_tdata = axisBufferDdr_m_axis_tdata;
  assign m_axis_tstrb = axisBufferDdr_m_axis_tstrb;
  assign m_axis_tlast = axisBufferDdr_m_axis_tlast;
  assign s_axis_tready = axisBufferDdr_s_axis_tready;

endmodule
