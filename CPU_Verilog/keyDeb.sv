
module keyDeb
#(
    parameter CNT_MAX = 20'd999_999       //�?大计数时�?20ms
)
(
    input wire clk,
    input wire rst,
    input wire key_i,
    output reg key_o
    );
    reg [19:0] cnt; 
    always @(posedge clk or posedge rst)
        if(rst)
            cnt <= 20'd0;
        else if(!key_i)
            cnt <= 20'd0;
        else if(key_i && cnt == CNT_MAX)
            cnt <= CNT_MAX;
        else 
            cnt <= cnt + 1'b1;
    always @(posedge clk or posedge rst)
        if(rst)
            key_o <= 1'b0;        
        else if(cnt == CNT_MAX)
            key_o <= 1'b1;
        else 
            key_o <= 1'b0;
endmodule
