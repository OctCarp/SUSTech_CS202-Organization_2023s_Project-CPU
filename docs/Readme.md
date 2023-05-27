## SUSTech_CS202-Organization_2023s_Project-CPU

#### 小组成员：徐春晖，郭健阳，唐培致

> 源码托管于 GitHub，将在项目 ddl 结束后基于 **MIT License** 协议开源，访问链接：
>
> https://github.com/OctCarp/SUSTech_CS202-Organization_2023s_Project-CPU

------

### 开发者说明

| 姓名       | 学号         | 负责内容                                            | 贡献比 |
| ---------- | ------------ | --------------------------------------------------- | ------ |
| **徐春晖** | **12110304** | CPU 硬件的实现和测试，场景 1 汇编编写，VGA 模式输出 |        |
| **郭健阳** | **12111506** | 场景 2 汇编编写，汇编代码测试                       |        |
| **唐培致** | **12110502** | 键盘输入，七段数码显示管输出                        |        |

### 版本修改记录



------

### CPU 架构设计说明

#### 1. CPU特性：

- **ISA**：

| R-Type | opcode   | rs    | rt    | rd    | shamt | func   | 使用方式                             | 举例            |
  | ------ | -------- | ----- | ----- | ----- | ----- | ------ | ------------------------------------ | --------------- |
  | add    | `000000` | rs    | rt    | rd    | 00000 | 100000 | rd <- **rs + rt**                    | add $1, $2, $3  |
  | addu   | `000000` | rs    | rt    | rd    | 00000 | 100001 | rd <- **rs + rt (无符号)**           | addu $1, $2, $3 |
  | sub    | `000000` | rs    | rt    | rd    | 00000 | 100010 | rd <- **rs - rt**                    | sub $1, $2, $3  |
  | subu   | `000000` | rs    | rt    | rd    | 00000 | 100011 | rd <- **rs - rt (无符号)**           | subu $1, $2, $3 |
  | and    | `000000` | rs    | rt    | rd    | 00000 | 100100 | rd <- **rs & rt**                    | and $1, $2, $3  |
  | or     | `000000` | rs    | rt    | rd    | 00000 | 100101 | rd <- **rs \| rt**                   | or $1, $2, $3   |
  | xor    | `000000` | rs    | rt    | rd    | 00000 | 100110 | rd <- **rs ^ rt**                    | xor $1, $2, $3  |
  | nor    | `000000` | rs    | rt    | rd    | 00000 | 100111 | rd <- **~(rs \| rt)**                | nor $1, $2, $3  |
  | slt    | `000000` | rs    | rt    | rd    | 00000 | 101010 | rd <- **(rs < rt) ? 1 : 0**          | slt $1, $2, $3  |
  | sltu   | `000000` | rs    | rt    | rd    | 00000 | 101011 | rd <- **(rs < rt) ? 1 : 0 (无符号)** | sltu $1, $2, $3 |
  | sll    | `000000` | 00000 | rt    | rd    | shamt | 000000 | rd <- **rt << shamt**                | sll $1, $2, 4   |
  | srl    | `000000` | 00000 | rt    | rd    | shamt | 000010 | rd <- **rt >> shamt (逻辑右移)**     | srl $1, $2, 4   |
  | sra    | `000000` | 00000 | rt    | rd    | shamt | 000011 | rd <- **rt >> shamt (算术右移)**     | sra $1, $2, 4   |
  | jr     | `000000` | rs    | 00000 | 00000 | 00000 | 001000 | 跳转到**$ra**中存的地址              | jr $1           |

  | I-Type | opcode   | rs    | rt    | immediate | 使用方式                                                | 举例              |
  | ------ | -------- | ----- | ----- | --------- | ------------------------------------------------------- | ----------------- |
  | addi   | `001000` | rs    | rt    | immediate | rt <- **rs + immediate**                                | addi $1, $2, 100  |
  | addiu  | `001001` | rs    | rt    | immediate | rt <- **rs + immediate (无符号)**                       | addiu $1, $2, 100 |
  | slti   | `001010` | rs    | rt    | immediate | rt <- **(rs < immediate) ? 1 : 0**                      | slti $1, $2, 10   |
  | sltiu  | `001011` | rs    | rt    | immediate | rt <- **(rs < immediate) ? 1 : 0 (无符号)**             | sltiu $1, $2, 10  |
  | andi   | `001100` | rs    | rt    | immediate | rt <- **rs & immediate**                                | andi $1, $2, 255  |
  | ori    | `001101` | rs    | rt    | immediate | rt <- **rs \| immediate**                               | ori $1, $2, 255   |
  | xori   | `001110` | rs    | rt    | immediate | rt <- **rs ^ immediate**                                | xori $1, $2, 255  |
  | lui    | `001111` | 00000 | rt    | immediate | rt <- **immediate << 16**                               | lui $1, 65535     |
  | lw     | `100011` | rs    | rt    | immediate | rt <- **Memory[rs + immediate]**                        | lw $1, 100($2)    |
  | sw     | `101011` | rs    | rt    | immediate | Memory[rs + immediate] <- **rt**                        | sw $1, 100($2)    |
  | beq    | `000100` | rs    | rt    | immediate | if rs = rt then branch to **PC + 4 + (immediate << 2)** | beq $1, $2, label |
  | bne    | `000101` | rs    | rt    | immediate | if rs ≠ rt then branch to **PC + 4 + (immediate << 2)** | bne $1, $2, label |
  | blez   | `000110` | rs    | 00000 | immediate | if rs ≤ 0 then branch to **PC + 4 + (immediate << 2)**  | blez $1, label    |
  | bgtz   | `000111` | rs    | 00000 | immediate | if rs > 0 then branch to **PC + 4 + (immediate << 2)**  | bgtz $1, label    |

  | J-Type | opcode   | target | 使用方式                                                     | 举例      |
  | ------ | -------- | ------ | ------------------------------------------------------------ | --------- |
  | j      | `000010` | target | 跳转到某个标签对应的 **PC** 值                               | j label   |
  | jal    | `000011` | target | 跳转到某个标签对应的 **PC** 值，并将当前 **PC + 4** 存入 **$ra** 寄存器中 | jal label |

