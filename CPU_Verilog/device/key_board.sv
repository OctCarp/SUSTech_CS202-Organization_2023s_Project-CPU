`timescale 1ns / 1ps

module key_board (
    input clk,
    rst,
    bend,
    input [3:0] row,
    output reg [3:0] col,
    output reg [15:0] keyboardval
);
    reg key_pressed_flag;
    reg [18:0] cnt;
    reg [20:0] cnts;
    wire key_clk;
    wire seg_clk;
    reg [3:0] keyboard_val;

    always @(posedge clk or posedge rst)
        if (rst) cnt <= 0;
        else cnt <= cnt + 1'b1;
    always @(posedge clk or posedge rst)
        if (rst) cnts <= 0;
        else cnts <= cnts + 1'b1;

    assign key_clk = cnt[18];  // (2^20/50M = 21)ms 
    assign seg_clk = cnts[20];

    parameter NO_KEY_PRESSED = 6'b000_001;
    parameter SCAN_COL0 = 6'b000_010;
    parameter SCAN_COL1 = 6'b000_100;
    parameter SCAN_COL2 = 6'b001_000;
    parameter SCAN_COL3 = 6'b010_000;
    parameter KEY_PRESSED = 6'b100_000;

    reg [5:0] current_state, next_state;

    always @(posedge key_clk or posedge rst)
        if (rst) current_state <= NO_KEY_PRESSED;
        else current_state <= next_state;

    always @(*)
        case (current_state)
            NO_KEY_PRESSED:
            if (row != 4'hF) next_state = SCAN_COL0;
            else next_state = NO_KEY_PRESSED;
            SCAN_COL0:
            if (row != 4'hF) next_state = KEY_PRESSED;
            else next_state = SCAN_COL1;
            SCAN_COL1:
            if (row != 4'hF) next_state = KEY_PRESSED;
            else next_state = SCAN_COL2;
            SCAN_COL2:
            if (row != 4'hF) next_state = KEY_PRESSED;
            else next_state = SCAN_COL3;
            SCAN_COL3:
            if (row != 4'hF) next_state = KEY_PRESSED;
            else next_state = NO_KEY_PRESSED;
            KEY_PRESSED:
            if (row != 4'hF) next_state = KEY_PRESSED;
            else next_state = NO_KEY_PRESSED;
        endcase

    reg [3:0] col_val, row_val;


    always @(posedge key_clk or posedge rst)
        if (rst) begin
            col <= 4'h0;
            key_pressed_flag <= 0;
        end else
            case (next_state)
                NO_KEY_PRESSED: begin
                    col <= 4'h0;
                    key_pressed_flag <= 0;
                end
                SCAN_COL0: col <= 4'b1110;
                SCAN_COL1: col <= 4'b1101;
                SCAN_COL2: col <= 4'b1011;
                SCAN_COL3: col <= 4'b0111;
                KEY_PRESSED: begin
                    col_val <= col;
                    row_val <= row;
                    key_pressed_flag <= 1;
                end
            endcase
    always @(posedge clk or posedge rst)
        if (rst) keyboard_val <= 4'h0;
        else if (key_pressed_flag)
            case ({
                col_val, row_val
            })
                8'b1110_1110: keyboard_val <= 4'h1;
                8'b1110_1101: keyboard_val <= 4'h4;
                8'b1110_1011: keyboard_val <= 4'h7;
                8'b1110_0111: keyboard_val <= 4'hE;

                8'b1101_1110: keyboard_val <= 4'h2;
                8'b1101_1101: keyboard_val <= 4'h5;
                8'b1101_1011: keyboard_val <= 4'h8;
                8'b1101_0111: keyboard_val <= 4'h0;

                8'b1011_1110: keyboard_val <= 4'h3;
                8'b1011_1101: keyboard_val <= 4'h6;
                8'b1011_1011: keyboard_val <= 4'h9;
                8'b1011_0111: keyboard_val <= 4'hF;

                8'b0111_1110: keyboard_val <= 4'hA;
                8'b0111_1101: keyboard_val <= 4'hB;
                8'b0111_1011: keyboard_val <= 4'hC;
                8'b0111_0111: keyboard_val <= 4'hD;
            endcase

    // reg[3:0] temp = 4'hf;
    always @(posedge seg_clk or posedge rst)
        if (rst || bend) begin
            //temp <=4'hf;
            keyboardval <= 16'hffff;
        end else if (key_pressed_flag) begin
            // temp <= keyboard_val; 
            keyboardval <= {keyboardval[11:0], keyboard_val};
        end
endmodule
