.data

.text
main:
    addi $29, $zero, 0x10000000
    lui $28, 0xFFFF			
    ori $28, $28, 0xFC00
    lui $s6, 0x0000
    ori $s6, $s6, 0xFF00 #sign extend
    lui $s5, 0x015E
    ori $s5, $s5,0xF3C0	
    lui $s4, 0xFFFF
    ori $s4, $s4, 0xFFFF
    lui $s3, 0x0000
    ori $s3, $s3, 0x00FF
begin_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, begin_1
begin_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, begin_2
    lw $a3, 0x72($28) #a3存放的是测试用例

    addi $a2, $a3, 8
    sw $a2, 0x67($28)

    sw $a3, 0x62($28)
    sw $zero, 0x63($28)
    xor $s2, $s2, $s2
    beq $a3, $s2, tb000_1 #2power
    addi $s2, $s2, 1
    beq $a3, $s2, tb001_1 #odd
    addi $s2, $s2, 1
    beq $a3, $s2, tb010_1 #or
    addi $s2, $s2, 1
    beq $a3, $s2, tb011_1 #xor
    addi $s2, $s2, 1
    beq $a3, $s2, tb100_1
    addi $s2, $s2, 1
    beq $a3, $s2, tb101_1
    addi $s2, $s2, 1
    beq $a3, $s2, tb110_1
    addi $s2, $s2, 1
    beq $a3, $s2, tb111_1

####################################
tb000_1:
    lw $s7, 0x73($28) #s7表示使能信号，按下按钮，开始计算
    bne $s7, $zero, tb000_1
tb000_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb000_2
    lw $a0, 0x70($28)
    sw $a0, 0x61($28)
    xor $v0, $v0, $v0
    addi $t7, $zero, 128
    slt $t5, $a0, $t7
    beq $t5, $zero, t000_fin2 #a0<0
    beq $a0, $zero, t000_fin1 #a0==0 or a0>0

tb000_loop1: 
    add $v0, $v0, $a0
    addi $a0, $a0, -1
    beq $a0, $zero, t000_fin1
    j tb000_loop1

t000_fin1:
    sw $v0, 0x60($28)
    sw $v0, 0x68($28)
    j begin_1

t000_fin2:
    lui $t2, 0x0010         # 将0x00100000的高16位加载到$t0寄存器中
    ori $t2, $t2, 0x0000    # 将0x00100000的低16位与$t0寄存器中的值进行OR运算
    addi $t3, $zero, 16
    add $t4, $zero, $zero

tb000_loop2:
    andi $v0, $t4, 1
    sw $v0, 0x60($28)
    sw $v0, 0x68($28)

    add $t1, $zero, $zero
    addi $t4, $t4, 1
    beq $t3, $t4, begin_1

tb000_loop3:
    beq $t1, $t2, tb000_loop2
    addi $t1, $t1, 1
    j tb000_loop3

####################################
tb001_1:
    lw $s7, 0x73($28)  
    bne $s7, $zero, tb001_1
tb001_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb001_2
    lw $a0, 0x79($28)
    add $t2, $zero, $zero
    beq $a0, $zero, tb001_fin1
    add $t0, $zero, $zero
    
    # 递归调用sum函数计算1到a的累加和
    addi $29, $29, -12    # 入栈
    sw $ra, 0($29)        # 保存返回地址
    sw $a0, 4($29)        # 保存参数a
    sw $t0, 8($29)        # 保存返回值
    addi $t2, $t2, 1
    jal tb001_sum
    lw $t0, 8($29)        # 恢复返回值
    lw $a0, 4($29)        # 恢复参数a
    lw $ra, 0($29)        # 恢复返回地址
    addi $29, $29, 12     # 出栈
    addi $t2, $t2, 1

tb001_fin1:
    sw $t2, 0x61($28)     #输出出入栈次数和
    sw $t2, 0x68($28) ###new version###
    j begin_1

tb001_sum: 
    # 如果a=1，则返回1
    addi $t1, $zero, 1
    beq $a0, $t1, tb001_return
    # 否则，递归计算1到a-1的累加和，再加上a
    addi $a0, $a0, -1       # a-1作为新的参数
    addi $29, $29, -12      # 入栈
    sw $ra, 0($29)          # 保存返回地址
    sw $a0, 4($29)          # 保存参数a-1
    sw $t0, 8($29)          # 保存返回值
    addi $t2, $t2, 1
    jal tb001_sum           # 递归调用sum函数
    lw $t0, 8($29)          # 恢复返回值
    lw $a0, 4($29)          # 恢复参数a-1
    lw $ra, 0($29)          # 恢复返回地址
    addi $29, $29, 12       # 出栈
    add $t0, $t0, $a0       # 将a加到结果中
    addi $t2, $t2, 1

