// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue May  9 02:24:28 2023
// Host        : Xpro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/VivadoProj/CS202_Pro/CS202_Pro.srcs/sources_1/ip/uart_bmpg_0/uart_bmpg_0_stub.v
// Design      : uart_bmpg_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "upg,Vivado 2017.4" *)
module uart_bmpg_0(upg_clk_i, upg_rst_i, upg_clk_o, upg_wen_o, 
  upg_adr_o, upg_dat_o, upg_done_o, upg_rx_i, upg_tx_o)
/* synthesis syn_black_box black_box_pad_pin="upg_clk_i,upg_rst_i,upg_clk_o,upg_wen_o,upg_adr_o[14:0],upg_dat_o[31:0],upg_done_o,upg_rx_i,upg_tx_o" */;
  input upg_clk_i;
  input upg_rst_i;
  output upg_clk_o;
  output upg_wen_o;
  output [14:0]upg_adr_o;
  output [31:0]upg_dat_o;
  output upg_done_o;
  input upg_rx_i;
  output upg_tx_o;
endmodule
