
module control32 (
    input [5:0] Opcode,
    input [5:0] Function_opcode,

    output Jr,
    output Jmp,
    output Jal,
    output Branch,
    output nBranch,
    output RegDST,
    output RegWrite,
    output MemWrite,
    output ALUSrc,
    output I_format,
    output Sftmd,
    output [1:0] ALUOp,

    output MemRead,
    output MemtoReg,  // 1 indicates that the instruction needs to read from the memory
    output IORead,  // 1 indicates I/O read 
    output IOWrite  // 1 indicates I/O write
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


    wire R_type, Lw, Sw;
    assign R_type = (Opcode == _rtype) ? _T : _F;
    assign Lw = (Opcode == _lw) ? _T : _F;
    assign Sw = (Opcode == _sw) ? _T : _F;
    assign Jr = (R_type && (Function_opcode == f_jr)) ? _T : _F;
    assign Jmp = (Opcode == _j) ? _T : _F;
    assign Jal = (Opcode == _jal) ? _T : _F;
    assign Branch = (Opcode == _beq) ? _T : _F;
    assign nBranch = (Opcode == _bne) ? _T : _F;
    assign RegDST = R_type;
    assign I_format = (Opcode[5:3] == 3'b001) ? _T : _F;

    assign MemWrite = Sw;
    assign MemRead = Lw;
    assign MemtoReg = MemRead;

    assign RegWrite = (R_type || Lw || Jal || I_format) && !(Jr);
    assign ALUSrc = (I_format || Lw || Sw) ? _T : _F;
    assign ALUOp = {(R_type || I_format), (Branch || nBranch)};

    assign Sftmd = R_type && (Function_opcode == f_sll || Function_opcode == f_srl || Function_opcode == f_sllv || Function_opcode == f_srlv || Function_opcode == f_sra || Function_opcode == f_srav);
endmodule
