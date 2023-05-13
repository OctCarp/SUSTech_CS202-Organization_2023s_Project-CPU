// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue May  9 02:24:28 2023
// Host        : Xpro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/VivadoProj/CS202_Pro/CS202_Pro.srcs/sources_1/ip/uart_bmpg_0/uart_bmpg_0_sim_netlist.v
// Design      : uart_bmpg_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_bmpg_0,upg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "upg,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module uart_bmpg_0
   (upg_clk_i,
    upg_rst_i,
    upg_clk_o,
    upg_wen_o,
    upg_adr_o,
    upg_dat_o,
    upg_done_o,
    upg_rx_i,
    upg_tx_o);
  input upg_clk_i;
  input upg_rst_i;
  output upg_clk_o;
  output upg_wen_o;
  output [14:0]upg_adr_o;
  output [31:0]upg_dat_o;
  output upg_done_o;
  input upg_rx_i;
  output upg_tx_o;

  wire [14:0]upg_adr_o;
  wire upg_clk_i;
  wire upg_clk_o;
  wire [31:0]upg_dat_o;
  wire upg_done_o;
  wire upg_rst_i;
  wire upg_rx_i;
  wire upg_tx_o;
  wire upg_wen_o;

  uart_bmpg_0_upg inst
       (.upg_adr_o(upg_adr_o),
        .upg_clk_i(upg_clk_i),
        .upg_clk_o(upg_clk_o),
        .upg_dat_o(upg_dat_o),
        .upg_done_o(upg_done_o),
        .upg_rst_i(upg_rst_i),
        .upg_rx_i(upg_rx_i),
        .upg_tx_o(upg_tx_o),
        .upg_wen_o(upg_wen_o));
endmodule

