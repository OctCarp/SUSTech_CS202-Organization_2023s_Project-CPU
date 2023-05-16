
module decode32 (
    input clock,
    input reset,

    input Jal,

    input [31:0] Instruction,
    input [31:0] mem_data,
    input [31:0] ALU_result,

    input RegWrite,
    input MemtoReg,
    input RegDst,

    input [31:0] opcplus4,

    output [31:0] Sign_extend,
    output [31:0] read_data_1,
    output [31:0] read_data_2
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
    
    reg [31:0] regs[0:31];

    wire [5:0] op = Instruction[31:26];
    wire [4:0] rs = Instruction[25:21];
    wire [4:0] rt = Instruction[20:16];
    wire [4:0] rd = Instruction[15:11];
    wire [15:0] imm = Instruction[15:0];

    assign Sign_extend = (op == _andi || op == _ori || op == _xori || op == _addiu || op == _sltiu) ? {16'b0, imm} : {{16{imm[15]}}, imm};

    assign read_data_1 = regs[rs];
    assign read_data_2 = regs[rt];

    reg [4:0] reg_write;
    reg [31:0] write_data;


    always @* begin
        if (!MemtoReg && !Jal) begin
            write_data = ALU_result;
        end else if (Jal) begin
            write_data = opcplus4;
        end else begin
            write_data = mem_data;
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

    integer i = 0;
    always @(posedge clock, posedge reset) begin
        if (reset) begin
            for (i = 0; i < 32; i = i + 1) begin
                regs[i] <= 0;
            end
        end else if (RegWrite) begin
            regs[reg_write] <= write_data;
        end
    end

endmodule
