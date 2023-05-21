.data

.text
main:
    lui $28, 0xFFFF			
    ori $28, $28, 0xFC00
    lui $s6, 0xFFFF
    ori $s6, $s6, 0xFF00 #sign extend		
begin_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, begin_1
begin_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, begin_2
    lw $a3, 0x72($28) #a3存放的是测试用例
    sw $a3, 0x62($28)
    sw $a3, 0x67($28)
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
    lw $a0, 0x79($28)
    sw $a0, 0x78($28)
    sw $a0, 0x60($28)
    xor $v0, $v0, $v0
    
    beq $a0, $zero, t000_fin
    addi $a1, $a0, -1
    and $t0, $a0, $a1
    bne $t0, $zero, t000_fin
    addi $v0, $v0, 1
t000_fin:
    sw $v0, 0x61($28)
    j begin_1

####################################
tb001_1:
    lw $s7, 0x73($28)  
    bne $s7, $zero, tb001_1
tb001_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb001_2
    lw $a0, 0x79($28)
    sw $a0, 0x78($28)
    sw $a0, 0x60($28)
    andi $v0, $a0, 1
    sw  $v0, 0x61($28)
    j begin_1

####################################
tb010_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb010_1
tb010_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb010_2
    or  $a0, $s0, $s1
    sw  $a0, 0x61($28)
    j begin_1
####################################
tb011_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb011_1
tb011_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb011_2
    nor  $a0, $s0, $s1
    sw  $a0, 0x61($28)
    j begin_1
####################################
tb100_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb100_1
tb100_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb100_2
    xor  $a0, $s0, $s1
    sw  $a0, 0x61($28)
    j begin_1
####################################
tb101_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb101_1
tb101_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb101_2
    jal extend
    slt $a0, $s0, $s1
    sw  $a0, 0x61($28)
    j begin_1
####################################
tb110_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb110_1
tb110_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb110_2
    sltu $a0, $s0, $s1
    sw  $a0, 0x61($28)
    j begin_1
####################################
tb111_1:
    lw $s7, 0x73($28)
    bne $s7, $zero, tb111_1
tb111_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, tb111_2
    lw $v0, 0x79($28)
    sw $v0, 0x61($28)
    sw $v0, 0x68($28)
    addi $s0, $v0, 0#s0保存a的值

inputb_1:
    lw $s7, 0x73($28) #s7表示使能信号，输入完a后，按下按钮，接着需要按下按钮，继续读取b
    bne $s7, $zero, inputb_1
inputb_2:
    lw $s7, 0x73($28)
    beq $s7, $zero, inputb_2
    lw $v0, 0x79($28)
    sw $v0, 0x60($28)
    sw $v0, 0x68($28)
    addi $s1, $v0, 0#s1存放b的值
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

###########

# https://github.com/TsingYiPainter/Sustech_CS202_Computer-Organization_22S/blob/main/code/assembly_code/Project_test1_withIO.asm