tb001_return:
    jr $ra


####################################
tb010_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb010_1
tb010_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb010_2
    # lw $a0, 0x70($28)
    lw $a0, 0x69($28) ###new version###
    beq $a0, $zero, tb010_fin1
    add $t0, $zero, $zero
 # 递归调用sum函数计算1到a的累加和
    addi $29, $29, -12    # 入栈
    sw $ra, 0($29)        # 保存返回地址
    sw $a0, 4($29)        # 保存参数a
    sw $t0, 8($29)        # 保存返回值
    sw $a0, 0x61($28)
    sw $a0, 0x68($28)
    j tb010_loop1

tb010_next1:
    jal tb010_sum
    lw $t0, 8($29)        # 恢复返回值
    lw $a0, 4($29)        # 恢复参数a
    lw $ra, 0($29)        # 恢复返回地址
    addi $29, $29, 12     # 出栈

tb010_fin1:
    j begin_1

tb010_loop1:
    # 等待2-3秒
    add $t3, $zero, $s5

tb010_delay1:
    addi $t3, $t3, -1
    beq $t3, $zero, tb010_next1
    j tb010_delay1

tb010_loop2:
    # 等待2-3秒
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
    sw $a0, 0x68($28) ###new version###
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

####################################
tb011_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb011_1
tb011_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb011_2
    # lw $a0, 0x70($28)
    lw $a0, 0x69($28) ###new version###
    beq $a0, $zero, tb011_fin1
    add $t0, $zero, $zero
 # 递归调用sum函数计算1到a的累加和
    addi $29, $29, -12    # 入栈
    sw $ra, 0($29)        # 保存返回地址
    sw $a0, 4($29)        # 保存参数a
    sw $t0, 8($29)        # 保存返回值
    jal tb011_sum
    lw $t0, 8($29)        # 恢复返回值
    lw $a0, 4($29)        # 恢复参数a
    lw $ra, 0($29)        # 恢复返回地址
    addi $29, $29, 12     # 出栈
    sw $a0, 0x61($28)
    sw $a0, 0x68($28) ###new version###
    j tb011_loop1

tb011_fin1:
    j begin_1

tb011_loop1:
    # 等待2-3秒
    add $t3, $zero, $s5

tb011_delay1:
    addi $t3, $t3, -1
    beq $t3, $zero, tb011_fin1
    j tb011_delay1

tb011_loop2:
    # 等待2-3秒
    add $t3, $zero, $s5

tb011_delay2:
    addi $t3, $t3, -1
    beq $t3, $zero, tb011_return
    j tb011_delay2
 
tb011_sum: 
    # 如果a=1，则返回1
    addi $t1, $zero, 1
    beq $a0, $t1, tb011_return
    # 否则，递归计算1到a-1的累加和，再加上a
    addi $a0, $a0, -1       # a-1作为新的参数
    addi $29, $29, -12      # 入栈
    sw $ra, 0($29)          # 保存返回地址
    sw $a0, 4($29)          # 保存参数a-1
    sw $t0, 8($29)          # 保存返回值
    jal tb011_sum           # 递归调用sum函数
    lw $t0, 8($29)          # 恢复返回值
    lw $a0, 4($29)          # 恢复参数a-1
    lw $ra, 0($29)          # 恢复返回地址
    addi $29, $29, 12       # 出栈
    add $t0, $t0, $a0       # 将a加到结果中
    sw $a0, 0x61($28)
    sw $a0, 0x68($28) ###new version###
    j tb011_loop2

tb011_return:
    jr $ra

####################################
tb100_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb100_1
tb100_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb100_2
    lw $v0, 0x70($28)
    addi $s0, $v0, 0#s0保存a的值
    sw $s0, 0x61($28)
    sw $s0, 0x68($28) ###new version###

tb100_inputb_1:
    lw $s7, 0x73($28) #s7表示使能信号，输入完a后，按下按钮，接着需要按下按钮，继续读取b
    bne $s7, $zero, tb100_inputb_1