- 参考的 ISA：**MiniSys-1A，MIPS**

- 寻址空间设计：使用了哈佛结构。指令中寻址单位为字节，实际中以字为数据位宽，即指令空间和数据空间读写位宽均为 **32 bits**，读写深度均为 **16384**

- 外设 IO 支持：软硬件协同以实现功能，采用 MMIO 外设对应的寻址范围为 0xFFFFFFC00 起，地址末 4bit 值分别为：

  - | IO 设备             | 地址末 4bit |
    | ------------------- | ----------- |
    | 开关输入 低八位     | 0x0         |
    | 开关输入 中八位     | 0x1         |
    | 开关输入 高八位     | 0x2         |
    | 确认按钮输入        | 0x3         |
    | 键盘输入            | 0x9         |
    | LED 灯输出 低 8 位  | 0x0         |
    | LED 灯输出 中 8 位  | 0x1         |
    | LED 灯输出 高 8 位  | 0x2         |
    | LED 灯输出 低 16 位 | 0x3         |
    | 七段数码显示输出    | 0x8         |
    | VGA 输出            | 0x7         |
    

- CPU 为单周期 CPU，CPI 接近为 1，不支持 Pipeline

#### 2.CPU 接口：

#### LED引脚定义：

| 引脚 | 规格     | 名称         | 功能      |
| ---- | -------- | ------------ | --------- |
| K17  | `output` | `led2N4[23]` | LED引脚23 |
| L13  | `output` | `led2N4[22]` | LED引脚22 |
| M13  | `output` | `led2N4[21]` | LED引脚21 |
| K14  | `output` | `led2N4[20]` | LED引脚20 |
| K13  | `output` | `led2N4[19]` | LED引脚19 |
| M20  | `output` | `led2N4[18]` | LED引脚18 |
| N20  | `output` | `led2N4[17]` | LED引脚17 |
| N19  | `output` | `led2N4[16]` | LED引脚16 |
| M17  | `output` | `led2N4[15]` | LED引脚15 |
| M16  | `output` | `led2N4[14]` | LED引脚14 |
| M15  | `output` | `led2N4[13]` | LED引脚13 |
| K16  | `output` | `led2N4[12]` | LED引脚12 |
| L16  | `output` | `led2N4[11]` | LED引脚11 |
| L15  | `output` | `led2N4[10]` | LED引脚10 |
| L14  | `output` | `led2N4[9]`  | LED引脚9  |
| J17  | `output` | `led2N4[8]`  | LED引脚8  |
| F21  | `output` | `led2N4[7]`  | LED引脚7  |
| G22  | `output` | `led2N4[6]`  | LED引脚6  |
| G21  | `output` | `led2N4[5]`  | LED引脚5  |
| D21  | `output` | `led2N4[4]`  | LED引脚4  |
| E21  | `output` | `led2N4[3]`  | LED引脚3  |
| D22  | `output` | `led2N4[2]`  | LED引脚2  |
| E22  | `output` | `led2N4[1]`  | LED引脚1  |
| A21  | `output` | `led2N4[0]`  | LED引脚0  |

#### 开关引脚定义：

