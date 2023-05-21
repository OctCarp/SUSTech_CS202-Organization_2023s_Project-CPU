`include "HEAD.svh"

module CPU_TOP (
    input fpga_rst,
    input fpga_clk,
    input [23:0] switch2N4,
    input ck_btn,
    input [3:0] row,
    output [3:0] col,
    output [23:0] led2N4,
    input Board_end,

    output [11:0] v_rgb,
    output v_vs,
    output v_hs,

    input start_pg,
    input rx,
    output tx,
    output [7:0] seg_out,
    output [7:0] seg_en
    //,
    // output [31:0] regs_o[0:31],
    // output [31:0] ins
    //
);
    wire rst_in;
    //
    //assign ins = Instruction;
    //
    //deb

    //vga
    wire v_c;
    wire [35:0] vc_data_w;

    wire ck_sig;

    wire [15:0] board_io;

    keyDeb ck (
        .clk(fpga_clk),
        .rst(fpga_rst),
        .key_i(ck_btn),
        .key_o(ck_sig)
    );

    //IFecth
    wire [31:0] pc_now;
    wire [31:0] link_addr;
    wire [13:0] rom_addr;
    wire [31:0] Instruction;

    //IDecode
    wire [31:0] reg_out1;
    wire [31:0] reg_out2;
    wire [31:0] imm_extend;

    //Excute
    wire is_Zero;
    wire [31:0] alu_o;
    wire [31:0] alu_addr_o;

    //MemIO
    wire [31:0] memio_addr;
    wire [31:0] Reg_WriteData;
    wire [31:0] write_data;
    wire LedL_c;
    wire LedM_c;
    wire LedH_c;
    wire LedLM_c;
    wire SwL_c;
    wire SwM_c;
    wire SwH_c;
    wire Seg_c;
    wire Board_c;

    //uart
    wire upg_clk_w;
    wire upg_wen_w;  //Uart write out enable
    wire upg_done_w;  //Uart rx data have done

    //data to which memory unit of program_rom/dmemory32
    wire [14:0] upg_adr_w;
    wire [31:0] upg_dat_w;
    //DeMem
    wire [31:0] mem_data;

    //Controller
    wire Jmp_c;
    wire Jr_c;
    wire Jal_c;
    wire br_c;
    wire nbr_c;
    wire RegDst_c;
    wire MemtoReg_c;
    wire RegWrite_c;
    wire MemWrite_c;
    wire ALUSrc_c;
    wire itype_c;
    wire Shfmd_c;
    wire [1:0] ALUOp_c;

    wire MemRead_c;
    wire MemOrIOReg_c;
    wire IORead_c;
    wire IOWrite_c;

    //switch
    wire [15:0] sw_data;

    //board
    wire [15:0] board_data;


    wire upg_clk;
    wire cpu_clk;
    cpuclk divclk (
        .clk_in1(fpga_clk),
        .clk_out1(cpu_clk),
        .clk_out2(upg_clk)
    );

    wire spg_bufg;
    BUFG U1 (
        .I(start_pg),
        .O(spg_bufg)
    );

    reg upg_rst;
    always @(posedge fpga_clk) begin
        if (spg_bufg) upg_rst = 0;
        if (fpga_rst) upg_rst = 1;
    end
    assign rst_in = fpga_rst | !upg_rst;
    // keyDeb btn1(.clk(fpga_clk),.rst(rst_in),.key_i(ck_btn),.key_o(ck_sig));


    uart_bmpg_0 uart (
        .upg_clk_i(upg_clk),
        .upg_rst_i(upg_rst),
        .upg_rx_i(rx),

        .upg_clk_o(upg_clk_w),
        .upg_wen_o(upg_wen_w),
        .upg_adr_o(upg_adr_w),
        .upg_dat_o(upg_dat_w),
        .upg_done_o(upg_done_w),
        .upg_tx_o(tx)
    );

    MemOrIO u_memio (
        .mRead(MemRead_c),
        .mWrite(MemWrite_c),
        .ioRead(IORead_c),
        .ioWrite(IOWrite_c),
        .m_rdata(mem_data),
        .r_rdata(reg_out2),
        .addr_in(alu_o),
        .addr_out(memio_addr),

        .io_rdata_btn(ck_sig),
        .io_rdata_switch(sw_data),
        .io_rdata_board(board_io),

        .r_wdata(Reg_WriteData),
        .write_data(write_data),
        .LEDCtrlLow(LedL_c),
        .LEDCtrlMid(LedM_c),
        .LEDCtrlLM(LedLM_c),
        .LEDCtrlHigh(LedH_c),
        .SwitchCtrlLow(SwL_c),
        .SwitchCtrlMid(SwM_c),
        .SwitchCtrlHigh(SwH_c),
        .SegCtrl(Seg_c),
        .vga_ctrl(v_c),
        .BoardCtrl(Board_c)
    );

    Demem mem (
        .ram_clk_i(cpu_clk),
        .ram_wen_i(MemWrite_c),
        .ram_adr_i(memio_addr),
        .ram_dat_i(write_data),
        .ram_dat_o(mem_data),

        .upg_rst_i(upg_rst),
        .upg_clk_i(upg_clk_w),
        .upg_wen_i(upg_wen_w & upg_adr_w[14]),
        .upg_adr_i(upg_adr_w[13:0]),
        .upg_dat_i(upg_dat_w),
        .upg_done_i(upg_done_w)
    );

    Controller u_ctl (
        .op(Instruction[31:26]),
        .funct(Instruction[5:0]),
        .ALU_o_H(alu_o[31:10]),

        .Jr(Jr_c),
        .Jmp(Jmp_c),
        .Jal(Jal_c),
        .Branch(br_c),
        .nBranch(nbr_c),
        .RegDST(RegDst_c),
        .RegWrite(RegWrite_c),
        .MemWrite(MemWrite_c),
        .ALUSrc(ALUSrc_c),
        .I_type(itype_c),
        .Shfmd(Shfmd_c),
        .ALUOp(ALUOp_c),

        .MemRead(MemRead_c),
        .MemOrIOReg(MemOrIOReg_c),
        .IORead(IORead_c),
        .IOWrite(IOWrite_c)
    );

    IFetch u_if (
        .clk(cpu_clk),
        .rst(rst_in),
        .Branch(br_c),
        .nBranch(nbr_c),
        .Jmp(Jmp_c),
        .Jal(Jal_c),
        .Jr(Jr_c),
        .Zero(is_Zero),
        .rd_v(reg_out1),
        .alu_addr_i(alu_addr_o),

        .upg_rst_i(upg_rst),
        .upg_clk_i(upg_clk_w),
        .upg_wen_i(upg_wen_w & !upg_adr_w[14]),
        .upg_adr_i(upg_adr_w[13:0]),
        .upg_dat_i(upg_dat_w),
        .upg_done_i(upg_done_w),

        .pc_o(pc_now),
        .rom_addr(rom_addr),
        .link_addr(link_addr),
        .Ins(Instruction)
    );

    IDecode u_id (
        .clk(cpu_clk),
        .rst(rst_in),
        .Jal(Jal_c),

        .Ins(Instruction),
        .Reg_Write_In(Reg_WriteData),
        .ALU_In(alu_o),

        .RegWrite(RegWrite_c),
        .MemtoReg(MemOrIOReg_c),
        .RegDst(RegDst_c),

        .link_addr(link_addr),

        .imm_ex(imm_extend),
        .rs_v(reg_out1),
        .rt_v(reg_out2)

        //,
        // .regs_o(regs_o)
        //
    );

    Excute u_ex (
        .op(Instruction[31:26]),
        .rs_v(reg_out1),
        .rt_v(reg_out2),
        .shamt(Instruction[10:6]),
        .funct(Instruction[5:0]),

        .sftmd(Shfmd_c),
        .imm_ex(imm_extend),
        .pcp4(pc_now + 4),
        .ALUOp(ALUOp_c),
        .I_type(itype_c),
        .ALUSrc(ALUSrc_c),

        .Zero(is_Zero),
        .ALU_out(alu_o),
        .alu_addr_out(alu_addr_o)
        //
        //
    );
    wire [15:0] board_val;

    key_board kkk (
        .clk(cpu_clk),
        .rst(rst_in),
        .bend(Board_end),
        .row(row),
        .col(col),
        .keyboardval(board_val)
    );
    BinaryToDecimal kkk_btod (
        .binary_in(board_val),
        .decimal_out(board_data)
    );

    key_board_c keyC (
        .clk(cpu_clk),
        .rst(rst_in),
        .key_board_c(Board_c),
        .key_board_in(board_data),

        .key_board_wdata(board_io)
    );

    wire [31:0] seg_in;

    wire [15:0] seg_data;

    seg_ctrl seg_ctrl (
        .clk(cpu_clk),
        .rst(rst_in),
        .origindata(write_data[15:0]),
        .sctrl(Seg_c),

        .seg_data(seg_data)
    );
    wire [31:0] seg8 = {seg_data, board_val};

    wire [63:0] seg_trans;

    seg_trans_to_seg_in seg1 (
        .seg_in(seg8),
        .seg_trans(seg_trans)
    );

    seg_ces seg (
        .clk(cpu_clk),
        .rst(rst_in),
        .seg_in(seg_trans),
        .seg_en(seg_en),
        .seg_out(seg_out)
    );


    LED u_led (
        .clk(cpu_clk),
        .rst(rst_in),
        .LEDCtrlLow(LedL_c),
        .LEDCtrlMid(LedM_c),
        .LEDCtrlHigh(LedH_c),
        .LEDCtrlLM(LedLM_c),
        .ledwdata(write_data[15:0]),

        .ledout(led2N4)
    );

    Switch u_sw (
        .clk(cpu_clk),
        .rst(rst_in),
        .SwitchCtrlLow(SwL_c),
        .SwitchCtrlMid(SwM_c),
        .SwitchCtrlHigh(SwH_c),
        .switch_rdata(switch2N4),

        .switch_wdata(sw_data)
    );

    vga_ctrl vctrl (
        .clk(cpu_clk),
        .rst(rst_in),
        .vga_ctrl(v_c),
        .data_in(write_data[15:0]),

        .data(vc_data_w)
    );

    VGA vmain (
        .clk(fpga_clk),
        .rst(rst_in),
        .vc_data(vc_data_w),

        .rgb(v_rgb),
        .vs(v_vs),
        .hs(v_hs)
    );

endmodule
