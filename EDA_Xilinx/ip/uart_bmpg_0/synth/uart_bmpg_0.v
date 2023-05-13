// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: SEU_CSE_507:user:uart_bmpg:1.3
// IP Revision: 8

(* X_CORE_INFO = "upg,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "uart_bmpg_0,upg,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module uart_bmpg_0 (
  upg_clk_i,
  upg_rst_i,
  upg_clk_o,
  upg_wen_o,
  upg_adr_o,
  upg_dat_o,
  upg_done_o,
  upg_rx_i,
  upg_tx_o
);

input wire upg_clk_i;
input wire upg_rst_i;
output wire upg_clk_o;
output wire upg_wen_o;
output wire [14 : 0] upg_adr_o;
output wire [31 : 0] upg_dat_o;
output wire upg_done_o;
input wire upg_rx_i;
output wire upg_tx_o;

  upg inst (
    .upg_clk_i(upg_clk_i),
    .upg_rst_i(upg_rst_i),
    .upg_clk_o(upg_clk_o),
    .upg_wen_o(upg_wen_o),
    .upg_adr_o(upg_adr_o),
    .upg_dat_o(upg_dat_o),
    .upg_done_o(upg_done_o),
    .upg_rx_i(upg_rx_i),
    .upg_tx_o(upg_tx_o)
  );
endmodule