| 引脚 | 规格    | 名称            | 功能       |
| ---- | ------- | --------------- | ---------- |
| Y9   | `input` | `switch2N4[23]` | 开关引脚23 |
| W9   | `input` | `switch2N4[22]` | 开关引脚22 |
| Y7   | `input` | `switch2N4[21]` | 开关引脚21 |
| Y8   | `input` | `switch2N4[20]` | 开关引脚20 |
| AB8  | `input` | `switch2N4[19]` | 开关引脚19 |
| AA8  | `input` | `switch2N4[18]` | 开关引脚18 |
| V8   | `input` | `switch2N4[17]` | 开关引脚17 |
| V9   | `input` | `switch2N4[16]` | 开关引脚16 |
| AB6  | `input` | `switch2N4[15]` | 开关引脚15 |
| AB7  | `input` | `switch2N4[14]` | 开关引脚14 |
| V7   | `input` | `switch2N4[13]` | 开关引脚13 |
| AA6  | `input` | `switch2N4[12]` | 开关引脚12 |
| Y6   | `input` | `switch2N4[11]` | 开关引脚11 |
| T6   | `input` | `switch2N4[10]` | 开关引脚10 |
| R6   | `input` | `switch2N4[9]`  | 开关引脚9  |
| V5   | `input` | `switch2N4[8]`  | 开关引脚8  |
| U6   | `input` | `switch2N4[7]`  | 开关引脚7  |
| W5   | `input` | `switch2N4[6]`  | 开关引脚6  |
| W6   | `input` | `switch2N4[5]`  | 开关引脚5  |
| U5   | `input` | `switch2N4[4]`  | 开关引脚4  |
| T5   | `input` | `switch2N4[3]`  | 开关引脚3  |
| T4   | `input` | `switch2N4[2]`  | 开关引脚2  |
| R4   | `input` | `switch2N4[1]`  | 开关引脚1  |
| W4   | `input` | `switch2N4[0]`  | 开关引脚0  |

#### 其他引脚定义：

| 引脚 | 规格     | 名称       | 功能     |
| ---- | -------- | ---------- | -------- |
| Y19  | `input`  | `rx`       | 接收信号 |
| V18  | `output` | `tx`       | 发送信号 |
| Y18  | `input`  | `fpga_clk` | FPGA时钟 |
| P20  | `input`  | `fpga_rst` | FPGA复位 |
| P5   | `input`  | `start_pg` | 启动信号 |
| P1   | `input`  | `ck_btn`   | 按钮时钟 |

#### VGA|键盘|七段数码管引脚定义

| 引脚 | 规格     | 名称         | 功能                  |
| ---- | -------- | ------------ | --------------------- |
| H15  | `output` | `v_rgb[11]`  | RGB引脚11             |
| J15  | `output` | `v_rgb[10]`  | RGB引脚10             |
| G18  | `output` | `v_rgb[9]`   | RGB引脚9              |
| G17  | `output` | `v_rgb[8]`   | RGB引脚8              |
| H22  | `output` | `v_rgb[7]`   | RGB引脚7              |
| J22  | `output` | `v_rgb[6]`   | RGB引脚6              |
| H18  | `output` | `v_rgb[5]`   | RGB引脚5              |
| H17  | `output` | `v_rgb[4]`   | RGB引脚4              |
| K22  | `output` | `v_rgb[3]`   | RGB引脚3              |
| K21  | `output` | `v_rgb[2]`   | RGB引脚2              |
| G20  | `output` | `v_rgb[1]`   | RGB引脚1              |
| H20  | `output` | `v_rgb[0]`   | RGB引脚0              |
| M21  | `output` | `v_hs`       | 水平同步信号          |
| L21  | `output` | `v_vs`       | 垂直同步信号          |
| M2   | `output` | `col[3]`     | 键盘列3               |
| K6   | `output` | `col[2]`     | 键盘列2               |
| J6   | `output` | `col[1]`     | 键盘列1               |
| L5   | `output` | `col[0]`     | 键盘列0               |
| K4   | `input`  | `row[3]`     | 键盘行3               |
| J4   | `input`  | `row[2]`     | 键盘行2               |
| L3   | `input`  | `row[1]`     | 键盘行1               |
| K3   | `input`  | `row[0]`     | 键盘行0               |
| C19  | `output` | `seg_en[0]`  | 数码管使能引脚0       |
| E19  | `output` | `seg_en[1]`  | 数码管使能引脚1       |
| D19  | `output` | `seg_en[2]`  | 数码管使能引脚2       |
| F18  | `output` | `seg_en[3]`  | 数码管使能引脚3       |
| E18  | `output` | `seg_en[4]`  | 数码管使能引脚4       |
| B20  | `output` | `seg_en[5]`  | 数码管使能引脚5       |
| A20  | `output` | `seg_en[6]`  | 数码管使能引脚6       |
| A18  | `output` | `seg_en[7]`  | 数码管使能引脚7       |
| F15  | `output` | `seg_out[0]` | 数码管输出引脚0       |
| F13  | `output` | `seg_out[1]` | 数码管输出引脚1       |
| F14  | `output` | `seg_out[2]` | 数码管输出引脚2       |
| F16  | `output` | `seg_out[3]` | 数码管输出引脚3       |
| E17  | `output` | `seg_out[4]` | 数码管输出引脚4       |
| C14  | `output` | `seg_out[5]` | 数码管输出引脚5       |
| C15  | `output` | `seg_out[6]` | 数码管输出引脚6       |
| E13  | `output` | `seg_out[7]` | 数码管输出引脚7       |
| R1   | `input`  | `Board_end`  | 板端信号,键盘输入清空 |