tb100_inputb_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb100_inputb_2
    lw $v0, 0x70($28)
    addi $s1, $v0, 0#s1存放b的值
    sw $s1, 0x60($28)
    sw $s1, 0x68($28) ###new version###

tb100_show1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb100_show1

tb100_show2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb100_show2


    add $t5, $s1, $s0
    sw $t5, 0x61($28)
    sw $t5, 0x68($28) ###new version###

# 检查溢出
    addi $t8, $zero, 127
    addi $t9, $zero, 383
tb100_check1: #检查s0正负
    slt $t1, $t8, $s0
    beq $t1, $zero, tb100_check2
    j tb100_check3

tb100_check2: #s0为正数，检查s1正负
    slt $t2, $t8, $s1
    beq $t2, $zero, tb100_check4
    j tb100_no_overflow

tb100_check3: #s0为负数，检查s1正负
    slt $t2, $t8, $s1
    beq $t2, $zero, tb100_no_overflow
    j tb100_check5

tb100_check4: #均为正数，检查有没有溢出
    slt $t4, $t8, $t5
    beq $t4, $zero, tb100_no_overflow
    j tb100_overflow

tb100_check5: #均为负数，检查有没有溢出
    slt $t4, $t9, $t5
    beq $t4, $zero, tb100_overflow
    j tb100_no_overflow

tb100_no_overflow:
    addi $t3, $zero, 0
    sw $t3, 0x60($28)
    j begin_1

tb100_overflow:
    addi $t3, $zero, 1
    sw $t3, 0x60($28)
    j begin_1


####################################
tb101_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb101_1
tb101_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb101_2
    lw $v0, 0x70($28)
    addi $s0, $v0, 0#s0保存a的值
    sw $s0, 0x61($28)
    sw $s0, 0x68($28) ###new version###

tb101_inputb_1:
    lw $s7, 0x73($28) #s7表示使能信号，输入完a后，按下按钮，接着需要按下按钮，继续读取b
    bne $s7, $zero, tb101_inputb_1
tb101_inputb_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb101_inputb_2
    lw $v0, 0x70($28)
    addi $s1, $v0, 0#s1存放b的值
    sw $s1, 0x60($28)
    sw $s1, 0x68($28) ###new version###

tb101_show1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb101_show1

tb101_show2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb101_show2

    add $t6, $s1, $zero
    xor $t6, $t6, $s3
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


####################################
tb110_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb110_1
tb110_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb110_2
    lw $v0, 0x70($28)
    addi $s0, $v0, 0#s0保存a的值
    sw $s0, 0x61($28)
    sw $s0, 0x68($28) ###new version###

tb110_inputb_1:
    lw $s7, 0x73($28) #s7表示使能信号，输入完a后，按下按钮，接着需要按下按钮，继续读取b
    bne $s7, $zero, tb110_inputb_1
tb110_inputb_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb110_inputb_2
    lw $v0, 0x70($28)
    addi $s1, $v0, 0#s1存放b的值
    sw $s1, 0x60($28)
    sw $s1, 0x68($28) ###new version###

tb110_show1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb110_show1

tb110_show2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb110_show2
    jal extend

    add $t4, $zero, $zero        # 计数器，用于循环8次
    add $t2, $zero, $zero
    addi $t6, $zero, 1
    addi $t7, $zero, 8
    addi $t8, $s6, 127
    add $t9, $zero, $zero

tb110_check1: #检查s0正负
    slt $t9, $t8, $s0
    beq $t9, $zero, tb110_check2
    j tb110_check3

tb110_check2: #s0为正数，检查s1正负
    slt $t1, $t8, $s1
    beq $t1, $zero, tb110_mul1
    j tb110_mul2

tb110_check3: #s0为负数，检查s1正负
    slt $t1, $t8, $s1
    beq $t1, $zero, tb110_mul1
    j tb110_change

tb110_change:
    xor $s1, $s1, $s4
    addi $s1, $s1, 1
    xor $s0, $s0, $s4
    addi $s0, $s0, 1

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

    add $s2, $zero, $t2
    sw $s2, 0x63($28)
    j begin_1

tb110_mul2:
    andi $t5, $s0, 0x01  # 取被乘数的最低位
    beq $t5, $zero, tb110_skip2     # 如果最低位为0，则跳过加法操作
    add $t2, $t2, $s1  
