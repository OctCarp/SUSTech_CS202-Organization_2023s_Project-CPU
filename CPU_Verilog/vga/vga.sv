`include "HEAD.svh"

module VGA (
    input clk,
    input rst,
    input [35:0] vc_data,
    
    output reg [11:0] rgb,
    output hs,
    output vs
);

    parameter UP_BOUND = 31;
    parameter DOWN_BOUND = 510;
    parameter LEFT_BOUND = 144;
    parameter RIGHT_BOUND = 783;

    parameter up_pos = 267;
    parameter down_pos = 274;
    parameter left_pos = 429;
    parameter right_pos = 470;

    wire pclk;
    reg [1:0] count;
    reg [9:0] hcount, vcount;
    wire [7:0] p[41:0];


    char_set p_1 (
        .clk(clk),
        .rst(rst),
        .data(vc_data[35:30]),
        .col0(p[0]),
        .col1(p[1]),
        .col2(p[2]),
        .col3(p[3]),
        .col4(p[4]),
        .col5(p[5]),
        .col6(p[6])
    );
    char_set p_2 (
        .clk(clk),
        .rst(rst),
        .data(vc_data[29:24]),
        .col0(p[7]),
        .col1(p[8]),
        .col2(p[9]),
        .col3(p[10]),
        .col4(p[11]),
        .col5(p[12]),
        .col6(p[13])
    );

    char_set p_3 (
        .clk(clk),
        .rst(rst),
        .data(vc_data[23:18]),
        .col0(p[14]),
        .col1(p[15]),
        .col2(p[16]),
        .col3(p[17]),
        .col4(p[18]),
        .col5(p[19]),
        .col6(p[20])
    );

    char_set p_4 (
        .clk(clk),
        .rst(rst),
        .data(vc_data[17:12]),
        .col0(p[21]),
        .col1(p[22]),
        .col2(p[23]),
        .col3(p[24]),
        .col4(p[25]),
        .col5(p[26]),
        .col6(p[27])
    );

    char_set p_5 (
        .clk(clk),
        .rst(rst),
        .data(vc_data[11:6]),
        .col0(p[28]),
        .col1(p[29]),
        .col2(p[30]),
        .col3(p[31]),
        .col4(p[32]),
        .col5(p[33]),
        .col6(p[34])
    );

    char_set p_6 (
        .clk(clk),
        .rst(rst),
        .data(vc_data[5:0]),
        .col0(p[35]),
        .col1(p[36]),
        .col2(p[37]),
        .col3(p[38]),
        .col4(p[39]),
        .col5(p[40]),
        .col6(p[41])
    );

    assign pclk = count[1];
    always @(posedge clk or posedge rst) begin
        if (rst) count <= 0;
        else count <= count + 1;
    end

    assign hs = (hcount < 96) ? 0 : 1;
    always @(posedge pclk or posedge rst) begin
        if (rst) hcount <= 0;
        else if (hcount == 799) hcount <= 0;
        else hcount <= hcount + 1;
    end

    assign vs = (vcount < 2) ? 0 : 1;
    always @(posedge pclk or posedge rst) begin
        if (rst) vcount <= 0;
        else if (hcount == 799) begin
            if (vcount == 520) vcount <= 0;
            else vcount <= vcount + 1;
        end else vcount <= vcount;
    end

    always @(posedge pclk or posedge rst) begin
        if (rst) begin
            rgb <= 12'b0;
        end else if (vcount >= UP_BOUND && vcount <= DOWN_BOUND && hcount >= LEFT_BOUND && hcount <= RIGHT_BOUND) begin
            if (vcount >= up_pos && vcount <= down_pos && hcount >= left_pos && hcount <= right_pos) begin
                if (p[hcount-left_pos][vcount-up_pos]) begin
                    rgb <= 12'b1111_1111_1111;
                end else begin
                    rgb <= 12'b0;
                end
            end else begin
                rgb <= 12'b0;
            end
        end else begin
            rgb <= 12'b0;
        end
    end

endmodule
