`include "HEAD.svh"

module Controller (
    input [5:0] op,
    input [5:0] funct,
    input [21:0] ALU_o_H,

    output Jr,
    output Jmp,
    output Jal,
    output Branch,
    output nBranch,
    output RegDST,
    output RegWrite,
    output MemWrite,
    output ALUSrc,
    output I_type,
    output Shfmd,
    output [1:0] ALUOp,

    output MemRead,
    output MemOrIOReg,  // 1 indicates that the instruction needs to read from the memory
    output IORead,  // 1 indicates I/O read 
    output IOWrite  // 1 indicates I/O write
);
    wire R_type, Lw, Sw;
    assign R_type = (op == _rtype) ? _T : _F;
    assign Lw = (op == _lw) ? _T : _F;
    assign Sw = (op == _sw) ? _T : _F;
    assign Jr = (R_type && (funct == f_jr)) ? _T : _F;
    assign Jmp = (op == _j) ? _T : _F;
    assign Jal = (op == _jal) ? _T : _F;
    assign Branch = (op == _beq) ? _T : _F;
    assign nBranch = (op == _bne) ? _T : _F;
    assign RegDST = R_type;
    assign I_type = (op[5:3] == 3'b001) ? _T : _F;

    assign MemWrite = (Sw && (ALU_o_H != 22'h3FFFFF)) ? _T : _F;
    assign MemRead = (Lw && (ALU_o_H != 22'h3FFFFF)) ? _T : _F;  // Read memory
    assign IORead = (Lw && (ALU_o_H == 22'h3FFFFF)) ? _T : _F;  // Read input port
    assign IOWrite = (Sw && (ALU_o_H == 22'h3FFFFF)) ? _T : _F;  // Write output port
    assign MemOrIOReg = IORead || MemRead;  // Read operations require reading data from memory or I/O to write to the register 


    assign RegWrite = (R_type || Lw || Jal || I_type) && !(Jr);
    assign ALUSrc = (I_type || Lw || Sw) ? _T : _F;
    assign ALUOp = {(R_type || I_type), (Branch || nBranch)};

    assign Shfmd = R_type && (funct == f_sll || funct == f_srl || funct == f_sllv || funct == f_srlv || funct == f_sra || funct == f_srav);
endmodule