(* CHECK_LICENSE_TYPE = "axi_uart,axi_uartlite,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_uart" *) 
(* X_CORE_INFO = "axi_uartlite,Vivado 2017.4" *) 
module uart_bmpg_0_axi_uart
   (interrupt,
    rx,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_wvalid,
    tx,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_wdata,
    s_axi_wstrb);
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY EDGE_RISING, PortWidth 1" *) output interrupt;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART RxD" *) (* x_interface_parameter = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UARTLITE_BOARD_INTERFACE" *) input rx;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:uart:1.0 UART TxD" *) output tx;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_awaddr;
  output [1:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;

  wire interrupt;
  wire rx;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire tx;

  (* C_BAUDRATE = "128000" *) 
  (* C_DATA_BITS = "8" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_ODD_PARITY = "0" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "10000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_USE_PARITY = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  uart_bmpg_0_axi_uart_axi_uartlite U0
       (.interrupt(interrupt),
        .rx(rx),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .tx(tx));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module uart_bmpg_0_axi_uart_address_decoder
   (FIFO_Full_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \INFERRED_GEN.cnt_i_reg ,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    bus2ip_addr_i_reg,
    bus2ip_rnw_i,
    enable_interrupts,
    enable_interrupts_reg,
    enable_interrupts_reg_0,
    fifo_wr,
    ip2bus_error,
    reset_RX_FIFO,
    reset_TX_FIFO,
    rx_Buffer_Full,
    rx_Data_Present_Pre_reg,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_bready,
    s_axi_bresp_i_reg,
    s_axi_bvalid_i_reg,
    s_axi_bvalid_i_reg_0,
    s_axi_rready,
    s_axi_rvalid_i_reg,
    s_axi_rvalid_i_reg_0,
    s_axi_wvalid,
    start2,
    state_reg,
    tx_Buffer_Empty_Pre_reg,
    tx_Buffer_Full,
    D,
    \INFERRED_GEN.cnt_i_reg[4] ,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    Q,
    bus2ip_rdce,
    out,
    s_axi_bresp,
    \s_axi_rdata_i_reg[7] ,
    s_axi_wdata,
    status_reg);
  output FIFO_Full_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output [2:2]\INFERRED_GEN.cnt_i_reg ;
  output \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input [3:2]bus2ip_addr_i_reg;
  input bus2ip_rnw_i;
  input enable_interrupts;
  output enable_interrupts_reg;
  output enable_interrupts_reg_0;
  output fifo_wr;
  output ip2bus_error;
  output reset_RX_FIFO;
  output reset_TX_FIFO;
  input rx_Buffer_Full;
  output rx_Data_Present_Pre_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  output s_axi_awready;
  input s_axi_bready;
  output [1:1]s_axi_bresp_i_reg;
  output s_axi_bvalid_i_reg;
  input s_axi_bvalid_i_reg_0;
  input s_axi_rready;
  output s_axi_rvalid_i_reg;
  input s_axi_rvalid_i_reg_0;
  input s_axi_wvalid;
  input start2;
  input [1:0]state_reg;
  output tx_Buffer_Empty_Pre_reg;
  input tx_Buffer_Full;
  output [1:0]D;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4]_0 ;
  input [1:0]Q;
  output [0:0]bus2ip_rdce;
  input [7:0]out;
  input [0:0]s_axi_bresp;
  output [7:0]\s_axi_rdata_i_reg[7] ;
  input [2:0]s_axi_wdata;
  input [1:0]status_reg;

  wire Bus_RNW_reg_i_1_n_0;
  wire [1:0]D;
  wire FIFO_Full_reg;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [2:2]\INFERRED_GEN.cnt_i_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire [1:0]Q;
  wire [3:2]bus2ip_addr_i_reg;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_rnw_i;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire enable_interrupts;
  wire enable_interrupts_reg;
  wire enable_interrupts_reg_0;
  wire fifo_wr;
  wire ip2bus_error;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rx_Buffer_Full;
  wire rx_Data_Present_Pre_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_awready;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire [1:1]s_axi_bresp_i_reg;
  wire s_axi_bvalid_i_reg;
  wire s_axi_bvalid_i_reg_0;
  wire [7:0]\s_axi_rdata_i_reg[7] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_rvalid_i_reg_0;
  wire [2:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire [1:0]state_reg;
  wire [1:0]status_reg;
  wire tx_Buffer_Empty_Pre_reg;
  wire tx_Buffer_Full;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i),
        .I1(start2),
        .I2(enable_interrupts_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(enable_interrupts_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(bus2ip_addr_i_reg[2]),
        .I1(bus2ip_addr_i_reg[3]),
        .O(ce_expnd_i_2));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(cs_ce_clr));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(bus2ip_addr_i_reg[3]),
        .I1(bus2ip_addr_i_reg[2]),
        .O(ce_expnd_i_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(start2),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \INFERRED_GEN.cnt_i[3]_i_2 
       (.I0(enable_interrupts_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(\INFERRED_GEN.cnt_i_reg[4] ),
        .O(\INFERRED_GEN.cnt_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \INFERRED_GEN.cnt_i[4]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(enable_interrupts_reg),
        .O(FIFO_Full_reg));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \INFERRED_GEN.cnt_i[4]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(enable_interrupts_reg),
        .I2(tx_Buffer_Full),
        .O(\INFERRED_GEN.cnt_i_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \INFERRED_GEN.data_reg[15][7]_srl16_i_1 
       (.I0(tx_Buffer_Full),
        .I1(enable_interrupts_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(fifo_wr));
  uart_bmpg_0_axi_uart_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.bus2ip_addr_i_reg(bus2ip_addr_i_reg),
        .ce_expnd_i_3(ce_expnd_i_3));
  uart_bmpg_0_axi_uart_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.bus2ip_addr_i_reg(bus2ip_addr_i_reg),
        .ce_expnd_i_1(ce_expnd_i_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    clr_Status_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(enable_interrupts_reg),
        .O(bus2ip_rdce));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    enable_interrupts_i_1
       (.I0(s_axi_wdata[2]),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(enable_interrupts_reg),
        .I3(enable_interrupts),
        .O(enable_interrupts_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    reset_RX_FIFO_i_1
       (.I0(enable_interrupts_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(s_axi_wdata[1]),
        .O(reset_RX_FIFO));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    reset_TX_FIFO_i_1
       (.I0(enable_interrupts_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(s_axi_wdata[0]),
        .O(reset_TX_FIFO));
  LUT4 #(
    .INIT(16'h0444)) 
    rx_Data_Present_Pre_i_1
       (.I0(\INFERRED_GEN.cnt_i_reg[4] ),
        .I1(s_axi_aresetn),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .O(rx_Data_Present_Pre_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    s_axi_arready_INST_0
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(s_axi_arready));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi_bresp),
        .O(s_axi_bresp_i_reg));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    s_axi_bvalid_i_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_axi_awready),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5050C000)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\INFERRED_GEN.cnt_i_reg[4] ),
        .I1(out[0]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA0A0C000)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(rx_Buffer_Full),
        .I1(out[1]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA0A0C000)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .I1(out[2]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [2]));
  LUT5 #(
    .INIT(32'hA0A0C000)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(tx_Buffer_Full),
        .I1(out[3]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [3]));
  LUT5 #(
    .INIT(32'hA0A0C000)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(enable_interrupts),
        .I1(out[4]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [4]));
  LUT5 #(
    .INIT(32'hA0A0C000)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(status_reg[0]),
        .I1(out[5]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [5]));
  LUT5 #(
    .INIT(32'hA0A0C000)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(status_reg[1]),
        .I1(out[6]),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\s_axi_rdata_i_reg[7] [6]));
  LUT4 #(
    .INIT(16'h4000)) 
    \s_axi_rdata_i[7]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I2(enable_interrupts_reg),
        .I3(out[7]),
        .O(\s_axi_rdata_i_reg[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF0880088)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(tx_Buffer_Full),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I3(enable_interrupts_reg),
        .I4(\INFERRED_GEN.cnt_i_reg[4] ),
        .O(ip2bus_error));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    s_axi_rvalid_i_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(s_axi_arready),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0F0F0F0E)) 
    s_axi_wready_INST_0
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(enable_interrupts_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(s_axi_awready));
  LUT5 #(
    .INIT(32'hCFEFCFEC)) 
    \state[0]_i_1 
       (.I0(s_axi_awready),
        .I1(state_reg[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(s_axi_arvalid),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFECCFECCFEFCFEC)) 
    \state[1]_i_1 
       (.I0(s_axi_arready),
        .I1(state_reg[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_axi_wvalid),
        .I5(s_axi_arvalid),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    tx_Buffer_Empty_Pre_i_1
       (.I0(s_axi_aresetn),
        .I1(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(enable_interrupts_reg),
        .O(tx_Buffer_Empty_Pre_reg));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module uart_bmpg_0_axi_uart_axi_lite_ipif
   (Bus_RNW_reg,
    FIFO_Full_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \INFERRED_GEN.cnt_i_reg ,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    bus2ip_reset,
    enable_interrupts,
    enable_interrupts_reg,
    fifo_wr,
    reset_RX_FIFO,
    reset_TX_FIFO,
    rx_Buffer_Full,
    rx_Data_Present_Pre_reg,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_wvalid,
    tx_Buffer_Empty_Pre_reg,
    tx_Buffer_Full,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    bus2ip_rdce,
    out,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_wdata,
    status_reg);
  output Bus_RNW_reg;
  output FIFO_Full_reg;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  output [2:2]\INFERRED_GEN.cnt_i_reg ;
  output \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input bus2ip_reset;
  input enable_interrupts;
  output enable_interrupts_reg;
  output fifo_wr;
  output reset_RX_FIFO;
  output reset_TX_FIFO;
  input rx_Buffer_Full;
  output rx_Data_Present_Pre_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output s_axi_bvalid;
  input s_axi_rready;
  output s_axi_rvalid;
  input s_axi_wvalid;
  output tx_Buffer_Empty_Pre_reg;
  input tx_Buffer_Full;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  input [0:0]Q;
  output [0:0]bus2ip_rdce;
  input [7:0]out;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  output [0:0]s_axi_bresp;
  output [7:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  input [2:0]s_axi_wdata;
  input [1:0]status_reg;

  wire Bus_RNW_reg;
  wire FIFO_Full_reg;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [2:2]\INFERRED_GEN.cnt_i_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset;
  wire enable_interrupts;
  wire enable_interrupts_reg;
  wire fifo_wr;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rx_Buffer_Full;
  wire rx_Data_Present_Pre_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [2:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [1:0]status_reg;
  wire tx_Buffer_Empty_Pre_reg;
  wire tx_Buffer_Full;

  uart_bmpg_0_axi_uart_slave_attachment I_SLAVE_ATTACHMENT
       (.FIFO_Full_reg(FIFO_Full_reg),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\INFERRED_GEN.cnt_i_reg (\INFERRED_GEN.cnt_i_reg ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q(Q),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_reset(bus2ip_reset),
        .enable_interrupts(enable_interrupts),
        .enable_interrupts_reg(Bus_RNW_reg),
        .enable_interrupts_reg_0(enable_interrupts_reg),
        .fifo_wr(fifo_wr),
        .out(out),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx_Buffer_Full(rx_Buffer_Full),
        .rx_Data_Present_Pre_reg(rx_Data_Present_Pre_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg(status_reg),
        .tx_Buffer_Empty_Pre_reg(tx_Buffer_Empty_Pre_reg),
        .tx_Buffer_Full(tx_Buffer_Full));
endmodule

(* C_BAUDRATE = "128000" *) (* C_DATA_BITS = "8" *) (* C_FAMILY = "artix7" *) 
(* C_ODD_PARITY = "0" *) (* C_S_AXI_ACLK_FREQ_HZ = "10000000" *) (* C_S_AXI_ADDR_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_USE_PARITY = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_uartlite" *) 
module uart_bmpg_0_axi_uart_axi_uartlite
   (interrupt,
    rx,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_wready,
    s_axi_wvalid,
    tx,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_wdata,
    s_axi_wstrb);
  output interrupt;
  input rx;
  (* max_fanout = "10000" *) input s_axi_aclk;
  (* max_fanout = "10000" *) input s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output s_axi_bvalid;
  input s_axi_rready;
  output s_axi_rvalid;
  output s_axi_wready;
  input s_axi_wvalid;
  output tx;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_awaddr;
  output [1:0]s_axi_bresp;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_11;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \UARTLITE_RX_I/rx_Data_Empty ;
  wire \UARTLITE_TX_I/fifo_wr ;
  wire [1:1]bus2ip_rdce;
  wire bus2ip_reset;
  wire enable_interrupts;
  wire interrupt;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rx;
  wire rx_Buffer_Full;
  wire [7:0]rx_Data;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  (* MAX_FANOUT = "10000" *) (* RTL_MAX_FANOUT = "found" *) wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:0]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [2:1]status_reg;
  wire tx;
  wire tx_Buffer_Empty;
  wire tx_Buffer_Full;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  uart_bmpg_0_axi_uart_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .FIFO_Full_reg(AXI_LITE_IPIF_I_n_13),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\INFERRED_GEN.cnt_i_reg (AXI_LITE_IPIF_I_n_11),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (AXI_LITE_IPIF_I_n_16),
        .\INFERRED_GEN.cnt_i_reg[4] (tx_Buffer_Empty),
        .Q(\UARTLITE_RX_I/rx_Data_Empty ),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_reset(bus2ip_reset),
        .enable_interrupts(enable_interrupts),
        .enable_interrupts_reg(AXI_LITE_IPIF_I_n_18),
        .fifo_wr(\UARTLITE_TX_I/fifo_wr ),
        .out({rx_Data[0],rx_Data[1],rx_Data[2],rx_Data[3],rx_Data[4],rx_Data[5],rx_Data[6],rx_Data[7]}),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx_Buffer_Full(rx_Buffer_Full),
        .rx_Data_Present_Pre_reg(AXI_LITE_IPIF_I_n_12),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp [1]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata [7:0]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp [1]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[4],s_axi_wdata[1:0]}),
        .s_axi_wvalid(s_axi_wvalid),
        .status_reg({status_reg[1],status_reg[2]}),
        .tx_Buffer_Empty_Pre_reg(AXI_LITE_IPIF_I_n_17),
        .tx_Buffer_Full(tx_Buffer_Full));
  GND GND
       (.G(\<const0> ));
  uart_bmpg_0_axi_uart_uartlite_core UARTLITE_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_11),
        .\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (AXI_LITE_IPIF_I_n_13),
        .\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (AXI_LITE_IPIF_I_n_16),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg (AXI_LITE_IPIF_I_n_18),
        .\INFERRED_GEN.cnt_i_reg (AXI_LITE_IPIF_I_n_17),
        .\INFERRED_GEN.cnt_i_reg[2] (tx_Buffer_Empty),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (AXI_LITE_IPIF_I_n_12),
        .Q(\UARTLITE_RX_I/rx_Data_Empty ),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_reset(bus2ip_reset),
        .enable_interrupts(enable_interrupts),
        .fifo_wr(\UARTLITE_TX_I/fifo_wr ),
        .interrupt(interrupt),
        .out({rx_Data[0],rx_Data[1],rx_Data[2],rx_Data[3],rx_Data[4],rx_Data[5],rx_Data[6],rx_Data[7]}),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx(rx),
        .rx_Buffer_Full(rx_Buffer_Full),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .status_reg({status_reg[1],status_reg[2]}),
        .tx(tx),
        .tx_Buffer_Full(tx_Buffer_Full));
endmodule

(* ORIG_REF_NAME = "baudrate" *) 
module uart_bmpg_0_axi_uart_baudrate
   (en_16x_Baud,
    s_axi_aclk,
    SR);
  output en_16x_Baud;
  input s_axi_aclk;
  input [0:0]SR;

  wire EN_16x_Baud_i_1_n_0;
  wire [0:0]SR;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire en_16x_Baud;
  wire s_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    EN_16x_Baud_i_1
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(EN_16x_Baud_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    EN_16x_Baud_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(EN_16x_Baud_i_1_n_0),
        .Q(en_16x_Baud),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \count[0]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \count[1]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module uart_bmpg_0_axi_uart_cdc_sync
   (EN_16x_Baud_reg,
    p_26_out,
    rx,
    s_axi_aclk,
    s_axi_aresetn,
    scndry_out,
    start_Edge_Detected,
    in);
  input EN_16x_Baud_reg;
  output p_26_out;
  input rx;
  input s_axi_aclk;
  input s_axi_aresetn;
  output scndry_out;
  input start_Edge_Detected;
  input [0:0]in;

  wire EN_16x_Baud_reg;
  wire [0:0]in;
  wire p_26_out;
  wire rx;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire scndry_out;
  wire start_Edge_Detected;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFE00CE00)) 
    \SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1 
       (.I0(scndry_out),
        .I1(start_Edge_Detected),
        .I2(EN_16x_Baud_reg),
        .I3(s_axi_aresetn),
        .I4(in),
        .O(p_26_out));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f
   (Bus_RNW_reg,
    \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    fifo_Read,
    fifo_full_p1,
    reset_TX_FIFO_reg,
    s_axi_aclk,
    s_axi_aresetn,
    tx_Buffer_Full,
    tx_DataBits,
    tx_Data_Enable_reg,
    tx_Start,
    tx_Start0,
    Q,
    SS);
  input Bus_RNW_reg;
  input \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input fifo_Read;
  output fifo_full_p1;
  input reset_TX_FIFO_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  input tx_Buffer_Full;
  input tx_DataBits;
  input tx_Data_Enable_reg;
  input tx_Start;
  output tx_Start0;
  output [4:0]Q;
  output [0:0]SS;

  wire Bus_RNW_reg;
  wire FIFO_Full_i_2__0_n_0;
  wire \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_3__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_4__0_n_0 ;
  wire [4:0]Q;
  wire [0:0]SS;
  wire [4:0]addr_i_p1;
  wire fifo_Read;
  wire fifo_full_p1;
  wire reset_TX_FIFO_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire tx_Buffer_Full;
  wire tx_DataBits;
  wire tx_Data_Enable_reg;
  wire tx_Start;
  wire tx_Start0;

  LUT6 #(
    .INIT(64'h0000000004090000)) 
    FIFO_Full_i_1__0
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(fifo_Read),
        .I4(Q[3]),
        .I5(FIFO_Full_i_2__0_n_0),
        .O(fifo_full_p1));
  LUT2 #(
    .INIT(4'h7)) 
    FIFO_Full_i_2__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(FIFO_Full_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hBBB4BBBB444B4444)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(Q[4]),
        .I1(fifo_Read),
        .I2(tx_Buffer_Full),
        .I3(Bus_RNW_reg),
        .I4(\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(Q[0]),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAA9A65AA)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(fifo_Read),
        .I3(Q[0]),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hF4FF0B00FFBF0040)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(Q[4]),
        .I1(fifo_Read),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAA9AAAA)) 
    \INFERRED_GEN.cnt_i[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(Q[0]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[3]_i_2__0 
       (.I0(Q[4]),
        .I1(fifo_Read),
        .O(\INFERRED_GEN.cnt_i[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[4]_i_1__0 
       (.I0(reset_TX_FIFO_reg),
        .I1(s_axi_aresetn),
        .O(SS));
  LUT6 #(
    .INIT(64'hF0F0FAFAF003F0F0)) 
    \INFERRED_GEN.cnt_i[4]_i_2__0 
       (.I0(\INFERRED_GEN.cnt_i[4]_i_3__0_n_0 ),
        .I1(fifo_Read),
        .I2(Q[4]),
        .I3(\INFERRED_GEN.cnt_i[4]_i_4__0_n_0 ),
        .I4(Q[0]),
        .I5(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(addr_i_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \INFERRED_GEN.cnt_i[4]_i_3__0 
       (.I0(Q[3]),
        .I1(fifo_Read),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\INFERRED_GEN.cnt_i[4]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \INFERRED_GEN.cnt_i[4]_i_4__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\INFERRED_GEN.cnt_i[4]_i_4__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(SS));
  LUT4 #(
    .INIT(16'h0F02)) 
    tx_Start_i_1
       (.I0(tx_Data_Enable_reg),
        .I1(Q[4]),
        .I2(tx_DataBits),
        .I3(tx_Start),
        .O(tx_Start0));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2
   (Bus_RNW_reg,
    Bus_RNW_reg_reg,
    FIFO_Full_reg,
    \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Interrupt0,
    enable_interrupts,
    fifo_Write,
    fifo_full_p1,
    reset_RX_FIFO_reg,
    rx_Data_Present_Pre,
    s_axi_aclk,
    s_axi_aresetn,
    tx_Buffer_Empty_Pre,
    valid_rx,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    Q,
    SS);
  input Bus_RNW_reg;
  input Bus_RNW_reg_reg;
  input FIFO_Full_reg;
  input \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Interrupt0;
  input enable_interrupts;
  input fifo_Write;
  output fifo_full_p1;
  input reset_RX_FIFO_reg;
  input rx_Data_Present_Pre;
  input s_axi_aclk;
  input s_axi_aresetn;
  input tx_Buffer_Empty_Pre;
  input valid_rx;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4]_0 ;
  output [4:0]Q;
  output [0:0]SS;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire FIFO_Full_i_2_n_0;
  wire FIFO_Full_reg;
  wire \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \INFERRED_GEN.cnt_i[4]_i_4_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_5__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_6_n_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire Interrupt0;
  wire [4:0]Q;
  wire [0:0]SS;
  wire [4:0]addr_i_p1;
  wire enable_interrupts;
  wire fifo_Write;
  wire fifo_full_p1;
  wire reset_RX_FIFO_reg;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire tx_Buffer_Empty_Pre;
  wire valid_rx;

  LUT6 #(
    .INIT(64'h0000000009040000)) 
    FIFO_Full_i_1
       (.I0(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(Q[3]),
        .I5(FIFO_Full_i_2_n_0),
        .O(fifo_full_p1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    FIFO_Full_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(FIFO_Full_i_2_n_0));
  LUT5 #(
    .INIT(32'hF70808F7)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Q[4]),
        .I3(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ),
        .I4(Q[0]),
        .O(addr_i_p1[0]));
  LUT6 #(
    .INIT(64'hAAAAAA6A5595AAAA)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[1]),
        .I1(Bus_RNW_reg),
        .I2(\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(Q[4]),
        .I4(Q[0]),
        .I5(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ),
        .O(addr_i_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFE017F80)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Bus_RNW_reg_reg),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'hF0F0F0E178F0F0F0)) 
    \INFERRED_GEN.cnt_i[3]_i_1 
       (.I0(Q[0]),
        .I1(Bus_RNW_reg_reg),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ),
        .O(addr_i_p1[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \INFERRED_GEN.cnt_i[4]_i_1 
       (.I0(reset_RX_FIFO_reg),
        .I1(s_axi_aresetn),
        .O(SS));
  LUT6 #(
    .INIT(64'hF0F0F4F4F00AF0F0)) 
    \INFERRED_GEN.cnt_i[4]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\INFERRED_GEN.cnt_i[4]_i_4_n_0 ),
        .I2(Q[4]),
        .I3(\INFERRED_GEN.cnt_i[4]_i_5__0_n_0 ),
        .I4(Q[0]),
        .I5(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ),
        .O(addr_i_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \INFERRED_GEN.cnt_i[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\INFERRED_GEN.cnt_i[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \INFERRED_GEN.cnt_i[4]_i_5__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\INFERRED_GEN.cnt_i[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \INFERRED_GEN.cnt_i[4]_i_6 
       (.I0(fifo_Write),
        .I1(FIFO_Full_reg),
        .I2(valid_rx),
        .O(\INFERRED_GEN.cnt_i[4]_i_6_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(SS));
  LUT5 #(
    .INIT(32'h1010F010)) 
    Interrupt_i_2
       (.I0(rx_Data_Present_Pre),
        .I1(Q[4]),
        .I2(enable_interrupts),
        .I3(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .I4(tx_Buffer_Empty_Pre),
        .O(Interrupt0));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module uart_bmpg_0_axi_uart_dynshreg_f
   (fifo_wr,
    mux_Out,
    mux_sel_reg,
    p_4_in,
    s_axi_aclk,
    Q,
    s_axi_wdata);
  input fifo_wr;
  output mux_Out;
  input [2:0]mux_sel_reg;
  input p_4_in;
  input s_axi_aclk;
  input [3:0]Q;
  input [7:0]s_axi_wdata;

  wire [3:0]Q;
  wire [7:0]fifo_DOut;
  wire fifo_wr;
  wire mux_Out;
  wire [2:0]mux_sel_reg;
  wire p_4_in;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire serial_Data_i_2_n_0;
  wire serial_Data_i_3_n_0;
  wire serial_Data_i_4_n_0;
  wire serial_Data_i_5_n_0;

  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[7]),
        .Q(fifo_DOut[0]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[6]),
        .Q(fifo_DOut[1]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[5]),
        .Q(fifo_DOut[2]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[4]),
        .Q(fifo_DOut[3]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[3]),
        .Q(fifo_DOut[4]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[2]),
        .Q(fifo_DOut[5]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[1]),
        .Q(fifo_DOut[6]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(s_axi_wdata[0]),
        .Q(fifo_DOut[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    serial_Data_i_1
       (.I0(serial_Data_i_2_n_0),
        .I1(serial_Data_i_3_n_0),
        .I2(serial_Data_i_4_n_0),
        .I3(serial_Data_i_5_n_0),
        .O(mux_Out));
  LUT5 #(
    .INIT(32'h44400040)) 
    serial_Data_i_2
       (.I0(mux_sel_reg[2]),
        .I1(p_4_in),
        .I2(fifo_DOut[2]),
        .I3(mux_sel_reg[0]),
        .I4(fifo_DOut[6]),
        .O(serial_Data_i_2_n_0));
  LUT5 #(
    .INIT(32'h88800080)) 
    serial_Data_i_3
       (.I0(mux_sel_reg[0]),
        .I1(mux_sel_reg[2]),
        .I2(fifo_DOut[5]),
        .I3(p_4_in),
        .I4(fifo_DOut[7]),
        .O(serial_Data_i_3_n_0));
  LUT5 #(
    .INIT(32'h44400040)) 
    serial_Data_i_4
       (.I0(mux_sel_reg[0]),
        .I1(mux_sel_reg[2]),
        .I2(fifo_DOut[1]),
        .I3(p_4_in),
        .I4(fifo_DOut[3]),
        .O(serial_Data_i_4_n_0));
  LUT5 #(
    .INIT(32'h000A000C)) 
    serial_Data_i_5
       (.I0(fifo_DOut[4]),
        .I1(fifo_DOut[0]),
        .I2(p_4_in),
        .I3(mux_sel_reg[2]),
        .I4(mux_sel_reg[0]),
        .O(serial_Data_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module uart_bmpg_0_axi_uart_dynshreg_f_3
   (FIFO_Full_reg,
    fifo_Write,
    s_axi_aclk,
    valid_rx,
    Q,
    in,
    out);
  input FIFO_Full_reg;
  input fifo_Write;
  input s_axi_aclk;
  input valid_rx;
  input [3:0]Q;
  input [0:7]in;
  output [7:0]out;

  wire FIFO_Full_reg;
  wire [3:0]Q;
  wire fifo_Write;
  wire fifo_wr;
  wire [0:7]in;
  wire [7:0]out;
  wire s_axi_aclk;
  wire valid_rx;

  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[0]),
        .Q(out[7]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[1]),
        .Q(out[6]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[2]),
        .Q(out[5]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[3]),
        .Q(out[4]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[4]),
        .Q(out[3]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[5]),
        .Q(out[2]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[6]),
        .Q(out[1]));
  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(fifo_wr),
        .CLK(s_axi_aclk),
        .D(in[7]),
        .Q(out[0]));
  LUT3 #(
    .INIT(8'h20)) 
    \INFERRED_GEN.data_reg[15][7]_srl16_i_1__0 
       (.I0(valid_rx),
        .I1(FIFO_Full_reg),
        .I2(fifo_Write),
        .O(fifo_wr));
endmodule

(* ORIG_REF_NAME = "dynshreg_i_f" *) 
module uart_bmpg_0_axi_uart_dynshreg_i_f
   (\SERIAL_TO_PARALLEL[2].fifo_din_reg ,
    clr_Status,
    en_16x_Baud,
    fifo_Write0,
    frame_err_ocrd,
    frame_err_ocrd_reg,
    p_11_out,
    p_14_out,
    p_17_out,
    p_20_out,
    p_2_out,
    p_5_out,
    p_8_out,
    running_reg,
    running_reg_0,
    s_axi_aclk,
    s_axi_aresetn,
    scndry_out,
    start_Edge_Detected,
    status_reg_reg0,
    stop_Bit_Position_reg,
    stop_Bit_Position_reg_0,
    valid_rx,
    in,
    status_reg);
  output [2:2]\SERIAL_TO_PARALLEL[2].fifo_din_reg ;
  input clr_Status;
  input en_16x_Baud;
  output fifo_Write0;
  input frame_err_ocrd;
  output frame_err_ocrd_reg;
  output p_11_out;
  output p_14_out;
  output p_17_out;
  output p_20_out;
  output p_2_out;
  output p_5_out;
  output p_8_out;
  output running_reg;
  input running_reg_0;
  input s_axi_aclk;
  input s_axi_aresetn;
  input scndry_out;
  input start_Edge_Detected;
  output status_reg_reg0;
  output stop_Bit_Position_reg;
  input stop_Bit_Position_reg_0;
  input valid_rx;
  input [0:7]in;
  input [0:0]status_reg;

  wire [15:15]\INFERRED_GEN.data_reg ;
  wire \INFERRED_GEN.data_reg[14][0]_srl15_n_0 ;
  wire [2:2]\SERIAL_TO_PARALLEL[2].fifo_din_reg ;
  wire clr_Status;
  wire en_16x_Baud;
  wire fifo_Write0;
  wire frame_err_ocrd;
  wire frame_err_ocrd_reg;
  wire [0:7]in;
  wire p_11_out;
  wire p_14_out;
  wire p_17_out;
  wire p_20_out;
  wire p_2_out;
  wire p_5_out;
  wire p_8_out;
  wire recycle;
  wire running_reg;
  wire running_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire scndry_out;
  wire start_Edge_Detected;
  wire [0:0]status_reg;
  wire \status_reg[1]_i_2_n_0 ;
  wire status_reg_reg0;
  wire stop_Bit_Position_reg;
  wire stop_Bit_Position_reg_0;
  wire valid_rx;

  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/DELAY_16_I/INFERRED_GEN.data_reg[14] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/DELAY_16_I/INFERRED_GEN.data_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(en_16x_Baud),
        .CLK(s_axi_aclk),
        .D(recycle),
        .Q(\INFERRED_GEN.data_reg[14][0]_srl15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \INFERRED_GEN.data_reg[14][0]_srl15_i_1 
       (.I0(stop_Bit_Position_reg_0),
        .I1(valid_rx),
        .I2(\INFERRED_GEN.data_reg ),
        .I3(start_Edge_Detected),
        .O(recycle));
  FDRE #(
    .INIT(1'b0)) 
    \INFERRED_GEN.data_reg[15][0] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(\INFERRED_GEN.data_reg[14][0]_srl15_n_0 ),
        .Q(\INFERRED_GEN.data_reg ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[2].fifo_din[2]_i_1 
       (.I0(in[1]),
        .I1(in[0]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_20_out));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[3].fifo_din[3]_i_1 
       (.I0(in[2]),
        .I1(in[1]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_17_out));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[4].fifo_din[4]_i_1 
       (.I0(in[3]),
        .I1(in[2]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_14_out));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[5].fifo_din[5]_i_1 
       (.I0(in[4]),
        .I1(in[3]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_11_out));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[6].fifo_din[6]_i_1 
       (.I0(in[5]),
        .I1(in[4]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_8_out));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[7].fifo_din[7]_i_1 
       (.I0(in[6]),
        .I1(in[5]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_5_out));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1 
       (.I0(in[7]),
        .I1(in[6]),
        .I2(start_Edge_Detected),
        .I3(s_axi_aresetn),
        .I4(\SERIAL_TO_PARALLEL[2].fifo_din_reg ),
        .O(p_2_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_2 
       (.I0(en_16x_Baud),
        .I1(\INFERRED_GEN.data_reg ),
        .I2(stop_Bit_Position_reg_0),
        .O(\SERIAL_TO_PARALLEL[2].fifo_din_reg ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    fifo_Write_i_1
       (.I0(\INFERRED_GEN.data_reg ),
        .I1(en_16x_Baud),
        .I2(stop_Bit_Position_reg_0),
        .I3(scndry_out),
        .O(fifo_Write0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00FF0080)) 
    frame_err_ocrd_i_1
       (.I0(\INFERRED_GEN.data_reg ),
        .I1(en_16x_Baud),
        .I2(stop_Bit_Position_reg_0),
        .I3(scndry_out),
        .I4(frame_err_ocrd),
        .O(frame_err_ocrd_reg));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hBFFFA0A0)) 
    running_i_1
       (.I0(start_Edge_Detected),
        .I1(\INFERRED_GEN.data_reg ),
        .I2(en_16x_Baud),
        .I3(stop_Bit_Position_reg_0),
        .I4(running_reg_0),
        .O(running_reg));
  LUT5 #(
    .INIT(32'h0000F200)) 
    \status_reg[1]_i_1 
       (.I0(\status_reg[1]_i_2_n_0 ),
        .I1(scndry_out),
        .I2(status_reg),
        .I3(s_axi_aresetn),
        .I4(clr_Status),
        .O(status_reg_reg0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \status_reg[1]_i_2 
       (.I0(stop_Bit_Position_reg_0),
        .I1(en_16x_Baud),
        .I2(\INFERRED_GEN.data_reg ),
        .O(\status_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2CCC)) 
    stop_Bit_Position_i_1
       (.I0(in[7]),
        .I1(stop_Bit_Position_reg_0),
        .I2(en_16x_Baud),
        .I3(\INFERRED_GEN.data_reg ),
        .O(stop_Bit_Position_reg));
endmodule

(* ORIG_REF_NAME = "dynshreg_i_f" *) 
module uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0
   (en_16x_Baud,
    s_axi_aclk,
    tx_Data_Enable_reg,
    tx_Data_Enable_reg_0);
  input en_16x_Baud;
  input s_axi_aclk;
  output tx_Data_Enable_reg;
  input tx_Data_Enable_reg_0;

  wire \INFERRED_GEN.data_reg[14][0]_srl15_n_0 ;
  wire [0:0]\INFERRED_GEN.data_reg_n_0_[15] ;
  wire en_16x_Baud;
  wire s_axi_aclk;
  wire tx_Data_Enable_reg;
  wire tx_Data_Enable_reg_0;

  (* srl_bus_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/MID_START_BIT_SRL16_I/INFERRED_GEN.data_reg[14] " *) 
  (* srl_name = "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/MID_START_BIT_SRL16_I/INFERRED_GEN.data_reg[14][0]_srl15 " *) 
  SRL16E #(
    .INIT(16'h0001)) 
    \INFERRED_GEN.data_reg[14][0]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(en_16x_Baud),
        .CLK(s_axi_aclk),
        .D(\INFERRED_GEN.data_reg_n_0_[15] ),
        .Q(\INFERRED_GEN.data_reg[14][0]_srl15_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \INFERRED_GEN.data_reg[15][0] 
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(\INFERRED_GEN.data_reg[14][0]_srl15_n_0 ),
        .Q(\INFERRED_GEN.data_reg_n_0_[15] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    tx_Data_Enable_i_1
       (.I0(\INFERRED_GEN.data_reg_n_0_[15] ),
        .I1(tx_Data_Enable_reg_0),
        .I2(en_16x_Baud),
        .O(tx_Data_Enable_reg));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module uart_bmpg_0_axi_uart_pselect_f
   (bus2ip_addr_i_reg,
    ce_expnd_i_3);
  input [3:2]bus2ip_addr_i_reg;
  output ce_expnd_i_3;

  wire [3:2]bus2ip_addr_i_reg;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(bus2ip_addr_i_reg[2]),
        .I1(bus2ip_addr_i_reg[3]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module uart_bmpg_0_axi_uart_pselect_f__parameterized1
   (bus2ip_addr_i_reg,
    ce_expnd_i_1);
  input [3:2]bus2ip_addr_i_reg;
  output ce_expnd_i_1;

  wire [3:2]bus2ip_addr_i_reg;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(bus2ip_addr_i_reg[3]),
        .I1(bus2ip_addr_i_reg[2]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module uart_bmpg_0_axi_uart_slave_attachment
   (FIFO_Full_reg,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \INFERRED_GEN.cnt_i_reg ,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    bus2ip_reset,
    enable_interrupts,
    enable_interrupts_reg,
    enable_interrupts_reg_0,
    fifo_wr,
    reset_RX_FIFO,
    reset_TX_FIFO,
    rx_Buffer_Full,
    rx_Data_Present_Pre_reg,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_wvalid,
    tx_Buffer_Empty_Pre_reg,
    tx_Buffer_Full,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    bus2ip_rdce,
    out,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_bresp,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_wdata,
    status_reg);
  output FIFO_Full_reg;
  output [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output [2:2]\INFERRED_GEN.cnt_i_reg ;
  output \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input bus2ip_reset;
  input enable_interrupts;
  output enable_interrupts_reg;
  output enable_interrupts_reg_0;
  output fifo_wr;
  output reset_RX_FIFO;
  output reset_TX_FIFO;
  input rx_Buffer_Full;
  output rx_Data_Present_Pre_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output s_axi_bvalid;
  input s_axi_rready;
  output s_axi_rvalid;
  input s_axi_wvalid;
  output tx_Buffer_Empty_Pre_reg;
  input tx_Buffer_Full;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  input [0:0]Q;
  output [0:0]bus2ip_rdce;
  input [7:0]out;
  input [1:0]s_axi_araddr;
  input [1:0]s_axi_awaddr;
  output [0:0]s_axi_bresp;
  output [7:0]s_axi_rdata;
  output [0:0]s_axi_rresp;
  input [2:0]s_axi_wdata;
  input [1:0]status_reg;

  wire FIFO_Full_reg;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [2:2]\INFERRED_GEN.cnt_i_reg ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  wire I_DECODER_n_26;
  wire I_DECODER_n_27;
  wire I_DECODER_n_28;
  wire I_DECODER_n_5;
  wire I_DECODER_n_6;
  wire [0:0]Q;
  wire [7:0]SIn_DBus;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_2_n_0 ;
  wire [3:2]bus2ip_addr_i_reg_n_0_;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset;
  wire bus2ip_rnw_i;
  wire bus2ip_rnw_i_i_1_n_0;
  wire enable_interrupts;
  wire enable_interrupts_reg;
  wire enable_interrupts_reg_0;
  wire fifo_wr;
  wire ip2bus_error;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_TX_FIFO;
  wire rst;
  wire rx_Buffer_Full;
  wire rx_Data_Present_Pre_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [2:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire [1:0]status_reg;
  wire tx_Buffer_Empty_Pre_reg;
  wire tx_Buffer_Full;

  uart_bmpg_0_axi_uart_address_decoder I_DECODER
       (.D({I_DECODER_n_5,I_DECODER_n_6}),
        .FIFO_Full_reg(FIFO_Full_reg),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\INFERRED_GEN.cnt_i_reg (\INFERRED_GEN.cnt_i_reg ),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .\INFERRED_GEN.cnt_i_reg[4] (Q),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (\INFERRED_GEN.cnt_i_reg[4] ),
        .Q(state),
        .bus2ip_addr_i_reg(bus2ip_addr_i_reg_n_0_),
        .bus2ip_rdce(bus2ip_rdce),
        .bus2ip_rnw_i(bus2ip_rnw_i),
        .enable_interrupts(enable_interrupts),
        .enable_interrupts_reg(enable_interrupts_reg),
        .enable_interrupts_reg_0(enable_interrupts_reg_0),
        .fifo_wr(fifo_wr),
        .ip2bus_error(ip2bus_error),
        .out(out),
        .reset_RX_FIFO(reset_RX_FIFO),
        .reset_TX_FIFO(reset_TX_FIFO),
        .rx_Buffer_Full(rx_Buffer_Full),
        .rx_Data_Present_Pre_reg(rx_Data_Present_Pre_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bresp_i_reg(I_DECODER_n_28),
        .s_axi_bvalid_i_reg(I_DECODER_n_27),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid),
        .\s_axi_rdata_i_reg[7] ({SIn_DBus[0],SIn_DBus[1],SIn_DBus[2],SIn_DBus[3],SIn_DBus[4],SIn_DBus[5],SIn_DBus[6],SIn_DBus[7]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(I_DECODER_n_26),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wvalid(\state[1]_i_3_n_0 ),
        .start2(start2),
        .state_reg({\state[1]_i_2_n_0 ,\state[0]_i_2_n_0 }),
        .status_reg(status_reg),
        .tx_Buffer_Empty_Pre_reg(tx_Buffer_Empty_Pre_reg),
        .tx_Buffer_Full(tx_Buffer_Full));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(\bus2ip_addr_i[3]_i_2_n_0 ),
        .I2(s_axi_araddr[0]),
        .I3(start2_i_1_n_0),
        .I4(bus2ip_addr_i_reg_n_0_[2]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(\bus2ip_addr_i[3]_i_2_n_0 ),
        .I2(s_axi_araddr[1]),
        .I3(start2_i_1_n_0),
        .I4(bus2ip_addr_i_reg_n_0_[3]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \bus2ip_addr_i[3]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(bus2ip_addr_i_reg_n_0_[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(bus2ip_addr_i_reg_n_0_[3]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFF7000000F0)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[0]),
        .I4(state[1]),
        .I5(bus2ip_rnw_i),
        .O(bus2ip_rnw_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rnw_i_i_1_n_0),
        .Q(bus2ip_rnw_i),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset),
        .Q(rst),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_28),
        .Q(s_axi_bresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_27),
        .Q(s_axi_bvalid),
        .R(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[7]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[6]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[5]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[4]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[3]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[2]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[1]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(SIn_DBus[0]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_26),
        .Q(s_axi_rvalid),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[0]),
        .I4(state[1]),
        .O(start2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \state[0]_i_2 
       (.I0(state[0]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(\state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \state[1]_i_2 
       (.I0(state[1]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid),
        .O(\state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_6),
        .Q(state[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_DECODER_n_5),
        .Q(state[1]),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module uart_bmpg_0_axi_uart_srl_fifo_f
   (Bus_RNW_reg,
    \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    fifo_Read,
    fifo_wr,
    mux_Out,
    mux_sel_reg,
    p_4_in,
    reset_TX_FIFO_reg,
    s_axi_aclk,
    s_axi_aresetn,
    tx_Buffer_Full,
    tx_DataBits,
    tx_Data_Enable_reg,
    tx_Start,
    tx_Start0,
    Q,
    s_axi_wdata);
  input Bus_RNW_reg;
  input \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input fifo_Read;
  input fifo_wr;
  output mux_Out;
  input [2:0]mux_sel_reg;
  input p_4_in;
  input reset_TX_FIFO_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  output tx_Buffer_Full;
  input tx_DataBits;
  input tx_Data_Enable_reg;
  input tx_Start;
  output tx_Start0;
  output [0:0]Q;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [0:0]Q;
  wire fifo_Read;
  wire fifo_wr;
  wire mux_Out;
  wire [2:0]mux_sel_reg;
  wire p_4_in;
  wire reset_TX_FIFO_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire tx_Buffer_Full;
  wire tx_DataBits;
  wire tx_Data_Enable_reg;
  wire tx_Start;
  wire tx_Start0;
  wire [1:1]NLW_I_SRL_FIFO_RBU_F_mux_sel_reg_UNCONNECTED;

  uart_bmpg_0_axi_uart_srl_fifo_rbu_f I_SRL_FIFO_RBU_F
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Q(Q),
        .fifo_Read(fifo_Read),
        .fifo_wr(fifo_wr),
        .mux_Out(mux_Out),
        .mux_sel_reg(mux_sel_reg),
        .p_4_in(p_4_in),
        .reset_TX_FIFO_reg(reset_TX_FIFO_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .tx_Buffer_Full(tx_Buffer_Full),
        .tx_DataBits(tx_DataBits),
        .tx_Data_Enable_reg(tx_Data_Enable_reg),
        .tx_Start(tx_Start),
        .tx_Start0(tx_Start0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_f" *) 
module uart_bmpg_0_axi_uart_srl_fifo_f_0
   (Bus_RNW_reg,
    Bus_RNW_reg_reg,
    \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Interrupt0,
    clr_Status,
    enable_interrupts,
    fifo_Write,
    reset_RX_FIFO_reg,
    rx_Data_Present_Pre,
    s_axi_aclk,
    s_axi_aresetn,
    status_reg_reg,
    \status_reg_reg[2]_0 ,
    tx_Buffer_Empty_Pre,
    valid_rx,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    in,
    out,
    status_reg);
  input Bus_RNW_reg;
  input Bus_RNW_reg_reg;
  input \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Interrupt0;
  input clr_Status;
  input enable_interrupts;
  input fifo_Write;
  input reset_RX_FIFO_reg;
  input rx_Data_Present_Pre;
  input s_axi_aclk;
  input s_axi_aresetn;
  output [2:2]status_reg_reg;
  output \status_reg_reg[2]_0 ;
  input tx_Buffer_Empty_Pre;
  input valid_rx;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  output [0:0]Q;
  input [0:7]in;
  output [7:0]out;
  input [0:0]status_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  wire Interrupt0;
  wire [0:0]Q;
  wire clr_Status;
  wire enable_interrupts;
  wire fifo_Write;
  wire [0:7]in;
  wire [7:0]out;
  wire reset_RX_FIFO_reg;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]status_reg;
  wire [2:2]status_reg_reg;
  wire \status_reg_reg[2]_0 ;
  wire tx_Buffer_Empty_Pre;
  wire valid_rx;

  uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1 I_SRL_FIFO_RBU_F
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .Interrupt0(Interrupt0),
        .Q(Q),
        .clr_Status(clr_Status),
        .enable_interrupts(enable_interrupts),
        .fifo_Write(fifo_Write),
        .in(in),
        .out(out),
        .reset_RX_FIFO_reg(reset_RX_FIFO_reg),
        .rx_Data_Present_Pre(rx_Data_Present_Pre),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .status_reg(status_reg),
        .status_reg_reg(status_reg_reg),
        .\status_reg_reg[2]_0 (\status_reg_reg[2]_0 ),
        .tx_Buffer_Empty_Pre(tx_Buffer_Empty_Pre),
        .valid_rx(valid_rx));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module uart_bmpg_0_axi_uart_srl_fifo_rbu_f
   (Bus_RNW_reg,
    \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    fifo_Read,
    fifo_wr,
    mux_Out,
    mux_sel_reg,
    p_4_in,
    reset_TX_FIFO_reg,
    s_axi_aclk,
    s_axi_aresetn,
    tx_Buffer_Full,
    tx_DataBits,
    tx_Data_Enable_reg,
    tx_Start,
    tx_Start0,
    Q,
    s_axi_wdata);
  input Bus_RNW_reg;
  input \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input fifo_Read;
  input fifo_wr;
  output mux_Out;
  input [2:0]mux_sel_reg;
  input p_4_in;
  input reset_TX_FIFO_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  output tx_Buffer_Full;
  input tx_DataBits;
  input tx_Data_Enable_reg;
  input tx_Start;
  output tx_Start0;
  output [0:0]Q;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [0:0]Q;
  wire TX_FIFO_Reset;
  wire fifo_Read;
  wire fifo_full_p1;
  wire fifo_wr;
  wire mux_Out;
  wire [2:0]mux_sel_reg;
  wire p_4_in;
  wire reset_TX_FIFO_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire tx_Buffer_Full;
  wire tx_DataBits;
  wire tx_Data_Enable_reg;
  wire tx_Start;
  wire tx_Start0;
  wire [1:1]NLW_DYNSHREG_F_I_mux_sel_reg_UNCONNECTED;

  uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .SS(TX_FIFO_Reset),
        .fifo_Read(fifo_Read),
        .fifo_full_p1(fifo_full_p1),
        .reset_TX_FIFO_reg(reset_TX_FIFO_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .tx_Buffer_Full(tx_Buffer_Full),
        .tx_DataBits(tx_DataBits),
        .tx_Data_Enable_reg(tx_Data_Enable_reg),
        .tx_Start(tx_Start),
        .tx_Start0(tx_Start0));
  uart_bmpg_0_axi_uart_dynshreg_f DYNSHREG_F_I
       (.Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .fifo_wr(fifo_wr),
        .mux_Out(mux_Out),
        .mux_sel_reg(mux_sel_reg),
        .p_4_in(p_4_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  FDRE #(
    .INIT(1'b0)) 
    FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(tx_Buffer_Full),
        .R(TX_FIFO_Reset));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1
   (Bus_RNW_reg,
    Bus_RNW_reg_reg,
    \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Interrupt0,
    clr_Status,
    enable_interrupts,
    fifo_Write,
    reset_RX_FIFO_reg,
    rx_Data_Present_Pre,
    s_axi_aclk,
    s_axi_aresetn,
    status_reg_reg,
    \status_reg_reg[2]_0 ,
    tx_Buffer_Empty_Pre,
    valid_rx,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    in,
    out,
    status_reg);
  input Bus_RNW_reg;
  input Bus_RNW_reg_reg;
  input \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Interrupt0;
  input clr_Status;
  input enable_interrupts;
  input fifo_Write;
  input reset_RX_FIFO_reg;
  input rx_Data_Present_Pre;
  input s_axi_aclk;
  input s_axi_aresetn;
  output [2:2]status_reg_reg;
  output \status_reg_reg[2]_0 ;
  input tx_Buffer_Empty_Pre;
  input valid_rx;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  output [0:0]Q;
  input [0:7]in;
  output [7:0]out;
  input [0:0]status_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire CNTR_INCR_DECR_ADDN_F_I_n_6;
  wire \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  wire Interrupt0;
  wire [0:0]Q;
  wire RX_FIFO_Reset;
  wire clr_Status;
  wire enable_interrupts;
  wire fifo_Write;
  wire fifo_full_p1;
  wire [0:7]in;
  wire [7:0]out;
  wire reset_RX_FIFO_reg;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [0:0]status_reg;
  wire [2:2]status_reg_reg;
  wire \status_reg_reg[2]_0 ;
  wire tx_Buffer_Empty_Pre;
  wire valid_rx;

  uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2 CNTR_INCR_DECR_ADDN_F_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .FIFO_Full_reg(status_reg_reg),
        .\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (\INFERRED_GEN.cnt_i_reg[4] ),
        .Interrupt0(Interrupt0),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5,CNTR_INCR_DECR_ADDN_F_I_n_6}),
        .SS(RX_FIFO_Reset),
        .enable_interrupts(enable_interrupts),
        .fifo_Write(fifo_Write),
        .fifo_full_p1(fifo_full_p1),
        .reset_RX_FIFO_reg(reset_RX_FIFO_reg),
        .rx_Data_Present_Pre(rx_Data_Present_Pre),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .tx_Buffer_Empty_Pre(tx_Buffer_Empty_Pre),
        .valid_rx(valid_rx));
  uart_bmpg_0_axi_uart_dynshreg_f_3 DYNSHREG_F_I
       (.FIFO_Full_reg(status_reg_reg),
        .Q({CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5,CNTR_INCR_DECR_ADDN_F_I_n_6}),
        .fifo_Write(fifo_Write),
        .in(in),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .valid_rx(valid_rx));
  FDRE #(
    .INIT(1'b0)) 
    FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(status_reg_reg),
        .R(RX_FIFO_Reset));
  LUT5 #(
    .INIT(32'h00EA0000)) 
    \status_reg[2]_i_1 
       (.I0(status_reg),
        .I1(fifo_Write),
        .I2(status_reg_reg),
        .I3(clr_Status),
        .I4(s_axi_aresetn),
        .O(\status_reg_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "uartlite_core" *) 
module uart_bmpg_0_axi_uart_uartlite_core
   (Bus_RNW_reg,
    Bus_RNW_reg_reg,
    \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ,
    \INFERRED_GEN.cnt_i_reg ,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    bus2ip_reset,
    enable_interrupts,
    fifo_wr,
    interrupt,
    reset_RX_FIFO,
    reset_TX_FIFO,
    rx,
    rx_Buffer_Full,
    s_axi_aclk,
    s_axi_aresetn,
    tx,
    tx_Buffer_Full,
    \INFERRED_GEN.cnt_i_reg[2] ,
    Q,
    bus2ip_rdce,
    out,
    s_axi_wdata,
    status_reg);
  input Bus_RNW_reg;
  input Bus_RNW_reg_reg;
  input \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [3:3]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  input [4:4]\INFERRED_GEN.cnt_i_reg ;
  input \INFERRED_GEN.cnt_i_reg[4]_0 ;
  output bus2ip_reset;
  output enable_interrupts;
  input fifo_wr;
  output interrupt;
  input reset_RX_FIFO;
  input reset_TX_FIFO;
  input rx;
  output rx_Buffer_Full;
  input s_axi_aclk;
  input s_axi_aresetn;
  output tx;
  output tx_Buffer_Full;
  output [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  output [0:0]Q;
  input [0:0]bus2ip_rdce;
  output [7:0]out;
  input [7:0]s_axi_wdata;
  output [1:0]status_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [3:3]\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire [4:4]\INFERRED_GEN.cnt_i_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  wire \INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire Interrupt0;
  wire [0:0]Q;
  wire UARTLITE_RX_I_n_4;
  wire [0:0]bus2ip_rdce;
  wire bus2ip_reset;
  wire clr_Status;
  wire en_16x_Baud;
  wire enable_interrupts;
  wire fifo_wr;
  wire interrupt;
  wire [7:0]out;
  wire reset_RX_FIFO;
  wire reset_RX_FIFO_reg_n_0;
  wire reset_TX_FIFO;
  wire reset_TX_FIFO_reg_n_0;
  wire rx;
  wire rx_Buffer_Full;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire [1:0]status_reg;
  wire status_reg_reg0;
  wire tx;
  wire tx_Buffer_Empty_Pre;
  wire tx_Buffer_Full;

  uart_bmpg_0_axi_uart_baudrate BAUD_RATE_I
       (.SR(bus2ip_reset),
        .en_16x_Baud(en_16x_Baud),
        .s_axi_aclk(s_axi_aclk));
  FDRE #(
    .INIT(1'b0)) 
    Interrupt_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Interrupt0),
        .Q(interrupt),
        .R(bus2ip_reset));
  uart_bmpg_0_axi_uart_uartlite_rx UARTLITE_RX_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[2] ),
        .Interrupt0(Interrupt0),
        .Q(Q),
        .SR(bus2ip_reset),
        .clr_Status(clr_Status),
        .en_16x_Baud(en_16x_Baud),
        .enable_interrupts(enable_interrupts),
        .out(out),
        .reset_RX_FIFO_reg(reset_RX_FIFO_reg_n_0),
        .rx(rx),
        .rx_Data_Present_Pre(rx_Data_Present_Pre),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .status_reg(status_reg),
        .status_reg_reg(rx_Buffer_Full),
        .status_reg_reg0(status_reg_reg0),
        .\status_reg_reg[2]_0 (UARTLITE_RX_I_n_4),
        .tx_Buffer_Empty_Pre(tx_Buffer_Empty_Pre));
  uart_bmpg_0_axi_uart_uartlite_tx UARTLITE_TX_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Q(\INFERRED_GEN.cnt_i_reg[2] ),
        .SR(bus2ip_reset),
        .en_16x_Baud(en_16x_Baud),
        .fifo_wr(fifo_wr),
        .reset_TX_FIFO_reg(reset_TX_FIFO_reg_n_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .tx(tx),
        .tx_Buffer_Full(tx_Buffer_Full));
  FDRE #(
    .INIT(1'b0)) 
    clr_Status_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce),
        .Q(clr_Status),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    enable_interrupts_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .Q(enable_interrupts),
        .R(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    reset_RX_FIFO_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_RX_FIFO),
        .Q(reset_RX_FIFO_reg_n_0),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    reset_TX_FIFO_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(reset_TX_FIFO),
        .Q(reset_TX_FIFO_reg_n_0),
        .S(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    rx_Data_Present_Pre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .Q(rx_Data_Present_Pre),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(status_reg_reg0),
        .Q(status_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(UARTLITE_RX_I_n_4),
        .Q(status_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_Buffer_Empty_Pre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INFERRED_GEN.cnt_i_reg ),
        .Q(tx_Buffer_Empty_Pre),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uartlite_rx" *) 
module uart_bmpg_0_axi_uart_uartlite_rx
   (Bus_RNW_reg,
    Bus_RNW_reg_reg,
    \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ,
    Interrupt0,
    clr_Status,
    en_16x_Baud,
    enable_interrupts,
    reset_RX_FIFO_reg,
    rx,
    rx_Data_Present_Pre,
    s_axi_aclk,
    s_axi_aresetn,
    status_reg_reg0,
    status_reg_reg,
    \status_reg_reg[2]_0 ,
    tx_Buffer_Empty_Pre,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    SR,
    out,
    status_reg);
  input Bus_RNW_reg;
  input Bus_RNW_reg_reg;
  input \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  input [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  output Interrupt0;
  input clr_Status;
  input en_16x_Baud;
  input enable_interrupts;
  input reset_RX_FIFO_reg;
  input rx;
  input rx_Data_Present_Pre;
  input s_axi_aclk;
  input s_axi_aresetn;
  output status_reg_reg0;
  output [2:2]status_reg_reg;
  output \status_reg_reg[2]_0 ;
  input tx_Buffer_Empty_Pre;
  input [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  output [0:0]Q;
  output [0:0]SR;
  output [7:0]out;
  input [1:0]status_reg;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire DELAY_16_I_n_1;
  wire DELAY_16_I_n_10;
  wire DELAY_16_I_n_11;
  wire DELAY_16_I_n_12;
  wire \^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[4] ;
  wire Interrupt0;
  wire [0:0]Q;
  wire RX_D2;
  wire [0:0]SR;
  wire clr_Status;
  wire en_16x_Baud;
  wire enable_interrupts;
  wire fifo_Write;
  wire fifo_Write0;
  wire [8:1]fifo_din;
  wire frame_err_ocrd;
  wire [7:0]out;
  wire p_11_out;
  wire p_14_out;
  wire p_17_out;
  wire p_20_out;
  wire p_26_out;
  wire p_2_out;
  wire p_5_out;
  wire p_8_out;
  wire reset_RX_FIFO_reg;
  wire running_reg_n_0;
  wire rx;
  wire rx_1;
  wire rx_2;
  wire rx_3;
  wire rx_4;
  wire rx_5;
  wire rx_6;
  wire rx_7;
  wire rx_8;
  wire rx_9;
  wire rx_Data_Present_Pre;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire start_Edge_Detected;
  wire start_Edge_Detected0;
  wire start_Edge_Detected_i_2_n_0;
  wire [1:0]status_reg;
  wire [2:2]status_reg_reg;
  wire status_reg_reg0;
  wire \status_reg_reg[2]_0 ;
  wire stop_Bit_Position_reg_n_0;
  wire tx_Buffer_Empty_Pre;
  wire valid_rx;
  wire valid_rx_i_1_n_0;

  uart_bmpg_0_axi_uart_dynshreg_i_f DELAY_16_I
       (.\SERIAL_TO_PARALLEL[2].fifo_din_reg (DELAY_16_I_n_1),
        .clr_Status(clr_Status),
        .en_16x_Baud(en_16x_Baud),
        .fifo_Write0(fifo_Write0),
        .frame_err_ocrd(frame_err_ocrd),
        .frame_err_ocrd_reg(DELAY_16_I_n_11),
        .in({fifo_din[1],fifo_din[2],fifo_din[3],fifo_din[4],fifo_din[5],fifo_din[6],fifo_din[7],fifo_din[8]}),
        .p_11_out(p_11_out),
        .p_14_out(p_14_out),
        .p_17_out(p_17_out),
        .p_20_out(p_20_out),
        .p_2_out(p_2_out),
        .p_5_out(p_5_out),
        .p_8_out(p_8_out),
        .running_reg(DELAY_16_I_n_12),
        .running_reg_0(running_reg_n_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .scndry_out(RX_D2),
        .start_Edge_Detected(start_Edge_Detected),
        .status_reg(status_reg[1]),
        .status_reg_reg0(status_reg_reg0),
        .stop_Bit_Position_reg(DELAY_16_I_n_10),
        .stop_Bit_Position_reg_0(stop_Bit_Position_reg_n_0),
        .valid_rx(valid_rx));
  uart_bmpg_0_axi_uart_cdc_sync INPUT_DOUBLE_REGS3
       (.EN_16x_Baud_reg(DELAY_16_I_n_1),
        .in(fifo_din[1]),
        .p_26_out(p_26_out),
        .rx(rx),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .scndry_out(RX_D2),
        .start_Edge_Detected(start_Edge_Detected));
  LUT1 #(
    .INIT(2'h1)) 
    Interrupt_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[1].fifo_din_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_26_out),
        .Q(fifo_din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[2].fifo_din_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_20_out),
        .Q(fifo_din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[3].fifo_din_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_17_out),
        .Q(fifo_din[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[4].fifo_din_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_14_out),
        .Q(fifo_din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[5].fifo_din_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_11_out),
        .Q(fifo_din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[6].fifo_din_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_out),
        .Q(fifo_din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[7].fifo_din_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(fifo_din[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SERIAL_TO_PARALLEL[8].fifo_din_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_2_out),
        .Q(fifo_din[8]),
        .R(1'b0));
  uart_bmpg_0_axi_uart_srl_fifo_f_0 SRL_FIFO_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .Interrupt0(Interrupt0),
        .Q(Q),
        .clr_Status(clr_Status),
        .enable_interrupts(enable_interrupts),
        .fifo_Write(fifo_Write),
        .in({fifo_din[1],fifo_din[2],fifo_din[3],fifo_din[4],fifo_din[5],fifo_din[6],fifo_din[7],fifo_din[8]}),
        .out(out),
        .reset_RX_FIFO_reg(reset_RX_FIFO_reg),
        .rx_Data_Present_Pre(rx_Data_Present_Pre),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .status_reg(status_reg[0]),
        .status_reg_reg(status_reg_reg),
        .\status_reg_reg[2]_0 (\status_reg_reg[2]_0 ),
        .tx_Buffer_Empty_Pre(tx_Buffer_Empty_Pre),
        .valid_rx(valid_rx));
  FDRE #(
    .INIT(1'b0)) 
    fifo_Write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_Write0),
        .Q(fifo_Write),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    frame_err_ocrd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(DELAY_16_I_n_11),
        .Q(frame_err_ocrd),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    running_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(DELAY_16_I_n_12),
        .Q(running_reg_n_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_1_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(RX_D2),
        .Q(rx_1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_2_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_1),
        .Q(rx_2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_3_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_2),
        .Q(rx_3),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_4_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_3),
        .Q(rx_4),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_5_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_4),
        .Q(rx_5),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_6_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_5),
        .Q(rx_6),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_7_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_6),
        .Q(rx_7),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_8_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_7),
        .Q(rx_8),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rx_9_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(rx_8),
        .Q(rx_9),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    start_Edge_Detected_i_1
       (.I0(rx_8),
        .I1(rx_2),
        .I2(start_Edge_Detected_i_2_n_0),
        .I3(rx_3),
        .I4(rx_1),
        .I5(frame_err_ocrd),
        .O(start_Edge_Detected0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    start_Edge_Detected_i_2
       (.I0(rx_5),
        .I1(rx_7),
        .I2(rx_9),
        .I3(running_reg_n_0),
        .I4(rx_6),
        .I5(rx_4),
        .O(start_Edge_Detected_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_Edge_Detected_reg
       (.C(s_axi_aclk),
        .CE(en_16x_Baud),
        .D(start_Edge_Detected0),
        .Q(start_Edge_Detected),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    stop_Bit_Position_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(DELAY_16_I_n_10),
        .Q(stop_Bit_Position_reg_n_0),
        .R(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    valid_rx_i_1
       (.I0(start_Edge_Detected),
        .I1(fifo_Write),
        .I2(valid_rx),
        .O(valid_rx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    valid_rx_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(valid_rx_i_1_n_0),
        .Q(valid_rx),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "uartlite_tx" *) 
module uart_bmpg_0_axi_uart_uartlite_tx
   (Bus_RNW_reg,
    \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ,
    en_16x_Baud,
    fifo_wr,
    reset_TX_FIFO_reg,
    s_axi_aclk,
    s_axi_aresetn,
    tx,
    tx_Buffer_Full,
    Q,
    SR,
    s_axi_wdata);
  input Bus_RNW_reg;
  input \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  input en_16x_Baud;
  input fifo_wr;
  input reset_TX_FIFO_reg;
  input s_axi_aclk;
  input s_axi_aresetn;
  output tx;
  output tx_Buffer_Full;
  output [0:0]Q;
  input [0:0]SR;
  input [7:0]s_axi_wdata;

  wire Bus_RNW_reg;
  wire \^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire [1:1]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire MID_START_BIT_SRL16_I_n_0;
  wire [0:0]Q;
  wire [0:0]SR;
  wire TX0;
  wire en_16x_Baud;
  wire fifo_Read;
  wire fifo_Read0;
  wire fifo_wr;
  wire mux_Out;
  wire \mux_sel[0]_i_1_n_0 ;
  wire \mux_sel[1]_i_1_n_0 ;
  wire \mux_sel[2]_i_1_n_0 ;
  wire [2:0]mux_sel_reg_n_0_;
  wire p_4_in;
  wire reset_TX_FIFO_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [7:0]s_axi_wdata;
  wire serial_Data;
  wire tx;
  wire tx_Buffer_Full;
  wire tx_DataBits;
  wire tx_DataBits0;
  wire tx_Data_Enable_reg_n_0;
  wire tx_Start;
  wire tx_Start0;
  wire [1:1]NLW_SRL_FIFO_I_mux_sel_reg_UNCONNECTED;

  uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0 MID_START_BIT_SRL16_I
       (.en_16x_Baud(en_16x_Baud),
        .s_axi_aclk(s_axi_aclk),
        .tx_Data_Enable_reg(MID_START_BIT_SRL16_I_n_0),
        .tx_Data_Enable_reg_0(tx_Data_Enable_reg_n_0));
  uart_bmpg_0_axi_uart_srl_fifo_f SRL_FIFO_I
       (.Bus_RNW_reg(Bus_RNW_reg),
        .\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\^GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .Q(Q),
        .fifo_Read(fifo_Read),
        .fifo_wr(fifo_wr),
        .mux_Out(mux_Out),
        .mux_sel_reg(mux_sel_reg_n_0_),
        .p_4_in(p_4_in),
        .reset_TX_FIFO_reg(reset_TX_FIFO_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .tx_Buffer_Full(tx_Buffer_Full),
        .tx_DataBits(tx_DataBits),
        .tx_Data_Enable_reg(tx_Data_Enable_reg_n_0),
        .tx_Start(tx_Start),
        .tx_Start0(tx_Start0));
  LUT3 #(
    .INIT(8'h31)) 
    TX_i_1
       (.I0(tx_DataBits),
        .I1(tx_Start),
        .I2(serial_Data),
        .O(TX0));
  FDSE #(
    .INIT(1'b1)) 
    TX_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(TX0),
        .Q(tx),
        .S(SR));
  LUT4 #(
    .INIT(16'h0100)) 
    fifo_Read_i_1
       (.I0(mux_sel_reg_n_0_[0]),
        .I1(mux_sel_reg_n_0_[2]),
        .I2(p_4_in),
        .I3(tx_Data_Enable_reg_n_0),
        .O(fifo_Read0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_Read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_Read0),
        .Q(fifo_Read),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE1F0F1F0)) 
    \mux_sel[0]_i_1 
       (.I0(p_4_in),
        .I1(mux_sel_reg_n_0_[2]),
        .I2(mux_sel_reg_n_0_[0]),
        .I3(tx_Data_Enable_reg_n_0),
        .I4(tx_DataBits),
        .O(\mux_sel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h99AAABAA)) 
    \mux_sel[1]_i_1 
       (.I0(p_4_in),
        .I1(mux_sel_reg_n_0_[2]),
        .I2(mux_sel_reg_n_0_[0]),
        .I3(tx_Data_Enable_reg_n_0),
        .I4(tx_DataBits),
        .O(\mux_sel[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7777888C)) 
    \mux_sel[2]_i_1 
       (.I0(tx_DataBits),
        .I1(tx_Data_Enable_reg_n_0),
        .I2(mux_sel_reg_n_0_[0]),
        .I3(p_4_in),
        .I4(mux_sel_reg_n_0_[2]),
        .O(\mux_sel[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \mux_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mux_sel[0]_i_1_n_0 ),
        .Q(mux_sel_reg_n_0_[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \mux_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mux_sel[1]_i_1_n_0 ),
        .Q(p_4_in),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \mux_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\mux_sel[2]_i_1_n_0 ),
        .Q(mux_sel_reg_n_0_[2]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    serial_Data_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(mux_Out),
        .Q(serial_Data),
        .R(SR));
  LUT4 #(
    .INIT(16'h0F08)) 
    tx_DataBits_i_1
       (.I0(tx_Start),
        .I1(tx_Data_Enable_reg_n_0),
        .I2(fifo_Read),
        .I3(tx_DataBits),
        .O(tx_DataBits0));
  FDRE #(
    .INIT(1'b0)) 
    tx_DataBits_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_DataBits0),
        .Q(tx_DataBits),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_Data_Enable_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(MID_START_BIT_SRL16_I_n_0),
        .Q(tx_Data_Enable_reg_n_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_Start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_Start0),
        .Q(tx_Start),
        .R(SR));
endmodule

(* ADDR_WIDTH = "15" *) (* BYTE_NUM = "4" *) (* DATA_WIDTH = "32" *) 
(* JUDGE_RRDY = "2" *) (* JUDGE_WRDY = "2" *) (* MSG_LEN = "38" *) 
(* ORIG_REF_NAME = "uart_bmpg" *) (* RDATA = "3" *) (* RDATA_VALID = "1" *) 
(* RDELAY = "4" *) (* RIDLE = "0" *) (* WAIT_NUM = "765" *) 
(* WDATA = "3" *) (* WDATA_VALID = "1" *) (* WDELAY = "4" *) 
(* WIDLE = "0" *) 
module uart_bmpg_0_uart_bmpg
   (upg_clk_i,
    upg_clk_o,
    upg_done_o,
    upg_rst_i,
    upg_rx_i,
    upg_tx_o,
    upg_wen_o,
    upg_adr_o,
    upg_dat_o);
  input upg_clk_i;
  output upg_clk_o;
  output upg_done_o;
  input upg_rst_i;
  input upg_rx_i;
  output upg_tx_o;
  output upg_wen_o;
  output [14:0]upg_adr_o;
  output [31:0]upg_dat_o;

  wire \RCS[0]_i_1_n_0 ;
  wire \RCS[1]_i_1_n_0 ;
  wire \RCS[2]_i_1_n_0 ;
  wire [2:0]RCS_reg_n_0_;
  wire \WCS[0]_i_1_n_0 ;
  wire \WCS[0]_i_2_n_0 ;
  wire \WCS[1]_i_1_n_0 ;
  wire \WCS[2]_i_1_n_0 ;
  wire \WCS[2]_i_2_n_0 ;
  wire \WCS[2]_i_3_n_0 ;
  wire \WCS[2]_i_4_n_0 ;
  wire \WCS[2]_i_5_n_0 ;
  wire [2:0]WCS_reg_n_0_;
  wire [62:0]bn_ascii_reg_n_0_;
  wire byte_cnt;
  wire \byte_cnt_reg[12]_i_1_n_0 ;
  wire \byte_cnt_reg[12]_i_1_n_1 ;
  wire \byte_cnt_reg[12]_i_1_n_2 ;
  wire \byte_cnt_reg[12]_i_1_n_3 ;
  wire \byte_cnt_reg[16]_i_1_n_0 ;
  wire \byte_cnt_reg[16]_i_1_n_1 ;
  wire \byte_cnt_reg[16]_i_1_n_2 ;
  wire \byte_cnt_reg[16]_i_1_n_3 ;
  wire \byte_cnt_reg[20]_i_1_n_0 ;
  wire \byte_cnt_reg[20]_i_1_n_1 ;
  wire \byte_cnt_reg[20]_i_1_n_2 ;
  wire \byte_cnt_reg[20]_i_1_n_3 ;
  wire \byte_cnt_reg[24]_i_1_n_0 ;
  wire \byte_cnt_reg[24]_i_1_n_1 ;
  wire \byte_cnt_reg[24]_i_1_n_2 ;
  wire \byte_cnt_reg[24]_i_1_n_3 ;
  wire \byte_cnt_reg[28]_i_1_n_0 ;
  wire \byte_cnt_reg[28]_i_1_n_1 ;
  wire \byte_cnt_reg[28]_i_1_n_2 ;
  wire \byte_cnt_reg[28]_i_1_n_3 ;
  wire \byte_cnt_reg[31]_i_2_n_2 ;
  wire \byte_cnt_reg[31]_i_2_n_3 ;
  wire \byte_cnt_reg[4]_i_1_n_0 ;
  wire \byte_cnt_reg[4]_i_1_n_1 ;
  wire \byte_cnt_reg[4]_i_1_n_2 ;
  wire \byte_cnt_reg[4]_i_1_n_3 ;
  wire \byte_cnt_reg[8]_i_1_n_0 ;
  wire \byte_cnt_reg[8]_i_1_n_1 ;
  wire \byte_cnt_reg[8]_i_1_n_2 ;
  wire \byte_cnt_reg[8]_i_1_n_3 ;
  wire [31:0]byte_cnt_reg_n_0_;
  wire \byte_len[7]_i_1_n_0 ;
  wire [7:0]byte_len_reg_n_0_;
  wire byte_num;
  wire [31:24]byte_num_reg_n_0_;
  wire [6:0]data2;
  wire [6:0]data3;
  wire [6:0]data4;
  wire [6:0]data5;
  wire [6:0]data6;
  wire [23:0]dbuf;
  wire disp1;
  wire \disp[0]_i_1_n_0 ;
  wire \disp[1]_i_1_n_0 ;
  wire \disp[1]_i_2_n_0 ;
  wire \disp[1]_i_3_n_0 ;
  wire \disp[2]_i_1_n_0 ;
  wire \disp[2]_i_2_n_0 ;
  wire \disp[3]_i_1_n_0 ;
  wire \disp[3]_i_2_n_0 ;
  wire \disp[4]_i_1_n_0 ;
  wire \disp[5]_i_1_n_0 ;
  wire \disp[5]_i_2_n_0 ;
  wire \disp[5]_i_3_n_0 ;
  wire \disp[6]_i_1_n_0 ;
  wire \disp[6]_i_2_n_0 ;
  wire \disp[6]_i_3_n_0 ;
  wire \disp[7]_i_1_n_0 ;
  wire \disp[7]_i_2_n_0 ;
  wire \disp[7]_i_3_n_0 ;
  wire \disp[7]_i_4_n_0 ;
  wire [7:0]disp_reg_n_0_;
  wire [31:8]hex0;
  wire [54:0]hex2ascii_return;
  wire [6:0]hex2ascii_return0;
  wire initFlag;
  wire initFlag_i_1_n_0;
  wire \len_cnt[0]_i_1_n_0 ;
  wire \len_cnt[1]_i_1_n_0 ;
  wire \len_cnt[2]_i_1_n_0 ;
  wire \len_cnt[3]_i_1_n_0 ;
  wire [3:0]len_cnt_reg__0;
  wire \msg_indx[7]_i_1_n_0 ;
  wire \msg_indx[7]_i_3_n_0 ;
  wire [5:0]msg_indx_reg__0;
  wire [7:6]msg_indx_reg__1;
  wire oldInitF_i_1_n_0;
  wire oldInitF_reg_n_0;
  wire [14:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire rdStat;
  wire rdStat_BUFG;
  wire rdStat_i_1_n_0;
  wire recv_done0;
  wire [31:0]recv_done1;
  wire recv_done_i_10_n_0;
  wire recv_done_i_11_n_0;
  wire recv_done_i_13_n_0;
  wire recv_done_i_14_n_0;
  wire recv_done_i_15_n_0;
  wire recv_done_i_16_n_0;
  wire recv_done_i_17_n_0;
  wire recv_done_i_18_n_0;
  wire recv_done_i_19_n_0;
  wire recv_done_i_1_n_0;
  wire recv_done_i_20_n_0;
  wire recv_done_i_22_n_0;
  wire recv_done_i_23_n_0;
  wire recv_done_i_24_n_0;
  wire recv_done_i_25_n_0;
  wire recv_done_i_26_n_0;
  wire recv_done_i_27_n_0;
  wire recv_done_i_28_n_0;
  wire recv_done_i_29_n_0;
  wire recv_done_i_30_n_0;
  wire recv_done_i_31_n_0;
  wire recv_done_i_32_n_0;
  wire recv_done_i_33_n_0;
  wire recv_done_i_34_n_0;
  wire recv_done_i_35_n_0;
  wire recv_done_i_36_n_0;
  wire recv_done_i_37_n_0;
  wire recv_done_i_4_n_0;
  wire recv_done_i_5_n_0;
  wire recv_done_i_6_n_0;
  wire recv_done_i_7_n_0;
  wire recv_done_i_8_n_0;
  wire recv_done_i_9_n_0;
  wire recv_done_reg_i_12_n_0;
  wire recv_done_reg_i_12_n_1;
  wire recv_done_reg_i_12_n_2;
  wire recv_done_reg_i_12_n_3;
  wire recv_done_reg_i_21_n_0;
  wire recv_done_reg_i_21_n_1;
  wire recv_done_reg_i_21_n_2;
  wire recv_done_reg_i_21_n_3;
  wire recv_done_reg_i_2_n_1;
  wire recv_done_reg_i_2_n_2;
  wire recv_done_reg_i_2_n_3;
  wire recv_done_reg_i_3_n_0;
  wire recv_done_reg_i_3_n_1;
  wire recv_done_reg_i_3_n_2;
  wire recv_done_reg_i_3_n_3;
  wire recv_done_reg_n_0;
  wire [15:0]rwait_cnt;
  wire \rwait_cnt[15]_i_1_n_0 ;
  wire \rwait_cnt[15]_i_4_n_0 ;
  wire \rwait_cnt[15]_i_5_n_0 ;
  wire \rwait_cnt[15]_i_6_n_0 ;
  wire \rwait_cnt[15]_i_7_n_0 ;
  wire \rwait_cnt_reg[12]_i_2_n_0 ;
  wire \rwait_cnt_reg[12]_i_2_n_1 ;
  wire \rwait_cnt_reg[12]_i_2_n_2 ;
  wire \rwait_cnt_reg[12]_i_2_n_3 ;
  wire \rwait_cnt_reg[12]_i_2_n_4 ;
  wire \rwait_cnt_reg[12]_i_2_n_5 ;
  wire \rwait_cnt_reg[12]_i_2_n_6 ;
  wire \rwait_cnt_reg[12]_i_2_n_7 ;
  wire \rwait_cnt_reg[15]_i_3_n_2 ;
  wire \rwait_cnt_reg[15]_i_3_n_3 ;
  wire \rwait_cnt_reg[15]_i_3_n_5 ;
  wire \rwait_cnt_reg[15]_i_3_n_6 ;
  wire \rwait_cnt_reg[15]_i_3_n_7 ;
  wire \rwait_cnt_reg[4]_i_2_n_0 ;
  wire \rwait_cnt_reg[4]_i_2_n_1 ;
  wire \rwait_cnt_reg[4]_i_2_n_2 ;
  wire \rwait_cnt_reg[4]_i_2_n_3 ;
  wire \rwait_cnt_reg[4]_i_2_n_4 ;
  wire \rwait_cnt_reg[4]_i_2_n_5 ;
  wire \rwait_cnt_reg[4]_i_2_n_6 ;
  wire \rwait_cnt_reg[4]_i_2_n_7 ;
  wire \rwait_cnt_reg[8]_i_2_n_0 ;
  wire \rwait_cnt_reg[8]_i_2_n_1 ;
  wire \rwait_cnt_reg[8]_i_2_n_2 ;
  wire \rwait_cnt_reg[8]_i_2_n_3 ;
  wire \rwait_cnt_reg[8]_i_2_n_4 ;
  wire \rwait_cnt_reg[8]_i_2_n_5 ;
  wire \rwait_cnt_reg[8]_i_2_n_6 ;
  wire \rwait_cnt_reg[8]_i_2_n_7 ;
  wire [15:0]rwait_cnt_reg_n_0_;
  wire rx_done;
  wire rx_done_i_1_n_0;
  wire rx_done_reg_n_0;
  wire \s_axi_araddr[3]_i_1_n_0 ;
  wire [3:3]s_axi_araddr_reg_n_0_;
  wire s_axi_aresetn0;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_i_1_n_0;
  wire s_axi_arvalid_i_2_n_0;
  wire s_axi_arvalid_i_3_n_0;
  wire \s_axi_awaddr[3]_i_1_n_0 ;
  wire [3:3]s_axi_awaddr_reg_n_0_;
  wire s_axi_awready;
  wire s_axi_awvalid_i_1_n_0;
  wire s_axi_awvalid_i_2_n_0;
  wire [7:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire s_axi_wdata;
  wire \s_axi_wdata[0]_i_1_n_0 ;
  wire \s_axi_wdata[0]_i_2_n_0 ;
  wire \s_axi_wdata[0]_i_3_n_0 ;
  wire \s_axi_wdata[0]_i_4_n_0 ;
  wire \s_axi_wdata[0]_i_5_n_0 ;
  wire \s_axi_wdata[1]_i_1_n_0 ;
  wire \s_axi_wdata[1]_i_2_n_0 ;
  wire \s_axi_wdata[1]_i_3_n_0 ;
  wire \s_axi_wdata[1]_i_4_n_0 ;
  wire \s_axi_wdata[1]_i_5_n_0 ;
  wire \s_axi_wdata[1]_i_6_n_0 ;
  wire \s_axi_wdata[2]_i_1_n_0 ;
  wire \s_axi_wdata[2]_i_2_n_0 ;
  wire \s_axi_wdata[2]_i_3_n_0 ;
  wire \s_axi_wdata[2]_i_4_n_0 ;
  wire \s_axi_wdata[2]_i_5_n_0 ;
  wire \s_axi_wdata[3]_i_1_n_0 ;
  wire \s_axi_wdata[3]_i_2_n_0 ;
  wire \s_axi_wdata[3]_i_3_n_0 ;
  wire \s_axi_wdata[3]_i_4_n_0 ;
  wire \s_axi_wdata[3]_i_5_n_0 ;
  wire \s_axi_wdata[4]_i_2_n_0 ;
  wire \s_axi_wdata[4]_i_4_n_0 ;
  wire \s_axi_wdata[4]_i_5_n_0 ;
  wire \s_axi_wdata[4]_i_6_n_0 ;
  wire \s_axi_wdata[4]_i_7_n_0 ;
  wire \s_axi_wdata[4]_i_8_n_0 ;
  wire \s_axi_wdata[5]_i_1_n_0 ;
  wire \s_axi_wdata[5]_i_2_n_0 ;
  wire \s_axi_wdata[5]_i_3_n_0 ;
  wire \s_axi_wdata[5]_i_4_n_0 ;
  wire \s_axi_wdata[5]_i_5_n_0 ;
  wire \s_axi_wdata[5]_i_6_n_0 ;
  wire \s_axi_wdata[6]_i_1_n_0 ;
  wire \s_axi_wdata[6]_i_2_n_0 ;
  wire \s_axi_wdata[6]_i_3_n_0 ;
  wire \s_axi_wdata[6]_i_4_n_0 ;
  wire \s_axi_wdata[6]_i_5_n_0 ;
  wire \s_axi_wdata[6]_i_6_n_0 ;
  wire \s_axi_wdata[6]_i_7_n_0 ;
  wire [6:0]s_axi_wdata_reg_n_0_;
  wire s_axi_wready;
  wire [3:3]s_axi_wstrb;
  wire \s_axi_wstrb[3]_i_1_n_0 ;
  wire s_axi_wvalid;
  wire \statReg[0]_i_1_n_0 ;
  wire \statReg[0]_i_2_n_0 ;
  wire [0:0]statReg_reg_n_0_;
  wire uart_rdat;
  wire [7:0]uart_rdat_reg_n_0_;
  wire uart_wen5_out;
  wire uart_wen_i_1_n_0;
  wire uart_wen_reg_n_0;
  wire [14:0]upg_adr_o;
  wire \upg_adr_o[14]_i_1_n_0 ;
  wire [14:0]upg_adr_o_OBUF;
  wire upg_clk_i;
  wire upg_clk_i_IBUF;
  wire upg_clk_i_IBUF_BUFG;
  wire upg_clk_o;
  wire upg_clk_o_OBUF;
  wire upg_clk_o_OBUF_inst_i_2_n_0;
  wire [31:0]upg_dat_o;
  wire [31:0]upg_dat_o_OBUF;
  wire upg_done_o;
  wire upg_done_o_OBUF;
  wire upg_done_o_i_1_n_0;
  wire upg_done_o_i_2_n_0;
  wire upg_done_o_i_3_n_0;
  wire upg_rst_i;
  wire upg_rst_i_IBUF;
  wire upg_rx_i;
  wire upg_rx_i_IBUF;
  wire upg_tx_o;
  wire upg_tx_o_OBUF;
  wire upg_wen_o;
  wire upg_wen_o2_out;
  wire upg_wen_o_OBUF;
  wire upg_wen_o_i_2_n_0;
  wire upg_wen_o_i_4_n_0;
  wire upg_wen_o_i_5_n_0;
  wire upg_wen_o_i_6_n_0;
  wire wr_byte_len_done0;
  wire wr_byte_len_done_i_2_n_0;
  wire wr_byte_len_done_reg_n_0;
  wire wr_byte_num_done;
  wire wr_byte_num_done0;
  wire wr_byte_num_done_i_2_n_0;
  wire wr_byte_num_done_i_3_n_0;
  wire wr_byte_num_done_reg_n_0;
  wire [15:0]wwait_cnt;
  wire \wwait_cnt[15]_i_1_n_0 ;
  wire \wwait_cnt[15]_i_4_n_0 ;
  wire \wwait_cnt[15]_i_5_n_0 ;
  wire \wwait_cnt[15]_i_6_n_0 ;
  wire \wwait_cnt[15]_i_7_n_0 ;
  wire \wwait_cnt_reg[12]_i_2_n_0 ;
  wire \wwait_cnt_reg[12]_i_2_n_1 ;
  wire \wwait_cnt_reg[12]_i_2_n_2 ;
  wire \wwait_cnt_reg[12]_i_2_n_3 ;
  wire \wwait_cnt_reg[12]_i_2_n_4 ;
  wire \wwait_cnt_reg[12]_i_2_n_5 ;
  wire \wwait_cnt_reg[12]_i_2_n_6 ;
  wire \wwait_cnt_reg[12]_i_2_n_7 ;
  wire \wwait_cnt_reg[15]_i_3_n_2 ;
  wire \wwait_cnt_reg[15]_i_3_n_3 ;
  wire \wwait_cnt_reg[15]_i_3_n_5 ;
  wire \wwait_cnt_reg[15]_i_3_n_6 ;
  wire \wwait_cnt_reg[15]_i_3_n_7 ;
  wire \wwait_cnt_reg[4]_i_2_n_0 ;
  wire \wwait_cnt_reg[4]_i_2_n_1 ;
  wire \wwait_cnt_reg[4]_i_2_n_2 ;
  wire \wwait_cnt_reg[4]_i_2_n_3 ;
  wire \wwait_cnt_reg[4]_i_2_n_4 ;
  wire \wwait_cnt_reg[4]_i_2_n_5 ;
  wire \wwait_cnt_reg[4]_i_2_n_6 ;
  wire \wwait_cnt_reg[4]_i_2_n_7 ;
  wire \wwait_cnt_reg[8]_i_2_n_0 ;
  wire \wwait_cnt_reg[8]_i_2_n_1 ;
  wire \wwait_cnt_reg[8]_i_2_n_2 ;
  wire \wwait_cnt_reg[8]_i_2_n_3 ;
  wire \wwait_cnt_reg[8]_i_2_n_4 ;
  wire \wwait_cnt_reg[8]_i_2_n_5 ;
  wire \wwait_cnt_reg[8]_i_2_n_6 ;
  wire \wwait_cnt_reg[8]_i_2_n_7 ;
  wire [15:0]wwait_cnt_reg_n_0_;
  wire NLW_axi_uart_inst_interrupt_UNCONNECTED;
  wire NLW_axi_uart_inst_s_axi_bvalid_UNCONNECTED;
  wire [1:0]NLW_axi_uart_inst_s_axi_bresp_UNCONNECTED;
  wire [31:8]NLW_axi_uart_inst_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_axi_uart_inst_s_axi_rresp_UNCONNECTED;
  wire [3:2]\NLW_byte_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_byte_cnt_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_recv_done_reg_i_12_O_UNCONNECTED;
  wire [3:0]NLW_recv_done_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_recv_done_reg_i_21_O_UNCONNECTED;
  wire [3:0]NLW_recv_done_reg_i_3_O_UNCONNECTED;
  wire [3:2]\NLW_rwait_cnt_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rwait_cnt_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_wwait_cnt_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_wwait_cnt_reg[15]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF0050CF)) 
    \RCS[0]_i_1 
       (.I0(s_axi_rvalid),
        .I1(s_axi_arready),
        .I2(RCS_reg_n_0_[1]),
        .I3(RCS_reg_n_0_[0]),
        .I4(RCS_reg_n_0_[2]),
        .O(\RCS[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0055FCFF00)) 
    \RCS[1]_i_1 
       (.I0(s_axi_rvalid),
        .I1(statReg_reg_n_0_),
        .I2(rdStat),
        .I3(RCS_reg_n_0_[1]),
        .I4(RCS_reg_n_0_[0]),
        .I5(RCS_reg_n_0_[2]),
        .O(\RCS[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF5C000)) 
    \RCS[2]_i_1 
       (.I0(\rwait_cnt[15]_i_4_n_0 ),
        .I1(s_axi_rvalid),
        .I2(RCS_reg_n_0_[1]),
        .I3(RCS_reg_n_0_[0]),
        .I4(RCS_reg_n_0_[2]),
        .O(\RCS[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \RCS_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\RCS[0]_i_1_n_0 ),
        .Q(RCS_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RCS_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\RCS[1]_i_1_n_0 ),
        .Q(RCS_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RCS_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\RCS[2]_i_1_n_0 ),
        .Q(RCS_reg_n_0_[2]));
  LUT6 #(
    .INIT(64'hFFFF0000FF0F080F)) 
    \WCS[0]_i_1 
       (.I0(\WCS[0]_i_2_n_0 ),
        .I1(\WCS[2]_i_2_n_0 ),
        .I2(\s_axi_wstrb[3]_i_1_n_0 ),
        .I3(WCS_reg_n_0_[2]),
        .I4(WCS_reg_n_0_[0]),
        .I5(WCS_reg_n_0_[1]),
        .O(\WCS[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \WCS[0]_i_2 
       (.I0(initFlag),
        .I1(oldInitF_reg_n_0),
        .O(\WCS[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7700F0F0F0)) 
    \WCS[1]_i_1 
       (.I0(s_axi_awready),
        .I1(s_axi_wready),
        .I2(\s_axi_wstrb[3]_i_1_n_0 ),
        .I3(WCS_reg_n_0_[2]),
        .I4(WCS_reg_n_0_[0]),
        .I5(WCS_reg_n_0_[1]),
        .O(\WCS[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF88FF000F00)) 
    \WCS[2]_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_awready),
        .I2(\WCS[2]_i_2_n_0 ),
        .I3(WCS_reg_n_0_[2]),
        .I4(WCS_reg_n_0_[0]),
        .I5(WCS_reg_n_0_[1]),
        .O(\WCS[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \WCS[2]_i_2 
       (.I0(\WCS[2]_i_3_n_0 ),
        .I1(wwait_cnt_reg_n_0_[13]),
        .I2(wwait_cnt_reg_n_0_[10]),
        .I3(wwait_cnt_reg_n_0_[12]),
        .I4(wwait_cnt_reg_n_0_[11]),
        .I5(\WCS[2]_i_4_n_0 ),
        .O(\WCS[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \WCS[2]_i_3 
       (.I0(wwait_cnt_reg_n_0_[15]),
        .I1(wwait_cnt_reg_n_0_[1]),
        .I2(wwait_cnt_reg_n_0_[5]),
        .I3(wwait_cnt_reg_n_0_[4]),
        .O(\WCS[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \WCS[2]_i_4 
       (.I0(wwait_cnt_reg_n_0_[6]),
        .I1(wwait_cnt_reg_n_0_[7]),
        .I2(wwait_cnt_reg_n_0_[0]),
        .I3(wwait_cnt_reg_n_0_[2]),
        .I4(\WCS[2]_i_5_n_0 ),
        .O(\WCS[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \WCS[2]_i_5 
       (.I0(wwait_cnt_reg_n_0_[8]),
        .I1(wwait_cnt_reg_n_0_[14]),
        .I2(wwait_cnt_reg_n_0_[3]),
        .I3(wwait_cnt_reg_n_0_[9]),
        .O(\WCS[2]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \WCS_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\WCS[0]_i_1_n_0 ),
        .Q(WCS_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \WCS_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\WCS[1]_i_1_n_0 ),
        .Q(WCS_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \WCS_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\WCS[2]_i_1_n_0 ),
        .Q(WCS_reg_n_0_[2]));
  (* x_core_info = "axi_uartlite,Vivado 2017.4" *) 
  uart_bmpg_0_axi_uart axi_uart_inst
       (.interrupt(NLW_axi_uart_inst_interrupt_UNCONNECTED),
        .rx(upg_rx_i_IBUF),
        .s_axi_aclk(upg_clk_i_IBUF_BUFG),
        .s_axi_araddr({s_axi_araddr_reg_n_0_,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn0),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr_reg_n_0_,1'b1,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_wvalid),
        .s_axi_bready(1'b1),
        .s_axi_bresp(NLW_axi_uart_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_axi_uart_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata({NLW_axi_uart_inst_s_axi_rdata_UNCONNECTED[31:8],s_axi_rdata}),
        .s_axi_rready(1'b1),
        .s_axi_rresp(NLW_axi_uart_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata_reg_n_0_}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .s_axi_wvalid(s_axi_wvalid),
        .tx(upg_tx_o_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    axi_uart_inst_i_1
       (.I0(upg_rst_i_IBUF),
        .O(s_axi_aresetn0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[0]_i_1 
       (.I0(uart_rdat_reg_n_0_[0]),
        .I1(uart_rdat_reg_n_0_[1]),
        .I2(uart_rdat_reg_n_0_[2]),
        .I3(uart_rdat_reg_n_0_[3]),
        .O(hex2ascii_return[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[10]_i_1 
       (.I0(uart_rdat_reg_n_0_[5]),
        .I1(uart_rdat_reg_n_0_[6]),
        .I2(uart_rdat_reg_n_0_[7]),
        .I3(uart_rdat_reg_n_0_[4]),
        .O(hex2ascii_return[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[11]_i_1 
       (.I0(uart_rdat_reg_n_0_[7]),
        .I1(uart_rdat_reg_n_0_[6]),
        .I2(uart_rdat_reg_n_0_[5]),
        .O(hex2ascii_return[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[13]_i_1 
       (.I0(uart_rdat_reg_n_0_[5]),
        .I1(uart_rdat_reg_n_0_[6]),
        .I2(uart_rdat_reg_n_0_[7]),
        .O(hex2ascii_return[13]));
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[14]_i_1 
       (.I0(uart_rdat_reg_n_0_[7]),
        .I1(uart_rdat_reg_n_0_[6]),
        .I2(uart_rdat_reg_n_0_[5]),
        .O(hex2ascii_return[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[16]_i_1 
       (.I0(hex0[8]),
        .I1(hex0[9]),
        .I2(hex0[10]),
        .I3(hex0[11]),
        .O(hex2ascii_return[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[17]_i_1 
       (.I0(hex0[8]),
        .I1(hex0[11]),
        .I2(hex0[10]),
        .I3(hex0[9]),
        .O(hex2ascii_return[17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[18]_i_1 
       (.I0(hex0[9]),
        .I1(hex0[10]),
        .I2(hex0[11]),
        .I3(hex0[8]),
        .O(hex2ascii_return[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[19]_i_1 
       (.I0(hex0[11]),
        .I1(hex0[10]),
        .I2(hex0[9]),
        .O(hex2ascii_return[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[1]_i_1 
       (.I0(uart_rdat_reg_n_0_[0]),
        .I1(uart_rdat_reg_n_0_[3]),
        .I2(uart_rdat_reg_n_0_[2]),
        .I3(uart_rdat_reg_n_0_[1]),
        .O(hex2ascii_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[21]_i_1 
       (.I0(hex0[9]),
        .I1(hex0[10]),
        .I2(hex0[11]),
        .O(hex2ascii_return[21]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[22]_i_1 
       (.I0(hex0[11]),
        .I1(hex0[10]),
        .I2(hex0[9]),
        .O(hex2ascii_return[22]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[24]_i_1 
       (.I0(hex0[12]),
        .I1(hex0[13]),
        .I2(hex0[14]),
        .I3(hex0[15]),
        .O(hex2ascii_return[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[25]_i_1 
       (.I0(hex0[12]),
        .I1(hex0[15]),
        .I2(hex0[14]),
        .I3(hex0[13]),
        .O(hex2ascii_return[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[26]_i_1 
       (.I0(hex0[13]),
        .I1(hex0[14]),
        .I2(hex0[15]),
        .I3(hex0[12]),
        .O(hex2ascii_return[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[27]_i_1 
       (.I0(hex0[15]),
        .I1(hex0[14]),
        .I2(hex0[13]),
        .O(hex2ascii_return[27]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[29]_i_1 
       (.I0(hex0[13]),
        .I1(hex0[14]),
        .I2(hex0[15]),
        .O(hex2ascii_return[29]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[2]_i_1 
       (.I0(uart_rdat_reg_n_0_[1]),
        .I1(uart_rdat_reg_n_0_[2]),
        .I2(uart_rdat_reg_n_0_[3]),
        .I3(uart_rdat_reg_n_0_[0]),
        .O(hex2ascii_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[30]_i_1 
       (.I0(hex0[15]),
        .I1(hex0[14]),
        .I2(hex0[13]),
        .O(hex2ascii_return[30]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[32]_i_1 
       (.I0(hex0[16]),
        .I1(hex0[17]),
        .I2(hex0[18]),
        .I3(hex0[19]),
        .O(hex2ascii_return[32]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[33]_i_1 
       (.I0(hex0[16]),
        .I1(hex0[19]),
        .I2(hex0[18]),
        .I3(hex0[17]),
        .O(hex2ascii_return[33]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[34]_i_1 
       (.I0(hex0[17]),
        .I1(hex0[18]),
        .I2(hex0[19]),
        .I3(hex0[16]),
        .O(hex2ascii_return[34]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[35]_i_1 
       (.I0(hex0[19]),
        .I1(hex0[18]),
        .I2(hex0[17]),
        .O(hex2ascii_return[35]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[37]_i_1 
       (.I0(hex0[17]),
        .I1(hex0[18]),
        .I2(hex0[19]),
        .O(hex2ascii_return[37]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[38]_i_1 
       (.I0(hex0[19]),
        .I1(hex0[18]),
        .I2(hex0[17]),
        .O(hex2ascii_return[38]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[3]_i_1 
       (.I0(uart_rdat_reg_n_0_[3]),
        .I1(uart_rdat_reg_n_0_[2]),
        .I2(uart_rdat_reg_n_0_[1]),
        .O(hex2ascii_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[40]_i_1 
       (.I0(hex0[20]),
        .I1(hex0[21]),
        .I2(hex0[22]),
        .I3(hex0[23]),
        .O(hex2ascii_return[40]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[41]_i_1 
       (.I0(hex0[20]),
        .I1(hex0[23]),
        .I2(hex0[22]),
        .I3(hex0[21]),
        .O(hex2ascii_return[41]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[42]_i_1 
       (.I0(hex0[21]),
        .I1(hex0[22]),
        .I2(hex0[23]),
        .I3(hex0[20]),
        .O(hex2ascii_return[42]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[43]_i_1 
       (.I0(hex0[23]),
        .I1(hex0[22]),
        .I2(hex0[21]),
        .O(hex2ascii_return[43]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[45]_i_1 
       (.I0(hex0[21]),
        .I1(hex0[22]),
        .I2(hex0[23]),
        .O(hex2ascii_return[45]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[46]_i_1 
       (.I0(hex0[23]),
        .I1(hex0[22]),
        .I2(hex0[21]),
        .O(hex2ascii_return[46]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[48]_i_1 
       (.I0(hex0[24]),
        .I1(hex0[25]),
        .I2(hex0[26]),
        .I3(hex0[27]),
        .O(hex2ascii_return[48]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[49]_i_1 
       (.I0(hex0[24]),
        .I1(hex0[27]),
        .I2(hex0[26]),
        .I3(hex0[25]),
        .O(hex2ascii_return[49]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[50]_i_1 
       (.I0(hex0[25]),
        .I1(hex0[26]),
        .I2(hex0[27]),
        .I3(hex0[24]),
        .O(hex2ascii_return[50]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[51]_i_1 
       (.I0(hex0[27]),
        .I1(hex0[26]),
        .I2(hex0[25]),
        .O(hex2ascii_return[51]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[53]_i_1 
       (.I0(hex0[25]),
        .I1(hex0[26]),
        .I2(hex0[27]),
        .O(hex2ascii_return[53]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[54]_i_1 
       (.I0(hex0[27]),
        .I1(hex0[26]),
        .I2(hex0[25]),
        .O(hex2ascii_return[54]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[56]_i_1 
       (.I0(hex0[28]),
        .I1(hex0[29]),
        .I2(hex0[30]),
        .I3(hex0[31]),
        .O(hex2ascii_return0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[57]_i_1 
       (.I0(hex0[28]),
        .I1(hex0[31]),
        .I2(hex0[30]),
        .I3(hex0[29]),
        .O(hex2ascii_return0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hCC8C)) 
    \bn_ascii[58]_i_1 
       (.I0(hex0[29]),
        .I1(hex0[30]),
        .I2(hex0[31]),
        .I3(hex0[28]),
        .O(hex2ascii_return0[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \bn_ascii[59]_i_1 
       (.I0(hex0[31]),
        .I1(hex0[30]),
        .I2(hex0[29]),
        .O(hex2ascii_return0[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[5]_i_1 
       (.I0(uart_rdat_reg_n_0_[1]),
        .I1(uart_rdat_reg_n_0_[2]),
        .I2(uart_rdat_reg_n_0_[3]),
        .O(hex2ascii_return[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \bn_ascii[61]_i_1 
       (.I0(hex0[29]),
        .I1(hex0[30]),
        .I2(hex0[31]),
        .O(hex2ascii_return0[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    \bn_ascii[62]_i_1 
       (.I0(wr_byte_num_done_reg_n_0),
        .I1(statReg_reg_n_0_),
        .I2(wr_byte_len_done_reg_n_0),
        .I3(wr_byte_num_done0),
        .O(wr_byte_num_done));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[62]_i_2 
       (.I0(hex0[31]),
        .I1(hex0[30]),
        .I2(hex0[29]),
        .O(hex2ascii_return0[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bn_ascii[6]_i_1 
       (.I0(uart_rdat_reg_n_0_[3]),
        .I1(uart_rdat_reg_n_0_[2]),
        .I2(uart_rdat_reg_n_0_[1]),
        .O(hex2ascii_return[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \bn_ascii[8]_i_1 
       (.I0(uart_rdat_reg_n_0_[4]),
        .I1(uart_rdat_reg_n_0_[5]),
        .I2(uart_rdat_reg_n_0_[6]),
        .I3(uart_rdat_reg_n_0_[7]),
        .O(hex2ascii_return[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hBB40)) 
    \bn_ascii[9]_i_1 
       (.I0(uart_rdat_reg_n_0_[4]),
        .I1(uart_rdat_reg_n_0_[7]),
        .I2(uart_rdat_reg_n_0_[6]),
        .I3(uart_rdat_reg_n_0_[5]),
        .O(hex2ascii_return[9]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[0] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[0]),
        .Q(bn_ascii_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[10] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[10]),
        .Q(data6[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[11] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[11]),
        .Q(data6[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[13] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[13]),
        .Q(data6[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[14] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[14]),
        .Q(data6[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[16] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[16]),
        .Q(data5[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[17] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[17]),
        .Q(data5[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[18] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[18]),
        .Q(data5[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[19] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[19]),
        .Q(data5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[1] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[1]),
        .Q(bn_ascii_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[21] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[21]),
        .Q(data5[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[22] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[22]),
        .Q(data5[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[24] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[24]),
        .Q(data4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[25] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[25]),
        .Q(data4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[26] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[26]),
        .Q(data4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[27] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[27]),
        .Q(data4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[29] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[29]),
        .Q(data4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[2] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[2]),
        .Q(bn_ascii_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[30] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[30]),
        .Q(data4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[32] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[32]),
        .Q(data3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[33] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[33]),
        .Q(data3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[34] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[34]),
        .Q(data3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[35] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[35]),
        .Q(data3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[37] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[37]),
        .Q(data3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[38] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[38]),
        .Q(data3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[3] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[3]),
        .Q(bn_ascii_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[40] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[40]),
        .Q(data2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[41] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[41]),
        .Q(data2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[42] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[42]),
        .Q(data2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[43] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[43]),
        .Q(data2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[45] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[45]),
        .Q(data2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[46] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[46]),
        .Q(data2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[48] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[48]),
        .Q(bn_ascii_reg_n_0_[48]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[49] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[49]),
        .Q(bn_ascii_reg_n_0_[49]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[50] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[50]),
        .Q(bn_ascii_reg_n_0_[50]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[51] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[51]),
        .Q(bn_ascii_reg_n_0_[51]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[53] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[53]),
        .Q(bn_ascii_reg_n_0_[53]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[54] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[54]),
        .Q(bn_ascii_reg_n_0_[54]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[56] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return0[0]),
        .Q(bn_ascii_reg_n_0_[56]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[57] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return0[1]),
        .Q(bn_ascii_reg_n_0_[57]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[58] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return0[2]),
        .Q(bn_ascii_reg_n_0_[58]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[59] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return0[3]),
        .Q(bn_ascii_reg_n_0_[59]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[5] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[5]),
        .Q(bn_ascii_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[61] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return0[5]),
        .Q(bn_ascii_reg_n_0_[61]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[62] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return0[6]),
        .Q(bn_ascii_reg_n_0_[62]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[6] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[6]),
        .Q(bn_ascii_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[8] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[8]),
        .Q(data6[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bn_ascii_reg[9] 
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(hex2ascii_return[9]),
        .Q(data6[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \byte_cnt[0]_i_1 
       (.I0(byte_cnt_reg_n_0_[0]),
        .O(recv_done1[0]));
  LUT4 #(
    .INIT(16'h0040)) 
    \byte_cnt[31]_i_1 
       (.I0(recv_done_reg_n_0),
        .I1(wr_byte_num_done_reg_n_0),
        .I2(statReg_reg_n_0_),
        .I3(upg_rst_i_IBUF),
        .O(byte_cnt));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[0] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[0]),
        .Q(byte_cnt_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[10] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[10]),
        .Q(p_0_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[11] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[11]),
        .Q(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[12] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[12]),
        .Q(p_0_in[10]));
  CARRY4 \byte_cnt_reg[12]_i_1 
       (.CI(\byte_cnt_reg[8]_i_1_n_0 ),
        .CO({\byte_cnt_reg[12]_i_1_n_0 ,\byte_cnt_reg[12]_i_1_n_1 ,\byte_cnt_reg[12]_i_1_n_2 ,\byte_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[12:9]),
        .S(p_0_in[10:7]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[13] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[13]),
        .Q(p_0_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[14] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[14]),
        .Q(p_0_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[15] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[15]),
        .Q(p_0_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[16] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[16]),
        .Q(p_0_in[14]));
  CARRY4 \byte_cnt_reg[16]_i_1 
       (.CI(\byte_cnt_reg[12]_i_1_n_0 ),
        .CO({\byte_cnt_reg[16]_i_1_n_0 ,\byte_cnt_reg[16]_i_1_n_1 ,\byte_cnt_reg[16]_i_1_n_2 ,\byte_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[16:13]),
        .S(p_0_in[14:11]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[17] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[17]),
        .Q(byte_cnt_reg_n_0_[17]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[18] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[18]),
        .Q(byte_cnt_reg_n_0_[18]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[19] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[19]),
        .Q(byte_cnt_reg_n_0_[19]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[1] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[1]),
        .Q(byte_cnt_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[20] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[20]),
        .Q(byte_cnt_reg_n_0_[20]));
  CARRY4 \byte_cnt_reg[20]_i_1 
       (.CI(\byte_cnt_reg[16]_i_1_n_0 ),
        .CO({\byte_cnt_reg[20]_i_1_n_0 ,\byte_cnt_reg[20]_i_1_n_1 ,\byte_cnt_reg[20]_i_1_n_2 ,\byte_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[20:17]),
        .S(byte_cnt_reg_n_0_[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[21] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[21]),
        .Q(byte_cnt_reg_n_0_[21]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[22] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[22]),
        .Q(byte_cnt_reg_n_0_[22]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[23] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[23]),
        .Q(byte_cnt_reg_n_0_[23]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[24] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[24]),
        .Q(byte_cnt_reg_n_0_[24]));
  CARRY4 \byte_cnt_reg[24]_i_1 
       (.CI(\byte_cnt_reg[20]_i_1_n_0 ),
        .CO({\byte_cnt_reg[24]_i_1_n_0 ,\byte_cnt_reg[24]_i_1_n_1 ,\byte_cnt_reg[24]_i_1_n_2 ,\byte_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[24:21]),
        .S(byte_cnt_reg_n_0_[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[25] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[25]),
        .Q(byte_cnt_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[26] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[26]),
        .Q(byte_cnt_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[27] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[27]),
        .Q(byte_cnt_reg_n_0_[27]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[28] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[28]),
        .Q(byte_cnt_reg_n_0_[28]));
  CARRY4 \byte_cnt_reg[28]_i_1 
       (.CI(\byte_cnt_reg[24]_i_1_n_0 ),
        .CO({\byte_cnt_reg[28]_i_1_n_0 ,\byte_cnt_reg[28]_i_1_n_1 ,\byte_cnt_reg[28]_i_1_n_2 ,\byte_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[28:25]),
        .S(byte_cnt_reg_n_0_[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[29] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[29]),
        .Q(byte_cnt_reg_n_0_[29]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[2] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[2]),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[30] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[30]),
        .Q(byte_cnt_reg_n_0_[30]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[31] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[31]),
        .Q(byte_cnt_reg_n_0_[31]));
  CARRY4 \byte_cnt_reg[31]_i_2 
       (.CI(\byte_cnt_reg[28]_i_1_n_0 ),
        .CO({\NLW_byte_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\byte_cnt_reg[31]_i_2_n_2 ,\byte_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_byte_cnt_reg[31]_i_2_O_UNCONNECTED [3],recv_done1[31:29]}),
        .S({1'b0,byte_cnt_reg_n_0_[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[3] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[3]),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[4] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[4]),
        .Q(p_0_in[2]));
  CARRY4 \byte_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\byte_cnt_reg[4]_i_1_n_0 ,\byte_cnt_reg[4]_i_1_n_1 ,\byte_cnt_reg[4]_i_1_n_2 ,\byte_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(byte_cnt_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[4:1]),
        .S({p_0_in[2:0],byte_cnt_reg_n_0_[1]}));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[5] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[5]),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[6] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[6]),
        .Q(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[7] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[7]),
        .Q(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[8] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[8]),
        .Q(p_0_in[6]));
  CARRY4 \byte_cnt_reg[8]_i_1 
       (.CI(\byte_cnt_reg[4]_i_1_n_0 ),
        .CO({\byte_cnt_reg[8]_i_1_n_0 ,\byte_cnt_reg[8]_i_1_n_1 ,\byte_cnt_reg[8]_i_1_n_2 ,\byte_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(recv_done1[8:5]),
        .S(p_0_in[6:3]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_cnt_reg[9] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done1[9]),
        .Q(p_0_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \byte_len[7]_i_1 
       (.I0(wr_byte_len_done0),
        .I1(statReg_reg_n_0_),
        .O(\byte_len[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[0] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[0]),
        .Q(byte_len_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[1] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[1]),
        .Q(byte_len_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[2] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[2]),
        .Q(byte_len_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[3] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[3]),
        .Q(byte_len_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[4] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[4]),
        .Q(byte_len_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[5] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[5]),
        .Q(byte_len_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[6] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[6]),
        .Q(byte_len_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_len_reg[7] 
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[7]),
        .Q(byte_len_reg_n_0_[7]));
  LUT3 #(
    .INIT(8'h08)) 
    \byte_num[31]_i_1 
       (.I0(wr_byte_len_done_reg_n_0),
        .I1(statReg_reg_n_0_),
        .I2(wr_byte_num_done_reg_n_0),
        .O(byte_num));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[0] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[0]),
        .Q(hex0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[10] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[10]),
        .Q(hex0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[11] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[11]),
        .Q(hex0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[12] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[12]),
        .Q(hex0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[13] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[13]),
        .Q(hex0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[14] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[14]),
        .Q(hex0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[15] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[15]),
        .Q(hex0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[16] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[16]),
        .Q(hex0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[17] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[17]),
        .Q(hex0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[18] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[18]),
        .Q(hex0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[19] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[19]),
        .Q(hex0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[1] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[1]),
        .Q(hex0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[20] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[20]),
        .Q(hex0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[21] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[21]),
        .Q(hex0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[22] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[22]),
        .Q(hex0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[23] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[23]),
        .Q(hex0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[24] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[24]),
        .Q(byte_num_reg_n_0_[24]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[25] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[25]),
        .Q(byte_num_reg_n_0_[25]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[26] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[26]),
        .Q(byte_num_reg_n_0_[26]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[27] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[27]),
        .Q(byte_num_reg_n_0_[27]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[28] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[28]),
        .Q(byte_num_reg_n_0_[28]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[29] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[29]),
        .Q(byte_num_reg_n_0_[29]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[2] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[2]),
        .Q(hex0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[30] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[30]),
        .Q(byte_num_reg_n_0_[30]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[31] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[31]),
        .Q(byte_num_reg_n_0_[31]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[3] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[3]),
        .Q(hex0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[4] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[4]),
        .Q(hex0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[5] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[5]),
        .Q(hex0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[6] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[6]),
        .Q(hex0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[7] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[7]),
        .Q(hex0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[8] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[8]),
        .Q(hex0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_num_reg[9] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(hex0[9]),
        .Q(hex0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[0] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[0]),
        .Q(dbuf[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[10] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[2]),
        .Q(dbuf[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[11] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[3]),
        .Q(dbuf[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[12] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[4]),
        .Q(dbuf[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[13] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[5]),
        .Q(dbuf[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[14] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[6]),
        .Q(dbuf[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[15] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[7]),
        .Q(dbuf[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[16] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[8]),
        .Q(dbuf[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[17] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[9]),
        .Q(dbuf[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[18] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[10]),
        .Q(dbuf[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[19] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[11]),
        .Q(dbuf[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[1] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[1]),
        .Q(dbuf[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[20] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[12]),
        .Q(dbuf[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[21] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[13]),
        .Q(dbuf[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[22] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[14]),
        .Q(dbuf[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[23] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[15]),
        .Q(dbuf[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[2] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[2]),
        .Q(dbuf[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[3] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[3]),
        .Q(dbuf[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[4] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[4]),
        .Q(dbuf[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[5] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[5]),
        .Q(dbuf[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[6] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[6]),
        .Q(dbuf[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[7] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[7]),
        .Q(dbuf[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[8] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[0]),
        .Q(dbuf[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dbuf_reg[9] 
       (.C(rdStat_BUFG),
        .CE(byte_cnt),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[1]),
        .Q(dbuf[9]));
  LUT4 #(
    .INIT(16'h5595)) 
    \disp[0]_i_1 
       (.I0(\disp[1]_i_3_n_0 ),
        .I1(statReg_reg_n_0_),
        .I2(wr_byte_num_done_reg_n_0),
        .I3(recv_done_reg_n_0),
        .O(\disp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55556555)) 
    \disp[1]_i_1 
       (.I0(\disp[1]_i_2_n_0 ),
        .I1(\disp[1]_i_3_n_0 ),
        .I2(statReg_reg_n_0_),
        .I3(wr_byte_num_done_reg_n_0),
        .I4(recv_done_reg_n_0),
        .O(\disp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF0000EFFFFFFF)) 
    \disp[1]_i_2 
       (.I0(disp_reg_n_0_[6]),
        .I1(disp_reg_n_0_[7]),
        .I2(disp_reg_n_0_[0]),
        .I3(upg_clk_o_OBUF_inst_i_2_n_0),
        .I4(disp1),
        .I5(disp_reg_n_0_[1]),
        .O(\disp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FFFFEFFF)) 
    \disp[1]_i_3 
       (.I0(disp_reg_n_0_[6]),
        .I1(disp_reg_n_0_[7]),
        .I2(upg_clk_o_OBUF_inst_i_2_n_0),
        .I3(recv_done_reg_n_0),
        .I4(rx_done_reg_n_0),
        .I5(disp_reg_n_0_[0]),
        .O(\disp[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h82882222)) 
    \disp[2]_i_1 
       (.I0(\disp[6]_i_2_n_0 ),
        .I1(\disp[2]_i_2_n_0 ),
        .I2(rx_done_reg_n_0),
        .I3(recv_done_reg_n_0),
        .I4(disp_reg_n_0_[2]),
        .O(\disp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \disp[2]_i_2 
       (.I0(\disp[1]_i_2_n_0 ),
        .I1(\disp[1]_i_3_n_0 ),
        .I2(statReg_reg_n_0_),
        .I3(wr_byte_num_done_reg_n_0),
        .I4(recv_done_reg_n_0),
        .O(\disp[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000007F807F80)) 
    \disp[3]_i_1 
       (.I0(wr_byte_num_done_reg_n_0),
        .I1(\disp[3]_i_2_n_0 ),
        .I2(statReg_reg_n_0_),
        .I3(disp_reg_n_0_[3]),
        .I4(rx_done_reg_n_0),
        .I5(recv_done_reg_n_0),
        .O(\disp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \disp[3]_i_2 
       (.I0(disp_reg_n_0_[2]),
        .I1(recv_done_reg_n_0),
        .I2(rx_done_reg_n_0),
        .I3(\disp[6]_i_3_n_0 ),
        .O(\disp[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000007F807F80)) 
    \disp[4]_i_1 
       (.I0(wr_byte_num_done_reg_n_0),
        .I1(\disp[5]_i_3_n_0 ),
        .I2(statReg_reg_n_0_),
        .I3(disp_reg_n_0_[4]),
        .I4(rx_done_reg_n_0),
        .I5(recv_done_reg_n_0),
        .O(\disp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFF4000)) 
    \disp[5]_i_1 
       (.I0(\disp[5]_i_2_n_0 ),
        .I1(\disp[5]_i_3_n_0 ),
        .I2(disp_reg_n_0_[4]),
        .I3(statReg_reg_n_0_),
        .I4(disp_reg_n_0_[5]),
        .I5(disp1),
        .O(\disp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \disp[5]_i_2 
       (.I0(recv_done_reg_n_0),
        .I1(wr_byte_num_done_reg_n_0),
        .O(\disp[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h20220000)) 
    \disp[5]_i_3 
       (.I0(disp_reg_n_0_[3]),
        .I1(\disp[6]_i_3_n_0 ),
        .I2(rx_done_reg_n_0),
        .I3(recv_done_reg_n_0),
        .I4(disp_reg_n_0_[2]),
        .O(\disp[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \disp[5]_i_4 
       (.I0(recv_done_reg_n_0),
        .I1(rx_done_reg_n_0),
        .O(disp1));
  LUT6 #(
    .INIT(64'hB000B00000F0B000)) 
    \disp[6]_i_1 
       (.I0(rx_done_reg_n_0),
        .I1(recv_done_reg_n_0),
        .I2(\disp[6]_i_2_n_0 ),
        .I3(disp_reg_n_0_[6]),
        .I4(statReg_reg_n_0_),
        .I5(\disp[7]_i_2_n_0 ),
        .O(\disp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \disp[6]_i_2 
       (.I0(wr_byte_num_done_reg_n_0),
        .I1(recv_done_reg_n_0),
        .I2(\disp[6]_i_3_n_0 ),
        .I3(upg_wen_o_i_4_n_0),
        .I4(statReg_reg_n_0_),
        .O(\disp[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F7F7D7F7)) 
    \disp[6]_i_3 
       (.I0(disp_reg_n_0_[1]),
        .I1(disp_reg_n_0_[0]),
        .I2(disp1),
        .I3(upg_clk_o_OBUF_inst_i_2_n_0),
        .I4(disp_reg_n_0_[7]),
        .I5(disp_reg_n_0_[6]),
        .O(\disp[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD02FD0D0D0D0D0D0)) 
    \disp[7]_i_1 
       (.I0(recv_done_reg_n_0),
        .I1(rx_done_reg_n_0),
        .I2(disp_reg_n_0_[7]),
        .I3(\disp[7]_i_2_n_0 ),
        .I4(statReg_reg_n_0_),
        .I5(disp_reg_n_0_[6]),
        .O(\disp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \disp[7]_i_2 
       (.I0(disp_reg_n_0_[3]),
        .I1(\disp[7]_i_3_n_0 ),
        .I2(disp1),
        .I3(disp_reg_n_0_[2]),
        .I4(disp_reg_n_0_[4]),
        .I5(disp_reg_n_0_[5]),
        .O(\disp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAEFFFFFFFFFFF)) 
    \disp[7]_i_3 
       (.I0(\disp[5]_i_2_n_0 ),
        .I1(\disp[7]_i_4_n_0 ),
        .I2(upg_clk_o_OBUF_inst_i_2_n_0),
        .I3(disp1),
        .I4(disp_reg_n_0_[0]),
        .I5(disp_reg_n_0_[1]),
        .O(\disp[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \disp[7]_i_4 
       (.I0(disp_reg_n_0_[6]),
        .I1(disp_reg_n_0_[7]),
        .O(\disp[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[0] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[0]_i_1_n_0 ),
        .Q(disp_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[1] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[1]_i_1_n_0 ),
        .Q(disp_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[2] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[2]_i_1_n_0 ),
        .Q(disp_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[3] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[3]_i_1_n_0 ),
        .Q(disp_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[4] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[4]_i_1_n_0 ),
        .Q(disp_reg_n_0_[4]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[5] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[5]_i_1_n_0 ),
        .Q(disp_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[6] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[6]_i_1_n_0 ),
        .Q(disp_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \disp_reg[7] 
       (.C(rdStat_BUFG),
        .CE(s_axi_aresetn0),
        .CLR(upg_rst_i_IBUF),
        .D(\disp[7]_i_1_n_0 ),
        .Q(disp_reg_n_0_[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    initFlag_i_1
       (.I0(initFlag),
        .I1(WCS_reg_n_0_[0]),
        .I2(WCS_reg_n_0_[1]),
        .I3(WCS_reg_n_0_[2]),
        .O(initFlag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    initFlag_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(initFlag_i_1_n_0),
        .Q(initFlag));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \len_cnt[0]_i_1 
       (.I0(len_cnt_reg__0[0]),
        .O(\len_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \len_cnt[1]_i_1 
       (.I0(len_cnt_reg__0[0]),
        .I1(len_cnt_reg__0[1]),
        .O(\len_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \len_cnt[2]_i_1 
       (.I0(len_cnt_reg__0[2]),
        .I1(len_cnt_reg__0[1]),
        .I2(len_cnt_reg__0[0]),
        .O(\len_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \len_cnt[3]_i_1 
       (.I0(len_cnt_reg__0[3]),
        .I1(len_cnt_reg__0[0]),
        .I2(len_cnt_reg__0[1]),
        .I3(len_cnt_reg__0[2]),
        .O(\len_cnt[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \len_cnt_reg[0] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(\len_cnt[0]_i_1_n_0 ),
        .Q(len_cnt_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \len_cnt_reg[1] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(\len_cnt[1]_i_1_n_0 ),
        .Q(len_cnt_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \len_cnt_reg[2] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(\len_cnt[2]_i_1_n_0 ),
        .Q(len_cnt_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \len_cnt_reg[3] 
       (.C(rdStat_BUFG),
        .CE(byte_num),
        .CLR(upg_rst_i_IBUF),
        .D(\len_cnt[3]_i_1_n_0 ),
        .Q(len_cnt_reg__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \msg_indx[0]_i_1 
       (.I0(msg_indx_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \msg_indx[1]_i_1 
       (.I0(msg_indx_reg__0[0]),
        .I1(msg_indx_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \msg_indx[2]_i_1 
       (.I0(msg_indx_reg__0[2]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \msg_indx[3]_i_1 
       (.I0(msg_indx_reg__0[3]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[0]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \msg_indx[4]_i_1 
       (.I0(msg_indx_reg__0[4]),
        .I1(msg_indx_reg__0[3]),
        .I2(msg_indx_reg__0[0]),
        .I3(msg_indx_reg__0[2]),
        .I4(msg_indx_reg__0[1]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \msg_indx[5]_i_1 
       (.I0(msg_indx_reg__0[5]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[0]),
        .I4(msg_indx_reg__0[3]),
        .I5(msg_indx_reg__0[4]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \msg_indx[6]_i_1 
       (.I0(msg_indx_reg__1[6]),
        .I1(\msg_indx[7]_i_3_n_0 ),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'h0008)) 
    \msg_indx[7]_i_1 
       (.I0(uart_wen5_out),
        .I1(WCS_reg_n_0_[0]),
        .I2(WCS_reg_n_0_[1]),
        .I3(WCS_reg_n_0_[2]),
        .O(\msg_indx[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \msg_indx[7]_i_2 
       (.I0(msg_indx_reg__1[7]),
        .I1(\msg_indx[7]_i_3_n_0 ),
        .I2(msg_indx_reg__1[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \msg_indx[7]_i_3 
       (.I0(msg_indx_reg__0[1]),
        .I1(msg_indx_reg__0[2]),
        .I2(msg_indx_reg__0[0]),
        .I3(msg_indx_reg__0[3]),
        .I4(msg_indx_reg__0[4]),
        .I5(msg_indx_reg__0[5]),
        .O(\msg_indx[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[0]),
        .Q(msg_indx_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[1]),
        .Q(msg_indx_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[2]),
        .Q(msg_indx_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[3]),
        .Q(msg_indx_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[4] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[4]),
        .Q(msg_indx_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[5] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[5]),
        .Q(msg_indx_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[6] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[6]),
        .Q(msg_indx_reg__1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \msg_indx_reg[7] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\msg_indx[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in__0[7]),
        .Q(msg_indx_reg__1[7]));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    oldInitF_i_1
       (.I0(WCS_reg_n_0_[2]),
        .I1(WCS_reg_n_0_[1]),
        .I2(WCS_reg_n_0_[0]),
        .I3(\WCS[2]_i_2_n_0 ),
        .I4(oldInitF_reg_n_0),
        .O(oldInitF_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    oldInitF_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(oldInitF_i_1_n_0),
        .Q(oldInitF_reg_n_0));
  BUFG rdStat_BUFG_inst
       (.I(rdStat),
        .O(rdStat_BUFG));
  LUT6 #(
    .INIT(64'hF708F708FF00FF0A)) 
    rdStat_i_1
       (.I0(RCS_reg_n_0_[0]),
        .I1(s_axi_rvalid),
        .I2(RCS_reg_n_0_[2]),
        .I3(rdStat),
        .I4(statReg_reg_n_0_),
        .I5(RCS_reg_n_0_[1]),
        .O(rdStat_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rdStat_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(rdStat_i_1_n_0),
        .Q(rdStat));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    recv_done_i_1
       (.I0(recv_done0),
        .I1(upg_rst_i_IBUF),
        .I2(statReg_reg_n_0_),
        .I3(wr_byte_num_done_reg_n_0),
        .I4(recv_done_reg_n_0),
        .O(recv_done_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_10
       (.I0(byte_num_reg_n_0_[27]),
        .I1(recv_done1[27]),
        .I2(byte_num_reg_n_0_[26]),
        .I3(recv_done1[26]),
        .O(recv_done_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_11
       (.I0(byte_num_reg_n_0_[25]),
        .I1(recv_done1[25]),
        .I2(byte_num_reg_n_0_[24]),
        .I3(recv_done1[24]),
        .O(recv_done_i_11_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_13
       (.I0(recv_done1[23]),
        .I1(hex0[31]),
        .I2(recv_done1[22]),
        .I3(hex0[30]),
        .O(recv_done_i_13_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_14
       (.I0(recv_done1[21]),
        .I1(hex0[29]),
        .I2(recv_done1[20]),
        .I3(hex0[28]),
        .O(recv_done_i_14_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_15
       (.I0(recv_done1[19]),
        .I1(hex0[27]),
        .I2(recv_done1[18]),
        .I3(hex0[26]),
        .O(recv_done_i_15_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_16
       (.I0(recv_done1[17]),
        .I1(hex0[25]),
        .I2(recv_done1[16]),
        .I3(hex0[24]),
        .O(recv_done_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_17
       (.I0(hex0[31]),
        .I1(recv_done1[23]),
        .I2(hex0[30]),
        .I3(recv_done1[22]),
        .O(recv_done_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_18
       (.I0(hex0[29]),
        .I1(recv_done1[21]),
        .I2(hex0[28]),
        .I3(recv_done1[20]),
        .O(recv_done_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_19
       (.I0(hex0[27]),
        .I1(recv_done1[19]),
        .I2(hex0[26]),
        .I3(recv_done1[18]),
        .O(recv_done_i_19_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_20
       (.I0(hex0[25]),
        .I1(recv_done1[17]),
        .I2(hex0[24]),
        .I3(recv_done1[16]),
        .O(recv_done_i_20_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_22
       (.I0(recv_done1[15]),
        .I1(hex0[23]),
        .I2(recv_done1[14]),
        .I3(hex0[22]),
        .O(recv_done_i_22_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_23
       (.I0(recv_done1[13]),
        .I1(hex0[21]),
        .I2(recv_done1[12]),
        .I3(hex0[20]),
        .O(recv_done_i_23_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_24
       (.I0(recv_done1[11]),
        .I1(hex0[19]),
        .I2(recv_done1[10]),
        .I3(hex0[18]),
        .O(recv_done_i_24_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_25
       (.I0(recv_done1[9]),
        .I1(hex0[17]),
        .I2(recv_done1[8]),
        .I3(hex0[16]),
        .O(recv_done_i_25_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_26
       (.I0(hex0[23]),
        .I1(recv_done1[15]),
        .I2(hex0[22]),
        .I3(recv_done1[14]),
        .O(recv_done_i_26_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_27
       (.I0(hex0[21]),
        .I1(recv_done1[13]),
        .I2(hex0[20]),
        .I3(recv_done1[12]),
        .O(recv_done_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_28
       (.I0(hex0[19]),
        .I1(recv_done1[11]),
        .I2(hex0[18]),
        .I3(recv_done1[10]),
        .O(recv_done_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_29
       (.I0(hex0[17]),
        .I1(recv_done1[9]),
        .I2(hex0[16]),
        .I3(recv_done1[8]),
        .O(recv_done_i_29_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_30
       (.I0(recv_done1[7]),
        .I1(hex0[15]),
        .I2(recv_done1[6]),
        .I3(hex0[14]),
        .O(recv_done_i_30_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_31
       (.I0(recv_done1[5]),
        .I1(hex0[13]),
        .I2(recv_done1[4]),
        .I3(hex0[12]),
        .O(recv_done_i_31_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_32
       (.I0(recv_done1[3]),
        .I1(hex0[11]),
        .I2(recv_done1[2]),
        .I3(hex0[10]),
        .O(recv_done_i_32_n_0));
  LUT4 #(
    .INIT(16'h222B)) 
    recv_done_i_33
       (.I0(recv_done1[1]),
        .I1(hex0[9]),
        .I2(byte_cnt_reg_n_0_[0]),
        .I3(hex0[8]),
        .O(recv_done_i_33_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_34
       (.I0(hex0[15]),
        .I1(recv_done1[7]),
        .I2(hex0[14]),
        .I3(recv_done1[6]),
        .O(recv_done_i_34_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_35
       (.I0(hex0[13]),
        .I1(recv_done1[5]),
        .I2(hex0[12]),
        .I3(recv_done1[4]),
        .O(recv_done_i_35_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_36
       (.I0(hex0[11]),
        .I1(recv_done1[3]),
        .I2(hex0[10]),
        .I3(recv_done1[2]),
        .O(recv_done_i_36_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    recv_done_i_37
       (.I0(hex0[8]),
        .I1(byte_cnt_reg_n_0_[0]),
        .I2(hex0[9]),
        .I3(recv_done1[1]),
        .O(recv_done_i_37_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_4
       (.I0(recv_done1[31]),
        .I1(byte_num_reg_n_0_[31]),
        .I2(recv_done1[30]),
        .I3(byte_num_reg_n_0_[30]),
        .O(recv_done_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_5
       (.I0(recv_done1[29]),
        .I1(byte_num_reg_n_0_[29]),
        .I2(recv_done1[28]),
        .I3(byte_num_reg_n_0_[28]),
        .O(recv_done_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_6
       (.I0(recv_done1[27]),
        .I1(byte_num_reg_n_0_[27]),
        .I2(recv_done1[26]),
        .I3(byte_num_reg_n_0_[26]),
        .O(recv_done_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    recv_done_i_7
       (.I0(recv_done1[25]),
        .I1(byte_num_reg_n_0_[25]),
        .I2(recv_done1[24]),
        .I3(byte_num_reg_n_0_[24]),
        .O(recv_done_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_8
       (.I0(byte_num_reg_n_0_[31]),
        .I1(recv_done1[31]),
        .I2(byte_num_reg_n_0_[30]),
        .I3(recv_done1[30]),
        .O(recv_done_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    recv_done_i_9
       (.I0(byte_num_reg_n_0_[29]),
        .I1(recv_done1[29]),
        .I2(byte_num_reg_n_0_[28]),
        .I3(recv_done1[28]),
        .O(recv_done_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    recv_done_reg
       (.C(rdStat_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(recv_done_i_1_n_0),
        .Q(recv_done_reg_n_0));
  CARRY4 recv_done_reg_i_12
       (.CI(recv_done_reg_i_21_n_0),
        .CO({recv_done_reg_i_12_n_0,recv_done_reg_i_12_n_1,recv_done_reg_i_12_n_2,recv_done_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({recv_done_i_22_n_0,recv_done_i_23_n_0,recv_done_i_24_n_0,recv_done_i_25_n_0}),
        .O(NLW_recv_done_reg_i_12_O_UNCONNECTED[3:0]),
        .S({recv_done_i_26_n_0,recv_done_i_27_n_0,recv_done_i_28_n_0,recv_done_i_29_n_0}));
  CARRY4 recv_done_reg_i_2
       (.CI(recv_done_reg_i_3_n_0),
        .CO({recv_done0,recv_done_reg_i_2_n_1,recv_done_reg_i_2_n_2,recv_done_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({recv_done_i_4_n_0,recv_done_i_5_n_0,recv_done_i_6_n_0,recv_done_i_7_n_0}),
        .O(NLW_recv_done_reg_i_2_O_UNCONNECTED[3:0]),
        .S({recv_done_i_8_n_0,recv_done_i_9_n_0,recv_done_i_10_n_0,recv_done_i_11_n_0}));
  CARRY4 recv_done_reg_i_21
       (.CI(1'b0),
        .CO({recv_done_reg_i_21_n_0,recv_done_reg_i_21_n_1,recv_done_reg_i_21_n_2,recv_done_reg_i_21_n_3}),
        .CYINIT(1'b1),
        .DI({recv_done_i_30_n_0,recv_done_i_31_n_0,recv_done_i_32_n_0,recv_done_i_33_n_0}),
        .O(NLW_recv_done_reg_i_21_O_UNCONNECTED[3:0]),
        .S({recv_done_i_34_n_0,recv_done_i_35_n_0,recv_done_i_36_n_0,recv_done_i_37_n_0}));
  CARRY4 recv_done_reg_i_3
       (.CI(recv_done_reg_i_12_n_0),
        .CO({recv_done_reg_i_3_n_0,recv_done_reg_i_3_n_1,recv_done_reg_i_3_n_2,recv_done_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({recv_done_i_13_n_0,recv_done_i_14_n_0,recv_done_i_15_n_0,recv_done_i_16_n_0}),
        .O(NLW_recv_done_reg_i_3_O_UNCONNECTED[3:0]),
        .S({recv_done_i_17_n_0,recv_done_i_18_n_0,recv_done_i_19_n_0,recv_done_i_20_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    \rwait_cnt[0]_i_1 
       (.I0(rwait_cnt_reg_n_0_[0]),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[10]_i_1 
       (.I0(\rwait_cnt_reg[12]_i_2_n_6 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[11]_i_1 
       (.I0(\rwait_cnt_reg[12]_i_2_n_5 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[12]_i_1 
       (.I0(\rwait_cnt_reg[12]_i_2_n_4 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[13]_i_1 
       (.I0(\rwait_cnt_reg[15]_i_3_n_7 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[14]_i_1 
       (.I0(\rwait_cnt_reg[15]_i_3_n_6 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[14]));
  LUT3 #(
    .INIT(8'h10)) 
    \rwait_cnt[15]_i_1 
       (.I0(RCS_reg_n_0_[1]),
        .I1(RCS_reg_n_0_[0]),
        .I2(RCS_reg_n_0_[2]),
        .O(\rwait_cnt[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[15]_i_2 
       (.I0(\rwait_cnt_reg[15]_i_3_n_5 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[15]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \rwait_cnt[15]_i_4 
       (.I0(\rwait_cnt[15]_i_5_n_0 ),
        .I1(rwait_cnt_reg_n_0_[2]),
        .I2(rwait_cnt_reg_n_0_[5]),
        .I3(rwait_cnt_reg_n_0_[8]),
        .I4(rwait_cnt_reg_n_0_[11]),
        .I5(\rwait_cnt[15]_i_6_n_0 ),
        .O(\rwait_cnt[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rwait_cnt[15]_i_5 
       (.I0(rwait_cnt_reg_n_0_[4]),
        .I1(rwait_cnt_reg_n_0_[10]),
        .I2(rwait_cnt_reg_n_0_[7]),
        .I3(rwait_cnt_reg_n_0_[15]),
        .O(\rwait_cnt[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \rwait_cnt[15]_i_6 
       (.I0(rwait_cnt_reg_n_0_[12]),
        .I1(rwait_cnt_reg_n_0_[1]),
        .I2(rwait_cnt_reg_n_0_[0]),
        .I3(rwait_cnt_reg_n_0_[6]),
        .I4(\rwait_cnt[15]_i_7_n_0 ),
        .O(\rwait_cnt[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rwait_cnt[15]_i_7 
       (.I0(rwait_cnt_reg_n_0_[14]),
        .I1(rwait_cnt_reg_n_0_[13]),
        .I2(rwait_cnt_reg_n_0_[3]),
        .I3(rwait_cnt_reg_n_0_[9]),
        .O(\rwait_cnt[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[1]_i_1 
       (.I0(\rwait_cnt_reg[4]_i_2_n_7 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[2]_i_1 
       (.I0(\rwait_cnt_reg[4]_i_2_n_6 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[3]_i_1 
       (.I0(\rwait_cnt_reg[4]_i_2_n_5 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[4]_i_1 
       (.I0(\rwait_cnt_reg[4]_i_2_n_4 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[5]_i_1 
       (.I0(\rwait_cnt_reg[8]_i_2_n_7 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[6]_i_1 
       (.I0(\rwait_cnt_reg[8]_i_2_n_6 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[7]_i_1 
       (.I0(\rwait_cnt_reg[8]_i_2_n_5 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[8]_i_1 
       (.I0(\rwait_cnt_reg[8]_i_2_n_4 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rwait_cnt[9]_i_1 
       (.I0(\rwait_cnt_reg[12]_i_2_n_7 ),
        .I1(\rwait_cnt[15]_i_4_n_0 ),
        .O(rwait_cnt[9]));
  FDPE #(
    .INIT(1'b1)) 
    \rwait_cnt_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .D(rwait_cnt[0]),
        .PRE(upg_rst_i_IBUF),
        .Q(rwait_cnt_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[10] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[10]),
        .Q(rwait_cnt_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[11] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[11]),
        .Q(rwait_cnt_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[12] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[12]),
        .Q(rwait_cnt_reg_n_0_[12]));
  CARRY4 \rwait_cnt_reg[12]_i_2 
       (.CI(\rwait_cnt_reg[8]_i_2_n_0 ),
        .CO({\rwait_cnt_reg[12]_i_2_n_0 ,\rwait_cnt_reg[12]_i_2_n_1 ,\rwait_cnt_reg[12]_i_2_n_2 ,\rwait_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rwait_cnt_reg[12]_i_2_n_4 ,\rwait_cnt_reg[12]_i_2_n_5 ,\rwait_cnt_reg[12]_i_2_n_6 ,\rwait_cnt_reg[12]_i_2_n_7 }),
        .S(rwait_cnt_reg_n_0_[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[13] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[13]),
        .Q(rwait_cnt_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[14] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[14]),
        .Q(rwait_cnt_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[15] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[15]),
        .Q(rwait_cnt_reg_n_0_[15]));
  CARRY4 \rwait_cnt_reg[15]_i_3 
       (.CI(\rwait_cnt_reg[12]_i_2_n_0 ),
        .CO({\NLW_rwait_cnt_reg[15]_i_3_CO_UNCONNECTED [3:2],\rwait_cnt_reg[15]_i_3_n_2 ,\rwait_cnt_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rwait_cnt_reg[15]_i_3_O_UNCONNECTED [3],\rwait_cnt_reg[15]_i_3_n_5 ,\rwait_cnt_reg[15]_i_3_n_6 ,\rwait_cnt_reg[15]_i_3_n_7 }),
        .S({1'b0,rwait_cnt_reg_n_0_[15:13]}));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[1]),
        .Q(rwait_cnt_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[2]),
        .Q(rwait_cnt_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[3]),
        .Q(rwait_cnt_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[4] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[4]),
        .Q(rwait_cnt_reg_n_0_[4]));
  CARRY4 \rwait_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\rwait_cnt_reg[4]_i_2_n_0 ,\rwait_cnt_reg[4]_i_2_n_1 ,\rwait_cnt_reg[4]_i_2_n_2 ,\rwait_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(rwait_cnt_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rwait_cnt_reg[4]_i_2_n_4 ,\rwait_cnt_reg[4]_i_2_n_5 ,\rwait_cnt_reg[4]_i_2_n_6 ,\rwait_cnt_reg[4]_i_2_n_7 }),
        .S(rwait_cnt_reg_n_0_[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[5] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[5]),
        .Q(rwait_cnt_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[6] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[6]),
        .Q(rwait_cnt_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[7] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[7]),
        .Q(rwait_cnt_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[8] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[8]),
        .Q(rwait_cnt_reg_n_0_[8]));
  CARRY4 \rwait_cnt_reg[8]_i_2 
       (.CI(\rwait_cnt_reg[4]_i_2_n_0 ),
        .CO({\rwait_cnt_reg[8]_i_2_n_0 ,\rwait_cnt_reg[8]_i_2_n_1 ,\rwait_cnt_reg[8]_i_2_n_2 ,\rwait_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rwait_cnt_reg[8]_i_2_n_4 ,\rwait_cnt_reg[8]_i_2_n_5 ,\rwait_cnt_reg[8]_i_2_n_6 ,\rwait_cnt_reg[8]_i_2_n_7 }),
        .S(rwait_cnt_reg_n_0_[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \rwait_cnt_reg[9] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\rwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(rwait_cnt[9]),
        .Q(rwait_cnt_reg_n_0_[9]));
  LUT3 #(
    .INIT(8'h38)) 
    rx_done_i_1
       (.I0(recv_done_reg_n_0),
        .I1(rx_done),
        .I2(rx_done_reg_n_0),
        .O(rx_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(rdStat_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(rx_done_i_1_n_0),
        .Q(rx_done_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \s_axi_araddr[3]_i_1 
       (.I0(rdStat),
        .I1(RCS_reg_n_0_[2]),
        .I2(upg_rst_i_IBUF),
        .I3(RCS_reg_n_0_[1]),
        .I4(RCS_reg_n_0_[0]),
        .I5(s_axi_araddr_reg_n_0_),
        .O(\s_axi_araddr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_araddr_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\s_axi_araddr[3]_i_1_n_0 ),
        .Q(s_axi_araddr_reg_n_0_),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7373000C4040)) 
    s_axi_arvalid_i_1
       (.I0(s_axi_arready),
        .I1(s_axi_arvalid_i_2_n_0),
        .I2(RCS_reg_n_0_[1]),
        .I3(s_axi_arvalid_i_3_n_0),
        .I4(RCS_reg_n_0_[0]),
        .I5(s_axi_arvalid),
        .O(s_axi_arvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_arvalid_i_2
       (.I0(upg_rst_i_IBUF),
        .I1(RCS_reg_n_0_[2]),
        .O(s_axi_arvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_arvalid_i_3
       (.I0(rdStat),
        .I1(statReg_reg_n_0_),
        .O(s_axi_arvalid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_arvalid_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_arvalid_i_1_n_0),
        .Q(s_axi_arvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \s_axi_awaddr[3]_i_1 
       (.I0(initFlag),
        .I1(WCS_reg_n_0_[2]),
        .I2(upg_rst_i_IBUF),
        .I3(WCS_reg_n_0_[0]),
        .I4(WCS_reg_n_0_[1]),
        .I5(s_axi_awaddr_reg_n_0_),
        .O(\s_axi_awaddr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_awaddr_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\s_axi_awaddr[3]_i_1_n_0 ),
        .Q(s_axi_awaddr_reg_n_0_),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF558A00)) 
    s_axi_awvalid_i_1
       (.I0(s_axi_awvalid_i_2_n_0),
        .I1(uart_wen5_out),
        .I2(initFlag),
        .I3(WCS_reg_n_0_[0]),
        .I4(s_axi_wvalid),
        .O(s_axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000F0008000F)) 
    s_axi_awvalid_i_2
       (.I0(s_axi_awready),
        .I1(s_axi_wready),
        .I2(upg_rst_i_IBUF),
        .I3(WCS_reg_n_0_[2]),
        .I4(WCS_reg_n_0_[1]),
        .I5(WCS_reg_n_0_[0]),
        .O(s_axi_awvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_awvalid_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(s_axi_awvalid_i_1_n_0),
        .Q(s_axi_wvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \s_axi_wdata[0]_i_1 
       (.I0(WCS_reg_n_0_[0]),
        .I1(\s_axi_wdata[4]_i_4_n_0 ),
        .I2(\s_axi_wdata[0]_i_2_n_0 ),
        .I3(\s_axi_wdata[0]_i_3_n_0 ),
        .I4(\s_axi_wdata[1]_i_4_n_0 ),
        .I5(initFlag),
        .O(\s_axi_wdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004B560AB000)) 
    \s_axi_wdata[0]_i_2 
       (.I0(msg_indx_reg__0[1]),
        .I1(msg_indx_reg__0[0]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[3]),
        .I4(msg_indx_reg__0[4]),
        .I5(msg_indx_reg__0[5]),
        .O(\s_axi_wdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABEFABEFABEF0000)) 
    \s_axi_wdata[0]_i_3 
       (.I0(\s_axi_wdata[4]_i_8_n_0 ),
        .I1(\s_axi_wdata[4]_i_7_n_0 ),
        .I2(bn_ascii_reg_n_0_[0]),
        .I3(data6[0]),
        .I4(\s_axi_wdata[0]_i_4_n_0 ),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000037F7FFFF37F7)) 
    \s_axi_wdata[0]_i_4 
       (.I0(bn_ascii_reg_n_0_[56]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[0]),
        .I3(bn_ascii_reg_n_0_[48]),
        .I4(msg_indx_reg__0[2]),
        .I5(\s_axi_wdata[0]_i_5_n_0 ),
        .O(\s_axi_wdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_wdata[0]_i_5 
       (.I0(data5[0]),
        .I1(data4[0]),
        .I2(msg_indx_reg__0[1]),
        .I3(data3[0]),
        .I4(msg_indx_reg__0[0]),
        .I5(data2[0]),
        .O(\s_axi_wdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \s_axi_wdata[1]_i_1 
       (.I0(WCS_reg_n_0_[0]),
        .I1(\s_axi_wdata[4]_i_4_n_0 ),
        .I2(\s_axi_wdata[1]_i_2_n_0 ),
        .I3(\s_axi_wdata[1]_i_3_n_0 ),
        .I4(\s_axi_wdata[1]_i_4_n_0 ),
        .I5(initFlag),
        .O(\s_axi_wdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F008800441500)) 
    \s_axi_wdata[1]_i_2 
       (.I0(msg_indx_reg__0[1]),
        .I1(msg_indx_reg__0[0]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[5]),
        .I4(msg_indx_reg__0[4]),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABEFABEFABEF0000)) 
    \s_axi_wdata[1]_i_3 
       (.I0(\s_axi_wdata[4]_i_8_n_0 ),
        .I1(\s_axi_wdata[4]_i_7_n_0 ),
        .I2(bn_ascii_reg_n_0_[1]),
        .I3(data6[1]),
        .I4(\s_axi_wdata[1]_i_5_n_0 ),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_axi_wdata[1]_i_4 
       (.I0(msg_indx_reg__1[7]),
        .I1(msg_indx_reg__1[6]),
        .I2(msg_indx_reg__0[5]),
        .I3(msg_indx_reg__0[4]),
        .O(\s_axi_wdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000057F757F7)) 
    \s_axi_wdata[1]_i_5 
       (.I0(msg_indx_reg__0[1]),
        .I1(bn_ascii_reg_n_0_[57]),
        .I2(msg_indx_reg__0[0]),
        .I3(bn_ascii_reg_n_0_[49]),
        .I4(\s_axi_wdata[1]_i_6_n_0 ),
        .I5(msg_indx_reg__0[2]),
        .O(\s_axi_wdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \s_axi_wdata[1]_i_6 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(msg_indx_reg__0[1]),
        .I3(data5[1]),
        .I4(msg_indx_reg__0[0]),
        .I5(data4[1]),
        .O(\s_axi_wdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4FFF44444444)) 
    \s_axi_wdata[2]_i_1 
       (.I0(\s_axi_wdata[4]_i_4_n_0 ),
        .I1(\s_axi_wdata[2]_i_2_n_0 ),
        .I2(\s_axi_wdata[2]_i_3_n_0 ),
        .I3(\s_axi_wdata[2]_i_4_n_0 ),
        .I4(msg_indx_reg__0[3]),
        .I5(\s_axi_wdata[1]_i_4_n_0 ),
        .O(\s_axi_wdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000047C6526000)) 
    \s_axi_wdata[2]_i_2 
       (.I0(msg_indx_reg__0[1]),
        .I1(msg_indx_reg__0[0]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[3]),
        .I4(msg_indx_reg__0[4]),
        .I5(msg_indx_reg__0[5]),
        .O(\s_axi_wdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF7FFFFFFFF)) 
    \s_axi_wdata[2]_i_3 
       (.I0(bn_ascii_reg_n_0_[2]),
        .I1(msg_indx_reg__0[0]),
        .I2(msg_indx_reg__0[1]),
        .I3(msg_indx_reg__0[2]),
        .I4(data6[2]),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000037F7FFFF37F7)) 
    \s_axi_wdata[2]_i_4 
       (.I0(bn_ascii_reg_n_0_[58]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[0]),
        .I3(bn_ascii_reg_n_0_[50]),
        .I4(msg_indx_reg__0[2]),
        .I5(\s_axi_wdata[2]_i_5_n_0 ),
        .O(\s_axi_wdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_wdata[2]_i_5 
       (.I0(data5[2]),
        .I1(data4[2]),
        .I2(msg_indx_reg__0[1]),
        .I3(data3[2]),
        .I4(msg_indx_reg__0[0]),
        .I5(data2[2]),
        .O(\s_axi_wdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4FFF44444444)) 
    \s_axi_wdata[3]_i_1 
       (.I0(\s_axi_wdata[4]_i_4_n_0 ),
        .I1(\s_axi_wdata[3]_i_2_n_0 ),
        .I2(\s_axi_wdata[3]_i_3_n_0 ),
        .I3(\s_axi_wdata[3]_i_4_n_0 ),
        .I4(msg_indx_reg__0[3]),
        .I5(\s_axi_wdata[1]_i_4_n_0 ),
        .O(\s_axi_wdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000046431202)) 
    \s_axi_wdata[3]_i_2 
       (.I0(msg_indx_reg__0[5]),
        .I1(msg_indx_reg__0[4]),
        .I2(msg_indx_reg__0[3]),
        .I3(msg_indx_reg__0[2]),
        .I4(msg_indx_reg__0[0]),
        .I5(msg_indx_reg__0[1]),
        .O(\s_axi_wdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF35FFFFFFFF)) 
    \s_axi_wdata[3]_i_3 
       (.I0(data6[3]),
        .I1(bn_ascii_reg_n_0_[3]),
        .I2(msg_indx_reg__0[0]),
        .I3(msg_indx_reg__0[1]),
        .I4(msg_indx_reg__0[2]),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000037F7FFFF37F7)) 
    \s_axi_wdata[3]_i_4 
       (.I0(bn_ascii_reg_n_0_[59]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[0]),
        .I3(bn_ascii_reg_n_0_[51]),
        .I4(msg_indx_reg__0[2]),
        .I5(\s_axi_wdata[3]_i_5_n_0 ),
        .O(\s_axi_wdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_wdata[3]_i_5 
       (.I0(data5[3]),
        .I1(data4[3]),
        .I2(msg_indx_reg__0[1]),
        .I3(data3[3]),
        .I4(msg_indx_reg__0[0]),
        .I5(data2[3]),
        .O(\s_axi_wdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100010101010101)) 
    \s_axi_wdata[4]_i_1 
       (.I0(WCS_reg_n_0_[1]),
        .I1(upg_rst_i_IBUF),
        .I2(WCS_reg_n_0_[2]),
        .I3(uart_wen5_out),
        .I4(initFlag),
        .I5(WCS_reg_n_0_[0]),
        .O(s_axi_wdata));
  LUT5 #(
    .INIT(32'hAA20AAAA)) 
    \s_axi_wdata[4]_i_2 
       (.I0(WCS_reg_n_0_[0]),
        .I1(\s_axi_wdata[4]_i_4_n_0 ),
        .I2(\s_axi_wdata[4]_i_5_n_0 ),
        .I3(\s_axi_wdata[4]_i_6_n_0 ),
        .I4(initFlag),
        .O(\s_axi_wdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \s_axi_wdata[4]_i_3 
       (.I0(upg_done_o_i_2_n_0),
        .I1(uart_wen_reg_n_0),
        .I2(rx_done_reg_n_0),
        .O(uart_wen5_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h02A8)) 
    \s_axi_wdata[4]_i_4 
       (.I0(\s_axi_wdata[1]_i_4_n_0 ),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000009D584FF)) 
    \s_axi_wdata[4]_i_5 
       (.I0(msg_indx_reg__0[1]),
        .I1(msg_indx_reg__0[0]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[4]),
        .I4(msg_indx_reg__0[3]),
        .I5(msg_indx_reg__0[5]),
        .O(\s_axi_wdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88888888AAA888A8)) 
    \s_axi_wdata[4]_i_6 
       (.I0(\s_axi_wdata[1]_i_4_n_0 ),
        .I1(\s_axi_wdata[5]_i_4_n_0 ),
        .I2(bn_ascii_reg_n_0_[5]),
        .I3(\s_axi_wdata[4]_i_7_n_0 ),
        .I4(data6[5]),
        .I5(\s_axi_wdata[4]_i_8_n_0 ),
        .O(\s_axi_wdata[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \s_axi_wdata[4]_i_7 
       (.I0(msg_indx_reg__0[2]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[0]),
        .O(\s_axi_wdata[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \s_axi_wdata[4]_i_8 
       (.I0(msg_indx_reg__0[3]),
        .I1(msg_indx_reg__0[2]),
        .I2(msg_indx_reg__0[1]),
        .O(\s_axi_wdata[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    \s_axi_wdata[5]_i_1 
       (.I0(\s_axi_wdata[4]_i_4_n_0 ),
        .I1(\s_axi_wdata[5]_i_2_n_0 ),
        .I2(\s_axi_wdata[5]_i_3_n_0 ),
        .I3(\s_axi_wdata[5]_i_4_n_0 ),
        .I4(\s_axi_wdata[1]_i_4_n_0 ),
        .O(\s_axi_wdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000FFF7FFFFF)) 
    \s_axi_wdata[5]_i_2 
       (.I0(msg_indx_reg__0[0]),
        .I1(msg_indx_reg__0[1]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[3]),
        .I4(msg_indx_reg__0[4]),
        .I5(msg_indx_reg__0[5]),
        .O(\s_axi_wdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF35FFFFFFFF)) 
    \s_axi_wdata[5]_i_3 
       (.I0(data6[5]),
        .I1(bn_ascii_reg_n_0_[5]),
        .I2(msg_indx_reg__0[0]),
        .I3(msg_indx_reg__0[1]),
        .I4(msg_indx_reg__0[2]),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0455)) 
    \s_axi_wdata[5]_i_4 
       (.I0(msg_indx_reg__0[3]),
        .I1(msg_indx_reg__0[2]),
        .I2(\s_axi_wdata[5]_i_5_n_0 ),
        .I3(\s_axi_wdata[5]_i_6_n_0 ),
        .O(\s_axi_wdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \s_axi_wdata[5]_i_5 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(msg_indx_reg__0[1]),
        .I3(data5[5]),
        .I4(msg_indx_reg__0[0]),
        .I5(data4[5]),
        .O(\s_axi_wdata[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFF47FF)) 
    \s_axi_wdata[5]_i_6 
       (.I0(bn_ascii_reg_n_0_[53]),
        .I1(msg_indx_reg__0[0]),
        .I2(bn_ascii_reg_n_0_[61]),
        .I3(msg_indx_reg__0[1]),
        .I4(msg_indx_reg__0[2]),
        .O(\s_axi_wdata[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    \s_axi_wdata[6]_i_1 
       (.I0(WCS_reg_n_0_[2]),
        .I1(upg_rst_i_IBUF),
        .I2(WCS_reg_n_0_[1]),
        .I3(WCS_reg_n_0_[0]),
        .I4(initFlag),
        .O(\s_axi_wdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3A3A3A0A)) 
    \s_axi_wdata[6]_i_2 
       (.I0(\s_axi_wdata[6]_i_3_n_0 ),
        .I1(\s_axi_wdata[6]_i_4_n_0 ),
        .I2(\s_axi_wdata[4]_i_4_n_0 ),
        .I3(msg_indx_reg__0[3]),
        .I4(\s_axi_wdata[6]_i_5_n_0 ),
        .O(\s_axi_wdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00DF00F8009E0704)) 
    \s_axi_wdata[6]_i_3 
       (.I0(msg_indx_reg__0[1]),
        .I1(msg_indx_reg__0[0]),
        .I2(msg_indx_reg__0[2]),
        .I3(msg_indx_reg__0[5]),
        .I4(msg_indx_reg__0[4]),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000005300000000)) 
    \s_axi_wdata[6]_i_4 
       (.I0(bn_ascii_reg_n_0_[6]),
        .I1(data6[6]),
        .I2(msg_indx_reg__0[0]),
        .I3(msg_indx_reg__0[1]),
        .I4(msg_indx_reg__0[2]),
        .I5(msg_indx_reg__0[3]),
        .O(\s_axi_wdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFEAE)) 
    \s_axi_wdata[6]_i_5 
       (.I0(\s_axi_wdata[6]_i_6_n_0 ),
        .I1(data2[6]),
        .I2(msg_indx_reg__0[0]),
        .I3(data3[6]),
        .I4(msg_indx_reg__0[1]),
        .I5(\s_axi_wdata[6]_i_7_n_0 ),
        .O(\s_axi_wdata[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8A80FFFF)) 
    \s_axi_wdata[6]_i_6 
       (.I0(msg_indx_reg__0[1]),
        .I1(data5[6]),
        .I2(msg_indx_reg__0[0]),
        .I3(data4[6]),
        .I4(msg_indx_reg__0[2]),
        .O(\s_axi_wdata[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00103010)) 
    \s_axi_wdata[6]_i_7 
       (.I0(bn_ascii_reg_n_0_[62]),
        .I1(msg_indx_reg__0[2]),
        .I2(msg_indx_reg__0[1]),
        .I3(msg_indx_reg__0[0]),
        .I4(bn_ascii_reg_n_0_[54]),
        .O(\s_axi_wdata[6]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[0]_i_1_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[1]_i_1_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[2]_i_1_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[2]),
        .R(\s_axi_wdata[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[3]_i_1_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[3]),
        .R(\s_axi_wdata[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[4] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[4]_i_2_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[5] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[5]_i_1_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[5]),
        .R(\s_axi_wdata[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wdata_reg[6] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wdata[6]_i_2_n_0 ),
        .Q(s_axi_wdata_reg_n_0_[6]),
        .R(\s_axi_wdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2220AAAA)) 
    \s_axi_wstrb[3]_i_1 
       (.I0(WCS_reg_n_0_[0]),
        .I1(upg_done_o_i_2_n_0),
        .I2(uart_wen_reg_n_0),
        .I3(rx_done_reg_n_0),
        .I4(initFlag),
        .O(\s_axi_wstrb[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_wstrb_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(s_axi_wdata),
        .D(\s_axi_wstrb[3]_i_1_n_0 ),
        .Q(s_axi_wstrb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \statReg[0]_i_1 
       (.I0(s_axi_rdata[0]),
        .I1(\statReg[0]_i_2_n_0 ),
        .I2(rdStat),
        .I3(RCS_reg_n_0_[2]),
        .I4(statReg_reg_n_0_),
        .O(\statReg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \statReg[0]_i_2 
       (.I0(RCS_reg_n_0_[0]),
        .I1(RCS_reg_n_0_[1]),
        .I2(s_axi_rvalid),
        .O(\statReg[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \statReg_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(\statReg[0]_i_1_n_0 ),
        .Q(statReg_reg_n_0_));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \uart_rdat[7]_i_1 
       (.I0(s_axi_rvalid),
        .I1(RCS_reg_n_0_[1]),
        .I2(RCS_reg_n_0_[0]),
        .I3(upg_rst_i_IBUF),
        .I4(RCS_reg_n_0_[2]),
        .I5(rdStat),
        .O(uart_rdat));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[0]),
        .Q(uart_rdat_reg_n_0_[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[1]),
        .Q(uart_rdat_reg_n_0_[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[2]),
        .Q(uart_rdat_reg_n_0_[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[3]),
        .Q(uart_rdat_reg_n_0_[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[4] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[4]),
        .Q(uart_rdat_reg_n_0_[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[5] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[5]),
        .Q(uart_rdat_reg_n_0_[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[6] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[6]),
        .Q(uart_rdat_reg_n_0_[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \uart_rdat_reg[7] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(uart_rdat),
        .D(s_axi_rdata[7]),
        .Q(uart_rdat_reg_n_0_[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    uart_wen_i_1
       (.I0(uart_wen5_out),
        .I1(upg_rst_i_IBUF),
        .I2(WCS_reg_n_0_[0]),
        .I3(WCS_reg_n_0_[1]),
        .I4(WCS_reg_n_0_[2]),
        .I5(uart_wen_reg_n_0),
        .O(uart_wen_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    uart_wen_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(upg_rst_i_IBUF),
        .D(uart_wen_i_1_n_0),
        .Q(uart_wen_reg_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \upg_adr_o[14]_i_1 
       (.I0(\disp[2]_i_2_n_0 ),
        .I1(upg_wen_o_i_4_n_0),
        .I2(upg_rst_i_IBUF),
        .O(\upg_adr_o[14]_i_1_n_0 ));
  OBUF \upg_adr_o_OBUF[0]_inst 
       (.I(upg_adr_o_OBUF[0]),
        .O(upg_adr_o[0]));
  OBUF \upg_adr_o_OBUF[10]_inst 
       (.I(upg_adr_o_OBUF[10]),
        .O(upg_adr_o[10]));
  OBUF \upg_adr_o_OBUF[11]_inst 
       (.I(upg_adr_o_OBUF[11]),
        .O(upg_adr_o[11]));
  OBUF \upg_adr_o_OBUF[12]_inst 
       (.I(upg_adr_o_OBUF[12]),
        .O(upg_adr_o[12]));
  OBUF \upg_adr_o_OBUF[13]_inst 
       (.I(upg_adr_o_OBUF[13]),
        .O(upg_adr_o[13]));
  OBUF \upg_adr_o_OBUF[14]_inst 
       (.I(upg_adr_o_OBUF[14]),
        .O(upg_adr_o[14]));
  OBUF \upg_adr_o_OBUF[1]_inst 
       (.I(upg_adr_o_OBUF[1]),
        .O(upg_adr_o[1]));
  OBUF \upg_adr_o_OBUF[2]_inst 
       (.I(upg_adr_o_OBUF[2]),
        .O(upg_adr_o[2]));
  OBUF \upg_adr_o_OBUF[3]_inst 
       (.I(upg_adr_o_OBUF[3]),
        .O(upg_adr_o[3]));
  OBUF \upg_adr_o_OBUF[4]_inst 
       (.I(upg_adr_o_OBUF[4]),
        .O(upg_adr_o[4]));
  OBUF \upg_adr_o_OBUF[5]_inst 
       (.I(upg_adr_o_OBUF[5]),
        .O(upg_adr_o[5]));
  OBUF \upg_adr_o_OBUF[6]_inst 
       (.I(upg_adr_o_OBUF[6]),
        .O(upg_adr_o[6]));
  OBUF \upg_adr_o_OBUF[7]_inst 
       (.I(upg_adr_o_OBUF[7]),
        .O(upg_adr_o[7]));
  OBUF \upg_adr_o_OBUF[8]_inst 
       (.I(upg_adr_o_OBUF[8]),
        .O(upg_adr_o[8]));
  OBUF \upg_adr_o_OBUF[9]_inst 
       (.I(upg_adr_o_OBUF[9]),
        .O(upg_adr_o[9]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[0] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[0]),
        .Q(upg_adr_o_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[10] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[10]),
        .Q(upg_adr_o_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[11] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[11]),
        .Q(upg_adr_o_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[12] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[12]),
        .Q(upg_adr_o_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[13] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[13]),
        .Q(upg_adr_o_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[14] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[14]),
        .Q(upg_adr_o_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[1] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[1]),
        .Q(upg_adr_o_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[2] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[2]),
        .Q(upg_adr_o_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[3] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[3]),
        .Q(upg_adr_o_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[4] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[4]),
        .Q(upg_adr_o_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[5] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[5]),
        .Q(upg_adr_o_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[6] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[6]),
        .Q(upg_adr_o_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[7] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[7]),
        .Q(upg_adr_o_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[8] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[8]),
        .Q(upg_adr_o_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_adr_o_reg[9] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(p_0_in[9]),
        .Q(upg_adr_o_OBUF[9]));
  BUFG upg_clk_i_IBUF_BUFG_inst
       (.I(upg_clk_i_IBUF),
        .O(upg_clk_i_IBUF_BUFG));
  IBUF upg_clk_i_IBUF_inst
       (.I(upg_clk_i),
        .O(upg_clk_i_IBUF));
  OBUF upg_clk_o_OBUF_inst
       (.I(upg_clk_o_OBUF),
        .O(upg_clk_o));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    upg_clk_o_OBUF_inst_i_1
       (.I0(disp_reg_n_0_[1]),
        .I1(upg_clk_o_OBUF_inst_i_2_n_0),
        .I2(disp_reg_n_0_[0]),
        .I3(disp_reg_n_0_[7]),
        .I4(disp_reg_n_0_[6]),
        .O(upg_clk_o_OBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    upg_clk_o_OBUF_inst_i_2
       (.I0(disp_reg_n_0_[5]),
        .I1(disp_reg_n_0_[2]),
        .I2(disp_reg_n_0_[4]),
        .I3(disp_reg_n_0_[3]),
        .O(upg_clk_o_OBUF_inst_i_2_n_0));
  OBUF \upg_dat_o_OBUF[0]_inst 
       (.I(upg_dat_o_OBUF[0]),
        .O(upg_dat_o[0]));
  OBUF \upg_dat_o_OBUF[10]_inst 
       (.I(upg_dat_o_OBUF[10]),
        .O(upg_dat_o[10]));
  OBUF \upg_dat_o_OBUF[11]_inst 
       (.I(upg_dat_o_OBUF[11]),
        .O(upg_dat_o[11]));
  OBUF \upg_dat_o_OBUF[12]_inst 
       (.I(upg_dat_o_OBUF[12]),
        .O(upg_dat_o[12]));
  OBUF \upg_dat_o_OBUF[13]_inst 
       (.I(upg_dat_o_OBUF[13]),
        .O(upg_dat_o[13]));
  OBUF \upg_dat_o_OBUF[14]_inst 
       (.I(upg_dat_o_OBUF[14]),
        .O(upg_dat_o[14]));
  OBUF \upg_dat_o_OBUF[15]_inst 
       (.I(upg_dat_o_OBUF[15]),
        .O(upg_dat_o[15]));
  OBUF \upg_dat_o_OBUF[16]_inst 
       (.I(upg_dat_o_OBUF[16]),
        .O(upg_dat_o[16]));
  OBUF \upg_dat_o_OBUF[17]_inst 
       (.I(upg_dat_o_OBUF[17]),
        .O(upg_dat_o[17]));
  OBUF \upg_dat_o_OBUF[18]_inst 
       (.I(upg_dat_o_OBUF[18]),
        .O(upg_dat_o[18]));
  OBUF \upg_dat_o_OBUF[19]_inst 
       (.I(upg_dat_o_OBUF[19]),
        .O(upg_dat_o[19]));
  OBUF \upg_dat_o_OBUF[1]_inst 
       (.I(upg_dat_o_OBUF[1]),
        .O(upg_dat_o[1]));
  OBUF \upg_dat_o_OBUF[20]_inst 
       (.I(upg_dat_o_OBUF[20]),
        .O(upg_dat_o[20]));
  OBUF \upg_dat_o_OBUF[21]_inst 
       (.I(upg_dat_o_OBUF[21]),
        .O(upg_dat_o[21]));
  OBUF \upg_dat_o_OBUF[22]_inst 
       (.I(upg_dat_o_OBUF[22]),
        .O(upg_dat_o[22]));
  OBUF \upg_dat_o_OBUF[23]_inst 
       (.I(upg_dat_o_OBUF[23]),
        .O(upg_dat_o[23]));
  OBUF \upg_dat_o_OBUF[24]_inst 
       (.I(upg_dat_o_OBUF[24]),
        .O(upg_dat_o[24]));
  OBUF \upg_dat_o_OBUF[25]_inst 
       (.I(upg_dat_o_OBUF[25]),
        .O(upg_dat_o[25]));
  OBUF \upg_dat_o_OBUF[26]_inst 
       (.I(upg_dat_o_OBUF[26]),
        .O(upg_dat_o[26]));
  OBUF \upg_dat_o_OBUF[27]_inst 
       (.I(upg_dat_o_OBUF[27]),
        .O(upg_dat_o[27]));
  OBUF \upg_dat_o_OBUF[28]_inst 
       (.I(upg_dat_o_OBUF[28]),
        .O(upg_dat_o[28]));
  OBUF \upg_dat_o_OBUF[29]_inst 
       (.I(upg_dat_o_OBUF[29]),
        .O(upg_dat_o[29]));
  OBUF \upg_dat_o_OBUF[2]_inst 
       (.I(upg_dat_o_OBUF[2]),
        .O(upg_dat_o[2]));
  OBUF \upg_dat_o_OBUF[30]_inst 
       (.I(upg_dat_o_OBUF[30]),
        .O(upg_dat_o[30]));
  OBUF \upg_dat_o_OBUF[31]_inst 
       (.I(upg_dat_o_OBUF[31]),
        .O(upg_dat_o[31]));
  OBUF \upg_dat_o_OBUF[3]_inst 
       (.I(upg_dat_o_OBUF[3]),
        .O(upg_dat_o[3]));
  OBUF \upg_dat_o_OBUF[4]_inst 
       (.I(upg_dat_o_OBUF[4]),
        .O(upg_dat_o[4]));
  OBUF \upg_dat_o_OBUF[5]_inst 
       (.I(upg_dat_o_OBUF[5]),
        .O(upg_dat_o[5]));
  OBUF \upg_dat_o_OBUF[6]_inst 
       (.I(upg_dat_o_OBUF[6]),
        .O(upg_dat_o[6]));
  OBUF \upg_dat_o_OBUF[7]_inst 
       (.I(upg_dat_o_OBUF[7]),
        .O(upg_dat_o[7]));
  OBUF \upg_dat_o_OBUF[8]_inst 
       (.I(upg_dat_o_OBUF[8]),
        .O(upg_dat_o[8]));
  OBUF \upg_dat_o_OBUF[9]_inst 
       (.I(upg_dat_o_OBUF[9]),
        .O(upg_dat_o[9]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[0] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[0]),
        .Q(upg_dat_o_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[10] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[2]),
        .Q(upg_dat_o_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[11] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[3]),
        .Q(upg_dat_o_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[12] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[4]),
        .Q(upg_dat_o_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[13] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[5]),
        .Q(upg_dat_o_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[14] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[6]),
        .Q(upg_dat_o_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[15] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[7]),
        .Q(upg_dat_o_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[16] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[8]),
        .Q(upg_dat_o_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[17] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[9]),
        .Q(upg_dat_o_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[18] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[10]),
        .Q(upg_dat_o_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[19] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[11]),
        .Q(upg_dat_o_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[1] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[1]),
        .Q(upg_dat_o_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[20] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[12]),
        .Q(upg_dat_o_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[21] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[13]),
        .Q(upg_dat_o_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[22] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[14]),
        .Q(upg_dat_o_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[23] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[15]),
        .Q(upg_dat_o_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[24] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[16]),
        .Q(upg_dat_o_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[25] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[17]),
        .Q(upg_dat_o_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[26] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[18]),
        .Q(upg_dat_o_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[27] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[19]),
        .Q(upg_dat_o_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[28] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[20]),
        .Q(upg_dat_o_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[29] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[21]),
        .Q(upg_dat_o_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[2] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[2]),
        .Q(upg_dat_o_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[30] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[22]),
        .Q(upg_dat_o_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[31] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[23]),
        .Q(upg_dat_o_OBUF[31]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[3] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[3]),
        .Q(upg_dat_o_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[4] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[4]),
        .Q(upg_dat_o_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[5] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[5]),
        .Q(upg_dat_o_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[6] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[6]),
        .Q(upg_dat_o_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[7] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(uart_rdat_reg_n_0_[7]),
        .Q(upg_dat_o_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[8] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[0]),
        .Q(upg_dat_o_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \upg_dat_o_reg[9] 
       (.C(rdStat_BUFG),
        .CE(\upg_adr_o[14]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(dbuf[1]),
        .Q(upg_dat_o_OBUF[9]));
  OBUF upg_done_o_OBUF_inst
       (.I(upg_done_o_OBUF),
        .O(upg_done_o));
  LUT4 #(
    .INIT(16'h0008)) 
    upg_done_o_i_1
       (.I0(upg_done_o_i_2_n_0),
        .I1(WCS_reg_n_0_[0]),
        .I2(WCS_reg_n_0_[1]),
        .I3(WCS_reg_n_0_[2]),
        .O(upg_done_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEEEEEEE)) 
    upg_done_o_i_2
       (.I0(msg_indx_reg__1[7]),
        .I1(msg_indx_reg__1[6]),
        .I2(msg_indx_reg__0[5]),
        .I3(msg_indx_reg__0[2]),
        .I4(msg_indx_reg__0[1]),
        .I5(upg_done_o_i_3_n_0),
        .O(upg_done_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    upg_done_o_i_3
       (.I0(msg_indx_reg__0[3]),
        .I1(msg_indx_reg__0[4]),
        .O(upg_done_o_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    upg_done_o_reg
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(upg_done_o_i_1_n_0),
        .CLR(upg_rst_i_IBUF),
        .D(upg_done_o_i_2_n_0),
        .Q(upg_done_o_OBUF));
  IBUF upg_rst_i_IBUF_inst
       (.I(upg_rst_i),
        .O(upg_rst_i_IBUF));
  IBUF upg_rx_i_IBUF_inst
       (.I(upg_rx_i),
        .O(upg_rx_i_IBUF));
  OBUF upg_tx_o_OBUF_inst
       (.I(upg_tx_o_OBUF),
        .O(upg_tx_o));
  OBUF upg_wen_o_OBUF_inst
       (.I(upg_wen_o_OBUF),
        .O(upg_wen_o));
  LUT4 #(
    .INIT(16'hAAAB)) 
    upg_wen_o_i_1
       (.I0(rx_done),
        .I1(upg_rst_i_IBUF),
        .I2(upg_wen_o_i_4_n_0),
        .I3(\disp[2]_i_2_n_0 ),
        .O(upg_wen_o2_out));
  LUT2 #(
    .INIT(4'h1)) 
    upg_wen_o_i_2
       (.I0(upg_wen_o_i_4_n_0),
        .I1(\disp[2]_i_2_n_0 ),
        .O(upg_wen_o_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000AAA8)) 
    upg_wen_o_i_3
       (.I0(upg_wen_o_i_5_n_0),
        .I1(disp_reg_n_0_[0]),
        .I2(disp_reg_n_0_[7]),
        .I3(disp_reg_n_0_[6]),
        .I4(upg_rst_i_IBUF),
        .O(rx_done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFBBB0)) 
    upg_wen_o_i_4
       (.I0(rx_done_reg_n_0),
        .I1(recv_done_reg_n_0),
        .I2(disp_reg_n_0_[2]),
        .I3(disp_reg_n_0_[3]),
        .I4(upg_wen_o_i_6_n_0),
        .O(upg_wen_o_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000002800000000)) 
    upg_wen_o_i_5
       (.I0(upg_clk_o_OBUF_inst_i_2_n_0),
        .I1(disp_reg_n_0_[0]),
        .I2(disp_reg_n_0_[1]),
        .I3(disp_reg_n_0_[7]),
        .I4(disp_reg_n_0_[6]),
        .I5(disp1),
        .O(upg_wen_o_i_5_n_0));
  LUT6 #(
    .INIT(64'hFF00FFFFFE00FEFE)) 
    upg_wen_o_i_6
       (.I0(disp_reg_n_0_[7]),
        .I1(disp_reg_n_0_[4]),
        .I2(disp_reg_n_0_[6]),
        .I3(rx_done_reg_n_0),
        .I4(recv_done_reg_n_0),
        .I5(disp_reg_n_0_[5]),
        .O(upg_wen_o_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    upg_wen_o_reg
       (.C(rdStat_BUFG),
        .CE(upg_wen_o2_out),
        .CLR(upg_rst_i_IBUF),
        .D(upg_wen_o_i_2_n_0),
        .Q(upg_wen_o_OBUF));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    wr_byte_len_done_i_1
       (.I0(wr_byte_len_done_reg_n_0),
        .I1(wr_byte_len_done_i_2_n_0),
        .I2(uart_rdat_reg_n_0_[4]),
        .I3(uart_rdat_reg_n_0_[3]),
        .I4(uart_rdat_reg_n_0_[7]),
        .I5(uart_rdat_reg_n_0_[0]),
        .O(wr_byte_len_done0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    wr_byte_len_done_i_2
       (.I0(uart_rdat_reg_n_0_[6]),
        .I1(uart_rdat_reg_n_0_[5]),
        .I2(uart_rdat_reg_n_0_[2]),
        .I3(uart_rdat_reg_n_0_[1]),
        .O(wr_byte_len_done_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    wr_byte_len_done_reg
       (.C(rdStat_BUFG),
        .CE(\byte_len[7]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wr_byte_len_done0),
        .Q(wr_byte_len_done_reg_n_0));
  LUT6 #(
    .INIT(64'h000000006AAA9555)) 
    wr_byte_num_done_i_1
       (.I0(len_cnt_reg__0[3]),
        .I1(len_cnt_reg__0[0]),
        .I2(len_cnt_reg__0[1]),
        .I3(len_cnt_reg__0[2]),
        .I4(byte_len_reg_n_0_[3]),
        .I5(wr_byte_num_done_i_2_n_0),
        .O(wr_byte_num_done0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF96F6FF6)) 
    wr_byte_num_done_i_2
       (.I0(len_cnt_reg__0[2]),
        .I1(byte_len_reg_n_0_[2]),
        .I2(byte_len_reg_n_0_[1]),
        .I3(len_cnt_reg__0[1]),
        .I4(len_cnt_reg__0[0]),
        .I5(wr_byte_num_done_i_3_n_0),
        .O(wr_byte_num_done_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFF)) 
    wr_byte_num_done_i_3
       (.I0(byte_len_reg_n_0_[5]),
        .I1(byte_len_reg_n_0_[4]),
        .I2(byte_len_reg_n_0_[7]),
        .I3(byte_len_reg_n_0_[6]),
        .I4(byte_len_reg_n_0_[0]),
        .I5(len_cnt_reg__0[0]),
        .O(wr_byte_num_done_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    wr_byte_num_done_reg
       (.C(rdStat_BUFG),
        .CE(wr_byte_num_done),
        .CLR(upg_rst_i_IBUF),
        .D(wr_byte_num_done0),
        .Q(wr_byte_num_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wwait_cnt[0]_i_1 
       (.I0(wwait_cnt_reg_n_0_[0]),
        .O(wwait_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[10]_i_1 
       (.I0(\wwait_cnt_reg[12]_i_2_n_6 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[11]_i_1 
       (.I0(\wwait_cnt_reg[12]_i_2_n_5 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[12]_i_1 
       (.I0(\wwait_cnt_reg[12]_i_2_n_4 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[13]_i_1 
       (.I0(\wwait_cnt_reg[15]_i_3_n_7 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[14]_i_1 
       (.I0(\wwait_cnt_reg[15]_i_3_n_6 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[14]));
  LUT3 #(
    .INIT(8'h10)) 
    \wwait_cnt[15]_i_1 
       (.I0(WCS_reg_n_0_[0]),
        .I1(WCS_reg_n_0_[1]),
        .I2(WCS_reg_n_0_[2]),
        .O(\wwait_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[15]_i_2 
       (.I0(\wwait_cnt_reg[15]_i_3_n_5 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[15]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \wwait_cnt[15]_i_4 
       (.I0(\wwait_cnt[15]_i_5_n_0 ),
        .I1(wwait_cnt_reg_n_0_[5]),
        .I2(wwait_cnt_reg_n_0_[4]),
        .I3(wwait_cnt_reg_n_0_[6]),
        .I4(wwait_cnt_reg_n_0_[9]),
        .I5(\wwait_cnt[15]_i_6_n_0 ),
        .O(\wwait_cnt[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wwait_cnt[15]_i_5 
       (.I0(wwait_cnt_reg_n_0_[7]),
        .I1(wwait_cnt_reg_n_0_[0]),
        .I2(wwait_cnt_reg_n_0_[3]),
        .I3(wwait_cnt_reg_n_0_[2]),
        .O(\wwait_cnt[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wwait_cnt[15]_i_6 
       (.I0(wwait_cnt_reg_n_0_[12]),
        .I1(wwait_cnt_reg_n_0_[13]),
        .I2(wwait_cnt_reg_n_0_[1]),
        .I3(wwait_cnt_reg_n_0_[15]),
        .I4(\wwait_cnt[15]_i_7_n_0 ),
        .O(\wwait_cnt[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wwait_cnt[15]_i_7 
       (.I0(wwait_cnt_reg_n_0_[8]),
        .I1(wwait_cnt_reg_n_0_[14]),
        .I2(wwait_cnt_reg_n_0_[11]),
        .I3(wwait_cnt_reg_n_0_[10]),
        .O(\wwait_cnt[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[1]_i_1 
       (.I0(\wwait_cnt_reg[4]_i_2_n_7 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[2]_i_1 
       (.I0(\wwait_cnt_reg[4]_i_2_n_6 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[3]_i_1 
       (.I0(\wwait_cnt_reg[4]_i_2_n_5 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[4]_i_1 
       (.I0(\wwait_cnt_reg[4]_i_2_n_4 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[5]_i_1 
       (.I0(\wwait_cnt_reg[8]_i_2_n_7 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[6]_i_1 
       (.I0(\wwait_cnt_reg[8]_i_2_n_6 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[7]_i_1 
       (.I0(\wwait_cnt_reg[8]_i_2_n_5 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[8]_i_1 
       (.I0(\wwait_cnt_reg[8]_i_2_n_4 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wwait_cnt[9]_i_1 
       (.I0(\wwait_cnt_reg[12]_i_2_n_7 ),
        .I1(\wwait_cnt[15]_i_4_n_0 ),
        .O(wwait_cnt[9]));
  FDPE #(
    .INIT(1'b1)) 
    \wwait_cnt_reg[0] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .D(wwait_cnt[0]),
        .PRE(upg_rst_i_IBUF),
        .Q(wwait_cnt_reg_n_0_[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[10] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[10]),
        .Q(wwait_cnt_reg_n_0_[10]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[11] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[11]),
        .Q(wwait_cnt_reg_n_0_[11]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[12] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[12]),
        .Q(wwait_cnt_reg_n_0_[12]));
  CARRY4 \wwait_cnt_reg[12]_i_2 
       (.CI(\wwait_cnt_reg[8]_i_2_n_0 ),
        .CO({\wwait_cnt_reg[12]_i_2_n_0 ,\wwait_cnt_reg[12]_i_2_n_1 ,\wwait_cnt_reg[12]_i_2_n_2 ,\wwait_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wwait_cnt_reg[12]_i_2_n_4 ,\wwait_cnt_reg[12]_i_2_n_5 ,\wwait_cnt_reg[12]_i_2_n_6 ,\wwait_cnt_reg[12]_i_2_n_7 }),
        .S(wwait_cnt_reg_n_0_[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[13] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[13]),
        .Q(wwait_cnt_reg_n_0_[13]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[14] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[14]),
        .Q(wwait_cnt_reg_n_0_[14]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[15] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[15]),
        .Q(wwait_cnt_reg_n_0_[15]));
  CARRY4 \wwait_cnt_reg[15]_i_3 
       (.CI(\wwait_cnt_reg[12]_i_2_n_0 ),
        .CO({\NLW_wwait_cnt_reg[15]_i_3_CO_UNCONNECTED [3:2],\wwait_cnt_reg[15]_i_3_n_2 ,\wwait_cnt_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wwait_cnt_reg[15]_i_3_O_UNCONNECTED [3],\wwait_cnt_reg[15]_i_3_n_5 ,\wwait_cnt_reg[15]_i_3_n_6 ,\wwait_cnt_reg[15]_i_3_n_7 }),
        .S({1'b0,wwait_cnt_reg_n_0_[15:13]}));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[1] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[1]),
        .Q(wwait_cnt_reg_n_0_[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[2] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[2]),
        .Q(wwait_cnt_reg_n_0_[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[3] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[3]),
        .Q(wwait_cnt_reg_n_0_[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[4] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[4]),
        .Q(wwait_cnt_reg_n_0_[4]));
  CARRY4 \wwait_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\wwait_cnt_reg[4]_i_2_n_0 ,\wwait_cnt_reg[4]_i_2_n_1 ,\wwait_cnt_reg[4]_i_2_n_2 ,\wwait_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(wwait_cnt_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wwait_cnt_reg[4]_i_2_n_4 ,\wwait_cnt_reg[4]_i_2_n_5 ,\wwait_cnt_reg[4]_i_2_n_6 ,\wwait_cnt_reg[4]_i_2_n_7 }),
        .S(wwait_cnt_reg_n_0_[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[5] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[5]),
        .Q(wwait_cnt_reg_n_0_[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[6] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[6]),
        .Q(wwait_cnt_reg_n_0_[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[7] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[7]),
        .Q(wwait_cnt_reg_n_0_[7]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[8] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[8]),
        .Q(wwait_cnt_reg_n_0_[8]));
  CARRY4 \wwait_cnt_reg[8]_i_2 
       (.CI(\wwait_cnt_reg[4]_i_2_n_0 ),
        .CO({\wwait_cnt_reg[8]_i_2_n_0 ,\wwait_cnt_reg[8]_i_2_n_1 ,\wwait_cnt_reg[8]_i_2_n_2 ,\wwait_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wwait_cnt_reg[8]_i_2_n_4 ,\wwait_cnt_reg[8]_i_2_n_5 ,\wwait_cnt_reg[8]_i_2_n_6 ,\wwait_cnt_reg[8]_i_2_n_7 }),
        .S(wwait_cnt_reg_n_0_[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \wwait_cnt_reg[9] 
       (.C(upg_clk_i_IBUF_BUFG),
        .CE(\wwait_cnt[15]_i_1_n_0 ),
        .CLR(upg_rst_i_IBUF),
        .D(wwait_cnt[9]),
        .Q(wwait_cnt_reg_n_0_[9]));
endmodule

(* ORIG_REF_NAME = "upg" *) 
module uart_bmpg_0_upg
   (upg_clk_o,
    upg_wen_o,
    upg_adr_o,
    upg_dat_o,
    upg_done_o,
    upg_tx_o,
    upg_clk_i,
    upg_rst_i,
    upg_rx_i);
  output upg_clk_o;
  output upg_wen_o;
  output [14:0]upg_adr_o;
  output [31:0]upg_dat_o;
  output upg_done_o;
  output upg_tx_o;
  input upg_clk_i;
  input upg_rst_i;
  input upg_rx_i;

  wire [14:0]upg_adr_o;
  wire upg_clk_i;
  wire upg_clk_o;
  wire [31:0]upg_dat_o;
  wire upg_done_o;
  wire upg_rst_i;
  wire upg_rx_i;
  wire upg_tx_o;
  wire upg_wen_o;

  uart_bmpg_0_uart_bmpg upg_inst
       (.upg_adr_o(upg_adr_o),
        .upg_clk_i(upg_clk_i),
        .upg_clk_o(upg_clk_o),
        .upg_dat_o(upg_dat_o),
        .upg_done_o(upg_done_o),
        .upg_rst_i(upg_rst_i),
        .upg_rx_i(upg_rx_i),
        .upg_tx_o(upg_tx_o),
        .upg_wen_o(upg_wen_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
