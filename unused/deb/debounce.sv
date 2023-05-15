`include "HEAD.svh"

module Debounce (
    input clk,
    input rst,
    input [23:0] sw_i,
    output [23:0] sw_o,
    
    input ck_i,
    output ck_o,
    
    input start_i,
    output start_o
);
    reg [24:0] q;
    wire clk_slow;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 0;
        end else begin
            q <= q + 1;
        end
    end

    assign clk_slow = q[20];
    Deb btnck(.clk_slow(clk_slow), .rst(rst), .sig_i(ck_i), .sig_o(ck_o));
    Deb btnstart(.clk_slow(clk_slow), .rst(rst), .sig_i(start_i), .sig_o(start_o));
    Deb sw23(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[23]), .sig_o(sw_o[23]));
    Deb sw22(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[22]), .sig_o(sw_o[22]));
    Deb sw21(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[21]), .sig_o(sw_o[21]));
    Deb sw20(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[20]), .sig_o(sw_o[20]));
    Deb sw19(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[19]), .sig_o(sw_o[19]));
    Deb sw18(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[18]), .sig_o(sw_o[18]));
    Deb sw17(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[17]), .sig_o(sw_o[17]));
    Deb sw16(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[16]), .sig_o(sw_o[16]));
    Deb sw15(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[15]), .sig_o(sw_o[15]));
    Deb sw14(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[14]), .sig_o(sw_o[14]));
    Deb sw13(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[13]), .sig_o(sw_o[13]));
    Deb sw12(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[12]), .sig_o(sw_o[12]));
    Deb sw11(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[11]), .sig_o(sw_o[11]));
    Deb sw10(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[10]), .sig_o(sw_o[10]));
    Deb sw9(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[9]), .sig_o(sw_o[9]));
    Deb sw8(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[8]), .sig_o(sw_o[8]));
    Deb sw7(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[7]), .sig_o(sw_o[7]));
    Deb sw6(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[6]), .sig_o(sw_o[6]));
    Deb sw5(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[5]), .sig_o(sw_o[5]));
    Deb sw4(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[4]), .sig_o(sw_o[4]));
    Deb sw3(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[3]), .sig_o(sw_o[3]));
    Deb sw2(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[2]), .sig_o(sw_o[2]));
    Deb sw1(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[1]), .sig_o(sw_o[1]));
    Deb sw0(.clk_slow(clk_slow), .rst(rst), .sig_i(sw_i[0]), .sig_o(sw_o[0]));
endmodule
