`include "HEAD.svh"

module IDecode (
    input clk,
    input rst,

    input Jal,

    input [31:0] Ins,
    input [31:0] Reg_Write_In,
    input [31:0] ALU_In,

    input RegWrite,
    input MemtoReg,
    input RegDst,

    input [31:0] link_addr,

    output [31:0] imm_ex,
    output [31:0] rs_v,
    output [31:0] rt_v,
    output [31:0] regs_o[0:31]
);
    assign regs_o = regs;
    reg [31:0] regs[0:31];

    wire [5:0] op = Ins[31:26];
    wire [4:0] rs = Ins[25:21];
    wire [4:0] rt = Ins[20:16];
    wire [4:0] rd = Ins[15:11];
    wire [15:0] imm = Ins[15:0];

    assign imm_ex = (op == _andi || op == _ori || op == _xori || op == _addiu || op == _sltiu) ? {16'b0, imm} : {{16{imm[15]}}, imm};

    assign rs_v = regs[rs];
    assign rt_v = regs[rt];

    reg [4:0] reg_write;
    reg [31:0] write_data;


    always @* begin
        if (!MemtoReg && !Jal) begin
            write_data = ALU_In;
        end else if (Jal) begin
            write_data = link_addr;
        end else begin
            write_data = Reg_Write_In;
        end
    end

    always @* begin
        if (RegWrite) begin
            if (op == _jal && Jal) begin
                reg_write = _ra;
            end else if (RegDst) begin
                reg_write = rd;
            end else begin
                reg_write = rt;
            end
        end
    end

    always @(posedge clk, posedge rst) begin
        if (rst) begin
            for (int i = 0; i < 32; i++) begin
                regs[i] <= 0;
                regs[27] <= 32'hFFFF_FC00;
                regs[28] <= 32'b1000_0000_0000;
            end
        end else if (RegWrite) begin
            regs[reg_write] <= write_data;
        end
    end

endmodule