- 时钟：在本CPU中使用到了开发板提供的100MHz时钟(Y18)，通过ip核分别转化成为了23MHz (供单周期CPU使用)以及10MHz (供uart接口使用)，占空比为50%的周期时钟信号。
- 复位：使用异步复位，我们通过高电位信号来判断复位信号并通过开发板的按钮外设来控制复位信号的输入。在按下复位按钮之后，  CPU将会重新回到初始状态，之前的所有状态将会被清空。
- uart接口：我们实现并提供了uart接口，该接口可以支持将生成好的coe文件发送给CPU。使用该接口需要按下CPU中设定好的用来控制通信状态的按钮(P2)来使CPU进入通信状态(此时，七段数 码显示管第一位全亮来提示已经进入通信状态)，在此状态下之后，使用串口调试助手将指定文件 发送给CPU，当显示发送完成的字样后，再次按下控制按钮(P2)来使CPU回到普通工作模式即  可。还用到了Y19以及V18端口来分别作为数据的接受和发送端。
- 数据输入&输出接口

  - 控制输入方式接口：由于我们同时实现了键盘输入以及开关输入的方式，因此另实现一个控制接口来控制输入的方式。
- 确认输入完成接口：为了可以让CPU执行我们所希望输入的数据，在按下该按钮前，CPU不会进行下一步的读入操作。该接口绑定在按钮P5上，当确认输入完成之后，按下该按钮，CPU就会读入已经准备好的数据。
  - 开关输入接口：除了之前已经提到过的开关之外，我们还实现了其他开关的接口。其中switch2N4[16]至switch2N4[18]（高8位中的低3位）用来控制测试样例编号的输入，支持编号0-7的输入。拨码开关的中8位和低8位则根据测试样例的不同，用于输入测试数据a或b。 (具体的端口绑定请看minisys_cons.xdc文件)
- LED灯输出：16-18号显示当前测试场景，0-15号LED灯来作为数据输入时的指示以及计算结果的显示，当输入数据或者准备进行运算并按下确认输入完成按钮后,LED灯便会显示对应数据的二进制数，若为1则亮灯，反之不亮。同时使用led2N4[0]来作为判断的指示信号灯，若判断关系成立则亮灯，反之不亮。(具体的端口绑定请看minisys_cons.xdc文件)
  - 小键盘接口：实现了小键盘的输入，可以通过小键盘来输入对应数据(十进制数)。其中，输入上限为4个十进制数，到达上限之后会按照输入的次序依次删除。  (具体的端口绑定请看 minisys_cons.xdc文件)
- 小键盘归零接口：在实现小键盘的基础上，为了输入的合理性以及便捷性，我们另实现了清空按钮(P1)。当按下归零按钮后，若此时键盘输入数据不为空则会清空已输入的键盘输入。
  - 七段数码显示管：在实现小键盘的基础上，为了输入的可视性，我们另实现了七段数码显示管接口，在右边四位可以实时展示此时小键盘的输入数据，而在左边四位实时显示运算结果（十六进制数）。 (具体的端口绑定请看minisys_cons.xdc文件)
- VGA输出：

#### 3.CPU 内部结构：

