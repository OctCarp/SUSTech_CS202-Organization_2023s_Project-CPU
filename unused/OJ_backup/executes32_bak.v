module executs32 (
    input [5:0] Exe_opcode,
    input [31:0] Read_data_1,
    input [31:0] Read_data_2,
    input [4:0] Shamt,
    input [5:0] Function_opcode,
    input Jr,

    input Sftmd,
    input [31:0] Sign_extend,
    input [31:0] PC_plus_4,

    input [1:0] ALUOp,

    input I_format,

    input ALUSrc,

    output Zero,
    output reg [31:0] ALU_Result,
    output [31:0] Addr_Result
);
    parameter _T = 1'b1;
    parameter _F = 1'b0;

    parameter _ra = 5'b11111;

    parameter _rtype = 6'b00_0000;

    parameter _slti = 6'b00_1010;
    parameter _addiu = 6'b00_1001;
    parameter _sltiu = 6'b00_1011;
    parameter _andi = 6'b00_1100;
    parameter _ori = 6'b00_1101;
    parameter _xori = 6'b00_1110;

    parameter _j = 6'b00_0010;
    parameter _jal = 6'b00_0011;

    parameter f_jr = 6'b00_1000;

    parameter _lb = 6'b10_0000;
    parameter _lw = 6'b10_0011;
    parameter _sb = 6'b10_1000;
    parameter _sw = 6'b10_1011;
    parameter _beq = 6'b00_0100;
    parameter _bne = 6'b00_0101;

    parameter f_sll = 6'b00_0000;
    parameter f_srl = 6'b00_0010;
    parameter f_sllv = 6'b00_0100;
    parameter f_srlv = 6'b00_0110;
    parameter f_sra = 6'b00_0011;
    parameter f_srav = 6'b00_0111;

    wire [31:0] in1 = Read_data_1;
    wire [31:0] in2 = ALUSrc ? Sign_extend : Read_data_2;
    wire [4:0] Exe_code = I_format ? {3'b000, Exe_opcode[2:0]} : Function_opcode;

    assign Addr_Result = PC_plus_4 + (Sign_extend << 2);

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
        if (Sftmd)
            case (Function_opcode)
                f_sll:   ALU_sft = in2 << Shamt;
                f_srl:   ALU_sft = in2 >> Shamt;
                f_sllv:  ALU_sft = in2 << in1;
                f_srlv:  ALU_sft = in2 >> in1;
                f_sra:   ALU_sft = $signed(in2) >>> Shamt;
                f_srav:  ALU_sft = $signed(in2) >>> in1;
                default: ALU_sft = in2;
            endcase
        else ALU_sft = in2;
    end

    always @* begin
        if (((ALU_ctl == 3'b111) && (Exe_code[3] == 1)) || ((ALU_ctl == 3'b110) && (Exe_opcode == _slti))) begin
            ALU_Result = (ALU_ex[31] == 1'b1 ? 32'b1 : 32'b0);
        end else if ((ALU_ctl == 3'b101) && I_format) begin
            ALU_Result[31:0] = {in2[15:0], 16'b0};
        end else if (Sftmd) begin
            ALU_Result = ALU_sft[31:0];
        end else begin
            ALU_Result = ALU_ex[31:0];
        end
    end
    assign Zero = (ALU_ex == 32'b0) ? _T : _F;


endmodule
