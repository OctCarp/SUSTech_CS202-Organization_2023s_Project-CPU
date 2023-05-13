`ifndef _HEAD
`define _HEAD

`timescale 1ns / 1ps

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

`endif
