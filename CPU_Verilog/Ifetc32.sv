`include "HEAD.svh"

module IFetch (
    input clk,
    input rst,

    input Branch,
    input nBranch,
    input Jmp,
    input Jal,
    input Jr,
    input Zero,

    input [31:0] rd_v,
    input [31:0] alu_addr_i,

    input upg_rst_i,  // UPG reset (Active High)
    input upg_clk_i,  // UPG clock (10MHz)
    input upg_wen_i,  // UPG write enable
    input [13:0] upg_adr_i,  // UPG write address
    input [31:0] upg_dat_i,  // UPG write data
    input upg_done_i,  // 1 if program finished

    output [31:0] Ins,
    output [31:0] pc_o,
    output [13:0] rom_addr,
    output reg [31:0] link_addr
);

    reg [31:0] pc;
    reg [31:0] Next_pc;

    assign pc_o = pc;
    assign rom_addr = pc[15:2];

    wire [31:0] pcp4 = pc + 4;

    always @(*) begin
        if (Jr == 1) begin
            Next_pc = rd_v;
        end else if (Jmp || Jal) begin
            Next_pc = {pcp4[31:28], Ins[25:0], 2'b00};
        end else if ((Branch && Zero) || (nBranch && Zero == 0)) begin
            Next_pc = alu_addr_i;
        end else begin
            Next_pc = pcp4;
        end
    end

    always @(negedge clk) begin
        if (rst) begin
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

    wire kickOff = upg_rst_i | (~upg_rst_i & upg_done_i);
    prgrom instmem (
        .clka(kickOff ? clk : upg_clk_i),
        .wea(kickOff ? 1'b0 : upg_wen_i),
        .addra(kickOff ? pc[15:2] : upg_adr_i),
        .dina(kickOff ? 32'h00000000 : upg_dat_i),
        .douta(Ins)
    );

endmodule
