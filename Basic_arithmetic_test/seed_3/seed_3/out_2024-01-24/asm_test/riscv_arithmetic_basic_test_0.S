.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x9, 0x40001104
                  csrw 0x301, x9
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  li x9, 0x0
                  csrw 0x304, x9 # MIE
                  mret
init:             
                  li x0, 0x3
                  li x1, 0xf0a517e1
                  li x2, 0xb
                  li x3, 0x3578eb7a
                  li x4, 0xf79c390f
                  li x5, 0x7
                  li x6, 0xc
                  li x7, 0x6
                  li x8, 0xe7aa90df
                  li x9, 0xf707d14e
                  li x10, 0xe
                  li x11, 0x3e5b1d8c
                  li x12, 0x0
                  li x13, 0xfa446354
                  li x14, 0x6731fbde
                  li x15, 0xb
                  li x17, 0x9
                  li x18, 0x80000000
                  li x19, 0xb
                  li x20, 0x80000000
                  li x21, 0xf3752086
                  li x22, 0xf0401ac0
                  li x23, 0xfdc5d6fb
                  li x24, 0x0
                  li x25, 0xd
                  li x26, 0x1c546748
                  li x28, 0xd
                  li x29, 0x80000000
                  li x30, 0x47dd308
                  li x31, 0x1
                  la x16, user_stack_end
main:             sltiu        t1, s11, 1116
                  sub          t6, s2, a1
                  sll          sp, s5, t4
                  divu         a0, zero, a3
                  ori          a0, s4, 1429
                  mulhu        s0, t4, t5
                  xori         sp, t1, 1127
                  mulhsu       ra, t2, s1
                  nop
                  div          t0, a7, a2
                  slli         t1, a2, 16
                  xori         s8, t6, -1802
                  srl          a7, a7, a3
                  addi         zero, s10, 603
                  addi         ra, s3, -188
                  remu         s8, a2, s0
                  nop
                  div          t6, t6, a7
                  remu         a5, t3, t1
                  xori         s5, ra, -613
                  ori          s0, zero, 855
                  or           s4, t5, tp
                  xori         s10, t5, -1731
                  xor          s8, s10, s3
                  div          zero, s11, ra
                  rem          s7, gp, tp
                  sra          s1, s5, a3
                  or           s7, a4, s2
                  div          s8, s10, zero
                  div          t1, tp, tp
                  srl          a2, s10, s7
                  divu         a2, tp, a1
                  slti         a4, t1, 1316
                  rem          s6, s5, s8
                  ori          t2, s8, -222
                  ori          a0, s4, 340
                  divu         t6, s0, t3
                  slt          s4, zero, t6
                  nop
                  and          a7, s0, a2
                  andi         s4, s5, -1443
                  mulhu        s4, s6, tp
                  divu         t3, t4, zero
                  or           s9, t5, a6
                  and          a1, t6, s6
                  mul          zero, s9, sp
                  addi         s6, t0, 1625
                  remu         s6, s2, t5
                  mulhu        s6, t5, t2
                  addi         t2, s3, 109
                  slti         a7, t6, 1766
                  sra          a2, s7, s4
                  lui          tp, 674718
                  and          s9, a7, t6
                  slt          t6, ra, sp
                  sltu         a5, s8, tp
                  mulhsu       a0, tp, a2
                  divu         s5, s0, a3
                  mulh         a1, a0, s0
                  nop
                  mulhsu       a1, a3, s0
                  slt          s8, a2, s7
                  auipc        a2, 405771
                  mulhsu       a5, s10, s0
                  add          a1, a7, t5
                  sll          a0, s9, s8
                  nop
                  rem          a5, s6, s0
                  addi         a4, s6, -256
                  sra          s4, a6, t3
                  div          a0, t3, s1
                  mulh         s10, a4, a1
                  xor          a5, s0, s1
                  ori          s8, ra, -938
                  sltu         s4, ra, a7
                  slt          t1, s7, t5
                  or           a4, a7, s5
                  nop
                  mul          t1, a0, t2
                  or           s10, a7, t5
                  nop
                  slt          a5, s9, s0
                  sltiu        s0, t5, -2031
                  and          t4, ra, t1
                  xori         a4, s3, 747
                  srli         s4, t4, 10
                  srai         s2, zero, 14
                  xori         a7, s4, -106
                  divu         a3, s2, a1
                  xor          a5, a1, t4
                  auipc        zero, 437134
                  andi         s0, a5, 1095
                  mulhu        t2, a6, t1
                  mulhsu       a0, zero, ra
                  slt          s8, a0, s2
                  div          a5, t0, s6
                  mul          t6, s11, a7
                  mulhsu       s8, s6, s9
                  mul          s9, t4, s2
                  sltu         a4, t0, s2
                  ori          a2, gp, 799
                  sub          zero, t0, t4
                  srli         s2, a4, 5
                  auipc        t4, 141113
                  or           s7, t5, s9
                  mulhsu       s2, sp, s11
                  sltu         ra, s10, a7
                  or           gp, t3, t0
                  and          a3, tp, s3
                  sra          t3, sp, a1
                  nop
                  ori          s0, a5, -1354
                  and          a7, tp, s3
                  slti         t2, a0, -1778
                  or           t1, a7, s3
                  mulhu        ra, s3, zero
                  nop
                  mulh         s8, a5, a4
                  addi         sp, t3, -128
                  slli         a2, a1, 9
                  sltu         sp, s7, a3
                  rem          s2, a4, s9
                  mul          s7, a1, s1
                  srli         s9, s0, 8
                  slt          t1, a3, s10
                  auipc        s2, 130628
                  divu         t5, a7, t5
                  ori          t3, s5, 408
                  addi         s4, gp, 257
                  add          tp, s7, a7
                  slli         s2, s0, 30
                  add          a0, ra, s4
                  and          t2, sp, s0
                  or           a3, t6, t1
                  sltiu        a4, a7, -773
                  sra          t5, s3, ra
                  nop
                  or           s0, a3, t2
                  slt          a2, a3, a2
                  add          t0, sp, tp
                  addi         s8, t5, 881
                  rem          t0, s5, s6
                  divu         t2, a6, s6
                  auipc        s9, 438746
                  xori         s1, ra, 1101
                  mulhsu       a5, s11, t2
                  mulhu        t5, a6, a6
                  andi         s5, t2, -1875
                  rem          s8, a4, t2
                  sub          zero, t4, a0
                  sltu         s1, tp, s10
                  sra          zero, a6, t1
                  addi         zero, t6, -567
                  slli         tp, a2, 22
                  lui          s9, 929807
                  mulhsu       s6, s0, s11
                  ori          a5, s6, -892
                  sra          sp, t3, t1
                  auipc        s7, 937433
                  mulh         gp, s8, t0
                  and          s1, a7, a2
                  lui          ra, 352688
                  mul          t4, s6, t0
                  ori          t6, zero, -1146
                  slti         t1, s3, 902
                  auipc        t3, 298287
                  mulhsu       a0, t5, t6
                  srli         s5, t2, 28
                  mulhsu       t1, gp, t6
                  srl          t6, s11, s11
                  remu         zero, s3, t5
                  mulhu        s2, tp, a6
                  srli         zero, s9, 12
                  auipc        s8, 479167
                  auipc        a3, 849939
                  and          t1, a4, a7
                  mulhu        a7, s6, s10
                  srl          s0, s6, s3
                  srli         a2, a3, 14
                  ori          t4, s11, 1497
                  or           t2, a7, t6
                  addi         s0, a4, -370
                  slti         s9, t3, -819
                  sra          a0, ra, t6
                  sub          a2, t5, a1
                  mulhu        a3, s9, a2
                  mulh         s1, s5, t4
                  mulhu        s1, s8, tp
                  addi         a0, a7, 1095
                  srli         s8, s10, 7
                  andi         s7, s0, -1468
                  div          t2, s7, s0
                  sltiu        a5, s8, -404
                  sltu         s8, a3, s9
                  slti         s8, a1, -836
                  sltiu        s8, s0, 1067
                  sltu         s10, s9, a1
                  rem          s8, t0, a5
                  addi         s10, a3, 1693
                  rem          a5, a6, a4
                  mul          s6, s2, t1
                  div          s2, s5, s2
                  sub          s8, a5, a4
                  ori          s4, s0, 1385
                  xor          s7, t0, s10
                  mul          s0, gp, s1
                  addi         tp, a7, -707
                  auipc        s7, 84991
                  and          sp, s5, ra
                  nop
                  add          a5, s7, tp
                  auipc        s1, 774109
                  mulhu        a0, s11, t2
                  sra          s6, s8, s9
                  slti         sp, t4, -313
                  slt          sp, s6, t4
                  mulh         t4, zero, a2
                  sra          a0, s4, gp
                  nop
                  ori          t5, s1, -358
                  xor          a3, s6, gp
                  addi         a5, t3, -288
                  divu         t3, s10, zero
                  addi         a3, a4, -1641
                  srl          a0, a2, t3
                  add          s9, s9, t6
                  div          a2, s7, t1
                  nop
                  div          t6, t6, t0
                  auipc        gp, 401594
                  srai         t3, s8, 15
                  div          gp, s10, a5
                  sltiu        t5, s7, -37
                  divu         s7, s4, t5
                  or           tp, t0, s10
                  sub          sp, t2, a2
                  remu         a4, gp, t6
                  addi         s2, t4, 231
                  add          a4, t5, zero
                  ori          t4, s9, -1984
                  sltu         ra, s7, s6
                  ori          s10, a2, 889
                  addi         s10, a0, -1364
                  slti         s6, s8, -730
                  nop
                  srl          gp, ra, a6
                  sll          a3, a0, a5
                  mul          t5, t1, a4
                  sra          gp, a7, a0
                  divu         s1, s9, t2
                  xor          a7, t6, a3
                  and          a2, t5, a2
                  slli         t5, s8, 30
                  lui          s4, 534153
                  slli         tp, s2, 9
                  sub          a0, zero, a4
                  srli         s5, tp, 15
                  slli         s7, s10, 13
                  remu         gp, s4, s2
                  auipc        t6, 383366
                  sltu         s7, gp, zero
                  xori         gp, s5, 1805
                  sltiu        s8, t5, 1778
                  mulh         a4, zero, t0
                  sltu         s8, a7, s9
                  sub          tp, sp, t0
                  addi         t5, t5, -1
                  slt          a7, s4, s11
                  mul          s2, t4, s1
                  or           t2, tp, ra
                  xor          a1, t3, a5
                  and          s4, zero, t6
                  sll          t0, zero, s10
                  ori          a2, s6, -364
                  sltiu        s5, s0, 746
                  slti         t5, s2, -1382
                  sra          s0, a7, s1
                  ori          t0, t2, 76
                  slt          t2, a2, t5
                  nop
                  div          a1, a1, tp
                  slti         s4, a4, 2016
                  slti         sp, t0, 160
                  slti         t5, s8, 1351
                  addi         a4, a6, 1320
                  slli         gp, s8, 25
                  srai         s4, sp, 17
                  xor          a3, gp, a0
                  srli         a7, s0, 0
                  slt          a2, s1, t3
                  sub          a4, s2, a0
                  addi         t1, a0, -619
                  sltiu        s2, s5, -1307
                  xor          a0, t6, t2
                  srli         s8, gp, 6
                  and          s4, s0, t1
                  srli         t0, a1, 28
                  divu         s8, a0, t2
                  mulhu        s6, t4, t5
                  nop
                  mulhu        t1, a4, s5
                  andi         s2, a3, -809
                  ori          a7, ra, 1204
                  ori          s6, a3, 1443
                  add          s0, s6, t0
                  slli         s4, a1, 30
                  srli         t4, s3, 19
                  srli         a1, t4, 21
                  andi         s7, s7, -629
                  remu         a2, a3, s9
                  srli         s4, a1, 25
                  div          s9, s6, s3
                  and          a5, ra, ra
                  xor          gp, t1, s0
                  sub          t5, s7, a2
                  slti         s4, s4, -1981
                  div          zero, s5, s9
                  mulhu        t5, s9, s8
                  mulhsu       s2, tp, s1
                  sra          s1, s4, s8
                  add          zero, a4, t0
                  sltu         a3, gp, s0
                  xor          s4, a6, a2
                  sltu         s9, a4, t0
                  sltu         s2, t1, sp
                  andi         a1, a0, -677
                  sltiu        s8, s8, 760
                  sra          s4, a4, t6
                  and          s10, t5, s2
                  mul          s5, s9, s1
                  xori         s4, t5, 692
                  mulhu        s2, s5, a0
                  slt          sp, a0, zero
                  ori          a4, t3, 1172
                  slli         s5, ra, 14
                  or           a7, a6, s9
                  div          s1, t4, s9
                  addi         s8, ra, 212
                  xori         a1, ra, 1855
                  slli         s8, a4, 30
                  srai         zero, s6, 5
                  slt          s2, s5, s5
                  lui          a1, 133526
                  div          t4, s3, s11
                  or           a4, a5, t0
                  mulhu        a7, t5, t2
                  mulhsu       s5, t4, a2
                  srl          t1, t1, tp
                  mul          s1, a2, gp
                  mulh         a7, s2, t2
                  ori          gp, t4, -432
                  mulh         sp, s1, sp
                  sltu         sp, a4, t6
                  sll          s8, s9, s3
                  sll          gp, s3, a2
                  mulh         a3, gp, s3
                  slt          tp, a2, s2
                  slli         ra, s11, 4
                  auipc        t0, 856899
                  andi         t5, t2, 1318
                  divu         a4, s0, t5
                  ori          a0, zero, 406
                  mulhsu       s7, gp, s11
                  mulhsu       a7, ra, a2
                  sub          a5, t3, s0
                  sltu         s2, s0, a5
                  addi         a4, sp, -945
                  srli         gp, s7, 4
                  mulhu        s7, t3, t1
                  lui          s10, 159129
                  divu         s7, t6, a0
                  slt          tp, t0, ra
                  auipc        s1, 507172
                  srli         a0, s8, 2
                  div          s9, t3, sp
                  slli         t4, t3, 6
                  mulhsu       s2, a1, a0
                  slti         t4, t0, -156
                  sltiu        s6, s6, 1092
                  sll          t1, s6, a1
                  slli         t6, t1, 9
                  addi         t1, t6, -770
                  slt          a0, s1, t3
                  sltiu        a4, a7, 1431
                  slli         a0, a7, 28
                  addi         t1, t2, 861
                  mulh         s10, a1, t1
                  mulhu        t6, t1, t0
                  andi         a0, s6, -548
                  add          s1, t4, s2
                  sltu         s10, t1, t6
                  sltiu        t6, sp, -1591
                  remu         a4, s6, s6
                  ori          t6, s11, -499
                  srl          t1, tp, a1
                  divu         a0, s7, t2
                  sltiu        s2, t3, -717
                  ori          s1, s3, -1998
                  and          s0, t1, t3
                  ori          gp, t2, -1351
                  slti         gp, t0, -1325
                  divu         sp, a0, a6
                  ori          zero, s10, -920
                  ori          t1, s9, -1789
                  mulhsu       t3, s0, zero
                  divu         ra, a2, a1
                  nop
                  mul          s10, ra, s8
                  auipc        a0, 216312
                  lui          a2, 716770
                  or           t1, gp, t6
                  mulh         a2, t4, s1
                  srl          a0, a7, a6
                  nop
                  srl          gp, a1, zero
                  mulh         a7, a4, s1
                  lui          s0, 338310
                  mulhu        s2, a2, a2
                  sltiu        a5, a0, -1008
                  remu         s8, a7, zero
                  sub          t6, a1, a2
                  xor          s5, a3, gp
                  sub          sp, t2, s2
                  and          a0, gp, t4
                  sltiu        t3, s0, 1099
                  addi         t2, s5, 132
                  add          s5, ra, t5
                  addi         a4, s5, 1759
                  div          gp, t6, a0
                  and          s7, tp, t4
                  ori          s10, s10, 913
                  divu         t3, a6, sp
                  srl          s0, sp, s0
                  sra          gp, t3, a0
                  and          t1, s11, t6
                  slt          s6, s8, a6
                  srai         sp, a1, 17
                  mulhu        t1, t6, a5
                  auipc        t4, 735611
                  srl          s1, gp, t2
                  slt          sp, s10, s2
                  nop
                  and          s7, t2, s8
                  slti         t6, t6, -324
                  lui          t0, 674445
                  andi         gp, a6, 844
                  slt          a2, gp, t6
                  sra          zero, t5, sp
                  auipc        ra, 656420
                  sltiu        gp, a6, 247
                  div          t5, a7, t5
                  slli         ra, s3, 24
                  slti         a7, s7, 536
                  xori         a7, s6, -377
                  andi         a5, t0, 1050
                  xori         s1, s10, 1641
                  rem          a7, s0, s3
                  slti         t1, s2, -733
                  sll          zero, a6, s9
                  lui          s4, 234859
                  remu         s4, s3, s2
                  sra          t4, t0, t2
                  xori         zero, s7, -382
                  and          t2, t5, a7
                  xori         tp, s1, -220
                  slti         t5, t4, -2024
                  slti         a2, s3, -861
                  slti         tp, t6, -1282
                  mulh         t2, a6, s6
                  srli         a2, a4, 19
                  sltiu        s2, t6, -179
                  div          t3, s11, t0
                  remu         a1, s7, t4
                  or           a1, zero, t1
                  sra          t1, ra, s10
                  mulh         s5, a5, a3
                  lui          s8, 632647
                  sub          t4, s7, s2
                  or           a7, gp, t2
                  or           t2, s2, s2
                  remu         s0, a2, gp
                  rem          a1, s7, tp
                  mulhu        a2, a4, t3
                  mul          t4, s10, sp
                  div          sp, t3, tp
                  andi         s2, s3, -1426
                  or           s4, s10, s9
                  mulh         zero, s6, s8
                  addi         t1, s1, -1735
                  nop
                  lui          t1, 13663
                  srl          a5, s6, t2
                  add          a4, gp, s11
                  sra          a4, gp, a0
                  add          s4, zero, s10
                  srli         sp, s3, 14
                  xori         t0, s4, 287
                  rem          a1, s11, gp
                  rem          s0, a6, s2
                  sub          s4, a2, a5
                  sll          t5, a7, s7
                  or           t1, s8, s3
                  mul          s0, a0, s6
                  slti         s4, a5, -1567
                  and          a5, s7, s5
                  mulhu        s10, s8, a2
                  mul          a2, a3, s2
                  auipc        t5, 990819
                  xor          tp, t0, s0
                  or           a7, a0, t5
                  slti         gp, t5, -976
                  add          s10, s8, a2
                  and          a2, a4, s10
                  or           t3, s10, a6
                  or           s6, a5, s6
                  sub          a3, sp, a5
                  xori         s7, t0, 1775
                  and          s9, s0, t6
                  mulh         s8, a7, a1
                  srl          s7, t1, t4
                  and          s7, a5, t2
                  sub          s9, tp, a4
                  andi         s9, ra, -355
                  sll          t0, a6, a7
                  sra          a4, s2, t4
                  lui          sp, 1032130
                  and          s7, a7, s6
                  lui          sp, 1029178
                  lui          s5, 405261
                  addi         s9, s8, -1342
                  and          gp, tp, t3
                  slli         s2, s1, 9
                  xori         s9, t5, 1295
                  divu         tp, s8, t5
                  srli         t4, ra, 18
                  sub          tp, t4, t5
                  mulh         s4, s6, s7
                  sltu         t3, s5, a4
                  ori          s2, a2, -7
                  rem          tp, s9, ra
                  sll          t0, s10, t3
                  remu         s7, a5, s5
                  sltu         s2, t1, zero
                  lui          a4, 637641
                  srli         gp, a2, 4
                  xori         a4, tp, 210
                  mulhu        t1, a6, a2
                  slli         t4, t5, 18
                  andi         s6, s11, -1908
                  addi         s7, sp, 1166
                  andi         s4, s6, 894
                  rem          t2, a1, t3
                  rem          s10, t6, a4
                  or           s2, t0, s8
                  auipc        t3, 146652
                  lui          s1, 445482
                  mulhu        sp, tp, t0
                  mul          a5, a4, s6
                  auipc        a0, 613986
                  xor          sp, a3, t5
                  lui          ra, 356729
                  slti         tp, s5, 725
                  sub          tp, s3, a6
                  srai         s4, s5, 3
                  slt          t0, s8, t6
                  div          gp, s7, t4
                  lui          a3, 89729
                  srli         t4, a3, 27
                  divu         t6, a6, a5
                  addi         s10, s5, -1456
                  divu         a7, s4, a7
                  slli         ra, ra, 9
                  srli         s4, s0, 6
                  srl          a7, s2, t0
                  andi         t5, s1, -522
                  mul          a1, t1, t4
                  mul          s0, s2, a0
                  mulhu        tp, t0, ra
                  rem          s6, zero, s9
                  lui          s7, 242852
                  auipc        t2, 831846
                  divu         a0, s0, zero
                  srai         a7, s2, 8
                  ori          s7, s4, -769
                  srl          a5, t3, sp
                  sub          t6, a4, s6
                  slti         a7, s0, 593
                  or           s8, a2, sp
                  addi         t6, s11, 334
                  xori         a2, a1, 1812
                  addi         s0, s4, 368
                  remu         a4, s5, t4
                  mulhu        gp, a6, s0
                  mulhu        a7, a5, t1
                  sltiu        a3, t3, -69
                  mulhu        a2, a4, a4
                  andi         a7, ra, 638
                  sll          s6, a3, s4
                  ori          t0, s3, -111
                  slt          a3, gp, t2
                  slti         s5, s0, 1254
                  srai         a7, a0, 15
                  sra          s7, a4, s6
                  sll          a1, t3, a3
                  srli         a1, s6, 6
                  nop
                  mulhu        s2, ra, s9
                  sra          tp, s11, s8
                  slti         s8, s9, -1286
                  remu         s2, a2, ra
                  sra          a4, a6, sp
                  mulh         s8, s10, a7
                  sltiu        s1, gp, 1237
                  divu         s9, t3, s0
                  srai         t4, a1, 23
                  sra          a4, zero, t2
                  div          gp, s11, t5
                  sll          a3, s10, a3
                  sra          gp, gp, s2
                  sub          s10, s11, s2
                  slti         s4, a2, 1620
                  xor          s8, t5, t3
                  mul          s9, a7, a5
                  slli         t6, a4, 26
                  ori          a2, a0, 1039
                  sra          a3, s9, t2
                  add          s5, s0, a3
                  and          a0, s7, a7
                  slli         s0, a4, 3
                  slli         a1, t5, 0
                  mulhsu       a2, s5, s4
                  srai         a4, s5, 20
                  addi         a1, ra, -1410
                  mulhsu       gp, s2, a3
                  slli         s4, s8, 11
                  andi         s6, s1, 728
                  srl          a3, t1, a0
                  sra          t1, a2, t5
                  sub          s10, a7, t6
                  add          tp, s8, t1
                  addi         tp, s10, 1906
                  mul          t5, s7, sp
                  srl          s6, s10, s11
                  slt          a7, a1, t3
                  mul          s10, s3, a3
                  mul          a7, s7, t3
                  mulhu        t5, s5, s8
                  remu         t4, s1, t4
                  srai         s10, tp, 1
                  or           a7, s4, s0
                  sra          s10, t3, t5
                  mulhu        s10, s10, ra
                  mulhsu       tp, s9, ra
                  lui          s5, 913777
                  or           s2, t5, t6
                  remu         t5, s9, a6
                  sub          t4, t1, s5
                  sll          s4, a5, zero
                  auipc        zero, 843601
                  mul          t4, t0, a0
                  and          s4, s0, a1
                  add          t6, s7, gp
                  ori          t5, sp, -1503
                  addi         s10, a7, -1684
                  slli         s2, t1, 29
                  lui          t3, 148539
                  lui          s2, 623003
                  slti         t6, a1, -521
                  srli         gp, a2, 14
                  addi         gp, s10, -1155
                  sll          t6, a3, a6
                  slt          sp, sp, a4
                  sub          a4, s9, t1
                  lui          s0, 65443
                  div          a2, s4, a5
                  div          s0, s11, t6
                  ori          ra, a7, -788
                  mulhsu       ra, s6, t3
                  mulhsu       t3, ra, s10
                  ori          a2, zero, -1964
                  div          s2, s0, t5
                  remu         s9, t5, a7
                  mulhsu       s8, gp, s8
                  srl          t0, t4, s1
                  or           sp, a3, s5
                  addi         gp, s11, -507
                  mul          s0, t5, s8
                  remu         s4, tp, s6
                  xor          a1, a2, s8
                  mul          s4, t4, t6
                  mulh         s7, a5, s6
                  srl          tp, zero, s1
                  mulh         s4, a7, s8
                  sub          a2, s7, t4
                  or           s5, t3, a3
                  add          ra, t2, a1
                  xor          ra, a6, s5
                  div          a4, a5, a0
                  lui          zero, 339536
                  ori          t6, s2, 911
                  slt          a1, t5, t4
                  srai         s9, s5, 20
                  sub          zero, zero, s6
                  remu         t5, s8, a7
                  divu         s5, a4, s0
                  div          a7, a1, s2
                  sub          a3, a3, s10
                  andi         tp, s4, 1030
                  andi         a2, a0, 565
                  divu         s5, s10, a3
                  auipc        t0, 399512
                  slti         s8, t5, -650
                  slt          s6, s1, s1
                  mul          s7, sp, s10
                  srai         s2, a0, 21
                  lui          zero, 1044432
                  srl          a3, s8, t3
                  sll          s9, sp, t2
                  slti         t5, s8, -1625
                  div          a5, ra, t4
                  auipc        a5, 169872
                  sub          s5, a3, s8
                  remu         ra, t6, t1
                  rem          t1, s7, a1
                  srli         t5, s1, 22
                  ori          s5, s0, 1908
                  mulhsu       t5, t0, a3
                  sltiu        a2, a2, 1766
                  divu         s6, ra, a4
                  addi         s9, a3, -1690
                  sll          t3, s11, a0
                  divu         s7, a1, s10
                  xor          a5, ra, t3
                  sltiu        s9, s1, -1410
                  addi         t6, s11, 1116
                  mulh         s0, a3, s0
                  nop
                  sltiu        a1, a1, 1840
                  mulhsu       ra, a6, t4
                  xor          t6, a7, t4
                  remu         s6, tp, s4
                  xori         sp, sp, -290
                  sub          a7, tp, s2
                  div          a5, a0, s1
                  xor          s10, a1, s6
                  mulh         s7, t4, t3
                  mulhsu       t0, a2, s7
                  slt          a2, sp, s5
                  mulh         t5, ra, s1
                  remu         t1, a3, t2
                  remu         s8, t5, t6
                  add          t2, ra, t2
                  and          a1, s3, s1
                  lui          zero, 272434
                  div          sp, t2, s7
                  srl          t1, ra, s11
                  sll          t4, s0, t4
                  sub          t0, gp, zero
                  div          tp, s5, s1
                  xori         s4, tp, -579
                  andi         t3, t6, 215
                  xor          zero, a4, gp
                  nop
                  sltu         t0, t1, t2
                  srli         zero, gp, 29
                  xor          s0, s11, a3
                  slt          s2, s3, a1
                  andi         t4, s1, 71
                  srai         a1, t0, 3
                  or           a5, t5, s11
                  slti         a7, s7, 1629
                  mulhsu       sp, t3, a7
                  divu         sp, s4, a1
                  sll          t1, t5, s9
                  div          s1, s6, a7
                  srai         s10, s10, 19
                  or           s6, ra, a3
                  divu         s7, a7, a5
                  xori         tp, s11, 1468
                  xori         t2, s6, 1192
                  auipc        s2, 908118
                  divu         zero, s2, gp
                  xor          ra, s8, t6
                  sub          s5, s1, sp
                  mulhu        s0, s11, s11
                  add          s0, s9, a5
                  xor          s8, s5, a4
                  remu         s1, tp, s4
                  sll          t1, a5, s3
                  mulh         t4, t5, s7
                  lui          s10, 323600
                  auipc        gp, 677750
                  slli         a4, a4, 21
                  slt          a2, a4, tp
                  sltu         gp, a0, gp
                  remu         s1, a2, zero
                  or           t2, a6, s9
                  divu         s0, s5, s7
                  srl          s8, a3, s3
                  mulh         s4, s8, t0
                  andi         t6, zero, -1633
                  slti         t6, a5, -1082
                  mulhsu       s10, s11, sp
                  mulh         t3, a2, ra
                  slti         s0, s11, 303
                  mulhu        s9, a1, a7
                  and          t1, s10, a1
                  ori          s8, a5, -1244
                  lui          t0, 987821
                  add          t5, a2, ra
                  sra          s4, t6, s7
                  slt          a1, s5, t2
                  andi         s6, s6, -1641
                  nop
                  lui          gp, 735789
                  mulh         s4, t3, s2
                  srli         gp, ra, 9
                  slli         t1, s11, 3
                  srai         s10, a1, 24
                  or           gp, sp, s11
                  remu         tp, a5, a6
                  divu         gp, a4, s11
                  or           a1, t5, s0
                  slli         s5, s4, 23
                  mulhu        t5, s1, s0
                  sra          s9, s11, t1
                  mul          s7, s1, t6
                  nop
                  xor          t1, sp, a7
                  slt          s6, s4, a0
                  add          s7, s4, t3
                  andi         s10, s11, 30
                  mul          a0, s2, t6
                  xor          t6, t1, t3
                  sra          s8, ra, t2
                  and          s10, t3, sp
                  sltu         t2, a4, ra
                  xor          s9, t3, t2
                  mulh         sp, a7, s1
                  xori         a5, t5, -973
                  mulhu        gp, s1, t0
                  div          sp, s5, s0
                  sltiu        s6, t1, 964
                  mul          a7, t0, s3
                  remu         a5, s11, s1
                  nop
                  mulhu        a2, s6, s9
                  and          t6, t4, t3
                  sll          gp, s1, t4
                  ori          s2, t6, -1143
                  slli         s7, a4, 12
                  slti         a2, s8, 426
                  mulhsu       a0, a5, t3
                  mulhu        ra, a7, t1
                  sltiu        a7, a6, 575
                  mul          s8, s3, s1
                  remu         s7, ra, t1
                  mulhu        sp, s7, s1
                  remu         t6, t6, ra
                  auipc        t6, 681235
                  addi         s4, a3, -334
                  sub          tp, a5, t6
                  remu         s2, t5, s10
                  nop
                  sltiu        s9, s4, -1811
                  sra          t0, t5, s1
                  slti         s10, ra, -161
                  divu         a0, s11, s1
                  nop
                  srl          s4, s9, t6
                  slti         s8, s4, 104
                  srai         s1, t6, 2
                  div          a2, a0, a2
                  or           s5, s8, s10
                  sub          t4, s4, s2
                  sltu         a5, s11, s6
                  add          a0, s6, a5
                  xori         t5, a0, 303
                  slli         a4, t5, 10
                  lui          a1, 660161
                  addi         a4, a4, 1163
                  sltiu        t6, s10, -1290
                  auipc        s5, 687379
                  slti         a0, s11, -161
                  mulhsu       a0, a5, a1
                  nop
                  mul          t4, a6, t6
                  xor          a7, a3, sp
                  lui          a5, 79100
                  mulh         a1, s5, tp
                  sll          t2, s7, t2
                  mulh         a4, s4, s4
                  auipc        s0, 454723
                  slli         s8, t1, 6
                  sra          t1, a1, a1
                  mulh         s0, s6, a7
                  sltiu        t6, s9, -471
                  xor          s5, gp, ra
                  mulh         gp, t4, t3
                  sra          a2, a7, a7
                  andi         zero, t2, 852
                  srai         t4, tp, 24
                  xor          s2, t2, t4
                  slt          zero, sp, a7
                  div          t2, a0, a1
                  lui          a7, 330874
                  nop
                  rem          a5, a1, a7
                  or           t5, ra, a2
                  sra          tp, t2, a2
                  or           a2, ra, a2
                  rem          t2, t5, s8
                  sltiu        a1, a7, -1252
                  srl          s0, a0, gp
                  mul          ra, s1, s2
                  mul          s8, a6, s5
                  mulhu        t1, a5, a5
                  rem          s10, s2, t2
                  add          s4, s5, t1
                  sub          a5, a7, s0
                  mul          gp, t0, s4
                  srl          a3, sp, s5
                  ori          t3, t3, 1322
                  sub          s5, a3, t3
                  auipc        s10, 71845
                  sltu         s8, s9, s11
                  div          a3, s0, tp
                  mulhu        sp, s4, t6
                  srli         ra, s2, 0
                  mulh         t4, a4, t0
                  ori          a7, t0, -1311
                  sltiu        s5, s1, -866
                  or           s2, zero, s2
                  mulh         sp, a2, a3
                  sll          a2, t1, t6
                  lui          t0, 520533
                  srl          t3, t3, s6
                  addi         a1, s8, -501
                  mulhsu       a3, s11, s0
                  rem          s4, s3, s0
                  remu         t5, a5, s7
                  divu         a2, s4, tp
                  ori          ra, a0, 322
                  mulhu        a0, gp, t2
                  lui          a7, 370726
                  sltiu        s0, s4, 979
                  sll          s5, s2, a1
                  xor          a1, s7, t6
                  xori         t6, s5, -707
                  slti         s9, a4, -151
                  sltu         s0, a3, a6
                  auipc        t1, 32178
                  andi         t4, s4, 1948
                  srl          a7, s10, s7
                  and          a3, t6, a1
                  mulhu        s2, tp, t0
                  sub          gp, t3, a3
                  sll          a7, t3, t6
                  sra          s6, gp, s8
                  mulhu        s8, a6, s4
                  xori         t0, s9, 204
                  slt          s10, sp, t4
                  div          ra, s6, t1
                  xori         ra, t6, 1428
                  mulhsu       t4, tp, a4
                  add          t6, s1, s1
                  srli         s10, a5, 12
                  andi         s10, s2, 35
                  auipc        s2, 610076
                  auipc        t6, 343016
                  mulhu        a3, a3, t4
                  add          t3, s3, s11
                  srai         gp, t3, 5
                  sub          a5, s7, a1
                  lui          a2, 727690
                  sltiu        s10, a3, -901
                  sub          a2, t6, s11
                  and          s4, s3, t5
                  sltiu        a4, s3, 1534
                  srli         t2, a7, 7
                  srl          t3, a5, a1
                  sra          s8, s10, a2
                  slti         t4, a5, -1046
                  rem          s7, s9, t6
                  srai         s1, a2, 20
                  ori          a1, a3, 482
                  mulhsu       a0, s10, a3
                  rem          a3, a6, t6
                  nop
                  srli         s10, s8, 12
                  lui          s5, 108997
                  or           a4, a2, s6
                  srl          s6, t6, t6
                  sra          gp, a4, a0
                  xor          t4, t1, s9
                  srli         gp, a3, 3
                  xori         s9, a2, -1803
                  sll          s5, t4, a5
                  sltu         s7, t2, s6
                  nop
                  lui          s2, 1039954
                  xor          zero, s10, s10
                  slti         zero, ra, 1795
                  add          t5, s8, t5
                  slti         s7, s3, -1165
                  xor          a7, s5, s9
                  rem          s1, a1, t6
                  srli         a1, s4, 20
                  addi         t2, s1, -874
                  divu         t2, zero, t3
                  nop
                  xor          t3, s2, gp
                  lui          a0, 934553
                  or           gp, s2, t1
                  or           s9, zero, s10
                  mul          s6, a7, a2
                  xori         s1, s9, 1736
                  mulhu        t0, a0, a7
                  sltiu        s6, s4, -975
                  rem          t3, t4, a2
                  xori         tp, a2, 901
                  lui          s4, 507895
                  divu         s2, s6, t4
                  auipc        t3, 11420
                  div          s4, a4, gp
                  srai         s10, a0, 18
                  lui          t3, 1027162
                  lui          s4, 1034303
                  mulhu        t3, zero, s10
                  mulhu        a5, a2, s2
                  div          a1, a2, t2
                  and          a5, s9, a2
                  ori          a1, s11, 330
                  srl          sp, s11, t1
                  mulh         t1, s0, t0
                  auipc        a4, 445314
                  mulhsu       t3, t3, t6
                  slt          sp, ra, s9
                  slt          s5, gp, a5
                  xor          ra, s1, s5
                  xor          a4, s1, s5
                  and          a4, gp, s3
                  srli         t4, s9, 24
                  sub          s7, t2, t6
                  lui          s5, 868784
                  mul          s4, s11, s9
                  or           t2, s0, a6
                  rem          a2, a1, t6
                  srl          t0, a2, a3
                  or           a7, t2, a4
                  slli         s2, s6, 12
                  mulhsu       a1, s7, t3
                  sra          t2, ra, a6
                  and          s10, t3, gp
                  slti         s4, s3, 361
                  slli         t0, s9, 14
                  sltiu        t1, a5, -146
                  remu         t5, s11, s5
                  remu         a4, s11, t4
                  sra          zero, s8, s2
                  srl          a3, t6, a7
                  mulhsu       t4, s4, tp
                  rem          t3, a0, ra
                  ori          a5, s1, -1302
                  andi         s1, gp, -1160
                  sll          s7, s5, a7
                  div          a3, t4, tp
                  sll          t6, s8, ra
                  slt          s2, t0, s6
                  andi         s4, t6, 685
                  sltiu        a0, s11, -611
                  lui          ra, 457846
                  div          t3, t1, s8
                  nop
                  mulhu        s2, a7, ra
                  xor          s7, gp, sp
                  remu         tp, a4, ra
                  and          s0, s8, t6
                  srai         tp, ra, 11
                  srai         s2, s2, 28
                  mulh         a5, a6, t2
                  mulhu        t0, a4, t4
                  sra          a1, t6, t3
                  mulhu        a3, s7, s4
                  div          t3, a7, s4
                  sltu         s6, zero, s3
                  mulhsu       t3, s8, s10
                  andi         t4, s5, -322
                  sll          s9, t1, t4
                  or           a4, a3, t5
                  and          s0, t4, t5
                  mulhsu       t1, s10, s8
                  slti         t0, t6, -499
                  nop
                  add          t3, zero, tp
                  rem          s7, t6, t3
                  ori          tp, a5, 729
                  srli         zero, s0, 26
                  srai         s4, a0, 24
                  sltiu        t6, s9, -385
                  and          t0, tp, a3
                  slti         a7, a4, -135
                  slli         s4, t4, 28
                  slli         a5, s9, 0
                  sra          a0, t0, t2
                  sltu         a5, a1, a4
                  auipc        s7, 874213
                  andi         s10, s5, 456
                  srl          ra, t1, s3
                  addi         a3, a2, 1560
                  sll          t2, a4, s11
                  mulhu        gp, s1, sp
                  and          t5, s6, a1
                  slti         s8, s11, -677
                  lui          s4, 166120
                  sll          t0, s6, tp
                  sltiu        t0, s6, -1456
                  mul          zero, s6, a1
                  mulhsu       s8, s3, t1
                  div          gp, s10, s6
                  and          s8, s11, s6
                  andi         s4, s9, 182
                  divu         a3, t3, t4
                  nop
                  sra          s5, t5, t4
                  ori          t0, t5, 1504
                  slt          zero, t1, s7
                  slli         gp, t3, 31
                  sub          s7, a1, s8
                  and          s1, a7, a4
                  addi         s8, a6, -1670
                  sltiu        tp, s3, 436
                  mulhsu       s7, s9, s8
                  xor          s6, s1, t4
                  mulh         a5, s5, s2
                  sra          s2, s11, s7
                  slli         s4, s5, 30
                  mulh         t3, t3, gp
                  xor          s7, s1, sp
                  div          s10, a2, a5
                  mul          s10, a3, s6
                  auipc        s8, 1032589
                  rem          s5, t4, gp
                  xori         s9, tp, -689
                  sll          t1, s6, a4
                  sltiu        s2, s7, -1536
                  mul          s7, s2, s6
                  and          a0, gp, a6
                  sll          t5, s1, s5
                  or           s4, a2, a6
                  ori          sp, t2, -1148
                  sltiu        s7, s4, -889
                  ori          s9, s9, -463
                  mulhsu       ra, a4, a7
                  rem          t4, s3, t1
                  or           t1, s8, a4
                  mulhsu       s9, s2, a2
                  mulh         zero, t0, s3
                  sll          t6, ra, t4
                  add          a7, s8, s5
                  or           t3, t3, s11
                  sltiu        t0, a6, 505
                  srli         tp, s4, 15
                  mulhu        zero, a7, s6
                  xori         a7, a5, -1180
                  ori          s5, s4, 1461
                  sra          s7, s6, sp
                  srl          s2, t1, sp
                  sub          s6, zero, t1
                  ori          gp, tp, 1340
                  divu         s0, t5, t5
                  lui          s9, 237032
                  addi         gp, s0, 147
                  mulhu        s8, a1, t4
                  mulhu        s1, a4, a5
                  sra          s10, t4, t0
                  lui          t0, 922408
                  slli         t0, tp, 12
                  rem          a4, gp, zero
                  mulhsu       tp, a5, ra
                  div          t2, t6, s8
                  div          a0, a2, a3
                  ori          s4, s5, 321
                  ori          zero, ra, 14
                  srl          s2, t4, a4
                  lui          t0, 893287
                  xori         gp, t1, 434
                  nop
                  mulh         s2, sp, a6
                  ori          t5, t5, -1993
                  rem          t6, a3, t6
                  and          t1, t6, t1
                  mulhu        s10, t1, a6
                  addi         ra, a1, -41
                  divu         t0, a1, t1
                  add          s7, a3, s8
                  sltiu        s4, ra, -875
                  or           s2, s2, t6
                  slti         s10, t2, -1297
                  and          a1, s8, s6
                  addi         a0, t0, -110
                  ori          s1, ra, 1644
                  srl          t6, s8, t3
                  mulhsu       gp, t6, t2
                  remu         s9, ra, s8
                  srl          s7, a7, a4
                  sltu         a5, s3, tp
                  div          t6, a6, s1
                  divu         s0, s11, s3
                  lui          s4, 817705
                  srai         s4, s6, 9
                  slti         s8, zero, 901
                  lui          t6, 372743
                  slti         s10, a0, -1139
                  or           t5, a2, a4
                  add          a1, gp, t2
                  mul          t1, a1, s6
                  srl          gp, s1, s7
                  mulhsu       s5, t5, tp
                  nop
                  or           a1, s1, s0
                  slli         a2, s2, 13
                  mulhu        s2, t3, s8
                  slti         a5, t5, -702
                  add          s2, s9, s5
                  mulh         a0, gp, ra
                  andi         s5, sp, -163
                  srai         a1, s0, 13
                  addi         a5, t0, -1559
                  and          t6, ra, t0
                  slt          a3, t4, s1
                  mulhu        t3, t1, a4
                  or           a2, s9, t6
                  nop
                  slt          gp, t6, t5
                  xori         s9, a5, 730
                  divu         a2, s3, sp
                  mulhu        ra, t4, s1
                  mulh         s2, s7, t3
                  lui          t0, 722494
                  slt          a4, s4, s9
                  srai         a2, s6, 11
                  divu         a1, tp, s2
                  sra          t1, t1, t5
                  andi         tp, s10, 1485
                  or           t3, t3, s5
                  slli         t4, s8, 5
                  mulh         tp, t4, s2
                  andi         tp, t0, -951
                  div          s6, a0, s0
                  ori          a4, t5, 501
                  andi         gp, t4, -1688
                  mulh         s9, gp, tp
                  sll          s7, s4, zero
                  srli         a7, gp, 21
                  div          s1, s10, s4
                  mul          a4, s5, a5
                  mulhsu       t2, s2, a2
                  andi         a4, zero, -663
                  andi         s4, tp, 483
                  mulh         s5, s11, t0
                  divu         s1, a6, a7
                  divu         s5, a3, t4
                  slti         sp, t5, 774
                  xor          a3, t6, s9
                  xor          s8, t3, s10
                  mul          s2, t6, s2
                  and          s7, s10, s3
                  lui          s2, 186944
                  add          s9, s11, a7
                  div          s1, a5, a3
                  rem          a1, s0, t6
                  mulhsu       gp, t5, a7
                  ori          s2, s7, 1360
                  sub          a5, t6, a5
                  remu         t1, tp, s10
                  mulh         t3, gp, tp
                  srl          s2, a3, t3
                  srai         sp, s3, 7
                  add          s4, t5, a6
                  sll          s0, ra, a6
                  ori          t1, sp, -1589
                  srai         s7, s0, 21
                  sll          sp, ra, s5
                  auipc        zero, 222004
                  srai         sp, a6, 24
                  xor          s8, a2, sp
                  sltu         zero, a1, ra
                  add          a4, a5, a4
                  srli         s7, s6, 0
                  add          tp, s9, t6
                  sub          s6, sp, a6
                  xori         s1, zero, -561
                  mul          s1, gp, t3
                  divu         a5, a7, a5
                  srai         a4, ra, 27
                  and          s8, t4, a1
                  sltu         s7, t6, gp
                  slt          s1, a7, t6
                  xori         t6, s1, -372
                  or           s10, s2, s3
                  mulhu        a7, s7, sp
                  srl          s7, s4, s7
                  srli         t2, t3, 21
                  divu         sp, s0, s8
                  ori          a7, gp, 1286
                  srl          a0, t1, a6
                  andi         t1, a5, 451
                  srai         s2, gp, 16
                  mulhu        a1, t6, sp
                  div          s4, s11, sp
                  mulhsu       s8, t0, a1
                  nop
                  sltu         s10, s11, t6
                  auipc        s4, 262365
                  andi         a1, ra, -1071
                  sub          zero, t5, ra
                  add          t1, t0, s1
                  mul          s4, t5, s9
                  sra          s7, t2, a2
                  slt          a3, sp, a1
                  addi         a7, zero, -494
                  andi         s8, tp, -577
                  auipc        t4, 774153
                  slt          t1, s3, a3
                  divu         s0, t5, t1
                  remu         t1, tp, t1
                  xori         t4, s3, -891
                  rem          a2, s10, ra
                  sll          s1, s9, s10
                  sltu         a1, s6, sp
                  divu         t0, a7, s8
                  xor          s7, s1, s11
                  nop
                  mul          t0, zero, t0
                  ori          t6, s7, 412
                  srl          a4, a5, s10
                  sub          t6, a2, t5
                  sra          a5, t4, a3
                  slli         t4, s10, 27
                  sra          t1, s1, t4
                  addi         a1, s7, 1883
                  remu         s2, s2, gp
                  sltu         t1, ra, t5
                  sub          t1, t1, s4
                  ori          t0, a3, 439
                  and          t5, s3, s4
                  remu         t2, s7, s3
                  slti         s6, t0, 262
                  mul          s4, tp, t2
                  slt          s4, a0, a1
                  srai         s9, s0, 23
                  divu         s9, tp, s8
                  slt          s1, a5, a5
                  xori         a7, a2, -1593
                  or           s1, s0, a7
                  ori          a0, a4, -46
                  lui          a4, 395189
                  srai         t3, a0, 21
                  xori         s7, s7, 100
                  mulhsu       s4, s8, tp
                  sub          s5, s11, a7
                  slt          sp, a6, s8
                  divu         t2, s5, a1
                  div          a5, s5, t4
                  mulhsu       s4, s0, t0
                  remu         a7, a7, s4
                  or           t5, tp, a2
                  sub          s8, t1, a2
                  addi         t5, s1, 2014
                  sra          t4, a6, a0
                  addi         s0, s4, 966
                  andi         tp, tp, 805
                  remu         s0, s5, s11
                  add          s9, a5, a3
                  addi         zero, t3, -1121
                  div          ra, t6, sp
                  mul          s2, s2, a0
                  divu         t3, t6, a1
                  mul          s2, s8, s7
                  sll          s4, s5, t1
                  mul          t0, s6, a6
                  rem          t1, a3, tp
                  div          a1, s8, a4
                  or           t2, gp, t6
                  auipc        s5, 458847
                  nop
                  ori          t6, t4, 633
                  sll          s7, t1, s7
                  srai         s8, s8, 19
                  slli         t0, t5, 18
                  mulhsu       a0, ra, a5
                  andi         t1, s0, 434
                  and          s9, s6, t1
                  srl          s10, s10, t1
                  mul          zero, s6, s5
                  xori         a2, s7, 2037
                  remu         s5, t5, gp
                  mul          zero, t2, a3
                  sub          a3, a3, s9
                  andi         t2, sp, 1151
                  slti         a1, t1, 880
                  add          sp, sp, s1
                  mulhsu       s1, a3, a5
                  mulhu        gp, s8, t3
                  remu         zero, s6, s8
                  auipc        tp, 916819
                  lui          a5, 655018
                  mulhsu       zero, sp, a4
                  div          t2, s7, ra
                  sltu         t6, a5, ra
                  sub          zero, ra, t5
                  mulh         a0, t3, a1
                  div          a5, t1, s0
                  or           a3, s7, s6
                  nop
                  xori         s5, t3, 54
                  srli         t6, a7, 9
                  mulhsu       gp, s2, t2
                  andi         a1, s5, 489
                  slti         a0, t0, -6
                  slti         a3, ra, -325
                  lui          t2, 436746
                  slti         a2, s10, -388
                  mulhu        a0, s9, s10
                  sltiu        a7, ra, -1185
                  srli         a1, t3, 29
                  mulh         tp, t4, s3
                  slt          t2, a1, sp
                  srai         s10, a7, 13
                  divu         s10, s8, s5
                  sub          a4, s10, ra
                  auipc        s9, 496077
                  slt          s7, s0, sp
                  addi         t4, a0, -122
                  andi         t3, s0, 848
                  andi         s9, s6, -1384
                  srai         tp, t2, 0
                  slt          t4, s5, a1
                  sll          s9, a5, s7
                  mul          a0, s5, a2
                  rem          s9, a5, t0
                  andi         t0, a7, -1393
                  mulhsu       s7, t4, gp
                  mul          s4, t2, gp
                  sub          zero, t5, s0
                  addi         a2, zero, 916
                  auipc        a4, 351124
                  mulhsu       a2, t2, t0
                  xori         t5, t3, 1415
                  srl          a4, a7, a6
                  or           tp, s1, s3
                  nop
                  slli         a5, a1, 11
                  auipc        s2, 323308
                  sll          s10, t5, sp
                  xor          gp, s4, t2
                  slti         s1, zero, 1233
                  sltiu        s5, t3, -83
                  xor          gp, t4, t2
                  sll          s4, s7, a2
                  lui          ra, 967479
                  sra          zero, sp, s0
                  ori          a7, a0, -1182
                  srl          sp, sp, s8
                  and          a5, tp, s5
                  lui          t2, 818775
                  nop
                  add          a5, s1, a1
                  mulhsu       zero, s4, s4
                  mulhu        s9, a0, s7
                  rem          t0, s7, s0
                  divu         t2, sp, s9
                  auipc        s8, 1043246
                  mul          s1, t0, t4
                  mul          a2, tp, t0
                  rem          s9, tp, s2
                  ori          s5, s0, 580
                  sltiu        t6, s0, 1229
                  or           a1, t5, t2
                  slt          sp, t6, ra
                  srli         s5, gp, 1
                  srai         sp, a2, 29
                  srai         t3, s2, 2
                  mulhu        a3, t2, a0
                  xor          t5, t4, s11
                  mulh         tp, s4, t4
                  sltiu        a7, s9, 216
                  mulh         t0, s7, ra
                  srai         a1, a2, 10
                  sll          sp, s3, a0
                  srl          a4, s10, t6
                  sll          ra, zero, s8
                  xor          s7, a5, sp
                  mulhsu       t1, t2, a5
                  add          a7, s8, t5
                  srli         zero, s9, 30
                  mulhu        tp, a7, s3
                  andi         a5, t6, 1375
                  or           s6, s0, s3
                  andi         a7, a2, 343
                  addi         t1, a6, -1592
                  sltiu        s1, s5, -1795
                  sltiu        s8, s5, -227
                  sltu         s10, a2, s4
                  srli         t3, s2, 31
                  divu         a2, a3, s11
                  mulhu        a2, s11, a7
                  andi         t6, t2, -14
                  andi         zero, gp, -940
                  slti         t0, t5, -1940
                  rem          t5, s2, t0
                  sll          s10, t5, s9
                  rem          s9, s6, s8
                  sub          s1, a7, s7
                  and          s9, s11, s7
                  slti         zero, s4, -1511
                  srl          a4, a4, s11
                  or           s6, a2, sp
                  add          gp, ra, sp
                  sra          s7, ra, t4
                  slti         s0, a6, 511
                  sltu         t2, gp, a4
                  sltiu        a5, a4, 826
                  slt          s10, s1, t6
                  slti         t6, s2, -1922
                  slli         s8, s11, 18
                  slti         zero, t0, -620
                  slt          t1, t6, sp
                  mulh         a5, a4, s0
                  slli         t5, s4, 26
                  andi         ra, tp, 840
                  sra          a5, a0, a4
                  xori         s9, a1, 311
                  andi         s10, a3, 158
                  mulhu        s0, s6, s2
                  mulhu        t3, s7, a5
                  ori          t5, s5, 465
                  or           t4, s0, s10
                  ori          s7, a7, -1110
                  xori         a5, t6, 535
                  slt          a3, a1, s8
                  div          t6, a4, a5
                  srai         s6, a6, 11
                  mulh         a2, s11, s4
                  mul          s9, s7, a0
                  remu         s7, s11, s6
                  divu         sp, t0, s7
                  remu         t1, s1, t0
                  slli         t6, ra, 12
                  srai         a7, t0, 4
                  or           zero, s9, a7
                  div          zero, a6, a7
                  xor          t6, a7, a6
                  xor          s5, a2, s1
                  lui          a3, 235718
                  xor          zero, s7, sp
                  or           s10, t1, a7
                  div          s7, a0, t2
                  sll          t6, zero, a6
                  sra          s7, s3, s5
                  xori         s5, a3, 1788
                  remu         ra, s7, s6
                  slt          gp, s9, a1
                  add          sp, t1, s8
                  rem          tp, t4, ra
                  mul          t3, a5, a3
                  mul          s7, s8, s1
                  slt          t5, s1, t1
                  slt          a3, sp, sp
                  rem          t6, s11, s9
                  andi         s1, s10, -443
                  add          s5, t3, s10
                  slli         a0, t3, 28
                  mulhu        s0, s2, s5
                  xori         s0, s10, -2007
                  remu         a4, tp, ra
                  sltiu        t2, s1, -396
                  slli         s0, s4, 11
                  slt          s2, gp, s5
                  divu         t0, a0, a0
                  slt          t5, t5, tp
                  andi         gp, tp, 1226
                  mul          t4, a3, s11
                  slli         gp, sp, 4
                  auipc        a0, 357127
                  or           s1, t3, s9
                  xor          s9, s4, a4
                  or           s2, tp, t1
                  auipc        t6, 22252
                  srli         s4, s3, 13
                  divu         t1, a2, s1
                  mulhu        gp, a4, t3
                  andi         sp, s5, -1208
                  andi         s9, sp, 1466
                  nop
                  mulhsu       s7, t5, t5
                  sltiu        s7, t5, 1142
                  slli         t6, t3, 31
                  slli         s5, s6, 22
                  slti         t3, t2, 1729
                  mulhu        t1, a4, s4
                  div          s8, a1, s5
                  sltiu        s8, ra, -528
                  xori         t1, t5, -828
                  slli         a5, t6, 26
                  ori          zero, a4, -1077
                  remu         t4, s1, t1
                  sltiu        s8, t2, 1060
                  addi         s7, t0, -3
                  srli         a7, t5, 6
                  andi         a7, s4, -1262
                  srli         s4, t1, 8
                  mulh         zero, ra, s9
                  srai         tp, a2, 15
                  mulh         tp, a5, a7
                  slti         s7, a5, 695
                  and          a7, s2, s1
                  nop
                  slli         a3, s3, 30
                  mulh         s10, s10, a1
                  sll          t0, sp, a4
                  xor          a2, a2, s7
                  and          s2, s7, t4
                  slt          a3, s11, s8
                  xor          zero, a7, a6
                  slti         s10, a3, 883
                  addi         a3, t6, 368
                  rem          t3, a7, s5
                  sll          t5, s4, a5
                  mul          t6, s4, s1
                  sll          a5, t3, s1
                  xor          s4, sp, a4
                  auipc        tp, 139116
                  srl          a0, s1, s0
                  auipc        a1, 423994
                  slli         s1, s8, 8
                  addi         zero, ra, 1175
                  srl          a7, a3, t6
                  auipc        t2, 697811
                  andi         s2, t6, -1840
                  sll          ra, t3, a5
                  slti         s0, sp, -781
                  sltu         t4, a6, sp
                  srai         s2, a2, 29
                  xori         s5, a4, 737
                  sltu         a3, ra, t3
                  xori         s6, a7, 1437
                  auipc        a0, 835220
                  sra          s10, t3, t4
                  andi         s8, sp, -1811
                  srai         s10, t2, 27
                  srai         tp, sp, 15
                  remu         a2, s2, t4
                  srl          ra, t4, t2
                  add          a0, t3, ra
                  sltu         s4, s5, s5
                  mulh         s2, s2, s10
                  sll          s4, s11, s4
                  slti         ra, t3, -1615
                  add          s2, a2, a3
                  rem          s5, a0, s9
                  srl          t2, a6, zero
                  sltu         s2, s2, a4
                  slli         s10, s3, 26
                  slli         t2, s9, 20
                  slti         sp, t1, 828
                  mul          a7, a6, s3
                  mulhu        a0, a0, s3
                  mulh         t6, s11, s0
                  lui          s0, 761125
                  xori         sp, a4, -1652
                  slli         t5, t5, 13
                  rem          s10, a7, s1
                  sltu         s1, a7, s2
                  and          s2, zero, t6
                  addi         t6, tp, -521
                  xori         s2, a3, 673
                  lui          t2, 299605
                  addi         a3, s4, -1498
                  sra          s2, s10, s0
                  or           a1, s4, gp
                  srai         a7, a7, 4
                  remu         a1, t0, t6
                  nop
                  nop
                  and          a1, s1, s5
                  mul          gp, a0, ra
                  sub          a1, a1, a0
                  slt          t1, s10, a4
                  sltu         a0, a1, s11
                  andi         t6, a4, 1469
                  xori         zero, a5, -331
                  div          s6, a2, a3
                  div          t5, t6, t2
                  auipc        a3, 140811
                  ori          s9, s7, 740
                  ori          tp, t2, 2009
                  auipc        s5, 400612
                  andi         a2, sp, 1900
                  div          s7, a6, a0
                  mul          a2, a0, s2
                  mul          gp, a4, tp
                  sltu         gp, zero, t4
                  slti         t3, a2, 1795
                  div          t2, s2, zero
                  mulh         s6, t2, s11
                  rem          a1, a3, t4
                  slti         gp, a1, -1544
                  addi         a7, zero, -46
                  srl          tp, t6, s0
                  slt          ra, t6, t2
                  div          a7, s4, t0
                  mulhu        zero, a4, s9
                  xori         a0, a6, 224
                  auipc        a1, 162230
                  slt          a2, s1, t2
                  srl          a2, s6, a4
                  and          t4, s5, s0
                  nop
                  lui          s4, 216051
                  srli         t6, a2, 17
                  mulhu        zero, t4, a0
                  div          s2, s3, s4
                  mulhu        t5, s0, s1
                  slt          sp, a7, t5
                  remu         t3, s0, t1
                  slli         zero, a0, 30
                  sltu         a7, s7, zero
                  addi         t5, t6, -559
                  ori          a0, s0, -932
                  sub          s10, t5, t1
                  xori         sp, t3, -1003
                  mulhsu       a1, s9, s9
                  divu         a7, a1, a5
                  srl          s6, zero, t5
                  sltu         gp, s10, a4
                  srl          a1, s1, t6
                  or           s5, a0, t5
                  or           s2, s5, ra
                  remu         s2, a0, a7
                  sll          t2, t2, s3
                  sltu         s1, t4, gp
                  remu         s1, s4, t2
                  srli         a1, sp, 25
                  slt          s7, a3, t5
                  ori          s7, a5, 2001
                  slt          a1, s8, s1
                  divu         s8, t0, s8
                  srai         s9, s7, 23
                  add          a4, t0, s6
                  mulh         s10, t0, gp
                  sll          s2, t0, s4
                  srli         a3, s11, 17
                  addi         a2, sp, -344
                  srai         s2, t2, 27
                  sra          a7, s10, s1
                  mulhu        a4, t2, t3
                  addi         a7, s1, 757
                  andi         tp, gp, -1771
                  ori          a7, s3, 883
                  xor          t1, s9, a4
                  ori          ra, s11, -1626
                  or           t6, a7, a5
                  mulh         s2, tp, s10
                  sll          t2, a4, s6
                  andi         t1, a6, -1582
                  sll          sp, t6, t1
                  lui          s6, 1044820
                  auipc        a3, 895756
                  srli         s2, s8, 6
                  srl          t6, a6, zero
                  srai         s8, s5, 2
                  div          a5, tp, t0
                  rem          t4, t3, a7
                  sltiu        a2, t6, -1663
                  auipc        s10, 829136
                  slt          a0, ra, a3
                  nop
                  div          gp, s6, t5
                  lui          t4, 490211
                  divu         a4, s3, s5
                  divu         s7, a1, s0
                  ori          t2, t3, -1491
                  slti         a7, a4, 325
                  or           s5, s2, t1
                  auipc        t6, 423430
                  nop
                  ori          s10, t5, -1835
                  and          a3, s5, s10
                  sltiu        s4, t5, -49
                  mulh         t4, a0, sp
                  remu         s7, s0, a0
                  sra          t3, t0, a4
                  xori         a7, a7, -2009
                  rem          a4, t4, a5
                  div          a5, a5, tp
                  srl          t1, s1, a1
                  srl          s10, sp, t0
                  ori          s0, gp, -622
                  sltiu        a2, t3, -1891
                  auipc        t2, 233543
                  xori         a1, t6, 719
                  mulh         a1, s5, sp
                  sra          t3, sp, ra
                  or           a1, tp, s5
                  xori         zero, s2, -1203
                  divu         s2, s8, s10
                  xori         a5, s5, 806
                  addi         gp, a5, -1862
                  slti         sp, s1, -2015
                  mulhsu       t0, sp, a0
                  and          t5, t3, a4
                  mul          sp, s8, zero
                  add          a2, zero, s5
                  add          s9, s6, t0
                  ori          a5, s4, -1219
                  andi         sp, t2, -724
                  slti         s10, zero, 1653
                  remu         t5, s2, s11
                  xori         s1, t6, -1318
                  auipc        s9, 322645
                  or           s8, a6, s10
                  mul          t3, zero, s4
                  mulh         s8, s8, s1
                  remu         t4, s10, a1
                  srai         a0, s9, 1
                  ori          t6, s3, -50
                  or           a4, t5, a2
                  ori          t2, a5, 1440
                  addi         a7, s5, -880
                  andi         s6, gp, -455
                  xori         t5, s10, -1599
                  srli         s4, s11, 19
                  xori         t6, t5, -1852
                  andi         s9, s10, 598
                  remu         a0, t6, a5
                  sltiu        s9, a1, -886
                  mulhu        ra, s11, tp
                  sltu         s2, t0, s9
                  divu         s5, s6, s6
                  slti         zero, s8, -1454
                  sub          tp, tp, a5
                  sltiu        s7, a1, -1797
                  divu         a4, t5, a7
                  div          s4, a4, s2
                  sub          tp, zero, s4
                  sra          s7, s6, s11
                  addi         a7, a6, 2038
                  xor          t4, a5, tp
                  sra          a3, zero, ra
                  auipc        a1, 80217
                  auipc        t6, 128917
                  slt          s4, t6, s0
                  sltu         a0, s9, zero
                  mul          a1, t4, s11
                  divu         t1, a3, t6
                  add          s2, sp, a6
                  addi         t3, a0, -1014
                  slti         a2, tp, 1760
                  sra          s7, s2, s7
                  lui          ra, 827696
                  slti         a3, s4, 651
                  and          t1, sp, a1
                  divu         t1, s10, s4
                  sll          s7, s5, t1
                  mulhu        s9, s6, sp
                  auipc        s2, 794296
                  xori         a5, s5, 786
                  remu         t1, s6, t4
                  auipc        ra, 888739
                  and          t4, t6, s7
                  srl          s10, a3, s7
                  rem          a3, s7, s6
                  slt          t6, a0, t4
                  rem          t1, a3, s4
                  xori         s10, a5, -760
                  add          s10, t1, t3
                  and          t2, a7, s10
                  sra          s7, t1, a1
                  mulh         s9, a7, t0
                  nop
                  rem          t3, s6, t2
                  xori         a5, t6, 2022
                  add          a2, tp, a0
                  and          tp, s10, a1
                  sll          a1, s3, s0
                  remu         s9, a6, s10
                  mul          t1, a5, a7
                  sub          a3, s0, s3
                  remu         t4, a3, gp
                  mulh         s2, t5, zero
                  remu         a5, s2, t2
                  sub          t1, t2, ra
                  sltiu        t6, t5, 1849
                  xori         sp, s5, 345
                  sltu         t5, t1, t0
                  mulhu        t4, s5, t3
                  sll          a1, tp, a3
                  addi         s2, t3, -34
                  lui          s8, 279402
                  rem          s7, s4, zero
                  ori          gp, a1, 1958
                  add          t2, a4, s6
                  nop
                  mulhsu       sp, t4, s0
                  or           t1, zero, s10
                  srli         s5, a6, 24
                  mulh         a7, t5, sp
                  add          zero, a3, s7
                  srai         s0, s3, 23
                  sra          s7, s0, s3
                  divu         t3, s8, s4
                  remu         s8, s0, s5
                  srai         a0, zero, 26
                  remu         zero, a3, s0
                  addi         s10, t2, 390
                  ori          t6, ra, -335
                  remu         gp, gp, s4
                  ori          a0, s11, -1031
                  srl          t0, a3, s2
                  sltu         a5, a4, t4
                  rem          t6, s8, s1
                  mulhu        s2, ra, s5
                  mul          t3, a2, a6
                  sra          s7, t5, a2
                  divu         sp, s9, a0
                  andi         s9, s9, -820
                  divu         t3, a7, s5
                  andi         t5, a4, 130
                  sltiu        s1, sp, -589
                  nop
                  xori         s9, s11, -1250
                  auipc        s7, 260188
                  mulhu        sp, tp, a7
                  slli         s5, s10, 2
                  lui          t0, 546925
                  mulh         s5, t0, s0
                  srli         s9, a3, 29
                  nop
                  add          s1, s0, t5
                  mulhu        a2, s10, s11
                  remu         s9, s10, zero
                  sltiu        s10, s10, -1503
                  add          s2, t5, a3
                  sll          s5, s11, s9
                  srli         t6, s6, 31
                  srai         zero, s5, 14
                  srl          ra, s9, t1
                  sll          a7, ra, a6
                  or           tp, gp, sp
                  ori          a1, s4, -408
                  and          t4, t2, t6
                  div          t0, s2, s3
                  mulhu        s0, ra, zero
                  or           a7, s11, s0
                  xori         s2, s11, 1740
                  sltu         s6, gp, a0
                  sub          a3, a2, sp
                  div          t6, a5, s9
                  mulhu        sp, s10, tp
                  slt          s5, t0, s2
                  and          a7, a2, t0
                  add          s8, gp, s2
                  lui          t6, 9384
                  xori         a3, t0, -736
                  slti         t0, a7, 408
                  slti         s4, t0, -1344
                  sub          tp, s11, a5
                  rem          a4, s10, a7
                  andi         s5, a5, 1822
                  mulh         s8, a6, a6
                  slti         gp, t6, 1372
                  srli         a3, t3, 12
                  sub          t0, s7, a2
                  srli         a2, s11, 29
                  remu         a7, a1, a1
                  sltiu        t4, a7, 837
                  nop
                  slt          tp, a4, a6
                  divu         t5, s4, tp
                  sub          sp, s1, s10
                  mulhu        t4, tp, a3
                  slli         gp, a7, 0
                  mulh         s1, t6, t6
                  sub          a5, s5, tp
                  remu         s7, a6, t6
                  ori          s6, t3, 277
                  or           gp, s10, t0
                  sub          s5, a1, a6
                  and          t3, t3, t2
                  nop
                  lui          s9, 925675
                  andi         s5, a6, 929
                  addi         sp, s4, -1838
                  sltiu        s1, t1, -2016
                  mulhsu       a2, a1, t3
                  slt          s4, ra, s10
                  sltiu        ra, s3, -799
                  sub          s10, tp, s5
                  mul          t2, s8, a4
                  srai         s2, a2, 18
                  slli         a2, a1, 26
                  xori         zero, s9, -688
                  or           s4, a2, a1
                  mulh         s6, t1, t2
                  lui          t5, 377879
                  srl          s7, a6, a7
                  sltu         s2, a2, gp
                  andi         a7, s2, -1283
                  mulhu        t2, a5, s2
                  mulhu        a5, sp, s4
                  slti         t2, sp, 1046
                  div          a1, s4, s4
                  mul          t3, a6, a6
                  divu         a7, s6, s7
                  xori         a7, s0, 1116
                  andi         a1, t0, 1537
                  mul          s4, s5, s7
                  addi         s7, a3, -952
                  addi         s4, s0, 590
                  sra          a4, s7, s11
                  sltu         a0, t3, ra
                  rem          s10, sp, t4
                  mulhsu       a7, a5, a3
                  mul          a0, a3, t1
                  srl          t0, zero, a6
                  addi         t6, a0, 2016
                  or           t6, a5, s10
                  or           s9, s10, s8
                  sub          s2, s9, s5
                  auipc        a0, 734061
                  slti         s0, ra, 1134
                  slli         ra, t5, 30
                  slt          s2, s9, s3
                  addi         t2, t1, 1778
                  and          s10, s7, t5
                  mulhsu       s10, a6, s4
                  mulhu        a5, t0, t3
                  andi         a2, a3, 1225
                  srai         gp, s9, 5
                  slti         s9, a2, 1984
                  addi         s0, s1, -990
                  srl          s4, sp, s1
                  or           tp, s3, s1
                  xori         t6, s5, 1863
                  slti         tp, a7, -1688
                  remu         a5, t3, s10
                  auipc        tp, 322905
                  sra          a3, a0, a4
                  srai         t6, t6, 27
                  add          gp, a3, t6
                  xori         a5, s10, -1359
                  ori          gp, zero, 59
                  slti         gp, s9, 1910
                  mul          s1, s1, a6
                  mulhu        gp, t4, s7
                  rem          s9, ra, s0
                  xor          s7, s1, a6
                  divu         a0, s2, ra
                  sll          a7, s8, s2
                  slti         t6, t6, 34
                  ori          a5, s0, 1262
                  slti         t5, s9, -525
                  srli         a0, t0, 17
                  divu         t1, s5, zero
                  mulhu        s4, s5, t0
                  srai         sp, s2, 30
                  slti         s1, ra, -1077
                  add          s1, gp, a6
                  ori          a3, s1, 165
                  addi         gp, t0, -1044
                  srli         t6, t6, 11
                  slli         s8, a4, 3
                  sll          t0, t4, a1
                  mulh         s10, a3, t1
                  slt          a5, a0, a6
                  mulhsu       t5, s1, t1
                  srli         s2, s5, 23
                  sltu         gp, a2, t2
                  remu         zero, s11, t4
                  srl          s2, s8, t3
                  slt          a1, t1, s5
                  lui          s0, 896914
                  ori          a5, s3, 514
                  mul          s4, s0, a7
                  slt          s9, t2, t0
                  slt          t5, a0, a7
                  and          a4, a1, s2
                  ori          a0, t3, 625
                  srai         s4, a3, 14
                  auipc        s2, 248582
                  slt          tp, s6, t0
                  mulhu        a0, gp, s0
                  addi         s5, t6, 375
                  sltiu        a5, s4, -716
                  sll          s5, t1, ra
                  slli         s2, s11, 16
                  or           tp, s0, a3
                  div          s10, a1, a7
                  slt          t2, s7, t1
                  addi         s8, ra, -156
                  rem          ra, s10, s4
                  srli         a2, tp, 10
                  add          sp, t6, zero
                  mulhsu       s0, s10, t1
                  xor          s10, t4, s3
                  sll          t5, s8, s11
                  sub          s6, s10, s1
                  mulh         s2, a4, a4
                  or           gp, t1, a1
                  ori          a7, s3, -1175
                  auipc        s1, 584884
                  sll          a7, s4, tp
                  addi         s2, s3, 1911
                  srli         s1, t4, 26
                  srl          t6, s5, ra
                  srli         s8, zero, 23
                  xor          s10, t2, a6
                  addi         a7, t2, -195
                  sub          s2, s4, t1
                  div          ra, a4, a6
                  sub          gp, s1, s7
                  and          ra, s2, a1
                  mul          s8, s8, a3
                  slti         gp, s5, 1087
                  sltu         a1, s10, tp
                  mulh         a0, tp, sp
                  sll          a7, s1, ra
                  remu         s1, zero, a4
                  slti         a1, t6, 148
                  slti         t4, a3, -125
                  srai         a3, a1, 16
                  srai         s1, a0, 13
                  sra          zero, s5, a3
                  mul          zero, s1, s4
                  xori         t6, s6, -1549
                  sra          t2, sp, t6
                  remu         s9, s10, s0
                  srli         t6, ra, 12
                  xori         s5, t6, 71
                  slt          s7, tp, s1
                  ori          t2, t6, -1468
                  nop
                  lui          a1, 234697
                  ori          s9, t4, -1021
                  nop
                  divu         s10, s1, a4
                  sltiu        t2, a0, -762
                  andi         t2, tp, 163
                  sra          t6, s8, s9
                  mul          a3, t2, a7
                  auipc        a4, 782605
                  mulh         gp, zero, s6
                  nop
                  sll          t1, t1, t0
                  auipc        a7, 280064
                  sltu         a5, t2, a5
                  mulhu        t1, ra, s7
                  slli         s2, zero, 6
                  slt          t5, ra, a3
                  or           t5, a4, ra
                  xori         s2, t5, 1264
                  slt          ra, a2, s6
                  div          zero, s11, a7
                  ori          t0, s5, -1349
                  divu         t3, a0, t5
                  mulhsu       a0, a7, zero
                  nop
                  div          s5, s9, s11
                  div          tp, a6, t4
                  sub          s4, t2, t5
                  auipc        a4, 937612
                  srai         sp, sp, 6
                  srl          a3, s7, s1
                  srli         a4, sp, 15
                  ori          a4, s9, 117
                  mulhu        ra, s3, s7
                  mulhsu       tp, s6, zero
                  auipc        t1, 829808
                  sltu         tp, s7, s9
                  and          s7, t0, tp
                  addi         t1, s9, -780
                  lui          tp, 571623
                  lui          a7, 1031044
                  mul          s4, zero, t6
                  div          tp, a4, a2
                  sltu         t3, s4, t2
                  slti         s10, t2, 1028
                  divu         s7, s1, gp
                  nop
                  div          tp, t3, a6
                  nop
                  sltiu        gp, s0, -1150
                  lui          t2, 830912
                  lui          a5, 442528
                  remu         zero, s4, s6
                  mulhsu       s2, t2, s10
                  addi         s7, a4, 715
                  mulh         a4, t1, a6
                  sltiu        s4, zero, 1001
                  mulhsu       t0, ra, t5
                  andi         tp, s6, 88
                  auipc        zero, 157874
                  sltu         s0, a7, s10
                  xor          s10, t4, s0
                  srai         sp, a6, 14
                  srli         gp, s6, 15
                  rem          s8, s8, tp
                  sra          s9, t4, t1
                  or           s10, a0, s3
                  srl          s8, t5, a0
                  div          s0, a4, t3
                  srai         t3, s5, 29
                  nop
                  div          a2, tp, sp
                  srl          s1, t3, s5
                  sltiu        t5, ra, -1611
                  divu         a1, s2, s7
                  mulhsu       tp, t1, s6
                  sra          s0, a7, s4
                  auipc        t4, 214918
                  andi         s1, s10, 352
                  mulh         a2, t0, s4
                  srli         a0, a5, 17
                  add          tp, s9, t1
                  mulhsu       s4, t2, s10
                  sltiu        a5, s6, -1954
                  or           s8, s5, s5
                  sltiu        s6, s5, -692
                  sltu         s4, gp, s3
                  add          a3, a0, t3
                  lui          s9, 329291
                  mulhu        gp, s8, a2
                  srli         zero, s0, 27
                  sra          t6, t1, t6
                  nop
                  ori          gp, s1, 1611
                  mul          s10, s8, tp
                  auipc        a5, 830603
                  andi         gp, s11, -580
                  mulh         s9, s5, s3
                  divu         s0, t2, a5
                  srai         a0, a2, 3
                  or           a7, s8, s1
                  mul          s0, s9, t6
                  sltu         t5, a6, s2
                  sll          t2, ra, a3
                  mulh         t2, a1, a1
                  sltu         gp, s1, s0
                  or           s1, a3, s3
                  slt          a0, s6, t1
                  or           zero, t6, t5
                  sub          s9, sp, t3
                  mulhsu       s2, a7, t3
                  mulhu        tp, t5, tp
                  mul          gp, sp, s9
                  div          t6, s8, t4
                  mul          s6, t4, a7
                  sltiu        t3, t1, 1603
                  divu         t3, t5, a4
                  sltiu        t0, a5, 1905
                  div          tp, s6, t3
                  slli         a5, t1, 18
                  mulhu        gp, s0, s9
                  ori          zero, zero, -912
                  andi         s10, s0, -1084
                  ori          t3, a4, 783
                  divu         gp, s1, s9
                  mulhsu       a7, s6, s0
                  rem          t6, sp, t4
                  sltiu        s10, s1, -485
                  xor          t0, t3, s5
                  srli         a7, s3, 10
                  slli         ra, a2, 31
                  mulhsu       t0, a3, t3
                  sll          t0, sp, s4
                  sll          s8, sp, t4
                  slti         t3, gp, -580
                  xori         t4, a6, 962
                  andi         s1, s7, 1545
                  sra          zero, tp, a0
                  slt          s8, a7, a7
                  andi         t3, a3, -387
                  sltiu        s8, sp, -1161
                  srli         a7, s5, 20
                  add          a7, a5, tp
                  sltiu        s5, s5, 1549
                  or           t2, tp, a4
                  srl          s6, t1, s4
                  slt          s8, a6, t4
                  ori          t4, s6, -441
                  rem          a0, t2, t1
                  remu         gp, s1, s0
                  sll          a5, t0, t6
                  mulhsu       a2, s8, s1
                  mul          s4, t1, t6
                  remu         zero, s8, t0
                  mulhu        s7, zero, s11
                  remu         t0, s11, a5
                  sub          zero, a3, a1
                  add          a0, s4, zero
                  slt          a1, s5, a6
                  ori          zero, a7, -508
                  lui          a1, 795284
                  andi         s9, a6, -161
                  auipc        s10, 445506
                  mulh         a5, s10, t2
                  sltiu        a1, a2, -1567
                  andi         s2, a0, -842
                  sll          s5, s8, s3
                  andi         t2, t6, 674
                  sll          a4, sp, gp
                  remu         a0, s11, a5
                  addi         t4, a2, 1255
                  mulhu        s2, a0, t1
                  addi         a1, gp, 1499
                  addi         t4, t2, 1846
                  div          s9, s1, sp
                  add          s6, s7, t1
                  mulhsu       a3, s4, s11
                  xori         ra, a4, 1446
                  srli         s1, a5, 1
                  div          s5, a0, s11
                  xori         a1, sp, 305
                  rem          a7, a4, s6
                  srl          ra, a2, t4
                  mulhu        t6, a3, t3
                  slt          a7, s8, ra
                  mulhu        s4, s3, s7
                  remu         t0, s1, a4
                  slti         t3, zero, -1066
                  slli         a2, sp, 7
                  sub          t1, s3, t4
                  mulh         t6, gp, s1
                  ori          a5, a4, -1722
                  mul          a7, a3, ra
                  mulhsu       t3, sp, s2
                  mulhu        s5, s0, s10
                  or           a4, a7, t5
                  xor          a1, s7, a7
                  sra          a3, a3, s5
                  slti         s5, sp, 1513
                  slti         s6, s5, 232
                  slt          ra, s11, a5
                  srli         t3, s8, 14
                  mulhu        s0, zero, a6
                  sltu         t4, t0, s10
                  add          ra, s10, a6
                  or           s5, gp, t0
                  add          t2, t6, t5
                  or           t5, s1, s11
                  mul          a4, t4, t4
                  xor          sp, a1, s11
                  rem          a3, t5, s2
                  auipc        t4, 652674
                  rem          s2, t4, t2
                  div          s0, t0, sp
                  sra          s7, s9, s6
                  or           a0, ra, a0
                  nop
                  sltu         s9, s9, a1
                  slti         s9, tp, 1480
                  divu         t0, a7, s2
                  div          t0, s10, t0
                  mulhu        s2, a4, s7
                  and          t6, t0, s0
                  mulhsu       s4, t2, sp
                  xori         tp, zero, 1954
                  srli         a5, sp, 4
                  slt          a1, a6, t4
                  slli         t2, a4, 29
                  mul          a0, s7, s7
                  rem          s9, a2, t6
                  ori          a7, t4, -801
                  mulhsu       a7, a0, t5
                  slli         t1, a3, 29
                  divu         t3, a7, zero
                  and          a3, gp, t0
                  srl          s2, s7, a2
                  srli         t3, gp, 25
                  lui          s5, 877104
                  mulhu        ra, s8, zero
                  or           t2, s2, s5
                  divu         t1, t0, s5
                  srli         gp, s4, 5
                  mulhu        a4, s3, a2
                  mulh         t0, s9, s4
                  mulh         ra, s3, s5
                  div          a7, t6, sp
                  srai         a5, a2, 26
                  srai         s2, a2, 1
                  mulh         t6, s0, s5
                  addi         a1, t0, -659
                  nop
                  slt          t6, s3, s4
                  mulhsu       s0, s4, a7
                  mulh         a1, a7, t1
                  divu         t1, s11, zero
                  slt          s0, s2, s4
                  srli         sp, s7, 12
                  mulh         a2, s4, a6
                  remu         t4, zero, t4
                  sra          t4, s7, a7
                  mulhu        s2, tp, s8
                  mulh         s4, tp, a5
                  add          gp, t3, s0
                  slt          tp, a1, t3
                  mulh         s7, t2, s8
                  srli         t3, a3, 29
                  slli         gp, s4, 4
                  srai         t6, t1, 17
                  srai         gp, tp, 17
                  and          a5, t4, s10
                  ori          s4, s5, -124
                  addi         t0, a4, -1509
                  ori          sp, a4, -1754
                  addi         a0, ra, -984
                  xori         a5, a0, -426
                  addi         t0, s11, 438
                  lui          a4, 561541
                  sltiu        s5, s9, 1004
                  sltiu        a0, sp, -1103
                  or           sp, s5, a4
                  sra          s9, s0, s9
                  lui          zero, 929621
                  and          t3, s11, tp
                  mulhu        a7, t6, t1
                  slli         s5, s8, 30
                  andi         s0, s7, 142
                  slti         s2, s8, 45
                  mulhsu       a1, t6, t3
                  mulhsu       s5, a0, a0
                  remu         a7, a6, s10
                  or           t6, sp, t6
                  srl          a2, a0, a1
                  srai         a2, t4, 29
                  mulhu        s7, s4, s6
                  rem          gp, s2, t4
                  divu         a3, s6, s2
                  ori          s6, a4, 1466
                  xor          s7, s4, a3
                  sra          s8, t5, t1
                  sll          s8, a2, s4
                  xori         t3, tp, 1817
                  or           s1, gp, a7
                  lui          s4, 912821
                  mulhu        gp, s7, a6
                  mulhu        t2, s8, t2
                  lui          a7, 931392
                  slt          s2, s3, t6
                  ori          s2, s1, 1956
                  sll          zero, a5, s3
                  nop
                  srli         s9, s0, 24
                  div          s9, zero, zero
                  srli         a4, s0, 30
                  sll          s9, t3, t4
                  mulhsu       t1, s9, a5
                  and          zero, a4, s6
                  slt          t5, a4, sp
                  rem          s0, s7, gp
                  xori         a4, a1, 16
                  or           t2, s6, t3
                  or           s2, s5, a7
                  ori          t3, s4, -32
                  mulhsu       tp, t5, s2
                  nop
                  srli         s8, s8, 15
                  or           s6, t0, tp
                  or           s2, s4, s11
                  mulhu        ra, s11, a1
                  remu         s10, t6, t6
                  divu         s4, t1, s0
                  slli         s4, a7, 0
                  xori         s6, s0, 773
                  remu         t6, t1, a2
                  srai         a3, s5, 15
                  srli         s8, s3, 7
                  addi         a1, t6, 1483
                  mul          s10, t3, s9
                  remu         a1, a0, s0
                  srl          s10, a5, t5
                  auipc        s8, 487671
                  mulhsu       a3, s1, s10
                  and          ra, tp, a7
                  slli         a0, a0, 15
                  ori          s2, a0, 981
                  andi         t0, zero, 116
                  slti         t3, zero, 960
                  slti         a4, s7, -1379
                  andi         s6, s9, -1705
                  xori         a7, a7, -206
                  sra          t6, a3, a1
                  remu         t2, gp, s1
                  auipc        a7, 673899
                  andi         tp, s2, -2041
                  xori         s6, s4, -1607
                  xor          s1, a6, s9
                  srli         gp, t4, 14
                  mulhu        ra, a4, a4
                  andi         s0, s0, 1364
                  add          s7, ra, s1
                  slt          s2, t4, s8
                  mulhu        t6, sp, s4
                  slti         s2, t6, -1676
                  xori         t4, s0, 5
                  mul          gp, t5, tp
                  mulh         s1, s1, s3
                  nop
                  srai         ra, tp, 14
                  ori          ra, zero, -1058
                  or           tp, t0, ra
                  mul          s2, s0, s6
                  srl          zero, sp, sp
                  sra          s6, s2, zero
                  andi         s1, s10, -613
                  divu         a7, t2, t5
                  divu         s7, a5, t4
                  rem          tp, t4, s9
                  mulhsu       a2, t0, a3
                  sltiu        a7, s2, 856
                  addi         s7, s10, 372
                  lui          s0, 912682
                  sra          s1, a0, s4
                  add          s1, a7, s3
                  sra          a0, a4, s8
                  add          s2, a4, t5
                  andi         s9, s6, -1481
                  ori          t5, a1, 967
                  xor          a2, a2, s10
                  sltiu        s1, a5, -398
                  andi         t6, s2, -1430
                  sltiu        s1, t0, 1536
                  xor          s5, s11, s1
                  and          a7, s11, zero
                  or           gp, a6, s4
                  rem          s5, s2, s11
                  xor          t2, s1, t0
                  sll          s9, t4, a7
                  srl          tp, s3, t5
                  addi         t2, a3, -1927
                  xor          a4, a1, s5
                  mulh         a1, a6, a5
                  sltiu        a7, s2, 548
                  mulh         s4, s6, tp
                  andi         s8, a0, 579
                  nop
                  nop
                  srl          s10, s4, a5
                  xor          s1, a1, a2
                  mulhu        s1, zero, s3
                  xori         s10, s3, 760
                  auipc        a7, 632945
                  lui          a1, 393103
                  nop
                  srai         s8, a6, 22
                  andi         s2, t1, -979
                  mulh         tp, sp, a3
                  srl          tp, s2, a3
                  addi         s6, gp, -80
                  sltu         s8, t0, t6
                  div          s5, t1, s4
                  div          s2, s2, tp
                  srli         s9, a7, 14
                  addi         a5, s8, 1618
                  sll          s4, ra, a7
                  addi         s0, a6, -481
                  mulhsu       t1, t3, t6
                  add          sp, a4, s8
                  mulh         t5, s5, t4
                  xor          zero, s4, t6
                  mul          s8, a6, a2
                  srai         t4, s5, 19
                  mul          t4, zero, gp
                  mulh         s2, t3, tp
                  andi         s1, a1, 1713
                  ori          a5, t6, -889
                  xor          t6, s1, s7
                  mulh         sp, zero, sp
                  srli         a7, s10, 2
                  nop
                  and          ra, s5, ra
                  remu         t0, s5, t3
                  lui          t2, 842790
                  add          s5, a7, a1
                  and          s9, sp, s9
                  div          s4, a2, s11
                  remu         t2, s6, t1
                  sltiu        s4, t4, -1669
                  add          s0, t0, s5
                  sra          s0, s11, gp
                  div          t0, s11, s10
                  xori         a0, gp, 1051
                  sll          a1, a7, t6
                  srai         t1, zero, 4
                  slti         gp, s8, -543
                  sll          s8, a2, s9
                  nop
                  srli         s2, t3, 9
                  or           s7, s7, s0
                  srli         ra, s4, 1
                  addi         s1, ra, -1617
                  mulhu        t2, s11, s4
                  div          s8, s10, t6
                  sltiu        s10, a5, -1646
                  sltu         s6, t2, s8
                  sra          s0, s11, t4
                  add          t5, s10, s10
                  sra          tp, s10, s9
                  slli         a7, s3, 27
                  rem          t0, s9, a1
                  mulhu        gp, a7, a7
                  mul          t6, t2, s0
                  addi         t4, s6, 1249
                  slli         s0, a6, 30
                  add          ra, a5, t2
                  auipc        s9, 674428
                  xor          s4, s10, sp
                  sra          sp, sp, a5
                  remu         s8, sp, a5
                  srl          s5, a4, ra
                  nop
                  add          a5, t2, s8
                  xori         a3, s10, -454
                  srl          gp, t1, t3
                  mulhu        a1, gp, ra
                  sub          s4, t6, t3
                  andi         sp, s11, -1745
                  slt          a5, a2, t2
                  slli         s6, ra, 17
                  srli         t5, ra, 16
                  mul          a7, t6, a7
                  sub          zero, t5, t0
                  mul          a1, s5, a2
                  xori         s4, ra, -759
                  nop
                  ori          a7, s4, 1500
                  lui          a5, 448249
                  mulhu        a3, s11, a0
                  nop
                  slti         tp, t2, 1803
                  sra          s7, a4, gp
                  or           s6, a0, tp
                  divu         t4, zero, s4
                  ori          tp, s4, 1851
                  and          gp, a7, s1
                  andi         s5, sp, -1592
                  div          gp, s9, sp
                  xori         s5, a1, -1412
                  srli         s5, s1, 5
                  sltu         s10, a6, s2
                  div          s9, s8, tp
                  mulh         s6, t4, s8
                  sltu         a4, t6, a0
                  slti         tp, t1, -1871
                  remu         a7, t4, a0
                  rem          t5, s6, zero
                  xor          ra, zero, t1
                  and          t5, a7, t2
                  nop
                  divu         a7, a4, a4
                  divu         t1, a3, tp
                  slt          t6, a5, ra
                  add          zero, s10, ra
                  nop
                  sub          t5, zero, a5
                  andi         t2, a5, 443
                  mulhsu       a5, s1, s4
                  lui          sp, 241881
                  div          a1, a6, zero
                  xori         s4, s1, 746
                  div          s6, a0, ra
                  sltiu        a1, a4, -738
                  sll          s10, gp, t1
                  remu         t5, a1, s11
                  auipc        s2, 57344
                  sltu         t5, s2, s4
                  mulh         sp, t4, s11
                  ori          t3, a4, 473
                  or           a0, t4, zero
                  ori          a2, a4, -921
                  addi         t1, s1, -1560
                  ori          s2, s5, 1734
                  mul          t5, sp, s3
                  andi         s8, s5, -601
                  lui          s8, 737665
                  divu         s4, s5, s7
                  addi         t6, s0, -89
                  mulhsu       s10, s10, t0
                  slti         ra, a0, 991
                  or           s2, gp, s10
                  mulh         a7, s6, t3
                  lui          s8, 451510
                  and          t3, s8, a6
                  mul          s1, s10, gp
                  slti         a7, gp, 1977
                  or           s6, s5, zero
                  sra          t1, gp, t2
                  mul          s8, a7, s2
                  slti         a7, s2, -2037
                  slt          s2, s0, s8
                  lui          s2, 803247
                  mulh         s5, t0, t2
                  mul          a1, ra, s9
                  mulh         s8, t4, s3
                  mulhu        t6, ra, t5
                  mul          gp, s10, s4
                  divu         t1, s8, s2
                  auipc        zero, 878308
                  addi         a4, s6, -1061
                  or           s2, t2, sp
                  mulh         s8, a0, s8
                  sll          t1, ra, s7
                  mulhsu       ra, s3, s7
                  mulh         s10, s1, a2
                  sltiu        s10, ra, -219
                  xori         gp, t5, -32
                  slti         s0, gp, -1773
                  rem          a4, t2, t1
                  addi         t5, a4, 1500
                  sra          tp, a6, a7
                  or           a0, a5, s2
                  srai         s1, tp, 22
                  sltiu        s0, t5, 1994
                  lui          sp, 878284
                  slt          s5, t5, a5
                  srli         a7, t5, 25
                  or           s1, t3, a7
                  slt          s6, s11, s0
                  mulhsu       tp, s11, t1
                  mulh         s2, a6, sp
                  nop
                  lui          s2, 632396
                  srl          s9, t2, s0
                  slti         s7, t1, 937
                  add          s8, s11, a3
                  remu         a3, s1, s11
                  srai         s2, s4, 16
                  slli         gp, s8, 3
                  andi         a7, a3, -1203
                  sltiu        a3, sp, -2003
                  or           t3, t3, t0
                  and          tp, s2, a5
                  srli         s1, t4, 13
                  sll          s2, zero, a4
                  sra          a3, a2, t5
                  addi         t3, t3, -822
                  addi         s8, s9, -1153
                  andi         a1, t2, 218
                  div          a5, s8, t0
                  div          a0, a6, t3
                  lui          s2, 875395
                  sll          t1, tp, s1
                  divu         s9, s1, s3
                  sll          s10, a2, s4
                  ori          a3, a5, 1525
                  sub          tp, s0, s6
                  srl          a0, s7, s1
                  nop
                  lui          s6, 897883
                  mulhsu       s1, s0, s11
                  lui          t6, 171836
                  sltiu        gp, s4, 1632
                  lui          t0, 109188
                  sll          a5, a5, s7
                  sltu         t4, t1, t4
                  div          a1, a6, s0
                  mulh         t2, a0, a2
                  ori          s10, t5, -1129
                  divu         t5, t5, a4
                  srli         s1, a3, 8
                  srai         s8, s9, 18
                  mulhu        s4, t6, a1
                  remu         a4, tp, a1
                  mulhsu       a4, s10, tp
                  xori         tp, s0, 1364
                  mulhu        s7, a6, a4
                  mul          a7, s0, t3
                  rem          t4, a7, t4
                  mulh         s5, s6, s4
                  sra          gp, t5, a2
                  mulhsu       sp, tp, gp
                  nop
                  mulh         t4, ra, a5
                  and          s2, a5, a2
                  srai         s8, zero, 1
                  lui          s2, 243196
                  sltu         a5, s6, a4
                  remu         t1, t3, zero
                  sltu         s5, t5, s2
                  andi         s8, t3, 489
                  mulhsu       a4, s2, s8
                  or           ra, a1, s9
                  sltiu        s8, s10, -1237
                  sltu         s6, s10, s4
                  nop
                  divu         tp, t1, s7
                  sll          s2, gp, a1
                  nop
                  slt          t4, s7, s1
                  slt          s10, s9, s7
                  remu         tp, t4, t3
                  and          s9, t3, s1
                  sltiu        s7, a7, -1037
                  slli         t5, a1, 7
                  ori          s4, s3, -1832
                  mul          a1, s1, s10
                  remu         t2, s6, a6
                  xori         sp, a2, 1327
                  ori          a4, sp, -693
                  slt          zero, a0, a3
                  and          s9, t0, s9
                  srai         a0, s2, 5
                  xori         s9, ra, -1909
                  divu         s7, t2, s9
                  addi         s2, ra, 23
                  sltiu        s9, t4, -1056
                  auipc        a4, 779610
                  sra          gp, gp, a7
                  slti         s2, ra, -2004
                  mul          gp, a5, s0
                  sra          s6, a4, s7
                  divu         s1, t5, ra
                  mulh         t6, s1, s5
                  andi         s9, t4, 406
                  rem          s5, s1, s8
                  sltu         t5, s5, s5
                  mul          t5, t3, s3
                  add          gp, t5, a5
                  xori         t5, a4, 15
                  or           s8, a6, t3
                  ori          gp, t3, -21
                  xori         a1, s0, 625
                  slli         gp, s3, 14
                  sub          t0, a5, t3
                  or           s8, a6, t6
                  remu         t5, a2, zero
                  srl          s6, t2, s9
                  sra          s0, a3, s6
                  ori          s9, s5, -1691
                  mulhu        s1, tp, s8
                  slli         a0, t0, 27
                  slt          a0, a2, t6
                  remu         s2, s1, s3
                  addi         t5, t4, 214
                  slt          s8, s6, s4
                  slt          s4, sp, a2
                  or           s1, s2, s4
                  slti         t6, s3, 476
                  srli         a1, s1, 3
                  div          s8, s9, s11
                  xor          s2, t0, a3
                  auipc        s8, 443078
                  xor          s10, s4, t0
                  srai         a7, s8, 5
                  lui          s5, 91466
                  xor          s4, a4, sp
                  ori          t3, tp, -531
                  mul          sp, sp, t1
                  mulh         s1, s10, s1
                  and          s0, s11, sp
                  divu         s9, a2, s6
                  remu         a1, t0, a2
                  rem          s2, a5, s4
                  addi         s7, t3, -1604
                  add          a2, a4, s7
                  srl          s1, t5, t0
                  nop
                  sltiu        s10, t3, -1659
                  add          s9, a7, a0
                  lui          a5, 907194
                  slt          s8, a5, s7
                  mulh         s10, a0, s9
                  xor          s6, a2, a0
                  mulhu        s9, s11, s0
                  mulhsu       s2, tp, t4
                  mul          t1, tp, a1
                  ori          s7, t0, -468
                  andi         s8, ra, 1918
                  srai         s7, a5, 2
                  mulh         s1, t3, a2
                  sub          s8, a3, t2
                  divu         a5, ra, a6
                  srli         t2, s5, 19
                  sll          a0, gp, a6
                  sltu         a5, ra, a6
                  mulhsu       s6, a4, s3
                  nop
                  and          t2, a7, tp
                  auipc        a7, 431865
                  srli         a7, t5, 24
                  addi         a4, s9, 795
                  mulh         a1, sp, a5
                  nop
                  sll          s4, s2, t5
                  addi         s10, s11, 97
                  sra          a3, a2, t6
                  sra          s2, a5, t0
                  divu         s5, t1, a6
                  add          s1, s1, a4
                  remu         a7, s0, t1
                  xor          s2, a7, s8
                  sltu         s1, a1, s7
                  or           zero, s7, s0
                  mulh         zero, a5, a7
                  slli         gp, a2, 7
                  remu         s0, t3, a6
                  ori          s9, ra, 621
                  slt          sp, t3, a4
                  lui          a2, 840885
                  ori          a7, sp, -686
                  slti         s2, t5, -1853
                  auipc        a7, 992903
                  srai         a4, s7, 12
                  srl          t4, sp, tp
                  lui          a7, 698610
                  lui          s6, 721488
                  addi         a3, s8, 378
                  slti         a0, t2, -95
                  andi         s5, a0, -1446
                  mulh         a0, s4, s6
                  remu         t6, ra, t1
                  xori         s8, s10, 266
                  auipc        a0, 784137
                  lui          a5, 760312
                  mul          s7, tp, s6
                  or           a3, s4, s9
                  auipc        s0, 465716
                  or           s7, a3, s0
                  addi         a7, s0, -1680
                  rem          s7, s1, s2
                  mulhsu       zero, t1, t0
                  slt          a4, s6, t0
                  mul          s10, t4, s11
                  andi         t6, sp, 1910
                  srai         zero, ra, 28
                  sll          s0, a2, s8
                  srl          zero, t2, zero
                  mulhu        tp, zero, a3
                  auipc        a0, 150834
                  sra          sp, a5, a0
                  mul          t1, ra, s5
                  slt          t3, s1, s5
                  slt          t5, s1, s1
                  srli         s2, t5, 18
                  srli         s9, s8, 8
                  xor          s7, a2, a7
                  slt          a7, a0, a7
                  slli         tp, s11, 12
                  sub          t4, t4, a1
                  add          a7, t5, a6
                  divu         s1, s9, a0
                  remu         s5, a2, s0
                  and          zero, a5, s4
                  mul          a7, a4, s2
                  sub          t2, s5, s6
                  srai         t3, t6, 6
                  or           s2, s6, s8
                  sltiu        s1, a1, -55
                  sltiu        gp, a0, 720
                  xori         s7, s0, 407
                  lui          a5, 222129
                  sltiu        a1, s11, -1554
                  and          zero, t2, t0
                  lui          t6, 610187
                  addi         s8, t2, -1838
                  xor          s4, s5, t3
                  sltu         a0, zero, a6
                  mulhu        a3, s0, a3
                  srai         a7, a1, 8
                  divu         gp, t5, t4
                  remu         t2, a5, t1
                  srai         t5, t5, 1
                  slli         ra, sp, 6
                  slt          a4, ra, s0
                  and          gp, s6, s6
                  rem          t0, s6, s10
                  sra          sp, s4, t4
                  andi         tp, a5, 457
                  slli         s8, s4, 8
                  nop
                  srl          s9, s6, s0
                  ori          t4, s0, -1912
                  mulhsu       t0, a0, s0
                  srai         t4, ra, 5
                  lui          t0, 206171
                  nop
                  sra          s4, a7, sp
                  ori          s4, gp, 1250
                  add          a0, s4, t1
                  and          s2, gp, s9
                  mulhsu       a2, s9, s9
                  mul          t1, s1, gp
                  divu         t0, s5, t0
                  andi         t2, s3, 1803
                  mul          t2, a3, a0
                  srl          s0, t4, zero
                  remu         a0, tp, s0
                  auipc        s6, 50756
                  slt          t3, a0, a7
                  auipc        s7, 1027400
                  auipc        a2, 399703
                  add          a5, t4, a3
                  srli         a1, s8, 30
                  mulhu        s10, t4, ra
                  mul          t2, s5, s8
                  andi         s7, a0, -620
                  sltu         sp, ra, s3
                  or           s9, s9, s1
                  addi         s9, a6, 89
                  sltiu        a3, a4, -1053
                  addi         s9, a0, -169
                  sub          t1, a5, s4
                  or           a7, s2, s7
                  sltu         s2, s1, s4
                  nop
                  slti         a0, s9, 1000
                  ori          s7, t3, 247
                  slli         s5, s3, 24
                  sltiu        ra, t2, 1022
                  divu         t2, zero, s2
                  mulhsu       sp, s1, t1
                  mulhu        t0, sp, s10
                  sll          a7, a5, s7
                  mulhu        a1, s4, s2
                  sltu         s1, t0, s5
                  sll          tp, t6, t0
                  mul          s9, t6, t3
                  andi         zero, a7, 1658
                  srai         t3, t1, 23
                  lui          t2, 589786
                  slt          a4, t2, ra
                  mulhu        s8, s5, s3
                  mulhu        a7, t3, sp
                  mulh         t1, s7, t2
                  lui          zero, 627296
                  srl          s7, a7, ra
                  xor          gp, s7, s9
                  remu         a5, s8, s2
                  xori         s4, t3, 1964
                  mulhu        t2, s1, s2
                  sra          s6, a3, t3
                  slti         t6, ra, -1521
                  remu         s2, s6, t6
                  nop
                  xor          sp, s7, zero
                  sltiu        s2, t2, -943
                  divu         t1, s4, gp
                  xor          t6, s4, sp
                  ori          s8, s11, 1036
                  slti         ra, t3, 610
                  mul          s2, a1, s9
                  slli         s4, s2, 31
                  divu         a1, s1, t2
                  sub          a7, s3, a0
                  andi         t6, t0, 1097
                  ori          t3, t1, -244
                  slt          s7, s11, a7
                  xori         a1, s11, 1474
                  srli         s0, gp, 17
                  sub          a0, a2, t6
                  add          t1, a5, s1
                  ori          s10, ra, 1480
                  srl          s1, t1, t5
                  srli         a7, a7, 20
                  addi         t5, t4, 1135
                  sltiu        a7, s8, -547
                  mulhsu       t4, t3, s7
                  nop
                  sltu         t0, s11, s6
                  mulhu        s8, a5, s0
                  srli         tp, a2, 6
                  rem          t3, s10, s11
                  ori          t6, s3, -781
                  slti         s9, sp, -1642
                  auipc        a4, 330260
                  sra          t3, a6, t4
                  xori         a7, s9, -1223
                  lui          t3, 325040
                  or           a0, t3, t1
                  slli         a7, a5, 21
                  srli         a7, t6, 8
                  remu         a3, s6, t5
                  srli         s7, s11, 21
                  srai         s0, gp, 16
                  remu         a5, a4, a1
                  slli         zero, s10, 9
                  sra          tp, t3, zero
                  ori          gp, a6, 1696
                  srli         s9, a5, 4
                  or           gp, zero, a0
                  xor          a5, s3, s4
                  mulhu        s5, tp, s8
                  mul          a2, s3, s11
                  xori         sp, t5, -107
                  lui          s1, 721952
                  sll          s1, tp, s1
                  mul          t2, tp, s11
                  ori          a7, ra, 1777
                  and          a7, s1, s4
                  mulh         s0, a3, a1
                  remu         t4, a4, s9
                  mulhu        t0, s10, s3
                  srai         t4, t2, 11
                  sll          t6, s5, s6
                  rem          sp, a4, s2
                  or           s6, s11, zero
                  addi         sp, s10, -93
                  xori         t2, zero, -1124
                  sub          t4, a0, a2
                  mulhu        s2, a1, t6
                  srli         t2, t4, 26
                  sub          s6, s2, t3
                  sll          ra, a7, a2
                  auipc        t1, 982732
                  slti         s10, s10, -1841
                  xori         s8, sp, 188
                  nop
                  andi         t2, sp, -1141
                  srl          s10, a6, s2
                  lui          zero, 168346
                  and          s7, s9, t5
                  mulh         a1, t2, s5
                  srli         a3, t4, 10
                  srl          sp, a5, tp
                  div          t3, a1, s7
                  sltu         a1, t3, t3
                  srai         s1, a6, 23
                  div          zero, sp, zero
                  auipc        s4, 76380
                  sll          tp, s1, t5
                  slti         gp, sp, -702
                  mul          a0, a5, t1
                  sra          s7, s9, t0
                  sub          s7, s6, ra
                  xori         s9, s6, -1986
                  srli         sp, a1, 27
                  andi         s9, s11, 1950
                  add          a1, a4, tp
                  srli         t2, t5, 28
                  lui          s8, 567206
                  slt          t0, s6, t5
                  mul          s0, t1, a0
                  xori         s2, a2, -1475
                  srl          a4, s10, t3
                  andi         a5, t4, -1831
                  xor          s5, s3, a1
                  mulhu        s1, t2, sp
                  mulh         s0, a1, a6
                  add          a2, a0, s11
                  srl          a1, s0, a4
                  srl          t5, t4, t2
                  slli         s7, ra, 18
                  and          t5, t4, t6
                  add          a5, s1, s1
                  mulh         gp, s10, s2
                  mulh         s2, s1, t6
                  auipc        t3, 874527
                  add          a2, a5, t5
                  srli         s9, s0, 29
                  ori          s5, gp, 1173
                  divu         s0, gp, a1
                  mulhu        s4, t5, t6
                  xor          ra, s0, zero
                  srai         s8, a3, 8
                  remu         sp, t2, s0
                  srli         s8, gp, 18
                  div          t1, s0, gp
                  mul          tp, t3, s1
                  or           a1, sp, s3
                  rem          s7, gp, a7
                  slti         tp, t1, -1547
                  sub          sp, tp, a1
                  xor          s2, t0, ra
                  nop
                  mulhsu       ra, t3, s9
                  sub          ra, ra, a0
                  auipc        a0, 139187
                  mulh         t0, t2, s5
                  lui          s2, 859989
                  slti         s2, a2, -1010
                  divu         s8, s3, s11
                  lui          tp, 859717
                  rem          s4, s2, gp
                  sltu         s5, s3, t5
                  mulhu        t1, s1, s11
                  andi         t2, s6, -1058
                  andi         s4, s0, -167
                  slti         a5, a5, 1290
                  lui          t4, 407590
                  mulh         a5, s11, s4
                  or           t5, t1, sp
                  mulhsu       gp, a7, s5
                  xor          zero, ra, sp
                  mulhu        s8, t5, s8
                  sub          t3, a2, s8
                  srai         a3, ra, 0
                  and          s2, s9, a0
                  sll          t3, a2, t4
                  auipc        s2, 277682
                  mul          s9, zero, t4
                  rem          gp, t2, s9
                  remu         s0, gp, t3
                  mul          ra, a0, tp
                  slli         s7, t1, 7
                  mul          s6, s7, a1
                  or           sp, s3, ra
                  divu         s5, s0, s9
                  add          a1, t5, s6
                  mulh         t6, gp, s3
                  remu         a5, s4, s10
                  slti         s4, s1, -779
                  auipc        t5, 128969
                  lui          t1, 875411
                  mulh         s7, a4, t3
                  xor          s1, s5, a1
                  sltu         s4, tp, s8
                  mul          zero, t5, a4
                  andi         gp, zero, 824
                  ori          tp, s8, 1529
                  auipc        s2, 939854
                  sub          a4, a5, ra
                  slli         a1, t6, 26
                  mul          tp, s11, s10
                  nop
                  rem          zero, a7, s4
                  or           s2, ra, a2
                  slli         zero, sp, 27
                  or           a7, a7, s2
                  mul          a0, t3, a0
                  mulh         tp, a2, s4
                  addi         s1, t2, 58
                  srl          s5, a6, zero
                  or           sp, t2, a4
                  slli         ra, a2, 13
                  sra          s6, t6, t3
                  add          sp, a1, a5
                  xori         s9, a2, 1168
                  srli         zero, s4, 20
                  nop
                  srai         t4, ra, 21
                  rem          a1, a7, t3
                  slli         s9, s4, 21
                  slti         s10, t0, -1122
                  rem          t6, a4, a3
                  and          s2, zero, s5
                  ori          s10, t6, 624
                  or           a2, s9, t0
                  sltu         s9, s3, s3
                  sltu         s9, t5, s1
                  slli         a4, t4, 9
                  addi         t6, t5, 409
                  rem          s4, a4, a4
                  and          a7, ra, ra
                  mulhsu       a4, t2, s4
                  auipc        s8, 446759
                  sub          sp, s0, s6
                  mul          gp, a4, a1
                  nop
                  xor          tp, s8, t3
                  mulhu        t1, t2, t4
                  divu         s7, a2, a2
                  nop
                  slti         s1, a3, -236
                  and          s6, s2, a2
                  sra          a5, s0, s6
                  sltu         t0, s3, s9
                  slt          tp, s0, s0
                  or           a4, a1, s9
                  remu         a5, sp, s11
                  sub          s10, s6, s8
                  xor          a0, a1, t0
                  srl          t2, s6, s6
                  mulhu        t1, a6, a1
                  addi         s8, s7, -1825
                  nop
                  slti         s7, a2, -1468
                  sltiu        s5, s9, -1286
                  auipc        ra, 711079
                  remu         gp, s2, a6
                  sltiu        a0, s2, 110
                  xori         t4, a0, -95
                  sltiu        gp, s2, -1280
                  div          a3, t2, s6
                  nop
                  srl          a5, s3, s1
                  sub          s8, a3, tp
                  srai         t4, sp, 5
                  slli         t0, a7, 1
                  slti         a4, a0, -715
                  addi         s4, s5, -348
                  addi         a0, a0, -1840
                  sra          s2, s2, t5
                  nop
                  ori          t3, s6, -1384
                  auipc        zero, 969209
                  andi         t5, s5, 995
                  mul          a1, gp, s3
                  mulhu        a1, t1, t0
                  div          s5, a6, a7
                  lui          s2, 694675
                  div          s9, s5, sp
                  slti         s7, t2, -204
                  slt          t5, ra, s1
                  rem          a3, s5, s9
                  mulh         s6, s8, s2
                  sub          a1, gp, gp
                  srli         s2, t0, 30
                  remu         s8, a7, s9
                  mulhu        gp, s11, a5
                  and          a7, s6, a4
                  sll          a5, gp, s0
                  or           t5, s8, t5
                  slt          s1, s11, s11
                  mulh         a2, t0, s1
                  rem          t4, ra, a1
                  sra          gp, t5, sp
                  and          a0, a7, a6
                  slli         a5, s7, 31
                  slli         s7, zero, 0
                  mul          a3, s9, a2
                  addi         gp, a2, 384
                  or           s5, s7, s0
                  andi         s7, sp, 1355
                  xori         t0, gp, 139
                  rem          t1, a5, t2
                  div          s1, sp, zero
                  sub          t6, a6, a4
                  srl          gp, a1, a1
                  sra          gp, s10, s3
                  auipc        a7, 352111
                  sltu         s5, t3, s4
                  remu         t0, s0, a6
                  slti         s7, a6, -151
                  ori          a0, t5, 938
                  nop
                  sll          ra, a4, s6
                  srl          gp, t2, s2
                  nop
                  srl          s0, t5, t1
                  mulh         sp, t1, gp
                  divu         s6, t3, sp
                  divu         t5, a4, a1
                  slt          s8, a7, s11
                  or           a7, t3, t1
                  auipc        s2, 406151
                  nop
                  andi         s10, s11, 1303
                  slli         s6, ra, 8
                  slti         t1, s11, 1148
                  xor          a1, s10, s4
                  div          t0, a2, s3
                  auipc        s9, 639529
                  nop
                  sub          s1, s9, s8
                  srli         tp, zero, 8
                  mulhu        ra, t3, t6
                  xor          s7, a4, t6
                  div          t5, s3, sp
                  srl          gp, t0, t4
                  mulh         t3, a0, s2
                  sra          a1, a1, t6
                  mulh         s9, a2, s0
                  auipc        s9, 182476
                  mulh         a4, s5, zero
                  mulh         a5, t2, t4
                  slti         s5, s5, 1750
                  srli         a7, s8, 21
                  xor          s0, a7, s11
                  or           t0, zero, s11
                  divu         a2, s2, t3
                  divu         t2, s3, a3
                  mulh         a1, tp, t3
                  andi         t4, tp, 450
                  srli         a1, a3, 9
                  ori          sp, tp, -1924
                  slt          t6, s11, t3
                  sltiu        zero, s11, 11
                  srai         a3, a1, 2
                  add          t5, a0, a5
                  srl          a4, a6, a4
                  add          t3, a2, s6
                  and          t2, s6, gp
                  mulhu        gp, a7, t6
                  xori         a5, t6, 1826
                  mul          t5, s3, gp
                  div          t1, t0, a4
                  rem          gp, s2, s5
                  sra          a7, t3, t0
                  srai         t1, s0, 15
                  xori         t5, a2, 644
                  add          s1, t1, s5
                  sltu         s2, t2, s9
                  slli         a1, gp, 20
                  srai         s7, sp, 21
                  divu         s6, a7, t1
                  addi         t2, t1, 878
                  sra          s6, s10, a0
                  sub          a0, s10, a7
                  srl          a0, s5, s10
                  nop
                  lui          s6, 980495
                  mulh         t3, a7, a1
                  sltiu        t3, t6, 447
                  xor          sp, s2, a0
                  add          s10, s11, s8
                  sra          a3, s3, ra
                  xor          s1, gp, a6
                  mulh         s2, s7, s4
                  mulh         t3, sp, a3
                  div          s2, s6, s3
                  or           zero, s8, s5
                  srl          s4, gp, s2
                  mulhu        t5, gp, t5
                  nop
                  srli         s8, a7, 16
                  mulh         s5, gp, a7
                  srli         s7, t2, 26
                  sra          a3, s6, a3
                  div          a4, t1, a6
                  and          t1, gp, t1
                  div          a7, tp, a4
                  mulh         a0, a3, zero
                  mulh         a3, a5, s1
                  lui          zero, 1021666
                  nop
                  or           s6, a0, t0
                  lui          s2, 125701
                  sll          gp, t5, a2
                  sub          s1, a5, s7
                  slt          t6, s5, sp
                  nop
                  srl          s0, s2, s3
                  mulhsu       s7, t2, s1
                  divu         a3, t2, zero
                  lui          t5, 965778
                  auipc        t4, 576968
                  nop
                  mulhsu       tp, s7, t3
                  mulhsu       a2, a7, ra
                  mulhu        a1, t4, s3
                  srl          s10, s8, s8
                  div          t5, ra, gp
                  xor          zero, s7, a1
                  slti         s8, s8, 1285
                  srai         t5, s7, 30
                  mulh         s1, t5, s3
                  xor          ra, s4, a7
                  slti         a7, s3, 1904
                  mulhsu       tp, t2, t3
                  lui          s10, 868240
                  mulhu        s4, a3, t5
                  mulhu        a4, a2, ra
                  or           a7, t2, t1
                  remu         a0, t5, s10
                  srli         gp, t1, 6
                  remu         a4, sp, t0
                  slti         t3, tp, -1896
                  sltiu        s6, t4, -651
                  divu         a3, gp, s6
                  lui          s7, 346724
                  sub          a2, s8, s3
                  mulhsu       a7, s7, a7
                  xori         t5, a6, -409
                  slti         a4, s3, 1133
                  add          gp, a4, a0
                  andi         s8, s3, -1049
                  auipc        s4, 147440
                  mulhu        t2, t4, t3
                  or           s8, a3, s4
                  xori         tp, a2, -1526
                  slti         s6, a0, -402
                  mul          s8, a0, s4
                  mul          t5, s5, t3
                  mulhsu       t2, s0, t0
                  sltu         a5, a3, a6
                  mulhsu       t5, a5, t6
                  or           a7, t4, s11
                  srli         t1, tp, 12
                  rem          tp, t4, a4
                  andi         t0, a7, -870
                  nop
                  andi         s0, s9, -908
                  xor          t4, t2, s10
                  sltu         s4, s6, sp
                  sub          t1, s10, a4
                  rem          s4, a2, t4
                  mul          s7, s6, s8
                  xor          t6, tp, s8
                  srai         s2, s9, 28
                  nop
                  srl          s2, t2, s3
                  srl          tp, zero, t4
                  sltiu        t5, a3, 480
                  rem          a3, t0, s11
                  mul          tp, s1, s1
                  sltu         s9, a2, a7
                  slt          a2, ra, a1
                  sltiu        a0, t1, -571
                  add          a7, t6, sp
                  srli         s1, s6, 15
                  sll          t4, a7, s6
                  srli         gp, s2, 22
                  srli         t6, s9, 12
                  mul          t5, s9, s0
                  divu         a7, a5, gp
                  nop
                  sra          s8, t6, s2
                  mul          a1, a3, t5
                  andi         s4, a5, -1886
                  sll          s4, a4, ra
                  xor          tp, s1, a3
                  mulhu        s0, a0, s11
                  slt          s10, t6, s0
                  srai         zero, s11, 21
                  auipc        t4, 582943
                  and          s4, s4, s9
                  add          s0, a2, a3
                  srli         s5, s10, 31
                  xori         a4, s7, -1830
                  auipc        s4, 958930
                  remu         t4, s1, a0
                  and          t3, a6, s0
                  div          ra, a5, gp
                  andi         s5, a0, -1464
                  sltiu        s4, s2, -1478
                  slli         t2, a1, 16
                  addi         a7, gp, 260
                  add          a7, s7, s10
                  slt          a4, a0, zero
                  auipc        a7, 833158
                  mul          s9, a7, t6
                  srli         s6, s10, 29
                  divu         a3, sp, a0
                  addi         s4, s0, 1742
                  or           s7, a4, t4
                  sltiu        s10, s7, -895
                  slli         a4, a4, 26
                  sltu         gp, a3, tp
                  add          t3, a2, gp
                  mulh         a1, s8, s11
                  sra          s9, t6, ra
                  mulh         s8, a7, s8
                  sltiu        sp, sp, -98
                  srli         s2, tp, 12
                  xor          s4, t3, a1
                  xori         a1, a6, 1594
                  mulh         s2, gp, s1
                  mulh         s9, zero, a6
                  remu         a7, s5, t6
                  srai         sp, t4, 12
                  slt          t5, a4, a4
                  rem          s7, a7, t1
                  sll          ra, t3, tp
                  xori         a0, s10, -723
                  mulhsu       s8, t5, s9
                  sra          a1, s3, s1
                  mulhu        s4, s9, a7
                  lui          t2, 964287
                  add          sp, t6, t5
                  nop
                  mulhsu       s0, a7, a4
                  slli         zero, a3, 23
                  srai         a2, s0, 18
                  div          a7, a0, t0
                  auipc        gp, 971688
                  mulh         s2, a0, s5
                  slti         a5, a5, -291
                  add          t0, s11, a3
                  sltu         a1, a7, a7
                  ori          t3, s8, 283
                  nop
                  divu         s10, s9, t1
                  remu         a5, a7, a0
                  and          a2, t6, a3
                  srai         s1, a1, 11
                  and          ra, s11, a3
                  slli         t0, s8, 30
                  lui          a1, 841682
                  mulhsu       a0, t4, s1
                  srli         t4, s11, 22
                  slt          ra, s11, t2
                  auipc        s6, 8158
                  srai         sp, s8, 31
                  rem          s6, a3, tp
                  srli         s9, t1, 27
                  or           zero, a1, s2
                  or           a7, a4, t5
                  slti         a2, a6, 1603
                  sll          a5, s2, s6
                  xori         s2, a4, -376
                  sltu         sp, gp, s7
                  srl          a0, zero, a4
                  srl          a2, a2, t6
                  ori          a5, zero, -880
                  mulhu        t4, s0, s3
                  mul          s8, zero, a7
                  slti         s8, gp, 309
                  srai         s0, a0, 16
                  and          s2, a0, a3
                  srli         gp, t2, 12
                  and          ra, t2, s10
                  xori         s9, s10, -392
                  div          s10, t6, s10
                  auipc        s4, 725858
                  sltiu        s9, gp, 960
                  slt          s5, gp, t2
                  div          a0, s6, zero
                  sltiu        s8, s0, 1395
                  addi         t4, s10, 491
                  mulh         t2, a2, s1
                  srai         a4, zero, 23
                  divu         tp, s11, t0
                  rem          s7, t5, a4
                  mulhu        t0, s10, t2
                  or           s8, a6, s6
                  sltiu        t1, t4, -119
                  sltu         t5, sp, a3
                  sltu         s2, t6, s6
                  mulh         t3, s6, t4
                  divu         t6, a7, s11
                  sub          t6, gp, a1
                  or           t0, s9, s0
                  srli         a3, t5, 10
                  srl          s2, s7, s4
                  sll          a0, t5, tp
                  sltu         a7, s8, s9
                  mulh         a1, a2, t4
                  addi         t6, s1, -1645
                  slt          ra, s11, t0
                  srai         a0, a0, 14
                  sll          s8, t0, t3
                  rem          s10, t1, s0
                  and          a7, t6, s9
                  divu         s0, s2, tp
                  slli         ra, s2, 5
                  slli         s7, gp, 23
                  sltiu        gp, sp, 103
                  nop
                  srli         ra, s8, 23
                  and          a3, a2, s5
                  remu         s7, s3, s5
                  mul          s6, s11, a6
                  div          t1, a1, a0
                  or           a2, a2, s7
                  andi         t4, a1, 1044
                  add          s7, t1, a7
                  xor          s4, a7, s9
                  sub          a3, s10, a1
                  mulhsu       tp, s7, a4
                  mulhsu       zero, s2, s11
                  mulhsu       a2, s9, t4
                  sub          a3, a4, gp
                  srli         t2, s10, 13
                  sltiu        t3, a7, -1981
                  rem          a4, s5, gp
                  mulhu        s0, s9, a1
                  sltiu        a2, a0, 208
                  rem          s8, t3, s8
                  addi         s5, zero, -1245
                  div          s9, a1, a5
                  ori          s2, s5, 1091
                  or           s2, s9, t1
                  sltu         a3, s1, a0
                  divu         tp, a1, gp
                  add          t6, t1, t4
                  slti         a7, a5, 1013
                  sra          a7, s7, a2
                  and          s8, t5, a4
                  sltiu        zero, a0, 956
                  xori         s1, a1, 95
                  xori         zero, zero, -1591
                  xor          tp, s8, t1
                  ori          a0, s11, -1693
                  lui          a0, 798542
                  and          s4, t5, a7
                  nop
                  lui          s2, 873988
                  mul          a7, a6, a4
                  mul          tp, t6, t5
                  xori         a7, s4, 775
                  srli         a3, s3, 15
                  add          a1, t3, ra
                  sltu         a5, s4, s1
                  mulhu        s2, sp, a5
                  add          ra, t5, t2
                  lui          s2, 757846
                  auipc        s1, 81588
                  slti         sp, s1, 483
                  rem          s2, t2, t1
                  remu         t2, a0, t6
                  slli         t0, s0, 23
                  mulh         s10, a3, t6
                  sll          s5, t4, t5
                  sll          a0, s9, t4
                  rem          a4, a1, a4
                  mulhsu       tp, t3, a1
                  mulh         tp, a3, gp
                  remu         s9, ra, t3
                  mulhsu       ra, ra, s0
                  sltu         s9, s11, s2
                  nop
                  auipc        t3, 215227
                  and          s1, a0, t3
                  add          s7, t0, a4
                  div          a5, zero, t4
                  lui          s10, 737276
                  mulhu        s10, t6, s6
                  divu         a3, a2, s10
                  divu         s0, s4, t0
                  sll          sp, tp, t6
                  sll          a1, a3, t6
                  or           s5, a0, t6
                  srl          s2, s10, a5
                  sra          ra, a6, s9
                  add          t3, ra, s8
                  ori          a3, t2, 532
                  mulhsu       s4, t2, a7
                  slti         a3, ra, -133
                  andi         a0, s10, 1085
                  mul          a7, s0, s2
                  or           s2, t3, ra
                  lui          t0, 994888
                  addi         s9, s9, -257
                  sltu         t0, zero, zero
                  and          s8, sp, a7
                  srai         s4, s5, 3
                  slli         s2, s9, 12
                  slli         t6, a6, 3
                  mulhsu       t2, a2, s3
                  xori         tp, s2, 283
                  mulhu        s2, t5, s5
                  slt          a2, s5, s2
                  sltu         a1, t1, tp
                  mulhu        s2, a0, a3
                  sub          t2, t1, a3
                  andi         a7, a5, -1064
                  ori          s1, gp, 1293
                  sltiu        a2, s10, 2028
                  andi         s9, a5, -116
                  remu         s6, s3, zero
                  srl          a2, a0, s0
                  srli         s5, t0, 13
                  srli         t2, s0, 21
                  rem          t5, t1, tp
                  addi         s8, t2, -260
                  mulh         a5, s11, a6
                  xor          zero, s11, a3
                  slti         t0, gp, -1787
                  srai         zero, t0, 0
                  slli         a3, s9, 2
                  sub          s8, s3, s0
                  and          t0, s7, s0
                  mulhu        s2, tp, tp
                  remu         ra, t5, a3
                  addi         s6, tp, 1892
                  slli         s2, a7, 17
                  nop
                  mulh         t2, s11, s11
                  srli         zero, t0, 19
                  or           s4, sp, s2
                  xori         tp, a5, 1687
                  mul          s2, s4, gp
                  sltiu        s1, gp, -1266
                  divu         a7, t2, a6
                  remu         a5, a6, t2
                  ori          t5, t1, -362
                  add          s9, s10, s1
                  andi         s1, a5, 605
                  sra          gp, tp, a5
                  slt          a7, t0, s4
                  add          t0, s1, s7
                  mulhu        s0, sp, s8
                  sltu         a2, s8, t4
                  addi         t0, zero, -1698
                  auipc        t0, 236057
                  srai         t4, sp, 12
                  slt          s9, t0, a0
                  sll          a2, t4, s2
                  sltiu        t0, t2, 1741
                  auipc        a1, 951531
                  sltiu        t0, a1, -493
                  divu         t3, s1, s8
                  remu         t4, a7, s11
                  mulhsu       t5, s6, a0
                  auipc        a2, 970843
                  mulhu        t2, t5, t3
                  or           sp, t0, s9
                  srl          s9, t5, s2
                  or           a1, a7, s6
                  srl          tp, s0, s11
                  mulhsu       a2, s9, t6
                  remu         t0, sp, s0
                  auipc        a1, 992731
                  slt          s7, a6, s2
                  mulhu        a1, a2, ra
                  slli         t4, a4, 4
                  mulhu        s6, t5, a7
                  srai         a7, ra, 27
                  addi         a5, s8, 1493
                  xori         sp, sp, -702
                  div          a7, a1, a2
                  lui          a1, 588907
                  div          t2, s5, t5
                  sltu         tp, t6, t2
                  and          s0, s11, sp
                  sub          t4, t1, a2
                  rem          tp, s4, a2
                  sra          s2, t0, a0
                  div          s5, a0, t0
                  sltiu        t6, a3, 347
                  add          t4, gp, s4
                  add          s2, s1, s9
                  srli         t0, ra, 31
                  mulhu        t3, s8, t3
                  divu         s9, a1, tp
                  sll          s8, s2, a4
                  srai         t1, s6, 22
                  nop
                  nop
                  xor          tp, a6, t6
                  srai         a2, a4, 31
                  andi         s8, ra, -1584
                  and          s7, a7, s6
                  addi         s10, a0, 877
                  nop
                  srli         zero, a2, 0
                  sra          a5, a4, s6
                  remu         s1, s3, t0
                  slli         t0, s5, 13
                  xor          s6, s8, s11
                  srai         s2, s3, 26
                  sub          a3, t4, s8
                  xor          zero, s5, a5
                  xori         a1, s9, -36
                  mulhu        s9, zero, a2
                  div          t3, t4, a0
                  auipc        s2, 618917
                  srl          a4, gp, ra
                  slt          a5, a1, t1
                  sltu         s7, t3, a4
                  divu         a5, a0, s3
                  sra          gp, a4, s5
                  remu         t0, t2, s4
                  sltiu        s9, t4, 497
                  ori          t5, s11, -1482
                  remu         t5, t2, tp
                  mulh         s7, s0, t6
                  sra          sp, t3, s1
                  mul          s0, a2, s7
                  lui          a1, 932372
                  slt          t4, gp, s1
                  sll          zero, a3, t1
                  xor          s2, zero, s3
                  srai         s2, sp, 11
                  remu         s0, s6, t6
                  mulhu        s1, s11, t4
                  lui          s10, 638231
                  lui          ra, 249279
                  sltu         a5, s9, s4
                  lui          a7, 693235
                  xor          s4, a3, ra
                  or           t3, s7, t5
                  sltu         t5, t1, s10
                  lui          s10, 945196
                  sub          t5, t1, t3
                  divu         a4, a6, ra
                  ori          a0, a7, -1821
                  rem          t0, s2, a7
                  mulhsu       t5, a5, a6
                  slli         tp, s5, 0
                  slti         a1, t5, 1535
                  rem          t1, a1, a2
                  nop
                  sltu         t3, t4, s10
                  andi         a1, s10, 210
                  sra          t3, t0, s4
                  nop
                  xor          tp, t1, t1
                  and          ra, a2, s11
                  div          s7, a4, s11
                  add          gp, s11, t2
                  slt          s8, s10, tp
                  lui          a7, 977810
                  sra          t2, t4, s0
                  sub          s8, a7, a1
                  mulh         a3, s3, t2
                  srl          a5, zero, a4
                  auipc        t0, 551706
                  sltu         t5, s4, t6
                  div          a7, a6, s6
                  sltu         t0, a3, t4
                  andi         s2, tp, 601
                  xori         s9, s4, -1927
                  sra          a0, a5, t5
                  mulhu        sp, gp, a0
                  sra          a1, sp, ra
                  auipc        s8, 887150
                  lui          s8, 883774
                  mulh         a0, s5, tp
                  sub          s5, s11, t1
                  mulhsu       t6, a5, t2
                  xor          a2, s8, sp
                  slti         a3, t3, 1070
                  sra          a7, sp, sp
                  mulh         s10, t3, a1
                  slli         ra, zero, 9
                  mulhu        s7, a6, t5
                  div          t1, s4, t4
                  or           s6, a4, s1
                  divu         t5, sp, a6
                  slti         t5, sp, -1953
                  xori         s0, a5, -1448
                  sra          ra, a7, t6
                  and          a5, zero, a0
                  mul          s9, a0, s7
                  andi         t3, a1, 560
                  and          a3, t2, s10
                  rem          t1, s7, t2
                  div          s7, s4, s6
                  mul          s2, a4, a1
                  andi         a4, a0, -1534
                  and          a7, t2, s2
                  mul          s8, s4, a6
                  div          sp, a4, t5
                  andi         a2, gp, 415
                  xor          t4, a2, s10
                  xori         tp, a6, 299
                  andi         ra, a0, 611
                  sltiu        ra, s6, -1666
                  srl          t5, a3, s9
                  mulhsu       a4, a5, a7
                  remu         t4, t5, a5
                  slli         tp, a0, 12
                  rem          sp, s2, s9
                  addi         t5, gp, 1415
                  slti         t0, s8, -1179
                  sll          s8, t6, s2
                  xori         t2, a3, -1187
                  srli         s9, s11, 0
                  xori         s8, s2, -211
                  sltu         s2, s6, s5
                  xori         t0, s1, 21
                  and          a2, a7, t4
                  remu         ra, s2, s1
                  sltu         sp, a1, s3
                  lui          s6, 70721
                  mulhsu       s5, a7, t3
                  mulh         a7, s10, t6
                  sll          t5, s4, s0
                  ori          s5, s6, -124
                  slti         t2, a1, 111
                  slt          s4, a2, a0
                  ori          a4, s11, -175
                  divu         t6, s4, s3
                  rem          s9, t1, s11
                  auipc        s10, 91890
                  mul          s6, t5, a7
                  mulh         tp, s9, t5
                  xor          gp, a5, ra
                  slt          a2, s8, a0
                  add          s7, t5, t1
                  srai         t4, a1, 4
                  auipc        a7, 768241
                  add          t0, t1, tp
                  mulhu        t4, a5, t3
                  srai         t0, s2, 16
                  add          t6, a1, a6
                  slt          a0, s1, s0
                  andi         s9, a6, 1867
                  slli         s8, ra, 7
                  mul          s6, zero, s9
                  rem          s7, t0, t0
                  srai         tp, s7, 27
                  divu         s8, s1, s7
                  div          s2, tp, s1
                  slt          gp, a1, gp
                  sra          t2, a7, t4
                  remu         s6, gp, zero
                  or           s0, a2, s3
                  xori         t3, t4, 663
                  ori          t5, a0, -1286
                  add          a1, zero, tp
                  sltu         a3, s4, t2
                  and          a0, gp, t2
                  sltu         s8, s5, s11
                  sltiu        t4, t6, 1625
                  srli         a5, s5, 25
                  ori          t1, a6, -1749
                  srl          t0, s11, sp
                  sltiu        a1, s5, 781
                  mul          a0, a4, s1
                  nop
                  slti         s7, zero, -1660
                  slti         a1, s8, -59
                  xor          s10, t0, a6
                  slti         t1, t2, -38
                  srl          s2, a0, s4
                  addi         t3, s11, -1007
                  slli         a0, t3, 20
                  xori         s9, s10, -1543
                  ori          s6, s6, 1191
                  xor          s1, a4, a1
                  sltiu        s7, sp, 1891
                  remu         a7, a7, s2
                  div          s9, t3, gp
                  andi         s8, t3, 1303
                  slli         a4, t4, 22
                  andi         a5, t1, -521
                  remu         s6, s4, a7
                  or           t4, t3, s10
                  divu         t4, gp, t6
                  rem          t5, tp, s5
                  slt          zero, t2, a1
                  mul          a2, s9, a7
                  rem          s1, a3, s8
                  lui          a1, 91214
                  rem          a0, s2, a0
                  xori         s8, a6, 2039
                  addi         a7, t6, -1639
                  sra          a7, a1, t3
                  or           a5, t3, t0
                  and          zero, a4, s5
                  xori         a7, t2, 1115
                  srl          s0, s2, ra
                  mulhsu       t6, s10, s4
                  divu         a2, a0, a2
                  andi         a0, s6, 1078
                  remu         zero, a5, a1
                  and          s0, s7, s6
                  remu         s2, t6, tp
                  sub          gp, a2, a3
                  mul          s6, s7, a2
                  nop
                  sub          a4, a4, tp
                  slti         gp, s6, 507
                  nop
                  slli         s2, s7, 22
                  div          s0, a3, t1
                  andi         s0, s6, 438
                  xori         s10, a6, 830
                  or           s10, a3, a2
                  divu         s0, s11, s1
                  mul          t4, sp, ra
                  auipc        s9, 300307
                  slti         a0, a1, 418
                  mulhsu       zero, a7, t6
                  mulh         tp, s5, t1
                  sll          t0, a5, s6
                  andi         a3, t5, 2026
                  add          t0, a0, gp
                  slt          s2, a3, t2
                  sll          s9, a6, a0
                  mulh         a3, a0, s2
                  or           t1, s8, s6
                  sltiu        t4, zero, -1891
                  sltu         s2, a2, a5
                  mulhu        tp, t3, a2
                  mulh         t1, a3, gp
                  mul          gp, s10, s2
                  or           s10, a7, a7
                  add          a3, t5, t6
                  srli         a0, a1, 31
                  srai         sp, t2, 2
                  mulhu        a0, s8, a5
                  srai         s7, s6, 26
                  or           t6, s6, gp
                  xor          t4, ra, t1
                  ori          ra, tp, -772
                  mulh         s8, s7, a7
                  add          a2, t1, a6
                  mulhu        a7, a4, zero
                  sltiu        ra, a3, -1204
                  div          ra, s9, a2
                  srai         a1, t5, 7
                  xori         a3, a6, 202
                  nop
                  addi         t0, s6, 1415
                  addi         s6, sp, -1530
                  and          t0, a6, s9
                  andi         a3, s4, -1726
                  mul          s7, s7, ra
                  sltu         gp, s8, t2
                  and          s1, s7, s8
                  nop
                  addi         a0, a2, 1836
                  nop
                  slti         s5, a1, -471
                  srai         s2, a6, 20
                  slti         s8, s6, 1767
                  or           s8, s1, s7
                  rem          t4, ra, s2
                  auipc        gp, 126834
                  slti         a3, s6, 965
                  or           s9, zero, a1
                  slti         tp, ra, 1062
                  mul          t1, t0, t3
                  srai         zero, a7, 17
                  slti         s8, a2, -1779
                  lui          t3, 76563
                  slti         sp, t6, -1910
                  sltiu        tp, s6, 999
                  lui          s1, 241967
                  div          s9, a7, s5
                  auipc        t1, 903246
                  auipc        sp, 717146
                  mulh         zero, s2, t6
                  addi         s9, a7, 1531
                  divu         s7, a2, ra
                  remu         t4, s8, t2
                  srl          t6, tp, a3
                  lui          t0, 14130
                  auipc        a7, 346937
                  remu         a7, a7, a1
                  div          s2, t5, t1
                  and          ra, tp, t6
                  slli         gp, a6, 1
                  and          t6, ra, s1
                  sltiu        tp, t4, 659
                  xori         t2, s1, -1693
                  sra          sp, gp, zero
                  slt          t5, s7, s7
                  addi         s7, a1, 1437
                  or           s8, a1, s0
                  andi         s2, a6, -1129
                  xori         a3, s6, 67
                  remu         t0, s1, a7
                  sra          s4, a4, t4
                  divu         t2, s3, sp
                  ori          s4, s2, -1006
                  slli         t4, a3, 8
                  slti         s2, sp, -1895
                  add          s5, s2, s8
                  and          s0, t5, t6
                  mul          sp, a5, t0
                  add          a0, s8, t1
                  sltu         tp, s6, t2
                  ori          a2, a2, -1711
                  srl          zero, a0, s8
                  ori          t6, a1, -2042
                  lui          s0, 642282
                  lui          gp, 1032525
                  xori         s8, sp, 1245
                  xori         s0, s1, 894
                  sltiu        s0, a6, 2041
                  div          s2, t1, s2
                  mulhu        s5, t4, s11
                  slt          a3, a3, s0
                  mulh         s10, gp, tp
                  slti         s4, s7, 1675
                  xor          a1, s2, a5
                  andi         s7, a5, -1312
                  xori         a3, s2, -416
                  mulhu        ra, s7, t3
                  div          sp, a0, t4
                  srl          t0, a3, t6
                  and          t1, a0, t5
                  rem          a7, s1, ra
                  xori         s6, s0, 873
                  mul          a4, t2, t3
                  div          a5, s11, gp
                  lui          t6, 367902
                  add          a1, a0, sp
                  div          a5, s3, s8
                  slti         ra, t4, 852
                  or           a3, t1, t5
                  slli         s0, a0, 19
                  andi         tp, t6, -785
                  sltiu        s8, a3, 415
                  sub          a3, zero, s11
                  xori         s8, a3, 770
                  sra          a2, s2, s4
                  mulhu        s5, gp, s4
                  sltu         s9, s0, tp
                  srai         ra, a2, 4
                  add          t6, a3, s10
                  srli         t5, s5, 28
                  sll          s2, a1, zero
                  slli         zero, s3, 6
                  addi         a5, t3, 1111
                  sub          a1, tp, a7
                  sub          s0, a4, s1
                  addi         s2, ra, -1495
                  sltiu        s9, a3, 1780
                  mul          s4, s3, a1
                  sltu         t2, a5, zero
                  div          t3, s3, s3
                  auipc        a1, 189610
                  xor          a3, a3, a6
                  auipc        s10, 620719
                  mulhu        t0, sp, t3
                  or           tp, s5, a4
                  slti         s9, a7, -1272
                  slti         s4, s8, 1272
                  mulhsu       a3, s2, a4
                  srl          s9, s10, ra
                  rem          s10, s8, zero
                  xori         gp, a1, -588
                  slt          sp, ra, t1
                  srai         t2, t1, 21
                  mulhsu       sp, tp, s5
                  sltiu        s1, tp, -1295
                  slti         ra, zero, -509
                  sub          t5, sp, t1
                  mul          t6, s10, a7
                  remu         ra, s10, a6
                  or           t5, s6, s3
                  srli         a2, a1, 12
                  slt          s6, ra, a3
                  add          s1, s2, t1
                  sltiu        tp, s9, 993
                  slli         s10, a6, 20
                  ori          t6, a5, -1876
                  mulhsu       a7, gp, a3
                  divu         s10, a3, zero
                  nop
                  andi         tp, a0, 578
                  sll          zero, a0, sp
                  sub          s7, a5, t0
                  mulh         s10, t4, s1
                  xor          a4, a2, s11
                  slti         s2, gp, -976
                  sll          gp, s10, s4
                  nop
                  srl          t4, s4, t0
                  sltu         t5, t0, s6
                  sltu         s0, s2, a7
                  xori         s0, s4, -1151
                  slti         a1, t2, 1318
                  mulhu        gp, s3, a1
                  srl          t3, s3, ra
                  sltiu        t0, tp, 921
                  divu         s6, tp, t0
                  xor          ra, t6, t2
                  divu         t4, a0, a0
                  remu         gp, a1, sp
                  xori         zero, s2, -271
                  remu         s10, s6, s9
                  and          a1, t4, t0
                  divu         s0, a5, s8
                  slli         s8, s9, 6
                  sra          a3, a6, a5
                  xor          t1, s11, sp
                  mulhsu       a7, t4, t5
                  and          s10, s2, a5
                  xori         s9, s7, -854
                  and          a4, a1, s0
                  xori         sp, a4, -1536
                  ori          s6, s3, -448
                  lui          zero, 1010414
                  lui          tp, 491231
                  xori         s6, t1, 55
                  ori          t3, s2, 1200
                  remu         a7, s9, a7
                  sltiu        s7, zero, 789
                  sll          a3, a4, t6
                  srai         t6, t4, 19
                  ori          a5, s5, -1698
                  sltiu        gp, a0, -1495
                  addi         s8, s9, 1043
                  mul          s1, s10, t4
                  rem          a2, a4, s11
                  mul          ra, s9, zero
                  lui          s7, 46389
                  andi         a7, s4, 948
                  xori         gp, s2, 1262
                  sltiu        s10, t5, 13
                  slli         s8, s7, 17
                  slti         s5, tp, -1875
                  sra          a1, t4, s1
                  divu         s7, gp, t0
                  divu         s5, s8, t0
                  xori         a1, s1, 999
                  xori         t1, a4, -1142
                  ori          a0, a0, -1952
                  sll          s2, t2, s3
                  auipc        t0, 939929
                  remu         t3, a0, s5
                  srli         gp, gp, 10
                  ori          s9, s5, 1298
                  xor          s2, zero, zero
                  srai         a1, s2, 24
                  mulhu        t6, t4, a2
                  mul          s7, a1, a0
                  addi         a7, s6, 1371
                  addi         t3, s2, 846
                  ori          a2, a5, -608
                  or           zero, s5, s10
                  add          zero, s1, tp
                  add          s0, sp, s10
                  srai         s1, s3, 25
                  lui          s8, 573235
                  sra          s7, s6, s0
                  mulhu        s5, zero, s0
                  div          s2, zero, t2
                  sub          t3, a3, t4
                  slt          s4, t1, gp
                  sltiu        a4, s11, -1134
                  srai         a0, t1, 14
                  slli         a4, s7, 9
                  mul          t0, t2, s9
                  sra          t3, t6, a0
                  andi         t1, a5, -535
                  mulhsu       ra, s0, t0
                  mul          zero, t1, a7
                  xor          ra, t5, t4
                  remu         a3, s6, t4
                  mulh         gp, gp, a6
                  slti         s6, a3, 1564
                  addi         s2, s3, 1443
                  lui          sp, 696708
                  ori          a3, t4, -451
                  slli         a7, t6, 27
                  sltu         t5, tp, a1
                  sltiu        zero, t1, -1454
                  or           t1, a5, s8
                  slli         t1, a1, 3
                  sub          t3, a6, s11
                  or           t6, t2, s2
                  srl          t0, s7, s0
                  xori         t6, s0, -399
                  sltu         t6, zero, s1
                  sltiu        s2, s11, 1264
                  andi         s2, t1, -193
                  mulh         s0, s4, a0
                  slli         a1, s10, 17
                  sra          tp, s9, s10
                  slt          a2, a5, s4
                  or           t0, s11, s5
                  auipc        s1, 760257
                  divu         s4, a4, ra
                  and          tp, s7, t5
                  mul          t2, a1, ra
                  auipc        a2, 812541
                  rem          s4, t6, t0
                  xori         a0, t4, 1784
                  xor          t6, s4, tp
                  nop
                  sll          t0, zero, s11
                  sra          s2, t2, s11
                  slti         t2, s0, -1876
                  andi         t5, a4, 621
                  sra          sp, a1, a0
                  addi         s6, s5, 1816
                  slli         t1, a6, 20
                  remu         t5, ra, tp
                  sll          s0, s9, sp
                  rem          a7, s11, a3
                  auipc        s4, 70579
                  srai         gp, s6, 6
                  or           s10, s1, a5
                  divu         s1, t0, a0
                  sltiu        s5, sp, -606
                  slti         s8, t2, 269
                  mulhsu       a1, t0, a4
                  mul          s5, s2, s7
                  xor          a3, a6, a5
                  sll          sp, t4, a6
                  sltiu        s6, s6, 477
                  sll          a1, t4, s8
                  mulh         t1, tp, a3
                  sltiu        s1, tp, 1823
                  sltu         t3, sp, s3
                  add          gp, t2, ra
                  and          t1, s10, s10
                  xor          t4, a0, a4
                  or           s1, s7, zero
                  add          s7, s6, a3
                  sub          t4, t3, sp
                  mulhsu       t5, a2, a0
                  addi         a7, s4, 1541
                  slli         t6, a2, 13
                  andi         s1, s2, -1211
                  mul          sp, sp, a5
                  xor          a1, zero, a6
                  mulh         a1, a6, t4
                  sltiu        s10, t3, 1148
                  sub          a0, s6, a1
                  sll          s7, s0, a0
                  sra          t6, t4, s1
                  srli         t6, t1, 2
                  div          s9, t1, a6
                  sltiu        a1, t3, -559
                  div          tp, zero, tp
                  sltiu        s7, a1, 619
                  lui          t5, 422935
                  xori         a7, t2, 525
                  ori          s9, a0, -911
                  srli         t1, a0, 13
                  srai         s0, ra, 27
                  addi         t4, sp, -1761
                  lui          t4, 35107
                  div          ra, s6, t3
                  xori         s1, a5, -2006
                  srli         t6, s11, 17
                  or           gp, gp, s1
                  mulhsu       s7, s10, t4
                  sltiu        a4, s10, 590
                  nop
                  mulhsu       a1, a7, t6
                  xori         tp, s10, 649
                  slt          t5, s0, s0
                  srli         t6, s8, 17
                  or           t2, t1, a5
                  lui          t4, 839565
                  slti         a1, s10, 697
                  andi         t3, a3, -193
                  mulhu        t0, gp, a6
                  mulh         a4, a0, s10
                  or           a0, gp, s7
                  sltu         s8, s1, ra
                  mulh         zero, a6, a4
                  sub          ra, t0, s3
                  mul          a2, s7, s4
                  div          ra, ra, a5
                  auipc        s8, 79910
                  mulhu        s9, s8, a5
                  sll          a2, a7, t6
                  slti         a4, s4, -1182
                  nop
                  mulh         s1, t0, a5
                  nop
                  ori          a5, t2, 608
                  slli         a7, s4, 6
                  addi         s8, a1, 640
                  ori          s2, s7, -141
                  andi         s4, a4, -1653
                  add          s9, a7, t0
                  and          s1, a0, a5
                  mulhsu       s8, s6, t1
                  or           s2, t5, t2
                  sll          a3, t4, t4
                  mulhu        ra, s7, s0
                  remu         t6, t0, t1
                  slt          t5, a1, tp
                  rem          t5, t1, s7
                  sub          a0, s3, s10
                  slli         sp, a4, 12
                  ori          a4, s7, -1494
                  lui          t1, 441179
                  or           s6, s5, a7
                  sra          s7, s11, t2
                  sltu         zero, s7, t1
                  sltu         gp, a3, tp
                  and          sp, a1, t6
                  sra          a1, t3, s0
                  ori          s4, a7, 798
                  or           s9, s5, s8
                  ori          s1, a1, 576
                  andi         ra, s7, 1206
                  auipc        s8, 421998
                  sra          s4, t6, a2
                  nop
                  ori          s0, a1, 640
                  div          s2, t0, s3
                  xori         s4, tp, -112
                  mulh         s7, s11, s1
                  ori          s5, t3, 1047
                  srl          s1, s1, a3
                  mulhu        t1, a7, a2
                  add          s9, sp, ra
                  srai         a7, t1, 17
                  slli         s10, a1, 24
                  slt          t5, t3, a3
                  div          t5, s9, s1
                  div          a7, s11, a0
                  lui          s4, 132926
                  mulh         a0, s7, t3
                  mulhu        s10, tp, t2
                  slti         sp, t3, 562
                  auipc        a2, 781758
                  div          t6, t3, a7
                  and          a7, a7, s3
                  lui          gp, 65493
                  rem          s6, s2, s7
                  sltu         s10, tp, s7
                  srli         s4, s2, 1
                  srli         a4, t3, 19
                  xor          s8, a5, sp
                  sra          s4, a5, s11
                  mulhsu       t5, a7, s0
                  sra          t1, s3, tp
                  rem          t1, t3, gp
                  sltu         s10, s3, s3
                  xori         s1, s4, -1689
                  srli         t1, s2, 8
                  sll          s8, a2, ra
                  remu         s2, gp, a5
                  nop
                  slti         a3, a6, 247
                  rem          s4, s6, a2
                  rem          sp, a7, s0
                  slli         t3, t6, 29
                  slli         s2, a2, 0
                  add          a4, gp, s4
                  remu         t6, a0, a2
                  mulhu        s4, gp, t0
                  mulh         s7, tp, t3
                  andi         a3, t3, -632
                  div          t6, s6, ra
                  nop
                  or           a5, a2, t3
                  and          s4, a4, s5
                  slt          zero, t6, a3
                  and          s2, a6, s10
                  srli         s8, a3, 14
                  mulh         s10, s6, t0
                  lui          s9, 281393
                  lui          s7, 9883
                  slt          a3, t4, s5
                  mulhsu       s6, a7, s11
                  sra          s9, t2, s7
                  and          t6, s3, s3
                  divu         s4, s0, a3
                  mulh         s5, a4, a4
                  xor          sp, ra, t1
                  sub          s7, s0, tp
                  divu         a7, t2, s11
                  divu         a7, a4, t6
                  xor          a7, a4, a7
                  slti         s0, t2, 178
                  slti         a0, s11, 738
                  mulhu        s2, s9, a1
                  mul          sp, a5, s3
                  sltiu        s8, s4, 1599
                  nop
                  mulh         sp, s3, t5
                  xori         s2, t4, -1858
                  auipc        a4, 200876
                  lui          s5, 653398
                  sll          a0, s0, a7
                  lui          t5, 59283
                  sltiu        t6, a3, 1048
                  nop
                  sltiu        t0, t2, 1283
                  sra          a0, t6, s11
                  xori         t4, a2, 1010
                  sub          s5, s2, t1
                  add          s8, zero, t0
                  srai         s7, t1, 24
                  mulh         s2, sp, a6
                  div          a3, t2, a1
                  srli         s9, t3, 9
                  mulhsu       sp, s7, t4
                  slti         a0, s6, -1051
                  slli         zero, tp, 26
                  slti         a1, s9, 932
                  ori          t1, a2, -1172
                  andi         s4, a3, -1373
                  ori          s6, s10, -301
                  srai         a7, s11, 25
                  addi         s5, t2, -1190
                  mul          s2, s4, ra
                  slti         zero, a5, -174
                  divu         s7, t1, s4
                  mulh         zero, a6, t0
                  ori          t0, s7, -1645
                  slt          t1, a4, s9
                  rem          a5, a0, s3
                  mulh         a7, s0, s8
                  rem          sp, t2, a0
                  xori         s5, s4, 1785
                  div          t4, t5, s7
                  and          s2, t6, tp
                  sub          ra, s1, zero
                  add          sp, gp, s1
                  or           s9, a1, t3
                  mul          t1, t4, s8
                  and          a7, t1, t5
                  auipc        t6, 840342
                  lui          s1, 864575
                  divu         a5, t1, s0
                  xori         t2, s2, -1503
                  addi         t6, t6, 1296
                  sll          a0, t3, s10
                  divu         t6, t0, s2
                  ori          a5, s1, -158
                  divu         zero, s4, s8
                  andi         tp, a0, 909
                  slli         a4, s6, 12
                  div          gp, s7, a5
                  srai         s1, t0, 22
                  remu         a2, s10, a7
                  xori         tp, a3, -1713
                  sltiu        s7, sp, -336
                  mulh         t6, tp, a4
                  mulhu        s5, t1, a7
                  xori         s9, s3, -693
                  sltu         s0, s11, s10
                  lui          s7, 759780
                  sub          s6, s1, gp
                  sll          t1, s3, s3
                  mulhsu       t0, t4, ra
                  xori         s5, s1, 1076
                  sltu         sp, s1, s5
                  sltu         a5, s4, tp
                  lui          t0, 921468
                  ori          a1, sp, 1759
                  or           t3, s4, a2
                  sll          t3, a2, a7
                  auipc        s0, 940242
                  mul          s2, t0, t1
                  lui          t6, 751151
                  sub          a4, s5, ra
                  div          t5, s4, sp
                  auipc        s2, 269161
                  andi         a1, sp, 370
                  sltiu        a5, a2, -1089
                  divu         sp, s11, sp
                  add          t6, s2, zero
                  divu         s1, s0, t1
                  sltu         gp, t3, s6
                  xori         t0, a2, -508
                  rem          s10, gp, t3
                  add          t0, t5, a1
                  sltu         s5, t5, a7
                  and          t3, a1, a4
                  xor          t4, a0, a5
                  nop
                  slti         s2, a7, -1301
                  srli         s8, a5, 20
                  mulh         s10, a4, s5
                  xori         zero, s10, 852
                  xor          s2, a6, t5
                  or           a4, a0, s2
                  sltu         s9, t1, a7
                  sltiu        a2, a3, -88
                  lui          s8, 943636
                  mul          t0, t2, a1
                  andi         s4, t4, 1479
                  srli         t0, s8, 16
                  sll          s8, s2, s1
                  mulh         a4, s0, s2
                  sltiu        s0, a1, -1038
                  remu         zero, s6, s7
                  rem          s9, a4, t3
                  div          gp, a2, t3
                  sub          s8, a2, t2
                  mul          tp, s4, s7
                  andi         t3, s8, 1668
                  rem          s2, s11, s0
                  auipc        s9, 245532
                  mulhsu       s2, s1, s0
                  srai         t3, s7, 16
                  mul          s9, t5, a5
                  nop
                  slti         a1, tp, -1941
                  nop
                  addi         a1, t4, 156
                  mulhsu       t4, s9, a5
                  addi         a1, gp, -1420
                  auipc        a4, 345743
                  slli         t2, t2, 13
                  xori         s2, a3, -1833
                  srai         s2, s5, 11
                  nop
                  rem          gp, s8, t6
                  mul          s6, s10, a5
                  ori          t6, tp, 192
                  nop
                  slli         t4, t1, 6
                  slt          s2, sp, s4
                  remu         ra, a4, t5
                  xori         s4, t5, -943
                  mulhu        s2, t5, t2
                  nop
                  srli         a0, t3, 9
                  sra          sp, t3, a3
                  sltu         s4, tp, s2
                  lui          a5, 2637
                  sltu         s2, t2, a7
                  sra          s7, t0, s7
                  srl          a3, a1, ra
                  mulh         ra, s7, a0
                  add          a2, s5, s10
                  or           t3, s3, t2
                  addi         a2, s4, -822
                  xor          a4, a0, s2
                  auipc        s7, 1048522
                  div          a1, sp, tp
                  and          a0, s8, s9
                  divu         a0, a0, t6
                  mulhu        t0, a7, t5
                  ori          t6, t1, 974
                  slti         a4, a6, -2003
                  rem          s7, s11, s0
                  mul          gp, a1, t0
                  ori          s2, t0, -1321
                  sltiu        s9, t5, 1800
                  andi         zero, s10, 43
                  lui          t4, 685140
                  auipc        gp, 649153
                  mulhu        a2, a5, t6
                  srli         s2, s8, 28
                  remu         t1, a7, a5
                  add          ra, s7, s3
                  srai         t6, tp, 0
                  and          t4, t1, s7
                  slli         a1, s8, 3
                  mulhsu       s6, s10, a5
                  slti         s10, s0, 255
                  srl          a5, a1, t3
                  or           s5, ra, s1
                  srl          gp, s7, t5
                  mulhsu       gp, s10, t5
                  sltiu        s6, sp, -681
                  divu         a1, tp, t4
                  slti         s9, t6, 289
                  srai         t2, s8, 7
                  mul          zero, s3, s6
                  srai         t3, s10, 5
                  mulhsu       a7, a2, s11
                  remu         t1, t1, sp
                  xori         t3, s4, 857
                  remu         sp, s6, s6
                  andi         t5, a6, 165
                  addi         t3, a4, 43
                  xori         s6, s9, -994
                  slti         a7, s8, -1738
                  mul          s2, s8, s7
                  and          s7, s10, sp
                  xori         s2, a7, -378
                  srli         s2, s10, 22
                  xor          s6, a3, a0
                  remu         s2, s5, t0
                  sltu         gp, s9, s3
                  sltu         s0, ra, a1
                  sltu         t3, t4, a3
                  auipc        a5, 477827
                  slt          a2, a5, s1
                  nop
                  rem          gp, gp, s5
                  srl          t3, t2, s7
                  addi         t2, s9, -515
                  rem          s7, s11, s1
                  mulhu        s5, t0, t3
                  sltu         s6, a0, t3
                  remu         s8, gp, a7
                  mulhu        a7, tp, ra
                  srli         sp, t5, 16
                  sltu         t4, sp, s11
                  srli         a4, s3, 20
                  srai         s5, s6, 16
                  div          a7, a5, s0
                  nop
                  and          zero, s2, sp
                  auipc        a7, 122107
                  mulhsu       s9, a6, s7
                  or           s2, s10, a6
                  sll          s10, ra, t2
                  auipc        zero, 260009
                  sltu         t2, a1, s0
                  mulhsu       t0, a1, s10
                  srli         a7, s7, 10
                  mulhsu       a0, t6, sp
                  sll          a5, s3, s9
                  mul          zero, s0, s6
                  slt          s10, sp, a0
                  mulhsu       t1, s2, t0
                  sltu         ra, gp, gp
                  or           s4, t2, a4
                  remu         s4, a2, s4
                  sra          a1, s2, s0
                  lui          ra, 879550
                  mulh         s0, s1, zero
                  sub          t5, a1, s10
                  div          s1, t6, s1
                  sltu         a0, t2, a5
                  slli         t0, s8, 17
                  rem          s8, a4, s0
                  sltiu        s0, t6, -956
                  sra          a1, ra, s10
                  mul          s10, s2, tp
                  xor          t2, s11, s6
                  xor          gp, s10, s7
                  mulhsu       s10, s11, s7
                  addi         t3, s9, 2010
                  divu         s9, t1, a7
                  auipc        a0, 95597
                  rem          s2, t4, s0
                  andi         a2, s8, 554
                  and          s5, gp, a6
                  rem          t4, s4, s8
                  or           zero, a5, t1
                  srli         s6, t6, 13
                  mulhsu       a5, s1, s6
                  mulh         s9, a0, a0
                  nop
                  sra          t0, zero, a1
                  sub          a7, a7, a2
                  slli         t6, a7, 27
                  slt          s10, a6, s3
                  slt          s8, s7, s0
                  div          a4, t3, s6
                  divu         t1, ra, s0
                  divu         s2, s0, ra
                  auipc        t5, 805835
                  sltu         s2, ra, sp
                  lui          s4, 156649
                  sll          t0, a2, s0
                  sll          s4, a0, s2
                  or           t5, s3, s2
                  sub          a7, s0, t5
                  auipc        s10, 595248
                  sll          t5, s7, a1
                  sltiu        ra, a1, 925
                  andi         a3, t5, -1320
                  sub          s9, s4, tp
                  sll          ra, s5, s1
                  sltu         a2, a6, s5
                  div          a3, s8, s5
                  mulhsu       a3, a6, a1
                  lui          s5, 205184
                  mulhu        gp, a3, t1
                  div          s2, t2, s1
                  srl          t3, s5, s7
                  andi         a7, t3, 1804
                  andi         s5, s1, -34
                  divu         sp, t6, s4
                  sltiu        a2, t5, -1641
                  div          a3, a3, s11
                  sltiu        s7, sp, -971
                  lui          ra, 880658
                  slti         t5, s9, -150
                  mulhu        s7, s2, gp
                  remu         t5, t2, sp
                  slti         gp, s6, -1706
                  div          s10, t6, a5
                  and          zero, a3, a2
                  nop
                  divu         s6, t3, s6
                  auipc        s9, 456353
                  andi         t0, s3, -1815
                  sra          a0, a1, a4
                  slt          t4, t0, a6
                  nop
                  sll          a2, a3, zero
                  slt          s7, sp, a1
                  sub          s1, t0, s11
                  div          s2, s5, s9
                  lui          t0, 49553
                  mulhu        a5, sp, t1
                  mulh         t5, s2, a4
                  slli         a5, ra, 15
                  sll          a0, tp, t4
                  mulhu        s9, s7, s2
                  sltu         a3, a2, a1
                  srli         gp, gp, 28
                  slti         a5, t3, 1865
                  div          s9, s7, a3
                  srl          gp, s11, s3
                  srli         gp, a1, 29
                  mulh         s1, gp, t5
                  mulhsu       a4, gp, a4
                  xor          s5, s2, t4
                  sra          t4, gp, t6
                  and          a7, gp, s1
                  mulh         s8, s3, s9
                  rem          a7, s7, a0
                  rem          gp, a5, a0
                  auipc        s7, 552399
                  remu         t1, s1, a3
                  srl          s6, s6, s3
                  ori          a3, t1, -397
                  mulh         a7, a4, s9
                  remu         t4, a3, t5
                  xori         t2, a4, 1652
                  xor          t3, a5, s2
                  xori         gp, s4, 1713
                  xori         zero, tp, 1654
                  slt          s8, s6, s0
                  sltiu        s2, zero, -1174
                  mulhsu       t5, a6, s3
                  srl          zero, a3, a4
                  sra          s7, a6, t0
                  andi         a1, sp, 1156
                  sra          a7, a4, a1
                  slli         s1, s5, 17
                  add          t1, ra, s1
                  mulh         s9, s2, t4
                  andi         a2, s11, 1864
                  mulhu        s1, s7, a4
                  srai         s9, s3, 29
                  sub          a7, s1, zero
                  srai         a2, tp, 30
                  sra          a3, tp, s5
                  lui          t3, 438741
                  mulhu        s7, a3, t0
                  slti         a0, t5, -1652
                  sltiu        a4, s1, 1569
                  mulhsu       zero, zero, t6
                  sltiu        s1, a5, 1927
                  add          s7, s3, a5
                  mulh         t6, a4, t5
                  xori         s2, s8, 39
                  rem          gp, s2, s1
                  or           a0, t6, s5
                  sll          t4, t1, s7
                  sltu         s10, ra, s2
                  ori          t4, ra, 1399
                  mulhu        gp, s2, a6
                  srai         a3, s7, 10
                  and          s4, s1, a3
                  divu         a4, sp, t4
                  add          a7, s5, t0
                  mul          tp, s4, t0
                  sub          s9, a5, t6
                  slti         t6, t1, -671
                  sltiu        zero, t3, 1940
                  slti         s4, t3, -391
                  nop
                  lui          s1, 988165
                  andi         a5, a2, -1391
                  add          a3, a1, t1
                  srai         s9, t4, 22
                  nop
                  slli         t0, s11, 0
                  mul          s8, a5, s6
                  srli         s6, a6, 27
                  slli         s7, s11, 8
                  sltu         s6, ra, t0
                  div          s9, s4, s9
                  sub          s9, t0, s4
                  sll          a0, s7, s1
                  ori          s7, a7, 1192
                  sub          s2, s1, s3
                  mulhu        s6, s6, t4
                  sltu         s2, a3, s2
                  mulhu        t6, t1, s11
                  div          s6, s0, a2
                  srl          ra, t5, s11
                  remu         t2, t6, t1
                  mulh         s8, a0, a2
                  sub          s9, s11, s7
                  sra          a0, t6, tp
                  sll          s6, t0, s3
                  xori         s7, a5, 1784
                  auipc        s2, 798545
                  rem          s2, s10, s8
                  sll          t3, t5, a0
                  rem          t0, a6, s11
                  xori         s5, s3, 1022
                  sub          gp, s9, s11
                  slt          s8, s6, s8
                  add          a3, s3, a5
                  remu         s9, s6, s3
                  sub          t5, s8, zero
                  slt          t6, t1, s9
                  slli         t3, s11, 26
                  andi         s8, ra, 480
                  remu         s9, a7, s8
                  sll          zero, a5, sp
                  lui          s1, 209076
                  add          s1, a6, a2
                  lui          s1, 958209
                  divu         t4, s10, gp
                  slt          gp, s7, tp
                  mulhsu       t1, a1, t5
                  add          t1, s4, a4
                  rem          s7, s1, a1
                  auipc        s2, 663551
                  xor          gp, t6, t3
                  srli         a4, s7, 9
                  sll          t6, t6, tp
                  andi         a2, s1, -15
                  srli         gp, a5, 24
                  srai         t1, a7, 27
                  add          a1, s9, s3
                  sll          a4, sp, t0
                  sll          gp, a1, zero
                  slti         s5, s6, 1371
                  and          s1, s0, zero
                  sub          s6, s7, tp
                  xor          gp, a5, gp
                  slt          s2, a7, a0
                  lui          s0, 587904
                  and          s2, a3, s8
                  sll          a3, a7, s3
                  slt          t3, s2, t6
                  or           s5, t2, s1
                  lui          t1, 975316
                  slli         t1, t6, 21
                  add          t1, a4, s11
                  divu         a0, a3, s3
                  srai         a7, s9, 24
                  rem          a4, s4, s2
                  addi         tp, s8, 1523
                  lui          gp, 659084
                  sra          a1, s10, a2
                  slti         gp, a1, 1909
                  sra          s2, a4, gp
                  lui          t1, 941767
                  ori          gp, a4, 518
                  xori         s7, s8, 1057
                  lui          t4, 491172
                  andi         s10, a3, -666
                  sltiu        t5, sp, 1947
                  xor          t6, s0, zero
                  divu         s9, t5, t1
                  mulhsu       tp, s2, s3
                  remu         t4, a5, s6
                  slt          a0, s7, a1
                  sll          a4, t0, zero
                  srai         sp, t6, 7
                  srli         s2, a4, 28
                  auipc        a3, 819483
                  lui          gp, 421748
                  mul          t3, a3, ra
                  sltiu        zero, a0, 1979
                  add          a3, zero, t3
                  mulhsu       zero, t6, s3
                  sltu         s8, s9, a1
                  slli         s9, s1, 23
                  add          s1, a2, t1
                  sub          s9, a0, t5
                  remu         a7, t0, a1
                  xori         s8, t5, -1694
                  nop
                  sltu         s2, t5, s6
                  mulhu        t2, t4, t2
                  mulhu        s1, s3, t5
                  lui          s8, 826571
                  xori         ra, s9, -587
                  nop
                  ori          t4, a1, -62
                  srl          t6, t3, tp
                  slti         s7, sp, 1380
                  addi         ra, s0, 394
                  andi         gp, a1, -744
                  mulhu        s6, t2, t5
                  rem          t6, a5, a2
                  sra          sp, a3, a5
                  sltiu        sp, t2, -544
                  sll          t0, ra, t3
                  divu         a5, s11, a5
                  nop
                  mul          tp, a0, a6
                  slti         gp, t5, 1865
                  remu         a5, a0, s10
                  andi         tp, t2, 1759
                  srli         t6, s11, 22
                  and          t1, t1, a6
                  auipc        a7, 1039559
                  mulhsu       s5, s5, t2
                  srl          zero, a1, s11
                  sltiu        s9, t0, 136
                  and          a5, s9, a0
                  or           a1, t6, a4
                  rem          a2, a0, a6
                  srli         a7, t6, 25
                  xor          s0, s9, t6
                  xori         tp, a5, -583
                  andi         gp, t6, -1548
                  and          ra, a1, a6
                  andi         t1, t4, 1248
                  div          t2, sp, a1
                  sll          t5, t0, a4
                  slli         sp, a5, 0
                  sltu         a3, s8, s10
                  rem          s5, t1, s11
                  nop
                  mulh         s6, t3, s7
                  srai         s8, gp, 17
                  sub          s2, s5, s4
                  srai         a0, s0, 3
                  divu         s2, t2, a5
                  remu         s1, t5, s0
                  slt          a3, a2, t6
                  slt          ra, t1, t5
                  sra          s2, sp, sp
                  sra          ra, s4, a2
                  nop
                  slti         s5, s0, 1057
                  add          a1, tp, a6
                  auipc        t4, 643372
                  mulh         a2, a6, t2
                  div          s2, a4, a4
                  sub          s4, gp, t1
                  sltu         sp, zero, t4
                  sltiu        zero, s0, -26
                  sll          ra, s9, s2
                  mulhsu       t5, s1, s10
                  mulhsu       s8, a2, a0
                  mulhsu       ra, s3, a6
                  divu         s10, t3, a2
                  slli         t1, s2, 8
                  xor          s9, ra, gp
                  slt          sp, t5, s10
                  andi         a5, s2, 1960
                  sll          t5, s6, s8
                  srli         gp, s2, 9
                  xori         t0, a2, -812
                  srl          sp, s6, s0
                  slt          t6, t5, a7
                  or           s0, gp, a0
                  add          t6, sp, a1
                  or           s4, s4, a0
                  xori         t0, t3, 930
                  slti         zero, s11, 793
                  rem          s0, s8, a4
                  slti         t5, a4, 352
                  mulhu        tp, ra, a2
                  sll          zero, a7, a2
                  lui          s7, 535420
                  srli         t4, s7, 17
                  add          a0, s11, s4
                  sra          s0, a6, s5
                  lui          s8, 642671
                  rem          a3, s10, a5
                  mul          a3, s2, s1
                  xori         zero, t1, 1552
                  auipc        a3, 527950
                  sltiu        s6, a0, -828
                  srai         a3, a3, 13
                  slti         s8, a2, 4
                  lui          t3, 990191
                  nop
                  divu         s7, s3, s11
                  div          t0, t2, s9
                  andi         t4, t1, -1919
                  divu         t1, a2, s3
                  lui          a2, 171423
                  sub          s8, t6, s2
                  divu         a3, a6, a3
                  or           s10, s4, s9
                  remu         a7, t3, sp
                  mulh         a3, s9, s7
                  andi         t3, s9, -1091
                  mul          t1, ra, t6
                  add          t2, tp, s10
                  sltu         a4, t2, t4
                  xor          s9, a2, s1
                  sub          a4, s8, t5
                  xor          s1, t5, s2
                  auipc        s0, 312128
                  sll          s0, t1, sp
                  lui          a5, 905013
                  sub          t0, s7, t6
                  add          a3, s3, gp
                  srl          s9, s5, s3
                  and          sp, a4, t5
                  srai         a7, s10, 1
                  slti         t6, s11, -1182
                  mul          t4, t4, t3
                  lui          s6, 139696
                  xori         gp, t5, 1906
                  sll          gp, a2, a4
                  sltiu        s8, s10, 1145
                  mul          a3, gp, s5
                  srl          s7, sp, tp
                  add          a0, s5, s6
                  sltu         ra, s11, t0
                  mulhu        s8, s2, t6
                  srl          t4, tp, zero
                  or           t6, sp, s4
                  mulhsu       t2, t1, t5
                  sub          t4, a5, t5
                  mulh         s6, ra, ra
                  xori         s1, a6, -1009
                  xori         sp, a6, -1374
                  rem          s1, s3, a2
                  and          gp, t6, t3
                  slti         gp, a4, 1164
                  mulhsu       s0, gp, a0
                  sra          a1, a6, s6
                  or           zero, s1, a6
                  xor          tp, t6, t4
                  ori          gp, a7, -809
                  sra          t1, t1, ra
                  slt          sp, a4, a1
                  xori         s9, a1, -1592
                  ori          zero, s8, 622
                  lui          s7, 434518
                  rem          s4, s6, a3
                  mulhu        a2, s0, zero
                  add          t3, zero, s8
                  slti         gp, a3, -795
                  xori         t6, s7, -1724
                  mul          s5, tp, zero
                  sll          s6, zero, s1
                  ori          s8, s5, 2027
                  srai         a1, s5, 9
                  ori          s9, a1, -13
                  mulhsu       t3, a2, s3
                  xori         s0, t6, -397
                  xori         s10, t4, -1468
                  sltu         tp, s3, t5
                  ori          s2, t2, -887
                  srli         s6, t1, 2
                  mul          s10, zero, s10
                  srai         a7, s3, 0
                  mulhu        s4, a1, t1
                  or           t0, s8, s5
                  srai         t5, t3, 23
                  rem          t1, t6, s9
                  nop
                  sll          t5, s6, tp
                  srli         a1, s4, 4
                  addi         s0, t5, -1720
                  rem          sp, a5, s11
                  ori          a1, tp, 865
                  ori          s7, t1, -1883
                  sltu         t2, a3, s8
                  div          t2, a7, t0
                  and          s2, sp, s6
                  mulhsu       s6, sp, s4
                  addi         ra, tp, 428
                  sub          t5, a4, tp
                  addi         zero, a0, -834
                  and          s2, s9, ra
                  sll          s0, t3, ra
                  srai         t3, a0, 28
                  sll          s8, a0, s6
                  mulhu        t4, a0, a6
                  xor          t0, ra, gp
                  sltu         t6, s8, sp
                  srli         a7, t1, 11
                  rem          a0, a0, gp
                  sra          t3, ra, s8
                  xori         s6, s6, 407
                  mulhsu       s2, a2, a5
                  slt          a1, t1, s10
                  sll          a0, t2, sp
                  sltu         ra, s7, a5
                  slti         s7, a6, -491
                  nop
                  mul          s1, s9, s9
                  xori         s1, s11, 1350
                  divu         s7, s1, s6
                  ori          a2, s1, 36
                  xor          s8, a7, t4
                  lui          a2, 590244
                  xori         s6, s4, 1454
                  srli         s9, s8, 26
                  mulhu        s0, s6, t4
                  sub          t1, s10, t6
                  auipc        a7, 1009218
                  nop
                  slti         s7, s0, -273
                  srl          zero, s4, a1
                  sub          a7, s11, a0
                  div          ra, a4, s1
                  and          s0, tp, a7
                  div          a3, s6, s8
                  sra          a3, ra, a4
                  lui          s6, 165755
                  srai         t6, a5, 0
                  srai         a7, a0, 9
                  andi         sp, s4, -1304
                  rem          gp, s10, t6
                  addi         a2, t3, -131
                  slti         t3, t2, 122
                  mulhu        t5, s8, s4
                  div          gp, s9, s7
                  sra          t0, t3, a1
                  lui          s5, 857771
                  auipc        s5, 659426
                  mulhu        a2, s10, s9
                  andi         s10, t2, -1901
                  auipc        t0, 568168
                  slti         s5, a7, 1676
                  ori          a4, s1, -952
                  xor          sp, zero, t1
                  andi         s9, t2, 1198
                  sltiu        t1, a5, -315
                  mulhu        s4, s8, s10
                  add          t1, zero, s11
                  slt          t0, s5, t3
                  lui          tp, 863033
                  addi         s0, t5, -1580
                  slt          t2, s0, s6
                  andi         s6, a5, 82
                  mulhu        t4, ra, s1
                  mulhu        s10, a7, s9
                  nop
                  sltiu        t3, s7, 1487
                  mul          tp, s11, s5
                  or           a5, s7, tp
                  mulh         a2, s2, s5
                  srl          a0, s4, t2
                  sltu         t1, s11, s1
                  mulhu        tp, a3, s9
                  slt          a1, a5, a2
                  slt          s7, s0, s10
                  mul          a3, t1, a6
                  sll          gp, t3, a2
                  rem          a1, t6, s10
                  remu         t0, zero, a4
                  sltiu        s4, s2, 2012
                  xor          zero, s3, s11
                  srl          t2, s0, s7
                  div          zero, t0, t5
                  srli         ra, s8, 0
                  xor          s8, sp, a6
                  srai         s7, s4, 1
                  add          s7, gp, a6
                  mul          s5, s6, s4
                  divu         s5, s0, tp
                  srai         s9, a3, 19
                  auipc        a2, 152105
                  and          s4, ra, tp
                  add          tp, s9, t0
                  srli         s7, s0, 25
                  div          t5, s10, a2
                  xor          zero, s1, a4
                  sll          t5, t4, s10
                  divu         a7, sp, a5
                  addi         a0, a2, 1519
                  sltu         a3, a0, t3
                  div          t4, a6, s1
                  auipc        s4, 656526
                  divu         a7, t3, ra
                  sltiu        a2, t3, -756
                  slt          s8, s4, s8
                  nop
                  rem          a0, s5, gp
                  div          s5, s3, t2
                  rem          t3, t4, gp
                  xori         a1, s9, 1561
                  sll          s10, t3, s11
                  mul          s0, t1, gp
                  sltu         a2, a6, gp
                  mul          s0, gp, t1
                  ori          s4, s5, -201
                  sltu         s7, s1, t0
                  add          t5, s7, s0
                  slli         s6, a4, 17
                  slt          s9, t0, s8
                  sll          zero, s7, a0
                  xori         a3, s4, -12
                  sra          s5, s6, zero
                  add          sp, s3, t4
                  mulh         ra, s5, s8
                  slt          s10, t0, a2
                  rem          a1, t0, s4
                  sub          s8, a4, t2
                  ori          tp, t2, 1103
                  srai         a7, a4, 26
                  divu         t6, s8, sp
                  lui          s7, 591321
                  sltiu        a0, a1, 187
                  mulhsu       s5, s6, tp
                  lui          t2, 51433
                  mulhsu       sp, a7, s10
                  and          s8, tp, a0
                  xori         s10, s6, -892
                  rem          a5, t4, s3
                  ori          t3, s3, 1327
                  xor          s2, s7, s9
                  sub          a4, t4, a3
                  div          s5, s2, a1
                  and          s9, sp, s8
                  xor          tp, s6, t5
                  sub          s7, s11, zero
                  mul          t5, s6, s0
                  sub          sp, a1, ra
                  sub          s10, gp, s10
                  mulh         t1, sp, sp
                  add          s7, s3, s4
                  mulh         t2, sp, s2
                  srli         t2, t0, 15
                  addi         tp, ra, 537
                  remu         t3, s6, s8
                  add          a1, s2, tp
                  xor          a3, a2, tp
                  andi         s2, t1, 188
                  srli         ra, a1, 23
                  lui          s1, 9235
                  mul          gp, a5, s4
                  remu         t6, zero, sp
                  remu         a7, sp, t6
                  sltu         t0, a6, s10
                  slli         zero, s4, 22
                  nop
                  div          t1, t1, s1
                  slti         s7, a6, 478
                  srli         t6, a6, 25
                  sub          a5, s9, t5
                  lui          s9, 920027
                  lui          a4, 318515
                  srl          t0, s3, s11
                  or           ra, t5, ra
                  add          t0, t5, t4
                  add          a7, gp, s10
                  ori          s6, a0, 683
                  rem          gp, t4, t3
                  add          t2, t5, a7
                  xor          s4, zero, t3
                  divu         t4, t4, t0
                  srai         s10, t3, 27
                  srai         s1, s0, 10
                  div          s10, s5, t3
                  addi         s6, s8, 956
                  xor          t3, t6, a6
                  sra          t3, zero, t4
                  mulhsu       sp, s0, s10
                  andi         t4, t3, -243
                  xori         t4, zero, 1311
                  rem          t4, sp, a1
                  remu         s10, s8, a5
                  div          tp, s1, sp
                  div          t5, s1, s4
                  sra          s8, sp, t5
                  mul          t4, s10, a4
                  sltiu        s2, s5, -1762
                  ori          s2, s11, 577
                  and          gp, a3, t5
                  remu         a7, s1, s9
                  and          a2, t3, a0
                  remu         a5, zero, gp
                  mulhsu       t4, t4, gp
                  lui          s7, 475434
                  srli         s8, a7, 21
                  or           tp, a7, a4
                  sltu         a4, t6, t3
                  mulhsu       s9, t0, t6
                  add          s10, s10, t0
                  srli         tp, sp, 4
                  nop
                  sltiu        a7, a7, -1867
                  sltiu        t1, s5, -1190
                  or           s8, a0, ra
                  slti         t1, zero, 841
                  xor          t4, s9, t3
                  sltu         t6, a0, t5
                  remu         a7, gp, gp
                  srl          sp, gp, t1
                  sra          t4, s9, a0
                  xori         s8, s5, 1129
                  or           t4, sp, s2
                  divu         a7, t3, a6
                  mulh         s9, a5, s10
                  addi         sp, gp, 743
                  srli         a1, a7, 2
                  or           ra, t6, a7
                  sltu         t1, zero, gp
                  sltu         s2, ra, t3
                  xor          t0, t2, a0
                  srl          s1, s7, s6
                  mulhu        t3, s5, s2
                  remu         a1, a4, a4
                  lui          zero, 282066
                  nop
                  and          s1, s11, t3
                  srai         t1, a3, 11
                  addi         a2, s6, 2038
                  mulhu        gp, t4, zero
                  rem          s6, t0, ra
                  sub          a5, s10, s3
                  nop
                  slli         a4, tp, 2
                  addi         s5, a6, 446
                  mulhsu       a4, s10, zero
                  slli         s10, s5, 14
                  ori          s8, a1, -1951
                  divu         a3, s1, s5
                  auipc        t3, 64144
                  lui          s10, 388842
                  rem          a0, zero, s6
                  slti         a4, s7, 1986
                  srai         s4, t0, 29
                  mulhu        a3, a2, t6
                  srai         a1, tp, 4
                  slti         s8, a0, -293
                  nop
                  or           t4, gp, a7
                  add          t3, t0, a6
                  xor          s4, a1, t2
                  mul          s6, s5, s5
                  mulhsu       ra, zero, a4
                  and          t5, t4, a2
                  sll          s2, zero, tp
                  slt          s10, a2, s6
                  ori          s1, a4, -326
                  div          s7, s5, s3
                  nop
                  addi         s2, s4, -463
                  mul          s2, s2, s8
                  andi         a7, s7, -1652
                  add          a4, a0, sp
                  srli         s2, zero, 25
                  andi         gp, a1, 2047
                  and          t5, s2, s6
                  sltu         s2, s6, s7
                  srli         sp, tp, 31
                  andi         a0, t6, 1891
                  sltu         t6, tp, s0
                  sra          s6, s11, s11
                  sub          a3, t0, s11
                  slti         gp, s8, -196
                  addi         t6, a2, 1562
                  lui          a1, 502272
                  or           s10, t2, t0
                  sub          s7, t2, zero
                  sra          s9, a7, s2
                  mulh         s6, a7, a6
                  srl          a7, ra, t4
                  srli         s1, s6, 31
                  remu         s5, s3, s2
                  mul          gp, ra, a1
                  auipc        s0, 992164
                  divu         a4, t6, t6
                  or           t1, a3, s0
                  slti         t1, a1, 223
                  srl          s4, s2, s2
                  andi         a0, t1, -482
                  addi         s7, a4, -1114
                  auipc        a4, 978235
                  slti         a1, t1, 1361
                  ori          s0, t3, 1478
                  mulh         s4, s4, t3
                  div          t2, a4, a3
                  auipc        a0, 360596
                  and          a4, t5, a1
                  xori         a0, tp, 1896
                  andi         s9, a2, -554
                  addi         s0, a5, 1430
                  and          s7, s6, a4
                  mulhsu       sp, s5, s2
                  xor          zero, t0, a2
                  div          s8, s1, t2
                  srli         a4, t3, 17
                  divu         t0, s10, s6
                  or           zero, a7, s5
                  sll          s0, t2, zero
                  sll          t2, s8, s9
                  sltiu        s5, s9, 2000
                  srli         s6, s9, 14
                  nop
                  mul          t0, a4, a4
                  slt          s8, s0, s1
                  auipc        a2, 631150
                  auipc        t4, 64864
                  mulh         tp, s7, ra
                  nop
                  srl          a4, a7, a4
                  and          t2, s7, s4
                  slt          zero, t6, ra
                  rem          a2, s6, a4
                  sltiu        t6, zero, -1782
                  mul          t0, tp, s1
                  and          s1, t0, s8
                  nop
                  ori          gp, zero, 1250
                  add          tp, s1, s2
                  slti         t0, t2, 179
                  mulhsu       t2, a2, s3
                  slt          tp, s4, gp
                  xori         s7, zero, -938
                  sltiu        a5, a6, 2003
                  mulhsu       zero, t6, t0
                  add          gp, tp, s11
                  sll          s7, a5, t5
                  slli         s10, s1, 8
                  mulhu        s5, s2, ra
                  div          t1, a0, s10
                  sub          a1, a5, t5
                  sltiu        s2, s3, -1737
                  srl          a7, gp, a2
                  slli         t6, tp, 4
                  mulh         a1, a4, a7
                  srai         tp, a7, 0
                  mulhu        gp, s7, sp
                  sll          s9, s5, t5
                  srli         a2, s2, 16
                  add          s8, a1, s6
                  auipc        sp, 6687
                  srli         zero, s11, 15
                  rem          s9, a1, zero
                  sltiu        t2, s2, -64
                  sll          s9, gp, s3
                  srli         a2, t0, 4
                  andi         zero, ra, 1328
                  ori          t0, s2, 1559
                  sll          s10, t0, s2
                  mulhsu       t6, a7, a6
                  srl          s2, a1, t5
                  mulh         t5, s3, t5
                  nop
                  mulhu        s9, a2, s0
                  mul          t2, s0, a4
                  sra          sp, s5, ra
                  xori         a5, s11, 147
                  ori          s4, s8, 2001
                  mulh         t6, a0, t2
                  sra          t3, t2, s3
                  sltiu        a7, s9, -391
                  add          sp, a6, ra
                  add          a5, s3, s0
                  sltu         a0, t1, ra
                  andi         t3, a0, -270
                  slt          s1, t4, s3
                  sub          s8, a0, a1
                  ori          gp, a2, -618
                  andi         s6, a3, 1536
                  divu         gp, a3, ra
                  sltu         zero, s7, t0
                  srai         s6, t0, 11
                  mulhsu       a5, s5, s7
                  remu         s8, s1, s2
                  srai         t0, t4, 7
                  sra          s5, s6, a6
                  sra          s8, s8, t0
                  addi         gp, s2, 1024
                  srli         t5, s6, 14
                  mulhsu       zero, t2, s4
                  lui          zero, 402422
                  sltiu        ra, a1, 625
                  sra          ra, s11, ra
                  andi         t0, t0, 1531
                  remu         t3, a2, s11
                  sltu         a0, a1, tp
                  div          s1, zero, a2
                  remu         a5, zero, t6
                  sll          s9, s3, a2
                  rem          s6, a7, a6
                  sltiu        zero, t3, -1410
                  xor          s7, tp, t3
                  sll          t2, t3, s5
                  sll          s2, gp, s11
                  srli         sp, s0, 27
                  slti         a4, a2, -2016
                  mulh         a0, s6, t1
                  or           t5, a0, s0
                  mulhu        zero, s10, a5
                  mul          t6, a6, zero
                  nop
                  ori          t0, tp, 714
                  auipc        zero, 72675
                  sub          tp, a5, s10
                  ori          t5, s0, 564
                  and          s2, s6, t3
                  sltiu        t0, t2, 1874
                  add          a3, t0, a4
                  andi         t1, s8, -1721
                  mulhu        sp, a1, gp
                  xor          a0, s2, s8
                  div          a7, a1, zero
                  srl          sp, a7, a6
                  mul          s9, a7, a0
                  mulh         t5, s10, t6
                  sub          s7, t3, s5
                  xor          s5, a3, a1
                  div          t1, s6, s2
                  slt          ra, ra, a3
                  srl          s6, t5, s2
                  add          a1, t6, a1
                  rem          s8, t3, t4
                  sltu         s8, s3, t6
                  lui          s1, 445530
                  lui          s4, 400677
                  sll          t5, zero, s0
                  slti         t2, s10, -1078
                  sub          a1, a7, a1
                  slt          t3, s4, a6
                  slli         s0, a1, 2
                  slt          s2, t0, a4
                  xor          a2, ra, ra
                  sra          t1, a1, ra
                  auipc        a2, 944131
                  slti         s6, s3, -764
                  mulhu        a7, t4, s4
                  slti         s9, tp, -1542
                  nop
                  or           t4, s8, a4
                  slti         s9, s10, 410
                  div          a7, t1, gp
                  xori         a3, s7, 1869
                  rem          s8, a2, t1
                  mulhu        s8, a0, a2
                  add          s7, s2, a2
                  xor          a3, sp, s2
                  mulh         sp, a6, tp
                  nop
                  mulh         t2, a1, s4
                  sltu         s7, a7, s10
                  sra          s6, a0, a7
                  srl          s5, a2, s4
                  auipc        s1, 247619
                  sra          t5, t4, sp
                  srl          s7, s1, a3
                  xori         t4, s2, 493
                  slt          s10, a3, s0
                  div          a0, s7, t4
                  mulhsu       s9, ra, s5
                  nop
                  and          s10, t6, a3
                  lui          s10, 525852
                  addi         a0, zero, 477
                  slt          t1, ra, s8
                  sll          gp, t2, a5
                  mulhu        s8, s0, s4
                  divu         s10, a5, sp
                  ori          t6, a2, 824
                  sub          s8, a6, s11
                  slti         s9, gp, 1535
                  divu         sp, a0, a3
                  mul          t5, s11, a6
                  and          sp, t1, s5
                  or           t3, s8, ra
                  xori         a7, t4, 1975
                  auipc        s10, 426965
                  srli         s5, s6, 29
                  sra          s0, a5, zero
                  add          a0, s10, a0
                  mul          s7, s1, t4
                  mul          s7, a1, t5
                  xori         s0, t6, -1028
                  andi         s2, s5, 487
                  and          s5, a6, a1
                  lui          a1, 916542
                  divu         s10, s4, a6
                  slt          s1, s0, s11
                  mulhsu       s1, a7, a7
                  or           tp, gp, ra
                  andi         s6, s11, -284
                  xor          t6, tp, s10
                  sra          a5, gp, a6
                  remu         a3, s3, s4
                  mulhu        s1, a0, s4
                  divu         s1, s11, t2
                  mulhsu       sp, t1, s8
                  sub          s8, s4, s11
                  mulhsu       a2, tp, s7
                  sltu         t5, zero, a6
                  xor          a3, a4, a6
                  sltu         t5, s8, tp
                  or           s0, t4, zero
                  slli         s10, s8, 21
                  mulh         a4, a6, ra
                  ori          t5, t5, 1456
                  srli         s7, ra, 24
                  auipc        t6, 884046
                  or           t3, s9, t2
                  div          tp, zero, s6
                  srai         t5, t6, 25
                  xori         s9, a1, 210
                  mulhu        a3, s11, t4
                  andi         t5, s10, -672
                  remu         t2, t2, s4
                  xor          s4, s3, a6
                  lui          s0, 422508
                  srli         s9, a2, 8
                  slt          t5, a6, s11
                  sltu         a1, s0, s10
                  sltiu        t5, s7, -2000
                  or           a7, s5, ra
                  sra          s9, t3, ra
                  slli         s10, a7, 6
                  lui          t5, 90427
                  and          tp, s5, t6
                  add          s9, t5, s7
                  mulhu        t6, s6, s2
                  mul          a7, a2, a0
                  auipc        zero, 341212
                  xori         t3, a3, 487
                  mul          s1, t6, t2
                  auipc        ra, 740135
                  slli         a5, a4, 2
                  mulhsu       s7, t3, gp
                  slli         s7, s5, 3
                  mul          t5, s3, a4
                  xor          a5, a5, sp
                  xori         s9, s1, -815
                  slli         a3, t3, 6
                  divu         t0, s4, a1
                  sltu         s8, s7, gp
                  sub          ra, s6, tp
                  ori          t4, s10, 1496
                  addi         a1, t0, 1499
                  div          s4, a2, s5
                  mulh         s9, a3, sp
                  nop
                  sltu         a4, s10, ra
                  sltiu        t6, t2, 99
                  sub          t6, a5, s1
                  and          t5, t3, sp
                  srl          s2, t0, a2
                  xor          s10, s10, tp
                  mulh         s4, s5, s7
                  ori          t2, t2, 1608
                  sra          a4, s9, s1
                  andi         a2, a7, 1034
                  mulh         t1, a1, a5
                  add          s10, s5, a4
                  sub          s7, s7, a7
                  addi         s0, a4, -855
                  addi         gp, a5, 932
                  srai         t1, t6, 6
                  mulhsu       tp, tp, s3
                  sll          a4, a4, gp
                  sll          t4, zero, a6
                  mul          ra, t2, a7
                  and          a2, t4, t0
                  mulhsu       s8, s4, s2
                  srai         zero, s4, 23
                  and          zero, s10, ra
                  srai         s9, s2, 2
                  mul          t6, s0, gp
                  lui          sp, 754666
                  sra          s9, a6, t2
                  ori          zero, t0, -1120
                  srl          gp, a3, s11
                  nop
                  sub          s10, a7, s7
                  div          sp, s3, s11
                  mulh         zero, s7, s8
                  divu         ra, t1, s11
                  addi         t3, s6, -267
                  mulhsu       s0, a4, a1
                  srl          s6, s1, s11
                  sra          t5, s4, s2
                  ori          sp, s1, -617
                  sltu         s10, s6, a6
                  ori          zero, a7, -1202
                  slli         a7, ra, 31
                  andi         s6, t3, 1508
                  addi         tp, s2, 1895
                  srai         ra, a7, 21
                  srli         tp, t2, 4
                  slt          t4, a3, gp
                  mulhu        s1, t0, t2
                  add          ra, s1, a1
                  andi         t0, a5, -1910
                  addi         tp, s5, -168
                  lui          s7, 362709
                  andi         s2, s3, -1934
                  ori          a1, t0, 447
                  slli         sp, t1, 6
                  sll          t6, s6, a3
                  slti         s9, s8, -243
                  lui          t1, 564186
                  sub          s9, a1, zero
                  sub          a0, s8, t5
                  sll          s4, s2, tp
                  sra          a2, t2, a2
                  addi         a2, s4, 1094
                  srai         a1, a6, 19
                  xori         s6, a4, -1825
                  mul          a7, a6, t1
                  slli         s8, t5, 3
                  srai         s6, zero, 5
                  sltu         t5, a6, s9
                  auipc        a4, 923949
                  srl          sp, s2, zero
                  and          a0, s7, t1
                  slti         a7, zero, 2040
                  div          t6, s0, s6
                  srai         t0, s2, 4
                  ori          a0, s1, 1672
                  divu         gp, s5, s1
                  nop
                  xor          s4, t4, s4
                  sll          s10, s8, s0
                  sra          s2, sp, a4
                  add          zero, t1, s2
                  mulhu        t6, t6, t6
                  slt          s1, s4, s10
                  sub          s7, s7, s7
                  auipc        a0, 667312
                  slli         tp, gp, 28
                  xori         s4, sp, 1408
                  add          zero, a1, s8
                  sub          a2, t5, t3
                  srli         t0, s1, 6
                  lui          t4, 48895
                  srai         t2, tp, 15
                  sub          s2, a1, a0
                  rem          s9, a1, s7
                  mulhsu       s2, tp, ra
                  srai         s6, s2, 27
                  mulh         a0, a7, a3
                  xor          a2, s6, gp
                  srl          s8, s7, a2
                  sll          s4, s4, a6
                  mulhsu       t4, a5, a3
                  mul          sp, t1, a5
                  srai         a7, t0, 20
                  mulh         tp, s10, s11
                  sltiu        t0, s8, 1892
                  sra          s10, a4, ra
                  ori          a7, a3, -400
                  ori          a4, t2, 761
                  lui          ra, 1014646
                  sll          t6, t5, a2
                  or           tp, a5, s4
                  divu         s10, t1, t3
                  div          t6, t1, tp
                  lui          s4, 81469
                  mulhsu       s9, a1, s5
                  rem          s0, tp, a1
                  addi         a7, s1, 1799
                  xori         t6, t5, -1324
                  sll          s1, s3, a0
                  mulhsu       t4, t1, a1
                  and          a2, s3, gp
                  remu         s10, t5, a0
                  or           s2, s4, s6
                  sltiu        t4, s3, 46
                  slti         t0, s11, 1961
                  mulhu        t0, s11, gp
                  nop
                  divu         t0, s9, s4
                  sll          s9, ra, a4
                  mul          s2, t5, t0
                  and          tp, gp, t1
                  sltu         s8, s3, t4
                  sltiu        a0, a0, -1310
                  auipc        t2, 611696
                  nop
                  mulh         t6, a6, s2
                  add          t5, t4, tp
                  mulhsu       t3, gp, s7
                  ori          s5, a1, -351
                  xori         t5, t3, -1872
                  lui          gp, 959957
                  sub          a4, a0, a7
                  and          sp, s7, tp
                  sltiu        a1, t6, 958
                  srai         sp, t2, 20
                  mulhsu       s8, t5, s5
                  auipc        t5, 401782
                  divu         s2, a4, a4
                  ori          ra, s1, -888
                  sra          t4, s0, s5
                  and          t2, s6, s4
                  auipc        t5, 170736
                  mul          s7, t6, t0
                  srai         s1, zero, 27
                  srai         zero, t6, 5
                  rem          a5, sp, s5
                  mulh         t1, gp, gp
                  srli         t5, s7, 13
                  srl          a7, zero, s4
                  mul          s10, t5, zero
                  andi         sp, a5, -1573
                  or           a5, a0, a6
                  nop
                  andi         t2, a2, 242
                  remu         tp, s1, a1
                  xori         s6, a5, -1342
                  divu         sp, s11, a4
                  and          a1, a1, gp
                  nop
                  slti         t3, zero, 1984
                  ori          sp, t2, 1632
                  slti         tp, t2, 478
                  div          t2, ra, a7
                  divu         tp, s3, s6
                  lui          s2, 1047492
                  slt          s1, s3, sp
                  nop
                  mulh         a5, t1, t3
                  remu         a7, t2, s1
                  slli         s0, s11, 20
                  mul          t3, t3, t4
                  and          s2, t1, t6
                  rem          t3, s3, sp
                  lui          s0, 546159
                  srli         s2, a7, 24
                  xor          s4, s1, s3
                  mulhu        s4, s4, s3
                  nop
                  sub          t4, gp, s2
                  sltu         s0, s0, a3
                  sltiu        tp, t5, 1965
                  nop
                  mulhsu       s2, s1, t0
                  slti         a3, s4, -808
                  and          s10, a6, s3
                  srl          s5, s1, a2
                  slt          s4, sp, s0
                  slli         t5, s1, 17
                  xor          s10, t3, s11
                  mulhu        s9, s1, sp
                  srli         s0, t0, 28
                  slti         tp, a0, -1645
                  srl          a3, a7, s11
                  or           s8, s2, s4
                  srli         t0, s9, 24
                  or           t5, a6, s8
                  remu         sp, a4, s2
                  or           s4, t1, s1
                  slti         s8, t6, -608
                  add          t6, a4, a0
                  srai         t0, s9, 30
                  auipc        s9, 296324
                  mulhsu       t6, s2, t2
                  mulh         s2, s8, s4
                  mul          t3, s3, t4
                  srli         a7, gp, 28
                  sll          a3, t2, s0
                  or           s8, s3, t3
                  srli         s2, t5, 11
                  rem          gp, a2, zero
                  mul          s10, t3, s6
                  slti         s10, a7, 1870
                  mulh         s7, a6, zero
                  divu         a2, t6, s3
                  sub          t3, a5, a1
                  divu         a5, t4, t1
                  mul          s0, a2, zero
                  ori          s6, a6, 731
                  sll          a4, sp, tp
                  slti         zero, s1, 826
                  add          s7, s11, a2
                  sub          s8, gp, t2
                  divu         t3, s10, t6
                  div          s9, t2, a2
                  sltu         a5, t6, s10
                  sra          a0, s0, s3
                  srl          s0, a3, t5
                  andi         ra, tp, -1473
                  divu         s10, s8, s10
                  lui          gp, 91317
                  xori         t6, s3, 1883
                  add          s4, s0, ra
                  slti         s4, ra, -410
                  sub          a3, t0, a1
                  sltu         a5, a0, s0
                  sltu         a4, sp, s0
                  mul          sp, a4, a5
                  addi         s4, s8, -542
                  nop
                  ori          a7, a0, -1195
                  sll          s4, t4, t4
                  and          s9, a2, a2
                  srl          t0, a6, a3
                  lui          t4, 100503
                  nop
                  rem          s10, a0, a2
                  lui          a3, 894184
                  sltiu        t6, s0, -1514
                  sra          tp, a0, a4
                  div          a7, a5, t6
                  rem          t0, a7, s3
                  srl          a0, s7, s5
                  andi         t3, t3, -442
                  srli         t4, a3, 10
                  xori         gp, s0, -1761
                  mul          s9, t6, t4
                  rem          gp, sp, a5
                  slti         s4, a7, 1907
                  slti         a5, gp, -625
                  sltu         t4, s1, s11
                  sra          s6, s5, t2
                  sll          t6, s0, t3
                  slt          s2, s3, s9
                  andi         s8, s0, -213
                  mulhsu       a7, s4, a2
                  srai         s1, t2, 22
                  sra          t2, a2, a1
                  andi         s2, zero, -1451
                  srai         a0, s3, 30
                  sub          s9, tp, t4
                  sltiu        s7, s1, -13
                  rem          tp, ra, zero
                  rem          gp, a5, sp
                  andi         s9, s3, 1115
                  rem          zero, a0, t6
                  srl          zero, a5, t0
                  slli         t1, t4, 10
                  mulhsu       s4, a7, s9
                  slti         t6, ra, -1602
                  slt          a5, a1, ra
                  auipc        zero, 555470
                  mulhsu       s1, s3, ra
                  sltu         zero, gp, s8
                  srli         t3, s8, 29
                  slti         a0, zero, -1574
                  addi         t6, s7, 483
                  sub          t6, a3, s11
                  xori         t3, gp, -706
                  sltu         s5, s7, a7
                  sltiu        tp, a1, -1873
                  slti         a5, t6, -654
                  or           t3, s7, s9
                  mul          gp, t1, s5
                  slli         t5, a7, 24
                  mulhu        s1, s1, s6
                  sltiu        s4, a2, -881
                  srl          s1, s10, s4
                  or           s6, t3, s9
                  mulhsu       s2, s3, s2
                  nop
                  srli         t6, a0, 13
                  rem          t2, s5, s4
                  srl          s9, gp, t2
                  sll          s9, t0, s11
                  slli         tp, s10, 15
                  lui          t0, 855397
                  div          s4, gp, a3
                  remu         s5, t4, sp
                  sub          s4, s9, a2
                  rem          s1, t2, s8
                  slt          s9, gp, a2
                  or           t5, a3, s1
                  ori          t3, tp, -2026
                  sltu         s7, s10, s11
                  sltiu        a2, s9, -514
                  srli         t2, t1, 20
                  xor          a3, s8, t2
                  remu         s1, a5, s0
                  slt          ra, tp, a5
                  sltu         a5, t5, s4
                  mul          s7, a7, a3
                  div          gp, s5, t6
                  nop
                  mul          sp, s3, s2
                  sltiu        s2, s7, 242
                  xor          a1, t4, s5
                  auipc        t2, 936864
                  lui          a7, 388871
                  addi         s2, a6, 524
                  remu         a0, t3, s2
                  sub          s8, t4, zero
                  ori          s1, gp, 116
                  auipc        s2, 38966
                  nop
                  slt          sp, t6, a1
                  mulhsu       s4, tp, s4
                  sll          a1, s9, s8
                  add          t6, s8, s2
                  auipc        t3, 1020982
                  div          a7, t5, s5
                  sra          a4, sp, s10
                  or           t2, s11, a1
                  or           s2, s1, s2
                  rem          s8, t6, t4
                  remu         a4, s11, s9
                  auipc        s5, 994805
                  sra          a4, sp, s11
                  slli         s7, s5, 0
                  remu         s7, s8, a2
                  rem          s8, a5, s4
                  addi         a0, a2, 1377
                  div          sp, sp, a5
                  slti         s4, t6, 1410
                  srl          gp, t2, s0
                  add          a7, s6, s2
                  xori         a7, t0, -1041
                  srai         sp, t5, 9
                  andi         a3, a2, -1634
                  ori          gp, a6, 872
                  srai         a2, s1, 12
                  sll          s4, a0, a0
                  addi         t1, a1, -1980
                  add          a4, t3, zero
                  slli         a1, t5, 2
                  or           a7, a4, s3
                  sltiu        tp, s10, 730
                  mulh         t6, a5, t4
                  mulh         t1, s7, s4
                  sub          tp, a5, t3
                  auipc        t1, 957325
                  rem          s9, s6, a5
                  nop
                  srli         s1, tp, 18
                  nop
                  slti         a1, a3, 1783
                  rem          t6, s3, s6
                  srai         ra, s1, 26
                  sll          a1, s4, t3
                  remu         s10, tp, s7
                  sltu         sp, s7, s8
                  srai         gp, s10, 27
                  xori         a3, s3, 1023
                  mul          t6, s8, s2
                  sra          ra, s5, s3
                  xori         s10, t5, 1153
                  addi         a5, gp, -258
                  sll          s7, t6, t4
                  mul          a7, s7, s4
                  slli         a0, s9, 2
                  div          t6, s9, t1
                  mulhsu       t1, t5, tp
                  slt          t3, t2, t1
                  sltu         a2, t4, s4
                  sra          tp, a0, s0
                  sll          t5, t0, a4
                  andi         t4, a6, 503
                  sll          s0, s5, a1
                  addi         t2, a6, 393
                  sra          a1, a5, a3
                  addi         s1, t4, 1505
                  mulhu        tp, s1, a3
                  mulhsu       s2, t4, a7
                  sra          a5, a5, s7
                  div          a4, a4, s0
                  srl          s0, s9, a1
                  sltu         tp, gp, s4
                  auipc        a7, 769751
                  sltu         a3, s1, t0
                  srli         sp, a1, 13
                  slli         zero, t5, 0
                  add          a5, a5, s2
                  nop
                  ori          s2, s2, 1829
                  srl          a2, t4, a7
                  or           s5, tp, zero
                  sra          ra, a7, s6
                  xori         a1, t5, 1547
                  xori         a0, t4, 1249
                  and          tp, t1, a4
                  srli         s7, s4, 14
                  rem          s1, t1, a2
                  mul          s6, tp, t5
                  and          t5, tp, t6
                  nop
                  sra          zero, s0, s2
                  nop
                  div          s8, t2, a7
                  xori         a5, s9, 445
                  ori          t5, a5, -135
                  rem          sp, tp, s10
                  slli         s7, t0, 29
                  and          zero, s3, a3
                  slli         s7, t5, 26
                  mulhsu       s0, s1, t1
                  sll          s6, s1, t3
                  auipc        sp, 395430
                  mulhsu       s2, s10, s2
                  ori          a3, gp, -1544
                  srli         s2, a4, 8
                  srai         a1, tp, 18
                  rem          s4, a0, a3
                  lui          a3, 71660
                  addi         s10, s0, 314
                  slti         s4, s5, -303
                  rem          sp, t2, zero
                  addi         a5, s7, -834
                  addi         s6, a0, 529
                  nop
                  sra          a0, a5, zero
                  auipc        zero, 381085
                  auipc        t1, 637596
                  sltu         t6, t5, s6
                  mulh         s9, a6, s5
                  slti         a4, s3, 478
                  sll          s2, sp, a6
                  slt          t1, s3, s11
                  slt          t3, a0, zero
                  ori          s4, s7, 1402
                  mulhsu       s2, s8, s2
                  slt          a2, s5, ra
                  mulhu        s9, s8, a1
                  slti         s0, a3, 1892
                  auipc        t4, 852460
                  div          a1, t4, s1
                  rem          t5, s8, s5
                  srai         s7, a1, 26
                  srl          t1, t1, s0
                  mul          zero, s5, gp
                  andi         s7, a5, 212
                  srl          t6, a3, a3
                  srl          gp, s3, s2
                  lui          a7, 126278
                  andi         a4, s9, -1721
                  mulhsu       s1, a6, s5
                  xor          t6, a2, s8
                  mulh         s2, s5, s9
                  slt          a1, t5, t4
                  add          s8, gp, s10
                  srli         t6, s4, 11
                  auipc        s0, 112511
                  srli         s9, gp, 23
                  srli         a4, s0, 2
                  divu         t1, s5, t6
                  add          a5, s11, t5
                  and          t6, t5, s10
                  slt          s10, t5, t0
                  add          a0, gp, t4
                  lui          ra, 431175
                  mulhu        a4, s4, sp
                  div          t3, s1, s3
                  slt          a5, ra, a1
                  sltiu        a7, s8, 1489
                  divu         s10, s3, t3
                  slt          s9, s10, ra
                  mulhsu       s0, s3, t0
                  add          sp, s9, s11
                  remu         t6, a7, a3
                  srl          a7, s3, t3
                  rem          a5, t1, t4
                  and          s5, s4, zero
                  nop
                  sra          t6, s0, a4
                  addi         s6, tp, -1298
                  xor          a7, s0, s4
                  mulh         a5, t6, s3
                  nop
                  sll          s2, t4, s10
                  mul          a1, t4, s0
                  srl          s8, a2, s9
                  nop
                  divu         s8, s3, t4
                  andi         t2, a4, 969
                  divu         t5, a2, gp
                  sub          s6, t4, a2
                  or           sp, s11, s7
                  sltu         s8, s2, a7
                  slti         t2, tp, -1385
                  srli         sp, a1, 10
                  nop
                  slti         a3, sp, 910
                  sra          a2, a5, t4
                  slli         a1, a3, 0
                  srai         s1, a3, 5
                  auipc        t4, 14305
                  sra          t0, t1, s2
                  xori         s9, a2, -50
                  remu         ra, s1, a3
                  rem          s10, a0, a7
                  sltiu        s8, s2, 765
                  andi         s8, s0, 114
                  mulhu        s7, a5, t2
                  sll          t1, s10, t4
                  rem          s0, s1, ra
                  lui          t1, 136765
                  srai         s8, a3, 17
                  sra          a1, s1, a6
                  xori         s4, a7, -1886
                  srai         s10, a5, 15
                  ori          a2, a0, -1797
                  sub          a4, a4, a4
                  slti         s10, t3, 1670
                  mulh         a5, t6, s11
                  or           s7, s11, a0
                  sub          s5, a4, s1
                  mulhu        gp, gp, t1
                  divu         a0, a1, sp
                  nop
                  xori         s0, s4, -446
                  sub          t0, s7, s4
                  slt          s2, ra, t5
                  srl          t0, a2, a0
                  remu         s0, zero, zero
                  srai         tp, s5, 20
                  sltiu        ra, s0, 679
                  srl          gp, t4, sp
                  slt          s9, s1, t3
                  sltiu        a5, s9, 1204
                  or           s7, a2, zero
                  sll          gp, a4, s5
                  mulhsu       s8, s6, a5
                  xori         s9, t5, 1684
                  lui          a5, 634202
                  mul          gp, s9, s3
                  divu         t6, a6, t0
                  add          ra, s0, t4
                  srli         a0, a6, 12
                  srli         s4, a4, 26
                  slt          s6, ra, a4
                  mul          a2, t6, a1
                  mulhsu       s9, sp, a5
                  srl          t0, zero, tp
                  srai         s0, t0, 9
                  sll          s9, s10, ra
                  div          gp, s10, s6
                  slli         t0, ra, 2
                  sll          a4, a3, s9
                  sll          t2, t0, t4
                  add          sp, zero, s6
                  mulhsu       a1, t1, s7
                  sltiu        a0, t3, -1862
                  xor          t1, t2, s5
                  slt          ra, t4, a4
                  auipc        s2, 143299
                  auipc        t0, 63394
                  mulhsu       a4, s2, t0
                  remu         ra, s2, s5
                  mulh         s9, s3, s7
                  auipc        s8, 21395
                  mulhu        sp, zero, t4
                  srli         zero, s11, 27
                  div          t2, s1, sp
                  mulhu        tp, t2, s4
                  ori          a2, s8, 1016
                  slti         s10, zero, -412
                  mulhsu       a4, t2, gp
                  mul          t2, a6, a2
                  srl          s6, s4, sp
                  and          tp, s1, a6
                  mulhu        s7, a3, s1
                  divu         t2, a3, s5
                  rem          s0, s9, ra
                  srai         gp, s3, 6
                  slli         t6, t1, 31
                  and          tp, s8, s8
                  slt          sp, gp, tp
                  div          s0, gp, a3
                  xor          s9, s1, t0
                  remu         s6, tp, s5
                  lui          s9, 257909
                  add          s6, s10, t0
                  or           t3, s8, a4
                  slli         t5, t0, 19
                  mulh         a7, s4, t4
                  ori          s4, t5, 48
                  lui          a0, 233511
                  mulhu        t4, a3, a6
                  div          a1, a2, s5
                  sub          s6, t6, t0
                  mulh         a3, a2, tp
                  xor          a3, s10, s3
                  sltu         zero, s5, a7
                  slt          t6, a2, a3
                  sltu         s6, s7, a7
                  or           s8, s7, a6
                  lui          s7, 57422
                  mul          s5, a6, a7
                  div          s5, s1, s10
                  div          s8, s7, a1
                  mulhsu       s2, s8, a7
                  add          s1, s2, t6
                  remu         a1, t3, s10
                  remu         s2, sp, a5
                  sra          t0, t4, a5
                  srai         t6, s4, 28
                  srl          s9, a0, s0
                  srai         zero, ra, 24
                  andi         a7, a2, 1438
                  lui          s0, 545683
                  srai         gp, t1, 28
                  srl          a7, a6, tp
                  slt          s10, s6, s10
                  mulhu        a5, s0, a5
                  xor          ra, a3, s3
                  sll          s4, ra, t6
                  sub          zero, zero, t1
                  nop
                  mul          a1, zero, t4
                  auipc        s5, 365125
                  mulh         t3, t4, t0
                  and          s2, s1, a1
                  ori          s5, t6, -449
                  mul          a0, a7, a0
                  rem          t2, sp, s11
                  srai         s10, sp, 31
                  and          zero, s11, sp
                  srai         a7, s9, 14
                  sltu         gp, s6, sp
                  divu         a5, s11, gp
                  sltu         s1, a7, s0
                  andi         s6, ra, 740
                  mulh         t6, s6, s3
                  mulhsu       a5, t4, s3
                  divu         s10, ra, s10
                  xor          s4, t5, s8
                  srli         t6, t5, 0
                  nop
                  add          s1, s10, t5
                  divu         a4, s11, sp
                  sra          t1, t1, a3
                  add          a0, s5, a3
                  addi         gp, a1, -286
                  lui          sp, 110695
                  sll          s7, ra, s10
                  srai         t3, s9, 21
                  addi         a1, s2, 1833
                  srli         t0, s8, 27
                  sra          zero, a3, s11
                  mul          t1, t0, t3
                  srai         s5, t1, 16
                  mul          t3, ra, s7
                  add          s2, t6, t1
                  divu         sp, a6, gp
                  sltiu        s1, t6, -2042
                  auipc        a7, 467769
                  slti         s0, tp, -1846
                  or           s7, s0, s5
                  sltiu        t2, a4, -682
                  div          s6, t2, a0
                  sra          t0, s11, a6
                  addi         ra, a7, 220
                  or           a0, a3, ra
                  rem          s4, s9, s6
                  slti         s5, t6, 1597
                  and          sp, t3, s3
                  srl          a4, a3, t3
                  remu         s0, s2, a0
                  srai         tp, s2, 23
                  mulhu        a1, a3, t5
                  divu         s2, t4, s5
                  nop
                  srli         a3, t5, 20
                  mulhsu       tp, a0, s4
                  srai         s6, s0, 29
                  sra          ra, s10, s4
                  slti         t4, s9, 1506
                  lui          s10, 890094
                  sltiu        s6, s1, 1771
                  divu         a7, s6, t6
                  mulhsu       s5, gp, a5
                  xor          s10, a6, a0
                  sub          s6, s11, a4
                  slti         t3, s9, -765
                  sub          a1, s9, t5
                  remu         t0, a7, s1
                  slti         a7, gp, 183
                  xor          t1, s5, t2
                  mulhsu       s8, sp, a1
                  mulhu        t5, sp, s11
                  addi         t0, ra, -932
                  sltiu        a4, t0, 198
                  div          t6, s3, t6
                  xori         s9, t1, 153
                  remu         s9, tp, a1
                  mul          t6, t5, a0
                  mul          a4, a3, t3
                  addi         a1, zero, -495
                  sra          s6, t3, t3
                  sltu         s9, s2, t3
                  sra          s8, t2, tp
                  ori          tp, s9, 102
                  slli         t5, s2, 17
                  and          t6, t3, s2
                  mulh         s5, s1, t1
                  add          a3, s11, a3
                  mulhu        s5, s6, t1
                  andi         s2, a4, -480
                  slt          a7, s0, a1
                  nop
                  and          s2, a4, t0
                  sra          s1, s8, t2
                  mul          t4, tp, s3
                  or           t0, s3, a3
                  srl          t1, t3, t4
                  ori          gp, s1, 1058
                  divu         a0, s11, s2
                  sltiu        s9, t3, -1340
                  mul          a4, t3, a7
                  or           s7, s9, t1
                  sub          t6, s5, s9
                  div          a5, a5, a1
                  mulh         a2, s9, s5
                  mulhu        t6, t2, s3
                  lui          s6, 469203
                  slli         t3, t1, 6
                  ori          gp, t6, 1527
                  sub          s2, t5, ra
                  add          t6, s7, a7
                  srl          t5, gp, a6
                  addi         t0, a1, 1004
                  mulhu        t4, t4, t5
                  lui          a7, 624506
                  slti         a7, gp, 1397
                  xor          a5, t5, a2
                  rem          a3, zero, sp
                  xori         a2, s4, -1016
                  addi         a2, s0, -343
                  sltu         ra, s8, s0
                  sub          s5, s9, s4
                  mulhu        t4, t2, t6
                  auipc        s7, 708551
                  slti         sp, t3, 848
                  srl          s10, sp, a3
                  sltiu        t2, s4, 1314
                  nop
                  addi         t4, a5, 665
                  slti         zero, ra, -1821
                  lui          t2, 191083
                  and          sp, a7, t6
                  divu         sp, sp, s4
                  sub          t1, s6, gp
                  ori          t3, ra, -1106
                  slli         sp, s6, 4
                  auipc        s10, 834588
                  auipc        t3, 523965
                  slti         s10, t3, 330
                  or           zero, a6, a5
                  slti         t2, t3, -633
                  sub          s4, t3, s6
                  xori         s2, s4, -205
                  srl          a3, a3, tp
                  slt          a1, a7, a7
                  srli         t5, a7, 16
                  srli         t5, t4, 0
                  divu         a1, gp, zero
                  auipc        t2, 822501
                  ori          t3, s6, -501
                  sub          a3, t5, t0
                  xor          s10, a0, a3
                  auipc        gp, 412450
                  xor          ra, a6, tp
                  sra          s9, t0, s5
                  divu         gp, ra, zero
                  mul          t5, a1, s9
                  divu         s6, t2, t1
                  remu         sp, t6, s6
                  rem          t1, a3, s6
                  mulh         a0, t3, a0
                  mulhsu       tp, t6, s5
                  addi         s1, ra, 37
                  divu         t1, tp, s8
                  mulhsu       a4, t5, s8
                  andi         s7, tp, -272
                  slt          tp, s7, a4
                  sll          s9, a7, t6
                  sltiu        t0, s8, -1380
                  mulhu        t6, s10, s3
                  ori          tp, s2, 1926
                  xori         t6, t3, -192
                  rem          a0, t5, ra
                  srl          gp, a7, a4
                  auipc        gp, 865225
                  mulhsu       s7, t1, t0
                  divu         t6, s11, t4
                  mulh         sp, t5, s0
                  mulhsu       s9, a5, a1
                  slli         s2, t0, 6
                  andi         s7, s1, -1318
                  add          t0, a1, t2
                  sra          t4, a3, a2
                  sra          zero, s3, s4
                  mulhsu       s0, t5, sp
                  div          a7, t1, t3
                  srl          s6, s7, sp
                  nop
                  mul          s8, t5, ra
                  nop
                  srli         s1, a6, 5
                  sra          s7, t6, ra
                  sra          s10, s0, ra
                  remu         s5, a7, t3
                  slti         s0, t0, -2005
                  sltiu        gp, s9, -661
                  sub          a1, t6, t4
                  xori         gp, sp, -481
                  andi         sp, ra, 2016
                  and          gp, s9, s2
                  slt          s8, s9, a6
                  lui          s9, 12457
                  add          s7, t0, t1
                  nop
                  sltiu        a0, t3, 1663
                  addi         s8, t5, 175
                  rem          s7, a7, a1
                  andi         t6, a0, 7
                  sub          a2, tp, s3
                  remu         s10, t1, s11
                  sub          zero, s7, s3
                  srl          tp, s6, s6
                  and          t5, s6, a7
                  slli         a7, t4, 13
                  lui          s10, 41992
                  ori          s8, t6, 1430
                  sra          ra, s7, ra
                  divu         s1, s3, t6
                  slli         s9, a7, 17
                  ori          t2, t4, 918
                  div          s1, t4, t2
                  sra          t4, t6, tp
                  auipc        t0, 296090
                  sll          a0, a2, s1
                  and          ra, sp, a2
                  divu         s5, t4, s9
                  srai         ra, t6, 12
                  mul          t1, t1, s6
                  mulhsu       sp, t3, t0
                  srai         t6, t4, 29
                  slt          t4, s2, t0
                  lui          t1, 157440
                  add          s7, s1, a7
                  sltiu        s0, a2, -1192
                  or           s6, s0, s8
                  sltiu        s10, a6, 247
                  mulhu        a7, a4, s1
                  sll          t3, s3, s5
                  sltu         a1, s1, s10
                  slt          s8, a1, s2
                  add          ra, gp, t4
                  divu         s2, t5, s3
                  mulhsu       a5, a5, s6
                  mulhu        a2, zero, a1
                  lui          a7, 155108
                  remu         a0, s8, zero
                  ori          t4, s9, 1591
                  rem          s5, t6, s2
                  srl          t4, s2, s7
                  nop
                  slti         zero, t4, 219
                  sltu         s4, a2, a3
                  slli         s2, t3, 6
                  mulhu        a2, s11, s1
                  sll          t5, s10, s8
                  slti         s8, t6, 2015
                  ori          a0, s9, 1260
                  mulhsu       a5, a5, t4
                  sltiu        t0, a6, 399
                  sra          t6, gp, s8
                  add          tp, a7, sp
                  lui          a7, 447080
                  ori          zero, a7, -181
                  sll          t6, t0, t1
                  add          a0, s1, a5
                  rem          s4, s11, t0
                  or           t6, s10, sp
                  mulhsu       a3, gp, a6
                  remu         t5, t4, a3
                  andi         sp, t4, 1008
                  sub          a5, t5, s9
                  mulhu        s1, a6, s3
                  mulhsu       t1, a0, t0
                  lui          a4, 182276
                  rem          a1, ra, a3
                  nop
                  div          t6, t2, s1
                  nop
                  sra          ra, zero, ra
                  sltiu        zero, s4, -830
                  remu         t1, s4, t3
                  srai         a4, a0, 5
                  nop
                  rem          a0, a6, gp
                  rem          a1, a7, zero
                  remu         a7, a3, a2
                  addi         zero, s0, -1601
                  mul          a0, a6, t0
                  sltiu        ra, t3, -1000
                  rem          t6, t0, t6
                  mul          a3, sp, t5
                  sll          a1, t3, s0
                  mul          gp, s2, a4
                  divu         a0, t6, s8
                  nop
                  add          a3, s9, s1
                  div          t1, a2, t1
                  sltiu        s5, t4, 1400
                  nop
                  add          s4, t1, s9
                  lui          t2, 925815
                  sll          s7, s6, zero
                  mulh         t0, s3, t4
                  addi         a3, a7, -614
                  div          s4, t0, sp
                  remu         s6, t1, tp
                  div          s0, s5, s11
                  xori         s5, s10, 597
                  xori         a0, a3, 241
                  divu         tp, t0, a2
                  add          t6, t5, s9
                  xori         t1, a5, -1240
                  lui          t6, 246008
                  auipc        s1, 748093
                  div          t5, a0, a2
                  auipc        t6, 458179
                  and          s2, t2, s4
                  remu         s9, s7, zero
                  srli         a2, s9, 20
                  slli         s5, s9, 21
                  mul          t6, s2, gp
                  addi         a2, t6, 2025
                  divu         a7, sp, a4
                  remu         s8, s1, s0
                  mulhsu       s4, a2, zero
                  srli         a7, t6, 15
                  divu         s2, s8, t4
                  rem          t3, zero, zero
                  slli         a0, gp, 26
                  sltu         a5, a6, t6
                  srl          a0, a7, tp
                  slt          a5, t6, t6
                  ori          s2, gp, -381
                  slt          t6, gp, gp
                  andi         s10, s1, 1385
                  divu         tp, ra, s9
                  auipc        t0, 353054
                  sltiu        a5, t5, 1725
                  srli         a1, sp, 1
                  sltu         t1, s4, t1
                  remu         a4, gp, a1
                  srli         s9, t4, 10
                  srai         s0, t6, 28
                  and          t1, zero, zero
                  xor          ra, s11, a3
                  srai         tp, t3, 5
                  sltu         s0, t2, a3
                  xor          a5, a4, tp
                  andi         a0, s1, -1905
                  mul          s9, s3, a1
                  div          t6, s3, a4
                  nop
                  slli         t6, t3, 28
                  slti         a2, t0, 1225
                  mulh         tp, s8, s8
                  srli         a1, s9, 5
                  sra          t3, s3, s1
                  andi         gp, zero, 727
                  srai         gp, s8, 15
                  rem          s2, s1, a4
                  sll          s2, t6, a2
                  mulhsu       s9, gp, a5
                  srl          t5, a0, a7
                  srli         t2, tp, 22
                  auipc        s7, 451806
                  andi         s2, s1, 600
                  mulhsu       ra, zero, ra
                  srai         t2, s0, 9
                  srli         a1, a6, 11
                  srl          t3, t3, zero
                  and          zero, s2, s9
                  rem          s5, s5, s7
                  mulh         s9, t1, s6
                  or           t3, a1, t3
                  xori         a0, a5, -869
                  add          a3, a2, t4
                  remu         a7, s11, t1
                  addi         gp, s2, -233
                  andi         t5, t1, -471
                  srl          zero, s9, a2
                  slt          a7, s2, a5
                  divu         a7, zero, t3
                  div          a5, t4, s7
                  ori          a4, t0, -618
                  mulh         s0, a7, a2
                  or           s6, a7, a2
                  slt          gp, a7, s4
                  srai         t6, t2, 18
                  mulhsu       tp, t0, s7
                  sll          s0, a3, a7
                  slt          t6, a5, tp
                  sltiu        a1, zero, 715
                  mulhu        s0, a5, s3
                  remu         s7, t5, s2
                  slti         a1, t1, 450
                  mulh         gp, s1, s3
                  div          s0, s7, t2
                  slti         ra, s2, -544
                  mulhsu       a7, a4, s4
                  slti         t5, s8, 1596
                  sub          s10, s2, tp
                  divu         a1, t5, t2
                  xori         a0, a6, -192
                  mulhsu       s9, a5, s7
                  add          t6, s2, a0
                  sra          t5, s4, s6
                  mulhu        t6, t2, s7
                  or           gp, t4, gp
                  mulhsu       zero, s0, a0
                  srai         sp, t6, 16
                  add          zero, a7, a6
                  div          ra, s7, s1
                  xor          a5, s3, a6
                  rem          t2, t3, t6
                  rem          a5, a6, s8
                  rem          t4, s6, a6
                  auipc        a1, 679803
                  mulhu        s7, s10, a5
                  srai         t6, t3, 0
                  nop
                  sub          s9, a1, s9
                  slti         a7, t3, -1883
                  mulhu        t6, a3, t0
                  slli         s10, s8, 1
                  add          s10, sp, t6
                  auipc        a3, 839505
                  mul          s1, a6, t2
                  srl          s5, a7, a7
                  sltiu        s8, a0, 1529
                  nop
                  mulhu        s5, s9, s10
                  divu         s10, a0, t3
                  add          s7, s11, s7
                  mul          gp, a2, a7
                  lui          a0, 17342
                  sra          t1, s7, a1
                  div          s2, t0, s10
                  or           s4, a7, t2
                  addi         s2, tp, -687
                  srai         a1, t3, 11
                  lui          sp, 564284
                  add          a3, t2, zero
                  xor          sp, s9, a7
                  add          a1, gp, s3
                  srli         t0, ra, 18
                  or           ra, sp, a1
                  slli         zero, s9, 20
                  srli         t0, t4, 4
                  or           s0, a6, zero
                  mulhu        a2, s6, gp
                  or           s8, t2, a4
                  srli         s6, s8, 10
                  and          a3, s0, t1
                  srli         t1, s5, 30
                  addi         s10, s3, 168
                  sub          s7, t4, t0
                  sltu         sp, tp, a5
                  remu         a7, zero, s0
                  auipc        t3, 487469
                  sub          t6, a0, sp
                  add          s7, a1, t4
                  auipc        a2, 669051
                  sltiu        a7, s10, -103
                  srai         a4, t4, 11
                  sll          t6, s7, s7
                  slt          a5, t1, t5
                  sra          s9, t2, s6
                  slli         s8, t6, 1
                  mulhsu       t6, t2, sp
                  divu         a7, s2, zero
                  or           gp, a1, a2
                  xor          a0, s6, t3
                  add          t0, tp, s11
                  sub          s8, a3, a6
                  divu         t3, t3, a3
                  sltu         gp, t2, s5
                  add          t2, zero, s2
                  auipc        s8, 547658
                  xor          a2, s2, a4
                  mulhsu       s9, s6, s8
                  mul          s7, a1, t4
                  nop
                  srli         s9, gp, 3
                  sltu         a5, a6, s7
                  lui          t6, 313618
                  slt          t0, s11, a4
                  sltu         s0, a1, s8
                  auipc        t4, 368846
                  auipc        t0, 676205
                  ori          t6, a2, 1239
                  nop
                  sub          s1, s5, gp
                  addi         zero, s10, 944
                  srl          s2, s9, a0
                  and          t1, s7, s6
                  or           s0, s11, a0
                  xori         s0, s6, 993
                  mulhsu       s8, s10, s10
                  addi         t1, s7, -1459
                  sltiu        s8, a4, -1508
                  xori         a5, a7, 1134
                  andi         s9, gp, 597
                  add          t2, s7, s1
                  mul          a3, s8, s2
                  mul          t5, s7, a7
                  slli         s6, t1, 6
                  andi         s7, s5, 1383
                  sra          a1, a1, sp
                  rem          s2, s8, t5
                  ori          t4, s11, 1762
                  xori         s0, a3, -366
                  ori          a1, s0, 1978
                  sra          ra, s7, t2
                  remu         s7, s3, t6
                  andi         a2, a0, -1351
                  andi         s1, s5, -97
                  ori          s2, gp, 1697
                  lui          ra, 169665
                  xori         tp, s2, 1255
                  sltu         s4, s0, s0
                  sub          s5, s10, s2
                  slti         a1, s10, 875
                  addi         ra, s9, 1727
                  andi         a5, s6, 899
                  sltu         a2, s10, t4
                  divu         s0, a3, t3
                  sra          a2, a2, t2
                  rem          tp, s3, s4
                  xor          s1, a1, a3
                  nop
                  sll          t0, t6, a6
                  div          a7, gp, tp
                  ori          s0, a5, -1126
                  or           t0, s1, t1
                  sll          s4, s6, a1
                  mulhu        t5, s4, a4
                  xori         s10, a2, -895
                  and          ra, s8, s11
                  andi         t4, s4, -1855
                  and          a4, a5, a2
                  ori          t5, t1, 1227
                  sltiu        a7, s5, 1339
                  sra          t2, t3, s11
                  srli         a0, a3, 17
                  sll          a1, a2, s2
                  slli         gp, s9, 21
                  andi         s2, zero, -889
                  div          s0, s7, a1
                  and          s5, a1, a0
                  andi         a7, s0, -473
                  divu         a4, a2, zero
                  andi         s1, t1, 967
                  ori          t5, a1, -108
                  srli         a5, t0, 13
                  sltiu        t5, s3, -447
                  srl          a7, s5, t0
                  srl          t5, a1, t3
                  and          a7, s9, a0
                  mulhsu       s9, s0, t6
                  remu         s10, a0, a1
                  sll          s7, s7, gp
                  sll          s4, a7, a0
                  nop
                  lui          t2, 125452
                  nop
                  rem          gp, a1, zero
                  or           ra, t3, s4
                  mulh         sp, t2, tp
                  mulhu        a4, s10, sp
                  andi         s2, a4, -1964
                  mulhsu       sp, zero, ra
                  sltu         s10, t0, gp
                  slti         t5, a1, -837
                  addi         t4, t1, 47
                  mulhsu       s0, s0, s8
                  srl          t6, s2, tp
                  srai         ra, s4, 0
                  srl          a7, tp, s1
                  slli         ra, s3, 24
                  addi         t0, t4, -1229
                  srai         s1, a6, 17
                  xor          a5, t3, s3
                  sll          s9, t0, t0
                  remu         t6, s0, sp
                  addi         zero, t5, 318
                  or           a3, a5, a6
                  andi         s10, s3, 1648
                  mulhsu       t3, a3, s5
                  srl          s4, a5, a1
                  srai         t4, s4, 16
                  sll          s5, a7, s5
                  divu         a0, a3, t0
                  sra          tp, s5, s10
                  srai         a7, s8, 2
                  xori         t1, s9, -1930
                  and          s2, ra, sp
                  mulh         a4, zero, s5
                  lui          a4, 1593
                  lui          a3, 779555
                  div          zero, gp, a1
                  ori          t5, t5, -591
                  add          zero, a0, t6
                  mulh         a3, s1, tp
                  andi         s7, s7, -92
                  srai         t5, a4, 0
                  srli         t3, a3, 27
                  divu         s2, a6, s2
                  sra          t0, s2, t1
                  andi         a7, t3, -898
                  xor          s7, a5, s9
                  sub          s4, s6, a4
                  mulh         t4, s7, a4
                  srai         t0, ra, 30
                  or           a7, sp, s10
                  slli         t3, a2, 10
                  ori          t0, sp, -1362
                  auipc        tp, 984774
                  sra          t5, t4, s1
                  xori         s0, sp, -744
                  xor          ra, t6, a6
                  sltu         a4, s3, t2
                  srl          a3, a3, t1
                  srl          a4, t6, t1
                  div          a0, gp, t0
                  mul          a3, s3, t5
                  or           tp, t0, a0
                  remu         a7, a1, t0
                  sll          t5, sp, s8
                  sltiu        a1, s10, -381
                  srai         a1, s9, 12
                  mulh         t3, a1, t0
                  srli         zero, t5, 16
                  mulh         s1, s2, t2
                  rem          tp, zero, s3
                  divu         s1, t1, a0
                  divu         a4, s10, s10
                  or           t6, t5, a2
                  add          s6, ra, t0
                  sll          s8, s6, a7
                  remu         s5, a1, a2
                  xori         gp, ra, 1270
                  andi         s5, zero, -1027
                  xori         s4, s6, -734
                  sub          s1, a0, a4
                  rem          s9, s2, s4
                  remu         s8, a0, s3
                  lui          s6, 375070
                  sltiu        t1, s1, 559
                  auipc        s8, 474989
                  xor          a3, t5, a4
                  sra          t6, s4, s8
                  auipc        s1, 745662
                  addi         a3, s10, -1923
                  xor          a5, t4, t4
                  nop
                  sltu         s9, t0, s8
                  slli         a1, s6, 31
                  slti         a4, s3, 605
                  slti         s0, t3, -1885
                  sub          s7, s7, s7
                  or           t0, s3, s2
                  and          t0, a4, a6
                  andi         s7, a0, -1793
                  sll          a2, a6, s5
                  addi         a5, s11, -954
                  add          ra, tp, s5
                  auipc        s0, 450790
                  sltu         tp, s6, ra
                  addi         s6, s1, -1441
                  and          s2, t0, s4
                  mulhu        a2, s3, s4
                  mulhu        s4, s4, a3
                  add          a1, a7, t5
                  or           s2, s5, t4
                  or           s8, t4, a2
                  and          tp, s8, t1
                  mulhu        s9, s1, s2
                  nop
                  slti         t1, t3, 1620
                  srai         a4, s2, 1
                  sra          a0, s11, t0
                  or           tp, s7, s5
                  srai         gp, t4, 27
                  auipc        t4, 384162
                  sra          s4, s0, a1
                  mul          s1, s8, ra
                  nop
                  or           a7, s8, s7
                  sll          t0, s3, a0
                  sltiu        t0, t2, -1801
                  slt          t2, s3, t6
                  mulhsu       t1, s1, s6
                  add          s2, gp, a1
                  rem          gp, a7, t6
                  ori          s5, t5, 309
                  and          s7, a5, s6
                  slli         t1, t2, 19
                  div          s2, s8, s9
                  sub          t4, s2, t1
                  xori         ra, s2, -1031
                  sra          sp, a3, a2
                  sub          a0, a4, s7
                  sltu         s4, t5, s1
                  srl          tp, t3, tp
                  slt          s2, s10, s8
                  sltiu        tp, s2, 1624
                  div          s4, a1, s4
                  div          a2, t4, t1
                  xor          s0, gp, a5
                  mul          a7, a5, t4
                  mul          tp, a5, t4
                  srai         sp, s5, 4
                  mul          s5, a5, a7
                  sltiu        zero, t0, 637
                  or           s4, s6, t5
                  sub          a3, a0, s2
                  mulhu        t2, zero, sp
                  sub          t2, t3, sp
                  nop
                  mul          a7, s4, t3
                  xori         t5, s0, -866
                  mulhu        a1, s8, a0
                  mulh         s5, a2, t1
                  auipc        zero, 966321
                  xori         s10, s10, -1285
                  divu         t2, t5, s6
                  srai         s8, s3, 26
                  auipc        t1, 713660
                  sltu         s0, s10, t3
                  srli         ra, a5, 7
                  addi         a1, a0, 1639
                  divu         s2, t4, t6
                  sltiu        s2, t3, 1230
                  auipc        a2, 675753
                  nop
                  sub          t6, t2, s0
                  ori          s7, t3, 214
                  sltiu        s7, s0, 7
                  andi         a0, a5, 1742
                  remu         zero, zero, gp
                  mulh         ra, s10, s8
                  mulh         a0, s6, tp
                  mulh         s6, a0, a2
                  divu         s2, s3, s3
                  divu         s6, s6, s9
                  sub          a0, s3, s8
                  auipc        s9, 452217
                  addi         s9, a0, 1176
                  ori          s5, sp, -1436
                  xori         a3, a3, -1864
                  mul          a3, t3, a4
                  mulhu        t5, a3, sp
                  mulhu        t2, ra, a5
                  mul          t4, a0, a0
                  slti         a7, a7, 44
                  sltiu        s6, a4, 1465
                  add          gp, s8, a4
                  mul          s0, sp, a0
                  and          zero, zero, t0
                  auipc        sp, 981570
                  ori          a2, a5, -1771
                  srai         t3, a6, 20
                  slti         s8, s7, 1960
                  andi         s0, a1, -1330
                  mul          s8, a7, gp
                  ori          a1, a7, 21
                  sub          s0, tp, s5
                  nop
                  remu         s8, t3, sp
                  and          a2, t0, t2
                  lui          a7, 943194
                  sll          t3, s10, zero
                  andi         s5, s0, 621
                  mulhu        zero, s7, s11
                  and          t0, gp, s1
                  auipc        t1, 766017
                  andi         s9, s4, 1608
                  slt          ra, a0, a7
                  ori          s9, a0, -1683
                  sltiu        gp, t2, -387
                  or           s1, s11, a3
                  add          s2, s0, s3
                  lui          a5, 59374
                  add          sp, s5, s2
                  add          a5, sp, t4
                  sub          s5, a2, tp
                  and          t6, s2, a0
                  mulhu        t1, s3, sp
                  ori          s10, s7, -1146
                  sltu         s1, zero, a7
                  auipc        t5, 381451
                  xori         s4, sp, -4
                  lui          t1, 62534
                  mulhu        sp, a1, a3
                  mulhu        t3, a1, gp
                  nop
                  add          t4, s3, s11
                  slti         s10, a1, -931
                  lui          s4, 589952
                  or           a1, s1, zero
                  div          a2, t0, a0
                  ori          t6, a2, 1685
                  remu         sp, a1, t4
                  mulhsu       gp, t5, t1
                  sltu         s7, a6, a3
                  and          t1, t6, s9
                  andi         a5, a2, -1330
                  remu         t5, s5, s4
                  auipc        s4, 514585
                  slli         t4, a4, 26
                  srai         s9, s1, 26
                  nop
                  mul          s9, s1, tp
                  slti         t2, t4, -1851
                  addi         a3, ra, 496
                  mul          s7, t6, a4
                  rem          s7, s9, t1
                  sll          a0, a2, s10
                  and          s10, t0, s11
                  ori          t2, a5, 84
                  mulh         t0, s0, s4
                  mulh         a4, tp, s10
                  xor          s10, s4, t2
                  sub          s4, s11, s4
                  xor          a3, zero, s6
                  xori         s6, a3, 1473
                  slli         t6, s5, 20
                  sltiu        s4, s10, 255
                  xor          t4, tp, s4
                  mulhsu       t6, a7, s4
                  srai         a2, zero, 19
                  or           t6, sp, t2
                  sra          ra, gp, t2
                  div          a5, a6, s9
                  sltiu        t2, s1, -40
                  srli         s4, a7, 3
                  mulhu        a1, s1, t2
                  srli         s6, a2, 31
                  mulh         a5, t1, gp
                  lui          zero, 153015
                  slti         gp, a4, 1205
                  mulhsu       t4, s11, s8
                  remu         s7, zero, t0
                  and          t6, s1, s10
                  xor          t3, a3, a7
                  slti         a4, a4, -1040
                  xor          a1, a0, t5
                  slti         s7, t1, -959
                  or           s9, s0, s1
                  div          s9, s3, t6
                  nop
                  and          a7, s1, ra
                  addi         t4, a5, 1056
                  sub          s8, t6, a0
                  srl          a0, a5, sp
                  slt          a3, s7, s10
                  srai         gp, s8, 23
                  mulhu        a0, a2, s11
                  xori         a0, s8, -1926
                  sltiu        a2, t0, -701
                  remu         s2, tp, a1
                  sra          t0, a7, t5
                  xor          t4, s11, a6
                  xor          s10, a1, s11
                  sll          t5, ra, sp
                  mulhu        t0, s10, t6
                  xori         a1, s5, -1127
                  andi         zero, a1, 526
                  sltiu        zero, t1, -1412
                  srli         s5, a1, 20
                  div          t3, a6, t1
                  mulh         a1, s3, a7
                  ori          s5, ra, -1582
                  andi         a7, t0, 37
                  lui          a7, 228861
                  xor          t6, t2, t6
                  or           a7, s6, t2
                  rem          a1, a5, tp
                  xori         s10, a2, 1241
                  srai         a7, s11, 1
                  sra          a5, gp, a7
                  mulhu        a7, t6, s1
                  sltiu        t6, t6, 629
                  sltu         a5, ra, t0
                  sltu         t0, s9, s8
                  mul          s10, a7, s3
                  addi         s4, a4, 148
                  srli         a2, s11, 30
                  sra          a3, s10, t4
                  mulh         s0, t2, a3
                  sub          t0, a3, s2
                  srl          gp, t2, a0
                  addi         s4, tp, -965
                  nop
                  sltiu        s10, s3, -707
                  xori         a2, t2, 1820
                  xor          a1, s7, t6
                  andi         s4, a5, 538
                  ori          s7, s1, -1565
                  sra          s9, a5, t5
                  xor          sp, t4, a0
                  slt          a3, a4, a3
                  and          gp, s5, s8
                  divu         t0, s5, s2
                  addi         ra, s7, 174
                  or           t1, s1, gp
                  srai         t0, s0, 18
                  andi         t1, s11, -827
                  sltiu        t3, t6, 688
                  srai         s5, s3, 21
                  xori         s8, sp, 1778
                  sltu         s5, sp, s9
                  and          sp, s2, t4
                  slli         t0, s10, 8
                  sltu         t2, s1, s8
                  andi         t1, s1, 164
                  mulhu        t0, a1, t1
                  xor          s8, a6, t3
                  nop
                  addi         s7, s2, -1050
                  mulhsu       ra, sp, a6
                  mulhsu       t6, s10, tp
                  auipc        gp, 451040
                  mulhsu       a3, t3, sp
                  ori          tp, gp, -1671
                  add          a1, a0, a7
                  andi         gp, s7, 1479
                  and          a3, s5, s1
                  mulhu        s4, a5, sp
                  mulh         t0, a0, s0
                  ori          a1, zero, -1595
                  rem          s0, s11, t1
                  or           gp, tp, tp
                  add          a1, s10, t0
                  mul          a7, tp, t2
                  slt          t2, a5, s0
                  sub          tp, a3, s5
                  sra          t4, s5, a4
                  srli         a3, a5, 11
                  mulhsu       s6, a1, s1
                  sra          tp, t6, a3
                  lui          gp, 914303
                  sra          t4, t4, s6
                  xor          a5, s11, a1
                  xor          a2, a6, s4
                  slt          ra, sp, t5
                  sltu         t1, ra, t1
                  div          s7, s11, gp
                  sltiu        tp, s5, -1734
                  xor          s8, s11, a2
                  or           t3, s4, a2
                  slli         a0, t3, 24
                  ori          s2, s1, -1432
                  lui          s2, 378968
                  sra          ra, gp, s0
                  srai         s4, t3, 11
                  divu         a2, t5, t3
                  slli         s4, s8, 14
                  addi         t3, a2, 1794
                  sltu         t5, s5, tp
                  mulh         t3, tp, s10
                  slti         tp, s9, 1367
                  mulh         t6, s0, a2
                  slli         t1, s9, 6
                  slt          s6, tp, zero
                  and          t2, a7, a1
                  mulhsu       s9, t2, sp
                  remu         sp, gp, s5
                  sll          t5, a3, s10
                  slli         a2, s5, 31
                  sub          zero, gp, sp
                  slt          t3, gp, t6
                  add          t3, ra, zero
                  remu         s8, a3, t4
                  add          t2, s11, a4
                  addi         s6, s6, 428
                  or           a3, a6, tp
                  mul          t2, s8, s2
                  nop
                  mul          a3, gp, s8
                  add          zero, s9, t1
                  sll          gp, s8, t0
                  auipc        s9, 649064
                  xori         s2, s7, 1348
                  slli         t2, s11, 5
                  ori          s7, t5, 1423
                  nop
                  sra          ra, s8, a1
                  srl          s9, s3, a1
                  auipc        a4, 724799
                  sub          s1, s4, a3
                  add          t5, s11, s9
                  rem          s0, gp, zero
                  add          t2, t6, a4
                  mulhu        s7, s8, t4
                  sltu         t0, s9, ra
                  srli         s9, sp, 13
                  xori         a5, s5, 932
                  rem          tp, a4, zero
                  or           t1, sp, ra
                  srl          a0, ra, s0
                  and          a7, t1, a4
                  andi         a0, gp, 832
                  auipc        s8, 56743
                  rem          t4, s1, t5
                  or           t1, t6, t6
                  slli         t3, t5, 9
                  divu         a7, s11, t4
                  remu         s6, s1, s0
                  mul          a7, t6, s10
                  remu         gp, t1, a1
                  slli         a5, gp, 3
                  slli         ra, t4, 21
                  ori          s2, t1, 626
                  divu         s9, gp, t4
                  divu         a1, s7, s5
                  and          s2, a3, s1
                  remu         gp, a5, zero
                  divu         tp, t2, t4
                  sra          a0, s8, t5
                  auipc        t1, 618167
                  remu         s8, a7, t4
                  nop
                  mulh         s1, tp, a0
                  slti         ra, a0, -450
                  srl          s0, t1, t5
                  rem          t1, tp, gp
                  or           s5, t6, s5
                  auipc        gp, 306776
                  sll          t0, tp, s4
                  mulhu        a2, gp, s9
                  mulhsu       s8, s0, s10
                  add          sp, t0, t4
                  slti         s10, ra, -1059
                  mulh         s4, s2, s6
                  rem          t4, zero, s10
                  slt          s2, t3, s9
                  slli         s4, a4, 7
                  or           t0, s6, sp
                  auipc        a0, 29352
                  and          sp, a1, s10
                  srl          s4, s11, s5
                  sll          sp, s1, a1
                  xor          zero, t3, s9
                  add          t0, s3, a1
                  sltiu        ra, zero, -395
                  sltiu        t2, s6, -941
                  slt          s7, t0, sp
                  srli         s0, a5, 24
                  lui          gp, 360928
                  srli         t6, t4, 9
                  andi         ra, s9, 854
                  add          s9, s7, s0
                  rem          a0, s6, t6
                  xori         a2, a2, -1341
                  sub          s10, s11, a3
                  sltu         t5, s2, a1
                  andi         tp, s9, 1108
                  mulh         t0, ra, a0
                  mulhsu       s6, s3, a6
                  remu         t5, s11, s7
                  slti         s6, s3, -392
                  sra          a1, a5, s1
                  div          a0, t1, gp
                  slt          t6, t6, s5
                  and          s8, s7, t1
                  sra          s4, s5, s9
                  mulhu        a7, sp, a6
                  and          t3, t4, s2
                  auipc        t1, 610165
                  srl          gp, gp, s7
                  auipc        sp, 114114
                  and          a3, t0, a2
                  ori          t4, a2, 874
                  auipc        gp, 293993
                  ori          t2, a7, -1186
                  xor          s5, s11, t2
                  lui          s4, 40083
                  divu         sp, a0, s4
                  sltiu        s10, a0, -1751
                  or           t3, a2, s2
                  srl          s7, t0, a6
                  mulh         s4, s8, t5
                  remu         a0, s1, s3
                  mul          s4, gp, gp
                  sub          s1, s6, t1
                  srl          s8, s4, t3
                  mulhu        a0, zero, t0
                  mulhu        s10, a2, t1
                  divu         a1, a4, t2
                  divu         s8, s10, sp
                  divu         a2, t4, t3
                  rem          t4, s11, a6
                  sltiu        a5, s4, -1273
                  and          t6, s5, a0
                  sltiu        a1, s5, 899
                  rem          s0, a3, a0
                  slli         a2, sp, 14
                  srl          tp, s4, s9
                  divu         a1, t4, t0
                  mulh         s7, s0, sp
                  mulh         zero, t4, a3
                  srli         s0, t0, 4
                  sltu         t6, s6, gp
                  sltiu        s7, zero, 2025
                  nop
                  mul          s1, t3, a6
                  divu         zero, t3, ra
                  sltiu        a7, s5, 1132
                  mulhu        a4, s11, s1
                  sra          a7, sp, s3
                  divu         s2, s0, s6
                  ori          a0, a1, 1736
                  ori          s2, s3, 560
                  sltu         a0, s3, t5
                  or           s0, t4, t3
                  addi         t5, a5, 1120
                  and          s9, t3, s1
                  div          s1, t0, s10
                  xor          a7, s11, a2
                  sltu         s10, s10, s0
                  sll          sp, s6, t3
                  xori         t3, s10, -390
                  mulhsu       sp, t4, s7
                  mulhsu       zero, a3, t2
                  mulhsu       a3, zero, t2
                  slt          s2, a5, a7
                  add          a1, s5, zero
                  add          t1, t1, s1
                  sra          s10, s0, s1
                  slli         t6, t6, 12
                  rem          zero, sp, s1
                  mulhsu       a0, s5, t0
                  sra          ra, s4, a6
                  nop
                  add          t2, a3, a4
                  srl          s2, s1, a4
                  sub          t0, t5, s0
                  sltu         s4, s5, s8
                  ori          s1, s4, -1118
                  mulhsu       sp, t6, t6
                  slt          t5, s2, a7
                  mulhu        t6, a7, s5
                  sltiu        a0, a5, -1850
                  remu         sp, t1, sp
                  xor          zero, s5, tp
                  add          ra, t2, s4
                  sub          s0, t4, s9
                  srl          a5, t2, a2
                  slti         s10, s6, -527
                  addi         s0, sp, -405
                  mul          tp, s3, s10
                  rem          s0, a6, a6
                  and          a7, gp, a4
                  sub          s7, a1, a0
                  srl          s8, a1, sp
                  xor          t6, s6, sp
                  srl          a4, s11, s9
                  srl          t4, a6, s9
                  mulhu        a0, s10, s10
                  nop
                  ori          s9, s5, 154
                  slt          s8, t2, a2
                  mulhu        t2, s0, t3
                  auipc        a5, 776714
                  sltiu        a1, a6, -62
                  xori         a3, sp, -1094
                  mulh         t1, t4, t6
                  divu         t2, s3, s8
                  slli         s2, s1, 20
                  auipc        t3, 929083
                  auipc        t0, 1010402
                  auipc        t4, 722694
                  slli         ra, t3, 7
                  remu         a5, s9, t2
                  or           a5, t3, s11
                  slti         s9, s6, 2024
                  ori          a3, a0, 846
                  remu         t2, s7, s4
                  rem          zero, s9, s3
                  slt          s7, s3, a1
                  sll          s8, s0, s0
                  div          t2, a3, s8
                  sra          s10, a4, s0
                  remu         s10, a7, t5
                  mulh         s2, a1, a4
                  sra          t2, s4, t3
                  lui          s1, 323037
                  srai         gp, t1, 24
                  andi         gp, s7, -1079
                  nop
                  srai         s8, t3, 10
                  div          t6, gp, tp
                  mulhu        t6, s10, s8
                  rem          a0, a2, s10
                  mulh         s2, s2, s11
                  andi         ra, s5, 1478
                  sltiu        t6, s10, -1049
                  lui          s2, 986657
                  srai         t2, t1, 19
                  srai         a0, t4, 19
                  remu         a4, t5, a7
                  rem          a4, ra, a2
                  sltiu        gp, sp, -479
                  sll          a5, s7, s7
                  mul          sp, t1, a5
                  slti         s4, s9, 1378
                  srl          t6, s6, t2
                  srai         a0, t0, 26
                  mulh         t3, s7, a6
                  div          t6, t0, zero
                  srli         s5, a5, 28
                  srl          t1, s0, s11
                  and          zero, s3, s9
                  lui          s6, 288151
                  sra          a3, sp, tp
                  sll          ra, zero, t5
                  mulhsu       a3, t1, a5
                  andi         tp, a7, 681
                  slli         t1, t3, 23
                  srl          s4, a3, ra
                  mul          a1, s0, a1
                  or           s8, t4, s2
                  divu         t0, s5, s4
                  and          t6, s3, a1
                  slli         a5, t6, 22
                  srl          s8, s1, s10
                  ori          s10, s9, 871
                  div          s7, s3, a5
                  sra          a2, t3, s1
                  srli         a3, s4, 11
                  addi         s8, t3, 1853
                  add          s5, a4, t4
                  xori         t3, a5, 391
                  nop
                  srli         a5, t1, 24
                  sra          t2, a4, t6
                  lui          t6, 893588
                  ori          s9, s8, -1098
                  xori         s10, a5, 464
                  sra          gp, t6, t3
                  mulh         s8, t6, t1
                  lui          a4, 544489
                  auipc        gp, 168142
                  slti         tp, gp, -298
                  sub          s0, s10, s10
                  sltu         ra, t4, ra
                  slt          t6, t2, a4
                  slti         s5, ra, 40
                  rem          gp, s3, a7
                  rem          s10, t2, s1
                  mulhu        s2, a5, s6
                  xor          s4, s7, ra
                  remu         s2, s8, s7
                  or           tp, s8, a3
                  mulhu        s2, s4, a4
                  ori          s7, t6, -1031
                  auipc        t1, 562581
                  sra          t3, t5, s0
                  or           s2, sp, s4
                  andi         a4, sp, 1734
                  divu         t1, t3, s5
                  slti         t4, s3, -1291
                  divu         a0, s1, a0
                  sltiu        t0, s3, -796
                  divu         a5, a1, a3
                  or           s7, t1, s7
                  or           a5, tp, s7
                  mulhu        t0, a0, s6
                  andi         t4, a2, 1394
                  slti         a0, ra, 567
                  srli         t5, s4, 31
                  divu         s6, a4, a5
                  xor          s9, a7, a7
                  lui          s9, 742640
                  srai         a7, s9, 7
                  slti         t1, s6, -837
                  mulhu        zero, s11, t4
                  srl          a4, a2, t5
                  mulhsu       zero, s10, a4
                  ori          sp, s2, -1041
                  rem          gp, a4, t0
                  add          t5, ra, t0
                  mul          a1, t5, s1
                  slt          sp, ra, s5
                  srl          a7, s4, a1
                  slli         a0, a5, 9
                  auipc        t1, 437899
                  sltiu        t1, s2, 476
                  xor          gp, a4, s7
                  xor          s8, s0, a6
                  sub          tp, s7, t1
                  lui          a3, 585140
                  ori          s6, s3, -1528
                  addi         a2, s8, -602
                  sltiu        s2, t3, -1809
                  auipc        a2, 188027
                  and          s0, s8, s3
                  auipc        t4, 858009
                  sltiu        s4, s3, -1620
                  sub          zero, s7, s9
                  xori         s5, s4, 1377
                  mul          s0, t2, t1
                  sltiu        s2, a3, 446
                  sltu         t5, t1, a2
                  sltu         ra, s8, a4
                  remu         s9, a2, s5
                  mulhu        s2, s3, s9
                  mulh         gp, ra, s3
                  sra          a5, t0, s7
                  slti         a0, s9, -383
                  sra          s7, s9, t4
                  auipc        s5, 707907
                  lui          s2, 568006
                  mul          s2, a3, s9
                  srli         gp, s3, 4
                  xori         s1, t4, -207
                  sltu         a2, ra, t1
                  auipc        a1, 641459
                  srai         s7, a5, 12
                  rem          s7, a0, sp
                  remu         a3, s8, t5
                  div          s7, s6, s9
                  sra          t1, tp, a4
                  auipc        a7, 202263
                  srli         t4, s10, 18
                  mul          tp, tp, t4
                  rem          t1, s4, a1
                  xori         a5, t1, -1488
                  sltu         t4, t1, s0
                  slt          a5, t1, s3
                  or           a0, s9, a7
                  sll          a7, s6, t3
                  slt          t1, s0, a2
                  mulhu        a5, zero, t3
                  andi         a7, s6, -892
                  mulh         t3, s9, s8
                  srl          s0, a6, s0
                  sll          gp, s3, a7
                  ori          s10, s1, -1093
                  divu         t3, t5, zero
                  slt          a1, t2, a0
                  slli         s10, s8, 0
                  or           s9, s3, sp
                  slt          t5, t6, a5
                  addi         s9, zero, -1243
                  nop
                  mul          s1, a5, sp
                  srl          s10, a6, sp
                  mulhsu       tp, s3, a6
                  remu         a5, s4, s3
                  auipc        s5, 756958
                  add          s2, sp, a4
                  mulhu        a1, s11, s4
                  divu         s9, a2, s11
                  addi         s7, t0, 1916
                  slt          a1, s4, s0
                  andi         t5, s1, -748
                  addi         a7, a2, 1316
                  mulhu        a1, s9, s5
                  addi         s6, s6, 829
                  rem          a4, a3, s8
                  srl          gp, gp, t1
                  div          a7, a4, zero
                  sra          gp, gp, gp
                  xor          s1, s3, a0
                  rem          a3, a3, t5
                  srli         s2, a3, 3
                  mul          s1, t1, t6
                  sltu         s4, a5, s1
                  xori         t0, a7, -32
                  sltu         ra, s10, a7
                  xor          t5, t1, t6
                  sll          s5, a2, s0
                  srl          s7, tp, gp
                  xori         s10, s0, -2034
                  sll          a5, gp, a2
                  rem          a0, gp, a6
                  ori          s1, s5, 397
                  lui          gp, 645710
                  rem          t3, a1, t6
                  auipc        t5, 139804
                  mulhu        s9, s5, s1
                  slt          s4, s7, s4
                  or           s8, a1, t6
                  divu         t4, t1, s3
                  mul          a7, a0, tp
                  or           sp, s5, t3
                  or           s1, a3, s4
                  sltiu        a1, a4, 1487
                  divu         s2, s5, zero
                  andi         s4, t2, 899
                  srl          s2, s3, t5
                  nop
                  sll          s7, s7, t2
                  slt          t6, s4, s8
                  sra          a0, a2, a7
                  ori          a2, a6, 1827
                  mulh         t6, sp, t1
                  srl          t2, t2, t6
                  remu         a4, s8, a7
                  xori         t3, zero, 485
                  slti         t6, s4, -1210
                  or           a7, gp, tp
                  auipc        a0, 697868
                  sltiu        s1, gp, 814
                  mulhu        a0, a4, zero
                  mul          s9, s9, a3
                  slt          t6, tp, a2
                  sra          t0, t2, t2
                  slt          s8, t0, s3
                  or           a0, s1, s5
                  mul          ra, t1, zero
                  addi         t4, t0, -608
                  mul          s6, t3, s6
                  lui          t1, 382386
                  mul          t5, s8, t1
                  divu         t1, a4, a0
                  srai         a5, zero, 12
                  sll          a3, s5, t4
                  srl          a0, t6, a5
                  addi         t6, a2, -1646
                  xori         sp, s6, 1589
                  slt          a5, t0, s5
                  srai         s8, t3, 28
                  slt          gp, a5, s2
                  srli         t6, a0, 5
                  mulh         t2, t3, zero
                  xor          t2, t3, s5
                  rem          s4, a5, t2
                  slt          s4, t0, sp
                  add          tp, gp, a6
                  add          s4, a1, s10
                  slli         t0, s1, 22
                  andi         t0, a2, -781
                  sltiu        s0, a5, 783
                  ori          s5, s5, -7
                  auipc        s1, 213417
                  auipc        s2, 227857
                  sll          t4, a6, sp
                  mulhu        a7, t6, t0
                  slti         s2, s9, 1453
                  mulhsu       t5, s3, tp
                  sra          s0, s9, s4
                  srai         s4, a5, 28
                  andi         t6, ra, -568
                  sll          sp, s10, sp
                  sll          sp, s5, s4
                  remu         s5, sp, a3
                  xor          s1, t3, a3
                  sll          t5, a7, a3
                  xori         s1, s7, 271
                  ori          t1, a5, -1133
                  div          a3, ra, t0
                  or           t4, ra, s11
                  lui          s1, 443534
                  and          tp, gp, t6
                  slli         s1, s1, 0
                  sra          a2, gp, tp
                  sll          t2, a1, a0
                  xor          a7, t6, t4
                  mulhu        a5, a7, s7
                  auipc        a0, 947086
                  or           t1, s7, t0
                  slt          a1, t0, ra
                  addi         a0, s2, -1380
                  or           t5, a5, a1
                  sll          a1, a7, zero
                  rem          a3, a7, sp
                  slt          zero, a1, t2
                  sll          s1, t3, s1
                  auipc        a2, 508366
                  ori          a3, s1, 661
                  xor          s9, t3, s8
                  and          s1, ra, s0
                  srai         zero, zero, 27
                  lui          s8, 330999
                  sra          s10, zero, s4
                  xori         a5, s3, 1909
                  mulhsu       gp, t6, s1
                  mulh         s10, t1, a4
                  slli         a0, s6, 31
                  div          a7, sp, t4
                  lui          a0, 795478
                  sltu         s1, ra, t5
                  srli         s0, zero, 2
                  and          s6, t2, s2
                  slt          s2, s4, zero
                  srli         a1, t1, 22
                  mulh         a5, s4, t0
                  xori         ra, t2, -691
                  xor          t5, s2, s6
                  srli         gp, s11, 15
                  sltiu        t0, s0, 1555
                  ori          s1, s0, -1771
                  xor          a1, t5, t4
                  sub          s0, t2, a4
                  add          s9, t6, s6
                  srli         a5, a1, 25
                  mul          zero, s3, s0
                  slti         t0, a6, -991
                  div          gp, a7, t4
                  divu         t4, t1, a4
                  xor          a2, s2, s9
                  sub          s2, t1, s8
                  slti         a2, s6, 1338
                  mul          a4, gp, sp
                  and          a5, zero, a0
                  mulhu        t2, t2, t5
                  mulh         a3, tp, a3
                  sub          t5, ra, a1
                  lui          t4, 309010
                  srl          s5, t5, a0
                  xori         t0, t5, -1762
                  and          a1, a5, a5
                  div          a0, sp, tp
                  sltu         s8, s7, a4
                  srli         t2, s2, 23
                  mul          t6, t0, ra
                  srai         gp, s0, 1
                  srai         s5, zero, 26
                  sltu         tp, a5, a7
                  xor          sp, a1, s7
                  and          t2, t0, a4
                  remu         s10, s6, a5
                  div          gp, s2, t0
                  srli         a7, t4, 2
                  lui          ra, 146679
                  or           t5, t4, a3
                  mulhu        a5, a0, a7
                  slli         gp, t3, 22
                  slli         t4, tp, 4
                  sll          s8, a7, t3
                  mul          a1, a7, s9
                  slt          t1, s5, t2
                  srli         t3, a0, 20
                  sltu         a3, a5, t2
                  addi         t1, a1, 246
                  rem          a3, s9, s8
                  mulhu        a3, s11, sp
                  andi         t3, t3, -920
                  rem          t5, s5, s4
                  rem          s4, a6, tp
                  srai         s5, sp, 18
                  sub          s2, t0, a4
                  remu         s10, s9, s10
                  slli         a3, t1, 20
                  ori          s9, a2, 1376
                  mul          tp, s11, t1
                  mulhu        a3, s0, sp
                  sltiu        s9, ra, -1694
                  sltiu        a7, t5, 1253
                  add          s7, s1, a4
                  mulhu        a5, s8, t1
                  div          s6, s3, a2
                  mulhu        a0, s2, t0
                  remu         sp, t3, a1
                  nop
                  srli         a7, s11, 19
                  sll          a1, s3, s4
                  slti         s4, a1, -1604
                  and          s6, s8, s9
                  divu         s9, gp, s5
                  auipc        s8, 657253
                  divu         t6, s4, s10
                  xori         a7, ra, -190
                  sra          a2, s3, s8
                  and          t6, t6, s0
                  sra          t5, s1, s9
                  sra          a5, t6, a7
                  slti         a0, a1, -1960
                  or           a3, s5, a3
                  slti         ra, s9, -1805
                  srl          a4, s7, a6
                  auipc        s8, 739963
                  andi         a5, sp, -2044
                  srai         t4, s11, 16
                  mulh         a0, a0, a1
                  mulhsu       t2, a1, zero
                  sltiu        a1, s11, -1002
                  mulh         a2, a3, s11
                  addi         s0, a7, 387
                  mul          s9, s8, a0
                  srl          a5, s9, t2
                  slti         t6, s7, -1269
                  slli         s7, tp, 20
                  lui          t1, 11859
                  div          a2, tp, s4
                  addi         s9, t3, -813
                  ori          s7, a6, 853
                  and          ra, a3, a5
                  mul          s9, t5, zero
                  mulhu        a1, t5, a6
                  or           s9, gp, gp
                  addi         tp, a3, 353
                  xori         t3, a6, 1421
                  srli         s8, s9, 3
                  add          s10, s1, t0
                  sltu         s7, a5, a3
                  add          t5, a4, tp
                  lui          s4, 158669
                  ori          t6, t5, -189
                  divu         zero, t6, t1
                  sll          a1, a0, a1
                  slt          s9, t5, t2
                  ori          s8, t0, 38
                  sra          s10, a7, s5
                  or           t4, sp, t4
                  xor          t4, a7, a0
                  srli         t6, a2, 15
                  auipc        s6, 749840
                  mulhsu       s6, zero, t1
                  srli         t5, t2, 31
                  slt          t6, zero, a3
                  andi         ra, zero, 568
                  sltu         tp, s0, a6
                  xor          s8, t2, tp
                  nop
                  slti         s7, t2, 1356
                  nop
                  slti         t6, s3, 1738
                  auipc        a3, 305041
                  xor          a1, s9, s1
                  sltiu        t0, a0, 869
                  slli         a7, s6, 31
                  mul          s2, t4, t1
                  srli         t5, s0, 1
                  slli         tp, t0, 20
                  sltu         s5, a3, tp
                  srli         t5, s1, 11
                  and          a5, s9, a1
                  srai         s9, s4, 22
                  sub          t1, a3, s5
                  sll          a5, s4, s1
                  srai         gp, t0, 13
                  mulhu        t0, s6, a0
                  srai         s9, s11, 29
                  nop
                  divu         t5, s10, t4
                  slti         t3, t0, -868
                  sll          s6, t4, a7
                  slli         s10, s6, 7
                  xori         s1, t4, -144
                  sltu         a3, zero, gp
                  remu         s10, t3, s2
                  slti         t6, a6, -512
                  mulhu        t5, t1, s11
                  slt          s7, zero, t1
                  sltu         s9, s1, s1
                  remu         s9, s3, t6
                  xori         s7, t4, -1674
                  lui          s1, 242211
                  slt          gp, s0, s7
                  or           s9, a6, a2
                  mul          t6, t6, s1
                  add          t3, t2, a6
                  slli         zero, t4, 0
                  addi         a2, s4, -576
                  auipc        s4, 22229
                  srai         tp, ra, 21
                  nop
                  mulh         a3, s9, t2
                  slt          s7, a6, t5
                  lui          s5, 212842
                  rem          a1, a1, s7
                  ori          ra, tp, 560
                  andi         sp, t0, 1258
                  ori          t6, s3, 177
                  div          s2, zero, a5
                  nop
                  slt          s7, t4, s4
                  add          t4, a6, s10
                  sra          sp, s10, zero
                  mulhu        s9, a5, s7
                  andi         s1, s4, 1254
                  sll          sp, s1, t4
                  sub          t2, a6, t5
                  addi         a2, s7, -1428
                  slli         a1, s0, 10
                  srai         a5, a3, 24
                  srl          s9, s0, s2
                  slti         t3, a1, 425
                  xori         s6, s6, -1268
                  and          gp, gp, s8
                  sltu         a5, a6, t5
                  rem          tp, a7, gp
                  div          a5, a0, a7
                  sub          t4, s3, ra
                  rem          ra, a4, s5
                  mulhu        t1, a6, s2
                  slti         t2, t2, -421
                  sltu         a7, a2, s8
                  sltiu        ra, s8, -391
                  and          s6, a6, s5
                  sra          a2, a7, s0
                  sra          s1, a5, t4
                  slt          t3, a1, s2
                  and          a5, s6, a7
                  slt          t4, zero, a0
                  sll          a0, a5, t4
                  xori         s4, s10, 1735
                  sub          zero, t1, s9
                  sltiu        s4, sp, 1322
                  div          s10, s1, zero
                  mulh         ra, s6, t3
                  sll          a2, gp, t0
                  and          t6, a0, ra
                  xor          s9, s1, a3
                  and          s4, s3, a3
                  sra          zero, s8, s4
                  addi         tp, s2, 321
                  xor          s10, a6, a5
                  slt          t0, s1, t1
                  sra          t4, s8, gp
                  sltu         a7, a6, a4
                  andi         s4, a6, -101
                  xori         s9, a3, -723
                  lui          s0, 172666
                  sra          zero, s10, s2
                  divu         s6, s5, s1
                  sll          t5, a5, sp
                  xor          a4, ra, s10
                  auipc        s9, 365653
                  slti         a1, s2, -676
                  or           s7, a4, s0
                  nop
                  auipc        s4, 124182
                  xor          a7, tp, s10
                  sll          a4, s3, a5
                  or           s10, s9, s0
                  sltu         tp, s7, zero
                  xor          zero, t5, t5
                  sltu         t5, s11, t2
                  lui          ra, 955440
                  mul          a2, a7, s11
                  slti         t4, a4, 1871
                  andi         a5, s3, -1158
                  srai         s4, s7, 28
                  or           zero, s4, a3
                  slli         tp, a2, 29
                  mulhsu       a1, s7, a7
                  add          a7, a3, a3
                  srai         t4, gp, 12
                  slti         a1, t2, -516
                  xor          s9, t6, t1
                  xori         a7, t5, -1588
                  xori         s4, s10, 711
                  sll          a7, s4, s3
                  xor          t4, tp, s0
                  sub          a2, a1, s7
                  rem          s8, sp, gp
                  mulhu        t5, s6, a1
                  add          s0, gp, t6
                  sub          t0, s10, sp
                  addi         s8, a4, 1251
                  lui          a5, 245848
                  slt          zero, a0, ra
                  sltu         t4, s4, s11
                  mulhu        s2, a3, a0
                  mul          a3, s7, t1
                  or           s6, s10, a6
                  srl          t3, s8, a0
                  sra          s4, t0, s3
                  mulhsu       t6, a1, t2
                  sltu         s7, a7, s10
                  srl          sp, zero, s1
                  div          a4, s2, s10
                  mulhsu       a4, s8, s3
                  lui          a0, 375608
                  srl          zero, t5, t5
                  srai         a1, t0, 17
                  slli         s6, s4, 2
                  sll          s4, t1, zero
                  addi         sp, tp, 197
                  sltiu        ra, zero, -917
                  remu         t4, t6, s2
                  slli         a0, a2, 8
                  rem          tp, gp, gp
                  xor          s9, s0, t3
                  ori          t2, a0, 1909
                  lui          ra, 845630
                  srl          s2, t1, s2
                  nop
                  divu         s6, s10, a0
                  addi         s1, a3, -1249
                  slt          t1, s10, a0
                  add          a4, s10, s2
                  mulhu        s0, ra, s9
                  and          t0, a3, zero
                  nop
                  srai         s2, s8, 8
                  andi         a1, gp, 2006
                  mulhsu       t1, t1, s4
                  auipc        zero, 910816
                  xor          s4, t1, t5
                  rem          s9, a2, a6
                  mul          zero, t1, s4
                  remu         a0, t6, s8
                  xori         a7, s2, 734
                  div          a5, sp, a3
                  nop
                  rem          s4, a3, s5
                  mulhsu       t3, s10, sp
                  auipc        s5, 249124
                  sub          t5, a6, s11
                  mulhsu       t4, a5, t1
                  srli         s5, s11, 7
                  xor          zero, s4, s9
                  and          t3, a7, a7
                  auipc        sp, 57137
                  sub          t0, a3, a5
                  sll          s7, t1, s7
                  slt          s4, t6, gp
                  slli         zero, a3, 0
                  sra          s6, s1, a6
                  sll          a2, ra, a6
                  mulhu        a0, a7, t1
                  slt          s0, sp, s7
                  lui          sp, 944525
                  mulhu        t3, tp, t5
                  mulhu        a4, t2, a6
                  srl          a2, s7, zero
                  and          s9, t6, s1
                  sltiu        t6, a0, 698
                  div          t2, s9, t2
                  remu         s4, s2, s6
                  srl          t1, s1, a0
                  addi         a0, ra, 1073
                  srai         a2, s5, 1
                  mulhsu       s4, s8, a5
                  mulh         s10, s11, s9
                  sll          s5, a6, tp
                  sra          s7, tp, a0
                  add          t0, a1, t4
                  add          tp, ra, s7
                  auipc        a7, 413742
                  auipc        s9, 829877
                  srai         t5, a3, 29
                  mul          t0, s2, a6
                  nop
                  addi         s1, s6, -1983
                  xor          tp, t5, s9
                  nop
                  mulhsu       s9, s8, s3
                  srai         s0, a5, 2
                  rem          t6, s0, s10
                  sltu         t5, s5, a6
                  mulh         s10, a0, tp
                  xor          zero, a2, a6
                  sra          t0, a6, a1
                  add          s2, a0, s5
                  srl          t0, s2, a5
                  xori         a5, s7, -386
                  div          s5, tp, a5
                  nop
                  div          s7, a6, s6
                  sra          s6, s3, sp
                  sltiu        a3, s4, 1477
                  mulhsu       sp, a7, s8
                  auipc        zero, 57068
                  and          t0, sp, s9
                  xor          s4, t5, sp
                  xori         s6, s11, -596
                  sra          ra, a6, s11
                  or           a0, s2, s2
                  remu         s2, s11, ra
                  mulh         s5, t5, s4
                  andi         s1, tp, 323
                  rem          zero, s0, t1
                  slli         a0, t5, 20
                  or           s0, gp, a1
                  sltu         s8, t0, a5
                  lui          tp, 158592
                  remu         s6, s9, gp
                  slt          a7, s2, zero
                  rem          t6, t1, t2
                  and          t5, a3, t2
                  sltiu        a2, s2, -476
                  slli         s9, a4, 4
                  ori          t1, s11, 136
                  addi         t1, s8, -1879
                  srai         zero, a3, 14
                  mul          t6, s2, s5
                  mulh         s2, t3, s11
                  xori         sp, t3, 666
                  ori          s10, tp, -858
                  srli         gp, a5, 6
                  divu         t5, sp, a6
                  mulhsu       s7, s1, s3
                  xori         s8, s5, 70
                  srai         t4, s10, 16
                  slt          ra, a5, s0
                  andi         s8, gp, -1154
                  sltiu        s6, t2, 526
                  mulhsu       a1, t6, a1
                  remu         a7, s7, t2
                  sltiu        s9, tp, 42
                  div          a7, ra, t6
                  sra          tp, s3, s2
                  remu         sp, ra, a4
                  xor          t1, a0, t0
                  srl          s0, gp, t2
                  divu         gp, s1, a0
                  mulhu        s6, t3, a0
                  mulh         a1, a3, a3
                  lui          ra, 930809
                  slt          a2, t2, s5
                  srai         zero, a0, 2
                  div          sp, s1, s4
                  auipc        gp, 19181
                  ori          s8, a0, 1539
                  srli         tp, s0, 11
                  divu         zero, s7, s11
                  divu         t2, t4, a3
                  or           ra, t4, a6
                  ori          sp, s9, 1594
                  sub          gp, t2, s0
                  rem          t0, a3, s11
                  slti         s1, a7, 693
                  mul          s0, s8, t1
                  nop
                  divu         sp, s0, s6
                  srl          a0, s7, s9
                  mulh         s5, s1, s10
                  slt          a5, ra, a4
                  div          a3, s0, s11
                  sll          a2, zero, s8
                  sub          a3, tp, a5
                  mulhsu       s10, t5, a6
                  mulhu        s0, s11, a5
                  add          s4, t2, t5
                  srai         zero, s3, 22
                  ori          a3, s9, 297
                  slt          s6, zero, t6
                  sltu         a7, t0, s2
                  sub          s4, a6, s5
                  divu         s8, s4, zero
                  slti         a1, a5, -1412
                  mulh         s4, t4, a5
                  srli         s10, gp, 19
                  remu         s5, s11, t2
                  srl          a3, s10, t0
                  andi         s9, a2, 535
                  mulhsu       s1, a0, t4
                  div          a1, s8, zero
                  lui          s9, 930225
                  add          s4, s8, sp
                  add          t6, a5, s4
                  addi         zero, s1, -1911
                  slt          sp, t5, a3
                  remu         ra, a5, t0
                  sltiu        t6, s6, -80
                  ori          a7, s2, -1183
                  sub          a7, a4, s4
                  slti         t2, a5, -1010
                  div          s6, s11, zero
                  remu         a5, a0, s0
                  xori         a1, ra, 876
                  sll          gp, s6, s7
                  slli         s1, s9, 29
                  andi         s10, t6, 1475
                  div          gp, a2, t0
                  srai         s8, s2, 13
                  auipc        a4, 817962
                  slli         tp, s11, 27
                  and          s7, t3, tp
                  sltiu        tp, ra, -936
                  add          s9, sp, t4
                  sll          s4, t6, ra
                  srl          a2, s3, s6
                  sub          s6, s10, s10
                  nop
                  remu         s8, t2, s9
                  mulhu        a2, t3, a6
                  srli         zero, a1, 20
                  slli         s6, s0, 27
                  mulh         a3, a6, a7
                  slli         s10, sp, 19
                  sra          t0, s9, s10
                  sltiu        s7, tp, 1936
                  divu         gp, s8, zero
                  sra          s6, t3, a7
                  slt          sp, s5, t4
                  sub          ra, t3, a2
                  sll          tp, t4, s0
                  ori          t6, a7, -1061
                  mulhu        s0, t2, s9
                  ori          a5, a4, -1254
                  sra          t1, a5, t3
                  div          s2, s1, a2
                  add          t1, s4, t3
                  sub          a3, t3, a1
                  mulhu        s2, a5, t6
                  auipc        t6, 458735
                  add          a1, ra, a2
                  remu         t5, t0, s2
                  or           t6, s2, a0
                  slli         s5, s5, 15
                  slli         s9, a0, 29
                  divu         a5, s4, zero
                  sub          sp, s0, s0
                  mulhu        gp, zero, s9
                  rem          a7, t0, a6
                  rem          ra, gp, sp
                  sra          t2, a3, s8
                  div          s10, t5, s5
                  ori          s9, a7, 981
                  mulhu        a0, t4, s3
                  slti         s4, t5, 487
                  rem          a0, a7, a1
                  srl          a5, a4, s7
                  sra          ra, t1, t3
                  slt          ra, s3, t5
                  xori         t2, tp, -221
                  slli         s8, a7, 6
                  nop
                  srai         t1, t2, 19
                  mulhu        t5, a4, gp
                  lui          s9, 377346
                  srli         zero, s7, 6
                  srli         s2, t6, 23
                  xor          s1, s11, zero
                  xori         a2, t2, 115
                  sltiu        s0, s8, -287
                  andi         ra, a5, 769
                  andi         a3, a1, 1159
                  sra          gp, s5, s11
                  or           t5, s0, s3
                  slt          a7, s10, t1
                  sub          s2, s7, t1
                  remu         s6, a3, t6
                  and          t3, a4, t1
                  mulhu        s7, a7, s5
                  rem          s6, s4, gp
                  srl          t6, s8, sp
                  sltu         t0, a5, s1
                  srai         sp, a0, 3
                  xori         s2, a1, -1541
                  sra          s7, s7, gp
                  andi         gp, t1, 1441
                  and          t3, t3, a6
                  srl          t0, a5, s2
                  mulh         s1, s3, s10
                  srl          t4, s4, a3
                  or           s1, s6, s0
                  mulhu        gp, s6, gp
                  and          s4, gp, t3
                  srai         t1, s7, 18
                  srli         a0, a3, 29
                  div          t2, a6, s7
                  sra          s1, t0, s0
                  sub          s7, s7, s8
                  xor          s9, a2, s5
                  lui          a7, 236385
                  mulhu        a1, a2, s8
                  auipc        t4, 844011
                  slti         t0, t5, -2
                  xori         t1, t6, -2026
                  mulh         t6, a7, a0
                  mulhu        s10, sp, a4
                  and          a4, s2, t3
                  remu         zero, a2, s5
                  slt          s9, a1, s3
                  sll          s10, s3, s11
                  remu         a1, s5, s8
                  srli         a2, s2, 29
                  sltiu        s7, s5, 974
                  add          a4, s11, ra
                  srl          tp, t3, a6
                  xori         a1, s4, -1462
                  srli         t0, gp, 16
                  mulhu        s8, a0, a6
                  xori         a5, s0, -1675
                  addi         t6, tp, -944
                  and          a1, t0, ra
                  and          s9, zero, s1
                  srli         a3, s7, 31
                  rem          s7, a7, s11
                  sra          s0, t5, s4
                  sltu         t5, a6, s1
                  sra          s1, a0, s8
                  ori          s6, s6, -998
                  div          s4, t1, s6
                  srai         s9, s10, 14
                  srli         t6, s10, 19
                  srli         sp, s5, 21
                  lui          a0, 612254
                  xor          zero, gp, sp
                  xori         s0, ra, 316
                  add          a3, a1, t2
                  sub          a5, a2, a7
                  xor          s6, a0, a7
                  mulh         s9, s0, t6
                  mulh         s2, s5, s3
                  xor          ra, s10, s1
                  slti         ra, a5, -601
                  xori         a1, t1, 1507
                  mulh         s6, s10, s2
                  xor          tp, s0, zero
                  sra          s8, s1, sp
                  nop
                  rem          a2, a6, ra
                  srl          s4, s11, s11
                  mul          s8, s11, t0
                  srai         t1, s2, 13
                  add          s10, a7, s11
                  mulhu        s4, a4, gp
                  rem          s7, s8, t1
                  addi         gp, s2, 913
                  xori         s1, a0, 1470
                  mulhu        a7, a6, s7
                  srai         s5, t2, 27
                  remu         a3, a2, s11
                  sltu         t5, s5, t3
                  mulh         s7, s7, t5
                  nop
                  rem          t1, s6, a5
                  xori         a5, s6, 276
                  div          s7, s10, s1
                  slti         a7, s10, 456
                  addi         s8, s11, 999
                  nop
                  div          zero, sp, a0
                  remu         a1, t5, a6
                  mulh         s2, s5, t0
                  sll          s4, gp, tp
                  ori          gp, zero, 1121
                  srli         s8, tp, 15
                  nop
                  div          gp, a4, t1
                  rem          a2, a2, s3
                  or           gp, a7, a2
                  slti         t6, a5, -205
                  slti         a2, s7, -1706
                  divu         a1, s1, a7
                  slli         t3, zero, 2
                  srai         sp, s1, 0
                  sltu         a5, a6, a1
                  sll          a1, t3, s6
                  slti         s2, s7, -518
                  xori         s0, t2, -1323
                  lui          t1, 479700
                  sltu         ra, a3, t6
                  remu         tp, s6, a7
                  sub          a2, s7, zero
                  sub          s9, s11, s8
                  srli         a0, s11, 3
                  srli         zero, a6, 19
                  mul          t3, s4, t2
                  sltiu        a1, s11, 426
                  mulhsu       t3, s5, s10
                  and          a0, s7, a1
                  sll          s8, s7, t2
                  lui          s2, 454202
                  lui          t1, 738016
                  mul          s4, t1, a7
                  slli         t3, a4, 18
                  xor          gp, a2, t2
                  srai         t0, s5, 9
                  sltu         s4, s5, a0
                  nop
                  srl          zero, a4, ra
                  addi         s6, tp, 1523
                  srai         s10, s2, 26
                  and          t0, s0, a3
                  sll          t1, t2, zero
                  rem          a5, t6, s5
                  or           t0, s1, t6
                  sll          s7, s10, s0
                  remu         s6, t5, s8
                  slti         zero, s10, -324
                  auipc        a7, 913898
                  slli         zero, s4, 20
                  mulhsu       a4, s4, t2
                  divu         t5, t3, a7
                  div          t5, a3, t1
                  srl          t0, tp, t4
                  or           t4, s5, a2
                  nop
                  div          a3, a4, a6
                  mulh         s8, s11, s0
                  or           a1, s7, t2
                  sra          t5, s0, t0
                  and          sp, t4, t2
                  sll          a0, ra, t5
                  xori         s6, ra, 860
                  srli         a0, ra, 2
                  div          a3, a0, a5
                  srli         a7, sp, 3
                  nop
                  sltiu        a5, t5, 1028
                  nop
                  lui          s2, 294055
                  slli         a7, a4, 23
                  remu         s8, a4, s8
                  divu         s10, s10, tp
                  divu         s8, s10, t5
                  auipc        t5, 508650
                  slti         a3, tp, -1042
                  addi         s0, a3, -1245
                  slt          s6, a0, s9
                  sra          a0, t6, s11
                  mulh         t1, a0, a1
                  div          a7, a3, a4
                  xori         gp, ra, 1500
                  divu         s2, a6, s4
                  sltu         a1, s10, t6
                  slt          s9, tp, s4
                  xori         s4, a2, 1577
                  mulhu        s5, a0, t6
                  divu         t3, s5, a2
                  srai         s1, t0, 19
                  or           ra, sp, s3
                  ori          t6, s1, 1033
                  slli         a2, zero, 10
                  slli         s0, t1, 31
                  mul          sp, s5, gp
                  srl          s1, s0, a2
                  lui          a1, 1008158
                  ori          a1, s11, -186
                  slt          s2, s4, tp
                  xori         s2, t3, 1595
                  srli         s9, a6, 16
                  mul          a7, a4, a1
                  lui          s6, 986828
                  sltu         a5, ra, a3
                  divu         s10, a0, tp
                  div          t5, s1, s10
                  mulh         s10, a2, s6
                  div          t6, zero, ra
                  sll          s0, a3, gp
                  remu         t3, s0, t6
                  xori         t1, sp, 1568
                  srli         zero, a7, 17
                  slt          a4, s9, s6
                  andi         s4, s5, -2020
                  ori          t6, gp, -772
                  mul          a7, s3, gp
                  div          a0, ra, t1
                  mulhsu       s8, s6, s7
                  mulhsu       tp, s10, s2
                  mulhu        s7, s0, s4
                  andi         ra, s11, 1605
                  mul          a0, a0, s0
                  ori          tp, a3, -579
                  addi         tp, t3, -301
                  ori          zero, s9, -1992
                  mul          t1, a1, s5
                  divu         s6, s3, s10
                  divu         s9, tp, t3
                  add          gp, s9, t5
                  xori         t6, s6, -868
                  or           s5, s9, s10
                  lui          gp, 342204
                  sltu         s10, ra, zero
                  xori         t1, zero, 1749
                  div          t1, a6, a3
                  slli         t4, a1, 2
                  or           a0, gp, a3
                  slti         s10, s9, -1757
                  srli         s4, t1, 13
                  div          zero, t2, a3
                  sub          s4, tp, t2
                  addi         s5, s11, -86
                  and          a5, zero, zero
                  sra          s0, t2, a4
                  sltu         t3, s0, s5
                  slt          s10, s3, s9
                  xori         s7, a1, 1389
                  xori         t1, t0, 167
                  mulhsu       a1, a4, t3
                  auipc        t6, 1026646
                  sltu         a3, t4, a1
                  slli         s7, s0, 4
                  sltiu        a0, ra, -257
                  srai         s9, t4, 23
                  mulhu        a0, t3, s9
                  mulh         s0, s3, sp
                  srl          a4, s5, a7
                  slli         a2, s5, 23
                  div          a5, s11, t4
                  mulhu        t6, s10, a1
                  mulh         t2, a4, s3
                  mul          gp, s7, a0
                  add          gp, a4, s11
                  add          a0, s6, t1
                  slt          s2, t6, s0
                  lui          a2, 158741
                  sub          t2, t0, a2
                  slli         a7, t2, 29
                  auipc        t6, 678627
                  srl          a0, s4, sp
                  sltu         s2, s3, s7
                  srl          a3, s1, s7
                  or           s2, zero, t2
                  add          s7, a2, t1
                  add          s2, s4, s9
                  sll          s7, zero, s7
                  andi         zero, zero, 48
                  mulhsu       zero, ra, a1
                  and          a4, zero, t6
                  and          t6, a5, s7
                  rem          sp, zero, s7
                  remu         a3, t2, s1
                  mul          gp, t4, a6
                  auipc        t4, 515392
                  sll          t5, zero, sp
                  auipc        a1, 660107
                  rem          s5, a4, a3
                  mulhsu       s4, a2, s10
                  nop
                  ori          t3, zero, 1001
                  rem          t6, s11, s5
                  slt          s9, s9, t1
                  addi         t4, s7, -976
                  sll          s4, s2, ra
                  ori          s10, a4, -1772
                  srai         gp, a1, 20
                  sltu         t2, a5, s1
                  mulh         s4, s8, t2
                  div          a4, s1, a6
                  slli         s9, a6, 31
                  divu         s8, zero, t6
                  rem          s2, t4, a5
                  slli         ra, zero, 12
                  mulh         s10, a0, t1
                  slli         t5, gp, 31
                  or           s10, a0, a3
                  auipc        s8, 446101
                  slt          s4, a0, a1
                  xor          t0, ra, a7
                  and          a7, t5, t0
                  slli         s7, s0, 17
                  lui          s4, 583594
                  div          s10, ra, tp
                  rem          t2, sp, t3
                  sltiu        a0, t0, -1703
                  mulh         a4, gp, a0
                  mul          a5, t1, t5
                  ori          zero, tp, -14
                  rem          t3, a0, s3
                  slti         t6, gp, -1558
                  and          t5, t6, s8
                  addi         ra, a2, 1764
                  mul          s8, s7, a0
                  mulhu        tp, s0, s10
                  slti         s10, s2, 131
                  srli         a4, sp, 0
                  slti         t2, s8, -1172
                  mulhsu       t5, s2, gp
                  xor          t3, s9, t0
                  lui          a7, 420307
                  sltiu        s8, a6, -555
                  slli         sp, s11, 25
                  remu         zero, tp, s9
                  lui          a2, 538788
                  slt          t2, a4, a4
                  slti         a3, a5, 1142
                  ori          s9, a6, -298
                  slti         ra, a6, -1977
                  lui          t2, 552327
                  auipc        s2, 384537
                  srl          a4, s1, s5
                  ori          s5, a5, 1829
                  remu         a2, a2, tp
                  or           s6, a3, t2
                  xori         gp, tp, 1380
                  mulh         s5, ra, a5
                  mul          a1, s2, s5
                  sltu         s5, t3, ra
                  xor          s4, t1, t6
                  srli         s9, t1, 15
                  sll          s8, a7, t3
                  mulhu        t4, t2, s4
                  srai         s9, t5, 27
                  mulhu        t6, s9, s10
                  sltiu        s10, t1, -1948
                  sub          a4, a6, a4
                  xor          s10, t3, s3
                  ori          sp, t3, -720
                  sub          t3, t2, s4
                  lui          s6, 821496
                  or           a3, t0, s4
                  xor          s9, a7, s11
                  srai         s5, t1, 30
                  srl          s8, a2, a3
                  lui          a0, 786507
                  mulhu        s5, t1, s1
                  or           s4, t3, a2
                  lui          t0, 969427
                  or           sp, t2, s6
                  nop
                  lui          t5, 993141
                  lui          s8, 525007
                  mulh         tp, tp, s3
                  and          s4, tp, a4
                  or           s1, s1, a1
                  mulhu        a5, ra, s9
                  slli         s7, t3, 29
                  sltiu        a4, a6, 751
                  andi         zero, s1, -754
                  lui          s6, 545689
                  auipc        s2, 409513
                  nop
                  sltiu        t4, s9, 1132
                  mulhsu       a7, s1, t6
                  sltiu        s1, s7, -1163
                  slli         s0, s8, 27
                  mulhu        tp, a5, s7
                  sll          s9, s8, s3
                  srai         t5, zero, 5
                  or           a0, tp, s6
                  sra          s10, s8, t4
                  or           t4, gp, sp
                  addi         s10, a3, 886
                  sltiu        a0, t6, -1448
                  rem          t6, a0, a1
                  mulhu        s6, a5, s8
                  slt          a5, s9, t2
                  or           s5, t3, a6
                  rem          s0, s10, a1
                  mulh         zero, s7, a1
                  mulhu        a2, t3, t2
                  auipc        zero, 903497
                  mulh         ra, t5, t1
                  div          s7, a3, sp
                  ori          t1, t6, -1494
                  add          a1, a3, a0
                  srl          s6, s0, s5
                  srli         a3, t3, 11
                  mulh         sp, s6, s2
                  sra          t0, s5, zero
                  remu         a7, t2, ra
                  mulhu        s1, s1, ra
                  or           t0, ra, sp
                  rem          s10, sp, s1
                  slti         s0, a4, 706
                  addi         sp, sp, -1706
                  mulh         s1, a2, s0
                  mul          s4, a3, s8
                  sltiu        s8, sp, -317
                  srli         a1, t1, 0
                  add          s0, s4, sp
                  sll          s2, s4, s6
                  srl          t2, tp, s10
                  rem          s5, t4, t5
                  sll          s8, s3, s4
                  remu         s0, t0, t5
                  and          gp, a5, t6
                  add          t1, s2, a2
                  remu         a7, sp, ra
                  srli         a2, zero, 9
                  divu         s2, a0, t1
                  slt          gp, t4, s9
                  addi         a3, a7, -1802
                  auipc        gp, 312854
                  rem          a7, t6, s3
                  mulhu        gp, s7, s5
                  mulhu        s10, t2, tp
                  lui          t6, 613386
                  sltiu        s2, s5, -842
                  and          a3, t0, s3
                  mulh         s5, gp, s1
                  xor          t5, t5, s4
                  rem          s9, t3, a6
                  sub          t6, s9, t6
                  nop
                  lui          a7, 743474
                  sltu         s2, a5, s10
                  divu         gp, a6, a2
                  slt          s9, s4, ra
                  srl          ra, a5, s8
                  sra          t3, t2, s8
                  slt          a1, a2, s9
                  mulhsu       s10, s9, a6
                  ori          s5, s10, -1343
                  div          s6, s6, a4
                  ori          s2, t0, -1006
                  sltu         s5, a1, t4
                  rem          t0, t6, s0
                  slli         tp, s11, 9
                  xor          a5, s5, s0
                  sltu         gp, t4, s7
                  and          a7, ra, a0
                  sltu         s4, zero, sp
                  add          s9, t2, t2
                  ori          t6, zero, -395
                  srai         s0, s8, 7
                  xori         s0, s8, 1912
                  sltiu        t4, zero, 1806
                  or           a7, t5, a4
                  slt          t4, s1, t4
                  slli         a7, zero, 18
                  sra          s10, s0, s3
                  nop
                  xor          t2, sp, t4
                  srai         t1, t2, 31
                  auipc        t5, 115018
                  sltu         s0, t1, t2
                  mulh         s6, s5, a3
                  sub          zero, t6, t4
                  mulh         sp, s7, t4
                  sltiu        a5, s7, 2028
                  ori          t6, a5, 180
                  xor          s6, t1, s11
                  srl          a2, t1, s8
                  srl          zero, t0, a7
                  ori          ra, s0, 1826
                  add          t4, s5, s8
                  sltu         s1, a2, a4
                  addi         a2, t5, 912
                  ori          s1, a1, 1571
                  lui          t4, 912255
                  lui          a7, 455399
                  remu         t0, t1, a3
                  mulh         t0, s8, t6
                  lui          t4, 426392
                  mulh         t5, a2, s3
                  andi         t2, tp, 631
                  mul          t0, t4, sp
                  srai         a4, s4, 7
                  sll          a1, s6, gp
                  srl          s6, a1, tp
                  slli         s8, s9, 30
                  sltiu        t1, zero, 724
                  srai         gp, t1, 28
                  sra          s5, s5, t6
                  div          s4, a1, a4
                  sub          t6, s3, a6
                  ori          s9, s9, 225
                  mulhu        zero, s6, a6
                  srl          tp, a1, s9
                  sra          t4, t0, t5
                  sra          gp, t6, a2
                  srl          t0, a5, s9
                  mul          a0, a5, s4
                  mulhsu       sp, a7, s7
                  mulhu        sp, t0, t2
                  auipc        a4, 635941
                  mulhsu       s4, t2, t1
                  slli         a7, tp, 26
                  lui          a3, 264992
                  sll          s5, a5, s8
                  sub          s0, s0, tp
                  nop
                  slti         ra, a0, -800
                  add          tp, a5, s8
                  or           t6, a5, a3
                  or           a1, t5, a3
                  remu         s8, s4, zero
                  div          s10, s0, s6
                  andi         t2, s9, 1379
                  mulhsu       t3, a3, s9
                  sltu         s0, s2, t4
                  mulhsu       a2, sp, a7
                  sll          zero, a2, t1
                  andi         t5, s11, 1509
                  mulh         s8, s10, s7
                  remu         t6, sp, s11
                  sltu         t5, t0, a1
                  mulhsu       t4, s5, a7
                  mul          t0, s4, gp
                  slti         t0, ra, -1482
                  and          t6, a7, a7
                  xor          s10, s1, t6
                  mul          a5, s5, a7
                  remu         s2, a0, a4
                  mulhu        a5, t2, s6
                  mulh         a2, a5, a1
                  mulhsu       a4, t4, t6
                  addi         s1, zero, -1447
                  div          tp, ra, s9
                  andi         s7, s6, 1197
                  and          s2, s7, s7
                  mul          t3, s4, t0
                  sub          t3, zero, a0
                  sub          ra, a0, a7
                  sra          s4, s3, t5
                  xori         s7, sp, 778
                  rem          s4, tp, a7
                  nop
                  sub          t5, t2, a2
                  nop
                  rem          a4, s1, a4
                  sltu         zero, s11, s7
                  sltu         t6, t5, a5
                  add          t6, s5, a5
                  srai         t2, a5, 30
                  lui          s7, 313634
                  sltiu        s10, s6, -811
                  auipc        a7, 174241
                  add          t6, t0, t0
                  mulhu        gp, s11, a6
                  sltiu        gp, s2, -1582
                  sltu         s7, a4, t6
                  xor          t4, ra, a0
                  divu         s8, s7, s4
                  srli         a7, s9, 19
                  rem          s1, t2, t0
                  lui          s10, 32711
                  sra          t1, t3, s5
                  sltu         s2, s8, s4
                  lui          a1, 6142
                  remu         a0, t0, sp
                  sub          s6, s1, s8
                  auipc        s8, 711641
                  ori          s2, a1, 725
                  sltiu        sp, t2, 1153
                  andi         a7, t6, -1412
                  divu         s1, t6, a1
                  nop
                  sll          a4, a4, a3
                  rem          t6, s10, s9
                  mul          s7, s6, s10
                  slt          s2, t2, s0
                  mul          s6, s3, a3
                  srli         t2, s10, 11
                  srai         t3, s6, 13
                  divu         s10, tp, t0
                  slt          t4, s1, s4
                  rem          s0, s7, zero
                  slt          s10, a6, ra
                  sra          s0, a2, s4
                  addi         s8, t6, 1174
                  addi         ra, tp, 2019
                  sltu         tp, s11, s6
                  andi         t0, s1, -908
                  or           t5, s0, s10
                  sll          sp, s8, t6
                  addi         a2, sp, -215
                  div          gp, a4, sp
                  rem          s2, a1, t2
                  rem          ra, a3, s7
                  div          a5, sp, t6
                  mulhu        s8, a4, a0
                  divu         s7, a7, a0
                  sll          s4, s4, a4
                  mulh         s8, s4, s9
                  mul          s4, t2, t3
                  andi         s10, t3, 1942
                  srl          s7, tp, t0
                  mulh         s5, t3, a1
                  srli         a4, a2, 22
                  add          t0, a2, t4
                  mul          s6, tp, a2
                  slt          t3, a4, a5
                  slli         a7, t5, 10
                  mul          s4, t4, ra
                  mulh         gp, sp, a1
                  and          s6, s9, s7
                  ori          t4, a3, -191
                  sltiu        zero, s7, -522
                  slti         s6, s0, 578
                  xor          a5, tp, s7
                  mulh         zero, a0, gp
                  slt          a2, s1, s2
                  mulhu        s8, t1, a5
                  add          a1, a6, a1
                  srli         t0, zero, 16
                  div          s9, t0, s2
                  sltu         s10, s5, a6
                  xori         s4, a7, -1071
                  sll          a7, ra, s7
                  andi         a2, t0, 1590
                  sltiu        gp, gp, 1299
                  auipc        sp, 777384
                  sll          s9, a2, s11
                  mul          t3, a5, a2
                  srai         t6, s8, 30
                  sub          sp, s6, a4
                  mulhu        a5, t3, a5
                  slti         sp, a5, -1500
                  sltiu        s5, s11, -1403
                  nop
                  addi         a4, zero, -276
                  and          s5, s3, tp
                  xori         s9, s3, -778
                  sub          s5, s5, s0
                  remu         s10, t2, ra
                  slti         t1, t4, 1238
                  nop
                  nop
                  xori         t2, s4, 109
                  nop
                  div          s5, a6, s5
                  mulh         s4, s3, s3
                  ori          s1, s11, 373
                  slti         s2, a0, -1882
                  ori          s6, s7, 1229
                  xori         s5, a2, 794
                  ori          gp, zero, 1131
                  srl          gp, t4, a1
                  sltu         s6, t3, gp
                  sltu         t6, zero, a3
                  addi         a2, t0, -768
                  divu         s2, a4, a5
                  xori         s0, sp, 1485
                  ori          a7, a1, 389
                  nop
                  sub          s2, t1, a7
                  and          a1, s11, t6
                  ori          s4, s5, -1756
                  slti         s1, t0, -783
                  or           t6, t5, sp
                  addi         a2, s0, -1313
                  slti         sp, s2, 1161
                  xori         tp, a0, -1453
                  slli         s1, t0, 24
                  mulhsu       a4, t2, a1
                  add          a7, t1, s9
                  lui          s8, 845064
                  slli         a7, s2, 4
                  sub          a4, a0, t2
                  addi         t5, s1, -1867
                  and          ra, zero, s10
                  slti         gp, s7, 2004
                  xor          s7, t1, s5
                  or           s4, a1, a1
                  mul          zero, t6, a6
                  slli         t6, s4, 24
                  sub          s10, s8, s4
                  slt          t0, a7, sp
                  rem          gp, a7, t4
                  divu         tp, zero, t3
                  sltu         t4, tp, a1
                  sub          s5, a1, a3
                  sra          s10, t4, a3
                  sltu         a3, s7, s11
                  sltiu        a7, s1, -10
                  srai         t5, s6, 13
                  auipc        t3, 744932
                  xor          s1, zero, t4
                  divu         sp, a3, t5
                  slt          s4, t1, a0
                  srli         t5, ra, 14
                  mulhsu       t6, t1, s5
                  nop
                  rem          s6, gp, zero
                  and          a5, a4, s11
                  xor          ra, tp, zero
                  sltu         t0, a2, t1
                  slti         t4, a3, -1333
                  sra          a1, s0, s10
                  slti         t0, a7, -1351
                  auipc        gp, 578352
                  ori          s6, gp, -685
                  sll          a0, t0, s10
                  sll          s10, t6, t6
                  add          a4, s9, a2
                  mulhsu       a4, a3, a2
                  xori         s9, s0, 1506
                  xor          s10, a3, a5
                  ori          t4, ra, 519
                  sltu         t0, t6, t5
                  div          a3, a3, a4
                  nop
                  sltiu        t6, t4, -1921
                  srl          zero, a0, s1
                  auipc        ra, 528170
                  andi         s2, zero, -501
                  slti         a0, gp, 190
                  slli         a1, a2, 12
                  sll          t1, a1, ra
                  auipc        t3, 575370
                  sll          a3, tp, s4
                  mul          s6, t2, a0
                  auipc        a5, 157592
                  lui          s0, 604247
                  srl          a5, a6, t3
                  srl          t5, s7, t6
                  sub          t2, a7, s3
                  slti         a0, s5, 354
                  mulhsu       s2, s4, a7
                  add          a3, s6, s7
                  add          a0, t0, s5
                  mulh         s2, tp, a3
                  add          t4, t3, sp
                  mulhsu       s9, ra, s0
                  slti         t4, t3, 1129
                  sltu         sp, s11, s2
                  mulhu        s10, a7, t0
                  slt          a1, s7, t5
                  mul          s4, t2, s1
                  sltiu        a3, s1, 234
                  slt          s0, a3, a4
                  ori          s9, a4, 369
                  add          a0, a3, t0
                  xor          s2, a6, s1
                  slti         t0, s6, -1138
                  srai         zero, s6, 17
                  srai         t6, s3, 19
                  rem          t6, t0, s4
                  addi         tp, s9, -1313
                  and          a4, tp, a7
                  or           a1, a2, s0
                  mulhu        a5, sp, a0
                  or           a4, a0, a2
                  srl          s0, s6, s3
                  mulhu        t6, s7, a4
                  xor          a1, s10, a0
                  mul          sp, a1, a3
                  addi         s2, t5, 760
                  ori          a5, s9, 502
                  divu         t0, s8, s5
                  add          a4, t5, ra
                  lui          ra, 398046
                  xori         a3, sp, -1342
                  ori          ra, s6, 1596
                  srl          sp, s4, a2
                  xor          a2, a3, t6
                  sltu         s5, s11, s3
                  div          sp, s7, t2
                  sub          s2, s7, s7
                  mul          t2, a0, a3
                  auipc        a0, 688788
                  xori         a0, t5, 977
                  srli         s10, t3, 18
                  sll          zero, s2, a3
                  xor          t3, a4, a2
                  andi         s9, s8, -1872
                  srai         gp, t0, 17
                  srl          s9, s1, s8
                  rem          a2, s11, t3
                  lui          gp, 767654
                  srl          s9, a1, s4
                  add          sp, t1, s10
                  andi         a1, s7, -1315
                  mulh         sp, t6, a1
                  xor          zero, a6, a7
                  srli         s8, s2, 9
                  divu         t4, t3, s1
                  nop
                  slti         ra, a3, 1377
                  xori         s2, s9, 1765
                  mulhu        s9, a2, sp
                  slti         sp, s8, -380
                  slli         t0, s8, 26
                  mulhsu       a7, s7, s9
                  mulhsu       s4, s5, t6
                  mulhsu       a3, s11, t0
                  ori          a7, s3, 1788
                  mulh         zero, s5, a7
                  xor          tp, a0, s7
                  srai         t6, t3, 20
                  mulh         a0, s8, s1
                  slti         s5, a6, 1000
                  div          s5, t1, t4
                  ori          a1, s8, -1204
                  and          a5, tp, s4
                  sra          t2, s6, s10
                  remu         s4, s2, t0
                  or           s1, a6, s7
                  xor          zero, s11, s1
                  rem          t0, t5, a3
                  slti         s9, s1, -2038
                  srai         a3, s1, 20
                  or           t2, a6, a4
                  andi         t4, s0, 604
                  ori          t3, gp, -1020
                  srai         s4, t3, 16
                  remu         t0, tp, s6
                  xor          t0, s10, s4
                  slt          s6, s9, a1
                  divu         a7, t4, s11
                  srai         a5, t1, 19
                  srl          s9, s5, a6
                  auipc        zero, 686790
                  mulhu        s4, t2, s0
                  sra          s8, ra, t5
                  add          gp, a5, s0
                  sra          a1, t6, a6
                  div          t6, s6, s1
                  add          s10, tp, a5
                  slti         s4, a4, -46
                  srai         t3, gp, 19
                  sltiu        s5, a5, 1281
                  slt          sp, s9, a6
                  lui          s7, 546813
                  nop
                  srai         s10, zero, 8
                  sll          a3, a6, t6
                  slli         t3, s7, 17
                  ori          t3, t2, 722
                  addi         t2, t2, 1434
                  mul          t4, s4, sp
                  sll          t0, t1, s2
                  addi         sp, s9, 223
                  andi         t3, t1, 227
                  sll          a5, t2, sp
                  srai         sp, a7, 8
                  srli         s5, a7, 18
                  andi         ra, s11, -1211
                  rem          t2, a1, gp
                  or           s2, a6, s11
                  or           a2, gp, s7
                  mulh         a4, s0, t1
                  nop
                  divu         zero, s2, tp
                  mulh         t4, a4, t3
                  xor          a3, zero, t6
                  mulhu        t3, t4, t6
                  sra          s4, t3, t4
                  mulhu        t1, s10, a5
                  rem          t1, s2, s7
                  remu         t6, s8, tp
                  slt          t0, t0, t3
                  auipc        gp, 539003
                  xori         sp, a5, -1461
                  xori         s8, t5, -427
                  slli         s0, a3, 20
                  divu         gp, s1, a7
                  addi         s2, t3, -1678
                  mul          s2, a5, a7
                  ori          t2, t5, -1729
                  andi         t5, t6, 1785
                  srli         zero, s9, 27
                  mulhu        s7, s9, zero
                  mulhu        s4, s4, a0
                  nop
                  divu         a2, a4, a4
                  sll          s2, zero, tp
                  andi         ra, t5, 1920
                  divu         tp, t5, ra
                  andi         a5, s1, 501
                  div          t4, sp, s6
                  mulh         a5, tp, s5
                  sll          a7, s10, a2
                  mul          s8, s2, t0
                  sll          a7, t3, a6
                  or           s7, s7, a3
                  divu         s10, a7, tp
                  ori          zero, a4, -722
                  and          sp, ra, a3
                  and          a2, a0, a2
                  nop
                  addi         a5, t0, 983
                  andi         zero, s10, -387
                  srl          t5, zero, a7
                  srli         t4, s5, 21
                  srai         t5, s3, 5
                  srli         t5, gp, 27
                  ori          t1, a0, 603
                  andi         t5, s0, 1097
                  lui          t6, 511512
                  sra          zero, t4, s1
                  mul          sp, s5, a7
                  mulh         s5, t1, s3
                  xor          a0, zero, a2
                  remu         s1, s3, s1
                  sltu         a5, zero, t2
                  slt          s4, a4, s8
                  slt          s10, tp, s3
                  auipc        a3, 662403
                  ori          t4, a2, -181
                  divu         t5, a6, a6
                  xor          t5, s11, s11
                  slt          a4, s8, s1
                  andi         t4, gp, -1591
                  div          s7, t3, a6
                  nop
                  sub          s9, a4, s3
                  xor          t0, a2, a0
                  sll          a1, s9, s7
                  sltu         t0, s5, a3
                  srai         s8, s1, 21
                  mulh         ra, a1, sp
                  slli         s9, s8, 0
                  sll          s5, zero, a1
                  slli         t6, s11, 26
                  mulhsu       t4, s3, a4
                  andi         s9, sp, 250
                  srai         sp, s0, 22
                  srai         a7, s8, 15
                  mulhu        s9, s8, s4
                  srl          a4, s1, s4
                  lui          s10, 820362
                  ori          t0, t3, 235
                  nop
                  div          a7, ra, a4
                  xori         a3, t0, 963
                  rem          a2, s0, t0
                  slli         t2, s6, 29
                  srli         s10, a1, 16
                  srli         s2, a6, 10
                  mul          t3, t4, s3
                  div          t1, t6, a6
                  or           zero, a7, s11
                  mulhu        s0, t6, a6
                  and          gp, s4, s5
                  div          s8, sp, t3
                  mulhu        s6, t6, a2
                  divu         s4, s8, a6
                  srai         s1, ra, 29
                  mulhsu       a1, t3, s10
                  div          s6, t4, s5
                  sltu         s2, s10, a6
                  add          a4, s8, ra
                  sub          a1, a0, a1
                  xor          s4, s11, sp
                  div          t0, s5, s5
                  sra          a7, s8, s6
                  mulhu        sp, s5, a3
                  sra          a5, ra, a2
                  xor          t6, s10, gp
                  mul          s10, s4, tp
                  mulh         zero, s7, s11
                  or           gp, a0, a5
                  srli         a2, a3, 31
                  sra          sp, a6, zero
                  or           s2, s0, a3
                  andi         s5, t4, -1543
                  andi         a5, a1, -1733
                  lui          a2, 524021
                  nop
                  sltu         s5, a7, a1
                  sll          t2, a3, t2
                  andi         s4, s4, -584
                  auipc        a7, 802951
                  div          t1, ra, sp
                  sltiu        t1, sp, -853
                  sltu         s10, a2, a7
                  mulhu        tp, zero, a5
                  sra          tp, tp, a7
                  xor          a7, t1, s5
                  srl          t2, sp, s10
                  slt          s4, t3, t6
                  addi         zero, t2, 90
                  ori          t6, zero, 429
                  remu         s6, a4, a6
                  sra          t2, s8, t5
                  sub          s9, s9, t4
                  sltu         t2, t4, sp
                  mul          a3, a5, s2
                  add          s8, a7, t1
                  mulhu        s0, a2, a2
                  mul          s5, s9, a0
                  auipc        s1, 451929
                  add          s8, sp, s10
                  mulhu        a5, a0, a0
                  and          s1, a6, t0
                  rem          t6, t6, a7
                  slli         gp, t2, 27
                  ori          a4, gp, -771
                  divu         s9, sp, a4
                  mulh         tp, a2, a3
                  srl          s0, t4, s11
                  auipc        s10, 1022007
                  lui          s1, 497876
                  or           tp, t5, t6
                  mulhu        sp, t5, s6
                  mulhu        t5, sp, a2
                  srai         s2, s5, 27
                  rem          t3, sp, s4
                  srl          s2, t6, zero
                  nop
                  sll          t1, a7, sp
                  auipc        a1, 357777
                  auipc        s5, 294736
                  andi         a3, a3, 424
                  slt          s10, a7, gp
                  sub          s10, gp, t1
                  sltiu        gp, a0, 438
                  divu         t5, s3, a3
                  ori          s2, s9, 1963
                  srl          zero, a2, sp
                  div          t1, t2, t5
                  div          zero, s7, s3
                  mul          t1, tp, ra
                  mulhsu       s0, a4, s8
                  andi         t2, sp, -509
                  andi         s5, gp, 1743
                  addi         t1, t4, 505
                  slti         s0, s1, 945
                  nop
                  srl          a4, s2, gp
                  mulhsu       s6, t6, t0
                  add          t3, ra, t2
                  xori         s5, s5, -1893
                  divu         s6, a4, s0
                  sub          t4, tp, s9
                  mulhu        t4, s8, s6
                  mulhu        t1, ra, a2
                  sltu         a5, s4, t4
                  add          t0, a0, s0
                  remu         a4, t2, s1
                  xori         a4, s4, 1218
                  or           a7, t4, t1
                  sll          sp, s0, a2
                  sltiu        a0, tp, 1359
                  mulhsu       s10, a4, t2
                  nop
                  sltu         a2, s7, t2
                  xor          t1, s10, s4
                  slti         s9, s7, 1839
                  divu         s7, tp, ra
                  sltu         s9, a7, s7
                  auipc        s5, 268509
                  mul          s5, s6, t4
                  mulhsu       t6, s0, s8
                  nop
                  div          t3, s2, gp
                  sll          t6, t1, s5
                  xor          s9, a1, s10
                  add          zero, t1, s0
                  xori         a7, a6, -64
                  addi         gp, s10, -193
                  xori         t5, t2, -534
                  nop
                  srli         s1, t1, 28
                  xori         a7, t3, -1370
                  slt          s7, s5, a2
                  mulhsu       zero, s3, t4
                  srl          zero, s6, a1
                  sltiu        t4, a6, 1163
                  remu         sp, s7, a4
                  sltu         s1, s5, s0
                  rem          t3, s5, a3
                  srl          t2, ra, a1
                  xor          a2, s6, ra
                  xor          a0, t3, ra
                  rem          s2, s3, s5
                  and          t2, s3, a1
                  divu         ra, a7, sp
                  sltiu        a7, s11, -1856
                  mulh         gp, sp, a6
                  divu         a2, a3, t5
                  andi         zero, a5, -1109
                  sltiu        a1, t0, 1334
                  slti         t3, a4, -1428
                  xori         t3, t6, -1986
                  slli         a2, s1, 13
                  srl          a2, t3, a6
                  mulhu        a5, a3, ra
                  rem          s2, t3, t5
                  div          s8, a3, a1
                  mulh         ra, ra, a7
                  xori         a7, t6, 1635
                  srl          a4, a5, gp
                  sltu         zero, a0, a5
                  sltu         gp, s7, t6
                  slti         a2, a6, 1495
                  srli         t5, a4, 2
                  rem          s5, s9, a3
                  mulhsu       t2, a4, s9
                  addi         s10, a4, -243
                  slli         t0, a7, 5
                  ori          s0, a5, 1200
                  xor          a3, s1, a4
                  divu         a2, s6, a3
                  mul          a0, t2, zero
                  sub          a5, t2, s6
                  mulhu        s2, t1, t1
                  rem          s10, s2, a0
                  div          t4, t4, a6
                  ori          gp, a0, -988
                  mulh         t0, tp, a1
                  slt          t2, a0, s0
                  slt          gp, tp, tp
                  rem          t2, s1, a4
                  rem          t4, ra, s10
                  rem          s8, a6, a5
                  divu         s2, s0, a1
                  sub          a2, tp, a7
                  remu         s6, s2, t3
                  srli         s6, zero, 10
                  addi         t5, t5, 1020
                  andi         s9, a5, 915
                  mulhsu       a7, s2, a7
                  addi         t6, s10, 966
                  mulh         s6, s0, s5
                  remu         a2, a5, s11
                  mulhu        tp, t0, a5
                  addi         a3, a3, 522
                  sll          t1, a1, a5
                  sltu         t3, t1, s2
                  srai         t0, s9, 24
                  sltiu        t5, a3, -753
                  remu         s2, s5, a1
                  and          tp, s5, t2
                  mulh         t5, s5, s2
                  nop
                  srl          s9, ra, s11
                  nop
                  srl          s7, s8, gp
                  slli         s5, s9, 13
                  and          s10, a2, a7
                  sra          t4, s7, a5
                  sltu         s4, s2, t1
                  sltiu        s7, s10, -1894
                  srli         s0, a3, 30
                  slli         t3, s5, 20
                  srli         s9, t5, 11
                  sub          t5, t3, ra
                  sltu         a7, s3, s8
                  srl          tp, a0, sp
                  slt          s8, t0, a1
                  mulhsu       gp, s11, gp
                  slti         a7, s5, -1947
                  or           a2, t2, gp
                  ori          s10, t5, -1354
                  and          s6, s0, t5
                  xor          t6, a7, a1
                  addi         s5, s0, -1930
                  slli         a7, s7, 8
                  remu         zero, a6, t0
                  nop
                  xor          t3, t1, a4
                  slli         s10, t3, 13
                  mul          ra, a4, s2
                  srl          gp, t0, a1
                  lui          s7, 49025
                  sltu         gp, t4, s5
                  auipc        s9, 101401
                  andi         zero, t3, 1315
                  mul          zero, a2, t5
                  sltiu        a1, t6, 1795
                  and          zero, t1, s9
                  srli         s2, a0, 4
                  auipc        a1, 313055
                  divu         s5, sp, s1
                  lui          s5, 434253
                  nop
                  slli         s7, t6, 21
                  sll          zero, s9, a2
                  nop
                  auipc        s2, 850492
                  divu         t3, s2, a7
                  mul          s9, t3, s4
                  xori         a3, a1, 1827
                  slli         a4, ra, 21
                  sltu         a0, zero, t2
                  sltiu        t1, t6, -569
                  mulhu        s7, gp, s7
                  xori         a7, zero, 798
                  mulhu        s6, s7, sp
                  sll          s10, t2, a7
                  xori         t3, a6, 1856
                  ori          s0, t4, -1465
                  slti         t0, t5, -1173
                  slt          t0, ra, s5
                  mulhsu       s6, s3, ra
                  mul          t1, a7, s10
                  mulh         s10, a6, t2
                  mulhsu       tp, s8, s2
                  lui          s9, 311522
                  mulhsu       s0, a6, s1
                  andi         s7, t6, 1375
                  mulhsu       s4, s11, s3
                  slt          a4, s6, t6
                  mulhu        sp, s3, a4
                  sub          s9, s4, gp
                  sltu         s6, s7, s10
                  andi         s10, t4, 1989
                  ori          a3, a5, -643
                  and          ra, a5, s8
                  ori          t6, s4, 1126
                  add          s6, t3, a2
                  sub          t6, ra, s9
                  addi         s5, zero, 1541
                  mulhu        t3, t0, a2
                  sll          t4, zero, t5
                  srai         s2, t4, 25
                  srai         s7, a6, 6
                  sll          t6, sp, zero
                  add          t6, s8, t3
                  xor          ra, s1, s6
                  slti         a4, s7, -265
                  srl          s10, a5, t0
                  srli         t3, s5, 25
                  addi         t3, a0, -898
                  mulhsu       zero, s4, t5
                  sub          t1, gp, s11
                  srl          a5, t2, s2
                  sltiu        t2, t0, 192
                  andi         zero, t5, 1071
                  auipc        a5, 102546
                  xor          a5, s5, s9
                  mul          a0, a6, s0
                  nop
                  sltu         a3, t6, a4
                  srli         s4, a2, 26
                  rem          a2, s0, t4
                  ori          s8, s4, -171
                  divu         sp, s7, zero
                  mulhu        a3, a5, a6
                  sll          s4, t0, t4
                  sll          sp, s9, tp
                  div          tp, sp, s11
                  sra          s5, s10, a1
                  ori          s1, ra, -1935
                  nop
                  or           ra, s9, s4
                  sltu         a4, s11, t5
                  auipc        a1, 651077
                  or           s4, a6, ra
                  slt          a1, t0, a4
                  srl          t5, t0, s3
                  andi         t6, s4, -245
                  slt          a7, zero, s2
                  srai         t6, s5, 5
                  rem          ra, gp, t0
                  mulhu        s10, s4, t6
                  sltiu        t6, zero, 1596
                  andi         a4, a6, -1138
                  slti         sp, s6, 463
                  remu         tp, a7, t1
                  remu         zero, s0, a3
                  xor          t2, tp, zero
                  srl          s9, t5, t3
                  add          a2, t4, s0
                  sll          a1, s5, a7
                  and          s4, t4, t6
                  xori         t6, s9, 390
                  slti         tp, s4, -1781
                  ori          t3, s0, -1375
                  mulhsu       gp, t0, s7
                  xori         gp, s8, -579
                  and          s4, sp, s6
                  mulhu        a7, a6, tp
                  add          tp, s5, t3
                  add          t5, a3, s9
                  mul          s10, a6, s7
                  mulhu        a2, s6, sp
                  lui          s2, 228274
                  sltiu        zero, a2, 1546
                  mulhu        t0, s3, a1
                  mulhsu       a7, ra, s0
                  sub          a5, s7, s6
                  or           t6, t5, a4
                  sub          a0, s10, t3
                  addi         t5, ra, 894
                  rem          s4, t3, s3
                  add          sp, s5, a1
                  srl          a7, t2, a1
                  and          t0, gp, t6
                  mulhu        t6, a7, s5
                  mul          s4, t2, t3
                  srl          a0, a0, t0
                  sub          s2, s5, a4
                  ori          s8, t1, 87
                  sll          a4, s0, t3
                  and          t4, a3, s11
                  nop
                  sll          s6, a0, a0
                  add          a5, s10, s3
                  ori          t1, a0, 1043
                  rem          t5, tp, a0
                  mulh         a4, s1, s4
                  mulhsu       s2, t0, s9
                  rem          a5, a0, t6
                  srli         s4, s5, 19
                  remu         s6, t4, zero
                  mul          sp, s3, a5
                  sltu         a7, s1, a3
                  andi         a7, s5, -2037
                  rem          s1, sp, s5
                  add          s5, sp, t1
                  xori         s2, s0, -1141
                  addi         t3, tp, 1430
                  andi         s1, t0, 332
                  slti         s1, t2, -1933
                  addi         t2, a1, 170
                  mul          a3, ra, s2
                  srai         t3, a5, 11
                  srl          t5, t1, a4
                  auipc        s6, 45403
                  sll          a2, a0, a6
                  sltu         s0, s4, s5
                  sltiu        a1, s1, 1137
                  mulhu        a7, t5, s9
                  sub          t6, a2, a1
                  slti         a1, s10, -684
                  srli         t1, ra, 15
                  mulh         a4, tp, s7
                  mulhsu       s7, s2, s7
                  srli         s6, t0, 23
                  auipc        t5, 29642
                  ori          zero, t5, -1499
                  xori         s9, s0, 726
                  slti         t4, zero, -62
                  addi         s7, s5, 1814
                  sub          sp, ra, a6
                  sltiu        s8, a3, 926
                  slli         a5, t4, 6
                  div          s5, a0, s2
                  div          t2, s9, a2
                  remu         s10, s11, ra
                  auipc        s1, 207039
                  srai         s7, t3, 8
                  auipc        s7, 406300
                  sltu         a7, s5, t0
                  sltiu        s1, s0, 415
                  or           t0, s3, t5
                  mulh         t1, sp, a3
                  or           s4, a5, t4
                  mulhsu       s7, a2, t3
                  add          t6, zero, t4
                  srl          s2, t0, s2
                  and          s10, a4, s4
                  sub          s2, tp, s9
                  slti         a7, a6, -306
                  mul          a2, a3, s1
                  xor          a5, s10, sp
                  addi         a7, t0, -1372
                  sltiu        s6, a2, -1817
                  add          sp, s7, s0
                  add          t2, zero, s10
                  mulhsu       s1, zero, zero
                  rem          gp, t1, s10
                  mulh         s5, s4, s4
                  sra          t3, a6, a6
                  slti         a3, ra, -1189
                  mulhu        s2, s7, a2
                  add          gp, s10, t0
                  rem          s6, tp, t4
                  slti         tp, t5, 554
                  srl          t5, a3, s3
                  xor          a7, s8, t5
                  add          s7, t2, s5
                  mul          a0, t5, t4
                  or           a1, s11, t4
                  remu         s7, s3, t5
                  lui          ra, 646619
                  sll          s8, ra, a4
                  slt          a4, a5, s0
                  remu         s1, s9, a4
                  srli         s0, a6, 8
                  mulhsu       s6, t3, a2
                  srai         tp, t5, 13
                  mulhsu       s5, a0, a5
                  addi         a2, s4, -1696
                  or           t3, t2, t6
                  sra          s2, t6, t6
                  slli         t5, a7, 2
                  sra          t0, s8, t3
                  srli         t2, s7, 10
                  sub          t6, t5, s7
                  mulhu        t6, t1, t0
                  rem          s4, s7, a0
                  divu         s8, t1, ra
                  mulh         s10, t2, zero
                  divu         s4, s8, a2
                  sub          s9, a1, t0
                  lui          t3, 70819
                  andi         ra, s9, 1239
                  sltu         t6, ra, zero
                  and          zero, s1, t4
                  remu         t1, s11, gp
                  slli         a2, s6, 20
                  slti         a1, s3, 1722
                  add          s1, s7, t0
                  divu         s8, s7, t2
                  remu         s9, s6, t4
                  srli         a0, t3, 3
                  addi         a1, s4, 1989
                  slli         t2, a6, 15
                  mulhu        s2, gp, a7
                  or           ra, zero, s11
                  div          zero, s10, t5
                  mulhsu       t1, a6, a0
                  or           s7, a3, s6
                  sra          a0, s4, t1
                  srai         ra, a4, 26
                  mul          s10, t4, s6
                  slli         s8, a1, 3
                  slli         s6, s5, 12
                  divu         gp, s1, a4
                  mulhu        a5, t4, s8
                  divu         s8, t6, gp
                  and          sp, sp, s9
                  xor          t5, t5, t4
                  sltu         gp, t4, t6
                  divu         s9, s1, s8
                  andi         a5, a6, -759
                  mul          t1, s5, t2
                  add          ra, s5, ra
                  xori         zero, t0, -190
                  lui          t5, 527203
                  mulhsu       s9, s7, s6
                  divu         t5, t1, a2
                  addi         gp, s1, -981
                  rem          a7, s4, a7
                  rem          a1, t0, t1
                  mulh         t1, a5, a1
                  add          t2, s4, a1
                  mul          t6, t1, s7
                  lui          a1, 17875
                  xori         a4, t5, -2030
                  mulhu        t6, s1, s0
                  sltiu        ra, a0, -583
                  or           sp, t4, s3
                  mulh         tp, a1, ra
                  slli         s10, a3, 30
                  mulh         ra, tp, s4
                  sltu         t0, a2, a7
                  sra          a7, t5, t6
                  slt          s8, s7, s0
                  andi         s6, t4, 1751
                  mulhu        a7, s2, s2
                  lui          t4, 539254
                  mul          s8, s7, s8
                  slti         s10, a4, 134
                  slli         t4, a5, 2
                  andi         gp, s10, -542
                  xor          s5, gp, s0
                  ori          a3, t0, -154
                  divu         s5, zero, s4
                  add          a1, a2, s9
                  sll          a2, a2, s2
                  sll          gp, s7, s7
                  ori          s8, s3, -1780
                  slti         s2, a0, -1815
                  mulh         s7, s3, s5
                  addi         s2, a1, 1398
                  xor          a2, t1, s8
                  and          s2, sp, s11
                  addi         a1, t4, 1691
                  mulhsu       s6, t1, sp
                  or           gp, a5, s2
                  rem          s2, t3, gp
                  slti         t1, t6, -894
                  slt          s8, a5, a7
                  auipc        s5, 984932
                  srl          a1, s1, t3
                  addi         gp, t0, -1583
                  and          s7, tp, s6
                  slli         t4, ra, 6
                  srli         t5, s4, 26
                  slt          t6, sp, s7
                  srli         s0, s10, 13
                  slli         t3, t0, 28
                  or           s9, t2, a4
                  add          s8, a0, a1
                  srai         tp, zero, 29
                  sra          s0, gp, sp
                  sub          tp, s9, s0
                  rem          t4, t4, t0
                  addi         s9, s6, 1709
                  slli         s10, a0, 31
                  sltu         t0, a3, a4
                  slt          t6, tp, gp
                  sra          s9, a5, t6
                  slt          gp, s5, t3
                  ori          s10, s1, -1823
                  mulh         sp, a7, gp
                  ori          t3, s10, 1019
                  or           s0, s2, s9
                  or           a3, s10, a2
                  mulh         zero, t1, s10
                  and          ra, t1, a0
                  divu         t3, s8, s10
                  xor          t1, tp, s6
                  mul          a7, s5, t1
                  sltiu        s0, s11, 946
                  sub          s5, s4, s11
                  slti         a0, a5, 148
                  addi         tp, t0, -1586
                  sra          tp, s1, sp
                  mul          zero, t4, t2
                  or           s8, a2, s3
                  addi         s6, s9, 1582
                  auipc        ra, 579448
                  div          t6, s0, s7
                  srl          t5, tp, a0
                  addi         t3, a7, 1053
                  remu         t6, s11, zero
                  slt          a2, s11, t2
                  rem          gp, s5, t1
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align           2
mtvec_handler:    
                  addi x27, x27, -4
                  sw  x16, (x27)
                  add x16, x27, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x27, x16, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x9, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x9, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x9, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x9, x21, ecall_handler
                  li x21, 0x1
                  beq x9, x21, instr_fault_handler
                  li x21, 0x5
                  beq x9, x21, load_fault_handler
                  li x21, 0x7
                  beq x9, x21, store_fault_handler
                  li x21, 0xc
                  beq x9, x21, pt_fault_handler
                  li x21, 0xd
                  beq x9, x21, pt_fault_handler
                  li x21, 0xf
                  beq x9, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x16, x27, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x27, x16, zero
                  lw  x16, (x27)
                  addi x27, x27, 4
                  mret

load_fault_handler:
                  add x16, x27, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x27, x16, zero
                  lw  x16, (x27)
                  addi x27, x27, 4
                  mret

store_fault_handler:
                  add x16, x27, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x27, x16, zero
                  lw  x16, (x27)
                  addi x27, x27, 4
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x16, x27, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x27, x16, zero
                  lw  x16, (x27)
                  addi x27, x27, 4
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x16, x27, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x27, x16, zero
                  lw  x16, (x27)
                  addi x27, x27, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x16, x27, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x27, x16, zero
                  lw  x16, (x27)
                  addi x27, x27, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
