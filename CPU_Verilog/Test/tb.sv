`timescale 1ns / 1ps

module top_tb ();

    reg clk_in, reset;
    reg [23:0] switch;
    wire [23:0] led_out;
    wire [31:0] regs_o[0:31];
    reg btn=0;
    wire [31:0]ins;
    initial begin
        clk_in = 1'b1;
        reset = 1'b1;
        switch = 24'b0000_0000_0000_0000_0000_0000;
        #2 reset = 1'b0;
        #200 switch = 24'b0000_0111_0000_0111_0000_0111;
        #50 btn = 1;
        #50 btn = 0;
        
         #50 switch = 24'b0000_0001_0000_0000_1100_0011;
        #50 btn = 1;
        #50 btn = 0;
        
        #50 switch = 24'b0000_0001_0000_0000_1000_0110;
        #50 btn = 1;
        #50 btn = 0;
        
        #50 switch = 24'b0000_0101_0000_0101_0000_0111;
        
        #50 btn = 1;
        #50 btn = 0;
        
        #50 $finish;
    end

    always begin
        #1 clk_in = ~clk_in;
    end

    CPU_TOP top_sim (
        .fpga_clk(clk_in),
        .fpga_rst(reset),
        .switch2N4(switch),
        .led2N4(led_out),
        .ck_btn(btn)
//        .regs_o(regs_o),
//        .ins(ins)
    );


endmodule
