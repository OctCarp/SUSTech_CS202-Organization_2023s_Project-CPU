`include "head.svh"

module Addr (
    input [31:0] pc_v,
    input [31:0] Ins,

    input jmp,
    input jal,
    input jr,
    input br,

    input [31:0] ra_v,
    input [31:0] br_addr,

    output [31:0] pc_out
);

    wire [31:0] pcp4 = pc_v + 4;
    wire J_addr = {pcp4[31:28], Ins[25:0], 2'b00};

    reg [31:0] next;

    assign pc_out = next;

    always @(*) begin
        if (jal || jmp) begin
            next = J_addr;
        end else if (jr) begin
            next = (Ins[5:0] == f_jr) ? ra_v : pcp4;
        end else if (br) begin
            next = br_addr;
        end else next = pcp4;
    end

endmodule

