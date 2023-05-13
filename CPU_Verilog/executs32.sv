`include "HEAD.svh"

module Excute (
    input [5:0] op,
    input [31:0] rs_v,
    input [31:0] rt_v,
    input [4:0] shamt,
    input [5:0] funct,

    input sftmd,
    input [31:0] imm_ex,
    input [31:0] pcp4,

    input [1:0] ALUOp,

    input I_type,

    input ALUSrc,

    output Zero,
    output reg [31:0] ALU_out,
    output [31:0] alu_addr_out
);

    wire [31:0] in1 = rs_v;
    wire [31:0] in2 = ALUSrc ? imm_ex : rt_v;
    wire [4:0] Exe_code = I_type ? {3'b000, op[2:0]} : funct;

    assign alu_addr_out = pcp4 + (imm_ex << 2);

    wire [2:0] ALU_ctl;
    assign ALU_ctl[0] = (Exe_code[0] | Exe_code[3]) & ALUOp[1];
    assign ALU_ctl[1] = ((!Exe_code[2]) | (!ALUOp[1]));
    assign ALU_ctl[2] = (Exe_code[1] & ALUOp[1]) | ALUOp[0];

    reg signed [31:0] ALU_ex;
    reg [31:0] ALU_sft;

    always @(ALU_ctl, in1, in2) begin
        case (ALU_ctl)
            3'b000:  ALU_ex = in1 & in2;
            3'b001:  ALU_ex = in1 | in2;
            3'b010:  ALU_ex = $signed(in1) + $signed(in2);
            3'b011:  ALU_ex = in1 + in2;
            3'b100:  ALU_ex = in1 ^ in2;
            3'b101:  ALU_ex = ~(in1 | in2);
            3'b110:  ALU_ex = $signed(in1) - $signed(in2);
            3'b111:  ALU_ex = in1 - in2;
            default: ALU_ex = 32'h00000000;
        endcase
    end


    always @* begin
        if (sftmd)
            case (funct)
                f_sll:   ALU_sft = in2 << shamt;
                f_srl:   ALU_sft = in2 >> shamt;
                f_sllv:  ALU_sft = in2 << in1;
                f_srlv:  ALU_sft = in2 >> in1;
                f_sra:   ALU_sft = $signed(in2) >>> shamt;
                f_srav:  ALU_sft = $signed(in2) >>> in1;
                default: ALU_sft = in2;
            endcase
        else ALU_sft = in2;
    end

    always @* begin
        if (((ALU_ctl == 3'b111) && (Exe_code[3] == 1)) || ((ALU_ctl == 3'b110) && (op == _slti))) begin
            ALU_out = (ALU_ex[31] == 1'b1 ? 32'b1 : 32'b0);
        end else if ((ALU_ctl == 3'b101) && I_type) begin
            ALU_out[31:0] = {in2[15:0], 16'b0};
        end else if (sftmd) begin
            ALU_out = ALU_sft[31:0];
        end else begin
            ALU_out = ALU_ex[31:0];
        end
    end
    assign Zero = (ALU_ex == 32'b0) ? _T : _F;


endmodule
