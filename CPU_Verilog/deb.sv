`include "HEAD.svh"

module Deb (
    input clk_slow,
    input rst,
    input sig_i,
    output wire sig_o
);

    reg delay1 = 0;
    reg delay2 = 0;
    reg delay3 = 0;

    always @(posedge clk_slow, posedge rst) begin
        if (rst) begin
            delay1 <= sig_i;
            delay2 <= sig_i;
            delay3 <= sig_i;
        end else begin
            delay1 <= sig_i;
            delay2 <= delay1;
            delay3 <= delay2;
        end
    end

    assign sig_o = ((delay1 == delay2) && (delay2 == delay3) && (delay1 == 1)) ? 1 : 0;

endmodule