tb110_skip2:
    sll $s1, $s1, 1    # 乘数左移1位
    srl $s0, $s0, 1    # 被乘数右移1位
    addi $t4, $t4, 1   # 计数器加1
    slt $t3, $t4, $t7   # 如果计数器小于8，则继续循环
    beq $t3, $t6, tb110_mul2

    add $s2, $zero, $t2
    sw $s2, 0x63($28)
    sw $s2, 0x68($28) ###new version###
    j begin_1


####################################
tb111_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb111_1
tb111_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb111_2
    lw $v0, 0x70($28)
    addi $s0, $v0, 0#s0保存a的值
    sw $s0, 0x61($28)
    sw $s0, 0x68($28) ###new version###

tb111_inputb_1:
    lw $s7, 0x73($28) #s7表示使能信号，输入完a后，按下按钮，接着需要按下按钮，继续读取b
    bne $s7, $zero, tb111_inputb_1
tb111_inputb_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb111_inputb_2
    lw $v0, 0x70($28)
    addi $s1, $v0, 0#s1存放b的值
    sw $s1, 0x60($28)
    sw $s1, 0x68($28) ###new version###

tb111_show1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb111_show1

tb111_show2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb111_show2

    addi $t8, $zero, 1
    add $t3, $s0, $zero
    add $t0, $s1, $zero
    add $t9, $s1, $zero
    addi $t6, $zero, 1
    add $t2, $zero, $zero
    addi $t1, $zero, 127

tb111_check1: #检查s0正负
    slt $t2, $t1, $s0
    beq $t2, $zero, tb111_check2_2
    j tb111_change1

tb111_change1:
    xor $t3, $t3, $s3
    addi $t3, $t3, 1

tb111_check2_1: #检查s1正负
    slt $t2, $t1, $s1
    beq $t2, $zero, tb111_div1_1
    j tb111_change2_1

tb111_change2_1:
    xor $t0, $t0, $s3
    addi $t0, $t0, 1
    j tb111_div2_1

tb111_check2_2: #检查s1正负
    slt $t2, $t1, $s1
    beq $t2, $zero, tb111_div1_1
    j tb111_change2_2

tb111_change2_2:
    xor $t0, $t0, $s3
    addi $t0, $t0, 1
    j tb111_div3_1

tb111_div1_1: #两个正数
    slt $t7, $t3, $t0 
    beq $t7, $t6, tb111_checkq1_1
    beq $t8, $zero, tb111_div1_2
    xor $t9, $t0, $s4  # 把$s1取反加1
    addi $t9, $t9, 1
    addi $t8, $t8, -1

tb111_div1_2:
    add $t3, $t3, $t9
    addi $t2, $t2, 1
    j tb111_div1_1

tb111_div2_1: #两个正数
    slt $t7, $t3, $t0 
    beq $t7, $t6, tb111_checkq1_2
    beq $t8, $zero, tb111_div2_2
    xor $t9, $t0, $s4  # 把$s1取反加1
    addi $t9, $t9, 1
    addi $t8, $t8, -1

tb111_div2_2:
    add $t3, $t3, $t9
    addi $t2, $t2, 1
    j tb111_div2_1

tb111_div3_1: #两个正数
    slt $t7, $t3, $t0 
    beq $t7, $t6, tb111_checkq1_3
    beq $t8, $zero, tb111_div3_2
    xor $t9, $t0, $s4  # 把$s1取反加1
    addi $t9, $t9, 1
    addi $t8, $t8, -1

tb111_div3_2:
    add $t3, $t3, $t9
    addi $t2, $t2, 1
    j tb111_div3_1

    # 显示商和余数，每个数字持续5秒
tb111_checkq1_1:
    slt $t4, $t1, $s0
    slt $t5, $t1, $s1
    beq $t4, $t5, tb111_checkq2_1
    j tb111_checkq3_1

tb111_checkq2_1: # s0,s1符号相同
    slt $t4, $t1, $t2
    beq $t4, $zero, tb111_checkr1_1
    j tb111_change3_1

tb111_checkq3_1: # s0,s1符号不同
    slt $t4, $t1, $t2
    beq $t4, $zero, tb111_change3_1
    j tb111_checkr1_1

tb111_change3_1:
    xor $t2, $t2, $s4  # 把$t2取反加1
    addi $t2, $t2, 1

