`include "HEAD.svh"
`include "IOHEAD.svh"

module MemOrIO (
    input mRead,  // read memory, from control32 
    input mWrite,  // write memory, from control32 
    input ioRead,  // read IO, from control32 
    input ioWrite,  // write IO, from control32 
    input [31:0] m_rdata,  // data read from memory 
    input [31:0] r_rdata,  // data read from idecode32(register file) 
    input [31:0] addr_in,  // from alu_result in executs32 

    input [15:0] io_rdata_switch,  // data read from switch,16 bits
    input [15:0] io_rdata_board,  // data read from board,16 bits
    input io_rdata_btn,

    output [31:0] addr_out,  // address to memory 
    output [31:0] r_wdata,  // data to idecode32(register file) 

    output reg [31:0] write_data,  // data to memory or I/O（m_wdata, io_wdata） 

    output LEDCtrlLow,  // LED Chip Select
    output LEDCtrlMid,
    output LEDCtrlHigh,  // LED Chip Select
    output LEDCtrlLM,
    output SwitchCtrlLow,  //拨码开关
    output SwitchCtrlMid,
    output SwitchCtrlHigh,  //拨码开关
    output SegCtrl,  //七段数码显示管
    output vga_ctrl,
    output BoardCtrl  //小键盘
);

    assign addr_out = addr_in;
    wire ck_in;

    wire [3:0] low_addr = addr_in[3:0];
    reg [15:0] io_rdata;

    assign r_wdata = mRead ? m_rdata : {16'h0000, io_rdata};
    assign LEDCtrlLow = (ioWrite && low_addr == _led_low_waddr) ? _T : _F;
    assign LEDCtrlMid = (ioWrite && low_addr == _led_mid_waddr) ? _T : _F;
    assign LEDCtrlHigh = (ioWrite && low_addr == _led_high_waddr) ? _T : _F;
    assign LEDCtrlLM = (ioWrite && low_addr == _led_lownmid_waddr) ? _T : _F;
    assign vga_ctrl = (ioWrite && low_addr == _vga_waddr) ? _T : _F;
    assign SegCtrl = (ioWrite && low_addr == _7seg_waddr) ? _T : _F;

    assign SwitchCtrlLow = (ioRead && low_addr == _switch_low_raddr) ? _T : _F;
    assign SwitchCtrlMid = (ioRead && low_addr == _switch_mid_raddr) ? _T : _F;
    assign SwitchCtrlHigh = (ioRead && low_addr == _switch_high_raddr) ? _T : _F;
    assign ckin = (ioRead && low_addr == _ck_btn_raddr) ? _T : _F;
    assign BoardCtrl = (ioRead && low_addr == _board_raddr) ? _T : _F;



    always @(*) begin
        if (SwitchCtrlLow || SwitchCtrlMid || SwitchCtrlHigh) begin
            io_rdata = io_rdata_switch;
        end else if (BoardCtrl) begin
            io_rdata = io_rdata_board;
        end else if (ckin) begin
            io_rdata = {15'b0, io_rdata_btn};
        end
    end

    always @(*) begin
        if (mWrite || ioWrite) begin
            write_data = r_rdata;
        end else begin
            write_data = 32'hZZZZZZZZ;
        end
    end
endmodule
