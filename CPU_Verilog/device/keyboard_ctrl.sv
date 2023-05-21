`timescale 1ns / 1ps

module key_board_c (
    input clk,
    input rst,
    input key_board_c,
    input [15:0] key_board_in,

    output [15:0] key_board_wdata  //  传入给memorio的data
);
    reg [15:0] key_data;
    assign key_board_wdata = key_data;
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            key_data <= 0;
        end else if (key_board_c) begin
            key_data<=key_board_in;
        end else begin
            key_data <= key_data;
        end
    end
endmodule