- [CPU顶层](https://github.com/OctCarp/SUSTech_CS202-Organization_2023s_Project-CPU/blob/main/CPU_Verilog/CPU.sv)
![CPU](img/CPU.png)





![CPU_](img/CPU_.png)

- [MemIO](https://github.com/OctCarp/SUSTech_CS202-Organization_2023s_Project-CPU/blob/main/CPU_Verilog/memio.sv)

  | 端口名称          | 功用描述                                 |
  | ----------------- | ---------------------------------------- |
  | `mRead`           | 从控制器读取内存数据                     |
  | `mWrite`          | 向控制器写入内存数据                     |
  | `ioRead`          | 从控制器读取I/O数据                      |
  | `ioWrite`         | 向控制器写入I/O数据                      |
  | `m_rdata`         | 从内存读取的数据                         |
  | `r_rdata`         | 从idecode32（寄存器文件）读取的数据      |
  | `addr_in`         | 来自executs32中的alu_result的地址        |
  | `io_rdata_switch` | 从开关读取的数据（16位）                 |
  | `io_rdata_board`  | 从板上读取的数据（16位）                 |
  | `io_rdata_btn`    | 按钮的数据                               |
  | `addr_out`        | 写入内存的地址                           |
  | `r_wdata`         | 写入idecode32（寄存器文件）的数据        |
  | `write_data`      | 写入内存或I/O的数据（m_wdata、io_wdata） |
  | `LEDCtrlLow`      | LED低位选择                              |
  | `LEDCtrlMid`      | LED中间选择                              |
  | `LEDCtrlHigh`     | LED高位选择                              |
  | `LEDCtrlLM`       | LED 低位和中间位同时选择                 |
  | `SwitchCtrlLow`   | 低位开关控制                             |
  | `SwitchCtrlMid`   | 中间开关控制                             |
  | `SwitchCtrlHigh`  | 高位开关控制                             |
  | `SegCtrl`         | 液晶显示控制                             |
  | `vga_ctrl`        | VGA控制                                  |
  | `BoardCtrl`       | 键盘控制                                 |

![](img/memio.png)

![](img/mem.png)

- [IFetch](https://github.com/OctCarp/SUSTech_CS202-Organization_2023s_Project-CPU/blob/main/CPU_Verilog/Ifetc32.sv)

| 端口名称     | 功用描述                  |
| ------------ | ------------------------- |
| `clk`        | 系统时钟                  |
| `rst`        | 复位信号                  |
| `Branch`     | 分支控制信号              |
| `nBranch`    | 非分支控制信号            |
| `Jmp`        | 跳转控制信号              |
| `Jal`        | 跳转并链接控制信号        |
| `Jr`         | 寄存器跳转控制信号        |
| `Zero`       | 零信号                    |
| `rd_v`       | 读取的寄存器值            |
| `alu_addr_i` | ALU计算的地址             |
| `upg_rst_i`  | UPG复位信号（高电平有效） |
| `upg_clk_i`  | UPG时钟信号（10MHz）      |
| `upg_wen_i`  | UPG写使能信号             |
| `upg_adr_i`  | UPG写地址                 |
| `upg_dat_i`  | UPG写数据                 |
| `upg_done_i` | UPG程序完成信号           |
| `Ins`        | 指令输出                  |
| `pc_o`       | 程序计数器输出            |
| `rom_addr`   | ROM地址输出               |
| `link_addr`  | 链接地址寄存器            |

![](img/Ifetch.png)

- [IDecoder](https://github.com/OctCarp/SUSTech_CS202-Organization_2023s_Project-CPU/blob/main/CPU_Verilog/decode32.sv)

  | 端口名称       | 功用描述               |
  | -------------- | ---------------------- |
  | `clk`          | 系统时钟               |
  | `rst`          | 复位信号               |
  | `Jal`          | 跳转并链接控制信号     |
  | `Ins`          | 指令输入               |
  | `Reg_Write_In` | 寄存器写入数据         |
  | `ALU_In`       | ALU输入数据            |
  | `RegWrite`     | 寄存器写使能信号       |
  | `MemtoReg`     | 内存写入寄存器使能信号 |
  | `RegDst`       | 寄存器目标选择控制信号 |
  | `link_addr`    | 链接地址               |
  | `imm_ex`       | 扩展后的立即数         |
  | `rs_v`         | rs寄存器的值           |
  | `rt_v`         | rt寄存器的值           |
  | `regs_o[0:31]` | 所有寄存器的值         |

![](img/IDecoder.png)

- execute

  | 端口名称       | 功用描述              |
  | -------------- | --------------------- |
  | `op`           | 操作码输入            |
  | `rs_v`         | rs寄存器的值          |
  | `rt_v`         | rt寄存器的值          |
  | `shamt`        | 移位操作数            |
  | `funct`        | 函数码                |
  | `sftmd`        | 移位模式控制信号      |
  | `imm_ex`       | 扩展后的立即数        |
  | `pcp4`         | 程序计数器加4         |
  | `ALUOp`        | ALU操作控制信号       |
  | `I_type`       | I类指令标志           |
  | `ALUSrc`       | ALU操作数选择控制信号 |
  | `Zero`         | 零标志位              |
  | `ALU_out`      | ALU输出结果           |
  | `alu_addr_out` | ALU计算地址结果       |

- switch

  

![](img/keyDeb.png)







### 测试说明

#### asm文件详细描述

##### 1. 如何实现IO模块，与用户交互

```assembly
main:
    lui $28, 0xFFFF			
    ori $28, $28, 0xFC00
    
#等待读入信号
begin_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, begin_1
    
begin_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, begin_2
    
    #读入数据
    lw $a3, 0x72($28) #a3存放的是测试用例
    
    #输出数据
    sw $a3, 0x62($28) #将a3中存放的测试用例显示在led灯上
```

如上，我们约定若 `lw`,`sw` 后面跟的地址大于0xFFFFFC60表示输出数据到开发板，大于0xFFFFFC70表示从开发板读取数据，若小于0XFFFFFC60则表示实际意义上的 `lw` 与 `sw`。其中 `sw` 到 `$28` 的0xFFFFFC60地址表示以二进制输出值到开发板靠右边的8个led灯上，亮灯表示1，不亮表示0。 `sw` 到 `$28` 的0xFFFFFC61地址表示以二进制输出值到开发板中间的8个led灯上。 `sw` 到 `$28` 的0xFFFFFC63地址表示以二进制输出值到开发板靠右边16个led灯上（也就是中间8个加上右边8个led灯）。

 我们通过轮询的方式等待读入信号，当我们在开发板上输入完数据后，我们需要摁下并松开开发板上指定的按钮，这样，寄存器的 `$s7` 的值便会完成0->1->0的转变，便可跳出两个循环等待，这是只需要在后面 `lw` 想要的值便能实现用户输入。同时，程序会在下一次轮询是重复循环，继续等待信号完成输入，这样只要用户完成输入后，点击按钮，就可以完成下一次输入 。

##### 2. 如何实现判断测试用例

```assembly
	lw $a3, 0x72($28) #a3存放的是测试用例
    sw $a3, 0x62($28)
    sw $zero, 0x63($28) 
    xor $s2, $s2, $s2 #s2中存放的值归零
    beq $a3, $s2, tb000_1 #测试用例000
    addi $s2, $s2, 1
    beq $a3, $s2, tb001_1 #测试用例001
    addi $s2, $s2, 1
    beq $a3, $s2, tb010_1 #测试用例010
    addi $s2, $s2, 1
    beq $a3, $s2, tb011_1 #测试用例011
    addi $s2, $s2, 1
    beq $a3, $s2, tb100_1 #测试用例100
    addi $s2, $s2, 1
    beq $a3, $s2, tb101_1 #测试用例101
    addi $s2, $s2, 1
    beq $a3, $s2, tb110_1 #测试用例110
    addi $s2, $s2, 1
    beq $a3, $s2, tb111_1 #测试用例111
```

如上，先将 `$s2` 寄存器中的值归零，然后将 `$s2` 和 `$a3` 中的值比较，若相等，则跳到对应的测试用例的代码；若不相等，则将 `$s2` 中的值加一后再与 `$a3` 中的值进行再一次比较，如此反复进行直到找到对应的测试用例。

##### 3. 如何实现通过led灯闪烁报错

```assembly
t000_fin2:
    lui $t2, 0x0010         # 将0x00100000的高16位加载到$t0寄存器中
    ori $t2, $t2, 0x0000    # 将0x00100000的低16位与$t0寄存器中的值进行OR运算
    addi $t3, $zero, 16     # 将$t3的值置为16
    add $t4, $zero, $zero   # 将$t4的值置为0

# loop2用来进行闪烁
tb000_loop2:
    andi $v0, $t4, 1        #$t4为奇数$v0的值为1，$t4为偶数$v0的值为0
    sw  $v0, 0x60($28)
    add $t1, $zero, $zero   #将$t1重置为0
    addi $t4, $t4, 1        #不断变换$t4，奇数->偶数，偶数->奇数
    beq $t3, $t4, begin_1   #闪烁结束，共闪烁8次

#loop3用来控制闪烁的频率
tb000_loop3:
    beq $t1, $t2, tb000_loop2
    addi $t1, $t1, 1
    j tb000_loop3
```

如上，通过两层循环实现闪烁功能，第一层循环通过改变 `$v0` 的值0->1，1->0来实现亮灯和不亮灯，第二层循环通过计时实现对闪烁频率的控制。最终达到闪烁次数之后返回待用户输入状态。

##### 4. 递归实现出栈和入栈

```assembly
 	lw $a0, 0x70($28)
    add $t2, $zero, $zero
    beq $a0, $zero, tb001_fin1
    add $t0, $zero, $zero
    
    # 递归调用sum函数计算1到a的累加和
    addi $29, $29, -12    # 入栈，开辟栈空间
    sw $ra, 0($29)        # 保存返回地址
    sw $a0, 4($29)        # 保存参数a
    sw $t0, 8($29)        # 保存返回值
    addi $t2, $t2, 1      # 入栈次数加1
    jal tb001_sum
    lw $t0, 8($29)        # 恢复返回值
    lw $a0, 4($29)        # 恢复参数a
    lw $ra, 0($29)        # 恢复返回地址
    addi $29, $29, 12     # 出栈，回收栈空间
    addi $t2, $t2, 1      # 出栈次数加1

tb001_fin1:
    sw $t2, 0x61($28)     #输出出入栈次数和
    j begin_1

tb001_sum: 
    # 如果a=1，则返回1
    addi $t1, $zero, 1
    beq $a0, $t1, tb001_return
    # 否则，递归计算1到a-1的累加和，再加上a
    addi $a0, $a0, -1       # a-1作为新的参数
    addi $29, $29, -12      # 入栈，开辟栈空间
    sw $ra, 0($29)          # 保存返回地址
    sw $a0, 4($29)          # 保存参数a-1
    sw $t0, 8($29)          # 保存返回值
    addi $t2, $t2, 1        # 入栈次数加1
    jal tb001_sum           # 递归调用sum函数
    lw $t0, 8($29)          # 恢复返回值
    lw $a0, 4($29)          # 恢复参数a-1
    lw $ra, 0($29)          # 恢复返回地址
    addi $29, $29, 12       # 出栈，回收栈空间
    add $t0, $t0, $a0       # 将a加到结果中
    addi $t2, $t2, 1        # 出栈次数加1

tb001_return:
    jr $ra
```

如上，`$29` 是栈空间的指针，每次开辟12位栈空间用于存放新放入的返回地址、入栈参数、以及返回值（也就是累加的结果）。最后出栈的时候恢复返回值，入栈参数和返回地址。不断通过 `jal` 和 `jr $ra` 实现入栈和出栈，并且每次入栈和出栈时用于记录入栈和出栈总次数的 `$t2` 寄存器的值都会加1，从而实现记录入栈和出栈的总次数。

##### 5. 依次显示入栈（出栈）的参数，每个参数显示停留2-3秒（此处以显示入栈参数为例）

```assembly
	lw $a0, 0x70($28)
    beq $a0, $zero, tb010_fin1
    add $t0, $zero, $zero
 # 递归调用sum函数计算1到a的累加和
    addi $29, $29, -12    # 入栈，开辟栈空间
    sw $ra, 0($29)        # 保存返回地址
    sw $a0, 4($29)        # 保存参数a
    sw $t0, 8($29)        # 保存返回值
    sw $a0, 0x61($28)     # 将入栈的值输出到开发板的led灯上，实现入栈参数显示
    j tb010_loop1         # 跳转到延时循环，持续显示入栈参数2-3秒再切换到下一个入栈参数

tb010_next1:
    jal tb010_sum
    lw $t0, 8($29)        # 恢复返回值
    lw $a0, 4($29)        # 恢复参数a
    lw $ra, 0($29)        # 恢复返回地址
    addi $29, $29, 12     # 出栈，回收栈空间

tb010_fin1:
    j begin_1

#延时循环，等待2-3秒
tb010_loop1:
    add $t3, $zero, $s5   #$s5中存放的是参数0x15EF3C0用于控制延迟的时间

tb010_delay1:
    addi $t3, $t3, -1
    beq $t3, $zero, tb010_next1
    j tb010_delay1

#延时循环，等待2-3秒
tb010_loop2:
    add $t3, $zero, $s5

tb010_delay2:
    addi $t3, $t3, -1
    beq $t3, $zero, tb010_next2
    j tb010_delay2
 
tb010_sum: 
    # 如果a=1，则返回1
    addi $t1, $zero, 1
    beq $a0, $t1, tb010_return
    # 否则，递归计算1到a-1的累加和，再加上a
    addi $a0, $a0, -1       # a-1作为新的参数
    addi $29, $29, -12      # 入栈
    sw $ra, 0($29)          # 保存返回地址
    sw $a0, 4($29)          # 保存参数a-1
    sw $t0, 8($29)          # 保存返回值
    sw $a0, 0x61($28)
    j tb010_loop2

tb010_next2:
    jal tb010_sum           # 递归调用sum函数
    lw $t0, 8($29)          # 恢复返回值
    lw $a0, 4($29)          # 恢复参数a-1
    lw $ra, 0($29)          # 恢复返回地址
    addi $29, $29, 12       # 出栈
    add $t0, $t0, $a0       # 将a加到结果中

tb010_return:
    jr $ra
```

如上，在每次入栈时将入栈参数输出到开发板的led灯上，然后跳转到延迟循环，在2-3秒后继续进行下一个参数的入栈操作。

##### 6. 实现两个8bit有符号数相加和相减，以及进行溢出判断（以相减为例）

```assembly
	# $s0和$s1中分别存放着a和b的值
	add $t6, $s1, $zero
    xor $t6, $t6, $s3      # 其中$s3中存放的是参数0x000000FF
    addi $t6, $t6, 1
    add $t5, $s0, $t6
    sw $t5, 0x61($28)

# 检查溢出
    addi $t8, $zero, 127
    addi $t9, $zero, 128
tb101_check1: #检查s0正负
    slt $t1, $t8, $s0
    beq $t1, $zero, tb101_check2
    j tb101_check3

tb101_check2: #s0为正数，检查s1正负
    slt $t2, $t8, $s1
    beq $t2, $zero, tb101_no_overflow
    j tb101_check4

tb101_check3: #s0为负数，检查s1正负
    slt $t2, $t8, $s1
    beq $t2, $zero, tb101_check5
    j tb101_no_overflow

tb101_check4: # s0为正数，s1为负数检查有没有溢出
    slt $t4, $t8, $t5
    beq $t4, $zero, tb101_no_overflow
    j tb101_overflow

tb101_check5: # s0为负数，s1为正数检查有没有溢出
    xor $t5, $s0, $s3
    addi $t5, $t5, 1
    add $t5, $t5, $s1
    slt $t4, $t9, $t5
    beq $t4, $zero, tb101_no_overflow
    j tb101_overflow

tb101_no_overflow:
    addi $t3, $zero, 0
    sw $t3, 0x60($28)
    j begin_1

tb101_overflow:
    addi $t3, $zero, 1
    sw $t3, 0x60($28)
    j begin_1
```

如上，减法的实现是将减数的低8bit按位取反再加一，再与被减数相加，得到结果。对于溢出的判断是通过对被减数和减数的分类讨论后和特定的数进行比较实现的。比如只用正数-负数或者负数-正数时才会发生溢出，并且正数-负数结果仍是正数，只需要将结果与127进行有符号数的大小比较即可判断是否溢出，若结果大于127，则溢出，若小于等于127，则没有溢出；而负数-正数结果仍是负数，只需要将结果与128比较即可，如果结果大于等于128，则没有溢出，若小于128，则溢出。

##### 7. 乘法的实现

```assembly
tb110_mul1:
    andi $t5, $s1, 0x01  # 取被乘数的最低位
    beq $t5, $zero, tb110_skip1     # 如果最低位为0，则跳过加法操作
    add $t2, $t2, $s0 

tb110_skip1:
    sll $s0, $s0, 1    # 乘数左移1位
    srl $s1, $s1, 1    # 被乘数右移1位
    addi $t4, $t4, 1   # 计数器加1
    slt $t3, $t4, $t7   # 如果计数器小于8，则继续循环
    beq $t3, $t6, tb110_mul1
```

如上，通过循环每次取被乘数的最低位，若最低位为0，则将乘数左移一位，将被乘数右移一位，同时计数器加1，若最低位不为0，则将乘数加到记录积的寄存器上去，如此循环8次，即可得到最终的积。同时对于两个负数相乘，先通过对被乘数和乘数进行分类讨论筛选，若为两个负数，则将其都转为两个正数，再进行上述方法计算相乘的积。

##### 8. 除法的实现，以及交替显示商和余数的实现

```assembly
# $t3存放$s0中的值也就是a的值，$t0存放$s1中的值也就是b的值
tb111_div1_1: #两个正数
    slt $t7, $t3, $t0 
    beq $t7, $t6, tb111_checkq1_1   # $t6中的值赋为1，若被除数小于除数，跳转到显示商                                       和余数部分
    beq $t8, $zero, tb111_div1_2
    xor $t9, $t0, $s4               # 把$s1取反加1
    addi $t9, $t9, 1                # $t9中存的是b的相反数
    addi $t8, $t8, -1               # $t8初始值赋为1
tb111_div1_2:
    add $t3, $t3, $t9               # 被除数减去除数
    addi $t2, $t2, 1                # 商加1
    j tb111_div1_1
```

如上，通过让被除数不断减去除数的方法计算商，每减去一次，商就加1，当被除数小于除数的时候，此时的被除数就是余数。此外对被除数和除数的正负进行分类讨论，最终将被除数和除数都转换成对应的正数进行上面的除法，但是对最终的商和余数的符号进行改变。当被除数和除数同号时，商的符号为正，被除数和除数异号时，商的符号为负；而余数的符号和被除数的符号一致。交替显示商和余数实现的方式与前面闪烁的方式相同，只不过此时led灯的值变成了商和余数的值，而不再是1（即不再是只亮一个led灯）。

### 问题及总结



------

### Bonus 对应功能点的设计说明

#### 1.设计思路及与周边模块的关系

本次Project我们完成的bonus有：支持小键盘读入（小键盘可以清空，删除），七段数码管，VGA显示，uart通信，具体的bonus演示可参考我们的视频。

#### 2.核心代码及必要说明

###### 小键盘：

概况总结：

- 模块接收时钟信号`clk`和复位信号`rst`，以及输入行（`row`）和输出列（`col`）。
- 输出包括键盘值（`keyboardval`），表示当前按下的键，以及按键按下的标志（`key_pressed_flag`）。
- 内部包含计数器（`cnt`和`cnts`）和状态寄存器（`current_state`和`next_state`）。

基本思路：

- 模块通过计数器生成`key_clk`和`seg_clk`信号，用于控制键盘扫描和键值更新的时钟。
- 状态机通过检测输入的行号（`row`）和当前状态（`current_state`）来决定下一个状态（`next_state`）。
- 根据当前状态，设置输出列（`col`）和按键按下的标志（`key_pressed_flag`）。
- 当按键按下时，根据当前的列和行值，更新键盘值（`keyboardval`）。

该模块使用了状态机的方式进行键盘扫描和键值更新。它通过不断递增的计数器生成时钟信号，控制扫描和更新的时间。在不同的状态下，根据输入行和当前状态，设置输出列和按键按下的标志，并在按键按下时更新键盘值。此模块可用于实现基本的键盘输入功能，检测按键并输出相应的键值和状态信息。

![](img/keyboard.png)

###### 七段数码管：

该模块的功能是控制数码管的显示，通过分频器将输入的时钟信号分频，以控制数码管刷新的频率。使用计数器进行选择，依次显示输入数据的不同部分。通过输出的`seg_en`信号选择当前显示的数码管，通过`seg_out`输出对应数码管上的数据。

```verilog
reg [14:0] cnts;                        
wire clk_slow;
#分频
always @ (posedge clk or posedge rst)
      if (rst)
          cnts <= 0;
      else
          cnts <= cnts + 1'b1;
          
assign clk_slow = cnts[14];
```

```verilog
#根据分频后的时钟，不断刷新数码管
#利用视觉暂留，实现八个位都可以显示数字
always @ (posedge clk_slow or posedge rst) 
        if(rst == 1)
            seg_out <= 0;
        else begin
        case (cnt)
            3'b111: seg_out = seg_in[7:0];
            3'b000: seg_out = seg_in[15:8];
            3'b001: seg_out = seg_in[23:16];
            3'b010: seg_out = seg_in[31:24];
            3'b011: seg_out = seg_in[39:32];
            3'b100: seg_out = seg_in[47:40];
            3'b101: seg_out = seg_in[55:48];
            3'b110: seg_out = seg_in[63:56];
        endcase
    end
```



### Bonus 测试说明

VGA会显示当前模式

### Bonus 问题与总结

- 七段数码显示管显示数字重叠

  由数码管选择信号变化频率过快导致，由于选择信号频率变化过快，数码管无法快速反映出选择信号的变化，所以同时显示三个数字的七段数码信号。将其由系统时钟分频为周期为 2ms左右的时钟后解决。

- 键盘输入后，显示区显示四个同样数字

  由于键盘检测频率过快，按下一次输入了多个重复数字。分频时钟后解决。
- 键盘输入信号无法传入cpu参与运算。单独写了信号控制模块后解决。
  

------

### 项目报告到此结束，感谢您的阅读！
