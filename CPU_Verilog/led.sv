`include "HEAD.svh"

module LED (
    input clk,  // 时钟信号
    input rst,  // 复位信号
    input LEDCtrlLow,  // 从memorio来的，由低至高位形成的LED片选信号   
    input LEDCtrlMid,
    input LEDCtrlHigh,  // 从memorio来的，由低至高位形成的LED片选信号 
    input LEDCtrlLM,
    input [15:0] ledwdata,  //  写到LED模块的数据，注意数据线只有16根

    output reg [23:0] ledout  //  向板子上输出的24位LED信号
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ledout <= 24'h000000;
        end else if (LEDCtrlLow) begin
            ledout[23:0] <= {ledout[23:8], ledwdata[7:0]};
        end else if (LEDCtrlMid) begin
            ledout[23:0] <= {ledout[23:16], ledwdata[7:0], ledout[7:0]};
        end else if (LEDCtrlHigh) begin
            ledout[23:0] <= {ledwdata[7:0], ledout[15:0]};
        end else if (LEDCtrlLM) begin
            ledout[23:0] <= {ledout[23:16], ledwdata[15:0]};
        end else begin
            ledout <= ledout;
        end
    end
endmodule
