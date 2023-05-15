`include "HEAD.svh"

module keyDeb (
    input clk,  //E1 100MHz
    input rst,  //M15  高电平有效 复位
    input key_i,  //M2     机械按键  按下为低电平

    output reg key_o  // L7  低电平灯亮
);
    parameter MAX_CNT = 21'd2000_000;
    ////////////////////////////////////////////////////////////
    //①wire定义

    ////////////////////////////////////////////////////////////
    //②reg定义
    (*preserve*) reg [7:0] state;  //状态机的状态寄存器
    (*preserve*) reg [19:0] cnt_key_touch_clk;  //按键按下时钟计数器

    ////////////////////////////////////////////////////////////
    //③模块例化


    ////////////////////////////////////////////////////////////
    //状态机的输入 clk key_i                 cnt_key_touch_clk
    always @(posedge clk) begin
        if (rst) begin
            cnt_key_touch_clk <= 21'd0;
        end else if (key_i == 1'b0) begin
            cnt_key_touch_clk <= 21'd0;
        end else if (key_i == 1'b1) begin
            if (cnt_key_touch_clk == MAX_CNT) begin //20ms
                cnt_key_touch_clk <= cnt_key_touch_clk;
            end else begin
                cnt_key_touch_clk <= (cnt_key_touch_clk + 21'd1);
            end
        end else begin
            cnt_key_touch_clk <= cnt_key_touch_clk;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            state <= 8'd0;
        end else begin
            case (state)
                8'd0: begin
                    if (cnt_key_touch_clk == 21'd999_999) begin  //20ms  保证每次按下后只出现一次
                        state <= 8'd1;
                    end else begin
                        state <= 8'd0;
                    end
                end
                
                8'd1: state <= 8'd0;
                default: state <= 8'd0;
            endcase
        end
    end
    ////////////////////////////////////////////////////////////
    //状态机第二段  描述输出
    always @(posedge clk) begin
        if (rst) begin
            key_o <= 1'b0;
        end else if (state == 8'd1) begin
            key_o <= (~key_o);
        end else begin
            key_o <= key_o;
        end
    end
    ////////////////////////////////////////////////////////////
endmodule

//https://zhuanlan.zhihu.com/p/602417168