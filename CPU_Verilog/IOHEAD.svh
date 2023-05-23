`ifndef _IO_HEAD
`define _IO_HEAD

parameter _led_low_waddr = 4'h0;
parameter _led_mid_waddr = 4'h1;
parameter _led_high_waddr = 4'h2;
parameter _led_lownmid_waddr = 4'h3;
parameter _7seg_waddr = 4'h8;
parameter _vga_waddr = 4'h7;

parameter _switch_low_raddr = 4'h0;
parameter _switch_mid_raddr = 4'h1;
parameter _switch_high_raddr = 4'h2;
parameter _ck_btn_raddr = 4'h3;
parameter _board_raddr = 4'h9;

`endif
