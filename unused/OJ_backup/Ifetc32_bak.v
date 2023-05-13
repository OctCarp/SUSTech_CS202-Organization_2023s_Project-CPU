module IFetc32 (
    input clk,
    input reset,

    input Branch,
    input nBranch,
    input Jmp,
    input Jal,
    input Jr,
    input Zero,

    input [31:0] Read_data_1,
    input [31:0] Addr_result,

    output [31:0] Instruction,
    output [31:0] branch_base_addr,
    output [13:0] rom_addr,
    output reg [31:0] link_addr
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

    reg [31:0] pc;
    reg [31:0] Next_pc;

    assign branch_base_addr = pc + 4;
    assign rom_addr = pc[15:2];

    wire [31:0] pcp4 = pc + 4;

    always @(*) begin
        if (Jr == 1) begin
            Next_pc = Read_data_1;
        end else if (Jmp || Jal) begin
            Next_pc = {pcp4[31:28], Instruction[25:0], 2'b00};
        end else if ((Branch && Zero) || (nBranch && Zero == 0)) begin
            Next_pc = Addr_result;
        end else begin
            Next_pc = pcp4;
        end
    end

    always @(negedge clk) begin
        if (reset) begin
            pc <= 32'h0000_0000;
        end else begin
            pc <= Next_pc;
        end
    end

    always @(negedge clk) begin
        if ((Jmp == 1) || (Jal == 1)) begin
            link_addr <= (pc + 4);
        end else begin
            link_addr <= link_addr;
        end
    end
endmodule
