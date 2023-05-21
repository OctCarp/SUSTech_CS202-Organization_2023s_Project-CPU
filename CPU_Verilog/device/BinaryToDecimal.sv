`timescale 1ns / 1ps

module BinaryToDecimal(
    input [15:0] binary_in,
    output [15:0] decimal_out
);

        assign decimal_out=((binary_in[15:12]==4'hf)?4'h0:binary_in[15:12])*16'd1000
        +((binary_in[11:8]==4'hf)?4'h0:binary_in[11:8])*10'd100
        +((binary_in[7:4]==4'hf)?4'h0:binary_in[7:4])*10'd10
        +((binary_in[3:0]==4'hf)?4'h0:binary_in[3:0]);//bug 
    //end
endmodule
