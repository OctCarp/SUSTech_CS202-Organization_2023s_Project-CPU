`timescale 1ns / 1ps

module seg_ctrl (
    input clk,
    input rst,
    input sctrl,
    input [15:0] origindata,

    output reg [15:0] seg_data
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            seg_data <= 16'h0000;
        end else if (sctrl) begin
            seg_data <= origindata;
        end else begin
            seg_data <= seg_data;
        end
    end
endmodule
