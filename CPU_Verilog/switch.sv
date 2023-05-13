`include "HEAD.svh"

module Switch (
    input clk,
    input rst,
    input SwitchCtrlLow,
    input SwitchCtrlMid,
    input SwitchCtrlHigh,
    input [23:0] switch_rdata,

    output [15:0] switch_wdata  //  传入给memorio的data
);
    reg [15:0] sw_data;
    assign switch_wdata = sw_data;
    always @(negedge clk or posedge rst) begin
        if (rst) begin
            sw_data <= 0;
        end else if (SwitchCtrlLow) begin
            sw_data[15:0] <= {8'h00, switch_rdata[7:0]};  // data output,lower 8 bits extended with zero
        end else if (SwitchCtrlMid) begin
            sw_data[15:0] <= {8'h00, switch_rdata[15:8]};  //data output, mid 8 bits extended with zero
        end else if (SwitchCtrlHigh == 1'b1) begin
            sw_data[15:0] <= {8'h00, switch_rdata[23:16]};  //data output, upper 8 bits extended with zero
        end else begin
            sw_data <= sw_data;
        end
    end
endmodule
