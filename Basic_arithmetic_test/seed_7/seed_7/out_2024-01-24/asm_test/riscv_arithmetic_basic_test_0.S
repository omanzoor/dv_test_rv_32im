.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x25, 0x40001104
                  csrw 0x301, x25
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  li x25, 0x0
                  csrw 0x304, x25 # MIE
                  mret
init:             
                  li x0, 0xb
                  li x1, 0x0
                  li x3, 0xff96cb3f
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x2
                  li x7, 0x587aedc0
                  li x8, 0x2b84b367
                  li x9, 0xfd4ea33a
                  li x10, 0x5
                  li x11, 0x1
                  li x12, 0xf018fb60
                  li x13, 0x0
                  li x14, 0x9579483a
                  li x15, 0x101e3530
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0xf3203e66
                  li x20, 0xfce198b9
                  li x22, 0xdb1a31b
                  li x23, 0xf
                  li x24, 0x1
                  li x25, 0x1
                  li x26, 0xf56a81ea
                  li x27, 0xc
                  li x28, 0x0
                  li x29, 0xfed468bd
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x21, user_stack_end
main:             or           t0, s9, s10
                  add          s4, t2, t3
                  rem          a0, s0, sp
                  rem          a0, a3, t5
                  nop
                  sll          zero, tp, t6
                  sltiu        s6, a4, 731
                  slli         tp, gp, 7
                  addi         s7, s4, -970
                  srli         a6, zero, 11
                  div          t5, ra, s10
                  lui          t0, 641724
                  andi         a5, s7, -1245
                  sltiu        a6, ra, -463
                  sltu         t3, t6, s9
                  sll          t4, s11, t6
                  andi         a4, t5, -1093
                  sra          t0, t5, t6
                  xor          s0, t6, s0
                  mulhu        s11, t2, t4
                  lui          t3, 381484
                  nop
                  ori          s2, ra, -1463
                  and          t2, a4, s1
                  sll          s10, sp, s6
                  nop
                  or           t5, t5, t3
                  srli         a7, a5, 9
                  srai         t5, s7, 2
                  add          t5, a5, s3
                  sub          t0, ra, s1
                  auipc        s4, 20479
                  slli         s11, ra, 31
                  sltiu        t1, a7, -631
                  remu         a4, gp, a7
                  srl          gp, s2, t6
                  or           s10, s11, a4
                  sltiu        zero, s4, 1362
                  mulhsu       a1, a4, a5
                  lui          s9, 40705
                  sll          a1, s7, s9
                  srli         a7, s5, 24
                  addi         a1, s9, -1017
                  sub          a4, a3, s2
                  sub          a1, a2, ra
                  mulhsu       gp, s6, s4
                  sra          t3, s7, a1
                  sltu         a6, s6, a0
                  auipc        t1, 480792
                  div          t6, s11, t0
                  auipc        zero, 521820
                  xor          s8, a5, t1
                  slti         t3, a0, 1568
                  sll          t3, a0, s7
                  lui          t2, 104789
                  mul          a4, t0, t5
                  slli         a1, a0, 24
                  divu         s0, a0, s8
                  andi         t3, t0, 1016
                  slt          t6, a6, s11
                  lui          a7, 877163
                  mulh         t6, s7, t4
                  ori          t3, t0, -140
                  ori          a7, s9, 1323
                  slt          t2, a7, s1
                  lui          s1, 147672
                  mulh         a5, s10, s0
                  divu         t4, t3, a5
                  slti         t1, a4, 118
                  srli         s6, a1, 24
                  auipc        a0, 32551
                  xori         a0, s10, 771
                  mulh         s0, t4, sp
                  srl          t3, s9, a3
                  sltiu        s1, a2, 1331
                  nop
                  nop
                  mulhsu       zero, ra, a7
                  ori          s10, t3, -2012
                  xor          s2, sp, t0
                  xori         s8, t6, -1920
                  divu         t5, s4, s9
                  mulhu        a7, zero, gp
                  srli         t4, s2, 22
                  mul          s3, ra, tp
                  sll          a3, s3, t4
                  sltu         a1, s9, a6
                  srai         t0, a0, 25
                  xori         t1, t4, -45
                  xori         s11, t0, -1707
                  rem          zero, gp, s5
                  srli         t1, t4, 4
                  sltiu        tp, a7, 407
                  addi         s7, ra, -1654
                  slt          a5, s11, a5
                  xor          t0, ra, t6
                  and          a4, t6, s4
                  or           zero, a5, t3
                  ori          t2, gp, 1381
                  xori         a7, sp, 79
                  xori         s10, s0, -1419
                  addi         s7, a4, -246
                  or           gp, sp, a2
                  and          s11, t4, t1
                  mul          a5, t0, a5
                  mulhsu       t0, t2, s5
                  remu         t0, sp, t5
                  xor          a6, s0, t0
                  div          ra, a6, gp
                  srl          t4, sp, t2
                  ori          t2, tp, -1513
                  sltu         t4, t3, s9
                  slli         t1, s11, 30
                  sra          a7, s0, s5
                  sltu         t4, t5, a2
                  divu         a6, t0, tp
                  sltiu        a3, s8, 1594
                  slti         s4, s7, 1027
                  auipc        gp, 430806
                  div          s2, sp, ra
                  sltiu        t4, t2, -1668
                  div          t5, s0, ra
                  sltu         s6, s8, a2
                  mulhu        t5, s1, a2
                  nop
                  sltiu        zero, s7, 2034
                  xor          t0, sp, t2
                  lui          a7, 768120
                  sra          t2, sp, t3
                  rem          t4, s6, s4
                  add          tp, t6, s4
                  or           s11, a2, s2
                  nop
                  lui          a4, 413438
                  rem          a1, t0, s11
                  or           s6, t2, s4
                  nop
                  auipc        tp, 981991
                  remu         a7, s7, sp
                  auipc        s0, 490749
                  auipc        s10, 793707
                  mulhu        a3, s2, a1
                  or           a7, s10, t2
                  andi         s9, t3, 223
                  srl          a3, a5, t5
                  srai         ra, a2, 11
                  slli         ra, a7, 7
                  xori         s1, s5, -149
                  mulh         s8, zero, a0
                  divu         s3, s2, a6
                  slti         a7, tp, -182
                  mul          a3, sp, s0
                  rem          a3, s10, a0
                  sub          s3, sp, t3
                  mulhsu       tp, t1, t6
                  div          t1, a0, s11
                  rem          tp, s0, a0
                  mulhsu       a6, ra, t4
                  sra          tp, s11, t1
                  or           a0, sp, gp
                  and          a0, a6, s8
                  sub          s9, a5, s5
                  sltiu        tp, a0, -1386
                  slli         s6, a7, 30
                  sub          s11, a7, a3
                  divu         zero, tp, a2
                  sll          a5, a3, sp
                  sll          s2, a2, s4
                  ori          t1, t5, -936
                  and          ra, s1, t2
                  div          s10, s1, s8
                  and          zero, a1, t6
                  slt          s4, s10, s8
                  remu         s7, t5, t5
                  lui          t4, 822625
                  nop
                  srli         a7, s3, 1
                  andi         s2, s6, -356
                  ori          ra, t2, -542
                  mulhsu       gp, s11, tp
                  sub          s0, s5, a0
                  srl          s11, a4, s10
                  srai         t1, t4, 24
                  remu         s3, ra, zero
                  mulh         s7, s6, s6
                  sltu         t0, s11, s8
                  lui          a6, 577130
                  sltiu        s4, s6, 384
                  divu         a3, t2, t2
                  sub          a7, a7, sp
                  rem          a7, a5, a0
                  sltu         s7, t0, a2
                  remu         s1, gp, ra
                  mulhsu       a5, gp, a2
                  srai         s7, ra, 17
                  slti         s11, s8, -1036
                  xori         t4, s0, -1468
                  mulh         t0, a5, ra
                  slli         s11, s3, 28
                  slti         t3, t2, -2008
                  div          gp, s3, s5
                  auipc        a6, 24116
                  sltu         a3, a7, s9
                  add          t4, s11, gp
                  sra          t2, gp, a2
                  sltiu        t5, ra, 1397
                  nop
                  mulhsu       t4, s11, s1
                  and          s4, a6, a7
                  sra          tp, sp, gp
                  mulhu        s1, a5, a3
                  addi         zero, t2, 1294
                  or           gp, a1, a4
                  or           s11, s6, s5
                  auipc        s11, 778209
                  or           t1, a7, s1
                  slti         s6, a0, 1917
                  div          s4, t0, t5
                  slt          s11, t2, zero
                  slti         t6, a3, -1553
                  sra          t4, s9, a4
                  sltiu        gp, s5, 1640
                  srai         s4, a0, 11
                  div          s8, t3, s8
                  auipc        s2, 587593
                  srai         s7, sp, 8
                  mulhu        t5, tp, a4
                  rem          s0, s4, t4
                  sltu         s4, t0, s5
                  ori          s9, s7, -619
                  slt          tp, a7, ra
                  or           ra, tp, s11
                  or           s0, t1, a2
                  srl          a4, s3, t4
                  rem          t4, a2, ra
                  mul          s1, a6, a3
                  srai         t0, s7, 25
                  div          t4, s3, s4
                  sltu         s1, zero, a2
                  ori          s7, t3, 1108
                  mulh         gp, t6, t6
                  sra          tp, s4, s1
                  rem          s9, a1, t6
                  srl          t1, gp, sp
                  div          a0, s8, sp
                  andi         a3, s8, 1339
                  sltu         ra, t6, s6
                  sltu         s10, t3, t4
                  sltiu        ra, s2, -2038
                  slli         a5, a5, 12
                  nop
                  auipc        s1, 759345
                  add          t2, s11, s0
                  mulhsu       s6, gp, s2
                  divu         gp, t0, s7
                  slti         s1, s3, -353
                  lui          a1, 392476
                  sll          s2, s0, t4
                  add          s3, s4, s1
                  divu         s1, a4, s10
                  xor          a4, a6, a4
                  remu         s7, s10, a0
                  mulhu        tp, s8, t0
                  slli         a6, a4, 23
                  sltiu        a0, t6, 1134
                  sll          a5, t4, gp
                  divu         t6, a3, t2
                  slli         t5, a4, 16
                  divu         s4, s1, t2
                  slti         s9, s5, 1298
                  div          t2, a5, s4
                  sra          t3, s1, zero
                  sra          tp, sp, t4
                  mul          s2, s7, t2
                  slti         a1, t4, -768
                  slt          s7, a1, a7
                  xori         s3, a7, -1636
                  srli         a6, ra, 20
                  sub          tp, t3, a7
                  sra          t6, a6, t2
                  add          t5, a0, tp
                  div          t1, t1, s5
                  auipc        s11, 233253
                  addi         a5, t0, -1261
                  andi         ra, sp, -576
                  xor          s2, s9, t6
                  mulh         a5, sp, t4
                  auipc        s0, 434535
                  mulh         a3, s7, a7
                  slt          t5, s3, gp
                  mulh         s3, a1, t5
                  ori          a4, ra, 1934
                  srl          s4, s8, s3
                  slli         s4, a3, 24
                  lui          zero, 407841
                  div          s7, a3, a3
                  sub          t1, a5, a4
                  lui          s2, 639922
                  nop
                  remu         s3, s10, a1
                  slt          s8, s5, a5
                  sll          tp, s6, s2
                  mulhu        t4, s9, s0
                  slli         a7, s5, 19
                  slt          ra, a5, s11
                  srai         a4, t0, 2
                  mulh         s11, a4, gp
                  sltiu        s3, s6, 1840
                  mulh         s2, t3, t0
                  lui          s7, 262638
                  mulhsu       t3, t4, s4
                  mulhsu       s2, a2, s6
                  sll          t5, t4, t0
                  sll          t3, s4, tp
                  andi         t0, zero, -1015
                  slti         zero, a6, 1132
                  and          a7, s0, a0
                  sltiu        tp, tp, 511
                  sltu         t1, a5, s8
                  divu         zero, s8, a0
                  slli         zero, s3, 12
                  ori          s2, a7, -546
                  ori          gp, zero, -596
                  srli         s2, s0, 10
                  srli         s7, a6, 20
                  auipc        tp, 524701
                  srai         tp, a1, 24
                  lui          s2, 914317
                  sra          a1, a0, tp
                  xori         a7, s4, 856
                  sub          a3, zero, t0
                  slti         a4, s5, 2019
                  rem          ra, t0, s2
                  and          s9, a1, s11
                  sll          t2, a7, a3
                  sra          a1, tp, gp
                  ori          a4, s5, -1833
                  sra          s4, a3, tp
                  srli         tp, s11, 13
                  andi         s8, t3, 153
                  mulhsu       gp, a6, a4
                  srai         s9, s7, 31
                  nop
                  remu         ra, t3, s10
                  add          s6, s0, s8
                  sll          s9, sp, t6
                  auipc        s3, 969879
                  or           a4, a7, s3
                  auipc        s8, 775852
                  addi         a5, s11, 236
                  srai         a7, a6, 17
                  srai         a4, zero, 17
                  remu         s0, a1, s4
                  sltiu        tp, s8, 1964
                  srai         a4, a6, 8
                  mulhu        tp, s4, a0
                  andi         a4, a4, 633
                  srli         s4, a6, 20
                  andi         a3, a5, 1993
                  and          s2, a0, a1
                  addi         t2, s10, 1414
                  lui          s0, 860504
                  xor          t6, sp, s6
                  srai         t2, a3, 3
                  remu         t4, a1, s4
                  srai         s11, tp, 25
                  slt          gp, s6, a7
                  xor          a0, s11, a1
                  divu         t4, t3, s5
                  rem          s2, t6, s3
                  xor          t4, sp, t6
                  sra          gp, s6, s7
                  slti         a6, t3, -1180
                  slti         t4, t4, -251
                  xori         t6, sp, 1910
                  nop
                  lui          s3, 390993
                  ori          t3, s8, -1239
                  lui          t6, 769960
                  srli         t4, a4, 4
                  sll          s6, s8, s5
                  slti         a3, s5, 680
                  and          a1, t1, t3
                  lui          t3, 54431
                  and          s1, t6, a6
                  xor          a3, t1, t4
                  ori          a7, a6, 1511
                  ori          s4, s4, 840
                  sltiu        a4, s2, 679
                  rem          gp, a6, s8
                  mulh         s4, s5, s2
                  rem          a7, s10, t3
                  nop
                  mulhu        t6, a2, ra
                  sltiu        a4, a5, 1428
                  add          s1, gp, a0
                  sltu         t5, s11, a3
                  remu         a0, a2, sp
                  nop
                  slli         t4, a7, 30
                  srl          a3, t0, s1
                  rem          zero, tp, s9
                  mulhsu       s4, a1, s1
                  xori         s10, t4, 983
                  srl          s1, ra, s8
                  xori         s4, gp, -882
                  rem          zero, s2, sp
                  mulh         tp, t1, t6
                  andi         t6, s0, -1706
                  xor          t0, a3, ra
                  sltiu        s1, ra, 1411
                  slt          a4, s5, s2
                  srli         t4, t0, 4
                  slli         t0, gp, 31
                  ori          a1, t1, 585
                  xor          s7, s5, a7
                  sll          a3, t4, t5
                  ori          s6, a1, 113
                  auipc        s1, 976762
                  sll          a3, s11, t5
                  div          a0, s10, a2
                  xor          s9, t4, t1
                  slt          s1, s3, zero
                  nop
                  slti         a7, t5, -1795
                  sltu         s11, s9, gp
                  sub          s11, t5, t0
                  auipc        zero, 905193
                  srli         ra, t1, 6
                  andi         s4, s1, 1181
                  mulhsu       s4, s9, a0
                  mulh         s1, gp, gp
                  or           t2, s4, a1
                  xori         s7, a4, -707
                  slti         a0, gp, 391
                  srli         ra, s0, 15
                  xor          t2, t5, t0
                  lui          t4, 367724
                  sra          a0, s2, t4
                  xori         s1, a3, 1823
                  sub          t1, s10, a2
                  rem          t2, a5, t3
                  sltu         s4, s9, t6
                  slt          a0, t6, t6
                  remu         a7, zero, a5
                  lui          s3, 61489
                  sltiu        t6, a3, 967
                  xor          t6, s2, t3
                  mulh         zero, ra, a4
                  ori          s10, s0, 1291
                  sra          a3, a5, sp
                  nop
                  srli         t3, t2, 9
                  and          a0, s0, t1
                  mulhsu       s1, s7, t1
                  mulhu        t0, s1, sp
                  srl          tp, t3, s1
                  slli         a6, s7, 3
                  sltu         s7, s1, s6
                  auipc        a3, 297833
                  slt          s1, s0, a7
                  nop
                  sub          t1, a0, t2
                  ori          a4, t6, 657
                  srli         s11, sp, 19
                  nop
                  div          gp, t6, s3
                  ori          t6, zero, 886
                  add          s10, s9, sp
                  nop
                  slli         t1, tp, 15
                  or           s7, ra, gp
                  add          t1, a6, sp
                  xori         t1, s9, 71
                  div          a7, a3, t3
                  and          s3, a2, s8
                  add          tp, s0, a3
                  mulhu        s1, a7, a2
                  addi         ra, s10, -1431
                  auipc        gp, 680827
                  sra          a4, s3, s7
                  sltiu        a5, s6, 697
                  and          t1, sp, s6
                  xori         t3, s3, -1570
                  addi         s3, s6, -127
                  mul          t2, t2, t2
                  remu         tp, s1, s3
                  or           t5, tp, s4
                  andi         t1, a1, -1722
                  mulhsu       a0, t5, t1
                  remu         a0, t0, s5
                  divu         a0, s9, s2
                  sltu         t5, a2, tp
                  xori         s1, s0, -217
                  andi         gp, ra, 1353
                  divu         t0, tp, zero
                  mulhu        s6, s5, s1
                  remu         t4, s11, s7
                  xori         t1, a5, 1084
                  or           a4, ra, a4
                  sll          a0, t6, t2
                  slt          s10, t0, t5
                  sra          s4, s9, zero
                  sltu         a6, a5, a2
                  srli         s0, t1, 7
                  srli         a5, s2, 14
                  divu         a7, a5, sp
                  add          s0, tp, s1
                  sltiu        t0, a3, 75
                  xori         a1, s3, 1180
                  slti         s1, ra, -560
                  sra          t2, a1, zero
                  auipc        a1, 528173
                  or           a6, zero, sp
                  sub          a7, s11, gp
                  mulhsu       s4, t1, t1
                  andi         a7, s10, 275
                  andi         tp, s2, 406
                  mulhsu       s4, ra, s2
                  nop
                  divu         a4, t5, t2
                  nop
                  mulhu        a0, t6, s2
                  addi         t6, t0, -496
                  xori         a7, tp, 1150
                  sll          zero, a1, t3
                  slli         a5, s2, 0
                  srai         a0, gp, 27
                  sub          t4, t6, t1
                  sltiu        tp, sp, -1861
                  nop
                  divu         t1, t6, gp
                  and          a4, a2, t2
                  auipc        a3, 401617
                  remu         t3, t4, s10
                  and          s6, s4, s8
                  div          a1, t3, a2
                  rem          ra, t3, s2
                  srai         s7, s8, 9
                  srl          a0, t6, s11
                  remu         ra, a1, s8
                  mulhsu       zero, a7, s4
                  mulh         s11, s5, s6
                  and          s2, a6, s10
                  slti         s7, s9, -927
                  add          s0, s0, a6
                  sltiu        a1, t6, 691
                  sltiu        t2, t1, 1790
                  divu         a1, a7, a3
                  srli         gp, s2, 4
                  sltiu        a4, s0, 1121
                  srl          t6, t4, s3
                  sltu         t1, s10, s0
                  slli         s10, s0, 7
                  nop
                  andi         s9, s2, -901
                  sltiu        gp, t2, 1540
                  slli         s4, a5, 11
                  divu         s4, zero, s11
                  remu         t3, s1, t6
                  srai         s0, gp, 17
                  srl          zero, a4, s10
                  sll          t5, s9, s5
                  mul          s7, s3, a3
                  nop
                  sltiu        ra, t6, -1587
                  mul          s7, sp, a2
                  mulhu        s11, gp, s5
                  remu         s4, s6, t1
                  and          s10, s0, s0
                  srl          a7, tp, t0
                  and          a1, a3, a7
                  srli         t0, s1, 17
                  add          s2, s0, a4
                  sub          a1, t5, a7
                  and          s6, s1, gp
                  slt          s8, s9, s1
                  sltiu        s0, a2, -1293
                  xor          s9, s0, t4
                  or           s10, t5, zero
                  auipc        a1, 108576
                  lui          t2, 1013656
                  div          gp, sp, t1
                  div          t4, a1, s8
                  divu         t6, t4, s3
                  lui          s1, 879838
                  divu         a7, s11, a2
                  xori         t4, s5, 2019
                  sltu         t3, t3, sp
                  divu         t6, s7, a7
                  addi         a0, s1, -214
                  srli         s11, gp, 30
                  mul          t3, ra, s0
                  srai         t5, s3, 19
                  and          t4, a2, t2
                  xor          s10, s9, s9
                  slt          a4, s3, ra
                  srl          a7, s6, gp
                  mulh         a6, a0, s1
                  mul          s7, a3, s10
                  addi         s11, t6, -848
                  xori         s9, s3, 244
                  sltu         s4, s11, zero
                  auipc        a6, 142438
                  sll          s8, gp, sp
                  and          a1, a7, a1
                  srai         a1, t0, 29
                  slti         t5, s7, 1539
                  mulh         ra, a5, t1
                  mul          t3, a1, a0
                  sub          s4, s11, s7
                  slli         s8, a4, 8
                  xori         a5, ra, 910
                  andi         s7, gp, -1473
                  slli         t6, a2, 0
                  slli         s3, a0, 31
                  div          t4, zero, s10
                  mulhsu       zero, sp, a4
                  lui          s9, 73416
                  lui          t4, 753039
                  sra          s2, s1, s11
                  mulhsu       s11, a1, ra
                  div          s1, t1, s3
                  sltiu        t2, s8, 1032
                  auipc        s1, 726134
                  xor          t4, s7, gp
                  sll          a6, a0, s2
                  sltiu        s11, ra, -942
                  ori          tp, s9, 1972
                  sll          tp, t1, t1
                  and          s1, a1, t3
                  sltu         s0, s4, sp
                  sra          t3, gp, s10
                  add          s10, s9, t0
                  slli         a0, t1, 23
                  or           s4, s6, ra
                  nop
                  srl          gp, a5, ra
                  mulhu        s4, t5, t4
                  srli         s10, a2, 2
                  sub          s0, s1, s10
                  xori         s4, t4, 265
                  andi         a0, zero, 156
                  slti         zero, a0, -408
                  sltiu        s10, t6, 1783
                  andi         tp, s0, 1408
                  sra          t2, sp, t5
                  sra          a0, s5, a7
                  xori         s11, s4, -1148
                  remu         s9, s3, gp
                  mulhsu       zero, s11, a1
                  add          s3, s2, a1
                  ori          s2, s7, -2047
                  slti         s1, s4, -691
                  mulhu        t0, t2, t3
                  rem          s0, s5, t1
                  slti         s3, ra, -832
                  lui          gp, 773039
                  slt          s2, t4, s10
                  slt          t2, t0, a7
                  sltiu        s11, a7, -1698
                  nop
                  sltu         tp, a5, a2
                  sltiu        s0, s6, 790
                  xor          s7, s2, s5
                  nop
                  ori          s2, t0, -517
                  div          tp, tp, t0
                  lui          s11, 388407
                  srai         gp, t1, 20
                  rem          s6, a6, zero
                  mulh         t4, tp, t2
                  divu         gp, tp, a2
                  divu         gp, sp, a5
                  auipc        a1, 828795
                  mul          t3, s10, s9
                  rem          ra, s11, a4
                  sll          s7, t2, s0
                  sltu         a1, gp, t0
                  sub          a6, s9, s9
                  sub          t3, s6, t5
                  lui          s6, 125740
                  addi         t5, t6, -1570
                  addi         a4, a2, -1024
                  srai         s2, s3, 0
                  ori          s2, sp, -1698
                  sltu         s11, t4, tp
                  srai         t1, sp, 17
                  slli         s1, a2, 12
                  divu         ra, gp, a4
                  auipc        s7, 193511
                  add          s11, s0, s10
                  or           t0, t4, gp
                  ori          s2, a6, 1961
                  addi         t3, t3, 1793
                  remu         a7, s6, s11
                  xor          t6, a0, t4
                  and          s9, s1, t2
                  and          zero, tp, t0
                  slti         t6, s0, 1642
                  divu         s9, s2, t4
                  lui          s4, 342530
                  divu         s0, a7, s2
                  slli         s10, s5, 28
                  srli         s8, t6, 20
                  slt          s9, a0, a2
                  remu         s6, a5, t2
                  lui          s11, 986013
                  srl          a5, s3, t4
                  addi         s7, s9, 1397
                  addi         s7, sp, 1026
                  nop
                  xori         t0, t2, -102
                  srli         s6, a0, 13
                  slti         s7, s3, 615
                  slt          zero, a0, a3
                  srli         a4, a3, 23
                  xor          s7, s7, s10
                  slti         t1, t5, -614
                  addi         s1, gp, -359
                  sltiu        tp, s1, -1110
                  mulhu        a1, sp, a6
                  sra          a3, s8, s0
                  lui          a7, 756643
                  mulh         tp, s3, a0
                  andi         t5, s7, 1065
                  slti         s9, ra, 913
                  sub          a4, s2, s7
                  rem          t3, t3, s9
                  mulhsu       a3, s9, s8
                  xori         s9, a2, 453
                  sltu         t5, t1, a3
                  addi         a0, a4, 809
                  add          t2, s7, a7
                  andi         s0, a0, 1874
                  sub          s6, t6, t0
                  sll          a7, s1, s5
                  nop
                  xor          s7, s4, zero
                  or           a7, s4, s10
                  sltu         a5, a4, s5
                  mulh         gp, s11, a4
                  auipc        s0, 202179
                  ori          s10, t4, -1863
                  sltu         s0, ra, s0
                  sll          t4, gp, s9
                  slti         a1, ra, -1170
                  andi         s7, a6, -1037
                  slt          s11, s7, s5
                  add          s6, a2, s7
                  nop
                  sltu         a5, t0, s9
                  or           a6, s3, s5
                  and          a3, a2, s7
                  andi         t4, a7, -748
                  divu         s4, s6, s3
                  or           a5, t0, a5
                  mulhsu       gp, t4, s11
                  remu         s1, s11, s7
                  addi         s6, a5, 1884
                  mulhsu       t5, t4, zero
                  srl          s1, sp, t5
                  mulh         t3, tp, t1
                  auipc        t1, 830707
                  srai         s7, t0, 27
                  remu         s6, s8, s11
                  mulh         t1, s5, s5
                  slt          s9, s10, zero
                  srl          t4, t2, s10
                  mulhsu       zero, s3, s11
                  sll          s6, s0, s6
                  addi         t3, ra, -318
                  srl          zero, a0, zero
                  sll          gp, gp, tp
                  xor          s4, a7, zero
                  mul          s4, zero, a3
                  xori         t1, s6, -52
                  xori         s3, t0, -1479
                  sub          s1, s11, a2
                  srl          s0, t5, t6
                  div          gp, t6, a3
                  srli         s9, s9, 5
                  mulhsu       s2, t2, s6
                  slli         zero, t2, 10
                  nop
                  auipc        t1, 700542
                  addi         s6, s3, -755
                  sub          s7, s8, s6
                  rem          a3, s8, s0
                  xor          s8, a4, s2
                  nop
                  srl          a1, a4, s11
                  mulhsu       a4, zero, a1
                  mulhu        a0, s4, a2
                  srl          s6, s10, s9
                  add          s10, s7, s8
                  slti         s8, s8, -514
                  mulhu        a3, s5, t5
                  mulh         t1, a6, a5
                  mulh         zero, s1, a3
                  sub          s6, t6, t5
                  divu         a1, s1, t5
                  sub          s10, a0, s4
                  lui          t1, 634213
                  divu         s11, s3, s8
                  mul          s2, s4, s10
                  add          s11, t3, t4
                  sll          tp, t5, sp
                  sltiu        s11, a6, 384
                  div          a4, a2, s5
                  lui          a0, 146174
                  lui          s3, 420492
                  andi         s2, s11, 1619
                  remu         zero, a6, a3
                  xori         t5, a5, 1843
                  mulh         s7, a4, t6
                  srai         a1, s9, 12
                  mulhsu       a4, a0, a7
                  andi         s8, s1, -697
                  mul          s7, a2, t5
                  ori          t4, gp, 1897
                  ori          a5, t0, 26
                  xori         t1, t3, -384
                  and          a4, t3, s7
                  ori          zero, s10, -692
                  divu         t3, s2, s0
                  ori          s2, s11, -1884
                  rem          a5, t5, zero
                  remu         s10, s4, s1
                  auipc        s6, 460288
                  sub          s2, ra, t3
                  rem          a5, s2, a0
                  mulhu        s0, t0, t4
                  rem          a1, s5, gp
                  nop
                  div          a7, t4, t3
                  rem          t2, s11, s9
                  mulhu        t0, s8, s0
                  div          t4, a2, ra
                  rem          t3, a2, ra
                  sub          s8, s11, s4
                  srai         s9, s8, 23
                  lui          s10, 243250
                  xori         s10, a1, -1240
                  mulhu        ra, a5, a4
                  sll          s6, s9, s7
                  div          tp, s6, tp
                  mulhu        s8, t2, a3
                  srli         t0, t5, 3
                  sltiu        s1, t2, -2007
                  sub          s11, s2, a1
                  sra          s2, s7, s9
                  mul          s6, a6, a1
                  remu         s10, t0, s11
                  rem          t1, s0, s2
                  sub          s10, a2, t0
                  srai         t0, t0, 29
                  srl          t0, a0, s0
                  mulh         s1, a2, s2
                  rem          ra, s5, t3
                  slli         a5, t6, 8
                  lui          s0, 705875
                  div          ra, t6, a0
                  slti         ra, s2, 312
                  and          s8, s10, s7
                  sltiu        s3, tp, 1604
                  srli         s7, a4, 17
                  xor          a0, s6, s6
                  sub          a3, s3, gp
                  nop
                  xori         s0, s11, -1225
                  sltu         t4, a0, s3
                  xori         ra, a7, 427
                  and          a7, a1, a6
                  mulhu        t1, a5, a7
                  xori         s8, s3, 1990
                  srai         a3, t4, 21
                  rem          s3, s11, t5
                  lui          s4, 971422
                  slt          a6, a5, s9
                  sra          t3, t1, t3
                  mulhu        a4, zero, a3
                  mulh         a5, s0, s3
                  mulhu        a4, t5, t6
                  mulh         a0, t3, gp
                  sra          gp, a2, a5
                  sltu         a7, s9, a7
                  addi         a4, sp, -997
                  srli         ra, a5, 19
                  xor          s6, t1, t1
                  auipc        s6, 849187
                  srli         s10, s9, 3
                  sll          s3, s11, a2
                  srai         s4, s0, 29
                  rem          s1, s8, a4
                  andi         t6, ra, -1983
                  xor          gp, gp, t1
                  ori          zero, s10, -1317
                  auipc        t5, 552861
                  slt          gp, s5, a1
                  slt          t6, a3, gp
                  addi         a3, a2, 1570
                  srli         t6, a7, 11
                  sub          tp, a6, a2
                  lui          a7, 887641
                  divu         t2, a0, s5
                  divu         a5, t6, gp
                  slt          t3, ra, a6
                  mulhu        a6, a6, t3
                  ori          s8, a2, -1800
                  xori         s2, a3, -1164
                  addi         s4, a0, -1698
                  remu         gp, s1, s5
                  divu         a0, t6, t2
                  sub          s9, s7, t5
                  or           s4, ra, t2
                  mulhsu       s6, a3, s5
                  slt          s6, t3, t4
                  srl          t0, s4, s1
                  slt          tp, t6, s7
                  srli         a3, t6, 14
                  mulhsu       s10, s0, s0
                  add          s6, s3, s1
                  and          s3, sp, t2
                  nop
                  mulh         t1, a6, s10
                  srli         t3, s5, 10
                  remu         s0, s5, s6
                  xor          s8, ra, t5
                  xor          s0, s6, a7
                  auipc        t0, 883339
                  sub          t0, t4, gp
                  ori          s9, t6, 1007
                  srl          zero, zero, t4
                  srai         tp, t5, 22
                  or           gp, t5, t3
                  slli         t6, a7, 12
                  slti         a3, s3, 1908
                  lui          s6, 279972
                  addi         zero, s4, 963
                  xor          s9, tp, zero
                  sll          a3, s2, gp
                  slt          a4, a0, s5
                  mulhsu       s3, s5, s9
                  sub          gp, a5, s5
                  srl          t2, sp, s2
                  addi         t5, sp, 292
                  div          a3, t5, a4
                  slli         a7, s1, 21
                  sltu         t3, t5, s3
                  xori         ra, t1, 335
                  divu         s4, s9, gp
                  sub          t6, t1, s11
                  sll          s8, s10, a0
                  mulh         a1, a3, t5
                  mulhsu       a1, s8, s8
                  nop
                  ori          s8, sp, -1834
                  srl          s6, s4, a5
                  divu         gp, sp, s2
                  mulh         a7, t1, a7
                  srli         s10, s5, 22
                  xor          t3, ra, s7
                  or           s4, zero, s9
                  rem          s11, tp, s9
                  or           s1, t0, t1
                  xori         s4, a3, -1460
                  rem          tp, tp, s0
                  mulhu        s0, s0, s0
                  slt          t0, t5, t4
                  slti         s8, a4, -23
                  sll          s6, s7, sp
                  slti         zero, s2, 448
                  xori         t0, t5, -888
                  sra          a3, a1, s3
                  auipc        a5, 164946
                  add          ra, a5, t6
                  sltiu        t0, a2, 421
                  rem          a5, t6, ra
                  sub          t2, s9, s5
                  divu         a0, s7, a6
                  auipc        t5, 252622
                  xori         s11, s9, -652
                  srai         t3, t1, 0
                  ori          s4, a4, 556
                  sltu         s0, a5, t0
                  srli         a0, s9, 18
                  srl          a7, sp, t5
                  slli         s11, s1, 18
                  slti         s3, tp, 1329
                  mulh         a7, tp, t1
                  sub          s8, gp, t1
                  addi         t6, s8, -1501
                  sltiu        s2, s7, 240
                  sub          s7, s11, a0
                  slli         a5, t4, 6
                  xor          s4, t5, t5
                  slli         s2, s8, 31
                  auipc        a4, 962784
                  lui          tp, 707136
                  and          s3, t3, s10
                  sll          s0, s11, s1
                  slt          s11, a2, t0
                  slli         a6, tp, 13
                  xor          a0, s2, a7
                  addi         t2, s8, 1962
                  ori          tp, a5, -720
                  or           a3, s2, a3
                  slti         a0, a6, -1609
                  slt          t5, s5, s2
                  mul          s2, a3, t1
                  rem          s9, t3, a5
                  remu         a3, a5, t4
                  srli         zero, s9, 19
                  srai         t6, a1, 0
                  slli         a6, a0, 3
                  xor          tp, s10, s10
                  addi         s8, s0, -328
                  andi         gp, a1, -1041
                  slt          s11, t0, s3
                  sltu         ra, zero, s10
                  mulhu        zero, a4, s5
                  srai         gp, sp, 15
                  andi         t5, s2, 1624
                  andi         s3, a0, -306
                  srai         t5, t4, 4
                  sll          s2, t3, s7
                  nop
                  add          s0, a7, t6
                  sltiu        a4, t2, -2024
                  mulhsu       a3, s10, ra
                  srl          s0, ra, s4
                  xor          s2, s9, t4
                  andi         s3, s3, -945
                  sll          a6, a7, s5
                  andi         tp, a2, -1921
                  slt          s3, s11, a1
                  or           t4, t4, s8
                  or           s7, a7, s4
                  mulh         t3, zero, tp
                  sub          a0, s1, t6
                  add          zero, s5, t0
                  and          t2, s7, zero
                  srl          s7, s10, a2
                  slli         tp, a2, 28
                  sra          s4, t2, a1
                  mul          s4, sp, s6
                  rem          s9, s5, s8
                  or           s10, a2, gp
                  slt          a6, s6, a5
                  mulhsu       t0, s5, s5
                  lui          t3, 841084
                  srl          s7, a4, a1
                  rem          zero, s4, s9
                  and          t5, s10, s7
                  addi         a1, s11, -1962
                  xori         zero, a0, -1317
                  srl          t4, s10, gp
                  srl          ra, t2, a1
                  nop
                  srl          t1, s8, a7
                  sub          t0, t3, a6
                  sltiu        s6, zero, -1451
                  srli         s2, a4, 10
                  sltiu        a7, s5, 590
                  ori          s2, a6, -1183
                  sra          s4, t0, s6
                  mulhsu       tp, s5, s2
                  div          ra, a5, t3
                  slt          a7, sp, t1
                  sll          t1, tp, s5
                  div          t3, a6, s4
                  sltiu        t0, gp, -588
                  ori          t4, a0, -1785
                  mul          ra, t6, s8
                  sltu         zero, t1, s5
                  div          s7, s1, t3
                  xor          s1, t6, t3
                  sra          s2, a0, sp
                  mulh         s8, s10, t1
                  div          t3, t4, s6
                  remu         s10, s1, t2
                  and          tp, a1, t3
                  addi         a6, t6, 1609
                  mulhsu       a3, a7, t2
                  mulhu        gp, s1, t5
                  lui          a5, 802970
                  xori         a3, s2, 1927
                  slti         s2, a4, 705
                  srli         a3, t5, 23
                  mulhu        s0, s8, s4
                  add          t0, s9, tp
                  addi         t0, s8, 1699
                  mulhu        s4, s2, s5
                  srli         a3, a2, 9
                  slt          s1, t0, s0
                  or           s4, s1, s5
                  and          s11, a3, s0
                  auipc        a7, 850229
                  addi         s8, a5, 1508
                  sub          t6, t2, s5
                  ori          a5, s7, -609
                  ori          s6, sp, -67
                  xor          a6, s11, tp
                  rem          s8, s1, s7
                  sltiu        t1, s10, 1145
                  div          a0, ra, t3
                  nop
                  div          zero, t6, t2
                  remu         t5, tp, t1
                  div          t4, a5, s1
                  nop
                  mulh         a0, a3, t3
                  slti         t1, s11, 2016
                  sub          s8, a1, s8
                  slli         tp, t4, 11
                  rem          a6, s1, a3
                  xori         s11, s3, 1493
                  mul          t5, a7, sp
                  sltiu        s0, sp, -657
                  sltiu        a4, a5, 1445
                  divu         s2, s10, gp
                  slt          t5, a3, tp
                  sra          a6, t0, s10
                  mul          s7, ra, s0
                  rem          a6, s7, gp
                  sub          s8, s7, sp
                  addi         s10, s9, -1623
                  remu         t5, t1, s6
                  addi         s10, t5, -1049
                  and          a3, a6, gp
                  slli         a1, a1, 28
                  lui          s7, 411800
                  ori          zero, a4, 1246
                  mulh         t0, s6, s6
                  sub          s11, tp, a0
                  slli         a0, t3, 31
                  add          a0, t3, a1
                  nop
                  srli         a7, s8, 25
                  add          a0, t4, a3
                  andi         t6, s1, -1360
                  auipc        s2, 65983
                  nop
                  slli         a5, a3, 12
                  auipc        a3, 25767
                  andi         zero, t3, -668
                  xor          t4, s6, s6
                  nop
                  slt          t1, s9, s7
                  sltu         s2, t6, tp
                  xori         t4, s10, 1322
                  mulh         t6, s2, t6
                  nop
                  srl          s10, ra, ra
                  auipc        s7, 405487
                  sltu         a0, s0, gp
                  add          t0, t2, t4
                  slt          t6, a4, a3
                  sltiu        t1, t0, -1487
                  or           t3, s9, a7
                  or           a7, t0, t5
                  ori          s1, sp, 204
                  and          s9, s8, s11
                  xor          a7, s1, tp
                  ori          t0, s8, -1333
                  xor          zero, t4, s2
                  add          s7, a5, sp
                  mulhsu       s7, s9, tp
                  auipc        ra, 711770
                  srli         t4, s3, 12
                  sltu         a3, zero, a4
                  ori          a0, sp, 989
                  or           t4, t2, a6
                  lui          s11, 993846
                  slt          a5, t1, s5
                  mulhu        a5, s1, s2
                  lui          s2, 1037851
                  mul          s9, s11, t5
                  mulhsu       s9, a4, zero
                  slti         s4, t6, -416
                  or           t2, tp, s2
                  mulhsu       zero, s7, s8
                  srai         a0, s10, 11
                  sra          gp, a7, a5
                  srli         a5, s7, 10
                  auipc        t1, 502962
                  rem          t0, zero, a6
                  slti         t0, a7, 346
                  xori         a3, t3, 1765
                  mul          a1, t1, t0
                  sra          a4, a5, t3
                  and          s9, s6, a2
                  sll          t4, tp, gp
                  sll          a4, t2, ra
                  sltu         tp, s9, zero
                  and          t3, a2, gp
                  auipc        s3, 532390
                  srai         a1, a4, 5
                  sub          s4, s5, s8
                  sltiu        s8, a2, 1016
                  slt          a3, gp, t5
                  sub          t5, s1, a3
                  srli         zero, a1, 3
                  mul          s2, s6, t0
                  sltiu        a4, t2, 910
                  slt          a0, ra, a6
                  divu         ra, s5, s0
                  slt          t4, s8, a4
                  srl          s7, a0, s6
                  auipc        a1, 609624
                  addi         a1, s3, 1697
                  mulh         a3, a1, t2
                  srli         s8, a7, 21
                  xor          s10, s0, s8
                  ori          s11, s6, -1731
                  mulh         a3, ra, t5
                  div          s4, sp, s6
                  sltu         t6, s2, t1
                  srl          t3, s4, t2
                  sltiu        a7, s2, -1950
                  sll          t1, sp, a4
                  xor          s9, a7, sp
                  slti         s4, t1, -1410
                  mulhsu       t0, zero, s9
                  andi         t0, s6, -1459
                  mulhu        t3, tp, s5
                  sll          t2, tp, s8
                  sltu         a5, a5, s0
                  slli         t1, s7, 7
                  slti         a4, s0, 100
                  slli         a6, s3, 27
                  div          s3, a6, t2
                  lui          t4, 290548
                  sltiu        s2, t5, 507
                  auipc        s4, 441660
                  mulhsu       s11, s9, t5
                  mul          s1, a5, t3
                  div          t6, s7, t2
                  rem          t2, s9, s3
                  slti         a3, s9, 183
                  sll          t1, ra, a2
                  xor          s4, gp, t4
                  srli         a5, a2, 25
                  or           a1, t2, a0
                  sltiu        s9, ra, -1690
                  mulhsu       a1, s3, t5
                  slt          s2, s0, s7
                  nop
                  addi         s2, s9, 236
                  nop
                  remu         a3, gp, sp
                  rem          t2, a2, s6
                  xor          t1, t5, ra
                  sltu         s11, s1, tp
                  add          a6, s1, s0
                  remu         t3, s5, s10
                  ori          a0, a7, -369
                  add          s4, s5, s4
                  add          a6, s1, t1
                  auipc        s8, 683936
                  rem          s10, t2, s3
                  sltu         t3, t0, s3
                  xori         s6, a6, 85
                  mulh         zero, s8, a4
                  xor          s0, s10, a6
                  sltiu        a4, zero, -1666
                  sra          s2, t1, s6
                  slt          t2, t2, s10
                  mulhu        a0, sp, a7
                  sub          s1, t6, s7
                  slli         s4, a2, 7
                  nop
                  add          gp, zero, a0
                  andi         a6, s11, 1406
                  add          s2, s1, a6
                  sltiu        s7, tp, 1179
                  mulhsu       t4, s5, a1
                  sra          a6, zero, t5
                  srli         a6, a1, 23
                  sra          t5, s9, s9
                  mulhu        zero, s6, s5
                  srl          a6, s1, s2
                  mul          tp, a5, a5
                  xor          ra, s8, s9
                  mulhsu       s4, s11, t6
                  and          s0, a2, s4
                  sub          gp, a1, s6
                  and          s1, t5, tp
                  add          t0, s10, a6
                  rem          a6, s7, zero
                  sltu         t1, s4, t3
                  srai         a0, s10, 0
                  xor          t3, s8, a3
                  sltiu        gp, a1, -1679
                  ori          t3, t1, -1796
                  srli         tp, a4, 3
                  srai         t0, s7, 25
                  or           ra, a3, s4
                  sltu         gp, s7, t4
                  auipc        a1, 266686
                  mulhu        t3, a4, s7
                  mulhu        s3, s8, s10
                  mulhu        s9, gp, a4
                  xori         a0, s8, 1798
                  lui          s3, 200583
                  slti         t0, a1, -650
                  sll          s10, s11, s0
                  divu         t3, t6, t3
                  div          a0, zero, s7
                  mul          a6, gp, s5
                  mulhsu       t6, t3, t0
                  slli         gp, a6, 27
                  divu         t6, t4, s9
                  andi         a7, s7, -1518
                  rem          t3, s4, t0
                  andi         t1, s4, 1451
                  xor          s0, s1, a6
                  xori         a5, a3, 484
                  sltiu        s2, s3, -989
                  and          s6, t2, t3
                  sll          a5, t3, t3
                  or           s1, s3, zero
                  mulh         s10, a5, t4
                  sltu         s2, s2, t5
                  srai         s6, a6, 0
                  sra          s1, a5, a3
                  srli         s10, gp, 7
                  addi         s4, s11, -1441
                  or           s2, a1, s9
                  sra          t6, a2, t3
                  sra          a7, s4, zero
                  or           s4, t4, s7
                  slti         t6, s5, 370
                  and          a0, t4, s3
                  slli         s10, zero, 21
                  divu         t0, s0, t5
                  xor          gp, t2, s1
                  remu         s1, s7, s4
                  xor          s0, t2, tp
                  div          s10, a5, t6
                  xori         s11, gp, 1972
                  nop
                  srl          s7, zero, t3
                  slti         s11, t5, -1185
                  remu         t5, a6, a2
                  add          t1, s1, a3
                  and          ra, s0, s1
                  slli         s11, sp, 18
                  add          gp, s8, s6
                  slli         gp, a1, 28
                  div          s2, t1, tp
                  mulhsu       s8, t4, t4
                  sll          s9, a2, t4
                  srl          zero, t4, s5
                  mul          s2, s8, s8
                  mul          a1, s8, a6
                  div          ra, s6, s10
                  slli         s6, t3, 31
                  sub          s6, t0, a5
                  sra          s3, t4, s9
                  andi         ra, t4, 1571
                  sltu         a6, s7, sp
                  mulhu        s2, s6, s6
                  div          tp, a3, a5
                  mulh         s10, s6, s0
                  rem          s0, s8, a3
                  divu         t4, t0, s7
                  sub          s1, s9, sp
                  sra          s4, t5, a2
                  sub          s7, a3, sp
                  sra          s8, s5, t6
                  div          a0, a2, a1
                  or           s4, t2, s5
                  divu         zero, t2, t6
                  andi         a0, s2, -1854
                  mulhsu       a6, s4, s1
                  andi         s9, s0, -335
                  mulh         t2, a1, t3
                  rem          t3, a4, t1
                  srli         a1, zero, 5
                  mulh         a6, t3, s5
                  ori          s11, s3, 1826
                  rem          s3, t4, tp
                  addi         t0, t1, 664
                  ori          t6, a7, 1813
                  addi         a1, a1, -1273
                  slt          t1, t5, t1
                  andi         a7, t2, 531
                  srli         t3, s11, 25
                  addi         t5, a1, 370
                  divu         a1, s7, zero
                  add          s6, gp, t0
                  sub          t3, ra, sp
                  srl          tp, s3, t5
                  mul          a3, ra, s8
                  slti         s10, s8, 870
                  divu         t4, t1, s9
                  nop
                  slti         tp, s11, 1884
                  rem          s11, t4, s0
                  mulhsu       ra, a2, s8
                  or           s6, t4, t6
                  xori         t4, a2, -146
                  nop
                  sltu         a5, s1, t5
                  sra          gp, t4, t2
                  auipc        s8, 992390
                  sub          s11, s3, s11
                  divu         a6, a2, t2
                  and          t1, tp, a7
                  sltu         t1, t6, s5
                  rem          s1, s10, a2
                  lui          s6, 263243
                  div          a3, a5, s5
                  divu         s0, t5, t6
                  divu         t1, t4, s0
                  xori         ra, tp, -892
                  divu         a4, t5, s2
                  auipc        s0, 428882
                  sra          t0, s1, tp
                  nop
                  srli         ra, a1, 19
                  andi         t0, s0, -517
                  slt          ra, a7, a6
                  sltiu        zero, s11, 739
                  slt          s10, s3, t0
                  mul          s8, s0, a0
                  srai         a0, a3, 0
                  sub          s3, s6, t3
                  sltu         s6, t2, s4
                  xori         s10, s3, 1857
                  lui          a4, 1003794
                  sll          gp, s1, s8
                  slti         s11, s9, -948
                  srli         s7, t6, 24
                  slli         a0, s6, 26
                  auipc        gp, 79561
                  and          zero, a3, s2
                  add          a7, a5, s9
                  sub          s2, a0, tp
                  slti         s3, t2, 1925
                  rem          s9, t6, ra
                  andi         a4, s2, 293
                  srl          gp, s1, a6
                  mulhu        s10, s4, ra
                  mulhsu       t6, gp, zero
                  slti         s11, s9, -1786
                  ori          a1, zero, -408
                  sltu         a4, t5, s0
                  srai         s10, s10, 23
                  srl          a7, a3, a5
                  srl          s3, a5, s5
                  div          a6, t0, t4
                  nop
                  and          s10, a4, t3
                  sll          t6, t0, s1
                  mul          s7, t4, s3
                  sltiu        a7, s7, 0
                  slt          a5, s8, t3
                  sra          ra, s5, s0
                  lui          s7, 154697
                  sltiu        a4, a7, -1368
                  xori         a4, t2, -105
                  xori         a7, s5, 1735
                  or           t6, a3, s4
                  remu         s0, t0, t4
                  sltiu        t1, t5, 546
                  remu         gp, a2, a4
                  sra          t6, s5, tp
                  ori          s0, a5, 1871
                  slti         s1, a3, 809
                  sltu         s9, t5, a1
                  mulhu        a3, gp, a1
                  slti         s4, gp, 620
                  slt          a1, a5, gp
                  divu         s4, s9, a2
                  ori          t2, a2, 1377
                  sltiu        zero, t0, 1455
                  srli         s0, s1, 10
                  slt          s8, t4, s2
                  xori         gp, s1, 303
                  srai         t4, zero, 24
                  div          s2, a1, s4
                  sll          t5, a6, s2
                  mulhsu       a3, zero, sp
                  xor          a4, a3, a7
                  add          t0, s2, t4
                  mulhsu       t4, zero, s2
                  auipc        zero, 193774
                  or           tp, t1, s4
                  srli         zero, a7, 3
                  addi         s6, a7, 663
                  remu         gp, s11, s7
                  lui          s0, 800719
                  slti         a6, s6, -955
                  remu         s6, t5, s3
                  divu         s7, t4, s9
                  sra          t3, s3, a1
                  srl          s2, s7, ra
                  srai         t1, sp, 12
                  nop
                  nop
                  or           a0, s2, t5
                  remu         s11, t3, zero
                  slt          s4, a4, a1
                  remu         t3, s7, s8
                  mul          s11, a3, t3
                  andi         a6, a0, -1857
                  mul          t0, a4, t2
                  remu         t2, t3, t3
                  add          t0, s0, tp
                  srl          s7, s3, ra
                  sub          s9, a6, s11
                  mulhu        tp, t2, s9
                  nop
                  remu         t0, t6, t1
                  lui          a6, 83095
                  lui          s9, 501523
                  remu         s1, a6, t0
                  sll          t2, t5, s0
                  mulhsu       zero, s2, a0
                  sltu         tp, zero, s7
                  divu         t5, tp, a7
                  rem          t4, a7, t4
                  mulh         a1, s3, ra
                  ori          tp, s1, 800
                  slli         s10, tp, 3
                  andi         s8, t3, 899
                  srai         t2, s7, 4
                  mulhsu       zero, s3, a6
                  slti         s11, s5, 1622
                  sltu         s3, s5, tp
                  mul          a7, s7, sp
                  slli         t4, a0, 12
                  and          s1, t4, s8
                  srli         t6, tp, 1
                  srli         s11, tp, 27
                  sra          t2, s4, a7
                  xori         s9, tp, -786
                  xori         t3, s5, 2040
                  or           a6, t2, ra
                  sll          s8, a3, t2
                  rem          s1, tp, s4
                  sub          a5, t3, tp
                  sltiu        s9, s5, 21
                  ori          t5, t0, 638
                  srli         t2, s4, 30
                  sltu         s11, s0, s3
                  addi         t6, tp, 1980
                  xor          s3, a4, s4
                  mulhsu       t6, a5, s7
                  slti         t0, s7, -1688
                  div          s11, s2, a5
                  andi         s4, s10, 655
                  sltu         t4, gp, t0
                  lui          s4, 646169
                  sra          a4, a4, a1
                  sub          a7, t3, s11
                  mulhu        a0, a6, ra
                  andi         s11, t0, -780
                  slti         t0, t0, 1847
                  mulhu        a7, a6, t1
                  xor          a5, s9, s8
                  lui          t4, 545455
                  divu         a6, a5, t1
                  srai         gp, tp, 11
                  add          s2, s1, s6
                  divu         a7, s8, s9
                  mulh         s7, s0, ra
                  sub          zero, t1, s0
                  div          s0, t4, a2
                  and          t2, a5, t3
                  xori         a7, s9, 1524
                  and          t6, t3, t3
                  add          s8, sp, s3
                  sub          a5, sp, s11
                  and          tp, a4, t6
                  auipc        a5, 1037811
                  add          zero, zero, s6
                  mulh         a7, t3, s3
                  div          s11, a0, sp
                  addi         a1, t0, 1440
                  or           a3, s6, t1
                  div          a0, s4, s6
                  divu         s9, zero, s11
                  slli         a5, s6, 23
                  mul          s2, t3, t4
                  slli         s6, t6, 12
                  addi         a6, s7, -1563
                  sra          s9, gp, s8
                  slti         tp, s7, -1688
                  xor          t2, sp, sp
                  xor          s4, t2, zero
                  slli         s8, s6, 28
                  addi         s6, ra, 1228
                  sltiu        s3, a0, -943
                  andi         t5, a3, -1784
                  lui          t5, 78242
                  slt          s3, s9, t2
                  sub          t6, sp, t1
                  divu         s0, s1, tp
                  ori          s10, s2, 348
                  srli         t3, tp, 11
                  mulhu        s2, t6, a1
                  div          tp, s10, t5
                  or           gp, s4, s11
                  andi         s4, s3, 1608
                  divu         s7, s4, sp
                  xor          a0, a7, gp
                  andi         zero, s0, 534
                  rem          t4, a4, a6
                  xor          a0, s8, t5
                  mulh         s9, a1, t3
                  mulhu        t6, a6, t0
                  addi         a4, t5, -1962
                  div          a6, s3, t6
                  and          a6, s9, s1
                  andi         t2, t1, -232
                  sll          s11, s9, s9
                  slt          tp, a7, t4
                  nop
                  slti         s7, s0, 875
                  div          t0, s2, s7
                  mulhsu       a4, a0, tp
                  sltu         s10, s10, s10
                  sll          zero, a1, t4
                  add          s8, a3, s0
                  srli         s6, a3, 22
                  sub          t5, a5, gp
                  add          a7, t3, s8
                  mulh         s10, t0, s10
                  lui          zero, 907174
                  remu         t3, a0, s0
                  auipc        s1, 326264
                  div          t3, s6, a3
                  srl          s2, s11, s3
                  sll          s9, s3, t2
                  slti         s3, s8, -674
                  ori          a7, t4, -1607
                  xori         a5, ra, 646
                  divu         s3, s11, a5
                  ori          t0, s6, 515
                  and          a0, t2, ra
                  mulh         a6, s7, zero
                  sub          s8, a6, a1
                  mulh         t0, a5, t5
                  nop
                  mulhu        s6, zero, s0
                  lui          zero, 187530
                  auipc        s9, 490542
                  div          s11, s1, s2
                  srl          s2, a0, t2
                  lui          t1, 719345
                  rem          a7, s11, s3
                  srai         s1, a7, 10
                  nop
                  sll          s2, s10, zero
                  ori          a5, a2, 1253
                  and          ra, t5, a4
                  ori          a3, s11, -1259
                  slli         s7, gp, 4
                  slt          t2, t6, s2
                  sltu         t2, a2, s4
                  srli         s11, zero, 7
                  sra          a0, tp, s1
                  srli         t2, s0, 3
                  xori         zero, a6, -1753
                  mulhsu       s0, a6, s10
                  add          a4, a6, s9
                  add          t0, s6, s4
                  slli         s9, a6, 11
                  mulhu        s9, s6, t5
                  lui          t1, 833032
                  sll          s9, a1, s2
                  auipc        t0, 167342
                  sub          tp, tp, a1
                  and          t4, s10, a5
                  andi         a3, a4, 1829
                  sra          s2, a3, s11
                  sll          ra, s0, t5
                  sltu         a5, s3, s8
                  xori         gp, s6, 1138
                  sltiu        s1, t5, -489
                  auipc        s7, 37098
                  auipc        s3, 950130
                  ori          s3, s2, 1842
                  xori         a3, t2, -105
                  mulh         t5, s5, t4
                  sltu         s1, a5, tp
                  mulhsu       zero, ra, t4
                  sra          tp, s11, tp
                  div          t1, gp, a4
                  slt          a3, s8, a6
                  mulh         a0, gp, s8
                  xor          a3, a4, a5
                  mulhu        t4, t6, gp
                  mulh         gp, s9, s5
                  divu         t0, t2, s3
                  srai         gp, ra, 0
                  addi         t2, s2, 30
                  mulh         a5, t5, a0
                  slti         a5, a1, 775
                  addi         s6, t3, 1674
                  auipc        gp, 1031511
                  sltiu        t3, zero, -1886
                  xor          s2, a4, s1
                  srli         s9, t1, 23
                  srai         t3, s1, 15
                  mulhsu       a6, t5, s10
                  add          s2, t1, s11
                  sra          s3, s1, s2
                  andi         a7, s7, 1903
                  ori          a3, a1, -1921
                  addi         a5, t2, -795
                  sll          s4, s8, t1
                  remu         t2, s9, a0
                  ori          t6, s9, -933
                  slt          t1, t1, sp
                  or           a0, a4, s1
                  sltiu        s8, a3, 1292
                  sltu         zero, a6, t5
                  and          zero, s6, a1
                  mul          s0, tp, t2
                  srli         a7, s1, 9
                  mulh         t6, t0, ra
                  sltu         t6, s4, s2
                  srli         s4, t4, 29
                  xori         gp, sp, 1029
                  mulhsu       t4, t5, sp
                  add          s9, tp, s7
                  mulh         t1, a0, sp
                  div          s3, s5, a7
                  remu         zero, s2, s2
                  add          a1, sp, a4
                  and          t0, a0, a1
                  mulhu        t3, a2, t2
                  slti         s6, s8, 1929
                  lui          s1, 627179
                  mulhsu       a4, a0, t0
                  sll          s9, s11, s1
                  slli         a4, s11, 15
                  sll          s4, a3, s4
                  addi         s0, a7, 1337
                  srai         zero, s7, 14
                  divu         tp, s10, t1
                  addi         a5, s1, -904
                  slti         a0, s1, 1544
                  and          t6, s7, a3
                  slli         t0, s3, 29
                  addi         zero, tp, 549
                  sll          zero, gp, zero
                  xor          a7, t6, s4
                  andi         s4, s2, 1128
                  div          s10, s3, ra
                  rem          zero, a1, a0
                  sll          s1, s4, ra
                  slti         a6, t1, 1326
                  slli         a7, t6, 17
                  mulhsu       t1, s1, s0
                  sra          s2, a4, s9
                  remu         t3, t3, s10
                  sltiu        a0, gp, 642
                  sra          t5, a7, a5
                  srl          t3, s11, a2
                  mulhu        a3, tp, sp
                  sub          s6, s10, t4
                  sltu         tp, s6, s1
                  xor          t3, s5, a3
                  remu         s11, a7, t1
                  srai         a4, a0, 18
                  slti         a0, s11, -1244
                  sltiu        a7, zero, 1747
                  auipc        a0, 372835
                  add          s1, s0, s2
                  sra          s8, t0, t0
                  add          t2, s1, gp
                  add          a5, tp, s11
                  auipc        s11, 66518
                  lui          gp, 3536
                  sub          tp, t2, ra
                  remu         zero, s2, a4
                  sltu         s8, s2, t6
                  div          a3, t6, tp
                  sub          s7, s9, s10
                  slti         a3, a3, 889
                  sub          a5, s7, s4
                  divu         t2, s7, s0
                  addi         tp, t3, -363
                  divu         s4, s8, ra
                  srai         s9, t6, 13
                  slti         a4, tp, 542
                  srl          s11, a3, gp
                  mulhsu       t0, t6, a0
                  slti         a4, a0, -1377
                  nop
                  mulhsu       s1, s3, a3
                  sll          t1, s0, s8
                  lui          t4, 918051
                  remu         s2, s4, a7
                  andi         a7, t6, 1873
                  xor          t0, tp, tp
                  srli         zero, a0, 31
                  and          s3, a7, a0
                  or           a7, s1, s6
                  addi         s4, a1, 449
                  slli         t0, a5, 18
                  xori         a7, t6, -979
                  remu         s7, s8, s5
                  sra          a0, gp, t1
                  slti         a0, ra, -441
                  srl          s6, t4, t2
                  or           s4, a7, a4
                  mulhsu       a1, s7, s2
                  slti         t2, zero, -1188
                  slti         s0, s11, -1235
                  slli         t5, t5, 5
                  ori          s3, s10, 327
                  auipc        t0, 575451
                  andi         ra, a5, -999
                  div          s9, s1, t6
                  mulh         a3, s3, t4
                  and          s7, t3, gp
                  mulhsu       t4, tp, ra
                  sltiu        t3, gp, -1728
                  remu         t4, t2, s7
                  mulhsu       t1, a1, s6
                  nop
                  srl          s2, ra, t0
                  slti         tp, t6, 11
                  mul          gp, s11, a2
                  divu         a7, sp, s9
                  sll          s4, s4, sp
                  divu         a5, a0, t0
                  lui          s11, 597845
                  remu         gp, s3, t3
                  slti         a4, a1, 979
                  slli         a3, a1, 16
                  sltiu        a1, a5, 59
                  slti         t3, ra, -1571
                  divu         t1, t3, a0
                  srl          s3, t3, s4
                  xori         a5, s3, -1304
                  addi         a3, s3, 1852
                  auipc        s6, 630881
                  rem          s1, a7, t1
                  auipc        s7, 258652
                  mulhsu       s3, s4, a3
                  ori          s2, s0, -1988
                  auipc        s6, 507803
                  xor          zero, a4, t2
                  slt          t4, a6, a0
                  sltu         t2, s5, tp
                  sll          s0, ra, a1
                  div          s2, s10, s9
                  remu         t3, s0, tp
                  and          a4, t0, s3
                  sra          s11, s7, zero
                  sra          s3, tp, tp
                  andi         a5, s2, 1026
                  srli         s0, s11, 15
                  srl          t2, a7, a6
                  rem          a3, t1, s8
                  auipc        s11, 479335
                  srai         s11, s8, 11
                  add          s10, tp, a1
                  addi         a4, s11, 1177
                  lui          t3, 467291
                  sub          zero, s1, t5
                  slti         t6, a2, 1341
                  sll          t0, s8, sp
                  sra          zero, t1, t4
                  srli         s2, s3, 16
                  mulhsu       s8, t4, s11
                  srli         s7, s10, 15
                  mulhu        s4, s8, a2
                  sll          s0, a0, a4
                  xor          a4, a1, sp
                  slti         gp, a4, 468
                  mulhu        t3, s10, s4
                  and          a0, a0, a0
                  ori          a0, a0, -1196
                  srai         s2, s0, 10
                  mulhsu       gp, a4, t0
                  xor          s0, s1, a0
                  sltiu        s4, a1, 1523
                  lui          a6, 777111
                  mul          t0, t6, a2
                  ori          s7, a2, 1884
                  slti         t5, s10, -386
                  auipc        a4, 359424
                  or           t0, a3, s1
                  ori          s6, t0, 467
                  mulh         zero, a3, s4
                  srl          s10, t3, s11
                  auipc        ra, 245451
                  mulh         t3, s6, a2
                  and          t0, s9, s10
                  ori          s9, s3, 79
                  sll          s0, s11, s5
                  slti         a0, s5, 1157
                  slt          s6, a0, t3
                  remu         a6, s3, a7
                  mulhu        s0, ra, s10
                  mul          a4, a5, s6
                  sltiu        s8, gp, 1878
                  nop
                  ori          a3, s1, -1751
                  sltu         a7, zero, zero
                  sltiu        s7, gp, 342
                  andi         t6, a5, -1036
                  rem          t1, s8, s9
                  srai         a5, t3, 24
                  divu         zero, s0, a0
                  and          t4, s3, a2
                  addi         a7, s8, -628
                  sra          a6, s9, a2
                  srai         s7, t3, 11
                  sltu         a3, t1, a1
                  addi         t1, s2, -2027
                  slli         s7, s6, 25
                  xori         zero, a2, -1504
                  slt          s11, s1, t4
                  auipc        s3, 1005537
                  nop
                  srli         t1, s6, 1
                  add          tp, a1, s5
                  addi         s3, t6, 46
                  or           t4, s0, s8
                  xori         a4, s0, -523
                  and          ra, a2, t1
                  sll          s10, t6, a5
                  slt          a4, s11, a3
                  mul          a0, t1, t0
                  div          s4, t6, ra
                  slli         gp, s11, 13
                  srai         s2, a1, 28
                  mul          a1, sp, t0
                  and          s11, t2, t0
                  srai         t5, s6, 29
                  sltiu        a6, s1, -80
                  sra          s3, s9, a0
                  rem          zero, a3, t3
                  slli         s11, s0, 28
                  addi         s10, s2, -905
                  mulh         a4, s3, t5
                  sltu         t4, t2, a1
                  xor          s1, s1, t3
                  add          t1, a2, s2
                  srai         a6, s2, 14
                  divu         t4, t0, t3
                  srai         gp, s3, 0
                  or           a3, s4, s5
                  remu         s0, s1, sp
                  slt          s10, ra, gp
                  slli         s6, s11, 27
                  auipc        a3, 812086
                  remu         s1, t3, a7
                  rem          s0, t5, s6
                  rem          t6, s2, s3
                  rem          t6, t3, t2
                  slli         s4, a5, 10
                  mulhu        t3, t1, t4
                  or           t0, s11, gp
                  sll          s4, t3, a2
                  divu         s9, a3, a2
                  slti         a0, t6, 568
                  sltu         a5, t0, a5
                  srl          a3, a6, s5
                  xori         ra, zero, -329
                  addi         a4, a3, -102
                  srli         s7, s7, 19
                  lui          t0, 470837
                  srl          t3, s0, a5
                  srai         a4, a2, 17
                  srai         s7, s5, 17
                  rem          t3, t6, t1
                  and          s4, t0, a0
                  mulhu        ra, t4, tp
                  or           s10, a1, t0
                  lui          a4, 217647
                  sltu         a4, a2, t2
                  mul          tp, s10, a6
                  divu         s9, t1, a6
                  remu         t2, s2, sp
                  rem          a4, a6, a5
                  or           ra, a1, t6
                  sll          t5, t1, t1
                  sltu         t6, gp, gp
                  lui          a1, 901800
                  ori          s4, t3, 1807
                  rem          a7, a4, a1
                  srli         t5, tp, 9
                  or           a1, s7, s7
                  lui          t2, 1045126
                  and          t6, t6, a5
                  srl          s9, s4, gp
                  xor          a1, a5, s0
                  add          s9, t2, zero
                  ori          s8, a7, 1227
                  lui          a0, 325151
                  or           s6, gp, t4
                  lui          a0, 762329
                  div          t1, a3, a1
                  sll          zero, tp, s11
                  remu         s4, s1, t3
                  addi         gp, gp, 397
                  lui          t2, 706008
                  sltu         a5, s4, a7
                  mulhsu       s4, a6, s10
                  sll          a0, s5, s0
                  sub          s1, s11, s7
                  div          zero, a6, s4
                  sub          s1, ra, a6
                  rem          s4, a1, s3
                  slli         t6, s8, 2
                  slli         ra, s9, 3
                  nop
                  nop
                  xori         s1, t2, -1169
                  sra          ra, s1, a2
                  sub          gp, t2, t4
                  sub          s1, s4, t5
                  lui          ra, 763730
                  remu         s9, tp, t6
                  srl          t6, s8, s8
                  add          a1, ra, s4
                  add          s7, s10, s4
                  addi         a7, t6, 1641
                  div          s1, a5, t5
                  mulhu        s8, t5, zero
                  slli         t3, zero, 20
                  sra          gp, t5, s7
                  rem          gp, s1, tp
                  ori          gp, gp, -1394
                  add          ra, s1, s6
                  and          t6, zero, zero
                  xori         ra, s1, -1720
                  srl          a7, s11, a2
                  slt          s7, a7, t6
                  mulh         a3, a5, s8
                  sll          t0, a3, a0
                  slt          s6, t3, a3
                  remu         s7, t1, t1
                  xor          a0, s10, a0
                  add          s7, tp, t0
                  srl          s9, s10, t2
                  slli         s2, s2, 24
                  xori         a0, t0, -1834
                  or           s6, a4, t0
                  xori         tp, ra, 846
                  sra          s8, s5, s3
                  srl          s3, tp, gp
                  or           a7, s11, a7
                  remu         gp, gp, tp
                  xori         s6, s7, 1797
                  divu         a0, t4, a4
                  xori         s10, s2, 1027
                  xori         s2, a7, -294
                  or           s9, s1, a5
                  slti         s11, a2, 1076
                  sltiu        s11, s6, -1849
                  sltu         s7, t0, t1
                  auipc        s0, 135241
                  and          s4, a2, a3
                  xori         s11, s10, 1613
                  mul          t3, a1, s5
                  and          t0, s8, a1
                  sub          s3, s0, ra
                  mulh         a3, s10, s2
                  slti         a0, s0, 128
                  xori         s10, t0, -447
                  xor          zero, a3, a0
                  sltu         s6, s5, s10
                  ori          s7, zero, 2035
                  sra          a4, s7, zero
                  andi         s0, a0, -292
                  srai         a4, s5, 6
                  lui          a0, 763523
                  lui          t6, 214139
                  xor          t3, s2, s5
                  divu         t3, ra, t0
                  lui          t3, 34723
                  add          ra, s1, t0
                  srli         a0, a7, 21
                  addi         s2, a0, -1173
                  sltiu        t4, a3, -1414
                  srl          zero, t1, a1
                  mul          t0, s5, t6
                  sra          ra, s8, s8
                  ori          a3, a1, 578
                  mul          s3, s11, s8
                  lui          s8, 431519
                  sltu         t1, s7, s2
                  slti         a6, s7, -1470
                  sra          a4, t5, s7
                  or           t1, s11, s10
                  addi         s7, a5, 1833
                  mulh         s0, a1, zero
                  andi         a6, tp, 1240
                  sll          tp, s4, zero
                  xor          s3, t0, s5
                  mulh         t6, s5, zero
                  mulhu        a3, s9, s2
                  mul          gp, a1, tp
                  sltiu        t3, s0, 1673
                  sltu         s0, s8, t6
                  auipc        t5, 301728
                  and          tp, s5, a6
                  div          t0, a2, sp
                  mulhu        a6, s10, s4
                  auipc        s8, 17787
                  auipc        t5, 899559
                  slli         t5, s1, 17
                  mulh         a3, t2, t1
                  mulhsu       zero, s2, s0
                  auipc        s6, 850368
                  slt          tp, s0, s8
                  slt          s6, s3, s11
                  divu         gp, s0, sp
                  mulhsu       t0, t3, a1
                  slt          a1, gp, s5
                  rem          s4, a4, s10
                  addi         tp, t4, 249
                  sltu         t1, t2, s4
                  slt          s9, s6, a6
                  srli         s7, a7, 8
                  slti         s3, s9, -2040
                  and          a7, a1, a5
                  mulh         s2, a4, tp
                  mul          t5, t4, t0
                  sltu         t4, s10, s7
                  sra          s2, a3, t4
                  divu         a7, s7, s9
                  slt          gp, s11, t5
                  rem          a1, s6, t0
                  andi         a6, s1, 1981
                  lui          t3, 767273
                  auipc        t2, 134623
                  sltiu        a1, a6, 1462
                  nop
                  divu         s4, t5, tp
                  sltiu        s4, s8, -800
                  slti         s11, t4, -1162
                  srl          t6, t0, s11
                  slli         s8, s3, 1
                  andi         s7, s4, -1953
                  srai         s2, t6, 15
                  rem          t6, a7, t1
                  or           tp, s1, a2
                  srli         t0, sp, 26
                  ori          s7, t4, 973
                  slt          zero, t0, a3
                  sltu         a7, t0, t4
                  and          tp, s2, a3
                  and          s2, s4, t6
                  and          t4, t6, s7
                  addi         t3, a5, 892
                  or           t1, s7, s3
                  sltu         s0, a5, s10
                  mul          s10, s0, s5
                  sll          a0, t5, s2
                  srai         t3, s5, 1
                  rem          t3, tp, a4
                  nop
                  sltu         s7, t0, s10
                  andi         t3, s11, 1570
                  srli         t4, s7, 12
                  slt          t3, a0, s6
                  sub          a0, gp, s10
                  and          tp, sp, s11
                  srl          a5, s3, gp
                  xori         s11, t3, 1951
                  sll          s11, a0, a5
                  mulhsu       a1, s4, s0
                  add          t2, s4, t4
                  lui          s9, 481754
                  mul          t3, s0, a7
                  auipc        s4, 210324
                  mulhsu       a7, s5, a4
                  or           a6, s7, a0
                  rem          s8, t3, s4
                  rem          s6, a3, s0
                  slli         s7, s7, 12
                  slli         a1, zero, 18
                  andi         s8, zero, 862
                  srli         s6, s6, 11
                  sub          a0, a3, a2
                  sltiu        a5, t1, -1397
                  lui          s10, 767746
                  sub          t1, a2, sp
                  sub          s8, a1, gp
                  nop
                  or           tp, a1, ra
                  slti         a0, s0, 1497
                  lui          s8, 709676
                  slli         t4, ra, 21
                  sltu         s11, a6, t4
                  nop
                  sll          zero, zero, t4
                  div          t0, t2, a6
                  slt          s11, s2, a0
                  slli         s11, s9, 26
                  ori          s3, sp, -697
                  rem          t3, t3, t3
                  or           t6, a0, s2
                  xori         t1, a5, 951
                  remu         s11, a6, t2
                  rem          t2, a3, s0
                  sltu         t1, ra, a7
                  slti         s3, t1, -1323
                  div          tp, t2, s0
                  sltiu        ra, a2, 1071
                  remu         t1, a0, s6
                  and          gp, s9, s11
                  auipc        a7, 540604
                  slt          s4, s10, a7
                  auipc        s7, 807014
                  mul          s10, s0, t2
                  add          s4, a0, s1
                  lui          s7, 347683
                  sub          a0, a7, s11
                  slt          zero, s7, a3
                  or           s2, s9, a4
                  add          t2, s3, t0
                  sub          a6, s4, sp
                  and          gp, s0, a6
                  sltu         t6, a0, tp
                  addi         a0, t0, -1594
                  mulhsu       t0, s10, t0
                  sub          t4, t6, t1
                  sltu         t3, s1, s5
                  sltiu        zero, t3, 1951
                  mulhsu       a5, t4, a6
                  ori          t5, s3, -1366
                  auipc        t0, 370133
                  ori          ra, a3, 1912
                  xori         s3, t2, -385
                  andi         t3, zero, 1756
                  addi         s6, s7, 1293
                  remu         s6, a2, s9
                  sra          s10, t3, zero
                  sltu         s7, s5, s0
                  and          t5, s3, s11
                  sra          a7, s6, s11
                  add          s9, a6, s4
                  or           s1, a0, zero
                  lui          gp, 90155
                  andi         t5, a5, 1280
                  and          t1, a0, t4
                  srai         zero, a1, 2
                  sub          a6, s2, s11
                  srl          s7, a7, s0
                  divu         tp, a6, a7
                  auipc        t3, 953705
                  mulhu        t3, s1, s8
                  srli         s6, sp, 17
                  sltiu        s11, t3, -343
                  sll          a5, t4, s2
                  slt          s4, tp, gp
                  sltiu        a0, t2, -671
                  mulh         s3, s3, s8
                  add          s11, s6, s1
                  nop
                  mulh         s2, a1, t6
                  divu         ra, s3, a1
                  sltu         s7, a2, s6
                  mulhsu       a7, s2, s2
                  divu         a4, a7, s6
                  srli         tp, a6, 13
                  div          a5, a2, sp
                  xori         a4, ra, -292
                  mulhsu       a3, a0, t3
                  nop
                  rem          a3, a3, t6
                  srli         a7, s11, 30
                  add          t2, a0, a3
                  mulh         t6, a3, a4
                  divu         s8, tp, a5
                  divu         s6, s2, a2
                  and          a4, ra, s10
                  rem          s6, ra, s9
                  xor          tp, ra, a1
                  srai         s7, t1, 5
                  slti         zero, s10, 445
                  xori         a7, a0, 1134
                  sra          s8, zero, t5
                  and          t1, s2, t1
                  add          a7, zero, a4
                  andi         s2, a3, 1578
                  xor          s10, s4, s1
                  sltu         s8, t0, t1
                  addi         t0, t0, -1771
                  srl          zero, gp, s3
                  rem          s7, a0, tp
                  xor          tp, sp, sp
                  mulhu        t4, s7, a5
                  sra          a4, s7, a3
                  rem          s1, ra, a3
                  lui          t0, 847224
                  sra          a0, t3, zero
                  sltiu        s4, s11, 466
                  xor          s2, a6, t0
                  sltu         s4, t5, a4
                  and          a7, zero, t2
                  slti         a5, s6, -136
                  mul          s3, s2, a3
                  sra          a7, t6, s2
                  mulh         s3, zero, s10
                  sltiu        t0, zero, 530
                  mulhsu       t5, t0, a3
                  nop
                  xor          gp, s9, s5
                  ori          s2, t6, -315
                  sra          t1, s10, a0
                  nop
                  ori          tp, a4, 97
                  auipc        s10, 535972
                  mulh         a6, s3, a4
                  andi         s8, s10, -730
                  divu         t5, s2, s3
                  mulh         t0, a4, a2
                  div          t4, s10, a6
                  srl          a3, t1, t0
                  xori         t0, t1, 909
                  lui          s1, 121535
                  andi         t0, t6, 277
                  remu         t4, t1, t3
                  mulhu        t1, t1, t4
                  sltiu        a3, a1, -151
                  xor          t1, a3, t4
                  sll          s1, t3, s8
                  sub          tp, sp, a7
                  mulhsu       a1, s1, s9
                  add          ra, s10, s0
                  remu         s7, s7, s3
                  slti         a0, s1, -664
                  srai         s4, a1, 8
                  mulhu        a0, a4, s10
                  sub          tp, a6, zero
                  rem          s6, s1, t4
                  sra          s6, s10, a1
                  and          gp, a0, t6
                  andi         a3, s6, 672
                  sub          s6, s3, t0
                  sll          ra, s5, t2
                  xor          s6, t4, a6
                  and          t2, s1, a5
                  nop
                  slli         s7, a7, 29
                  or           a7, s3, s0
                  andi         gp, s4, 1380
                  slti         t0, a1, 2008
                  mulhu        gp, s8, sp
                  divu         a3, zero, a3
                  slt          s11, tp, a7
                  addi         zero, t3, -1324
                  slt          s1, t6, a6
                  divu         a3, s11, t3
                  rem          s0, s2, s0
                  slli         s3, a5, 17
                  remu         s0, t6, t1
                  sra          a1, zero, a2
                  srli         a4, a7, 8
                  divu         t4, a3, a5
                  or           s2, s10, gp
                  mulhsu       t1, t3, s5
                  add          s0, t3, s5
                  sltu         t6, a4, t5
                  divu         ra, s10, tp
                  ori          t1, t2, -1579
                  or           a5, a6, s1
                  slti         s7, s11, -1933
                  srli         t1, s6, 4
                  srli         t2, tp, 19
                  srl          zero, t4, s8
                  nop
                  andi         t5, s2, 1083
                  sub          a6, a5, t0
                  sra          a6, a6, a0
                  sltu         t0, a3, a5
                  mulhu        gp, a4, a4
                  add          a6, a0, a2
                  ori          t0, a6, 1470
                  sltu         t2, a7, s1
                  sra          a1, sp, a6
                  remu         a4, a1, a4
                  andi         t0, s11, 1387
                  lui          s0, 334988
                  slti         tp, tp, -1523
                  mulhu        s4, s3, a6
                  rem          s6, s2, s2
                  sra          ra, t0, s6
                  sra          a0, s3, s3
                  or           s3, ra, a0
                  and          t1, t5, a0
                  or           a0, t1, s1
                  sub          t4, s1, gp
                  sub          t2, sp, s1
                  mul          t1, t1, zero
                  andi         a6, a2, -29
                  slti         t1, t1, -1699
                  srai         s0, s3, 8
                  sll          t6, s9, t1
                  remu         a1, s1, s10
                  srl          t1, a6, s3
                  slli         s3, t5, 21
                  mulhsu       a6, zero, s3
                  xori         t1, s8, 1664
                  div          t5, s8, tp
                  or           s1, s11, a4
                  nop
                  rem          s0, t1, zero
                  addi         s8, s9, -236
                  remu         s11, s10, s3
                  remu         a6, t1, t4
                  mulhsu       a6, a0, a3
                  addi         t5, s9, -552
                  divu         ra, ra, a1
                  srai         s7, s10, 3
                  mulh         s4, a4, a2
                  or           t6, s0, s11
                  div          ra, sp, t6
                  divu         tp, t4, s7
                  sll          s11, a4, zero
                  lui          s9, 611621
                  andi         t2, zero, -272
                  sltu         a0, s8, t0
                  xor          tp, s8, gp
                  srli         t5, s11, 19
                  sltiu        s1, s5, -1471
                  auipc        s11, 358127
                  and          s7, t5, a0
                  sltiu        a1, s5, 1030
                  sra          s3, sp, gp
                  ori          zero, t3, 1389
                  sra          tp, t5, s4
                  or           t3, s6, t2
                  slti         tp, t6, 405
                  mul          s0, s10, s5
                  sll          a6, t5, s3
                  xori         s11, s7, 708
                  andi         s10, t4, -956
                  xor          s6, a1, tp
                  sra          a7, tp, t5
                  nop
                  nop
                  slt          t6, t5, sp
                  srl          t4, ra, a7
                  mulhu        s1, s2, gp
                  mul          a1, ra, t4
                  add          a0, s10, ra
                  andi         t5, s4, -972
                  slli         t3, ra, 11
                  srl          gp, t2, a4
                  addi         zero, s3, -107
                  sra          s0, a1, t4
                  sltiu        a4, a0, 1003
                  div          t6, s5, zero
                  xori         s0, s1, -1065
                  slli         t2, a6, 17
                  slt          t5, s1, a1
                  slti         a7, a2, -1158
                  remu         s11, s9, s1
                  sltu         t2, a7, s0
                  sra          zero, s11, t0
                  rem          a0, t3, s4
                  add          gp, s11, a4
                  auipc        zero, 434666
                  or           t4, a4, s0
                  sub          a1, s7, s8
                  mul          t3, a2, t0
                  sll          s6, t4, a6
                  srli         s1, a6, 12
                  sltu         s4, gp, t6
                  divu         t1, s6, zero
                  sltu         t0, s2, a7
                  mulhu        t6, a0, a6
                  slti         t0, ra, 210
                  xor          s1, s5, t6
                  addi         t2, t3, -1996
                  andi         a7, a6, 443
                  remu         t5, s5, a1
                  rem          t3, s3, s11
                  mulhu        s9, ra, s5
                  andi         s10, a3, -491
                  sll          t4, t2, s0
                  mulhsu       s4, s8, a5
                  remu         s2, t5, s1
                  rem          s7, s9, s10
                  rem          s4, a7, t2
                  slt          zero, s7, t4
                  or           t1, a4, t3
                  ori          s6, s1, -951
                  remu         gp, a4, a5
                  add          a7, s8, s10
                  andi         a6, t5, -443
                  rem          s1, a7, a2
                  andi         a0, a6, 1326
                  srli         a4, t6, 24
                  sll          s4, s4, t2
                  nop
                  rem          ra, a5, t1
                  mulhsu       a6, s5, s7
                  sltiu        a4, s4, 1761
                  mul          gp, s2, zero
                  div          t2, tp, a5
                  srl          t0, a2, s2
                  sub          s2, a7, s3
                  or           s8, tp, zero
                  sra          a4, s7, t2
                  ori          a7, gp, 1445
                  slti         a6, s4, -864
                  sra          s6, a3, s1
                  mulhsu       t4, s4, t3
                  and          a0, a4, s3
                  addi         s4, a1, 1803
                  sltiu        s6, a6, 1812
                  slli         t4, s8, 0
                  or           s6, a1, t6
                  slt          zero, t3, s4
                  mulhsu       s10, s10, s4
                  nop
                  lui          t3, 625758
                  sub          a4, s6, s9
                  add          a4, t0, s1
                  srai         t6, s9, 31
                  srl          a0, s3, s10
                  or           a3, s11, ra
                  and          s4, t0, a6
                  xor          zero, zero, t3
                  rem          s8, t5, t4
                  mulhu        t4, gp, a4
                  slli         a0, ra, 15
                  srli         s6, s0, 14
                  addi         s1, a4, 120
                  sub          s7, t1, t3
                  xori         ra, s5, 1070
                  mulhu        s2, a0, s2
                  mulhsu       s3, s7, t0
                  add          t3, s11, a0
                  sltu         t5, s9, a5
                  lui          s7, 528832
                  srli         s2, s7, 22
                  divu         s7, gp, s4
                  xor          tp, s3, t5
                  mulhsu       s3, sp, tp
                  and          a0, s9, ra
                  sra          a5, tp, s10
                  xor          a6, s0, a7
                  xori         s10, s3, 1739
                  slli         a0, s4, 29
                  auipc        a3, 847821
                  ori          ra, s2, -868
                  andi         gp, tp, 189
                  andi         s8, s8, -234
                  mulh         s1, a5, s4
                  mul          t6, zero, s5
                  mul          s10, s3, s5
                  nop
                  auipc        a7, 880353
                  mul          t5, a1, s6
                  sra          a7, a7, a2
                  srli         a0, gp, 15
                  and          s3, s8, s11
                  xor          a7, a0, s4
                  xor          ra, s3, a7
                  xor          s7, a2, a7
                  add          s11, tp, tp
                  slli         t3, s2, 13
                  mul          a3, a1, t0
                  srai         a5, a7, 7
                  srai         t1, s9, 7
                  addi         s6, s2, -1929
                  div          s2, s10, a7
                  divu         a7, s11, t0
                  slti         t3, s3, 106
                  slt          t5, t3, a6
                  srai         gp, t1, 30
                  sll          t2, t4, s1
                  mul          s4, t4, ra
                  slti         gp, a5, -741
                  divu         t4, s1, s11
                  or           a6, a5, t0
                  xori         t5, s7, 474
                  mulhsu       a3, a3, a6
                  lui          t2, 582006
                  slt          t6, s7, t1
                  slli         s1, s10, 27
                  mulhsu       t6, t6, s11
                  div          s11, ra, t3
                  and          a5, a0, s2
                  add          t4, t6, s3
                  and          s11, a5, t0
                  mulhsu       a4, t0, t2
                  remu         t6, a0, t5
                  xor          t0, zero, ra
                  add          t0, s3, a1
                  xori         tp, s7, 1558
                  slti         s2, a1, -1192
                  mulh         s6, t3, zero
                  srli         s6, a3, 13
                  mulhu        a5, s11, s6
                  nop
                  slti         a5, t1, 858
                  or           s10, s5, t0
                  sra          s6, tp, zero
                  and          s1, a2, t4
                  sltu         s1, s7, a5
                  ori          s2, t4, -964
                  add          s1, sp, s8
                  ori          s2, tp, 825
                  slti         s2, t2, -829
                  slt          s6, zero, s10
                  mulhsu       s6, s9, s10
                  add          s0, s0, a5
                  andi         ra, zero, 562
                  mulhu        a3, s0, s4
                  div          zero, s11, s4
                  slti         a6, a1, 395
                  mulhu        t6, s11, a3
                  slli         t1, s9, 4
                  mulhsu       a0, t2, s4
                  xori         a4, t6, -1224
                  slt          s11, s7, gp
                  sra          t6, s5, zero
                  sltu         tp, t4, t4
                  srl          s7, a7, t3
                  xor          zero, a7, s11
                  addi         a5, a6, -3
                  rem          t5, zero, s8
                  sltiu        s2, s0, 1635
                  slti         a4, t1, 957
                  ori          s1, a5, 693
                  sltiu        a1, s6, -91
                  andi         gp, t2, -1895
                  srli         t6, s2, 9
                  sltiu        ra, s6, -1071
                  ori          s3, s8, -311
                  slt          s10, zero, s10
                  xori         t4, s3, -1474
                  and          tp, gp, t2
                  xori         t1, t3, 515
                  mulhsu       ra, s11, t1
                  lui          s10, 899051
                  sltu         a3, s1, s10
                  xori         t2, gp, -2031
                  and          a4, t6, s7
                  and          t1, t4, t1
                  andi         t5, s9, 368
                  sltu         t2, s7, gp
                  sltu         t5, a0, a2
                  mulh         s0, t2, s2
                  srli         s2, gp, 16
                  sltu         s9, a4, zero
                  mulh         a5, t3, a6
                  and          s6, a7, t0
                  sra          s7, a3, t2
                  sltu         s1, tp, a3
                  div          t6, a2, s5
                  mulhsu       s0, a1, t3
                  nop
                  sltiu        t4, a3, 1413
                  xor          s3, a7, t5
                  mulh         s7, s8, zero
                  mulhsu       gp, s0, zero
                  andi         s10, s11, 584
                  sltu         s1, sp, t6
                  auipc        gp, 571514
                  add          t2, s5, a3
                  ori          s11, t5, -1517
                  slli         s3, t2, 8
                  sltiu        s3, t2, 1380
                  and          s7, sp, s7
                  sra          t4, s1, gp
                  xor          t4, gp, t0
                  or           gp, t5, s3
                  mulhsu       s3, t0, s0
                  andi         a3, gp, -849
                  xor          s11, a6, t0
                  srli         s6, t1, 19
                  auipc        a3, 1040366
                  xori         a7, a7, 885
                  sltu         s7, a0, s0
                  rem          t5, t0, a4
                  mul          a6, s5, a5
                  slli         s1, a3, 8
                  sra          a3, a1, s5
                  addi         t2, a4, 137
                  srai         a3, a6, 0
                  nop
                  slli         t4, ra, 17
                  remu         zero, a2, a0
                  div          s9, s9, gp
                  sltiu        t4, s5, 430
                  slli         s7, s3, 16
                  lui          t1, 179754
                  mulhsu       s10, t0, t1
                  add          s4, t1, t6
                  mulhsu       s11, s11, a6
                  sub          t2, s11, s5
                  divu         a1, a4, t2
                  remu         s7, gp, a5
                  srl          t1, a4, s9
                  remu         s0, s10, t1
                  sub          s3, a0, s7
                  ori          s2, s9, 1751
                  xori         a5, a2, 596
                  ori          a0, t0, -271
                  mul          gp, t1, t5
                  mulhsu       t3, s8, tp
                  xori         t3, a2, 340
                  addi         t3, t4, 54
                  mulhu        s10, a2, sp
                  mul          tp, a2, s10
                  add          a7, s10, s2
                  xor          s0, s9, s6
                  andi         a1, s2, -1292
                  slt          s2, a2, t0
                  nop
                  sll          a3, t3, zero
                  xori         zero, s6, -1790
                  sltiu        t0, zero, -1145
                  addi         t5, a4, 1485
                  srai         gp, s8, 10
                  rem          ra, s8, s8
                  slti         a5, sp, 1493
                  or           s7, a3, s7
                  mulhsu       t0, s4, s9
                  auipc        gp, 736418
                  srai         s10, a2, 13
                  nop
                  slti         s8, s6, -1891
                  mulhu        s4, s0, s11
                  or           t5, a7, t1
                  sll          a6, a2, s1
                  divu         s0, s10, t0
                  slli         tp, a3, 26
                  nop
                  mulhu        zero, s9, t2
                  divu         gp, t3, sp
                  sltiu        s1, s11, 1423
                  divu         s7, t3, gp
                  sltiu        s8, a4, -1301
                  slli         s4, s11, 9
                  sub          a1, s6, gp
                  and          s2, s5, a4
                  sltiu        s11, t5, 190
                  sub          t3, t6, tp
                  and          t4, s11, a6
                  mul          ra, s3, t4
                  xor          t4, s3, s3
                  remu         tp, a2, t5
                  sltiu        s3, t4, -972
                  mulh         t0, t0, s10
                  xori         t4, ra, 1985
                  rem          s3, s1, s10
                  lui          a0, 616846
                  sltu         t0, ra, a1
                  andi         a3, a5, -1626
                  srl          a1, s4, t5
                  mulhu        s9, tp, a4
                  mulhu        a3, a7, s6
                  xor          s1, s7, tp
                  mulh         t4, a1, t3
                  slt          gp, t5, a6
                  rem          t5, s8, s4
                  srl          s11, t6, t2
                  remu         s3, a7, s10
                  lui          a0, 155916
                  add          t0, tp, t3
                  mulh         s6, t6, a7
                  and          ra, t1, s8
                  ori          t0, s4, 1724
                  lui          s3, 1047726
                  addi         a7, s8, -1587
                  mul          s3, t0, t4
                  add          gp, zero, gp
                  sub          s8, s7, s10
                  add          a1, s11, t0
                  slli         tp, t2, 30
                  mulhu        t0, gp, gp
                  ori          s0, a7, -1609
                  addi         t3, a4, -783
                  mulhu        t0, t5, zero
                  xor          t0, s4, a6
                  slt          s8, s5, ra
                  mulh         a0, s1, s7
                  sub          t3, t2, sp
                  sra          s8, s5, a4
                  ori          s0, a5, -590
                  nop
                  nop
                  slt          s1, s3, a1
                  srai         t4, t0, 4
                  add          s6, sp, s9
                  addi         t1, a7, 558
                  div          a6, a7, a0
                  sll          s0, a2, s2
                  mulhu        t2, t4, t5
                  mulhu        a4, a4, ra
                  xor          s9, a1, t5
                  lui          t1, 773185
                  auipc        s9, 328627
                  and          s3, a4, a5
                  rem          t1, t4, a7
                  slt          s2, s3, a0
                  mul          ra, s6, s11
                  mulhu        s7, s9, s0
                  slti         s11, t4, -1630
                  srli         zero, gp, 8
                  xori         zero, s3, 124
                  sltu         s2, s11, s2
                  mulh         s7, t0, a1
                  slli         s9, t0, 5
                  and          s0, a7, tp
                  div          s11, s2, ra
                  auipc        s3, 697629
                  auipc        a3, 273906
                  ori          t2, s3, 1347
                  and          a3, t6, s2
                  addi         t1, a5, -509
                  sltiu        ra, s4, 1985
                  add          t4, s3, tp
                  slti         a1, a0, -302
                  auipc        s0, 154357
                  and          s0, s3, t1
                  andi         t5, a4, 1402
                  sltu         ra, t3, t3
                  divu         a4, s8, t3
                  sub          s4, a6, s5
                  nop
                  mulhsu       s2, ra, a3
                  mul          a7, t0, t5
                  div          a7, s6, a7
                  divu         t2, a7, t6
                  andi         a6, sp, 112
                  sra          zero, sp, a0
                  mulhu        t4, a0, a1
                  mulhu        a1, s11, gp
                  sltu         ra, gp, sp
                  remu         a3, s7, t0
                  mulhu        s2, t1, s8
                  sltu         ra, a6, a7
                  slti         s2, s2, 1320
                  auipc        a4, 724019
                  mulhu        s7, s5, a3
                  nop
                  sra          a1, s5, a5
                  sltu         a0, t0, t6
                  remu         s10, a5, s9
                  mulhu        a6, t3, s0
                  srli         s1, a3, 18
                  sra          t6, s4, a3
                  mulh         a7, s6, a6
                  mulhu        a7, s9, s1
                  sll          t3, t5, a0
                  mulhsu       zero, s8, t4
                  mul          a0, a0, t3
                  rem          a3, a7, a0
                  slli         t3, t2, 21
                  xor          a6, s8, s10
                  addi         s9, s10, 966
                  rem          t2, t0, s9
                  sltiu        a0, sp, -408
                  sltu         t1, s8, a4
                  srl          t0, a5, s6
                  mulhu        s7, t3, a1
                  or           a0, zero, t4
                  nop
                  auipc        a1, 721563
                  sub          t1, ra, t4
                  slli         t6, s7, 15
                  ori          tp, s11, -2015
                  add          t5, s5, t6
                  srli         t3, s2, 13
                  and          s0, s5, a5
                  nop
                  mul          s0, tp, a7
                  mulh         a0, s1, s9
                  xori         s1, a6, -372
                  lui          t1, 416860
                  mul          a4, tp, a0
                  andi         a3, gp, 948
                  add          a0, s8, a4
                  sub          a5, t2, t5
                  mulh         a0, t6, s7
                  remu         s8, t4, zero
                  sub          gp, tp, zero
                  sltiu        s3, a4, 1938
                  srl          a5, a6, a1
                  mulh         a7, a4, s2
                  addi         s10, t3, 1930
                  auipc        a4, 757193
                  ori          zero, a4, -1260
                  srli         a3, s11, 21
                  xor          s6, s9, t6
                  slt          tp, t5, ra
                  sltiu        a7, t1, -1265
                  srli         s0, t3, 27
                  srl          zero, t6, a7
                  srli         s11, a7, 7
                  mulhsu       a4, tp, t4
                  ori          a5, a7, 1091
                  sltu         a7, s8, t1
                  sll          s7, sp, s10
                  srai         tp, a4, 15
                  divu         s2, s8, a3
                  add          gp, a5, t3
                  div          s2, t2, a7
                  or           t6, s8, a4
                  mulhsu       s6, t0, s11
                  remu         s1, t4, a0
                  slti         a5, s0, 1272
                  srli         s2, s5, 18
                  ori          s1, s9, -828
                  mulhu        s7, s10, ra
                  mulhu        s1, a6, s4
                  mulhu        t0, a7, s6
                  add          s7, sp, t6
                  lui          t1, 630155
                  srl          s2, t3, s10
                  srai         a3, s1, 27
                  mulhu        s7, a1, t0
                  sll          s4, s0, ra
                  slli         a0, s2, 8
                  mul          t5, sp, s10
                  srai         s11, s5, 30
                  mulh         a4, a4, s3
                  sltu         s11, s1, s11
                  rem          a5, a5, a3
                  mul          a3, a6, s10
                  mulhsu       s1, s1, t5
                  slti         t5, a5, -88
                  slti         gp, a5, -1873
                  sltu         s0, t5, s9
                  nop
                  sltiu        gp, s8, -514
                  mulhsu       s2, ra, gp
                  andi         a0, gp, 1815
                  mulhsu       s0, a5, t2
                  srai         t6, s9, 27
                  rem          a4, t6, s5
                  slt          s3, a7, s11
                  auipc        t0, 811767
                  sltu         s11, a0, s3
                  srli         t3, s4, 25
                  mulh         t0, t2, tp
                  mulh         s0, a7, gp
                  sltiu        s2, zero, -1923
                  ori          t4, s0, 1377
                  sra          s1, s3, ra
                  sltiu        t2, a1, 1088
                  srai         s6, a6, 31
                  srl          zero, t5, a6
                  sra          s9, s0, a1
                  nop
                  rem          a6, tp, s11
                  sltu         gp, a1, zero
                  or           s8, t0, a5
                  srai         s2, gp, 10
                  xor          tp, a7, a4
                  ori          s0, a7, 1296
                  add          s8, t2, a7
                  mulhu        s4, ra, tp
                  sltu         a5, a6, t2
                  srai         gp, a2, 29
                  sltu         t3, t4, a6
                  ori          t4, a3, 1324
                  slli         a4, ra, 4
                  remu         s11, s7, a2
                  srli         s10, s10, 22
                  mul          s0, a1, a0
                  srai         s2, a6, 10
                  div          zero, a3, a7
                  and          s11, s2, s6
                  srai         s0, zero, 24
                  and          tp, a4, s7
                  divu         ra, tp, s3
                  mulhu        t5, s2, tp
                  srai         s0, s7, 17
                  srli         t5, gp, 12
                  sltu         a1, a3, s5
                  xor          s10, s5, t1
                  mulhsu       t5, s11, s7
                  mulhsu       s1, s4, a5
                  ori          s3, a2, -1536
                  xor          s3, a3, s1
                  andi         t4, t0, 595
                  remu         a1, t2, t6
                  sub          tp, gp, t1
                  divu         t5, s8, s9
                  sub          gp, ra, gp
                  slli         t3, a5, 12
                  slt          a7, a6, s1
                  nop
                  and          a7, t1, s1
                  xori         t0, s4, 96
                  and          s2, s7, t2
                  divu         s0, a3, s1
                  mulhsu       t4, t4, t3
                  sub          s7, ra, s2
                  srai         ra, t6, 31
                  div          s9, s7, s8
                  remu         zero, s9, a5
                  srai         a0, s2, 18
                  andi         s4, a1, 1680
                  mulhu        zero, tp, a3
                  srl          s4, a2, t5
                  div          t4, a2, a2
                  ori          s1, s7, 1997
                  slt          zero, s10, s0
                  sltu         s4, t4, gp
                  remu         a3, t0, zero
                  nop
                  srl          s4, s6, a0
                  sll          s4, t0, a2
                  rem          gp, t5, s4
                  or           t5, s4, a2
                  sra          zero, a0, a7
                  srai         t6, a2, 6
                  xori         t4, s7, 1385
                  addi         a4, tp, -248
                  nop
                  sltiu        s2, s3, -721
                  slt          s8, s5, a1
                  auipc        t3, 709186
                  addi         a4, t1, 1221
                  remu         s3, s1, s1
                  andi         ra, a0, 93
                  mulhsu       t0, a5, a4
                  slti         tp, s10, 190
                  ori          s7, tp, 326
                  slti         s8, s11, -592
                  srai         a5, t4, 1
                  mulhu        a4, tp, ra
                  or           a3, s3, t0
                  srli         a6, s7, 11
                  mul          s10, s11, t1
                  mul          a7, t3, s9
                  slti         gp, ra, -896
                  remu         t1, a1, zero
                  andi         a1, s0, 1558
                  div          s11, s5, s9
                  sub          s0, a1, a5
                  srl          a7, s8, a0
                  ori          t4, t5, 631
                  and          t2, s5, t1
                  sltu         a1, a1, s9
                  lui          t1, 28396
                  andi         tp, s5, -1384
                  xor          gp, s2, t4
                  lui          t3, 337053
                  slti         a1, ra, -170
                  srli         a4, zero, 26
                  rem          t4, s0, tp
                  mulhu        a3, a7, a5
                  srli         s1, s8, 12
                  or           t1, sp, t0
                  ori          tp, sp, -1166
                  sll          t4, s6, s3
                  srli         s8, s6, 26
                  div          s11, s6, a5
                  sub          s2, t3, a4
                  auipc        s2, 219773
                  sra          t0, t3, ra
                  sub          s0, s7, ra
                  mulhsu       t5, t5, s6
                  mulhsu       s6, gp, s8
                  srl          gp, s3, a4
                  addi         t1, a6, -1118
                  ori          s4, a6, 1565
                  mul          s7, s6, s1
                  add          t5, a3, a7
                  slti         t3, s3, 1159
                  srl          t4, a5, t2
                  lui          tp, 287581
                  lui          a6, 1034415
                  add          t6, ra, t6
                  xori         s4, sp, 240
                  rem          a7, a4, ra
                  rem          s7, a1, s3
                  mulhu        a1, s7, s6
                  mul          t0, s11, s11
                  auipc        tp, 60616
                  addi         s6, t1, 1631
                  mulhu        s4, s3, a4
                  and          t4, s8, s6
                  srai         s10, t5, 9
                  and          t5, zero, s1
                  sll          a6, a2, t6
                  mul          t4, t6, s6
                  sub          t5, s0, s4
                  add          s0, gp, s3
                  slt          s11, sp, t2
                  srli         a6, s6, 6
                  srli         tp, s9, 6
                  slli         t6, s10, 19
                  nop
                  and          s8, gp, t6
                  xor          s6, a7, t4
                  andi         s4, a0, 1606
                  lui          s10, 652787
                  divu         a7, t6, a2
                  srl          t5, zero, s0
                  sra          a5, zero, s6
                  mulhsu       s10, s0, s11
                  sltu         a1, zero, t1
                  sltu         tp, a5, s6
                  addi         s2, s1, -1094
                  mulhu        t3, t1, t0
                  mul          t2, a6, t3
                  sll          s2, t2, a1
                  sltu         t3, t3, a7
                  or           a5, s5, s2
                  slli         a0, s5, 12
                  mul          ra, s8, t0
                  divu         t1, a1, t5
                  mulh         s4, s2, a7
                  and          s7, s1, t0
                  sll          a6, s8, a6
                  ori          t0, a3, 252
                  divu         s6, t2, s2
                  addi         t0, tp, 956
                  andi         a7, t6, 524
                  remu         t4, t4, t1
                  div          t1, s5, s10
                  lui          a6, 514426
                  add          zero, t0, s3
                  slt          a5, a4, s2
                  mulhsu       gp, s1, gp
                  srai         tp, t0, 14
                  slti         a7, tp, -1690
                  divu         a4, t1, a3
                  srl          t4, s2, s9
                  divu         s8, t2, s9
                  sub          a6, tp, t3
                  nop
                  ori          a0, gp, 1058
                  xor          t5, t6, s2
                  andi         t6, a6, 1367
                  lui          a0, 784962
                  sra          tp, s1, t3
                  div          s10, gp, a6
                  sltiu        t6, a5, 1013
                  mulh         a6, a6, a4
                  or           s10, s6, gp
                  srai         s10, a0, 9
                  ori          s2, zero, 785
                  andi         s10, t4, 430
                  slt          s6, a2, sp
                  sub          s3, tp, t4
                  sltu         s2, s3, s0
                  sll          t3, t3, s9
                  and          a4, s3, a7
                  sub          s1, s10, a1
                  xori         t2, a0, -1673
                  slt          t3, s5, a5
                  or           s10, s9, a2
                  xor          a7, s1, s7
                  addi         t1, s10, -2033
                  xor          s4, a7, zero
                  sub          s1, s9, t3
                  remu         s11, s6, t3
                  sltiu        t0, t2, -553
                  nop
                  mulh         t5, s4, s4
                  rem          t1, s4, t3
                  sra          a6, s10, a1
                  srai         t4, ra, 1
                  auipc        a4, 941106
                  and          t2, t5, a5
                  xor          t4, sp, s2
                  srli         s8, t5, 5
                  mulhu        s4, s6, a1
                  sll          a3, a3, t1
                  div          t0, a6, a1
                  mulh         s8, s7, s6
                  sra          t0, zero, a6
                  or           s10, s6, s1
                  div          s7, s11, s3
                  slti         zero, t2, 1016
                  slli         t3, s6, 29
                  ori          a5, a3, -1442
                  lui          s6, 817343
                  auipc        s1, 149533
                  mulhsu       s1, s2, a4
                  nop
                  mulhu        a4, tp, s3
                  nop
                  andi         s1, a3, -600
                  andi         a1, a1, -387
                  mul          a3, s2, s5
                  nop
                  srai         a4, zero, 5
                  and          s4, t1, zero
                  addi         zero, a3, 162
                  sra          s0, zero, t6
                  auipc        a6, 89331
                  mul          gp, s2, sp
                  div          tp, s9, t0
                  sltu         t5, t2, t2
                  ori          zero, a7, -842
                  xor          ra, s4, gp
                  add          s6, t2, tp
                  lui          s8, 401677
                  and          t1, s8, s6
                  and          a7, sp, a2
                  nop
                  mul          t0, a7, s6
                  add          t6, t2, a1
                  lui          tp, 559832
                  addi         s2, s9, 410
                  srai         t1, s10, 19
                  xor          s7, a3, t0
                  ori          s2, a4, -1264
                  sltu         s6, t2, t4
                  srli         s2, s5, 10
                  nop
                  xori         s0, t3, -1722
                  divu         zero, s1, t3
                  srl          ra, s7, a4
                  xor          a4, t4, zero
                  sltiu        s4, t0, 708
                  nop
                  slti         tp, a0, -1824
                  or           t1, s5, t2
                  auipc        gp, 354624
                  srl          gp, s9, t2
                  auipc        s4, 1047446
                  srli         a0, zero, 1
                  lui          t4, 1046343
                  lui          a6, 617873
                  srai         a5, a1, 27
                  mulhsu       a3, a4, s11
                  sub          s4, a1, gp
                  srl          t5, t6, s7
                  nop
                  and          s6, zero, s2
                  sub          s1, s0, s10
                  rem          s0, a3, s4
                  xor          s1, t6, t2
                  mulhsu       a3, a0, tp
                  xori         a3, s0, -230
                  auipc        s10, 885669
                  nop
                  sltu         a7, a0, sp
                  div          s6, tp, sp
                  srai         a3, s2, 16
                  xor          t1, a1, t2
                  xori         s7, t0, -87
                  slt          s8, s1, s9
                  nop
                  xor          gp, t4, a2
                  ori          s9, s10, 864
                  and          a1, gp, s7
                  sub          s10, s7, a0
                  sub          a4, a7, a2
                  mul          s10, ra, t1
                  slli         a1, t0, 10
                  nop
                  slt          s0, zero, t1
                  addi         a6, t4, 877
                  addi         t1, t6, 961
                  srai         t3, t3, 24
                  sra          zero, s5, s0
                  addi         t0, a7, -343
                  xori         t6, s0, -541
                  or           t1, a6, a2
                  andi         a5, t0, -319
                  srli         t3, a4, 26
                  srli         t2, a2, 11
                  rem          t3, s5, a0
                  mulh         a0, s6, t6
                  mulhsu       t2, s3, a6
                  lui          s0, 248598
                  mulhsu       s6, a4, s0
                  remu         s4, a1, t5
                  auipc        t0, 695907
                  div          s7, t0, t4
                  divu         zero, s4, s3
                  sltu         a6, s11, gp
                  ori          a0, s11, -753
                  remu         s2, sp, t1
                  mulhsu       a1, a7, sp
                  and          a3, a2, s8
                  addi         gp, s10, -1629
                  sll          t6, a5, a0
                  xori         s3, s4, -1315
                  auipc        t3, 473079
                  remu         a4, a3, s2
                  or           a0, t0, s10
                  slti         s4, a4, -1296
                  slti         s11, t0, 182
                  mul          a4, s3, s6
                  slli         a7, t3, 29
                  mulhsu       s6, t0, a2
                  addi         s0, tp, 469
                  xori         a6, s8, 1453
                  sltiu        s11, s1, 1302
                  div          t0, ra, t3
                  and          ra, s10, t5
                  remu         a0, s4, a3
                  srl          a1, s10, s3
                  sltu         ra, sp, t6
                  or           a6, s9, tp
                  and          s7, t2, s0
                  mul          s6, s11, t2
                  mul          s10, s5, s4
                  srl          a7, s2, tp
                  slti         a4, s4, -1560
                  mulhu        s0, s10, gp
                  sltu         a5, s10, s11
                  xor          s3, t5, t5
                  sub          zero, s11, a2
                  srl          a4, s2, s6
                  sub          t1, s7, s1
                  mulhu        a7, sp, a3
                  slli         a7, ra, 29
                  div          s4, zero, t3
                  lui          s1, 284449
                  nop
                  mulhsu       a1, tp, s9
                  xori         s8, a5, 298
                  andi         gp, s7, 986
                  nop
                  sll          s3, a3, sp
                  srl          a6, t4, s8
                  rem          s6, t4, s3
                  mulh         tp, t5, s9
                  sltiu        s9, a5, 1537
                  mulhsu       s10, s5, s0
                  lui          a1, 877320
                  mulhsu       a7, s1, t6
                  slt          t5, t1, tp
                  divu         s2, s4, sp
                  srl          t3, t5, s5
                  sra          t0, s0, a3
                  srli         s7, s11, 8
                  divu         s3, s7, sp
                  srli         s3, sp, 17
                  xor          s7, ra, a4
                  xori         s4, s6, 334
                  rem          a6, s3, t2
                  ori          zero, t3, -1616
                  ori          a3, a1, 1190
                  mul          t4, a4, s4
                  and          t0, a5, a0
                  auipc        s10, 835044
                  or           s11, s8, s0
                  add          a6, t2, tp
                  lui          gp, 310472
                  mulh         s8, s2, s5
                  mulhsu       gp, s3, s1
                  srli         a3, a6, 27
                  andi         t5, s8, 306
                  add          s0, s6, a2
                  srli         a3, s3, 24
                  auipc        s8, 825524
                  or           t6, t5, zero
                  or           a6, t2, s10
                  nop
                  div          s11, a5, s1
                  mulh         s11, a7, gp
                  lui          tp, 82667
                  div          s9, s11, s10
                  xor          t2, zero, t6
                  sll          a1, t2, t3
                  mulh         s1, zero, a5
                  divu         t4, s7, sp
                  sltiu        a7, a6, 2000
                  sra          s6, s11, s4
                  mulhu        tp, a3, s2
                  mulhsu       a7, s1, a6
                  srli         s1, ra, 23
                  srl          ra, a3, a6
                  or           s8, a5, t3
                  mulhu        s7, t1, s2
                  remu         s4, t4, a6
                  andi         zero, gp, 620
                  remu         a4, s6, t5
                  add          s1, t5, t6
                  sltiu        s0, s0, -17
                  divu         s8, a5, s5
                  addi         a3, s6, -1355
                  auipc        s6, 474355
                  mulh         a5, t2, t3
                  mulhu        a0, s6, s11
                  mulhu        t5, tp, a3
                  slli         s11, a0, 19
                  mulh         t3, t1, s3
                  lui          a1, 453626
                  nop
                  auipc        s6, 322418
                  remu         s3, sp, t5
                  div          t0, s7, t0
                  rem          s8, t5, a0
                  add          gp, a1, tp
                  lui          s9, 391121
                  div          s9, gp, a4
                  srl          t6, t3, t5
                  slti         s7, t0, 1413
                  divu         a4, tp, sp
                  add          t6, ra, t4
                  and          s7, s5, a3
                  andi         t1, a1, 18
                  srli         t2, t2, 16
                  xori         s2, t0, 174
                  ori          t5, s2, -507
                  nop
                  sll          zero, s8, t1
                  ori          s2, t1, -1679
                  slt          a1, s4, s0
                  sll          a4, a0, zero
                  srl          t6, tp, s7
                  sra          ra, sp, s9
                  auipc        tp, 970156
                  andi         tp, a4, -1168
                  nop
                  and          a1, a3, tp
                  add          s6, t4, s1
                  slt          s1, s3, t6
                  remu         s8, s10, t4
                  mulhsu       gp, zero, s1
                  auipc        a3, 738560
                  srl          t2, s0, a4
                  and          a0, t0, t6
                  mul          a1, t2, a2
                  andi         ra, s4, -2027
                  addi         a4, zero, -1966
                  rem          s1, t5, t1
                  lui          s0, 334211
                  lui          s10, 655268
                  auipc        s1, 108749
                  nop
                  mulhu        a1, t5, s11
                  mulhu        ra, a7, s5
                  xor          tp, t1, zero
                  sll          tp, s8, t0
                  slt          s6, t1, a7
                  auipc        s2, 540978
                  srl          s10, t1, s11
                  rem          a7, ra, a7
                  ori          a5, s9, -196
                  srli         a1, s7, 21
                  rem          tp, a2, a1
                  auipc        a4, 1041816
                  nop
                  mulhu        s9, s4, s1
                  or           s11, sp, s2
                  sltiu        ra, s8, -1725
                  addi         s2, s3, -1725
                  andi         s3, s9, 667
                  sll          gp, a5, zero
                  sra          t4, a1, s9
                  or           zero, s10, t3
                  mul          s3, s2, a2
                  auipc        t1, 24221
                  andi         s1, t0, -1704
                  nop
                  ori          gp, s1, 1179
                  srl          s4, t1, a3
                  slti         s2, s7, -1223
                  ori          t3, sp, 407
                  slti         t5, t1, 1862
                  addi         t3, a5, 1194
                  andi         s0, gp, -1414
                  xori         t0, t4, 1348
                  add          a5, s9, s5
                  slt          t5, s11, t3
                  addi         t6, s1, -116
                  add          zero, t0, t5
                  slti         s10, tp, -2038
                  slt          t0, a4, s11
                  or           t2, s8, s9
                  mulhu        a4, t3, a2
                  div          a0, a3, a2
                  srli         zero, a0, 27
                  srl          s3, t1, s6
                  sra          t1, s5, a3
                  add          t4, zero, s11
                  mulhu        t6, gp, s11
                  srli         s1, s4, 29
                  slli         t3, s11, 2
                  sll          a3, t4, s4
                  sltu         tp, s4, t0
                  sltu         s0, s10, s8
                  sltu         t0, s6, ra
                  srai         ra, a1, 28
                  nop
                  ori          a1, t0, 1654
                  srl          t2, gp, tp
                  nop
                  lui          s0, 378120
                  srai         t4, s1, 14
                  srai         tp, s7, 22
                  mulhu        s6, s7, s0
                  andi         t6, a4, 794
                  mulhsu       a6, a0, t2
                  lui          a5, 920737
                  auipc        s11, 928628
                  srli         t5, a2, 19
                  rem          zero, t4, a4
                  slt          a4, sp, a6
                  div          a5, s6, a5
                  divu         s3, a0, t4
                  srl          a7, s6, s11
                  sll          t3, t3, s9
                  mulh         a0, tp, zero
                  div          a1, s2, ra
                  ori          gp, a1, -193
                  mul          s8, tp, sp
                  div          zero, a7, t3
                  addi         s11, a0, 392
                  add          t3, a3, a7
                  remu         t6, t6, a5
                  divu         a1, s5, zero
                  sra          t1, a1, a7
                  or           ra, s2, s3
                  sltiu        a5, s8, 887
                  slli         zero, sp, 18
                  mulhu        t3, t4, a7
                  slti         s3, a3, -851
                  divu         a4, zero, s10
                  sub          t2, a4, a2
                  add          s4, a6, t6
                  sll          s3, tp, t5
                  srl          t2, s4, a5
                  add          s8, s1, t2
                  auipc        s10, 660943
                  mulhu        s4, a0, s3
                  srai         s4, sp, 5
                  addi         t0, s7, 1621
                  mulhsu       t1, zero, sp
                  xori         a6, s10, 1291
                  or           s7, s4, a4
                  slt          a6, s10, t4
                  srl          t6, t4, s10
                  sub          a0, s7, sp
                  slli         a0, tp, 5
                  sll          a6, s5, t5
                  slli         s6, a4, 23
                  srai         a4, a6, 0
                  and          tp, t1, a4
                  rem          s6, t0, zero
                  sltu         s9, sp, s3
                  mulhsu       t6, s0, a1
                  slt          a5, s1, t3
                  lui          s10, 189593
                  mulhsu       t4, gp, s10
                  mul          s2, s2, a5
                  sltu         s4, s6, s0
                  sub          a7, s8, s1
                  mulh         t6, s3, t1
                  div          zero, tp, gp
                  srli         zero, a6, 30
                  rem          s11, s2, t3
                  sra          a5, t6, a7
                  xori         a1, t5, -1360
                  mulhu        s3, a2, s1
                  mul          a1, t3, a4
                  nop
                  lui          s11, 386078
                  add          t4, a2, a1
                  mul          s1, zero, tp
                  mulhsu       a7, zero, s10
                  slti         a5, t5, -279
                  lui          s4, 737727
                  divu         a7, zero, t1
                  lui          t2, 416403
                  or           a7, tp, a5
                  or           t5, s9, s0
                  and          a0, a7, t5
                  srli         s7, t1, 16
                  mulh         a3, a2, tp
                  add          gp, s9, s0
                  sub          a6, t5, t3
                  slt          a3, s7, t0
                  andi         t0, s10, 1208
                  sra          s1, tp, tp
                  sra          s0, s9, sp
                  divu         t4, a3, s11
                  mulhu        s0, zero, gp
                  ori          gp, s5, 1834
                  sltiu        t0, s8, 1538
                  mulhu        t5, sp, s2
                  sltu         t0, s0, a4
                  xor          s1, s8, t2
                  lui          zero, 975825
                  nop
                  mul          s1, gp, t4
                  srl          a4, s10, a3
                  sra          a3, s10, t4
                  andi         s8, a3, 1485
                  sra          zero, s9, s2
                  addi         a7, a1, 536
                  xor          t2, s3, a4
                  addi         a0, s2, -780
                  xor          ra, gp, t1
                  srli         s11, t0, 6
                  srli         s10, zero, 0
                  andi         s11, tp, 764
                  slli         s10, t1, 1
                  add          a4, a4, s4
                  addi         zero, t3, -1493
                  andi         a3, s2, -747
                  or           s1, s0, s6
                  slti         a7, a5, 1586
                  lui          a3, 483071
                  xori         t1, t4, -1490
                  divu         s11, s9, gp
                  mulhu        t1, t3, a1
                  sll          t5, s8, sp
                  rem          s2, ra, a5
                  sll          a4, ra, a6
                  lui          s11, 479310
                  divu         s3, a7, t0
                  auipc        t2, 413381
                  divu         a0, a7, s4
                  slt          s2, ra, s0
                  sll          s6, t0, s0
                  remu         t6, a2, t5
                  ori          t0, s11, -1979
                  sltiu        t0, t5, 979
                  rem          t6, s5, a4
                  rem          s7, s6, t3
                  slt          s7, a2, t1
                  srai         t3, t3, 7
                  and          tp, s8, s10
                  slli         t3, s3, 21
                  mul          a7, gp, t0
                  xori         s2, a3, 598
                  and          s6, a1, a4
                  ori          t5, tp, 1606
                  divu         tp, a5, a3
                  sltu         t4, s0, t1
                  sltiu        t2, s11, -120
                  mulh         a0, a5, a4
                  sltu         t0, s7, a1
                  srl          t3, gp, s9
                  xor          a6, s9, a7
                  srli         s10, s8, 5
                  or           s11, a7, s11
                  auipc        t1, 875420
                  divu         s2, s0, t5
                  lui          a0, 884157
                  rem          s9, s2, s3
                  slli         t3, s0, 8
                  div          t3, a0, a3
                  sltu         t4, zero, s3
                  ori          tp, s4, 2036
                  or           t4, t2, s7
                  rem          t0, t4, t0
                  or           t3, t0, t2
                  srli         a0, s5, 0
                  sltiu        s9, ra, 1571
                  srl          s9, t3, s0
                  auipc        ra, 725050
                  mul          a0, t4, s1
                  lui          s6, 648422
                  mulh         zero, s7, t6
                  addi         t5, t3, 973
                  sub          tp, a6, zero
                  nop
                  mulhsu       s11, a1, s0
                  xori         s11, a1, 893
                  mulh         a5, a1, t3
                  sub          s0, a5, s2
                  mul          tp, t1, t2
                  mulhsu       a6, t4, ra
                  divu         s1, a7, t1
                  rem          tp, s10, t0
                  addi         t0, a7, 1923
                  mulh         a5, s11, s4
                  andi         s2, t6, -1623
                  slli         t6, s1, 30
                  rem          t0, t2, t1
                  andi         s10, a5, 94
                  slt          t3, a3, t4
                  xor          a6, tp, a6
                  mul          tp, s0, s6
                  rem          s1, t1, a7
                  srai         s6, s10, 31
                  sra          zero, s1, s8
                  nop
                  srai         zero, s5, 9
                  remu         gp, t4, zero
                  mulhsu       s7, a1, a4
                  mulhu        s1, a4, t6
                  rem          t6, a1, a4
                  mulhu        t5, a6, gp
                  andi         t6, s9, 1336
                  addi         t5, s11, -339
                  andi         t3, s9, -799
                  sub          s4, s1, a1
                  slt          a1, a6, a6
                  slti         tp, a7, -509
                  slt          a5, s2, t0
                  slli         zero, a1, 4
                  remu         zero, s4, zero
                  slti         a7, s10, -759
                  divu         a4, s9, t5
                  sltiu        s3, a4, -644
                  srl          t1, s5, s10
                  sll          gp, a0, t2
                  mulhu        tp, s9, s6
                  div          t6, sp, s8
                  slt          zero, s11, a1
                  srl          s7, s0, t0
                  sltu         t6, a6, sp
                  or           a1, zero, t5
                  xor          gp, a2, s1
                  sltu         t1, s7, s8
                  sll          t5, tp, gp
                  lui          s3, 863653
                  sltiu        s0, t2, 449
                  sub          t6, t6, a6
                  sll          s10, s0, a3
                  div          t0, t6, s1
                  div          gp, t1, ra
                  mulh         s8, a5, a5
                  remu         s6, t1, ra
                  andi         s9, a4, 1281
                  addi         s7, s10, 1229
                  sltiu        a3, t1, 1604
                  srl          t0, zero, t5
                  nop
                  rem          t2, s11, t2
                  rem          t6, s2, a0
                  xor          s10, s9, s6
                  sll          t2, t3, a6
                  addi         s4, t3, -351
                  div          s0, t0, tp
                  mulhu        tp, zero, a3
                  or           s6, t2, s4
                  or           tp, a1, a5
                  slt          gp, s1, t2
                  sll          s10, gp, s0
                  srl          s10, t3, t3
                  div          t5, ra, zero
                  slti         s9, t0, -510
                  remu         tp, t6, s11
                  lui          s11, 915282
                  or           s10, s2, a1
                  nop
                  sub          s4, s8, t2
                  lui          s6, 826703
                  xor          t1, s8, s3
                  mulh         t5, t2, a2
                  srl          t1, s8, a0
                  srl          s1, t6, s5
                  auipc        s10, 580591
                  sll          tp, zero, t2
                  srl          t4, t5, a3
                  div          a1, t2, s5
                  srl          a6, t0, t6
                  andi         s4, a3, -817
                  slli         s11, gp, 10
                  xor          s8, t5, tp
                  or           s11, zero, s3
                  slt          s2, t5, zero
                  slt          t5, s5, s5
                  lui          s3, 475943
                  and          zero, ra, s8
                  sll          s9, s4, t5
                  srai         s0, t5, 24
                  remu         t5, s11, a2
                  sub          s0, s1, s9
                  xor          s1, s3, t6
                  srl          a0, a0, zero
                  sltiu        a1, t2, 1067
                  lui          zero, 975506
                  remu         a4, a7, a6
                  auipc        t0, 209002
                  andi         s7, s1, -574
                  slt          t3, a0, t4
                  auipc        t6, 573468
                  or           ra, s9, t1
                  add          s8, s0, s7
                  sra          gp, ra, a1
                  add          t4, t5, t1
                  sltu         a5, ra, a4
                  andi         t6, t4, 916
                  slti         t3, zero, -858
                  xori         t5, t0, 176
                  and          a7, t3, sp
                  add          s0, s1, sp
                  sltiu        s0, a3, -1189
                  addi         s3, t0, -216
                  remu         t6, s8, sp
                  srli         a5, s5, 10
                  auipc        t0, 757585
                  sltu         t3, a4, a5
                  ori          a6, a6, 1884
                  or           a7, a6, t2
                  slli         s3, a0, 31
                  mulhsu       tp, zero, s0
                  mulhsu       t0, gp, s8
                  nop
                  sra          t3, tp, t5
                  lui          a4, 489195
                  mul          a0, t5, t2
                  mulh         t2, s4, a3
                  slt          a1, t1, t3
                  slli         tp, s7, 5
                  sra          a0, s6, s9
                  slli         s4, s10, 10
                  lui          s7, 898589
                  sltu         s4, a4, zero
                  or           s11, s4, t6
                  srli         a7, a1, 27
                  sll          a4, t1, ra
                  mulhsu       a3, sp, t1
                  slli         s10, s2, 29
                  sltiu        s0, a0, 1072
                  rem          a5, s11, t6
                  slli         t1, s4, 15
                  srai         a4, t6, 26
                  ori          s2, s4, -680
                  mulhsu       a3, t6, s8
                  rem          s10, t6, a5
                  slli         s0, s2, 22
                  sll          a1, t6, a4
                  or           a6, t3, s11
                  mul          a0, s5, t6
                  addi         a4, t0, -1820
                  div          s11, s7, s2
                  mulhsu       t5, t4, s8
                  slli         a5, s2, 10
                  sll          tp, s2, s11
                  slli         s11, s2, 4
                  div          s11, ra, zero
                  addi         s2, s4, 607
                  srli         tp, a7, 5
                  ori          s10, gp, 437
                  srli         s9, t1, 4
                  remu         a6, s9, a5
                  auipc        s1, 663530
                  andi         a1, a0, 163
                  addi         a6, a1, 197
                  srl          ra, s7, a6
                  and          a1, t4, tp
                  nop
                  srl          s11, t1, zero
                  addi         s4, tp, 104
                  sub          gp, a7, s2
                  auipc        gp, 153285
                  mul          t5, a7, t1
                  nop
                  sltu         s2, s8, s5
                  sra          s4, s4, sp
                  slt          a5, zero, a1
                  mul          a4, t4, s3
                  sll          a6, s6, a3
                  sll          a0, s3, t0
                  srl          a4, s7, s9
                  srl          t1, t1, t6
                  divu         t3, s10, s9
                  andi         t6, t6, 293
                  sltu         gp, a5, tp
                  xor          s2, t5, s5
                  sra          s9, s0, s7
                  mulhsu       s0, t5, s10
                  sub          a4, t6, t0
                  srai         gp, s0, 31
                  divu         s2, s2, ra
                  and          s7, s7, s6
                  srli         a4, a6, 12
                  remu         a3, s6, zero
                  sltiu        a7, s3, 769
                  div          t4, t0, s5
                  sra          a1, t0, s11
                  divu         s2, t4, a1
                  andi         a4, a6, -174
                  mulh         a5, a0, a2
                  xor          s8, s7, sp
                  slti         a3, s2, 1184
                  mulhu        zero, t1, ra
                  or           s7, t1, s3
                  divu         s4, t6, t6
                  mulhu        a4, s10, gp
                  sll          gp, s7, sp
                  xori         t0, s3, 419
                  srl          s4, t0, t3
                  sll          s11, t1, a0
                  ori          tp, t4, -1254
                  slti         tp, s8, 373
                  mulhu        a6, s6, s10
                  slt          a4, s2, s7
                  srli         a6, s4, 2
                  addi         s6, a6, 198
                  slti         s4, a5, -141
                  add          zero, s3, s9
                  or           a3, s8, s8
                  sra          s0, t3, s4
                  add          s4, zero, t4
                  sub          tp, tp, a4
                  slt          s1, s1, t2
                  slt          s6, gp, t5
                  srl          t1, tp, a3
                  or           a4, s7, a6
                  ori          s7, t2, -465
                  lui          zero, 841339
                  slti         a0, t4, 1952
                  mulh         ra, zero, a5
                  mulh         s3, s8, a5
                  sra          t1, s2, s8
                  srai         s0, s0, 30
                  sra          t3, a0, a5
                  sll          t2, ra, a6
                  slti         a1, s2, -1913
                  slti         s3, s3, 735
                  xor          a4, t4, s2
                  addi         s1, s3, -1007
                  sra          s0, s2, a0
                  mul          a5, s0, a0
                  srli         t5, tp, 23
                  remu         s3, t6, a7
                  ori          s9, t1, -577
                  xor          zero, a0, s7
                  sltu         s6, sp, s11
                  srli         a5, sp, 6
                  slti         s8, ra, -15
                  slti         a3, a6, -584
                  srl          s4, t4, s2
                  slti         s10, tp, 1865
                  slti         s10, s8, 973
                  sltu         a4, a5, s1
                  sra          s7, s1, a3
                  ori          s4, a7, -1183
                  mul          s7, t2, a6
                  ori          s7, t0, 1603
                  sltiu        a4, t5, -1943
                  add          t1, tp, s8
                  div          s11, s1, s6
                  sll          t5, s10, t6
                  srl          s10, a3, a7
                  rem          s0, s9, a4
                  andi         t0, s2, -1472
                  andi         a6, s5, 52
                  slti         t2, ra, 1441
                  or           a7, a7, zero
                  addi         s11, s2, -807
                  xori         s11, a2, 450
                  xori         t2, t2, -765
                  slt          a5, s0, a4
                  srl          tp, s9, s3
                  xori         s0, s11, 226
                  sra          s1, s9, s11
                  sra          s6, sp, s4
                  sra          s7, tp, gp
                  mul          t4, t4, a7
                  sltiu        gp, s9, -1852
                  mulhsu       a4, s9, t2
                  srai         a7, a6, 15
                  divu         s6, a5, a0
                  rem          t3, a2, t6
                  xor          a1, s5, t6
                  sub          a5, ra, s4
                  div          s7, a0, t3
                  slti         a3, s8, -787
                  srai         t6, s11, 25
                  xori         s6, s2, -968
                  sra          a3, a5, s8
                  srli         s7, s2, 16
                  nop
                  sll          t5, a1, s1
                  and          t4, a1, a6
                  slli         s11, t6, 1
                  srai         a6, a0, 27
                  srl          a3, a0, s10
                  sll          a5, a1, a1
                  srli         tp, t2, 10
                  slti         s4, s0, -1976
                  lui          a5, 342848
                  mulh         s4, s4, sp
                  slti         s2, a7, -1301
                  slti         t6, s9, -1013
                  slli         t1, t0, 24
                  lui          s8, 354980
                  slli         s11, s2, 23
                  nop
                  xori         s10, sp, -1148
                  div          gp, s2, a3
                  ori          s0, t4, 494
                  mulh         s1, t2, a7
                  srl          s2, s3, s4
                  sltu         s6, a0, ra
                  sltiu        s2, s4, -351
                  div          t2, s9, s8
                  div          s2, t4, t0
                  srli         s2, s4, 5
                  slti         gp, a5, -481
                  remu         ra, t3, s6
                  andi         tp, a4, 518
                  ori          s0, s3, -1046
                  auipc        gp, 84248
                  sub          s7, s5, s0
                  slli         a3, t4, 7
                  mulhu        t4, a2, a5
                  srli         zero, a1, 26
                  slti         s9, s3, 187
                  xor          a7, s7, sp
                  slti         s10, sp, 1704
                  sltu         ra, s0, a0
                  sltiu        t0, a3, -874
                  srli         a1, s8, 0
                  xori         t4, ra, -1420
                  sll          t0, t5, s0
                  slt          t3, s7, s8
                  mulh         s8, a4, s7
                  xori         t5, t2, 1525
                  div          a0, t6, s2
                  srl          t0, a5, s6
                  rem          s6, s11, a6
                  slli         s9, a2, 8
                  addi         a5, ra, 1068
                  mulh         s3, s3, a0
                  slli         t5, a7, 16
                  mulh         gp, s7, a7
                  xori         t0, sp, -1819
                  mulhu        a6, gp, a4
                  mul          gp, a6, a4
                  srai         a6, s10, 20
                  slli         s2, ra, 13
                  rem          t2, s1, t2
                  sll          s11, t2, s11
                  nop
                  xor          a0, s4, ra
                  add          t2, s3, a6
                  mulh         s2, s6, s9
                  mulhu        t2, t4, s1
                  addi         a6, ra, -2001
                  add          gp, a1, s8
                  nop
                  srl          a3, a0, a5
                  mulh         t0, s4, t3
                  sub          s8, s10, t3
                  add          a0, tp, gp
                  slt          t2, zero, zero
                  andi         ra, a7, 1186
                  addi         a0, s3, -1087
                  mulhsu       t1, a2, s9
                  lui          t5, 605318
                  xor          gp, s2, t0
                  lui          a3, 810808
                  remu         t4, t3, t6
                  srai         a4, t5, 28
                  remu         s6, s0, t3
                  slli         t5, a1, 26
                  nop
                  nop
                  ori          s3, s11, -1614
                  srai         s4, a7, 15
                  sll          a1, t3, s3
                  addi         s2, t0, 428
                  sub          s0, t6, sp
                  nop
                  mul          a1, s2, s11
                  nop
                  srli         s2, s5, 25
                  mul          s2, t5, s2
                  slli         s3, a6, 8
                  mulh         tp, a4, gp
                  div          s1, a3, s11
                  mulh         s10, s1, tp
                  srli         t5, tp, 6
                  sltu         zero, tp, s7
                  mulh         s10, s8, gp
                  srai         ra, a7, 21
                  mulhu        ra, a4, zero
                  auipc        gp, 873142
                  slt          t0, a5, s11
                  srai         a4, t3, 19
                  and          zero, s5, s2
                  mulhsu       t3, a2, tp
                  div          a5, t5, a7
                  sra          a1, s6, s11
                  sub          a6, a3, t3
                  add          tp, a1, s3
                  ori          gp, s9, 834
                  srai         a3, a0, 26
                  slt          s7, a6, a6
                  sll          s4, a3, s3
                  xor          t3, s2, s5
                  auipc        zero, 468055
                  andi         a0, t2, 150
                  ori          a3, s1, -1981
                  auipc        a0, 1027780
                  addi         tp, zero, 1920
                  srai         a5, a1, 5
                  mul          s0, t2, a7
                  div          gp, t2, a4
                  xor          a5, t0, a6
                  srli         t4, a1, 12
                  andi         ra, s4, 988
                  divu         s2, t2, s10
                  auipc        zero, 154265
                  xor          t5, a0, a5
                  div          s10, t4, s11
                  rem          s8, s5, gp
                  sltu         a6, t5, a4
                  mulhu        a1, t0, gp
                  remu         a0, s3, a7
                  slli         s9, s3, 19
                  sll          t3, zero, sp
                  slti         a5, t2, 475
                  srli         t6, a7, 3
                  or           t1, s5, s1
                  lui          ra, 865928
                  ori          t0, t0, 941
                  remu         gp, s9, s6
                  sltu         t0, s1, gp
                  srl          t2, s5, t1
                  divu         s11, zero, t4
                  sra          s7, t3, t4
                  srli         s9, s5, 17
                  rem          gp, s4, t6
                  slti         t1, t2, 1602
                  mul          s1, t1, a6
                  andi         a5, s1, -569
                  ori          a3, t3, -426
                  nop
                  remu         s7, t6, a1
                  srai         s11, s7, 19
                  srl          s10, a4, s11
                  ori          t4, a6, -361
                  slt          t2, a0, s11
                  andi         a5, s7, -257
                  nop
                  sltiu        a5, zero, -405
                  and          s6, a1, s1
                  add          a0, t1, a0
                  remu         s7, a4, a5
                  srli         a5, sp, 13
                  xor          a3, a6, ra
                  srl          a4, a0, a2
                  mulhsu       s10, a1, s11
                  remu         t1, s7, s3
                  mulhu        s6, s1, s7
                  andi         s0, t0, 1030
                  addi         s4, t6, -749
                  xor          t4, t3, gp
                  xor          ra, s5, s6
                  mulhsu       t5, s9, s10
                  and          gp, a4, sp
                  or           s10, a1, s0
                  nop
                  slt          s7, a1, a5
                  nop
                  addi         a7, s3, 514
                  add          a5, s7, a0
                  srl          s7, a6, t4
                  remu         t3, a0, t4
                  slli         gp, s2, 23
                  addi         a7, a5, 1237
                  slti         a0, t1, 156
                  div          a3, s9, s11
                  andi         s8, t3, -993
                  div          a4, a1, s1
                  addi         a3, t2, 1380
                  srl          s3, s11, a3
                  srli         a4, s2, 4
                  or           a7, t1, t5
                  srli         ra, s1, 9
                  sltiu        s4, s8, 1045
                  andi         tp, s10, 1703
                  or           t2, ra, s11
                  sub          s3, t3, gp
                  slti         s4, a3, -505
                  mulhsu       s8, gp, s9
                  div          s11, s6, s11
                  sll          s3, t5, s5
                  sltu         s0, s11, sp
                  sll          s8, gp, s9
                  add          s4, s10, a3
                  srai         s1, a0, 13
                  mulhu        s3, s9, a3
                  add          s11, s2, a3
                  nop
                  slt          ra, s10, s4
                  nop
                  srli         s7, a1, 22
                  remu         s1, s6, gp
                  or           t4, s3, s6
                  sub          t5, s7, t6
                  sra          a4, a0, a1
                  srl          t4, s7, s8
                  sra          a7, t6, tp
                  nop
                  xori         s3, s7, 1836
                  sltu         t0, s4, s5
                  remu         s2, t2, s4
                  rem          a7, a6, t0
                  mulh         s3, s11, s0
                  sub          t0, s3, t4
                  remu         s11, a5, a4
                  and          t6, t4, t0
                  remu         a7, t0, a3
                  ori          a1, a6, 675
                  mulh         t2, zero, tp
                  sltu         tp, t1, t5
                  remu         s3, t0, s7
                  or           s6, t0, a4
                  nop
                  auipc        a0, 696735
                  srli         a5, zero, 25
                  xor          s3, t3, s8
                  srai         s1, s3, 5
                  ori          gp, t0, 671
                  sub          tp, a0, s4
                  ori          s8, s9, 1986
                  and          s3, tp, t3
                  or           s8, s10, s0
                  rem          s10, a5, s11
                  sub          a1, a2, a0
                  sll          s8, a3, a5
                  rem          t1, t3, s1
                  sra          tp, s3, gp
                  mul          t1, a4, zero
                  xori         t3, t0, 231
                  mulhsu       a5, s7, t2
                  mulhu        a7, t6, ra
                  div          a4, a4, s7
                  remu         s6, s9, t5
                  auipc        a3, 13015
                  divu         t5, s3, t2
                  divu         s9, t5, s6
                  srli         s3, t2, 1
                  sub          t2, a1, a4
                  add          s9, a1, t1
                  sltiu        a7, s4, 915
                  slti         tp, t5, -1382
                  sub          s10, a6, a2
                  auipc        s7, 427025
                  srl          gp, a5, t1
                  xor          s0, a4, s5
                  addi         a1, s4, 1248
                  mul          s4, s1, s1
                  lui          a6, 565193
                  rem          gp, a0, s1
                  divu         a3, a2, s9
                  xori         s3, t4, 1133
                  sltu         s4, sp, t6
                  slli         s8, a6, 5
                  add          t6, a3, s8
                  addi         t5, t1, 603
                  sra          a1, s7, t6
                  sub          t1, t1, t4
                  remu         t4, gp, s2
                  sltiu        s4, t3, -71
                  auipc        gp, 734090
                  addi         gp, s4, -213
                  sltiu        s7, s6, -953
                  srai         a4, a0, 25
                  mulhsu       t0, a7, gp
                  and          a0, t0, a6
                  xori         a6, a1, 1093
                  slt          s6, t3, t1
                  slti         a1, sp, -518
                  xor          t4, s0, t5
                  andi         s7, s4, 2030
                  srai         t6, a3, 0
                  and          zero, s0, a4
                  slti         a6, s10, -1254
                  sltu         s10, a7, zero
                  sub          t1, tp, sp
                  rem          a3, a6, s6
                  lui          t1, 384180
                  div          tp, a5, a1
                  srli         s9, s2, 9
                  srai         s3, s7, 24
                  divu         s3, tp, gp
                  addi         zero, s5, 1816
                  mulhsu       t1, a3, s5
                  or           a7, a6, s9
                  srl          s4, a2, zero
                  srl          t4, s3, a2
                  mulh         gp, tp, t6
                  mulh         s10, s11, s4
                  srli         s2, gp, 27
                  mulhsu       s1, a2, gp
                  srl          t5, t2, s8
                  srai         a1, s1, 21
                  ori          t3, a5, -315
                  xor          a3, t5, s7
                  mulh         a5, a4, ra
                  mulh         gp, a4, t1
                  xori         s4, s3, 1471
                  sltiu        tp, s8, 1998
                  nop
                  mulhu        t3, t0, t4
                  and          s4, s8, s3
                  slt          t0, a7, gp
                  rem          s4, s10, a2
                  div          t6, s10, a2
                  or           t0, t0, a2
                  remu         gp, zero, zero
                  sub          s11, t6, s4
                  xori         t2, s1, -1866
                  andi         s11, t5, -1447
                  add          s9, t2, s7
                  slti         a4, t3, -878
                  andi         s11, s6, -1037
                  sll          a1, a0, s4
                  lui          a1, 895932
                  divu         s11, s1, a6
                  divu         tp, t1, s0
                  sub          a4, s3, s7
                  sltiu        s10, s9, -989
                  div          gp, s4, s2
                  remu         s8, zero, a6
                  or           s7, a5, a4
                  mulh         s4, a1, t3
                  andi         t1, a1, 1381
                  srli         ra, t0, 21
                  mulhsu       a1, t1, s3
                  and          tp, zero, a5
                  nop
                  slti         s6, s4, 1901
                  xor          s7, t1, s5
                  mulhsu       a5, a0, t3
                  mulhu        t0, s5, gp
                  sll          ra, s5, a0
                  mul          s11, s3, s2
                  div          t6, t0, s9
                  addi         t5, t2, 821
                  srl          a5, s2, a5
                  mulhu        s1, s10, t2
                  sltiu        t4, t1, -1371
                  sra          a1, s7, s4
                  srli         a5, tp, 16
                  addi         s7, a5, 684
                  add          ra, t1, s4
                  rem          t0, t5, zero
                  sub          a3, a6, a4
                  srai         t3, t2, 14
                  srai         t6, a4, 24
                  srl          a7, s5, t1
                  div          s7, s6, s3
                  and          a4, s6, s0
                  mulhu        s3, a5, a7
                  slli         s10, t1, 16
                  slti         t5, gp, -1312
                  andi         s6, s1, 957
                  auipc        s8, 1044256
                  addi         ra, tp, -1034
                  srai         t1, a5, 7
                  slti         s3, s7, -538
                  slli         s10, a3, 3
                  mulhsu       zero, a2, t6
                  srl          a5, a1, s3
                  mulhu        t6, a4, t6
                  auipc        a3, 222332
                  sll          a0, t2, s5
                  add          a3, s7, t0
                  divu         t5, t3, gp
                  mulh         a4, t2, s3
                  andi         a0, gp, 1058
                  sltiu        gp, s2, -1779
                  and          s7, zero, t0
                  mulhsu       a6, s5, t4
                  addi         s4, zero, -1456
                  mul          s7, t0, s9
                  nop
                  slti         tp, t2, -917
                  remu         t0, a5, a0
                  ori          a3, t5, 827
                  add          t3, s9, t5
                  divu         s10, t4, tp
                  sltiu        s9, s1, -1554
                  srai         tp, a3, 24
                  slti         t3, s6, 1056
                  mulhu        gp, a1, ra
                  slti         s4, s3, -1988
                  addi         s8, s9, 431
                  mul          a3, s6, a4
                  andi         s4, ra, 913
                  divu         s2, s9, s8
                  or           a5, s0, a6
                  addi         s9, gp, 1235
                  ori          gp, a1, -1925
                  remu         t2, s2, s10
                  sub          s7, a7, a0
                  mulh         s0, t4, a2
                  sltiu        t6, t4, -1627
                  nop
                  slt          t6, s11, a1
                  lui          gp, 584512
                  lui          a3, 601195
                  slti         s10, t4, 978
                  auipc        a6, 207577
                  div          s7, s2, a6
                  sll          a4, a7, s6
                  mulh         s9, s11, a1
                  mulhsu       s2, s6, s9
                  slti         s9, s7, 1055
                  sra          tp, s10, s7
                  srai         s2, sp, 6
                  mul          s2, s10, a7
                  and          tp, s9, a7
                  slt          t6, t4, s11
                  div          t3, s11, s9
                  remu         s6, a0, t0
                  add          t5, s10, s1
                  mulhu        t1, t0, zero
                  slli         a1, a5, 31
                  sra          a6, t5, a2
                  srli         s7, zero, 9
                  srai         t3, s11, 11
                  slt          s9, ra, s1
                  sll          s2, s8, ra
                  lui          zero, 657343
                  xori         s7, s1, -347
                  sub          s0, ra, s0
                  srl          a3, s6, s11
                  nop
                  remu         a4, t4, a1
                  slli         s0, t3, 2
                  xori         s3, a5, 38
                  srli         s0, s4, 6
                  and          s6, s1, s5
                  srai         t6, a3, 19
                  srli         s0, s4, 29
                  add          t2, zero, a5
                  ori          zero, a1, -1607
                  rem          s11, s7, a6
                  slt          s3, t6, a0
                  mul          tp, zero, t2
                  mul          a0, s10, a3
                  divu         a3, s4, s2
                  nop
                  slli         ra, t6, 0
                  sltiu        s8, a5, 1844
                  sll          t6, a0, t2
                  auipc        s2, 6778
                  sltu         t1, t4, t6
                  mulhu        ra, a0, t2
                  mulh         a4, t5, s10
                  sltiu        s11, a2, -240
                  srai         a1, s8, 1
                  srl          t5, s9, s0
                  andi         s7, a4, -191
                  divu         s11, s10, s4
                  divu         gp, s11, s8
                  slli         ra, t2, 30
                  ori          s2, ra, 1386
                  sra          t4, s10, s6
                  remu         s11, s6, ra
                  or           t4, s6, t0
                  sra          a4, a0, t1
                  nop
                  auipc        a3, 369987
                  srai         s0, s10, 3
                  slt          a3, s11, t2
                  nop
                  slti         s4, t2, -1119
                  ori          s11, t1, 1418
                  srli         ra, ra, 27
                  srli         s11, zero, 14
                  mulhu        a1, sp, t3
                  nop
                  slt          s7, s9, t4
                  sra          s2, a3, s5
                  remu         s9, s7, a1
                  xor          s8, a7, t2
                  sltu         t0, t6, gp
                  srl          s3, t1, a0
                  sra          ra, a1, t0
                  sub          t0, ra, s10
                  nop
                  mulhu        zero, tp, s9
                  xor          t1, a6, a6
                  remu         a4, s9, a3
                  slt          tp, a4, s0
                  remu         t5, a5, t0
                  divu         t0, zero, a6
                  mul          s6, tp, s8
                  srai         s0, t3, 8
                  xor          s10, t2, s4
                  ori          s10, gp, 1309
                  divu         a0, a4, a6
                  add          a6, a2, ra
                  mulhsu       s6, tp, t0
                  auipc        s0, 921659
                  add          s7, gp, sp
                  slli         s9, s11, 9
                  rem          s11, sp, s7
                  or           s2, s1, ra
                  xor          s1, tp, t5
                  remu         s6, a3, s4
                  mul          ra, tp, tp
                  remu         t2, a3, t1
                  mulh         ra, t0, a6
                  rem          t2, a3, t1
                  auipc        gp, 2056
                  sra          s2, s9, s8
                  xori         t4, a5, -1256
                  remu         tp, a4, s5
                  xori         a0, sp, 659
                  xori         zero, tp, -1521
                  div          a7, t1, s8
                  remu         a3, a4, s5
                  remu         a1, s11, t4
                  divu         a5, s3, s8
                  xori         s8, s5, -1566
                  addi         s11, s6, 728
                  mulhsu       s3, s10, s6
                  nop
                  sltu         s0, s1, sp
                  auipc        a7, 884091
                  sra          t0, t1, a4
                  sltu         a4, tp, t2
                  divu         a3, s5, a0
                  divu         a3, t0, s1
                  mulhu        a6, s9, t5
                  or           s4, s2, t0
                  slti         s3, s6, 141
                  auipc        t5, 385478
                  slli         s9, s7, 24
                  nop
                  addi         s8, t3, -433
                  and          t5, t2, sp
                  srli         s1, s7, 4
                  ori          s9, s7, -1075
                  sltu         t1, s7, tp
                  addi         s7, s4, 349
                  addi         t0, s2, -540
                  slti         s4, t1, 537
                  mulhu        s6, a7, s4
                  mulhu        t3, s9, sp
                  srl          s0, a3, a3
                  ori          s10, a6, 40
                  rem          s8, sp, t4
                  or           s8, tp, a0
                  ori          a7, s11, -1052
                  addi         s7, t6, -428
                  andi         s8, s8, 1158
                  auipc        s3, 597958
                  mul          a4, sp, s1
                  mulh         s11, a2, s5
                  ori          t1, a6, -535
                  addi         s1, s8, 257
                  xori         t3, a4, -1941
                  and          s8, s4, s1
                  remu         s6, s3, a4
                  mul          t3, sp, s5
                  andi         s10, s8, 2032
                  sll          a1, t3, s3
                  xori         s6, zero, 1662
                  xori         a3, a6, -253
                  sltiu        t0, tp, -1026
                  addi         a1, t2, 1603
                  auipc        s3, 235939
                  sltiu        tp, s2, -1920
                  auipc        t1, 468974
                  or           a1, s1, sp
                  mulhsu       t3, t3, t3
                  add          gp, a7, s2
                  srai         zero, s10, 1
                  sltu         s1, s0, a4
                  srl          t5, t0, a4
                  and          s6, t0, s6
                  xori         s7, t6, -1357
                  or           t3, a3, a0
                  mulhsu       s2, ra, t5
                  or           s6, t3, a5
                  div          s11, s11, a7
                  srli         s2, s5, 13
                  mulhsu       t1, s8, s4
                  srli         t1, sp, 2
                  andi         s0, t1, 997
                  ori          s6, s10, -67
                  sll          a1, sp, s3
                  and          s8, zero, a1
                  nop
                  nop
                  addi         a0, t3, -66
                  nop
                  or           a3, a0, a3
                  srl          s3, s11, s9
                  remu         a1, t3, a2
                  slli         s11, s9, 21
                  add          ra, s2, t3
                  mulhsu       t0, a3, a2
                  xori         s9, a4, -216
                  andi         tp, gp, -803
                  nop
                  mul          s0, gp, s10
                  srli         s7, t6, 29
                  addi         s7, zero, -623
                  slti         t0, s5, -607
                  mulh         s8, t3, s8
                  add          s4, t5, s8
                  addi         t0, s1, 1179
                  ori          s9, ra, 759
                  or           t4, t6, t4
                  mulhsu       s1, s0, a3
                  divu         s2, s3, s10
                  auipc        t4, 638807
                  mul          t6, s0, s4
                  mul          a3, s10, a4
                  rem          s4, s8, ra
                  nop
                  mulhsu       t2, gp, a2
                  mulhsu       t1, zero, a4
                  auipc        s11, 5141
                  sll          t1, ra, a3
                  sub          s4, t5, t6
                  sltiu        t1, s8, 1124
                  lui          t3, 162180
                  mul          ra, sp, a4
                  divu         s4, sp, s1
                  sra          zero, a5, t5
                  lui          t6, 304103
                  sub          zero, gp, t3
                  nop
                  slli         s4, s2, 13
                  andi         t6, s0, -251
                  ori          s0, tp, 1541
                  slt          gp, s3, a2
                  mulhu        s8, a0, a3
                  slt          t3, s6, s3
                  remu         t3, gp, s1
                  slli         ra, tp, 26
                  div          gp, gp, sp
                  sltiu        a1, t3, 414
                  nop
                  sra          a3, tp, a7
                  srl          t3, a7, a0
                  remu         t5, t2, s11
                  srli         s6, s0, 22
                  srli         t0, s8, 15
                  sll          a3, s3, s0
                  remu         s4, s7, s5
                  lui          s10, 332079
                  xori         t5, t1, 1791
                  mul          t3, s1, gp
                  xori         a7, s5, 333
                  nop
                  addi         t2, a7, -139
                  div          s3, s6, sp
                  and          a0, t2, s6
                  srl          s1, a0, s8
                  divu         s6, sp, s5
                  divu         a7, s2, a3
                  addi         a3, s1, -1092
                  add          s0, t4, s7
                  andi         gp, s8, -1262
                  srai         s4, a3, 27
                  addi         s4, s11, 1509
                  andi         a1, gp, 290
                  ori          a3, gp, -625
                  slli         tp, s10, 17
                  auipc        t6, 16878
                  mulhu        a0, s7, s2
                  slt          s0, s9, s10
                  lui          t3, 64719
                  sltu         a3, t5, s0
                  slti         a4, s1, 1166
                  sltiu        s11, s2, 130
                  sltu         s11, s6, t3
                  add          s2, ra, t1
                  xor          a3, ra, a4
                  mul          t0, t6, t1
                  srl          a1, s7, s11
                  srai         s4, s11, 5
                  and          s9, ra, sp
                  lui          s7, 445881
                  and          t1, s5, t2
                  lui          t4, 79314
                  lui          s4, 52802
                  slti         a4, s0, -603
                  mul          a6, t6, a0
                  sltiu        tp, s7, 488
                  sltiu        s2, s11, -442
                  div          s9, a2, s5
                  sra          a1, s8, tp
                  add          a0, s5, s3
                  mulhu        s2, a7, zero
                  auipc        s3, 60145
                  xor          t5, s0, t5
                  nop
                  xori         t6, s10, -416
                  addi         s1, s2, -1601
                  ori          tp, s10, -778
                  xori         a7, s11, 893
                  slti         s0, s5, 1129
                  xori         t2, ra, -243
                  mulhu        s1, s2, sp
                  srl          t0, t5, a5
                  lui          gp, 280207
                  sltu         a1, gp, a6
                  xor          t5, s10, a1
                  lui          a1, 985978
                  div          s11, s5, a4
                  xori         a5, t3, 1953
                  addi         a0, a0, 1243
                  sltiu        s6, s10, -438
                  slti         tp, zero, 1378
                  mulhu        s2, s1, t4
                  add          s9, t4, a5
                  srl          tp, gp, a5
                  auipc        s4, 334796
                  srli         s3, t4, 24
                  slli         a5, t3, 17
                  mul          s6, s11, a1
                  mulhsu       a7, a0, a6
                  slli         t6, s10, 28
                  slti         tp, sp, 1987
                  mulhsu       s10, t3, sp
                  sra          a1, s9, s10
                  sra          a0, a4, t4
                  srai         t3, s0, 0
                  rem          t2, s1, a6
                  or           t1, s3, s4
                  sub          a7, gp, a7
                  slli         s7, t1, 26
                  nop
                  andi         s6, sp, 1764
                  addi         tp, t0, -166
                  div          s11, tp, s10
                  sub          t0, s9, s9
                  lui          a7, 1011094
                  mulh         s0, t0, tp
                  sltiu        s0, a4, 454
                  sltiu        s9, a5, -1156
                  divu         a5, a3, s2
                  mulh         t3, t2, a4
                  addi         ra, t2, -1085
                  and          s1, a1, sp
                  srli         s4, a5, 24
                  sll          t1, gp, zero
                  srli         a0, tp, 5
                  or           tp, s9, a7
                  or           t1, a1, s7
                  slt          ra, t0, s2
                  ori          a7, s1, -1465
                  srai         s6, t3, 15
                  rem          t5, s10, s4
                  mul          tp, s8, s10
                  srli         t6, a0, 17
                  mulh         s4, s8, s6
                  remu         a0, a0, s11
                  add          a5, a7, a3
                  srai         a3, t3, 8
                  srl          t3, s4, t3
                  and          t4, a2, a2
                  rem          a7, s11, s7
                  mulh         a4, t1, s5
                  and          t0, a5, t2
                  lui          t3, 398027
                  sltiu        s6, s11, 824
                  xor          a0, a4, s1
                  andi         a0, s7, 494
                  sub          t5, sp, ra
                  xor          s10, a1, s7
                  divu         s0, a3, t2
                  div          s0, t2, zero
                  addi         t4, s0, 1968
                  slli         t2, a3, 13
                  remu         s8, s3, a3
                  srai         a6, a2, 19
                  srl          s8, s2, a5
                  and          s2, s10, a0
                  mulh         s10, t6, a7
                  mulhsu       t4, t4, ra
                  srl          zero, s4, ra
                  sll          s9, s10, s8
                  xori         s9, a0, 577
                  and          s2, a7, s6
                  lui          a3, 160239
                  srl          t5, s11, s6
                  sltu         a5, t2, zero
                  sra          gp, s11, s11
                  auipc        s11, 296730
                  nop
                  sra          zero, s10, s7
                  lui          s11, 985580
                  xor          s1, t5, s5
                  sltu         a7, sp, s2
                  sub          t2, s7, t4
                  mulhu        s6, t5, a7
                  auipc        s8, 828868
                  sub          t4, s8, s6
                  ori          tp, t2, -407
                  and          s3, a5, t3
                  or           s9, t6, s11
                  auipc        s10, 137830
                  add          t3, s4, t4
                  mulh         a4, t3, s7
                  divu         t2, s3, gp
                  slt          t3, a2, s0
                  xor          t4, s6, tp
                  addi         s6, t2, -80
                  ori          tp, s8, 1261
                  sub          a0, s4, t1
                  srai         s7, s11, 9
                  divu         zero, s9, s8
                  div          s0, tp, s9
                  rem          s4, t2, s7
                  srl          s4, s3, s6
                  slti         a0, a0, -1686
                  mulhsu       s7, s5, t3
                  srl          s7, a3, t2
                  slt          t1, s1, t6
                  or           a0, a3, a7
                  div          t4, t1, a0
                  remu         a4, t3, s6
                  lui          t2, 378402
                  mul          a3, s9, a1
                  xor          s0, s11, t3
                  mulh         s0, tp, t2
                  add          s6, s5, s9
                  xor          t5, gp, s10
                  nop
                  sltiu        ra, s8, -1671
                  sll          t4, s3, tp
                  mul          s0, s6, t5
                  mulhu        t5, a4, s11
                  remu         a5, a6, s6
                  remu         t3, s3, a4
                  sub          s1, a1, s3
                  andi         s1, s10, 646
                  xor          t4, s11, gp
                  slli         s6, a4, 17
                  auipc        s7, 168792
                  xori         a6, a2, 1774
                  slti         t2, a6, -2011
                  and          a4, s2, s6
                  srli         s1, s7, 9
                  sra          a3, a4, s0
                  sub          s9, t3, s1
                  srai         a0, t6, 19
                  and          s2, s1, s11
                  slli         gp, sp, 13
                  sll          t4, zero, s9
                  andi         a0, a3, -176
                  or           a5, t2, s0
                  ori          s9, a6, 2010
                  mulh         t5, a1, t5
                  andi         s0, a2, -1850
                  srai         t1, ra, 30
                  andi         a5, gp, 23
                  srai         t3, s6, 0
                  sub          a6, s2, gp
                  sltu         s9, s7, zero
                  sra          t0, t6, s3
                  mulh         t0, a3, t3
                  addi         s3, s6, -240
                  and          ra, t5, t2
                  rem          t0, t3, a0
                  mulhu        ra, t2, sp
                  sltiu        a4, s10, 475
                  xori         zero, a3, -1354
                  srl          s4, a3, zero
                  mulhu        a7, t0, s6
                  srli         t5, s4, 7
                  sra          a3, gp, t2
                  mulh         s7, s8, a6
                  sll          t2, s8, s9
                  xori         a7, s7, -1639
                  ori          t3, t6, 1218
                  sra          t3, a5, t3
                  slt          a5, a2, t2
                  srai         t5, a1, 21
                  sra          s2, t1, a3
                  srl          gp, s9, a4
                  sltiu        s1, t3, 736
                  mulh         s6, gp, t0
                  sltu         s7, t1, s10
                  slt          a1, t4, s9
                  srai         s0, s10, 21
                  sltu         s8, gp, s8
                  slt          a3, s11, s11
                  rem          a7, s7, s7
                  mulh         a4, t0, s8
                  mulhu        zero, s11, s7
                  andi         a1, t6, 1
                  andi         zero, s9, 535
                  div          a4, zero, t0
                  mulhu        s4, tp, s1
                  sltiu        s7, s6, -1555
                  mulhu        s8, a4, a2
                  rem          a5, s8, t2
                  srai         a6, ra, 1
                  srai         s1, zero, 19
                  srl          s9, ra, t0
                  xor          a0, a7, s2
                  slt          zero, a6, s10
                  and          a3, s10, s3
                  srl          s11, ra, a5
                  slti         a5, t3, 233
                  divu         s0, ra, s8
                  add          zero, t0, s2
                  div          s7, a1, a0
                  add          tp, t5, s9
                  or           zero, a3, a4
                  sltiu        a4, a6, -1748
                  div          a5, a6, s2
                  add          s1, s11, t3
                  andi         s0, t6, -525
                  div          s6, t6, t6
                  or           a1, s3, s2
                  div          s4, s9, zero
                  div          ra, s5, s0
                  or           a4, t0, ra
                  mulh         t6, s3, s2
                  mulhsu       s10, t1, a0
                  mulh         s8, zero, a3
                  mulh         s0, t1, zero
                  rem          t1, t5, s11
                  sub          t4, a2, a0
                  remu         a1, s1, s3
                  mulhu        a5, t6, s10
                  xori         s8, a7, -627
                  sltiu        t3, t3, 1444
                  mul          s4, t4, t3
                  sra          s9, a4, sp
                  mul          t1, s9, s5
                  auipc        a0, 119739
                  srl          zero, zero, s5
                  xori         tp, ra, 1815
                  ori          s0, gp, 1980
                  mul          s1, t4, s10
                  slti         tp, tp, 998
                  lui          t4, 901994
                  srai         t5, s8, 17
                  ori          t2, zero, 242
                  xori         s2, tp, -1618
                  slti         tp, s6, 1161
                  ori          t5, t4, -1277
                  lui          s11, 1008998
                  add          a3, t5, t0
                  andi         t5, t6, -1799
                  or           s9, zero, sp
                  div          a0, t6, s6
                  add          s7, s11, t5
                  slti         s7, a7, 1863
                  lui          a6, 261484
                  sub          t5, t1, t6
                  mulhsu       a0, t3, a0
                  addi         s7, ra, 409
                  auipc        s1, 347396
                  div          s7, t4, t5
                  mulhu        s7, s6, a1
                  srl          tp, a2, t3
                  sub          t1, gp, t6
                  mulhu        a0, t1, s1
                  div          s2, sp, a1
                  slti         s11, a7, 1314
                  nop
                  mul          s2, t5, s0
                  mul          ra, t3, t6
                  mulh         s1, s11, t2
                  lui          s11, 50017
                  or           s8, t3, s9
                  slt          t3, a6, s0
                  ori          a6, s10, 132
                  xor          s4, s2, s11
                  nop
                  slti         s3, sp, 1087
                  ori          tp, s8, -809
                  sltu         gp, a7, a7
                  divu         t0, s9, s3
                  nop
                  addi         a7, t3, 184
                  slt          s11, t1, t4
                  div          t1, s8, t5
                  mulhu        t3, gp, s3
                  mulhsu       t6, a6, tp
                  mulhu        t1, ra, a3
                  mul          t1, t6, zero
                  rem          s7, a1, s8
                  or           s4, a4, a2
                  addi         gp, ra, 489
                  ori          a7, a4, -1609
                  divu         a5, s1, s10
                  rem          t1, t0, a1
                  sll          t0, s0, s0
                  srli         tp, a5, 6
                  mulhu        ra, t1, tp
                  addi         s1, a3, 694
                  srai         t0, a7, 22
                  srli         tp, t0, 23
                  mulh         gp, s6, a1
                  slt          s10, tp, a6
                  auipc        a7, 730342
                  ori          s6, t1, 1517
                  andi         t1, tp, -833
                  slti         s0, a5, 872
                  srli         s6, s3, 27
                  and          s2, s2, a3
                  addi         s4, a5, -1723
                  add          a1, a5, s5
                  mulhsu       zero, t2, s8
                  mulhu        s6, a2, s8
                  sub          s6, t5, a7
                  sra          s8, a3, a7
                  mulh         s7, a6, t2
                  slt          s11, a2, t1
                  srli         a0, t2, 1
                  or           t3, s2, s8
                  ori          s9, ra, -1485
                  mulh         a5, s8, a1
                  slt          t2, s3, a4
                  ori          zero, a1, -339
                  slt          a6, sp, a4
                  div          a1, s11, a7
                  slli         s4, a7, 21
                  auipc        a0, 304404
                  addi         s6, s0, -817
                  nop
                  srai         s9, s10, 30
                  rem          a7, s8, ra
                  div          s8, t5, a6
                  sll          t4, tp, s5
                  rem          a6, t4, s5
                  lui          s2, 202547
                  or           s2, gp, t0
                  slt          a6, t5, t4
                  mulh         s11, a6, gp
                  slti         t1, s4, -1467
                  srl          t6, a6, s4
                  remu         t3, s11, s1
                  slli         s6, t4, 30
                  mulhsu       s0, s9, a6
                  sltu         t0, a5, ra
                  slti         t0, s3, 357
                  mul          a6, ra, a5
                  div          s0, a2, t3
                  sltu         t6, t2, a0
                  xor          t4, s7, t1
                  remu         t2, gp, s8
                  andi         t1, s8, 881
                  divu         s6, a0, gp
                  andi         a6, s0, -563
                  slt          t0, s7, zero
                  addi         s10, a0, 499
                  andi         s7, a4, -453
                  auipc        s7, 998934
                  mulhsu       t4, t0, zero
                  slt          a5, s8, s8
                  srl          t4, s0, s0
                  ori          t2, s3, -1686
                  and          s4, s9, zero
                  mulhu        t0, zero, s11
                  ori          a6, tp, -1357
                  and          a5, a0, t4
                  div          t3, ra, t6
                  srl          s7, s1, s3
                  srli         s11, s8, 7
                  xori         a6, s10, -973
                  sltu         tp, gp, t2
                  sltu         t1, a3, gp
                  sltiu        gp, t2, -1951
                  sra          t2, s8, t3
                  ori          t2, a6, 1801
                  remu         t1, s2, s8
                  srli         s8, t5, 9
                  auipc        t0, 33562
                  mulhsu       a6, s7, zero
                  mulhsu       a3, t1, t5
                  add          t4, t4, a1
                  nop
                  sra          s0, a1, a3
                  and          t2, t2, a5
                  sra          tp, gp, a3
                  addi         s0, s7, -359
                  sub          s0, s0, s8
                  sra          a1, t2, a2
                  mulhu        s8, s10, a6
                  mulhsu       s7, t3, a1
                  sra          t3, a5, t1
                  rem          t4, t2, a5
                  remu         zero, gp, t1
                  sra          s0, a2, s4
                  lui          s6, 687713
                  sltu         t1, s1, s3
                  srl          s7, a2, s10
                  remu         s8, t2, s2
                  mulhu        t4, zero, a2
                  srli         a4, s9, 7
                  sub          s2, t1, s3
                  nop
                  and          s6, t4, t1
                  slli         zero, t0, 25
                  addi         s8, a5, -1017
                  div          a6, s4, s3
                  and          a5, s7, s0
                  sll          s3, t5, s0
                  srli         t0, s4, 24
                  auipc        ra, 925019
                  mulh         a1, t2, t3
                  mulhsu       s8, gp, s2
                  rem          s0, sp, a6
                  sltiu        s1, s6, -1145
                  srai         t6, gp, 5
                  divu         zero, tp, a3
                  sra          t6, t1, tp
                  lui          t3, 198327
                  auipc        tp, 762514
                  xor          ra, a7, a3
                  nop
                  slti         s0, gp, -488
                  sltu         t6, s6, t2
                  slli         zero, s6, 29
                  sltu         gp, ra, sp
                  rem          t2, t5, t0
                  slt          t0, s3, t0
                  sra          a5, s10, s0
                  auipc        a7, 1843
                  andi         s7, t1, -1150
                  divu         s8, a4, s9
                  slt          t0, t2, t3
                  lui          t2, 980795
                  srl          a3, s0, t3
                  div          s10, t1, t5
                  div          s8, a7, t4
                  mulhu        t5, s11, s2
                  sltiu        ra, t3, 1397
                  mulh         a5, s1, a2
                  sub          gp, ra, a7
                  or           s2, ra, a4
                  sub          t4, tp, zero
                  srli         zero, t1, 0
                  xor          a7, a4, a1
                  slli         t3, gp, 30
                  sltu         s7, sp, a7
                  andi         ra, s9, 703
                  xor          s9, a0, t5
                  divu         s2, t4, t1
                  slti         gp, s1, -571
                  srli         tp, s3, 11
                  add          t1, a5, a7
                  nop
                  mulhu        s8, ra, t4
                  sll          t0, a7, s7
                  srli         s10, s9, 16
                  divu         t0, t1, s10
                  andi         s1, a2, -238
                  slli         zero, ra, 17
                  mulh         s8, s1, tp
                  lui          s2, 192368
                  sltu         tp, s8, ra
                  and          a3, s5, tp
                  andi         s3, s0, 1268
                  srli         s6, s6, 19
                  nop
                  srl          gp, s8, a0
                  auipc        a7, 587223
                  slti         gp, a5, -1500
                  slli         s1, t2, 0
                  sltiu        tp, a1, -231
                  sra          zero, s8, a2
                  mulhu        t3, s9, s8
                  slt          a1, s3, s1
                  xor          s0, zero, a3
                  sltiu        t1, s4, -740
                  rem          a3, s1, s4
                  addi         t5, s11, 11
                  divu         s7, a3, s1
                  xor          t4, s6, s3
                  srli         zero, a4, 5
                  remu         t4, s8, s0
                  mul          t0, s7, s1
                  slt          t2, t6, a1
                  slti         s11, a7, -1820
                  or           t1, a7, s8
                  slt          s7, t3, s11
                  divu         gp, a5, t5
                  mulhu        s0, t0, a1
                  auipc        tp, 824308
                  xor          s0, s3, s10
                  slli         s4, a5, 13
                  mulhu        t4, s8, a7
                  nop
                  auipc        a7, 904880
                  rem          s10, s2, s3
                  add          s1, s8, a3
                  add          s9, s3, t1
                  sra          a4, t2, sp
                  nop
                  add          tp, a4, s3
                  xor          a3, s1, tp
                  div          s10, a4, s0
                  ori          t3, s3, -1480
                  nop
                  sltiu        t5, tp, 1332
                  ori          t4, tp, -565
                  or           s4, t3, t5
                  addi         s11, t4, -798
                  sltiu        s4, s9, -1668
                  lui          a6, 898631
                  addi         a7, a0, -2017
                  ori          s7, s8, 464
                  sra          s3, a5, tp
                  xori         t5, s9, -831
                  lui          t4, 1040914
                  srl          t2, a3, s6
                  sltiu        t5, ra, 810
                  srl          s4, a2, s5
                  div          t4, a0, t2
                  andi         zero, ra, -534
                  and          t1, s2, s2
                  div          s9, a1, ra
                  remu         s6, s4, a6
                  mulhu        s8, s2, s2
                  addi         tp, s10, 1583
                  sltiu        gp, t0, -1236
                  or           zero, t1, s0
                  addi         t3, s1, -946
                  ori          t3, a5, -1180
                  srai         s3, s3, 28
                  sll          ra, t1, s7
                  remu         ra, t4, s7
                  sltu         a4, s5, s4
                  mulh         a4, t3, a7
                  slti         s3, t6, 1406
                  slli         s6, ra, 10
                  lui          gp, 587313
                  rem          a1, tp, s11
                  ori          s7, s6, 1923
                  slt          t4, sp, a3
                  nop
                  srl          zero, a1, a1
                  auipc        zero, 224977
                  div          s2, tp, s9
                  nop
                  ori          a5, s11, 2008
                  remu         t0, s11, zero
                  mulhu        t4, a5, a4
                  mulhu        t3, a2, ra
                  addi         gp, s4, 195
                  remu         s0, gp, a7
                  slti         t4, s9, 138
                  rem          a0, s9, a3
                  sub          s3, gp, s8
                  sltiu        t1, a7, 1557
                  auipc        t1, 774491
                  mulhu        s7, t5, t2
                  sltu         s3, a0, zero
                  ori          t1, s8, 1233
                  sll          t6, s9, s1
                  add          t6, a2, s8
                  lui          s2, 15176
                  andi         s0, ra, 2024
                  remu         gp, t1, a2
                  slt          a1, s11, s6
                  slt          t4, s10, s8
                  addi         a7, a6, -121
                  xori         s9, s6, 668
                  srl          s9, s0, s10
                  andi         s7, zero, -1807
                  add          a6, s11, gp
                  slt          a0, s0, a0
                  ori          s1, gp, 260
                  xor          s10, zero, s6
                  xor          a6, t5, gp
                  andi         t2, t0, 36
                  sltiu        ra, s4, -1406
                  srai         s1, s6, 1
                  divu         a4, a6, s0
                  srai         t6, a3, 25
                  rem          a0, t0, s5
                  sra          t1, gp, s11
                  sltu         a3, a2, s1
                  and          s6, s0, a7
                  xori         t2, s2, 1368
                  srli         t3, s9, 10
                  nop
                  sub          s9, zero, t0
                  div          t2, t2, a0
                  addi         s10, t3, -1801
                  nop
                  srli         ra, t2, 26
                  mul          t1, s10, a2
                  nop
                  xori         s3, a0, 1866
                  mulhu        tp, a6, s7
                  slti         a4, s8, 617
                  slti         a5, a4, -630
                  or           s11, a1, t4
                  div          t5, s2, t6
                  mul          t4, s6, a1
                  divu         t0, a3, a4
                  mulhsu       s4, t3, s10
                  or           s6, s6, s9
                  xori         tp, s4, -770
                  addi         t2, s6, -1606
                  nop
                  slti         ra, t6, 1813
                  remu         t4, s8, t4
                  sltiu        tp, s3, 1387
                  slli         t6, a5, 11
                  mulhu        s0, s9, t0
                  rem          tp, s3, s4
                  xor          tp, t4, s11
                  xori         s2, s10, 2012
                  auipc        s2, 74838
                  srl          gp, s3, t3
                  and          s10, s8, s1
                  and          tp, s5, ra
                  divu         s10, a1, s5
                  remu         a5, tp, gp
                  div          t2, s2, t5
                  mulhu        s0, s5, ra
                  slti         a1, t2, 867
                  and          a5, t4, s11
                  sll          s0, s10, t5
                  mulhu        s2, ra, ra
                  xori         s7, s9, -878
                  lui          s1, 247069
                  xori         s11, s10, 243
                  mulhsu       t3, s3, t1
                  sll          gp, ra, a3
                  auipc        t1, 133197
                  lui          a1, 411519
                  lui          gp, 599710
                  nop
                  srai         a5, s9, 25
                  srai         t4, a4, 7
                  xori         s8, t2, -2041
                  xori         a1, s7, -343
                  sll          s10, gp, sp
                  xori         s10, t1, 1919
                  addi         ra, a2, -1369
                  srai         s3, t6, 30
                  sltiu        zero, gp, -368
                  or           s4, a1, s10
                  ori          t3, a3, -56
                  slli         s6, a4, 12
                  lui          s4, 146300
                  slt          s0, s6, t0
                  srli         s10, tp, 6
                  mulhsu       a6, s6, ra
                  or           s0, t5, t6
                  srl          s8, a1, s2
                  and          s10, t6, a6
                  sltu         s4, t3, t4
                  div          s3, t0, a5
                  sltiu        t0, s3, 1207
                  sltu         t1, gp, a6
                  rem          s2, a7, t5
                  srl          t2, s11, s10
                  auipc        zero, 265885
                  auipc        t3, 37499
                  sra          t4, ra, sp
                  sltu         s10, sp, s1
                  ori          a0, s8, 560
                  sltiu        s7, t2, -1394
                  srai         s11, s6, 28
                  mul          tp, s5, sp
                  mulhu        s7, s10, s1
                  srli         s7, s10, 16
                  lui          ra, 255422
                  sltu         s9, a2, t4
                  sra          ra, sp, s7
                  srl          s6, a3, t3
                  sll          tp, a0, t2
                  ori          s0, s1, 1104
                  add          a0, ra, a5
                  divu         s11, a3, s1
                  xor          t2, a2, s6
                  slt          zero, s3, s6
                  mulhsu       a4, a6, gp
                  sub          a3, s7, s8
                  srl          t2, zero, s6
                  nop
                  mulh         a4, a5, a7
                  xori         t1, t5, 966
                  sra          gp, a2, s9
                  auipc        s6, 538136
                  sltiu        s10, s0, 547
                  rem          s7, s8, s4
                  srli         ra, a5, 17
                  ori          s4, sp, -4
                  div          a5, s10, t2
                  divu         t6, s6, s2
                  div          s9, s3, a4
                  slt          zero, t1, t3
                  ori          s10, t0, 948
                  sub          ra, zero, s9
                  mulh         ra, s10, s11
                  add          t4, tp, t3
                  addi         s10, s5, -973
                  xori         t4, t0, 971
                  slti         s0, s7, 334
                  ori          s7, gp, 1310
                  mulhsu       s11, s3, a7
                  sra          tp, t5, a2
                  sltiu        zero, s1, 693
                  sub          gp, a6, a7
                  sltu         a7, a0, t1
                  sra          a6, zero, s10
                  srl          a7, t4, t3
                  mul          a0, s1, a6
                  div          t2, s11, a4
                  divu         s4, a3, t3
                  slli         s3, s6, 1
                  and          s8, sp, a5
                  sll          ra, sp, s6
                  srai         s6, gp, 21
                  divu         t2, s10, t0
                  mul          s3, a2, sp
                  addi         s6, s7, 153
                  slt          ra, s6, s11
                  and          a4, t5, a2
                  lui          s3, 900867
                  xor          tp, a7, s5
                  mulhsu       zero, a0, s5
                  mulhsu       a3, ra, gp
                  mulh         a1, sp, a3
                  srl          a4, t5, s0
                  srli         gp, s6, 28
                  mulhsu       a1, a0, a4
                  divu         tp, s2, s3
                  xor          a7, ra, t5
                  auipc        s10, 1002203
                  slli         s11, s8, 2
                  xori         s3, s6, -1876
                  sltiu        a6, s3, 220
                  xor          t0, ra, t1
                  sra          s4, t2, s11
                  or           a1, a3, ra
                  mulhu        s0, s4, t5
                  sll          a7, s11, s6
                  srai         a3, t4, 30
                  sub          s10, a0, s0
                  and          a5, t4, t6
                  mulhu        gp, a5, s9
                  sltu         t5, t6, tp
                  addi         s7, t3, -1193
                  srli         zero, t3, 13
                  lui          a3, 604828
                  and          s11, s0, a0
                  add          s10, a1, t2
                  lui          a0, 363261
                  sub          t5, tp, s1
                  rem          s6, s9, a0
                  rem          s6, t0, t1
                  mulh         ra, zero, s1
                  slt          s4, a6, ra
                  lui          s4, 525118
                  div          s6, a5, t2
                  mulhu        s11, s7, a4
                  ori          s0, sp, -1476
                  sltu         a5, s3, a7
                  sltiu        t0, s2, 856
                  mulhsu       a1, s3, s7
                  sub          s7, s8, t6
                  sra          s4, s9, t2
                  div          a3, a7, s11
                  addi         a0, s11, 1028
                  addi         a6, sp, 303
                  remu         a1, s6, s5
                  mulhu        gp, s10, s10
                  srl          t5, ra, s3
                  nop
                  or           t4, t3, a1
                  andi         a4, a0, -1905
                  slli         t4, t1, 8
                  slt          s7, s3, t6
                  divu         a5, s10, a7
                  nop
                  sltu         s8, t4, a0
                  rem          s2, a2, t1
                  slt          gp, tp, s4
                  mulhu        a3, a7, s9
                  sltu         s7, a2, tp
                  sra          tp, zero, s8
                  mulhsu       s7, s0, s11
                  mulh         t0, s3, t0
                  and          a0, a2, t4
                  srai         a0, s7, 1
                  srl          a3, a1, sp
                  mul          s11, t0, s6
                  sltu         a5, t4, a3
                  divu         s8, s0, gp
                  div          s7, s3, zero
                  divu         a5, s8, t4
                  slli         t5, s3, 26
                  mulh         a5, a4, a7
                  slli         gp, a4, 29
                  sll          t0, s8, ra
                  mul          a6, s6, ra
                  add          a4, t2, s4
                  remu         s10, a3, t4
                  sll          s11, sp, a6
                  div          a7, t6, gp
                  mulhu        t6, s8, t3
                  addi         s1, a3, 1362
                  or           t0, tp, a7
                  srli         t5, s2, 18
                  mulh         s8, t5, t4
                  divu         t6, s4, a4
                  mulh         gp, a4, s8
                  nop
                  nop
                  addi         zero, gp, 1669
                  slti         gp, a4, 804
                  xor          t1, s11, t3
                  slli         t0, t5, 1
                  srli         s8, t6, 10
                  sll          t5, a6, tp
                  srai         a0, a0, 26
                  mul          s4, a3, gp
                  sra          t1, s1, t1
                  mulhsu       tp, tp, gp
                  sub          t0, t2, ra
                  xori         s11, s3, -1815
                  and          a4, s3, t0
                  nop
                  slti         t3, a1, 1325
                  sub          gp, a0, sp
                  divu         s7, a0, a0
                  slti         t4, a0, -1623
                  slli         t0, s6, 6
                  mulhu        t0, zero, a7
                  remu         a5, sp, t4
                  sltiu        a0, s5, -650
                  rem          s9, t4, t5
                  srli         gp, s3, 3
                  add          t6, t6, s3
                  or           s10, a6, s0
                  addi         a6, a6, -175
                  remu         a5, s11, s6
                  remu         a0, t2, tp
                  and          tp, a0, t2
                  xori         t5, gp, 694
                  sltiu        a7, t1, 68
                  mulhsu       s6, s5, s9
                  add          t4, t2, a1
                  auipc        zero, 708291
                  mulhsu       s4, t3, a1
                  auipc        tp, 895551
                  xori         a4, s0, 1344
                  auipc        s8, 602443
                  div          a7, a7, t0
                  andi         s0, sp, -553
                  mulhsu       tp, ra, a0
                  and          t5, s11, s4
                  sub          s7, s2, t6
                  mulhsu       t3, t3, a3
                  rem          a5, zero, a5
                  srli         t3, a1, 25
                  srl          a4, t2, ra
                  remu         a0, s10, s9
                  auipc        t0, 260134
                  mulhsu       zero, s1, a3
                  mulh         s0, gp, a0
                  srli         s4, a7, 17
                  divu         gp, t1, gp
                  mul          s11, s1, s1
                  sltu         s7, s7, t0
                  mulhsu       s9, s2, zero
                  slli         a3, s1, 29
                  rem          tp, t1, t1
                  srli         a0, a0, 26
                  slt          t6, s5, sp
                  srai         a4, s9, 0
                  srai         s0, s1, 10
                  sra          a4, a1, s0
                  srli         a6, ra, 25
                  srli         s8, t3, 29
                  slli         s0, t5, 31
                  sll          t5, tp, a6
                  ori          s0, tp, 1617
                  sll          s0, t0, s2
                  xori         s10, a1, -357
                  srl          t5, s7, s8
                  divu         s8, t1, s5
                  srai         t6, ra, 23
                  remu         t2, a6, a6
                  remu         s7, s0, t1
                  div          a6, s10, s5
                  div          a0, a5, s8
                  lui          gp, 307382
                  srli         a0, sp, 30
                  or           gp, a3, s8
                  sltiu        s0, sp, -1922
                  andi         t5, a6, -410
                  xori         tp, s3, -340
                  mulhsu       zero, s3, t0
                  srai         t3, a6, 27
                  xor          a3, zero, s10
                  div          t0, s0, a3
                  sub          t3, ra, tp
                  andi         s4, s4, 1350
                  srl          t4, a1, t1
                  slli         a7, a0, 8
                  sra          s10, s8, t2
                  sub          t6, a1, s3
                  ori          t6, s3, 2009
                  sra          t5, s1, t6
                  nop
                  xori         gp, s10, 826
                  addi         s10, t3, 330
                  remu         s7, a6, s11
                  nop
                  sltiu        s10, s7, 1240
                  slt          t3, t1, t1
                  addi         s2, t0, 1327
                  mulhu        t4, a0, s3
                  xori         s0, zero, 1763
                  mulh         s0, tp, s7
                  rem          a7, a4, a0
                  sra          s11, s1, s9
                  remu         a5, sp, t3
                  xori         s2, a5, -494
                  sltiu        s4, a5, -740
                  srl          gp, sp, t5
                  sra          s0, t2, zero
                  nop
                  remu         s3, a7, s6
                  srai         t2, ra, 18
                  divu         a3, s2, s1
                  andi         ra, t5, 80
                  auipc        ra, 877369
                  xori         s3, s8, 1343
                  sra          ra, t3, s1
                  mulhsu       s4, t3, s6
                  and          a7, tp, s4
                  mulhsu       t6, s2, t4
                  rem          t4, t4, s5
                  andi         a6, gp, 1405
                  mul          t2, a0, s4
                  div          s2, s1, a7
                  lui          t1, 956022
                  mulh         s2, s4, t3
                  mulh         a4, a1, a5
                  srli         t0, s7, 0
                  rem          s7, s8, t2
                  lui          a5, 31194
                  sll          a4, s5, s8
                  mulhsu       t2, a1, t1
                  and          s7, s11, t1
                  remu         s11, t4, s2
                  xori         s1, t3, -1415
                  nop
                  div          t2, s5, a5
                  srli         a7, s7, 16
                  remu         s1, gp, s2
                  srli         s9, a6, 11
                  sub          t2, s9, a4
                  sra          a0, a4, t5
                  andi         a0, s6, 185
                  andi         ra, sp, -633
                  or           s0, a4, s10
                  xori         s1, t6, -2007
                  div          t5, t4, s8
                  mulhsu       gp, ra, s1
                  sra          s6, s0, tp
                  xori         a5, t2, 865
                  remu         s11, tp, t6
                  srai         a3, t5, 15
                  srl          s1, t5, gp
                  ori          a5, s5, -428
                  divu         t2, s4, t1
                  auipc        a3, 119312
                  mulhu        t0, t2, t2
                  xor          a3, a2, s10
                  mulhu        s1, t6, s9
                  slli         a0, s5, 30
                  sltu         s0, s1, t3
                  sra          s10, s8, zero
                  sub          a7, t0, t1
                  divu         s0, s11, ra
                  rem          tp, a1, a5
                  slt          a4, a3, a4
                  mul          zero, zero, t5
                  or           a4, tp, a7
                  mulhu        a7, t2, t1
                  sltu         s6, t3, ra
                  srai         zero, t4, 12
                  mulhu        t5, s11, t5
                  slti         s7, t1, 311
                  mul          s3, a7, s3
                  mulhsu       a5, a6, a0
                  slli         ra, t5, 12
                  srli         s2, t4, 22
                  divu         t3, a2, s4
                  slli         s9, tp, 7
                  srl          t2, s10, s8
                  auipc        s7, 150998
                  sub          s0, s2, a2
                  xori         t0, tp, -1749
                  mulhu        a6, s6, t3
                  remu         a0, a2, t1
                  remu         s1, a2, s7
                  lui          s4, 581335
                  and          a5, s3, s6
                  srli         t4, tp, 6
                  divu         a6, s7, a0
                  rem          s6, t1, t1
                  mulh         s7, sp, t6
                  xori         a7, t2, 1151
                  mulhsu       a1, s3, a7
                  xor          gp, a0, zero
                  and          s2, a5, s4
                  div          s8, s6, a4
                  sltu         tp, ra, s4
                  andi         s1, t3, 81
                  addi         s3, a2, 879
                  srai         t6, a2, 17
                  srai         a3, a6, 29
                  mulhu        a5, a1, s8
                  sltu         s10, s4, t6
                  and          s1, a0, t6
                  lui          s10, 908600
                  and          a4, t4, s7
                  andi         tp, a3, 1590
                  and          s1, s3, t1
                  srai         t2, s9, 8
                  div          a7, a4, a3
                  sll          s9, ra, t4
                  addi         a6, t2, 562
                  srl          a3, s10, s7
                  xor          s0, t2, a5
                  divu         t6, s2, s11
                  srli         tp, sp, 24
                  remu         gp, t6, t1
                  xori         tp, s9, 57
                  slti         s1, s3, -887
                  divu         a1, zero, a3
                  sltu         tp, s6, t6
                  sub          s6, zero, a5
                  slti         ra, a3, 675
                  srai         a0, s8, 3
                  sltiu        s9, s6, 1803
                  andi         tp, s5, -1676
                  and          s3, s9, s1
                  mulh         zero, t4, s6
                  mulhsu       t2, s6, a3
                  mulh         s10, s1, s10
                  nop
                  rem          a7, a7, a1
                  xori         s4, s9, 75
                  rem          s4, s0, s6
                  sra          zero, a7, t4
                  andi         a3, a3, 1908
                  sltu         tp, s6, a1
                  nop
                  mulhu        s7, a2, s4
                  divu         s2, s6, a2
                  and          ra, a2, ra
                  slli         s7, s8, 13
                  xor          t5, s7, t1
                  mulh         t5, s10, s3
                  or           t0, s5, t4
                  xori         a6, s9, 1110
                  add          zero, s2, s0
                  mulh         s2, t3, s9
                  srl          s9, a5, s9
                  sra          s7, a2, s4
                  mulhu        gp, a3, s2
                  auipc        t2, 407851
                  lui          t5, 797367
                  sra          s10, s11, s4
                  div          a1, s8, t1
                  sltu         t4, a2, s0
                  sra          a7, a2, s2
                  lui          a4, 855378
                  auipc        s9, 99240
                  sltu         a3, tp, gp
                  mulh         tp, s5, tp
                  srl          t4, tp, s3
                  sltiu        s0, t4, -1765
                  ori          ra, s11, 1026
                  sltu         a0, s2, s11
                  divu         a0, t6, a7
                  sltu         s1, a2, sp
                  sltu         s10, s3, sp
                  lui          s4, 793579
                  srli         a0, s4, 16
                  srai         s4, a5, 22
                  divu         gp, t5, s2
                  ori          zero, sp, 488
                  remu         t2, s7, s1
                  add          t4, zero, t1
                  and          t0, t6, a7
                  sltiu        a7, t1, 1829
                  sll          s6, s10, a4
                  slt          s2, s0, t0
                  addi         s6, s3, -293
                  sra          t4, t1, t3
                  slt          a5, t5, a1
                  sra          s2, gp, a0
                  nop
                  addi         s3, t6, 1980
                  andi         a7, a3, 326
                  sll          t3, s2, s6
                  and          s2, a5, a0
                  mulh         a3, t1, s11
                  sltu         a3, a5, s9
                  xor          t1, s2, ra
                  remu         s9, s1, t1
                  sll          t4, s5, t5
                  slt          s2, s3, a4
                  xor          t0, s2, s8
                  div          t0, s10, a4
                  addi         t2, t0, 1792
                  srl          s3, sp, t5
                  sltiu        s4, zero, -1356
                  sll          a7, s10, t4
                  srai         t0, s10, 16
                  or           t4, a4, t5
                  auipc        a7, 849145
                  mul          a1, s7, s5
                  div          t0, a7, t4
                  xor          a6, a5, s6
                  remu         t1, s8, a4
                  sltiu        zero, s8, -1897
                  srli         s8, zero, 3
                  mul          zero, ra, s9
                  lui          a7, 33947
                  xor          tp, s4, s9
                  mulhu        t2, t4, t5
                  addi         a6, sp, 1321
                  or           s3, s9, a4
                  slli         a4, a6, 18
                  add          t2, s7, a3
                  or           ra, s1, s8
                  sltiu        zero, t3, 1434
                  slti         s6, t0, -1419
                  divu         ra, t0, s8
                  ori          t2, t5, -1767
                  xor          t5, s11, t1
                  xor          a0, t1, s11
                  sltiu        s8, s7, -1180
                  srli         t0, a2, 21
                  xori         a4, tp, -165
                  andi         t6, t0, 519
                  sltiu        zero, tp, -572
                  add          a3, s4, s11
                  andi         t2, s3, -324
                  slt          s9, gp, t3
                  addi         a3, t6, 381
                  auipc        s1, 441858
                  sub          ra, t0, s11
                  andi         zero, a6, 734
                  slt          a1, s9, gp
                  sltiu        t2, sp, -1429
                  srli         t1, t4, 7
                  slli         a3, t2, 29
                  slti         t5, a7, 1818
                  xori         tp, t2, -839
                  div          s1, s4, s1
                  slli         s0, a6, 16
                  remu         t2, t6, a1
                  and          a7, zero, a5
                  srli         t5, t0, 3
                  addi         s7, s2, 800
                  xori         a5, gp, 1930
                  mulhu        s9, s4, s3
                  slli         t4, t3, 23
                  mulhu        t4, sp, a3
                  andi         a5, t2, 1001
                  xor          t3, a4, s1
                  and          t2, s11, a4
                  mulh         a6, a4, s3
                  slt          t2, a6, s0
                  add          a3, a3, t1
                  andi         zero, s6, 822
                  divu         t4, s11, tp
                  srli         t6, gp, 20
                  nop
                  sra          a7, s11, t3
                  div          a4, a7, t6
                  nop
                  srai         a4, s8, 2
                  xori         s11, a0, -796
                  lui          ra, 1039715
                  srl          gp, s5, s3
                  slli         a1, t1, 0
                  and          s1, s1, t1
                  mulh         t4, t1, t5
                  srai         t2, s11, 8
                  and          t5, a4, s6
                  sltiu        s0, s6, 1207
                  slt          a4, a3, ra
                  slt          zero, a3, s5
                  srl          t2, s5, s8
                  mulhu        t3, a6, a0
                  xori         s2, gp, -1409
                  ori          t0, s9, 313
                  and          s4, s8, gp
                  nop
                  nop
                  mulh         t3, a6, gp
                  slli         s2, t4, 8
                  remu         t5, s6, s1
                  addi         s9, s5, 909
                  divu         s1, tp, s2
                  sltu         s3, a1, a1
                  slti         a5, s9, 893
                  xori         s7, a7, -660
                  xor          a3, t5, ra
                  rem          t4, a2, zero
                  divu         t2, gp, t3
                  srai         a1, t1, 29
                  ori          tp, a7, -550
                  and          s6, s9, s4
                  andi         t6, t4, -1622
                  mul          t5, s3, s0
                  xor          s4, t6, s3
                  mulhu        s1, t6, a4
                  addi         s10, gp, -1381
                  sub          s4, s2, s1
                  div          s7, a2, gp
                  mulhu        a0, t5, zero
                  add          a7, t6, a3
                  divu         t0, t2, s0
                  auipc        t1, 149490
                  slli         t1, a1, 25
                  remu         a3, t5, a5
                  sra          zero, s7, s7
                  sll          ra, a7, t1
                  mulhsu       s6, a4, a6
                  xori         t4, t0, 485
                  and          t5, t3, s3
                  mulh         t5, s0, ra
                  slt          zero, s3, tp
                  mulh         a6, s1, t0
                  remu         a5, sp, ra
                  sub          a6, s8, t6
                  add          zero, tp, a7
                  sltiu        t1, a3, 1140
                  remu         s7, a2, t5
                  lui          ra, 782596
                  lui          s0, 643057
                  divu         s9, sp, s0
                  srli         s9, s10, 25
                  slt          s2, t6, t5
                  srl          zero, a5, a2
                  remu         a1, s7, s2
                  divu         tp, a3, s0
                  slli         s4, zero, 12
                  sub          s11, a1, s5
                  xor          a0, a3, a7
                  sltiu        s2, s7, -1943
                  srl          t6, t5, ra
                  or           t3, t4, sp
                  addi         t1, s7, -1833
                  divu         t3, t4, ra
                  div          a6, s0, t3
                  andi         a7, t2, -1750
                  mul          s1, a3, s0
                  srli         s1, s0, 15
                  sra          s4, s8, s3
                  srai         s6, t3, 30
                  or           t4, a6, s4
                  lui          s2, 451890
                  nop
                  sltiu        a4, s10, 993
                  and          s10, zero, a0
                  slt          ra, t6, a5
                  mulhsu       ra, a1, a5
                  slt          gp, a6, a6
                  sltiu        t2, t1, -244
                  mulh         a6, t2, t4
                  add          t4, s4, t0
                  div          tp, s10, t5
                  rem          s10, s1, tp
                  mulh         a6, t1, tp
                  lui          s0, 299841
                  and          s3, s2, s2
                  sra          s11, t0, t1
                  srai         a0, a4, 15
                  divu         s10, s10, a7
                  mulhu        s3, t0, s6
                  srai         ra, a6, 21
                  sub          s6, t4, a3
                  andi         a1, tp, 1268
                  or           t4, s8, s11
                  ori          t5, s6, -457
                  divu         s2, s7, a6
                  mulhu        a0, t6, a3
                  div          ra, a3, t5
                  ori          t0, gp, -2011
                  srli         t2, s8, 22
                  xor          a3, t3, s4
                  srai         a3, sp, 1
                  mulhsu       t0, t2, t5
                  ori          t2, s3, -1177
                  srai         s1, s7, 13
                  sub          s10, s1, gp
                  sltiu        a6, s0, 1812
                  srl          s10, s0, s7
                  mul          t4, s1, s2
                  auipc        s2, 511420
                  and          gp, tp, t5
                  ori          t3, a0, -1455
                  slli         s3, a1, 12
                  div          a3, t6, t0
                  srli         s0, a7, 24
                  mul          t6, a5, t3
                  sra          s6, gp, s4
                  addi         ra, s4, 299
                  mulh         tp, s8, t4
                  mulh         gp, gp, ra
                  div          t3, t2, s0
                  nop
                  andi         a0, s2, 1658
                  ori          a7, s3, 156
                  sltiu        a5, s9, -1017
                  slt          a0, a7, a3
                  sub          t3, t2, a3
                  srl          t4, ra, s0
                  slt          s0, t4, t0
                  xor          zero, s3, s0
                  lui          t3, 222815
                  auipc        s11, 407253
                  or           gp, s6, a3
                  mulhsu       t2, s6, s0
                  lui          a0, 645843
                  addi         a4, s10, -1413
                  srli         a6, a5, 11
                  or           s7, s7, t5
                  mul          s1, t0, t4
                  auipc        a0, 459309
                  srl          s8, s9, t2
                  addi         s11, zero, 1786
                  sltiu        t3, a7, 39
                  slli         t2, s3, 11
                  sltiu        a0, a6, -1538
                  xori         s6, s3, -477
                  slt          t4, a7, sp
                  xor          s1, s6, t2
                  xori         a5, t5, 801
                  sll          tp, s10, s3
                  mulhsu       s6, tp, s0
                  srl          s6, s5, s5
                  ori          a6, t4, 1116
                  divu         a0, s10, a1
                  xori         s7, s0, 1173
                  mulhsu       a3, a2, t0
                  or           a3, s1, a6
                  add          a7, ra, tp
                  xori         a0, s6, 2036
                  xor          a5, gp, t0
                  xor          s7, a0, t2
                  addi         s4, a2, -640
                  srli         a4, s11, 11
                  mulhsu       t5, a6, a1
                  sub          s7, t1, t3
                  mulhu        t2, s7, a1
                  srai         gp, t1, 25
                  srl          t4, gp, a5
                  nop
                  div          gp, s3, s11
                  slt          t2, s8, a0
                  and          s6, s6, a6
                  slli         a4, zero, 18
                  divu         a4, s0, t1
                  remu         a5, t5, t5
                  srai         zero, a5, 9
                  mul          a1, a2, s5
                  xori         t5, a0, 631
                  nop
                  mulh         t4, s2, s2
                  srai         t0, tp, 20
                  sltu         s6, tp, s10
                  sltu         s4, s1, a2
                  xor          gp, s2, t5
                  srai         a1, t1, 26
                  auipc        zero, 167319
                  slti         s10, a1, -642
                  sub          a7, zero, a7
                  or           t6, t0, t1
                  sll          a3, s2, s4
                  sltu         t5, a1, s11
                  srli         s8, a6, 27
                  or           t1, t6, s3
                  slt          s10, s2, s2
                  rem          t6, s4, t0
                  lui          t5, 344065
                  or           a4, s8, s11
                  xor          s7, a5, gp
                  addi         s11, s11, -816
                  rem          tp, a7, s0
                  mulh         tp, t4, s5
                  add          t4, sp, a3
                  rem          zero, gp, a4
                  andi         tp, gp, -1965
                  mulh         a1, a2, a2
                  mul          a1, s4, s7
                  sll          s4, a5, tp
                  srai         zero, a5, 13
                  slli         a4, ra, 2
                  xor          a0, a2, s2
                  slti         a6, a3, -1156
                  remu         t0, ra, s7
                  mulh         s6, a5, tp
                  slt          ra, t1, s6
                  sra          a3, t3, s7
                  srli         s11, ra, 26
                  div          s0, t2, s7
                  auipc        a3, 256413
                  xor          t3, a2, a7
                  sub          t1, t0, a5
                  slti         gp, s11, -253
                  mulhsu       a5, s6, tp
                  mulhsu       gp, t2, s6
                  sll          s7, s1, tp
                  srl          a7, sp, zero
                  remu         a7, s4, t2
                  sub          a7, s10, s8
                  div          a0, s6, t1
                  srai         zero, s11, 23
                  slti         s9, a1, -1757
                  srli         s7, a5, 17
                  sltiu        s4, s2, 1997
                  add          a5, t0, s10
                  and          a4, a5, s11
                  remu         a1, s10, sp
                  auipc        zero, 695722
                  and          t4, a4, s10
                  srl          s10, s10, sp
                  mulhsu       s0, t3, t6
                  sub          tp, ra, s6
                  lui          zero, 318866
                  xor          ra, a5, s2
                  addi         a6, t0, 394
                  mul          t6, s0, a5
                  xor          s10, t3, s3
                  or           a0, t5, ra
                  nop
                  sra          s4, a7, t2
                  divu         s1, t4, s2
                  or           a4, a2, tp
                  mulh         s10, a7, t2
                  nop
                  mul          ra, t1, s11
                  sra          a7, zero, ra
                  or           tp, a3, a0
                  and          t1, t0, s7
                  remu         a4, a5, tp
                  slti         t4, zero, -1445
                  sra          s11, tp, s0
                  sra          s10, a2, a7
                  mulhu        t5, a7, gp
                  rem          s10, t5, s0
                  divu         t5, s6, t1
                  nop
                  xori         t4, s8, -1218
                  srli         a1, ra, 5
                  sub          t3, a6, s3
                  xori         a6, s7, -164
                  mulhsu       a7, a1, s7
                  remu         s2, t0, s3
                  nop
                  lui          gp, 675242
                  nop
                  remu         s8, s8, a2
                  mul          a4, tp, s11
                  addi         t4, s8, 1074
                  lui          t3, 321375
                  addi         a6, s3, 1848
                  slt          a7, tp, t3
                  xor          t0, s4, s8
                  or           t4, s0, a6
                  divu         t2, a2, a1
                  mulhsu       t6, t1, a7
                  div          s2, s7, t2
                  or           t4, t2, t1
                  rem          zero, a1, ra
                  auipc        s7, 517663
                  mulh         s3, s3, s5
                  sub          t3, sp, s11
                  sltiu        s1, ra, -1914
                  ori          a4, a3, 549
                  sub          t0, t2, tp
                  sll          s4, s2, s5
                  mulhu        ra, a7, s5
                  slt          ra, a7, s4
                  srai         s8, s11, 29
                  srl          a7, s6, t0
                  mulhsu       t6, a4, s6
                  slli         s11, t3, 11
                  slli         t5, a4, 0
                  slt          a4, a2, s8
                  slli         tp, t5, 3
                  slti         ra, s6, 1343
                  slli         s6, s5, 4
                  sll          t1, tp, s0
                  div          a3, t5, t0
                  slli         ra, zero, 11
                  rem          s3, a1, s6
                  xori         a1, zero, 1853
                  mulhu        a4, zero, a2
                  auipc        a0, 831814
                  addi         s11, t0, 255
                  lui          t0, 903755
                  remu         a0, t3, s7
                  div          tp, sp, s8
                  lui          gp, 1023842
                  sll          gp, s10, a3
                  or           a1, s6, s6
                  sra          t6, a5, t0
                  xori         tp, a2, 1728
                  nop
                  add          s3, s1, ra
                  slli         s7, sp, 10
                  nop
                  srai         a1, a2, 21
                  slt          t2, t3, a6
                  mulhsu       s3, zero, t1
                  andi         tp, s7, 606
                  slti         t4, ra, 2028
                  srli         t1, a2, 23
                  mul          zero, s9, tp
                  lui          s11, 677306
                  or           s2, ra, a3
                  sltiu        s9, s0, -700
                  lui          t3, 795150
                  slt          t0, s0, s9
                  slt          s0, s10, a5
                  addi         s0, s6, 484
                  divu         a5, s5, zero
                  sub          s11, t5, a5
                  mulhsu       gp, t0, sp
                  mulhsu       a1, a5, s7
                  srai         t5, t3, 3
                  mulhsu       s8, t0, sp
                  addi         s7, s7, -671
                  xor          s11, s10, sp
                  mulhsu       a4, a4, s8
                  slt          zero, a6, t0
                  remu         s1, a7, t2
                  lui          a4, 666413
                  srl          tp, a5, t0
                  sltiu        s11, s10, 575
                  addi         s3, s11, 375
                  remu         s3, a6, a5
                  srli         t1, s6, 18
                  and          t0, sp, s0
                  srai         s10, s10, 1
                  sltu         gp, t5, s4
                  mulhsu       a4, s2, tp
                  mul          a6, a3, tp
                  add          a3, a7, s11
                  sltu         s8, a3, t5
                  nop
                  sltiu        s10, s10, -1146
                  xor          s10, s9, a5
                  sra          a3, t6, t0
                  slt          a1, a3, s8
                  slli         a5, s8, 26
                  mul          s4, a1, s10
                  mulhu        s7, s4, s10
                  andi         s0, s6, 1655
                  lui          s0, 574104
                  lui          s1, 629855
                  srli         a3, a2, 16
                  ori          tp, s2, -1439
                  mul          t4, s1, s7
                  srai         s8, t6, 4
                  slti         s6, t0, 706
                  sub          a7, a5, s4
                  div          a3, t0, s6
                  and          a4, gp, s4
                  mulh         t4, sp, ra
                  mulhu        s2, s2, t1
                  sub          a5, a4, a0
                  sra          t1, a2, gp
                  lui          a4, 106357
                  andi         t0, a5, -1520
                  nop
                  divu         s0, s1, a5
                  remu         s4, s1, ra
                  lui          a4, 968424
                  auipc        s4, 982425
                  sltu         s6, a4, s10
                  add          zero, s8, a2
                  lui          s11, 881564
                  sltiu        s0, s5, -628
                  sll          s2, s11, s5
                  srai         a1, s11, 24
                  sltiu        a4, a0, 1285
                  sltiu        ra, s5, -325
                  div          zero, a6, t2
                  mulhsu       t4, s2, sp
                  div          a7, tp, s0
                  andi         a6, t0, -1632
                  slti         s8, gp, -689
                  sltiu        a3, a2, 109
                  add          s10, s11, gp
                  auipc        t3, 694452
                  sra          t6, t0, s1
                  srai         s0, t2, 10
                  srai         s7, t3, 31
                  or           tp, a4, zero
                  mulh         s10, t1, t5
                  auipc        tp, 98017
                  mulhu        a5, s6, a6
                  xori         gp, a7, 1098
                  rem          a0, s6, t1
                  andi         t2, s6, 1432
                  and          tp, zero, s2
                  mul          a6, t0, s10
                  xor          t6, s1, s11
                  slti         ra, a4, -155
                  div          s1, s7, t4
                  xori         a6, ra, 43
                  slti         t6, s7, 1333
                  sll          s1, s10, s9
                  slt          t0, s8, tp
                  div          s1, s8, a1
                  mul          a5, a4, s0
                  slli         tp, gp, 17
                  sra          a4, s5, s3
                  mul          t4, s5, t5
                  slli         s0, s2, 18
                  mulhsu       s11, s8, a5
                  slt          a4, s11, s7
                  mulhu        a6, s4, a2
                  mulhsu       a7, t4, sp
                  and          t5, t6, t5
                  sltiu        s4, ra, -949
                  sub          ra, s4, s9
                  mul          tp, a6, a3
                  srl          s9, s6, s4
                  lui          t4, 960842
                  lui          s6, 13412
                  remu         a7, s0, t1
                  srai         t5, ra, 25
                  nop
                  xori         s7, t6, 1159
                  xori         zero, s2, -868
                  mulh         a5, t0, s0
                  slli         s11, t0, 14
                  nop
                  sltu         s11, a3, s1
                  sltu         t6, s7, s8
                  sltu         s10, s10, a1
                  auipc        a1, 39340
                  addi         a4, s10, -396
                  and          t3, a2, s7
                  rem          zero, s3, a2
                  mulhsu       s6, s3, a1
                  divu         s7, sp, t1
                  ori          a0, t3, -1401
                  sll          s8, s6, s0
                  xori         gp, ra, -1351
                  nop
                  rem          a7, s4, t6
                  mulhsu       t3, gp, a2
                  nop
                  slti         zero, s8, -769
                  sltu         t1, s0, t0
                  sll          a5, a1, a4
                  xor          t6, a1, t2
                  sltu         a6, t1, s8
                  srai         t0, a6, 5
                  slt          a4, a4, a6
                  lui          t5, 352440
                  srl          a4, s7, zero
                  addi         s10, t5, -1191
                  sltiu        a7, s8, -1150
                  mulhu        a0, s7, a2
                  div          t4, a2, t4
                  xor          s1, s10, s2
                  srli         t0, t4, 14
                  divu         s4, t1, s6
                  mulhu        a5, s8, s8
                  slt          t5, ra, zero
                  sra          s7, s10, a3
                  srl          s0, ra, s6
                  sub          s6, t1, s5
                  lui          a1, 728176
                  slt          t0, a2, s6
                  slt          s11, tp, s11
                  srai         s10, s1, 30
                  slti         t2, zero, -1535
                  srl          s0, t5, s7
                  sra          t5, s5, t2
                  auipc        t1, 728356
                  slt          t3, tp, s0
                  mulhu        s7, a1, a2
                  sll          s9, s5, a7
                  srli         a7, s1, 16
                  addi         t2, t5, -835
                  sra          tp, t5, t1
                  remu         a7, t3, zero
                  slli         s2, tp, 19
                  slli         a4, s9, 28
                  ori          gp, a0, 1850
                  xori         a0, s5, 1439
                  lui          s3, 211056
                  ori          s3, s1, -895
                  xori         s2, s5, -681
                  slli         a6, a7, 18
                  sltu         a7, a1, ra
                  sub          ra, a5, a3
                  ori          s3, s4, -1126
                  div          s6, t6, t3
                  xor          a6, a7, s0
                  mulhu        a4, t3, a3
                  srli         t1, t6, 1
                  sll          s7, s9, s8
                  srli         a0, s6, 27
                  add          a3, t6, sp
                  auipc        t2, 367111
                  slli         s4, s10, 19
                  ori          a4, t2, -1882
                  mulhu        a4, s11, s9
                  xor          a4, s8, a6
                  and          a0, zero, t3
                  mul          s9, t1, s1
                  srai         tp, s8, 14
                  or           a3, s10, a4
                  mulh         s4, t3, s1
                  mulhsu       a6, t2, s3
                  slt          a7, a0, s6
                  and          t2, zero, a4
                  mul          t0, zero, a4
                  sll          zero, t1, t0
                  auipc        t1, 277579
                  sra          a0, s3, s5
                  remu         t4, s1, a4
                  sltiu        ra, s9, -1497
                  mulh         t5, gp, s7
                  mulh         s4, s2, a5
                  or           t5, a5, t2
                  auipc        s3, 7731
                  mulh         s9, sp, ra
                  div          gp, t1, s8
                  add          t4, t4, s3
                  srl          gp, s8, s5
                  sll          t0, t5, a6
                  sra          a7, s5, t6
                  andi         s8, s6, -830
                  mulh         s11, a5, tp
                  xori         s8, a2, -427
                  or           s9, tp, a5
                  divu         t0, a0, s10
                  divu         t4, s7, ra
                  slt          t4, a2, s3
                  auipc        s4, 434043
                  srl          a1, s10, a6
                  srli         t2, t0, 10
                  mulhu        t4, a3, tp
                  andi         zero, a7, -1410
                  or           a7, zero, ra
                  remu         ra, s4, zero
                  mulhsu       t1, t1, a0
                  mulh         t3, a0, gp
                  divu         t2, s10, tp
                  sltiu        s4, s4, -587
                  add          s1, a3, gp
                  sll          s2, s3, tp
                  and          s6, s10, s2
                  andi         s4, a3, -1381
                  sltiu        t6, s2, 1605
                  mulhsu       s8, a3, t4
                  srl          a7, a4, a4
                  xor          s2, s11, t5
                  andi         s8, s2, -1250
                  sra          a0, zero, s2
                  mul          gp, s3, a7
                  rem          s8, s1, s9
                  sra          s0, s2, t6
                  slli         t4, gp, 30
                  sub          s7, s8, tp
                  slli         t1, zero, 7
                  slli         a3, s8, 28
                  sll          t0, ra, s5
                  mul          t4, sp, sp
                  srl          s9, s4, a4
                  srl          a5, s6, s1
                  mulh         s1, s10, t2
                  divu         t2, t1, s4
                  mul          t2, s3, sp
                  mulhu        s8, t0, zero
                  addi         s1, a1, 1060
                  slli         s4, s2, 23
                  mul          s9, a4, a3
                  addi         a7, a0, -968
                  sra          a6, ra, s1
                  srai         gp, s3, 3
                  xor          ra, s9, s10
                  mulh         s4, s3, s8
                  srl          t4, s3, a2
                  mulhu        s7, t5, t0
                  div          a7, s3, a5
                  srai         a3, s8, 23
                  sltu         a0, t0, a6
                  sub          zero, a6, t4
                  srai         gp, a1, 19
                  or           s0, s1, a6
                  slti         s11, s10, -1657
                  sll          gp, a3, t1
                  srai         a6, t2, 24
                  srl          a0, sp, t1
                  srli         a3, s6, 16
                  ori          gp, s10, 25
                  srl          s6, ra, gp
                  slt          s3, a5, s8
                  auipc        s3, 591638
                  divu         s0, t6, s9
                  rem          t3, s10, s1
                  srai         a4, t6, 16
                  lui          s4, 605213
                  mul          t5, a2, s11
                  mul          s0, a6, t5
                  andi         s4, s10, 1761
                  addi         t2, s4, -1775
                  remu         ra, s8, s2
                  or           s2, a6, s9
                  sltiu        t1, t5, 495
                  sll          t2, zero, t3
                  and          t1, s2, s4
                  mulh         s1, s1, s0
                  xor          s7, a7, t2
                  or           t5, a2, s5
                  mul          a5, t3, s2
                  srai         gp, s5, 10
                  mul          a5, s10, gp
                  sub          a7, a7, s2
                  and          t3, a4, zero
                  sub          t3, t1, a6
                  rem          t3, a2, s10
                  sra          a4, sp, s11
                  slti         s0, s8, 1371
                  ori          t3, s6, 1517
                  mulh         s4, t2, a3
                  nop
                  sub          gp, a7, s1
                  sra          t4, t4, a0
                  sltiu        s7, a7, 1278
                  lui          a5, 776343
                  addi         a6, s6, -290
                  auipc        s0, 357964
                  sltiu        a3, t1, -1828
                  andi         s2, a3, -1708
                  mulh         zero, t2, s7
                  sltu         s8, s11, t6
                  srl          s2, s3, t3
                  sltiu        a1, a5, -1565
                  add          s6, s2, a5
                  remu         s4, s4, t0
                  sub          s6, a0, a6
                  sltiu        zero, s7, 2004
                  xor          s11, sp, t4
                  add          a0, gp, s3
                  srli         s9, a1, 17
                  mul          s9, s8, zero
                  sub          s11, t6, t2
                  div          a0, s5, a2
                  srl          s9, gp, a6
                  sltiu        a1, ra, -952
                  srai         t2, zero, 8
                  slt          zero, sp, s2
                  andi         s4, a0, 932
                  srl          gp, s4, t4
                  sub          a5, zero, gp
                  sltiu        a3, s7, -698
                  ori          a0, ra, -9
                  or           s7, a5, s9
                  sltiu        a1, ra, 323
                  sub          t4, gp, t0
                  lui          s6, 44883
                  auipc        a4, 965758
                  sltiu        s10, s7, 900
                  xor          t3, a3, s5
                  sll          gp, a0, s0
                  rem          s3, zero, s8
                  remu         t3, t5, gp
                  mul          s6, t4, a0
                  divu         t3, t3, s8
                  mulhu        a6, a2, a7
                  mulhsu       zero, s2, s8
                  mulh         a7, a0, a4
                  lui          s10, 158576
                  and          t0, s2, t1
                  srl          ra, tp, s5
                  or           t1, s9, sp
                  mulhsu       a1, t5, ra
                  mulhsu       t5, s3, gp
                  addi         s1, s0, 999
                  lui          s6, 67337
                  mulh         zero, zero, s9
                  sll          s9, s4, s8
                  ori          s9, sp, 1824
                  xori         t1, a4, 1636
                  xori         t6, a2, 1302
                  sll          s4, a0, zero
                  add          s2, s11, a1
                  srli         a4, zero, 26
                  mulhu        s4, s9, a3
                  sltiu        a6, gp, 702
                  divu         zero, s7, s3
                  and          t5, s11, a5
                  addi         s9, s11, -311
                  addi         a6, s7, -362
                  sltu         t3, sp, a4
                  mulh         t5, a5, t1
                  slti         a5, t4, 76
                  add          t2, t2, sp
                  srl          s9, s0, tp
                  sra          s0, s1, a4
                  add          a5, s3, t4
                  sll          s2, tp, s5
                  or           a6, t0, tp
                  srli         tp, a2, 1
                  add          tp, s9, a3
                  andi         s1, a6, -131
                  sltu         t6, tp, s8
                  slti         t2, t6, 679
                  xor          t6, sp, a7
                  sltiu        s0, s0, -1911
                  addi         a3, a3, 1374
                  mulhu        a5, sp, t1
                  auipc        ra, 183366
                  slt          s6, s3, s8
                  andi         a0, s6, 1720
                  and          s6, s8, a7
                  srli         t6, gp, 31
                  mulh         a4, tp, s0
                  auipc        tp, 690274
                  mul          a4, s2, t2
                  add          s10, s6, a4
                  auipc        s9, 859018
                  addi         s11, s1, -801
                  srl          t5, t3, a2
                  sltiu        a1, a6, 828
                  divu         zero, gp, a7
                  ori          a6, tp, 1648
                  sltiu        s0, s4, -626
                  xori         s6, a2, -1400
                  slti         s4, zero, -1915
                  sub          a7, s8, s0
                  sub          s0, a0, s3
                  slli         t1, s7, 2
                  addi         s7, t2, -1652
                  sll          s7, s1, s3
                  andi         a3, t1, 1237
                  xori         s9, ra, -261
                  sll          gp, s3, s0
                  sltiu        s2, a7, 1243
                  sltu         s4, t3, tp
                  srai         s10, a6, 5
                  slli         a5, s4, 28
                  ori          zero, a6, -636
                  slti         a5, a0, 1168
                  and          a6, t6, s2
                  srai         t0, a4, 29
                  slli         s11, s2, 13
                  mulh         s4, t3, t0
                  and          t4, t0, a3
                  mulhu        s11, a7, s2
                  slt          a7, t4, a0
                  slli         gp, s2, 8
                  sra          s6, s8, t5
                  div          a5, s2, a1
                  sub          a5, tp, t5
                  sltiu        t0, t1, -1038
                  remu         a5, sp, s0
                  sll          s3, s11, zero
                  slt          gp, s8, t0
                  add          tp, s6, a4
                  div          s9, s10, t5
                  auipc        s7, 458481
                  and          ra, s8, s11
                  sll          s2, t0, s6
                  srli         a3, gp, 17
                  lui          a1, 941698
                  mulhsu       s4, a1, a1
                  mulhu        a7, s6, s7
                  auipc        s4, 145910
                  and          a7, s8, t6
                  srli         s11, s8, 25
                  sub          s4, a2, t0
                  sltiu        gp, a1, 1233
                  nop
                  andi         tp, t4, -323
                  sll          a5, s5, s0
                  auipc        t5, 37417
                  and          zero, s3, s8
                  xori         ra, s2, -842
                  srl          a1, t0, s2
                  and          s0, t0, s3
                  sra          ra, a4, a0
                  slt          a1, ra, t3
                  slli         s6, a7, 11
                  slli         s8, a6, 17
                  remu         gp, a5, t4
                  srai         gp, s4, 4
                  remu         s3, s3, a0
                  div          t1, sp, a2
                  mul          s11, t4, a1
                  and          s3, s6, s4
                  srai         a5, t3, 20
                  slli         s7, a0, 27
                  nop
                  divu         s9, s0, s11
                  mulhsu       ra, a4, s11
                  sra          s1, a2, s4
                  mulhsu       s9, a6, t0
                  mulhu        t3, a5, s7
                  andi         t3, a4, 1947
                  sltu         a7, s5, t3
                  auipc        zero, 773073
                  mulhsu       s8, sp, zero
                  divu         s4, a1, s10
                  divu         s7, t1, t5
                  andi         a3, a7, 1097
                  and          s1, s1, tp
                  srai         s4, a3, 21
                  sra          s0, tp, a6
                  divu         s7, tp, t2
                  and          s11, s7, a0
                  divu         a5, s5, gp
                  srli         t0, s3, 26
                  nop
                  slti         s2, t4, 1950
                  srli         s10, s5, 24
                  mul          t5, t4, s7
                  remu         tp, s2, a1
                  nop
                  mulhu        t3, s1, a4
                  and          s2, a2, t1
                  and          s3, a1, a3
                  andi         t3, s8, -1851
                  lui          s0, 982657
                  add          s10, t0, s11
                  auipc        t2, 358788
                  sltiu        t2, s6, 1489
                  sltiu        s3, t3, -772
                  sltu         zero, t3, a7
                  xor          s7, s0, t6
                  add          s11, a1, a2
                  sll          t1, s7, gp
                  slti         s2, t5, 869
                  sra          tp, t1, a5
                  div          s4, t3, a3
                  sra          a3, t6, a1
                  mulhsu       a7, s6, s11
                  srli         gp, a0, 4
                  srl          ra, s11, t4
                  andi         s2, t3, 1492
                  divu         a7, a3, t4
                  slli         s10, a7, 25
                  lui          a4, 982371
                  sra          s10, t5, a2
                  slli         t3, s1, 10
                  rem          gp, sp, t3
                  addi         t2, t0, -627
                  rem          a6, t6, a2
                  srli         gp, s8, 11
                  add          a5, t3, s6
                  add          t0, s0, s1
                  sltu         s7, s8, t1
                  sltiu        t5, t0, 790
                  sltu         gp, a5, sp
                  nop
                  slli         s1, s9, 25
                  rem          a6, s11, a1
                  or           tp, sp, a7
                  andi         s11, s8, 1108
                  addi         s1, a4, -1558
                  ori          zero, s11, 1261
                  and          s9, s11, a2
                  slt          t0, s8, t1
                  rem          a3, a4, a7
                  and          s0, a5, s0
                  div          s3, t1, a0
                  remu         s2, s10, s6
                  addi         s4, s9, -680
                  sub          t5, tp, a3
                  mul          t1, t6, t5
                  ori          a3, s6, -2007
                  auipc        zero, 698928
                  sub          a5, a3, a0
                  div          s2, a1, t5
                  or           tp, s3, t3
                  nop
                  andi         t0, a0, 517
                  and          t6, a4, s8
                  sub          t3, s6, a2
                  sltu         s4, ra, gp
                  sub          a5, a2, t3
                  sll          s8, s11, s4
                  slli         t2, t4, 28
                  andi         s8, sp, 1686
                  remu         a5, s2, t4
                  rem          gp, t6, a4
                  xor          s10, t6, s8
                  srai         t6, a7, 22
                  sra          tp, s7, s9
                  mul          a3, gp, a2
                  divu         t1, ra, s3
                  mulhu        a7, s11, s9
                  mul          s3, sp, a5
                  slti         s0, a2, -348
                  srli         a4, t6, 0
                  div          t1, tp, s2
                  rem          gp, a4, s1
                  auipc        tp, 404889
                  nop
                  andi         t1, a3, -294
                  div          a5, t6, t0
                  sll          a0, s3, t0
                  rem          s8, s0, t6
                  sll          gp, t3, s0
                  xor          t4, s0, s7
                  srl          t4, t5, s11
                  slti         t6, a1, 1586
                  slt          t0, s4, t4
                  sll          a3, s10, t2
                  remu         t0, t1, a5
                  remu         s7, sp, s3
                  sltu         t1, s0, s6
                  addi         gp, a2, 1941
                  sltu         zero, s6, a1
                  sll          t5, s5, ra
                  mulhu        a4, ra, t2
                  rem          s3, t5, a3
                  slli         t6, a7, 12
                  nop
                  remu         t3, a4, t3
                  slli         a5, s5, 28
                  divu         zero, t5, t5
                  add          s7, a5, ra
                  sll          ra, sp, gp
                  and          t5, a3, s10
                  lui          ra, 768498
                  add          a3, s11, a6
                  divu         t2, s1, a1
                  andi         s11, sp, 360
                  nop
                  slli         gp, a1, 8
                  auipc        s8, 107824
                  xori         a4, a0, -160
                  slli         a5, t1, 28
                  slt          s8, a6, a4
                  auipc        zero, 1044658
                  srli         a1, s0, 29
                  add          s9, a1, a3
                  or           s7, t2, s11
                  mul          t1, s9, s11
                  sltiu        t6, zero, -495
                  mulhu        t6, sp, t5
                  mulh         s11, s8, a2
                  srai         a4, zero, 3
                  srl          t6, a1, a2
                  slt          a1, a0, gp
                  andi         ra, a0, 48
                  lui          a4, 62597
                  slli         s3, s9, 5
                  srai         zero, t0, 19
                  sltiu        s7, s10, -718
                  andi         t1, s1, -507
                  lui          a0, 311189
                  mulhsu       zero, t0, a2
                  mulhsu       t1, t4, t5
                  mul          s11, a0, s5
                  srl          t6, a0, a0
                  sra          gp, t5, t0
                  divu         s11, t2, t5
                  nop
                  slt          s1, t4, s8
                  lui          gp, 53805
                  and          t1, a2, s4
                  mulh         s1, t4, s9
                  rem          a3, tp, s1
                  or           zero, a5, ra
                  srli         a4, a5, 25
                  xori         zero, t5, -1366
                  slt          s3, s3, a6
                  mulh         a7, ra, s4
                  mul          s8, a4, s11
                  slli         a1, t0, 7
                  addi         a0, s6, -723
                  andi         a5, a2, 1408
                  ori          s3, s10, -947
                  srl          s11, a1, t0
                  mulh         t2, t5, a2
                  slli         t0, s1, 28
                  div          ra, s1, s8
                  sltu         t0, t0, s1
                  or           a3, t6, a4
                  srl          s1, s3, a6
                  nop
                  sra          tp, ra, a3
                  xori         s4, t5, -1462
                  xori         ra, a4, 401
                  lui          t0, 622675
                  auipc        s3, 569658
                  xor          t2, s9, a1
                  srl          t2, a2, a7
                  add          t1, tp, t4
                  srai         a7, a0, 12
                  srli         t3, t1, 16
                  srai         s2, t2, 23
                  divu         s7, s4, t3
                  slli         t5, ra, 20
                  mulh         a7, a2, a4
                  mulhu        s7, tp, s9
                  add          s11, a5, s9
                  mulhsu       s6, gp, s10
                  mul          t6, s2, s5
                  and          a5, t3, s4
                  sra          a1, a0, zero
                  andi         a7, s5, 1562
                  slt          t4, a1, a7
                  mulhsu       t3, gp, sp
                  sub          t0, t4, t0
                  srli         s0, ra, 24
                  or           a7, s9, t4
                  lui          tp, 735940
                  div          ra, s5, a4
                  add          s10, s3, t2
                  and          t4, s2, s10
                  slt          s11, s5, s5
                  remu         t1, s10, s4
                  auipc        s4, 639428
                  and          a5, gp, sp
                  addi         t0, t3, -116
                  sltu         t0, s0, t3
                  andi         s4, t3, 250
                  divu         s2, t4, t1
                  xor          s3, s2, a5
                  sll          tp, s6, a4
                  slli         s4, tp, 10
                  slt          a3, s8, s0
                  srl          t4, zero, a1
                  sub          gp, s9, a4
                  divu         s3, a2, a1
                  or           t2, a6, t3
                  addi         s8, ra, -1746
                  lui          t5, 555956
                  xori         t4, s4, 897
                  mul          t3, s3, s1
                  sll          a1, s6, gp
                  xori         a6, s8, -1045
                  mulhu        s6, s5, t4
                  sltu         t1, s2, t1
                  mulhsu       s1, a0, t4
                  mulhu        ra, t6, zero
                  srli         tp, t1, 0
                  slli         t1, s10, 28
                  slt          t0, s5, a4
                  auipc        a7, 422306
                  addi         gp, s6, -1056
                  srl          t2, t0, t5
                  srl          t3, sp, t5
                  andi         a0, s1, -1264
                  nop
                  and          s9, s9, t1
                  div          s3, a3, s11
                  lui          s1, 911402
                  slt          a1, s9, s6
                  addi         s7, t2, -898
                  or           a3, s11, gp
                  mul          s11, s1, s10
                  rem          t0, s4, s1
                  or           s11, s9, a7
                  and          t0, s7, tp
                  and          ra, sp, t0
                  nop
                  nop
                  nop
                  sltu         t6, t0, a3
                  add          t0, s3, a2
                  mulhu        gp, s9, s10
                  add          t3, a2, t3
                  xor          t1, t4, t4
                  srli         s10, t4, 23
                  div          s10, s7, a7
                  lui          a6, 276915
                  slli         t4, s2, 15
                  rem          ra, a1, t0
                  rem          a1, a6, ra
                  srai         t0, sp, 6
                  auipc        s0, 352066
                  and          a5, sp, sp
                  slt          a5, zero, s6
                  div          a6, t6, a0
                  addi         s10, ra, 410
                  slti         a5, s2, 951
                  addi         s4, zero, -1129
                  sll          t0, t4, t5
                  andi         zero, a5, -1528
                  remu         a0, a3, sp
                  rem          t3, t2, t3
                  slti         t1, s10, 488
                  sltu         s3, a5, t1
                  mulh         tp, a3, a5
                  sub          t0, s7, a4
                  srli         a1, a3, 6
                  srai         a1, a2, 20
                  slt          s4, a3, t5
                  lui          a3, 1037293
                  andi         s2, a2, -1700
                  mulhu        s11, a6, s10
                  nop
                  rem          s10, t0, s4
                  auipc        s6, 693889
                  sltu         t5, a2, s2
                  add          s2, sp, tp
                  div          a1, s7, t1
                  xor          s10, a3, s0
                  ori          s1, s8, -1243
                  divu         gp, zero, a0
                  srl          a7, a7, gp
                  mul          s8, zero, tp
                  mul          s3, s11, a5
                  addi         s1, a0, 303
                  xor          a1, s4, s2
                  mulhsu       gp, a6, s5
                  lui          s1, 410193
                  or           a3, gp, s1
                  srli         ra, t5, 1
                  auipc        a6, 349027
                  mulhsu       s0, s1, t5
                  sltiu        s9, a7, 1087
                  slt          t5, t3, a7
                  sra          t1, s3, s0
                  srl          a7, t1, a1
                  mul          s8, zero, s2
                  slli         tp, t3, 22
                  ori          t1, t1, 434
                  mulhsu       t5, s1, s5
                  slt          t4, a4, s2
                  sltiu        tp, s1, 601
                  divu         t0, s10, a5
                  sra          t6, a7, t5
                  srl          a1, s11, s9
                  add          t6, sp, s0
                  sltu         ra, s5, sp
                  remu         s10, a7, sp
                  mulhu        s2, tp, s1
                  sltu         a7, a3, t2
                  mulhsu       t1, s9, t5
                  sltu         t6, t4, t2
                  and          tp, t1, a3
                  mulhsu       t1, gp, a0
                  nop
                  srl          s2, t5, a5
                  slti         s9, t3, 704
                  mulhsu       ra, zero, a4
                  div          t3, t0, s8
                  slt          s11, t4, t5
                  remu         s0, t1, s3
                  div          a4, a7, t1
                  sub          s3, a6, a1
                  srai         t5, a6, 21
                  auipc        tp, 582153
                  srai         a4, s4, 13
                  sra          a0, s6, t2
                  remu         t0, t5, s6
                  andi         s6, t4, -653
                  xori         s3, s11, -431
                  srai         a7, t2, 22
                  and          s7, s2, s0
                  add          s7, a3, t6
                  div          t3, s5, gp
                  slli         t6, a1, 27
                  sltu         s9, s7, s1
                  srai         s1, t4, 0
                  srai         a0, a0, 18
                  and          a5, s4, s7
                  slt          a1, a5, a2
                  sll          s11, t3, s9
                  ori          s2, s8, 1209
                  nop
                  mulhu        a3, t2, t2
                  xori         s4, tp, 1486
                  sra          a3, sp, ra
                  mulh         t4, s0, sp
                  sll          t0, s3, a4
                  sub          ra, t1, s4
                  rem          s6, s0, t0
                  mulh         zero, s2, t3
                  andi         t0, s10, -1339
                  nop
                  sltiu        t2, a3, 639
                  mulhu        gp, a1, s5
                  div          a1, s0, t6
                  add          zero, s3, s10
                  sltu         a3, a3, a0
                  rem          a0, s8, gp
                  remu         a1, s2, t4
                  divu         s0, t6, s4
                  mulh         t3, s6, a4
                  lui          s7, 296288
                  remu         a0, a1, a2
                  slli         t1, a4, 21
                  mulhu        s2, a0, t4
                  rem          ra, t5, t1
                  add          s8, s7, t0
                  or           a5, a6, s2
                  xori         tp, s6, -1720
                  xori         t1, s1, -975
                  slti         s6, s3, 369
                  or           s6, t1, s11
                  mulh         t2, tp, s0
                  mulh         t5, s0, sp
                  mulh         tp, s8, t0
                  add          t1, s1, tp
                  mulhu        t2, s9, a6
                  xori         a3, a3, -1543
                  mul          tp, t3, a2
                  mulhu        t0, s10, s5
                  srai         s10, a6, 14
                  mulhu        t1, a2, gp
                  slti         zero, s11, -1692
                  remu         s9, a3, a5
                  nop
                  mulh         s3, a1, a0
                  sltu         t4, s1, a2
                  sub          a1, a1, t4
                  auipc        t5, 869819
                  lui          s2, 262024
                  mulh         zero, gp, s8
                  mul          t2, s1, s3
                  nop
                  xor          ra, s3, zero
                  slli         t2, gp, 15
                  mulhsu       a4, s11, t2
                  mulhsu       t3, s1, t5
                  sll          t4, a3, a2
                  nop
                  mulhsu       a3, s11, s8
                  sll          t0, s6, a1
                  andi         a3, a5, 317
                  mulhu        s4, s4, s4
                  and          t1, s7, a6
                  or           t3, t5, s0
                  srl          s8, s8, a6
                  add          a1, s11, a5
                  xor          t5, t2, a1
                  addi         t3, ra, 118
                  sltiu        s9, sp, 766
                  slti         t0, a0, -638
                  rem          s8, t5, s1
                  andi         zero, t4, 332
                  xor          t6, s9, s11
                  slt          a4, s4, t3
                  mulhu        s11, a5, s7
                  sll          t6, a3, a6
                  andi         t2, a4, -771
                  addi         a5, t2, -1645
                  xor          s2, t3, a5
                  mul          s8, s10, a5
                  div          gp, s4, t0
                  ori          s0, s9, -265
                  sltiu        a3, ra, -417
                  mulh         s11, t3, t4
                  srli         t4, a7, 28
                  xor          s10, tp, sp
                  rem          a3, t3, sp
                  add          a4, s8, t0
                  or           s9, s7, t6
                  slt          a7, a4, s3
                  slti         t2, sp, -316
                  mulh         t1, ra, s8
                  rem          s10, t2, s5
                  mulhu        s11, sp, a4
                  auipc        a4, 778314
                  divu         ra, s10, t1
                  and          a1, s4, gp
                  divu         zero, a0, t4
                  nop
                  mulhu        t3, t5, t2
                  or           a3, tp, t5
                  sub          s4, zero, s6
                  mul          t3, a6, a3
                  rem          a4, a2, s5
                  sub          t1, s11, s8
                  srai         a4, a3, 2
                  slti         s8, s3, -112
                  sltiu        a4, s9, 1751
                  sltu         s0, s0, s5
                  slt          t1, s10, a4
                  auipc        t2, 607656
                  xor          t3, s0, s7
                  or           a7, s0, s1
                  slli         t4, a6, 29
                  rem          gp, zero, s2
                  rem          s4, s4, t6
                  div          gp, s4, t6
                  auipc        t6, 309105
                  sltiu        t5, a3, 2033
                  mulhsu       a4, a7, s0
                  mulhu        ra, a3, s9
                  sltiu        s3, s2, 1188
                  div          a0, t5, s8
                  slti         a6, t3, 685
                  andi         a4, s1, -1887
                  xor          a0, a2, s7
                  mulhu        s4, t4, a5
                  nop
                  remu         t1, t1, s4
                  and          a3, sp, a5
                  and          t3, t1, t0
                  or           s3, s7, s11
                  slli         tp, t0, 11
                  nop
                  and          s10, t0, s0
                  sltiu        s7, a2, -1595
                  mulh         t4, a3, sp
                  lui          s6, 924528
                  divu         t5, s1, s10
                  srli         s11, a7, 24
                  mulh         s9, tp, a5
                  sra          a7, t4, s4
                  and          t2, a2, s0
                  sub          a7, s1, a7
                  div          a6, s0, a5
                  mul          a5, zero, a7
                  xori         a0, a1, 1154
                  add          a7, s0, a3
                  mulhsu       t6, t5, a5
                  rem          s1, t3, zero
                  add          t0, s2, a0
                  andi         t6, a2, -875
                  div          a7, s2, a2
                  nop
                  slti         s6, t3, -1489
                  div          a3, s1, a0
                  or           t6, s4, a4
                  slti         gp, a5, -139
                  sltu         a4, gp, s7
                  auipc        t0, 311007
                  mul          a6, gp, s0
                  andi         t6, s0, -1027
                  add          t0, gp, a0
                  sltiu        a0, s4, -1069
                  xor          s0, s5, s0
                  slli         a0, a7, 0
                  xor          t5, t3, a5
                  mul          s4, s11, a3
                  andi         gp, s0, 703
                  xor          s2, s6, s10
                  mul          s11, sp, gp
                  sra          s3, a0, t1
                  mul          s0, a7, t0
                  addi         s0, a2, 1893
                  sltiu        s2, t2, -927
                  and          t0, s6, a0
                  srl          t0, a0, a2
                  srl          zero, t5, ra
                  and          t1, a7, a1
                  div          s2, s3, t1
                  nop
                  slt          s4, sp, a6
                  slt          zero, a6, s10
                  ori          a0, a2, -1471
                  or           a6, s8, s11
                  xor          s7, a3, s11
                  slli         s3, a2, 21
                  lui          a6, 1010841
                  or           s2, t4, s8
                  remu         a3, ra, t5
                  sltu         s3, t4, sp
                  srai         s11, t6, 20
                  auipc        s9, 651662
                  srl          s7, s2, a6
                  sll          a3, s9, s3
                  slt          s3, a2, a2
                  sra          s1, gp, s0
                  remu         a6, t5, s7
                  mulh         a4, a1, a5
                  sub          t3, s8, a7
                  rem          a1, s6, ra
                  or           a6, s4, gp
                  lui          t2, 395609
                  andi         a5, a7, 1558
                  nop
                  and          s7, a3, s5
                  add          s11, s10, t6
                  remu         a6, t2, s0
                  andi         t0, s9, -246
                  sltu         s2, a0, tp
                  slt          t0, s8, a7
                  xori         a7, t2, 1729
                  addi         s1, s10, 858
                  mul          s2, s3, t4
                  sll          zero, s10, a1
                  sub          ra, s3, s7
                  sub          s11, a0, s6
                  xori         t3, t3, -739
                  slli         s1, sp, 29
                  mulhu        t4, s9, a4
                  auipc        a5, 124872
                  srai         s7, s4, 25
                  sll          t2, s6, s6
                  slt          a1, zero, ra
                  sra          a3, a1, a4
                  ori          a7, s6, 215
                  srai         ra, gp, 26
                  srai         t4, t3, 11
                  and          t3, s1, zero
                  or           t2, s10, t3
                  ori          a5, s6, -542
                  slli         s11, zero, 16
                  add          s10, s6, a4
                  slli         s4, a5, 0
                  slli         tp, a7, 4
                  srli         a4, gp, 15
                  mul          a0, t3, ra
                  xor          s3, a4, zero
                  sltiu        s9, s6, 1068
                  srli         a1, a5, 22
                  auipc        a5, 691883
                  add          t4, sp, t2
                  slti         s2, a2, -762
                  sll          t6, s8, a0
                  slti         s6, s3, 0
                  addi         s7, t6, 1898
                  sltiu        a4, t0, -1361
                  mulhsu       a0, t0, t5
                  sub          a4, s7, tp
                  andi         s8, a0, -1244
                  auipc        t4, 996224
                  mulhu        t1, t4, s0
                  nop
                  slti         s1, a3, 1492
                  divu         a1, a6, s11
                  slti         s9, t4, -1709
                  mul          a4, t2, a1
                  andi         t4, t3, 667
                  mulh         a0, tp, a1
                  srli         tp, ra, 16
                  slt          t0, a3, t0
                  add          s7, a7, a7
                  sltiu        s9, zero, -902
                  add          t6, a1, t0
                  and          t2, a4, tp
                  mul          gp, s2, zero
                  div          t2, t6, t4
                  addi         a7, s11, -1534
                  mul          t3, a1, gp
                  divu         a5, gp, s7
                  slt          s9, a2, sp
                  srli         a1, s0, 28
                  and          s4, tp, s10
                  mulhu        a4, s4, s5
                  srai         t1, s0, 22
                  or           s2, t6, s9
                  addi         t6, s11, 1956
                  lui          t4, 818428
                  sltiu        s6, a6, 1025
                  or           a0, tp, a2
                  slti         t0, zero, 512
                  sra          t4, sp, s9
                  or           s7, a3, a6
                  sltu         s7, a6, t5
                  mulhu        t3, t6, s3
                  nop
                  mul          t0, a6, t1
                  andi         gp, a0, -950
                  srai         s8, s7, 9
                  sltiu        t0, s1, 110
                  add          ra, s9, s1
                  auipc        s7, 114061
                  sra          a0, t6, a6
                  mulhu        a0, t5, sp
                  sll          a7, s6, s9
                  auipc        t3, 283188
                  rem          t2, ra, s3
                  sra          s7, sp, s9
                  xori         a7, s8, 217
                  mulhu        s10, t1, s10
                  auipc        a3, 488643
                  remu         t1, s5, a4
                  ori          t3, a7, 1928
                  remu         a1, a1, a7
                  mulh         a3, a3, s3
                  nop
                  slt          t0, s9, s2
                  and          tp, t3, tp
                  lui          t1, 232018
                  sltiu        a1, zero, 238
                  xor          s4, ra, a7
                  srli         t6, a1, 8
                  sltiu        s7, a6, 1208
                  divu         s8, s8, s9
                  sltiu        zero, a3, 1934
                  srl          t6, s2, s8
                  auipc        t5, 753360
                  xor          a3, s7, s1
                  mulhsu       s8, s4, a0
                  mulhu        a7, a0, s10
                  remu         s10, s3, s10
                  or           t4, s11, a4
                  add          zero, t3, s5
                  sltu         t3, a3, ra
                  andi         zero, t4, 1746
                  addi         t5, t5, -281
                  addi         s4, tp, 599
                  xori         s7, gp, -93
                  nop
                  andi         s0, zero, 210
                  lui          ra, 18398
                  addi         t4, s3, 1025
                  or           t3, a0, s2
                  and          t6, ra, sp
                  sll          tp, t2, a3
                  or           t3, s9, a2
                  rem          s6, ra, s8
                  srl          a1, s9, s0
                  divu         s8, a2, s1
                  sub          gp, s10, s6
                  xor          s6, a7, s2
                  andi         t1, s7, 1869
                  add          a7, a3, s7
                  mul          a0, t1, s3
                  and          t5, s10, a2
                  sltiu        a4, a4, 343
                  nop
                  slli         s2, a5, 14
                  andi         s11, ra, 1807
                  divu         t6, a0, tp
                  div          tp, ra, tp
                  mulhu        s0, s2, a1
                  ori          ra, t6, -401
                  xori         a5, t3, 94
                  srai         s3, s1, 28
                  sltu         s3, s7, s2
                  sll          t5, zero, sp
                  remu         s11, a2, t5
                  xori         s11, gp, 729
                  sra          t1, s4, ra
                  sub          a5, zero, s5
                  add          zero, sp, s5
                  srli         t0, s5, 31
                  sub          ra, t6, t5
                  and          t3, s1, s11
                  sll          t0, t5, gp
                  remu         t0, s2, s5
                  slt          gp, ra, t3
                  remu         s11, s8, sp
                  lui          s3, 554260
                  mulhu        t0, tp, tp
                  srai         tp, s7, 30
                  or           t4, s5, t4
                  mulhu        t3, s7, a5
                  srli         gp, t4, 26
                  nop
                  xor          s0, t1, t2
                  mulh         a3, a1, s9
                  sub          t5, a5, s7
                  srli         zero, a5, 7
                  lui          a4, 786927
                  xori         t0, a6, 780
                  slt          s9, t6, a2
                  nop
                  rem          s6, a1, sp
                  nop
                  slti         s8, s10, 70
                  sub          zero, s1, s4
                  lui          s7, 220191
                  nop
                  div          a6, t3, a5
                  sll          a3, a6, a2
                  mulhu        tp, s2, t5
                  sltiu        a5, s0, 122
                  sll          s9, t5, s2
                  nop
                  sub          s8, sp, s8
                  lui          s4, 461826
                  add          tp, s10, a2
                  or           t3, s9, s0
                  sll          s11, t1, s3
                  mul          t0, a0, s9
                  auipc        a6, 316492
                  mulhsu       a0, s11, s0
                  divu         a0, s6, a0
                  srli         tp, s8, 10
                  divu         s9, gp, t0
                  or           t6, t6, a0
                  srl          t3, t5, s5
                  ori          s11, s7, 1175
                  or           s11, t2, a3
                  srai         s0, a2, 20
                  sltu         gp, tp, a1
                  srl          s4, t4, s8
                  andi         t4, gp, 55
                  sub          t3, zero, s4
                  add          t1, s6, s1
                  xori         t0, tp, -1494
                  ori          s10, sp, -1351
                  sll          a7, s5, s9
                  sub          s11, s1, t3
                  mul          a4, s8, a3
                  srai         s6, a6, 13
                  mulhu        s10, s6, s2
                  nop
                  divu         zero, s1, t2
                  addi         s7, a2, 810
                  xori         zero, t4, 1424
                  mul          s8, s9, s2
                  ori          t5, a1, -277
                  mulhu        s1, gp, s5
                  nop
                  sltu         tp, t3, a2
                  addi         t5, t0, -1336
                  slti         a7, s4, -141
                  srai         t5, a3, 11
                  srl          s11, a0, s3
                  sltiu        a5, sp, -89
                  addi         s3, t1, -976
                  sra          t4, s9, s3
                  srli         t5, t3, 15
                  or           tp, t4, s6
                  xori         t1, a3, 1596
                  sub          a3, a7, s3
                  addi         a1, a6, -466
                  mul          a1, a3, tp
                  remu         a7, s1, t4
                  nop
                  auipc        zero, 165462
                  slti         t3, s2, 244
                  andi         tp, a6, -611
                  rem          s3, t5, t5
                  srai         s8, a3, 16
                  slti         t0, t5, 722
                  divu         t4, a0, s7
                  mulh         ra, s4, a5
                  lui          t0, 128452
                  srl          s6, a0, s2
                  or           a7, s1, s8
                  auipc        a7, 644264
                  remu         t2, t0, s3
                  slti         zero, s8, 254
                  slli         a4, a2, 27
                  div          gp, s3, a5
                  or           a4, s3, sp
                  auipc        s11, 589675
                  divu         s6, s9, tp
                  rem          s7, t5, gp
                  remu         s8, t5, gp
                  auipc        a4, 73235
                  xor          a0, t3, a2
                  divu         s7, a1, a2
                  srai         t3, t0, 6
                  srai         t3, t4, 13
                  srli         zero, s5, 17
                  div          a6, t4, s0
                  xor          a3, t6, s3
                  sra          t3, a0, s0
                  sra          t3, gp, s9
                  andi         s4, ra, 1072
                  mulh         s0, zero, s6
                  xor          s11, gp, a5
                  rem          a5, s11, a7
                  srl          ra, t0, t6
                  sra          a4, a1, a0
                  divu         s9, t2, s5
                  mulh         tp, s2, ra
                  mulhsu       t4, tp, t3
                  srai         a0, t0, 26
                  mul          a0, tp, gp
                  sra          gp, s6, a3
                  sltu         s4, s7, a5
                  mulh         t0, s8, t2
                  div          s10, t5, t2
                  mul          a4, t2, a6
                  mulhu        t2, a1, a0
                  addi         a1, a1, -1430
                  nop
                  sll          gp, t5, s3
                  nop
                  slli         t5, s7, 7
                  sra          s3, s7, a1
                  nop
                  xori         tp, s3, 599
                  mulhu        zero, s3, sp
                  slti         zero, a7, -433
                  slli         t2, s6, 13
                  ori          gp, s11, 1993
                  addi         s1, t1, -722
                  sltiu        s6, gp, -217
                  div          zero, a0, s7
                  sub          s2, sp, s5
                  auipc        a1, 52219
                  auipc        t1, 989642
                  xor          gp, zero, t5
                  add          t3, a1, a1
                  auipc        t1, 414106
                  mulh         s6, a2, t4
                  remu         t2, a7, s9
                  or           s6, a0, a0
                  sltu         tp, t4, s1
                  or           s8, a3, s0
                  rem          a4, zero, gp
                  mulhsu       a3, s5, a3
                  and          a6, ra, a3
                  sltu         ra, sp, a4
                  or           s4, t6, s7
                  lui          t2, 419624
                  sltiu        s0, s0, 56
                  or           s11, t0, s11
                  mulhu        a5, zero, a7
                  sltu         t6, a0, a5
                  and          s4, s11, s3
                  srl          s7, s5, s5
                  remu         t6, zero, s11
                  mulhsu       s9, tp, t1
                  andi         s2, tp, 1022
                  auipc        s4, 98042
                  slt          s6, s4, t0
                  nop
                  sub          gp, s5, sp
                  sltiu        s4, a1, 1805
                  addi         s0, s4, 1627
                  divu         a6, tp, sp
                  mulhu        a4, ra, s6
                  slti         a0, s0, 881
                  divu         s2, s2, a1
                  ori          s7, a4, -1738
                  rem          a1, t0, gp
                  div          t3, a1, a7
                  rem          gp, tp, t6
                  remu         s4, gp, a7
                  slli         a1, s4, 8
                  sltiu        zero, s7, -1188
                  srli         s8, s0, 6
                  or           zero, t6, a4
                  addi         tp, s0, -923
                  and          t2, a2, t4
                  mul          s3, t1, a0
                  srai         gp, zero, 3
                  slt          ra, s9, t1
                  remu         s8, a0, s1
                  ori          s6, a6, -824
                  sltiu        t4, s5, 1719
                  ori          t0, s11, -1427
                  srli         s7, s7, 4
                  nop
                  mulhsu       s10, tp, t2
                  slt          s2, a5, a2
                  remu         a7, a7, s7
                  and          s0, s4, a4
                  xor          s4, a4, a4
                  srl          a7, s10, a4
                  sltiu        s11, a7, -1834
                  slt          t2, a7, s11
                  mulhsu       t6, s10, a6
                  sltiu        t0, zero, -1914
                  sltu         s3, t6, t2
                  addi         zero, s1, -1350
                  sra          a3, s3, s8
                  sub          a7, s5, a1
                  remu         s9, s11, s8
                  sub          s8, s7, tp
                  srai         s8, ra, 24
                  div          s9, a4, t3
                  mulh         s0, a1, s11
                  sltu         a4, s7, ra
                  and          a6, s4, t6
                  andi         t4, s10, -801
                  auipc        s1, 210583
                  auipc        a6, 844732
                  srl          tp, s4, a1
                  rem          s6, sp, t3
                  xori         t1, a1, 1574
                  addi         a7, s3, 1525
                  mul          t6, a7, t2
                  mulhsu       gp, a3, a0
                  add          s4, s5, t4
                  slt          t5, t2, s10
                  auipc        a6, 1040790
                  srli         s7, s3, 18
                  nop
                  mulhu        ra, s2, s4
                  xor          tp, a0, t1
                  xori         s7, t5, -396
                  rem          a7, a1, t6
                  sub          t4, s4, s6
                  sltu         s6, s10, s8
                  sltiu        a7, t3, 1541
                  add          a4, s8, s1
                  srai         s3, s7, 18
                  and          t1, a6, s2
                  xori         ra, t1, -1187
                  nop
                  nop
                  rem          gp, s1, t5
                  sltiu        ra, t1, 1824
                  ori          t2, a1, 424
                  sra          t0, t6, t4
                  add          s11, a5, s9
                  mulhsu       t5, a6, a0
                  nop
                  srl          s8, gp, s4
                  sltu         t5, s6, s11
                  lui          s8, 452363
                  rem          a5, t0, t1
                  mul          s2, s0, t5
                  slt          t4, t1, a0
                  xori         s8, s8, -331
                  srai         t6, zero, 30
                  add          a7, t1, t6
                  ori          a3, s5, 398
                  addi         gp, s9, 1922
                  srai         a6, tp, 0
                  div          t1, zero, t3
                  nop
                  or           s9, s11, s10
                  mul          s6, a4, tp
                  sltu         s1, t1, s6
                  slti         ra, a6, -1562
                  sub          a7, a1, a5
                  sub          t4, s7, s2
                  andi         t3, t6, 185
                  srai         s10, a6, 15
                  xori         a0, a3, 1138
                  srli         a3, s9, 17
                  mulhsu       ra, s9, s3
                  remu         t1, s8, s11
                  ori          s8, s8, -1723
                  lui          t6, 460285
                  slti         s0, s3, -285
                  remu         s7, s1, ra
                  divu         s3, t4, s1
                  slti         t4, gp, -215
                  sltiu        s4, a1, 415
                  slt          a5, s9, a4
                  xori         s1, t1, 1430
                  xor          s9, a7, sp
                  nop
                  ori          ra, s10, -721
                  div          s0, t3, a7
                  and          a1, a6, s0
                  add          s7, a1, s0
                  remu         s3, t0, t0
                  addi         s7, t0, 1817
                  sll          tp, s1, s11
                  sra          s2, t5, s10
                  srl          s1, a5, t6
                  sub          s4, s7, gp
                  slti         tp, s11, -2022
                  mulhsu       a4, s11, s0
                  sltiu        s11, t2, -132
                  rem          s0, s2, a6
                  xori         a4, s3, -951
                  slli         gp, t3, 15
                  mulhsu       a3, s5, t5
                  ori          gp, a6, -1124
                  slli         a0, s0, 22
                  remu         s10, s8, s11
                  remu         a6, s1, s2
                  sltu         t0, s5, sp
                  srai         t0, a3, 31
                  div          s6, a3, t0
                  add          t5, s10, s3
                  rem          t0, t4, s8
                  mulh         s0, s9, t2
                  srli         s2, a7, 16
                  add          t6, a3, s7
                  slli         t0, s4, 5
                  add          a1, a6, s5
                  addi         s6, s9, -491
                  rem          zero, a1, s5
                  and          t4, s3, t2
                  mulh         t0, a2, a0
                  xori         a0, a0, -781
                  remu         s4, s6, t2
                  slti         s0, s5, 1845
                  srai         s4, s6, 10
                  add          ra, s8, s7
                  slt          a3, s10, s5
                  srli         s10, s4, 19
                  slli         s9, s8, 27
                  mulh         a7, s1, s1
                  addi         a1, a5, 942
                  divu         tp, a2, a7
                  sltu         a3, a1, a3
                  rem          zero, a1, tp
                  auipc        a0, 631463
                  ori          a1, s6, 397
                  xor          zero, a2, t2
                  sltiu        t5, s1, -775
                  div          s11, s6, t2
                  sltu         ra, t1, s11
                  sra          a6, a1, t1
                  add          a1, s9, zero
                  sll          a3, a5, tp
                  slt          s11, s0, ra
                  andi         s7, sp, 312
                  and          gp, s11, s5
                  sub          t3, s1, s3
                  mulhu        s2, s3, ra
                  addi         s11, t5, 688
                  ori          a6, s2, -1712
                  sll          s9, a2, t5
                  auipc        s9, 222591
                  mulh         s6, s7, zero
                  slli         s4, a0, 3
                  slli         s4, ra, 23
                  auipc        t0, 69074
                  srli         t5, tp, 7
                  mulhsu       tp, gp, a0
                  xor          gp, a2, s9
                  addi         s7, tp, -294
                  sltu         a5, gp, s7
                  lui          s10, 274683
                  slli         tp, s8, 10
                  sub          t5, s10, t5
                  add          s7, zero, a4
                  sra          a7, a6, tp
                  auipc        a6, 1007995
                  sll          ra, a0, a3
                  divu         ra, s0, a0
                  add          a5, a2, t3
                  sll          s6, sp, a4
                  sltu         a1, a6, t2
                  ori          t6, s2, -101
                  andi         a3, a3, 1534
                  srli         a5, a5, 17
                  mul          t2, a1, s0
                  sra          t3, gp, a5
                  ori          t0, a6, 2002
                  divu         s11, s7, s10
                  slt          s2, gp, t1
                  div          s9, s3, zero
                  srl          s10, t1, s7
                  nop
                  xor          s11, t5, a7
                  mulhsu       s10, tp, a2
                  mul          s2, a1, gp
                  mulhu        ra, ra, s6
                  addi         a0, ra, -1817
                  addi         a4, s6, -1878
                  sll          s9, s9, t5
                  divu         tp, ra, sp
                  remu         t6, t2, t0
                  rem          a6, a5, t3
                  sub          a5, t2, a3
                  auipc        t2, 383961
                  mulhsu       s2, sp, s0
                  andi         t0, s4, -910
                  rem          s0, a0, zero
                  srai         a5, zero, 7
                  mulh         ra, a0, s0
                  divu         t6, tp, a5
                  divu         t5, t1, sp
                  srli         s1, a0, 16
                  sub          tp, s2, a3
                  slt          zero, a3, a4
                  lui          s2, 1007983
                  mul          s7, s11, a4
                  addi         s6, a2, 1955
                  mul          tp, s1, a0
                  and          s9, t0, s4
                  xori         s0, a4, -386
                  xor          t5, t2, s5
                  div          t2, t3, a1
                  div          a5, s3, s6
                  and          zero, a4, s11
                  auipc        s8, 26698
                  sltu         gp, a1, a1
                  xor          t1, s1, zero
                  sltiu        s9, s3, -1052
                  srl          s4, s7, s0
                  mulhsu       t2, t2, a4
                  auipc        s9, 343981
                  nop
                  srl          s4, a2, s7
                  mulh         a7, a4, a6
                  srl          t4, s8, gp
                  div          a5, s8, a5
                  addi         t0, zero, 609
                  sltu         ra, t5, s9
                  add          ra, zero, s0
                  ori          ra, s1, 1143
                  mul          s1, t3, gp
                  sltu         a4, s3, t2
                  sltu         t0, t4, zero
                  srl          a0, t0, s8
                  xor          s6, s1, gp
                  lui          s11, 761495
                  nop
                  srli         s0, s3, 29
                  andi         t4, s11, -1233
                  nop
                  andi         a0, t4, 128
                  sltu         a5, ra, t5
                  mulhu        a0, s7, s4
                  sra          s7, t6, s4
                  srl          s4, s9, s9
                  remu         s11, s0, t1
                  sltiu        s7, s1, 1003
                  remu         t4, gp, a5
                  add          t1, a2, a6
                  srli         tp, a6, 19
                  srl          a7, s2, t1
                  slti         t0, s7, 1256
                  remu         s0, a1, a2
                  sltu         t4, t4, s0
                  srli         ra, zero, 15
                  srli         a0, s1, 25
                  xori         s4, s9, -1128
                  rem          a3, a1, a2
                  andi         t4, sp, -1963
                  nop
                  srl          t2, a7, a2
                  srai         s0, a6, 31
                  sra          a7, s5, s9
                  remu         s3, s8, s1
                  divu         s8, s2, s6
                  or           a1, a3, t2
                  sll          t4, zero, a2
                  sltu         a6, tp, s9
                  srli         s9, t2, 14
                  srli         a7, s0, 21
                  rem          s0, a2, a2
                  xori         s10, s3, -1846
                  auipc        s8, 195122
                  add          ra, gp, s3
                  rem          a6, t2, s7
                  srl          s6, t6, s3
                  sltu         t5, a7, t0
                  slti         a1, s3, 1104
                  sub          s8, t0, a1
                  mul          t2, t5, t4
                  and          s11, a1, zero
                  lui          a6, 559632
                  or           t5, s11, t3
                  addi         a7, gp, -1853
                  auipc        gp, 328521
                  lui          gp, 891464
                  or           zero, s10, tp
                  srai         t0, a4, 28
                  srli         a4, s0, 28
                  nop
                  sltiu        t1, tp, 1498
                  lui          s2, 780303
                  sltu         a5, s10, a4
                  andi         t6, t3, 76
                  add          s0, s9, s6
                  sra          s6, ra, a3
                  srl          s2, s2, tp
                  sltiu        t0, t2, 190
                  auipc        a1, 444905
                  srai         t6, zero, 21
                  addi         ra, s4, -1888
                  remu         t6, t6, s4
                  slli         s9, t6, 30
                  addi         t4, t4, 1627
                  slti         ra, gp, 1327
                  add          s6, a4, a7
                  or           t6, gp, s9
                  add          t1, t2, a2
                  srai         t4, a6, 11
                  xori         zero, s7, 1140
                  sub          s10, s4, a2
                  srl          a4, s3, a3
                  nop
                  lui          s2, 317779
                  slli         s6, s1, 11
                  slli         t3, a3, 10
                  srai         t4, tp, 27
                  mul          a3, sp, t6
                  div          zero, a0, a2
                  add          s6, zero, t3
                  ori          t6, t1, 1385
                  mulh         a1, s11, s2
                  and          s2, a6, s6
                  ori          a7, a7, 627
                  andi         s1, s9, -726
                  srli         a7, t5, 19
                  nop
                  mul          t5, t4, t5
                  mulhu        t3, s4, s3
                  sra          tp, s7, sp
                  srl          a0, a0, t1
                  mulhu        a7, s8, zero
                  add          s7, s10, t4
                  sll          s7, s7, a0
                  div          s7, s4, a0
                  div          s7, a1, s0
                  srl          t4, t1, s3
                  div          t6, s8, ra
                  auipc        ra, 234569
                  lui          t5, 242657
                  sra          s2, t6, t6
                  slli         s3, a1, 4
                  and          t2, s10, s11
                  xor          s4, a0, s5
                  ori          s4, t4, -1637
                  sub          a4, s7, ra
                  lui          t3, 996557
                  xor          t0, a7, s5
                  slti         tp, t0, -792
                  mulh         a7, a4, gp
                  remu         ra, a7, s4
                  mulh         t1, s0, s5
                  slli         s9, t3, 4
                  srl          zero, gp, t2
                  sll          s3, a5, a6
                  mulh         a6, zero, a5
                  xor          a3, gp, a6
                  sra          ra, t2, t6
                  and          a4, t6, t3
                  slti         s4, zero, -1743
                  or           zero, a3, zero
                  xor          gp, s10, a3
                  xori         t2, s1, -1064
                  sub          a1, a5, s2
                  mulhsu       s9, t3, s1
                  slti         a5, a4, -1915
                  xori         s0, s6, 1282
                  and          a3, t1, t2
                  mul          gp, s2, s9
                  slli         s0, a0, 12
                  rem          s11, a7, s2
                  or           s4, s0, s3
                  xor          s0, sp, s11
                  add          s4, s6, sp
                  rem          tp, s10, zero
                  mulhu        gp, t6, s7
                  srli         a7, a6, 11
                  slli         s0, s1, 12
                  sltu         a6, s8, s0
                  srai         s4, a2, 20
                  slti         t2, s1, 843
                  slli         s8, s10, 18
                  sltiu        t3, a0, -1590
                  xor          s9, ra, s0
                  sub          s3, a4, tp
                  and          t2, a2, s11
                  rem          a4, s6, t3
                  mulhu        gp, a7, t6
                  srai         t0, s3, 1
                  mulhsu       a4, t4, gp
                  rem          s7, s6, tp
                  and          s6, s3, s8
                  srli         t5, s5, 17
                  mulhsu       s11, a7, t0
                  auipc        s2, 330970
                  or           t2, a5, a6
                  auipc        t4, 363530
                  mul          s8, s7, s0
                  slti         s0, s6, -1537
                  sll          a4, a4, zero
                  xori         t5, a7, -2023
                  mul          s3, t3, s5
                  mul          s2, a1, t3
                  ori          s2, s2, -1888
                  srai         gp, a0, 7
                  mul          t0, s9, sp
                  lui          t3, 515597
                  sub          t6, s0, zero
                  auipc        s2, 843779
                  slli         s0, t3, 30
                  xori         gp, t6, 1279
                  ori          a5, s9, 1074
                  div          t5, t3, gp
                  add          s8, t6, s10
                  slli         zero, zero, 26
                  xor          t2, sp, s3
                  sll          s10, zero, s2
                  srli         tp, a6, 20
                  srli         a0, ra, 15
                  mulh         s1, ra, zero
                  slt          t2, gp, s10
                  nop
                  xor          s10, a4, t1
                  remu         t6, s6, t3
                  mulhsu       s2, ra, s2
                  mulhsu       a4, s7, ra
                  add          a3, t0, s7
                  sltu         s9, s9, a5
                  lui          t1, 374910
                  mulh         s6, t4, s2
                  or           s6, s2, zero
                  srli         a6, s4, 15
                  srl          tp, s1, tp
                  sub          a6, s11, s1
                  ori          t5, s10, 1502
                  slt          s2, s4, t4
                  sltu         t0, s2, s2
                  slli         s2, a3, 26
                  nop
                  mul          a1, s0, s8
                  sub          s4, ra, a0
                  srl          a4, t6, s6
                  remu         a5, a1, a3
                  srl          s11, a3, s4
                  remu         a7, a2, s9
                  nop
                  slti         s3, s10, -947
                  sub          s4, a5, s4
                  sub          a4, a7, ra
                  divu         a4, s3, t2
                  mulh         zero, t4, t2
                  srl          tp, s8, s3
                  andi         s11, s6, 1926
                  or           s11, s6, s10
                  sra          a5, s0, a7
                  sltiu        t6, a5, 1520
                  slti         s3, s5, 656
                  slli         t0, a3, 16
                  mulhsu       a7, gp, s4
                  div          t5, t6, a7
                  xori         s11, s10, 2002
                  auipc        s10, 399157
                  nop
                  mulhsu       s0, t2, t4
                  andi         s4, s8, -1391
                  xori         gp, s8, -724
                  mul          s4, gp, t1
                  sub          s7, s9, gp
                  mulhsu       t3, a1, ra
                  nop
                  sll          s10, s10, t1
                  mulhu        a5, a3, s9
                  mulhsu       a6, t2, s7
                  slli         s10, s11, 10
                  xor          s1, s7, s8
                  sra          s3, s10, a3
                  srl          s10, s10, s8
                  srai         gp, t2, 12
                  mulhsu       s1, t5, s11
                  remu         s10, s7, ra
                  slti         t4, s6, 765
                  xori         tp, s8, 1436
                  sub          t4, a4, t5
                  div          a7, s10, a5
                  lui          t6, 666365
                  sra          s9, s11, a3
                  addi         a1, gp, -1621
                  rem          a6, a3, a6
                  or           a4, t6, s1
                  sll          t0, a5, t6
                  sra          a6, s6, a3
                  nop
                  rem          ra, tp, s8
                  sub          tp, s0, gp
                  divu         s1, a5, sp
                  xor          gp, t0, ra
                  slt          s11, t2, t2
                  xor          s4, sp, s7
                  or           gp, s1, s7
                  sltiu        a4, a0, 1150
                  div          a3, t2, sp
                  or           a5, s11, a3
                  nop
                  sub          t1, s1, s9
                  or           s4, t5, s4
                  xor          a5, a4, ra
                  div          a1, s6, s3
                  div          s3, s6, t0
                  slli         t3, t1, 1
                  mulhu        ra, tp, zero
                  lui          a7, 588099
                  remu         s2, s0, s6
                  sltu         zero, s2, s6
                  and          s11, s0, a5
                  rem          t0, a5, gp
                  srli         gp, sp, 4
                  mulhu        t2, t3, a3
                  div          a5, t5, a0
                  srl          gp, t3, gp
                  sltu         s11, a7, a5
                  div          s11, s6, zero
                  addi         zero, a6, 243
                  sub          s6, t1, s5
                  sll          t3, s0, sp
                  lui          a4, 38366
                  mulhu        a7, s10, s5
                  slt          tp, s4, gp
                  addi         a1, a7, -1500
                  auipc        a1, 451623
                  slti         a7, a3, 1056
                  andi         a6, a0, 2028
                  or           zero, s9, tp
                  add          a0, ra, s8
                  and          a7, tp, t4
                  xor          s9, t5, tp
                  sltu         s3, a5, t6
                  add          gp, s7, s2
                  srai         t3, s8, 15
                  slt          s8, s3, s0
                  addi         s1, s5, 615
                  div          s7, a1, s2
                  auipc        gp, 142297
                  mulhu        s7, a7, a5
                  sll          t6, a4, a5
                  and          t5, t0, a4
                  sltiu        ra, t4, 1670
                  srai         s11, t6, 7
                  mulhu        s2, s6, s8
                  remu         t5, s11, t5
                  or           a7, t4, a4
                  sra          s7, a4, s1
                  ori          a1, s0, 1300
                  andi         ra, a4, -1565
                  slti         s9, s11, 76
                  div          s1, gp, gp
                  sltu         t3, ra, ra
                  or           a0, t5, a1
                  addi         ra, s2, -187
                  divu         s0, a2, t0
                  sub          t6, s8, a5
                  and          a1, tp, a3
                  sltiu        s3, s2, 1539
                  and          s9, t0, ra
                  nop
                  auipc        t6, 202757
                  mulhsu       a4, gp, ra
                  srli         gp, a4, 27
                  slli         s7, t5, 26
                  mulh         s2, sp, a0
                  slti         a7, s7, 1258
                  mulhu        a3, zero, a2
                  auipc        t2, 224287
                  mulhu        a4, a0, s2
                  slli         t5, s9, 13
                  sltiu        s6, s2, -516
                  rem          t0, t1, s5
                  sub          a4, a0, t5
                  srli         s4, s9, 18
                  sltiu        s4, t4, 425
                  xor          ra, s7, s5
                  or           gp, t1, a4
                  mulh         t4, t6, a1
                  slt          s1, a4, s2
                  nop
                  or           a0, s6, s1
                  xori         t2, a1, 454
                  remu         s7, t6, t1
                  mulh         s10, a6, s4
                  mulh         t0, a1, a6
                  sra          a4, s7, t3
                  sll          s2, ra, zero
                  ori          s6, t4, 1313
                  sub          a0, a3, s2
                  sltu         tp, s5, a4
                  nop
                  rem          t5, s6, s5
                  lui          t3, 1035741
                  xor          s7, t1, a6
                  mulhu        t4, s11, s6
                  nop
                  srli         t2, gp, 15
                  andi         s0, s8, -377
                  xori         s1, a1, -1938
                  slti         t6, s6, -2020
                  slt          t6, t4, a7
                  sra          a4, a1, s7
                  rem          s9, ra, s8
                  sltiu        s6, s8, -1938
                  srli         a6, s6, 30
                  sll          gp, sp, a5
                  srli         s11, t3, 1
                  srl          t2, t3, a4
                  and          s0, tp, a2
                  rem          a3, t5, s4
                  slli         t6, a6, 0
                  auipc        s7, 297217
                  ori          s9, s3, -1420
                  slli         s11, t2, 0
                  ori          a7, sp, -1314
                  addi         s4, a0, 46
                  or           t5, t2, a0
                  sub          s4, a2, t4
                  mulh         tp, s4, sp
                  mulhsu       t5, s7, zero
                  rem          t2, s3, tp
                  sltiu        a3, a3, 1137
                  sll          t5, s7, t5
                  rem          a3, s1, t1
                  srli         a5, s7, 17
                  add          a0, t5, a6
                  nop
                  andi         gp, s0, -138
                  ori          s7, t2, -1141
                  mulhsu       a1, s5, gp
                  srai         t3, t3, 12
                  addi         a0, t2, 1358
                  mulh         a1, t4, a1
                  mulhsu       t3, t0, a1
                  srl          zero, s1, sp
                  sltu         s6, ra, zero
                  and          t3, zero, t4
                  sra          s11, s10, s11
                  mulh         a0, s4, a0
                  sll          a4, gp, a4
                  mul          a4, s1, gp
                  slt          a3, gp, t5
                  div          a4, a2, a1
                  rem          s0, zero, s0
                  remu         s11, s11, s0
                  xori         t2, a7, -1763
                  div          s9, s3, s9
                  div          a3, s3, sp
                  xori         s1, s0, 1996
                  remu         t4, s8, s5
                  lui          a0, 324554
                  divu         a4, s0, s10
                  mulh         t5, a4, s0
                  ori          s2, a3, -1518
                  sltiu        s4, s8, 1530
                  add          s2, a0, s10
                  add          s0, a1, t5
                  divu         s1, t3, t2
                  andi         a6, s11, 5
                  slli         s3, tp, 21
                  mulhu        t5, a0, a4
                  divu         a0, s9, ra
                  mulhsu       a3, s5, s0
                  add          s6, tp, gp
                  srl          a3, s7, s4
                  slt          s4, s1, s2
                  srli         s8, t4, 4
                  srai         s1, t4, 16
                  srai         a0, tp, 13
                  srai         s0, a4, 3
                  lui          gp, 786459
                  sra          a4, t3, s2
                  sub          a6, a5, s0
                  ori          a5, tp, 960
                  or           t0, t0, s11
                  mul          s2, gp, t2
                  mulh         a7, ra, s11
                  divu         s6, t3, a3
                  sra          s10, a0, a0
                  auipc        s10, 1043054
                  divu         s9, s2, t0
                  div          t5, s1, t2
                  lui          s2, 282807
                  sra          s11, t3, sp
                  addi         s2, s5, -1516
                  xor          t2, s5, s10
                  xori         t1, s8, -955
                  xori         t4, gp, 686
                  slt          s2, s11, a4
                  sub          gp, a7, t4
                  rem          a1, t4, s0
                  xor          s9, zero, sp
                  slti         s4, gp, -308
                  xori         t4, s1, -621
                  sll          tp, s3, s4
                  xori         gp, t6, 672
                  ori          a4, zero, 1617
                  mul          s1, a5, s1
                  sra          s11, s1, a2
                  and          s6, t5, t0
                  mulhsu       s2, s7, t1
                  rem          a0, a4, s2
                  xor          s8, s8, s6
                  sltu         t1, t5, t1
                  auipc        t0, 707150
                  addi         s9, s0, -1804
                  divu         t3, s5, s1
                  ori          t6, s11, -1935
                  div          gp, a7, s10
                  srai         s8, t0, 3
                  mulhsu       t4, a5, a1
                  rem          a3, t4, a0
                  auipc        s9, 2843
                  mulh         t0, s0, gp
                  slt          s1, s5, t3
                  srai         s7, s4, 12
                  mul          t5, t1, a2
                  auipc        zero, 870276
                  xor          s7, s7, t0
                  srai         a7, s4, 28
                  slt          t0, s10, t0
                  sltu         a6, s3, s4
                  srli         s3, s5, 4
                  rem          s4, s4, a7
                  auipc        t6, 713808
                  mulhu        s0, sp, s0
                  lui          t0, 263960
                  slti         s1, t6, 330
                  srai         ra, a4, 6
                  addi         s7, tp, -421
                  remu         tp, s0, s1
                  mul          s10, t6, t6
                  srli         t0, a2, 24
                  or           t2, s4, a6
                  or           a0, t6, t5
                  and          ra, s7, a4
                  mul          s9, a7, t3
                  srl          t6, s4, a1
                  sub          t6, s4, t6
                  divu         tp, s11, t0
                  and          a4, s11, a1
                  srai         t2, s7, 25
                  andi         a7, sp, -920
                  srai         s2, s0, 15
                  lui          s11, 806021
                  auipc        t3, 946733
                  sll          s1, a1, s4
                  lui          s11, 358418
                  and          s9, s5, t5
                  slt          s11, a3, sp
                  mul          a7, a0, t6
                  srli         tp, s8, 14
                  srl          zero, a0, s9
                  lui          t4, 221528
                  mulh         t5, sp, a5
                  srl          s10, s2, zero
                  sub          s10, t2, zero
                  nop
                  sltiu        ra, t1, 1611
                  sra          a6, tp, sp
                  mul          tp, t5, a1
                  sll          s7, s11, a5
                  and          s8, s6, s10
                  slli         ra, s3, 10
                  mulhu        t6, s11, s8
                  remu         s4, a4, t1
                  srli         zero, a7, 1
                  slt          s1, s4, a5
                  srai         a6, sp, 15
                  xori         s8, s10, -320
                  rem          t3, s10, s1
                  srl          s4, s4, a6
                  auipc        s0, 162787
                  srl          t6, t0, a3
                  xor          s1, t5, t4
                  slt          s8, ra, s9
                  srli         t1, ra, 13
                  sll          gp, t4, tp
                  slli         a7, t2, 20
                  lui          s9, 660483
                  divu         a1, a6, ra
                  mulh         a0, s4, t0
                  slli         a3, t2, 31
                  sub          s6, s1, s7
                  srl          t6, a6, a5
                  and          s10, t2, s9
                  mulhu        t4, a4, s11
                  sltu         s7, zero, t3
                  remu         a6, s9, a2
                  mulh         t3, a4, s0
                  auipc        ra, 469697
                  auipc        t3, 18694
                  ori          t3, ra, -946
                  div          t1, s1, a3
                  sub          a4, s5, s7
                  auipc        a0, 343646
                  xor          tp, s5, a5
                  rem          a7, s2, sp
                  slt          tp, a6, a2
                  andi         t4, t3, -299
                  add          a5, a1, a2
                  mulhu        t4, t1, s8
                  add          t1, s10, sp
                  auipc        a4, 542998
                  andi         a1, a0, -1526
                  slti         t3, s3, -1683
                  addi         s8, s2, 1622
                  mulhsu       t1, ra, t6
                  slli         a7, t1, 2
                  ori          a1, a3, 1365
                  mulhsu       ra, t6, gp
                  addi         s6, s7, -418
                  mul          t0, t1, a1
                  or           a0, s5, s3
                  lui          gp, 282117
                  and          a5, ra, zero
                  srai         s2, a6, 15
                  srli         s7, a4, 29
                  mulhsu       ra, zero, a4
                  nop
                  xor          a7, s2, s10
                  sll          s11, s7, a2
                  addi         s4, s1, 571
                  mulhsu       s11, s7, a3
                  auipc        s6, 829180
                  srl          s7, s3, s9
                  slti         s10, zero, -1575
                  slt          a4, a2, gp
                  divu         s7, s1, s3
                  slti         t5, sp, 1583
                  mulhu        a6, a5, a0
                  sltiu        s1, s1, 1146
                  remu         t0, gp, a7
                  sub          s7, s10, s8
                  div          t0, s2, s5
                  sll          a1, t6, s1
                  xori         t3, a4, 1424
                  srai         s9, s6, 6
                  mulhu        t1, sp, a3
                  and          a0, ra, s10
                  mulh         t5, s5, gp
                  and          a1, a2, t1
                  add          t2, s2, s8
                  xor          t4, s4, ra
                  sub          ra, a2, s1
                  slti         tp, s10, 508
                  rem          ra, a0, a3
                  andi         a7, s8, 540
                  slt          s4, t2, t6
                  addi         t0, s6, -925
                  mulh         s0, sp, tp
                  add          s3, a4, a1
                  sltiu        s4, t4, -1072
                  srli         ra, t4, 20
                  xor          t5, s11, t4
                  nop
                  srai         s6, s8, 14
                  mulhu        a4, sp, a7
                  rem          s4, t0, a4
                  lui          s7, 662595
                  lui          s3, 36038
                  sll          s11, a2, zero
                  sll          t3, s9, tp
                  and          s10, s8, a3
                  sub          s1, gp, sp
                  mulhu        gp, s11, a0
                  sll          tp, s1, s8
                  sra          s0, gp, t4
                  srli         a3, a0, 2
                  div          gp, s10, s5
                  divu         tp, ra, s8
                  mul          t0, t3, a3
                  mul          s6, s8, s4
                  nop
                  mul          s11, t4, s9
                  andi         t1, a0, -927
                  sltiu        s6, tp, 1955
                  sll          a0, t0, s10
                  div          s4, s7, a6
                  addi         zero, t6, -593
                  mul          a1, s11, s4
                  and          s7, sp, a3
                  sltiu        s3, t6, -820
                  sll          t6, a5, s4
                  addi         a4, s1, -57
                  auipc        s10, 262974
                  srli         s7, t3, 18
                  slli         s2, ra, 2
                  sll          t4, a7, s6
                  srl          a3, a6, s6
                  slti         gp, t3, 267
                  xori         a0, s6, 737
                  ori          t0, s9, 187
                  or           t0, a7, a2
                  rem          s1, a7, a0
                  mulhu        s10, t1, a7
                  slt          s4, s9, s2
                  rem          s8, tp, a4
                  srl          s9, t5, t2
                  rem          s11, a4, s8
                  xor          ra, s3, t1
                  andi         a1, a6, 62
                  add          a5, s9, s5
                  xori         t4, s3, 603
                  srl          s2, t2, sp
                  rem          t2, a6, sp
                  mulhsu       a7, a3, t6
                  andi         t1, s6, 819
                  xori         zero, s7, -1971
                  lui          t2, 775961
                  remu         s4, ra, a5
                  or           s6, gp, s2
                  nop
                  ori          zero, zero, -1794
                  slti         s10, s9, -666
                  sltiu        s0, t0, 43
                  xori         t3, sp, 987
                  sll          t3, s4, zero
                  auipc        a7, 529139
                  sltu         t0, sp, s1
                  divu         zero, s6, s6
                  sra          s8, t5, a7
                  divu         a7, t0, sp
                  sra          a0, s5, a3
                  lui          a0, 798170
                  add          ra, a3, s7
                  nop
                  addi         t4, a2, -1172
                  sltu         a6, t1, sp
                  srai         s7, ra, 2
                  nop
                  mul          t1, a6, t1
                  mulh         t4, t0, a0
                  slt          s11, a5, t1
                  sltu         s0, s7, s8
                  lui          s9, 482356
                  sltu         t1, s9, a7
                  sltiu        a7, s4, 292
                  or           ra, a6, t2
                  add          t2, a4, sp
                  sub          t3, s9, t5
                  srli         s0, t2, 4
                  lui          t6, 523330
                  addi         tp, tp, 653
                  sll          a5, a4, a5
                  add          a1, a4, t6
                  slli         t2, t0, 11
                  srai         t4, s1, 18
                  auipc        s2, 367756
                  srli         s6, a4, 26
                  srli         t0, t4, 4
                  srli         s7, a0, 20
                  and          a7, s11, t3
                  lui          a7, 664528
                  ori          a4, t4, 968
                  add          s2, s6, a7
                  mulhu        s9, s8, s0
                  andi         t3, t0, -1474
                  srl          s0, s0, s2
                  or           ra, s5, a3
                  xori         a3, t0, -580
                  slli         s10, s11, 1
                  or           t2, a1, t5
                  srl          t0, t4, s5
                  srl          t0, gp, a4
                  remu         t4, s3, gp
                  sltu         s7, zero, sp
                  mulh         a3, zero, t3
                  rem          ra, a7, t0
                  srli         gp, s2, 29
                  slti         s7, a7, -1466
                  sub          s0, ra, t4
                  add          s4, gp, a3
                  srli         s2, a4, 23
                  auipc        t0, 997177
                  remu         s8, s11, t1
                  or           t3, t6, s1
                  nop
                  divu         a5, a1, a3
                  andi         s2, t4, -1007
                  sltiu        t6, a0, 1984
                  remu         s0, s8, a4
                  addi         tp, s10, 429
                  nop
                  sra          s3, s11, s11
                  rem          t3, gp, t6
                  auipc        s11, 269566
                  rem          t6, s5, s5
                  add          s6, a2, a1
                  nop
                  auipc        s4, 568134
                  srli         s1, a2, 22
                  mulhsu       t1, s4, s7
                  srli         t5, t3, 14
                  xori         a4, a0, 774
                  and          a5, a4, a1
                  sltiu        t0, s8, -483
                  sra          t4, t6, t1
                  nop
                  slt          a6, s7, t0
                  ori          s0, s5, -224
                  xor          s11, a5, a3
                  mulhu        tp, t2, s2
                  sub          s3, gp, gp
                  rem          s3, a2, s1
                  lui          t1, 97668
                  slli         t5, a0, 15
                  mulh         gp, zero, gp
                  auipc        a1, 604393
                  remu         tp, s1, s8
                  mulh         a4, gp, a7
                  srli         a3, t2, 28
                  srl          t6, s5, a4
                  andi         t2, s2, -1548
                  slti         a0, s8, -324
                  sltu         t3, s2, s10
                  sltu         t4, ra, s3
                  srai         s0, s0, 27
                  or           s10, s0, s5
                  add          gp, gp, t2
                  ori          gp, sp, -727
                  srl          s11, gp, s7
                  rem          t6, a0, t5
                  slt          t3, a3, s5
                  srai         a6, sp, 19
                  sub          ra, tp, s9
                  andi         a3, tp, 253
                  srli         a3, a5, 26
                  srl          s0, a0, s11
                  lui          t6, 121538
                  and          a6, s7, s4
                  xori         zero, ra, 559
                  slti         s4, a5, -1958
                  sub          zero, a1, t0
                  slt          t6, tp, s0
                  ori          zero, a2, -817
                  remu         t1, t1, t1
                  slti         t6, a7, -1871
                  sltu         a4, s11, t6
                  sll          s4, ra, t1
                  andi         a3, gp, 1100
                  add          zero, s2, s3
                  srli         ra, s3, 5
                  slti         s6, gp, 2035
                  mulh         s2, s0, a5
                  divu         a7, a6, a7
                  xori         gp, a4, -1636
                  andi         t1, a5, -1013
                  slt          s11, s7, a3
                  mul          s2, a7, t2
                  andi         gp, t6, 1883
                  divu         a3, s9, s11
                  sub          s9, s4, a6
                  xori         a4, a2, -486
                  sub          t1, s1, s8
                  and          a3, s6, s0
                  mulh         s4, s1, s7
                  auipc        t3, 324547
                  nop
                  slli         s2, a3, 6
                  sltiu        s0, s1, 1337
                  remu         a7, s6, a7
                  div          a1, a0, s3
                  sltu         t4, a1, s5
                  and          zero, a1, s3
                  xor          zero, s10, sp
                  andi         a6, tp, -1336
                  sra          t4, s8, s7
                  slti         a5, gp, -669
                  slti         s9, t0, 1311
                  divu         a6, s6, s4
                  add          t1, s3, gp
                  slti         s4, t4, -1452
                  rem          s4, sp, t3
                  rem          t6, s3, a1
                  divu         s2, t3, sp
                  and          s7, s8, a2
                  mulhu        a3, s3, sp
                  mulh         s6, sp, s6
                  mulhsu       t0, s10, tp
                  srai         t6, sp, 9
                  and          t4, tp, a7
                  mulhsu       t0, a1, s1
                  slt          t2, a7, a1
                  sltiu        t3, s6, 713
                  nop
                  rem          t0, s0, a4
                  mulhu        s9, a6, a3
                  div          s4, a0, s6
                  srai         t3, t6, 6
                  slti         t6, a3, -837
                  mulhu        s2, s2, s4
                  rem          t6, a4, a2
                  mulhu        t0, s6, s1
                  mulh         s8, a6, a1
                  or           s6, a6, zero
                  srai         tp, s9, 16
                  and          ra, s5, s6
                  divu         t0, s1, s1
                  nop
                  slt          t6, s3, t0
                  mulhu        s2, t1, t1
                  rem          tp, t3, a2
                  sub          s6, s5, a6
                  mulh         t6, s8, s4
                  srai         s10, t2, 13
                  div          a7, sp, tp
                  srl          a7, t3, gp
                  srai         t5, a7, 10
                  sltiu        s8, t5, 805
                  remu         zero, s9, a6
                  addi         t6, a3, 1183
                  mulh         s3, t5, s11
                  sltiu        a0, s0, -248
                  lui          a5, 332140
                  slli         t3, s9, 3
                  srai         s4, s4, 10
                  divu         t4, s8, a6
                  add          s9, a7, a2
                  slti         a0, zero, 1107
                  mulh         a7, a4, t6
                  and          a0, a4, s1
                  addi         a7, a5, 347
                  nop
                  add          s2, s11, s1
                  slti         a1, tp, 596
                  xori         zero, s11, -677
                  srl          s11, ra, a1
                  or           a5, a7, a7
                  xori         s8, s7, 834
                  ori          s3, a1, -844
                  nop
                  addi         s3, s8, 1184
                  xor          s11, t0, a2
                  mulhu        s0, s0, s3
                  srli         s10, s1, 5
                  srli         t1, tp, 17
                  srai         ra, t1, 28
                  slli         s6, ra, 12
                  lui          t3, 647301
                  srai         a1, s5, 28
                  nop
                  sltiu        tp, t6, 62
                  div          t0, t3, a1
                  mulhsu       t1, a3, t1
                  lui          s11, 563651
                  remu         a4, a3, s8
                  slli         a4, s4, 29
                  sll          t0, t3, t6
                  andi         s0, s10, 626
                  add          s6, s6, t2
                  xori         t5, s4, 1816
                  srli         t2, t1, 17
                  ori          s3, s3, 214
                  sra          s8, a1, t1
                  div          tp, a1, s7
                  divu         a0, s11, gp
                  srl          s10, s11, a2
                  sll          s7, s11, t2
                  andi         tp, s2, -1404
                  sll          a4, t3, s4
                  addi         s3, a3, -1638
                  slti         t0, a7, 661
                  mulhu        s7, s0, t6
                  and          gp, zero, s2
                  sra          zero, s1, s6
                  srl          s11, t1, a3
                  slli         s4, s4, 17
                  slti         s9, t2, 945
                  xor          zero, t5, s1
                  sltiu        a0, a6, 1469
                  xori         a7, s9, 752
                  mul          s1, t2, ra
                  slt          s6, sp, sp
                  sub          s7, sp, s8
                  sub          s6, s1, t0
                  slt          gp, t3, ra
                  nop
                  slli         s0, a5, 28
                  sltu         a4, a7, a0
                  sltiu        t2, s7, -1985
                  sub          a4, s5, s1
                  sub          t5, t0, a3
                  mulhsu       gp, t1, sp
                  div          t0, sp, s7
                  srai         s1, s8, 22
                  nop
                  andi         s4, a6, 1272
                  or           s11, s8, s1
                  andi         s8, s4, -1073
                  sll          ra, tp, t6
                  and          s10, s10, a1
                  mulhsu       gp, tp, s10
                  mulhu        s7, t0, a0
                  srai         t3, a1, 14
                  mulh         ra, ra, t0
                  andi         a5, s7, 459
                  slti         a1, t3, 1224
                  auipc        t6, 824991
                  remu         ra, s2, a1
                  sltiu        s0, s5, 963
                  add          a6, s2, sp
                  mulh         t5, a3, a2
                  sub          s9, a5, t6
                  mul          a0, a1, a7
                  mulhu        s3, s4, t0
                  remu         s2, t2, s1
                  sltiu        s3, s7, 1648
                  div          zero, s2, t0
                  sub          t0, sp, a3
                  sll          a3, a6, s1
                  auipc        s3, 170665
                  add          zero, s3, t1
                  sll          gp, a2, a7
                  or           a0, s11, t0
                  rem          a7, s5, a0
                  sub          s9, sp, s1
                  slti         zero, gp, -1957
                  ori          gp, t0, -1184
                  nop
                  srli         s3, a2, 28
                  mul          tp, s6, s5
                  xor          gp, a5, t3
                  and          tp, s1, tp
                  mulhsu       t6, t1, a3
                  mulhu        a1, s1, zero
                  nop
                  auipc        a5, 619942
                  divu         a3, t1, zero
                  remu         s9, t4, s2
                  srli         s9, sp, 17
                  addi         ra, s1, -1015
                  mulhu        t3, a0, a0
                  add          t3, a1, t2
                  or           s3, t6, s0
                  addi         a7, tp, 304
                  srli         gp, a5, 18
                  sub          gp, s0, a6
                  lui          a7, 483950
                  slti         tp, s7, -1512
                  and          tp, a5, t4
                  ori          s2, t6, 274
                  div          a1, s7, a4
                  rem          a6, a6, t1
                  slli         s2, s1, 10
                  mulh         gp, a4, a2
                  srli         a1, t1, 20
                  mulhu        s8, s8, ra
                  divu         t6, tp, zero
                  lui          a6, 280142
                  srai         s2, s0, 28
                  slti         zero, t6, 1143
                  or           s8, tp, s0
                  mulhu        t0, a7, t1
                  ori          t2, s2, 566
                  mulhu        s2, a2, a7
                  mul          a0, s7, s2
                  rem          a7, t1, t3
                  and          t2, a4, tp
                  slli         t6, a6, 25
                  sll          a4, zero, ra
                  xori         a3, t4, -1068
                  srl          t2, s1, zero
                  mul          s3, s1, a1
                  srai         a5, t6, 23
                  srli         a7, a4, 0
                  mul          s8, t4, t6
                  divu         t4, s1, t3
                  ori          s9, s10, 607
                  slti         s2, a4, 1471
                  and          a5, t4, a7
                  xor          s0, s0, t5
                  mulhsu       s10, sp, s5
                  xori         a7, s0, 1991
                  srai         s7, s3, 18
                  slti         s8, s0, -870
                  add          t6, s4, s0
                  sltiu        s1, t4, -1988
                  sub          s2, s5, a3
                  sltiu        t0, t3, 1621
                  sltu         s11, s3, s9
                  sra          a4, s0, s11
                  srl          a7, a3, tp
                  srli         s1, t4, 3
                  mul          s0, zero, s11
                  div          t0, s8, tp
                  sub          s9, s6, t2
                  slti         ra, s6, 879
                  slt          s9, a1, gp
                  auipc        s8, 423328
                  mul          t3, s7, s8
                  sub          a6, s10, gp
                  remu         s4, s3, t2
                  sra          t1, gp, a0
                  slli         a1, a3, 4
                  slt          t5, gp, s10
                  sub          t0, gp, t1
                  mulhsu       t6, a0, a1
                  mul          tp, ra, s11
                  sub          s3, a6, ra
                  slli         tp, a5, 22
                  xor          s7, s2, s8
                  divu         s4, a0, t5
                  sltiu        s9, t2, 196
                  nop
                  add          t4, tp, zero
                  and          s0, a2, a1
                  sra          a0, a6, sp
                  srai         t0, a7, 5
                  mulh         s4, t2, t5
                  ori          t3, a4, -1317
                  mulhsu       s6, s9, s10
                  sll          s1, s3, a1
                  add          s11, s5, s5
                  srai         gp, s8, 20
                  srl          s3, s10, t5
                  ori          a4, a3, 998
                  remu         t4, a4, s1
                  div          t0, t5, a2
                  mul          t3, a2, a1
                  ori          s8, t0, 17
                  slti         s9, a3, 214
                  add          a4, s0, s0
                  nop
                  nop
                  xor          a5, a7, t0
                  and          a5, a1, s0
                  divu         s7, t6, s7
                  divu         s0, ra, s11
                  slti         zero, t4, -1631
                  ori          t5, a2, 1890
                  srl          ra, s3, t2
                  mulhu        gp, ra, s7
                  srai         a0, s4, 5
                  sltiu        a1, a0, -566
                  slli         t2, t2, 1
                  srli         a0, t0, 11
                  auipc        a0, 969195
                  srl          a6, a4, t3
                  div          a6, t5, s2
                  sll          t5, s10, s5
                  mul          t3, s10, sp
                  lui          s11, 37253
                  xor          s4, t3, a6
                  divu         t6, a5, s1
                  xor          s0, s9, tp
                  rem          t0, ra, t0
                  mulhsu       s6, a5, t4
                  add          s0, s11, a0
                  add          a5, s3, a6
                  addi         a0, s4, 778
                  sub          a3, s8, a2
                  or           t3, t3, t0
                  and          s11, s5, a2
                  ori          s4, t0, 994
                  mulhu        a5, t4, a0
                  add          s2, s8, t2
                  addi         a7, a0, 359
                  mulh         t0, ra, s6
                  nop
                  slt          a4, a1, ra
                  auipc        s9, 741927
                  slti         a5, s7, 250
                  sra          t6, t1, s7
                  xor          t1, t4, t6
                  remu         t6, a6, a5
                  addi         zero, t4, -1657
                  or           zero, s4, sp
                  mul          s9, gp, t2
                  sltiu        s4, gp, 297
                  xor          a4, a2, s7
                  div          ra, sp, zero
                  auipc        t3, 986768
                  slt          s11, sp, a5
                  divu         s2, a3, a1
                  xor          a0, t1, a6
                  divu         t3, s2, t4
                  xor          ra, s4, s4
                  slti         zero, ra, 156
                  mulhsu       gp, s11, a3
                  lui          tp, 748335
                  slt          a3, t5, t2
                  nop
                  srl          t3, s3, a0
                  ori          a3, t0, 1914
                  mulhsu       a7, t2, a4
                  auipc        t4, 460214
                  or           a1, t0, a4
                  mulh         t2, a4, zero
                  mulh         a7, a0, a6
                  slli         s3, s8, 24
                  xori         s4, s3, 1460
                  srai         t0, s7, 27
                  slt          a1, a1, s10
                  mul          s2, t0, a4
                  slti         a7, tp, -542
                  xor          t5, s5, t6
                  lui          a3, 910809
                  and          gp, a6, gp
                  mulh         gp, a1, s2
                  srli         s1, t4, 19
                  add          t4, a2, s2
                  ori          t1, t2, -1647
                  addi         a1, s1, 1672
                  rem          a1, s10, s0
                  mulhsu       t0, t3, s3
                  sub          s10, s0, t6
                  remu         s3, a7, gp
                  sll          t2, s0, sp
                  slt          t6, t0, ra
                  sub          s3, t5, s10
                  srai         s0, tp, 20
                  and          ra, sp, s2
                  auipc        tp, 166116
                  add          s3, a6, s10
                  mul          a7, s10, a0
                  xor          a6, a6, a3
                  andi         s0, t2, 1734
                  slti         t3, s10, 1791
                  rem          a3, s2, s3
                  xor          t1, a4, s9
                  divu         s4, t1, zero
                  srai         s10, t6, 22
                  sltiu        s1, a1, 699
                  srai         t2, t4, 31
                  remu         t6, a0, s9
                  lui          t4, 14813
                  slti         a6, t1, -1056
                  xori         s0, t0, -279
                  rem          s7, t1, a2
                  nop
                  remu         s4, t0, s0
                  divu         s0, ra, zero
                  xori         a5, zero, 725
                  sub          s1, a7, gp
                  xori         a0, gp, -353
                  ori          s10, t4, 1484
                  ori          ra, s10, 1752
                  srli         s2, a3, 8
                  mulhsu       s8, a3, a2
                  mul          s3, zero, t2
                  xori         zero, s3, 1653
                  addi         a0, a1, -636
                  sll          t6, t5, s1
                  mul          s11, a2, a0
                  divu         ra, t0, s5
                  mulhu        s1, s0, t1
                  sltiu        s9, a4, 2030
                  mulh         t0, t1, sp
                  xori         t5, a6, -1155
                  xor          s11, t1, a7
                  srai         t3, s5, 20
                  addi         t5, ra, 1507
                  rem          s1, s0, tp
                  srl          t4, s6, ra
                  mul          s10, t6, s1
                  divu         s10, s0, s5
                  mul          a6, s11, a1
                  srli         ra, s9, 5
                  or           s4, a0, s2
                  mul          a0, s11, s4
                  div          t2, gp, s7
                  remu         t5, t2, s5
                  sltu         s1, a2, s11
                  slt          zero, t2, zero
                  div          s10, tp, s11
                  addi         s7, s0, 68
                  mulhu        s1, s10, s10
                  sltu         zero, s8, a6
                  sltu         s1, t3, a0
                  divu         s7, s6, a6
                  sltiu        a4, s1, 1916
                  ori          a1, a0, -430
                  sltu         t1, a6, a2
                  and          t4, ra, s9
                  xor          t4, a2, a0
                  mulh         t3, a3, s4
                  slt          a0, t5, s3
                  sub          a0, zero, s5
                  srl          a1, t3, a4
                  sltiu        a5, s2, -565
                  div          s7, t4, zero
                  slt          s10, a0, zero
                  slli         a7, a0, 23
                  mulh         s8, a1, t5
                  remu         zero, t5, s1
                  sll          s10, t0, t3
                  nop
                  auipc        t2, 70026
                  slt          gp, s5, a3
                  ori          t3, s2, 517
                  xori         s6, t4, -508
                  mulh         s7, s1, s9
                  xor          t1, gp, ra
                  slt          s9, a5, tp
                  divu         s6, s7, a1
                  andi         s3, s11, 805
                  sltiu        tp, s6, 242
                  xori         s2, s5, 1467
                  mul          gp, s6, a0
                  or           t3, s8, tp
                  xori         s6, t6, -544
                  slti         s0, s9, 1509
                  mulh         a4, s3, s6
                  lui          s4, 766822
                  slt          t4, a3, a1
                  div          a4, sp, s0
                  srai         s10, t2, 6
                  mulh         s8, sp, s0
                  sltu         t0, t2, s8
                  mulh         s4, t1, a4
                  slti         s3, zero, 596
                  slti         a0, tp, -871
                  remu         a4, sp, s9
                  divu         s6, s7, s10
                  add          a0, a1, a5
                  slli         s4, s8, 31
                  ori          ra, t2, -1677
                  div          s3, s8, gp
                  mul          gp, a3, s8
                  xori         s2, s8, 1574
                  or           s6, zero, sp
                  nop
                  rem          s7, s2, s7
                  mulhsu       s10, s2, s10
                  srli         zero, t4, 18
                  mul          s7, t1, s0
                  lui          a5, 434638
                  div          s0, t3, s8
                  lui          t4, 407957
                  andi         a0, a2, -1087
                  mulhu        a4, t6, a5
                  sll          s7, a0, a7
                  slli         s0, zero, 6
                  srli         t3, s9, 11
                  slli         s11, t5, 27
                  srai         s7, s11, 10
                  sra          tp, s9, s3
                  add          t1, t4, a6
                  slti         t4, a7, -591
                  slt          t3, a4, t6
                  slli         s7, s0, 28
                  sub          a3, s0, t1
                  remu         a4, sp, s3
                  srli         t3, s8, 0
                  srli         t3, sp, 17
                  slti         t6, tp, -1906
                  divu         a5, sp, s3
                  div          zero, gp, a4
                  xor          s8, s2, t2
                  slti         ra, s10, 1352
                  divu         s1, a3, t0
                  ori          t5, s6, -1139
                  sltu         ra, s2, t2
                  mulh         ra, gp, ra
                  xor          a0, s0, t6
                  rem          s8, s9, t2
                  ori          s2, a5, -514
                  andi         a7, sp, 846
                  sll          zero, s11, a5
                  srai         s11, sp, 19
                  mul          s0, s8, a1
                  lui          t5, 721891
                  xori         a6, s0, 474
                  mulhsu       t5, s6, s5
                  sltu         t4, a2, zero
                  mulhu        t4, s5, a2
                  remu         zero, s9, a5
                  slli         s2, t2, 0
                  slli         s0, s3, 5
                  slti         a3, s7, -332
                  mulhu        s1, t1, a3
                  and          t0, t4, s2
                  ori          s0, a5, 282
                  slt          s6, a7, a6
                  mulhsu       s4, a3, s7
                  addi         t2, a4, -731
                  rem          a0, gp, a2
                  auipc        a1, 809312
                  remu         s2, t2, s7
                  slli         a7, a7, 22
                  xori         a4, s6, 1151
                  sub          a3, tp, s6
                  div          t3, t0, s3
                  srai         t3, s6, 0
                  divu         t3, tp, a2
                  mulhu        s8, s6, a3
                  srli         t5, a3, 6
                  lui          s0, 956354
                  sra          s2, s2, a0
                  mul          t2, s11, s9
                  andi         s0, a5, -765
                  or           t2, zero, a6
                  remu         t2, a1, t0
                  auipc        t5, 436234
                  srai         a1, ra, 21
                  div          zero, t5, s11
                  and          a3, t0, a6
                  lui          t1, 358454
                  slti         t0, s8, -1496
                  sra          s6, t5, a2
                  sltiu        a6, a4, -1497
                  rem          a3, s3, s8
                  srai         t1, a7, 10
                  sll          t6, s10, t0
                  addi         t6, a5, -1044
                  sltiu        a1, s6, 585
                  rem          s9, t1, zero
                  auipc        t2, 509506
                  slli         s0, s8, 18
                  div          t6, s4, t4
                  srl          a1, t3, a0
                  nop
                  xori         s6, s9, 656
                  add          s9, a4, s7
                  remu         t4, sp, t6
                  srli         tp, s8, 11
                  sltu         gp, t2, ra
                  slti         t5, s5, 1255
                  div          s10, s2, s8
                  add          t2, a2, s10
                  andi         s0, s1, -163
                  slli         s4, a6, 17
                  sltiu        t5, a7, 717
                  slti         t1, s0, -1509
                  divu         t4, s3, tp
                  divu         a6, s2, a1
                  sll          s2, a2, a4
                  auipc        t1, 591630
                  mulhu        t4, t0, zero
                  sltiu        a7, s8, 1893
                  slli         a4, t5, 6
                  slt          a4, s10, tp
                  sltu         a0, a6, tp
                  or           a4, a2, s1
                  nop
                  sltiu        s10, t2, 1722
                  divu         t6, s4, s1
                  add          a7, s7, sp
                  sll          tp, a5, t1
                  lui          t3, 739096
                  sltu         t3, s11, s7
                  mulh         s0, s6, t3
                  slt          s2, t0, s1
                  slt          s3, t1, sp
                  div          s2, s5, t6
                  ori          a3, s5, -1577
                  slli         s1, s5, 29
                  srai         a0, t3, 3
                  mul          s11, s2, s9
                  mulhsu       t2, s2, s2
                  mul          a4, t1, s5
                  slt          t1, s5, s5
                  add          t3, s6, s4
                  xor          t4, s6, s8
                  andi         a5, s6, -188
                  nop
                  nop
                  sltu         zero, t5, t0
                  and          s11, s11, t5
                  rem          t4, s11, s7
                  or           s9, gp, s11
                  add          s4, s9, s0
                  or           t5, a3, a5
                  addi         s3, t4, -416
                  slli         a7, a7, 30
                  xor          s3, t1, s7
                  mulh         s9, s11, tp
                  remu         s6, a0, gp
                  and          a1, a2, s8
                  remu         s4, s2, s6
                  auipc        a5, 612553
                  sltiu        tp, s11, 1575
                  auipc        t4, 603669
                  mul          s8, s10, zero
                  slt          a4, s9, s3
                  and          zero, a6, a5
                  mulhu        a6, t3, t4
                  div          t4, t3, a4
                  nop
                  sub          tp, s4, s0
                  addi         a7, t6, -607
                  lui          s4, 600388
                  divu         s6, s9, s7
                  srai         s4, t2, 20
                  srl          a7, s10, t6
                  mulh         s7, t3, t3
                  xori         s8, t6, 885
                  slti         t5, sp, -693
                  nop
                  mul          s1, a7, a3
                  sltiu        a4, a5, -783
                  rem          s11, s4, a4
                  auipc        t5, 218478
                  rem          s10, t2, s10
                  nop
                  lui          t0, 433777
                  sra          s2, t3, t4
                  xori         a6, a4, -191
                  mul          t3, t5, a0
                  sra          s8, s3, t2
                  and          gp, s11, s7
                  div          gp, ra, s0
                  divu         s10, t6, t4
                  slt          a4, s2, s5
                  sll          s11, gp, a6
                  divu         s9, s0, a0
                  add          s4, a1, a1
                  srli         a7, t4, 0
                  slti         gp, s5, -1046
                  xori         a4, a0, -195
                  divu         a0, s5, a0
                  slli         a5, a0, 15
                  sll          s4, s7, a2
                  srl          a6, a1, t2
                  srl          t3, t3, a4
                  remu         t0, t2, zero
                  divu         s0, s9, a6
                  sltiu        t1, t0, 1665
                  slti         t3, sp, -674
                  sll          a7, a3, t5
                  xor          t6, t1, s8
                  srl          t0, s4, a1
                  sltu         a4, t4, s4
                  mulh         s2, a4, t5
                  divu         t3, a5, s4
                  sll          t2, t4, t1
                  auipc        s2, 165299
                  ori          s2, s4, -1712
                  rem          s6, s5, a6
                  addi         ra, a5, 103
                  slt          zero, s6, s5
                  mul          ra, a4, t0
                  sll          t4, t1, a4
                  mul          s0, t3, s3
                  nop
                  sltu         t3, ra, t2
                  auipc        s7, 119989
                  nop
                  lui          a3, 598989
                  sll          ra, s4, a4
                  mul          a0, zero, tp
                  auipc        a1, 830399
                  divu         zero, a1, s10
                  or           s10, s10, t6
                  xor          s3, s11, t2
                  srai         s4, s8, 16
                  srli         t0, t2, 11
                  sll          t2, s4, s1
                  sra          a7, a7, a5
                  remu         t1, s2, s10
                  sltu         a7, t3, s10
                  nop
                  auipc        s8, 468707
                  ori          s10, sp, 160
                  nop
                  div          a0, s11, s3
                  remu         t5, t5, a6
                  auipc        s10, 663067
                  slt          t0, s11, s0
                  nop
                  nop
                  add          a6, s10, s2
                  lui          t0, 711360
                  slli         a7, a3, 4
                  ori          a1, a2, 982
                  remu         t0, s10, s0
                  remu         s6, sp, s4
                  sltu         tp, ra, t1
                  srli         s8, s6, 29
                  or           s8, a2, s7
                  xor          s7, sp, s3
                  nop
                  slli         a3, a6, 15
                  ori          t6, zero, -1052
                  and          ra, a7, sp
                  srli         s8, s9, 8
                  add          gp, s4, s11
                  xor          t0, s10, t3
                  srli         t2, a3, 25
                  slt          s9, a1, zero
                  sra          t2, s5, t4
                  slti         t5, s5, -1589
                  add          t4, s11, a3
                  ori          a6, a0, -990
                  xor          zero, s5, a6
                  divu         t4, a1, t4
                  lui          s8, 102356
                  xor          a3, s8, tp
                  add          t5, t0, ra
                  sltiu        a1, s7, -320
                  nop
                  mul          s3, sp, gp
                  rem          a5, a0, a5
                  slli         s0, s6, 12
                  mulhu        a1, zero, s11
                  divu         ra, s5, s4
                  slt          t3, s3, a5
                  sltu         s4, s2, s3
                  nop
                  sll          s4, gp, s10
                  slti         t1, s9, 993
                  xori         gp, zero, -526
                  nop
                  add          t2, s4, zero
                  sltiu        t6, s7, 1025
                  slt          t5, s0, s0
                  rem          t2, gp, a2
                  nop
                  xori         s9, a5, -1787
                  divu         s8, t1, s0
                  xor          s0, a0, s0
                  or           t4, a2, t5
                  mulh         zero, s0, s4
                  srai         t5, a6, 12
                  xori         s9, t5, 1867
                  slt          t0, s9, s6
                  add          t6, s4, a3
                  remu         s3, a6, t5
                  mulhsu       gp, t6, t1
                  div          a7, a0, ra
                  lui          t4, 919366
                  slti         ra, t3, -1686
                  sltu         a4, t6, a7
                  sub          t3, a0, t0
                  lui          s2, 231710
                  slt          s6, a7, s3
                  add          t4, a2, s4
                  divu         s0, a7, s4
                  slli         ra, s10, 18
                  sll          s1, ra, zero
                  slli         a5, s3, 30
                  sra          t2, t6, zero
                  sltu         t5, s3, a6
                  mulhu        a7, t0, a1
                  or           a1, zero, s4
                  slli         a3, s0, 1
                  slti         t1, s2, -436
                  sra          a7, t3, a1
                  xori         tp, a5, 1653
                  divu         t2, gp, s3
                  mulhu        a4, a4, s11
                  srli         t4, a6, 17
                  slt          s9, t6, s10
                  sub          s7, a1, s10
                  mul          s6, s2, ra
                  xor          s7, a5, t4
                  sra          s2, zero, s2
                  div          s2, s7, t4
                  nop
                  sltu         s6, s9, a6
                  and          ra, s2, s8
                  ori          t4, s5, -1585
                  sltiu        a6, gp, -39
                  srl          a5, t5, s7
                  srai         s0, s8, 4
                  or           s0, a5, a1
                  ori          zero, ra, 161
                  srl          a1, s10, a3
                  divu         s3, a3, s7
                  mulhsu       s2, s7, t1
                  slt          s8, s10, a2
                  lui          t2, 777852
                  xori         a6, s5, 1765
                  and          s3, s6, a4
                  srai         t0, s8, 11
                  div          s2, a3, t0
                  sltu         s3, a4, t5
                  xor          s0, a0, a6
                  andi         ra, s6, -830
                  divu         s3, a1, a3
                  auipc        s7, 567952
                  slli         s6, t5, 22
                  sltu         s1, t4, s7
                  or           t6, s10, t6
                  and          s3, a2, s4
                  mulh         t4, s3, s6
                  lui          s4, 899571
                  andi         t3, t5, -589
                  lui          s8, 559910
                  addi         s8, a1, -1110
                  mulhsu       t2, ra, s9
                  ori          t6, gp, -1697
                  sltiu        a3, s1, 1782
                  and          s8, a3, gp
                  mulh         s2, s6, t3
                  div          gp, ra, a3
                  sra          ra, tp, s7
                  sra          s11, a2, s2
                  srli         s9, s7, 10
                  mulhsu       a1, a5, s4
                  xori         tp, t4, -425
                  lui          s10, 769845
                  slti         a3, t0, 622
                  divu         t4, a0, s5
                  addi         a0, s10, 1035
                  sub          s4, tp, t5
                  sltiu        a1, s7, 1086
                  slli         s7, s9, 9
                  sltu         gp, t4, s2
                  add          a0, s10, t4
                  sll          s1, t3, t5
                  sub          t0, s10, ra
                  xori         s4, s6, -1010
                  or           a1, a5, t2
                  ori          a7, s1, -1307
                  sub          t3, ra, s11
                  slti         a3, t5, 1680
                  mulhsu       t1, t1, s10
                  sll          a7, s4, t6
                  mulh         t3, s11, a2
                  sltiu        a6, zero, 418
                  srl          s0, a5, a0
                  addi         ra, a4, -1887
                  srl          a0, tp, s11
                  srai         zero, s10, 4
                  xori         s0, s1, -1781
                  div          t3, a1, s5
                  mulhsu       s0, a7, s7
                  xor          t2, a6, t5
                  add          s4, t3, a5
                  xori         s11, s10, -407
                  mulhsu       s4, s3, a1
                  and          s8, ra, s0
                  div          gp, s8, sp
                  lui          a1, 77747
                  srl          a5, t5, s4
                  rem          a4, zero, a2
                  add          s1, a0, t4
                  ori          t3, a4, 329
                  srai         t5, a6, 18
                  srli         s7, t0, 13
                  nop
                  remu         s8, tp, a0
                  or           s9, a1, a2
                  and          s0, tp, t5
                  or           t0, s2, s1
                  slt          s4, ra, sp
                  srl          a1, s7, a2
                  slli         a0, a5, 28
                  divu         t1, t5, s1
                  srli         t2, zero, 31
                  nop
                  slti         s3, tp, -1247
                  lui          s0, 676049
                  slt          s2, s3, ra
                  lui          s4, 162911
                  nop
                  div          s11, a7, t4
                  xori         t2, t3, -363
                  mulh         a1, s2, s0
                  srl          t5, s4, sp
                  slli         s10, s0, 13
                  ori          tp, t2, -638
                  rem          t1, zero, t1
                  divu         gp, s2, s2
                  lui          s7, 718160
                  or           t3, t3, s11
                  and          t3, gp, sp
                  sll          tp, s10, a4
                  sra          a1, s0, zero
                  mulhsu       s3, a1, gp
                  mulh         s1, s8, a5
                  srl          t1, s2, sp
                  ori          a0, a4, 1842
                  sltu         a0, a3, s4
                  srl          a7, s1, t4
                  srli         s0, s9, 12
                  addi         gp, a5, 314
                  or           s2, t1, s4
                  and          t2, t2, s9
                  divu         s8, s4, a2
                  divu         s0, s10, a2
                  sltu         t3, t0, a2
                  mulh         t3, s0, s7
                  ori          s2, a7, 1284
                  nop
                  sra          t2, t1, s0
                  slli         s3, t0, 15
                  slli         s4, sp, 19
                  sltu         s3, s2, t1
                  nop
                  slli         s11, a7, 21
                  mulhu        a0, a7, t6
                  srai         a6, a7, 0
                  mulh         t3, a6, t1
                  div          t0, gp, a7
                  xori         tp, s3, -46
                  slti         s3, t4, 1604
                  lui          s9, 201852
                  addi         s1, ra, -1402
                  srai         tp, s5, 7
                  xori         a0, a4, -1703
                  and          zero, sp, a0
                  xori         a4, a6, -1232
                  sra          a5, s10, a0
                  slli         s9, gp, 17
                  srli         s2, s5, 19
                  sltiu        gp, t3, -1092
                  mulhu        a4, a1, a4
                  and          s7, s5, a2
                  divu         s4, sp, s2
                  ori          s1, tp, -355
                  slti         t1, t4, 1286
                  addi         s0, s2, -1588
                  sub          t4, s11, s2
                  nop
                  slti         gp, t5, -309
                  mulhu        t3, s9, s4
                  xor          a0, s3, a5
                  auipc        gp, 931306
                  slli         s8, s10, 8
                  srli         tp, s1, 25
                  mulhu        a4, t6, a0
                  nop
                  slt          s11, a4, t6
                  remu         ra, t1, sp
                  mul          a4, gp, s8
                  srai         s8, s0, 29
                  remu         t1, a5, s9
                  srl          t5, s7, s3
                  ori          s11, a6, -295
                  mulhsu       t1, s10, s7
                  auipc        s4, 119621
                  mulh         t1, s6, a2
                  and          t1, a6, a0
                  sll          s2, s8, s5
                  auipc        s10, 844004
                  auipc        gp, 673530
                  slli         t6, s11, 27
                  sub          t6, a1, gp
                  xor          s9, a1, s9
                  sub          a3, t5, t5
                  or           a4, s6, t3
                  slti         a6, t6, -1497
                  sltu         zero, a1, tp
                  slli         s10, t0, 23
                  sub          s11, s0, a1
                  lui          a3, 329039
                  andi         s3, sp, -1626
                  slt          a3, sp, s2
                  rem          zero, t4, a6
                  sll          ra, s0, s5
                  addi         s3, a6, 931
                  slt          tp, a2, t1
                  slli         t2, a7, 13
                  sltu         t4, s2, s8
                  xori         ra, s7, -2041
                  remu         tp, s2, s4
                  slti         gp, t0, -1639
                  slli         a4, t6, 24
                  divu         t2, a7, s3
                  div          a3, s3, t6
                  sra          a6, ra, s0
                  slti         t6, a6, 1741
                  xori         t0, t2, 1133
                  rem          s7, sp, t0
                  mul          a7, gp, a5
                  slli         t3, a5, 6
                  xor          s9, s4, sp
                  or           t1, t2, a3
                  remu         s0, t0, t0
                  sra          tp, ra, a5
                  lui          a4, 874596
                  mul          s11, s9, s5
                  divu         s0, ra, sp
                  srai         s0, s2, 31
                  slli         a0, zero, 14
                  nop
                  sub          a5, t6, zero
                  mulhu        a1, s4, sp
                  sltiu        ra, gp, -1856
                  addi         s2, s2, 23
                  rem          a3, gp, a2
                  addi         t4, sp, -436
                  srai         s4, s2, 5
                  remu         tp, s0, t2
                  addi         a3, t2, -675
                  div          t5, a2, a6
                  remu         s10, s4, s10
                  nop
                  slti         s9, t3, 695
                  sll          t5, a4, t3
                  srai         t2, a5, 2
                  ori          zero, a2, 278
                  xor          t0, a3, t0
                  xori         t4, s0, -996
                  srli         tp, t1, 4
                  sll          t6, s9, a2
                  mul          s4, s4, s0
                  ori          a0, tp, -356
                  remu         a0, t5, a0
                  mulhu        gp, zero, t4
                  auipc        ra, 762927
                  xor          t1, s0, s1
                  srli         s1, sp, 26
                  lui          s4, 992669
                  nop
                  mulhsu       s3, s10, t1
                  mulhu        t6, t3, ra
                  mulhsu       s1, ra, a1
                  slt          a7, t2, s6
                  nop
                  ori          t2, s2, 666
                  slti         t4, s11, 803
                  mulhsu       s4, s5, s7
                  and          a1, s6, t6
                  slli         t4, s1, 5
                  lui          t1, 466170
                  srai         a6, a2, 3
                  remu         tp, s5, gp
                  add          t4, s5, a4
                  mul          t1, t0, ra
                  andi         ra, s11, -1764
                  slli         s6, a7, 29
                  mulhu        s10, gp, t3
                  mulhu        a5, t6, t0
                  rem          s6, s7, s3
                  andi         a1, s1, 876
                  mulhu        t2, a6, t5
                  slt          a6, s7, t0
                  slli         s1, t0, 8
                  sub          gp, s8, a6
                  and          a6, a7, s0
                  addi         tp, s2, 320
                  srli         t5, t2, 25
                  mulhsu       t5, a6, zero
                  srl          t2, a6, t5
                  sll          s8, a2, s11
                  srli         tp, t1, 9
                  slli         a1, s9, 18
                  srli         zero, gp, 11
                  nop
                  sltu         t1, t4, s1
                  auipc        s1, 1046882
                  sll          s2, a2, t1
                  mulhu        s1, s11, t6
                  remu         t5, t0, gp
                  lui          s8, 787754
                  mulh         a0, a3, s9
                  mulhu        a7, gp, t2
                  srl          t5, s9, t3
                  mulh         s10, t5, t5
                  mul          tp, tp, ra
                  lui          s11, 541482
                  sltu         a5, ra, s3
                  add          a1, s6, t6
                  srl          t4, a5, s10
                  slti         s4, a6, 7
                  slt          t6, s2, t5
                  and          t6, s9, s11
                  xor          a5, a5, gp
                  sub          s7, s2, t5
                  add          s1, a5, t3
                  sltu         s8, s1, s4
                  slt          a5, ra, s0
                  and          s9, s6, s5
                  sltu         a1, a7, s9
                  xori         s8, t0, -726
                  remu         s0, gp, s5
                  slli         a7, t6, 9
                  srai         s4, t0, 25
                  lui          s9, 165456
                  and          s4, s7, s10
                  sll          a3, s2, t4
                  or           s10, a3, t5
                  add          t5, s0, s3
                  sltiu        tp, a6, -826
                  slt          a0, gp, s1
                  mulhu        s2, t0, s9
                  srai         s10, ra, 11
                  sra          t3, s3, s0
                  div          a5, t5, t4
                  slt          t1, t6, sp
                  and          t2, gp, a5
                  div          t1, s10, t1
                  or           a0, tp, tp
                  div          s11, s10, a7
                  divu         t1, s5, s1
                  sltu         s3, a0, s1
                  slt          a0, a6, ra
                  srli         a7, t5, 15
                  nop
                  sltu         s7, s7, a7
                  mulhu        a0, t3, s5
                  remu         a0, a2, t5
                  lui          a3, 1007256
                  sltu         s7, s10, a1
                  lui          a4, 29036
                  ori          s3, a6, -544
                  sltiu        s8, a3, 697
                  sll          ra, t4, s8
                  slli         a3, a7, 24
                  srl          t3, ra, gp
                  sltu         s1, s8, sp
                  ori          s4, t1, -544
                  sra          s0, a5, s10
                  xori         t6, ra, -1302
                  andi         t6, t3, -2045
                  slt          t0, t3, tp
                  sub          t2, a5, a0
                  remu         a7, a1, s4
                  slt          t2, a6, a0
                  and          a3, t3, s7
                  mulhu        s7, s4, s1
                  andi         zero, sp, 1161
                  andi         s10, a5, 1003
                  ori          s3, s1, -123
                  addi         s4, s10, 142
                  add          s0, t0, s10
                  mulhu        s2, t4, a2
                  add          s7, s10, t0
                  addi         s6, s1, 1512
                  addi         s3, t0, 11
                  mulhu        s8, a0, a4
                  sltiu        s3, s1, -1634
                  andi         s9, t3, 687
                  xori         s0, s2, 20
                  sub          t6, t0, s0
                  sra          t3, s1, s0
                  addi         gp, s0, -1145
                  and          gp, t5, ra
                  mulh         t5, s4, ra
                  and          a0, a7, s7
                  nop
                  sra          t4, zero, a4
                  sub          a7, tp, sp
                  slt          a5, zero, a7
                  auipc        a7, 356963
                  sll          a0, a4, t2
                  rem          t1, s2, t0
                  mulhu        tp, s6, a4
                  sll          s8, t4, t0
                  mulh         s2, s5, s11
                  xori         t5, tp, 422
                  mulhsu       s2, t1, t2
                  add          s1, a7, sp
                  xor          s2, a2, s11
                  xori         s2, a2, -1266
                  and          a3, s3, s1
                  auipc        s11, 181773
                  slli         t3, s2, 16
                  addi         s2, s7, -445
                  andi         s6, gp, 284
                  mulhsu       t4, t0, s2
                  srl          s2, s2, s5
                  srl          t0, t1, t1
                  addi         tp, s6, -1423
                  ori          t3, a7, 705
                  ori          s7, s6, -981
                  sltu         t2, s8, zero
                  rem          s4, a0, s4
                  or           a6, s0, s5
                  mulh         t0, t5, a7
                  div          s3, s6, s4
                  sub          tp, a6, t0
                  xori         t3, s8, -1449
                  slt          gp, t3, a2
                  rem          t4, ra, a4
                  slli         t3, zero, 10
                  xori         a6, a2, -1263
                  add          a4, a7, a2
                  nop
                  mulh         a0, tp, a5
                  sll          t0, s11, t5
                  or           a4, a2, s10
                  addi         a3, s7, 516
                  or           s7, sp, s11
                  sll          s2, s6, s6
                  lui          s1, 763482
                  sub          s6, s1, ra
                  sll          a1, s7, t4
                  andi         s9, a5, 1041
                  sub          s1, a0, s0
                  lui          tp, 914703
                  mulhu        t0, a6, a0
                  mulhsu       a0, s10, t6
                  srli         s6, a5, 1
                  sltiu        a0, gp, -527
                  sltiu        t3, s4, 872
                  and          t4, a7, tp
                  auipc        a7, 557885
                  add          gp, ra, s5
                  mulhu        a3, s0, a2
                  and          s9, s3, s1
                  lui          a3, 364001
                  slti         a3, a2, -607
                  nop
                  div          a3, t0, s9
                  or           t2, a2, a1
                  xori         zero, t3, 1523
                  mulhu        s3, t3, t0
                  addi         ra, s8, 1726
                  sltiu        a7, t2, -1699
                  srli         t5, t1, 19
                  sltu         a5, a0, s4
                  andi         s0, tp, -1
                  sltu         a3, a3, s0
                  sll          zero, gp, s6
                  auipc        s7, 902284
                  div          s7, s1, gp
                  mulhsu       a0, zero, s1
                  mul          s11, gp, s9
                  sltu         a1, s7, t2
                  lui          a6, 1018732
                  or           s8, t3, t6
                  mulhsu       a0, s7, t1
                  ori          a4, a0, 801
                  lui          s11, 386263
                  or           s7, sp, s6
                  srl          s1, a0, t4
                  mulh         t5, s0, t4
                  and          s8, t5, s1
                  mulh         t5, s6, a2
                  srl          gp, s11, s8
                  xor          s7, s2, a2
                  slli         s2, t6, 3
                  mulhu        a5, s6, t0
                  or           ra, s4, a0
                  auipc        a7, 52324
                  srl          s1, t0, s3
                  lui          t4, 649895
                  add          s2, s0, s10
                  addi         t1, t2, -1229
                  mulh         t2, a7, s7
                  lui          s11, 504849
                  slti         s7, s5, -272
                  or           zero, s4, s8
                  sub          s10, t3, s7
                  remu         s6, s7, a0
                  and          a3, t0, t5
                  xori         s8, a3, 392
                  srli         t3, zero, 12
                  sltu         s2, t2, zero
                  andi         s7, a4, -1015
                  add          zero, a3, s11
                  mulhsu       s9, gp, s2
                  div          s1, t6, a5
                  auipc        zero, 1015463
                  lui          t6, 134375
                  slt          s3, tp, s7
                  sltu         a0, a5, s4
                  slti         a0, s3, -1194
                  srl          s0, a5, t5
                  div          a4, a2, s7
                  sltiu        s2, s8, -267
                  and          t1, tp, a2
                  ori          a7, tp, 1451
                  mul          t1, t4, s11
                  mulh         s8, s5, tp
                  nop
                  srl          t3, t3, t2
                  sll          s7, t0, s0
                  srai         a5, tp, 0
                  slt          t6, a2, a7
                  la x12, test_done
                  jalr x0, x12, 0
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
mmode_intr_vector_1:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_2:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_3:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_4:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_5:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_6:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_7:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_8:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_9:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_10:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_11:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_12:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_13:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_14:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_15:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  addi x2, x2, -4
                  sw  x21, (x2)
                  add x21, x2, zero
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x2, x21, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x25, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x25, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x25, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x25, x20, ecall_handler
                  li x20, 0x1
                  beq x25, x20, instr_fault_handler
                  li x20, 0x5
                  beq x25, x20, load_fault_handler
                  li x20, 0x7
                  beq x25, x20, store_fault_handler
                  li x20, 0xc
                  beq x25, x20, pt_fault_handler
                  li x20, 0xd
                  beq x25, x20, pt_fault_handler
                  li x20, 0xf
                  beq x25, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x21, x2, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  add x2, x21, zero
                  lw  x21, (x2)
                  addi x2, x2, 4
                  mret

load_fault_handler:
                  add x21, x2, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  add x2, x21, zero
                  lw  x21, (x2)
                  addi x2, x2, 4
                  mret

store_fault_handler:
                  add x21, x2, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  add x2, x21, zero
                  lw  x21, (x2)
                  addi x2, x2, 4
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x21, x2, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  add x2, x21, zero
                  lw  x21, (x2)
                  addi x2, x2, 4
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x21, x2, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  add x2, x21, zero
                  lw  x21, (x2)
                  addi x2, x2, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x21, x2, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  add x2, x21, zero
                  lw  x21, (x2)
                  addi x2, x2, 4
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