tb111_checkr1_1:
    slt $t4, $t1, $s0
    slt $t5, $t1, $t3
    beq $t4, $t5, tb111_showres1
    j tb111_change4_1

tb111_change4_1:
    xor $t3, $t3, $s4  # 把$t3取反加1
    addi $t3, $t3, 1

tb111_showres1:
    sw $t2, 0x61($28)
    sw $t3, 0x60($28)
    j tb111_res

    # 显示商和余数，每个数字持续5秒
tb111_checkq1_2:
    slt $t4, $t1, $s0
    slt $t5, $t1, $s1
    beq $t4, $t5, tb111_checkq2_2
    j tb111_checkq3_2

tb111_checkq2_2: # s0,s1符号相同
    slt $t4, $t1, $t2
    beq $t4, $zero, tb111_checkr1_2
    j tb111_change3_2

tb111_checkq3_2: # s0,s1符号不同
    slt $t4, $t1, $t2
    beq $t4, $zero, tb111_change3_2
    j tb111_checkr1_2

tb111_change3_2:
    xor $t2, $t2, $s4  # 把$t2取反加1
    addi $t2, $t2, 1

tb111_checkr1_2:
    slt $t4, $t1, $s0
    slt $t5, $t1, $t3
    beq $t4, $t5, tb111_showres2
    j tb111_change4_2

tb111_change4_2:
    xor $t3, $t3, $s4  # 把$t3取反加1
    addi $t3, $t3, 1

tb111_showres2:
    addi $t2, $t2, -1
    sw $t2, 0x61($28)
    sw $t3, 0x60($28)
    j tb111_res

 # 显示商和余数，每个数字持续5秒
tb111_checkq1_3:
    slt $t4, $t1, $s0
    slt $t5, $t1, $s1
    beq $t4, $t5, tb111_checkq2_3
    j tb111_checkq3_3

tb111_checkq2_3: # s0,s1符号相同
    slt $t4, $t1, $t2
    beq $t4, $zero, tb111_checkr1_3
    j tb111_change3_3

tb111_checkq3_3: # s0,s1符号不同
    slt $t4, $t1, $t2
    beq $t4, $zero, tb111_change3_3
    j tb111_checkr1_3

tb111_change3_3:
    xor $t2, $t2, $s4  # 把$t2取反加1
    addi $t2, $t2, 1
    
tb111_checkr1_3:
    slt $t4, $t1, $s0
    slt $t5, $t1, $t3
    beq $t4, $t5, tb111_showres3
    j tb111_change4_3

tb111_change4_3:
    xor $t3, $t3, $s4  # 把$t3取反加1
    addi $t3, $t3, 1

tb111_showres3:
    addi $t2, $t2, 1
    sw $t2, 0x61($28)
    sw $t3, 0x60($28)
    j tb111_res

tb111_res:
    add $t4, $zero, $zero         # 设置计数器的初值为0
    add $t5, $zero, $zero         # t5为0表示显示商，为1表示显示余数

tb111_loop:
    # bgtz $t4, tb111_count  # 如果计数器不为0，跳转到count标签
    slt $t8, $t4, $zero
    beq $t8, $zero, tb111_count 
    add $t4, $zero, $zero       # 重置计数器
    addi $t5, $t5, 1 # 切换显示商或余数

tb111_count:
     # 等待2-3秒
    add $t1, $zero, $s5
    add $t1, $t1, $s5

tb111_delay:
    addi $t1, $t1, -1
    bne $t1, $zero, tb111_delay
    beq $t5,$zero, tb111_showq # 如果t5为0，显示商
    j tb111_showr

tb111_showq:
    sw $t2, 0x61($28)
    sw $zero, 0x60($28)
    sw $t2, 0x68($28) ###new version###
    addi $t4, $t4, -1 # 计数器减1
    j tb111_loop

tb111_showr:
    sw $t3, 0x60($28)
    sw $zero, 0x61($28)
    sw $t3, 0x68($28) ###new version###
    j begin_1
####################################
extend:
    slti $t0, $s0, 0x0080
    bne $t0, $zero, ex2 # less than = 1, no need
    or $s0, $s0, $s6
ex2:
    slti $t0, $s1, 0x0080
    bne $t0, $zero, exit_ex # less than = 1, no need
    or $s1, $s1, $s6
exit_ex:    
    jr $ra
####################################


