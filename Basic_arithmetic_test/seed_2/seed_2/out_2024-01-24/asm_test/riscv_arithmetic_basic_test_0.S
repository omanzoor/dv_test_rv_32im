.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x20, 0x40001104
                  csrw 0x301, x20
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  li x20, 0x0
                  csrw 0x304, x20 # MIE
                  mret
init:             
                  li x0, 0xf3a105e7
                  li x1, 0x15c9273b
                  li x2, 0x8
                  li x3, 0xc
                  li x4, 0x80000000
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x1
                  li x13, 0xf3fd6287
                  li x14, 0x279a835f
                  li x15, 0x42576b94
                  li x16, 0xf0e7a641
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xf32a29c6
                  li x21, 0x6
                  li x22, 0x80000000
                  li x23, 0xc0b1b091
                  li x24, 0xf
                  li x25, 0x80000000
                  li x26, 0xbb58917
                  li x27, 0x4
                  li x29, 0x7
                  li x30, 0xfe32b95c
                  li x31, 0x0
                  la x5, user_stack_end
main:             sltu         ra, a1, sp
                  slti         s7, s4, 999
                  div          s3, t0, s8
                  add          s10, t5, s1
                  andi         a2, s8, -1007
                  sll          a5, s10, t0
                  remu         t1, s11, a6
                  auipc        a3, 269278
                  div          a1, s1, s5
                  and          t1, t3, s11
                  slti         s0, s4, 1062
                  remu         s1, gp, a6
                  ori          s2, a1, 1023
                  slt          s0, t0, s1
                  andi         s0, s9, 1512
                  mulhu        a5, s11, t6
                  divu         a6, tp, gp
                  and          a3, t4, t0
                  sltu         a7, sp, a0
                  and          gp, gp, ra
                  mulhu        gp, sp, a2
                  add          a3, t3, s0
                  or           s0, a2, a1
                  slli         s2, t0, 24
                  slti         a1, ra, -1289
                  sltu         t5, s0, s4
                  div          s5, s8, t2
                  sub          ra, a2, a2
                  sub          gp, tp, s4
                  remu         a7, s1, zero
                  addi         gp, t5, -698
                  sltu         a4, a6, t6
                  nop
                  and          a2, t1, s4
                  andi         t2, t1, 211
                  rem          a1, t6, s6
                  auipc        ra, 703580
                  or           s5, a3, a4
                  sra          t5, a4, a4
                  srli         s11, t4, 1
                  nop
                  mulhu        s4, tp, a2
                  mul          t1, t1, sp
                  mulhu        a4, s6, t3
                  mulhu        t6, s0, t0
                  mulh         s9, s3, a1
                  add          s10, s5, s2
                  mulh         a6, s2, sp
                  xori         s7, t4, -1478
                  mul          s8, a7, s2
                  add          s0, s1, s5
                  mulhsu       t5, t4, a5
                  srl          a7, a3, a5
                  xor          a7, zero, s0
                  mul          s3, a0, s7
                  slt          a6, s7, s0
                  slli         a7, zero, 29
                  div          t4, s2, a7
                  mulh         s6, t3, t6
                  xori         a5, a5, -2014
                  rem          s1, a7, s11
                  xor          a4, a6, tp
                  slt          a2, s7, t5
                  add          t6, t6, t2
                  div          zero, s5, t0
                  mulh         a6, s10, a6
                  slli         s3, ra, 29
                  nop
                  sll          a2, t3, t1
                  andi         s2, t5, 870
                  rem          s8, tp, a7
                  xor          tp, gp, s6
                  addi         zero, gp, 201
                  mulh         a0, ra, tp
                  lui          a6, 118177
                  sltiu        ra, t3, -1439
                  mulhsu       s9, a0, t5
                  srai         gp, ra, 26
                  sltu         tp, s5, s8
                  sltu         t6, s9, t5
                  xor          zero, s3, tp
                  lui          zero, 185151
                  remu         s8, a6, a4
                  rem          a3, s0, tp
                  add          a6, s3, tp
                  divu         s0, ra, a0
                  sll          s1, s9, a0
                  auipc        s3, 160617
                  divu         s9, a5, s6
                  mulh         t4, a3, s11
                  or           a3, s11, t3
                  slti         s10, a5, 389
                  nop
                  mul          t5, a6, t6
                  slli         gp, s9, 18
                  addi         a0, s3, -888
                  slt          a3, s11, tp
                  div          s1, a2, s5
                  sll          t4, tp, t4
                  auipc        a7, 812247
                  andi         s7, s4, 1197
                  srai         a1, s9, 8
                  addi         a6, a6, -387
                  rem          s9, s7, a1
                  andi         s1, a7, -2008
                  andi         s2, s4, 1647
                  andi         t5, a6, 904
                  nop
                  sll          s6, ra, s10
                  xor          tp, s9, ra
                  ori          t6, s1, -516
                  or           s5, a6, gp
                  rem          t2, a3, t3
                  div          s11, a3, zero
                  mulhu        t4, tp, a2
                  srli         a3, t3, 8
                  mulhu        t1, a2, s2
                  sltiu        s1, sp, -1679
                  lui          a5, 143311
                  sltiu        s5, zero, 1804
                  divu         s6, t4, a6
                  slli         s11, a5, 19
                  mul          s10, zero, t5
                  div          tp, a2, s2
                  srai         t2, t4, 22
                  srai         gp, a5, 11
                  addi         s2, s5, 1503
                  mulhsu       a2, a7, s0
                  auipc        ra, 283506
                  add          a2, a0, a0
                  srl          s6, s0, s3
                  sltiu        s1, s0, -371
                  sub          t1, a2, t1
                  xori         tp, s2, -498
                  and          s2, s5, t0
                  divu         s7, a3, a2
                  sub          a1, a6, tp
                  and          s0, s3, a3
                  sra          gp, s6, a3
                  mulh         a2, a7, t4
                  mulhsu       s11, s9, s5
                  sltu         a4, s7, s8
                  addi         a5, a0, 588
                  nop
                  and          ra, t6, a5
                  srl          gp, a1, t3
                  mulhsu       t4, t5, a2
                  div          a7, t1, t6
                  auipc        s4, 597491
                  lui          t4, 29647
                  srai         t2, s6, 22
                  sltu         gp, tp, t6
                  sub          a5, s11, s5
                  xori         s1, t2, 905
                  sub          a6, s8, s10
                  lui          ra, 983101
                  mulhsu       s6, gp, gp
                  addi         s8, s7, -1905
                  mulhsu       t4, s9, a3
                  mulh         t1, t5, s6
                  srai         a0, a3, 20
                  srai         a1, t2, 29
                  mulhu        a0, a1, s6
                  mulhu        s0, s1, a1
                  addi         ra, a6, 43
                  sltiu        a1, t6, 1121
                  divu         a3, s6, t2
                  mulhu        s11, zero, s1
                  xori         tp, a3, -2018
                  sub          a4, s3, s1
                  rem          zero, s3, a5
                  ori          s1, t3, 1124
                  slt          s2, s1, t2
                  mulhsu       s7, gp, s2
                  mul          a5, a1, t2
                  div          a4, s4, tp
                  mul          tp, tp, ra
                  sll          s6, gp, s9
                  sltiu        s2, s10, 692
                  nop
                  slli         a6, s9, 22
                  ori          a3, s5, 1231
                  add          s7, s2, s8
                  sll          t1, t4, t4
                  lui          t6, 480545
                  srl          s8, s6, ra
                  sub          t2, ra, a1
                  remu         s3, s2, a1
                  srl          t1, t2, s0
                  slt          t6, a0, s6
                  sll          s7, a5, sp
                  lui          t1, 190195
                  remu         s0, a5, s4
                  auipc        t5, 42041
                  divu         a7, s10, zero
                  auipc        ra, 507716
                  remu         s6, s4, t4
                  div          t2, t2, s0
                  sll          s10, s4, a5
                  nop
                  sltiu        a1, s2, 258
                  remu         gp, s6, s1
                  slt          a2, a3, a2
                  sltu         ra, sp, ra
                  remu         s0, s3, s3
                  mulh         zero, a7, t5
                  srli         t2, gp, 28
                  rem          t4, a7, a5
                  sltu         tp, s3, s2
                  mulhsu       t2, t4, s6
                  mulhsu       a1, t1, t4
                  mul          t1, a7, s8
                  srl          s5, t2, s10
                  auipc        zero, 902403
                  rem          s4, t0, gp
                  remu         s7, s9, tp
                  and          ra, a4, a6
                  slti         a3, a4, 95
                  sra          t4, a1, a3
                  sltu         a5, s0, a4
                  ori          t4, t3, -1709
                  nop
                  sltiu        s10, s1, -897
                  mulhu        ra, s11, t2
                  rem          s11, a3, s4
                  sltiu        gp, t4, 1523
                  mulhu        t5, sp, t5
                  xori         s4, s1, 865
                  mulhsu       s1, s4, sp
                  and          s5, s10, ra
                  mulhsu       s10, s10, s4
                  lui          s5, 495764
                  auipc        a3, 761272
                  div          s3, zero, t1
                  srai         s8, t3, 1
                  slti         ra, s9, -1788
                  xor          s11, a5, tp
                  div          gp, t0, t1
                  addi         s8, t0, -1885
                  sub          s2, s3, gp
                  remu         t6, s0, t3
                  slt          t4, t0, t2
                  nop
                  sll          t5, t5, s2
                  div          ra, a7, t2
                  or           a6, t3, t5
                  nop
                  divu         s2, zero, sp
                  xor          s10, t2, a6
                  mulhu        t1, a6, t1
                  and          s3, t2, s6
                  sltiu        s4, a7, -1817
                  slli         tp, s1, 21
                  andi         s7, s6, 1106
                  div          s6, a2, t1
                  or           t6, t1, ra
                  mulh         gp, t0, s1
                  ori          gp, gp, -150
                  addi         s11, t1, 1309
                  nop
                  mulhsu       s4, zero, s6
                  lui          a3, 820844
                  add          tp, t1, a4
                  divu         s0, t1, ra
                  xori         t1, s7, -946
                  auipc        t2, 540753
                  mulhu        gp, t2, s7
                  nop
                  sra          s3, a6, s1
                  div          a0, zero, s4
                  nop
                  mulh         s6, t1, s7
                  mulhu        t2, s2, t4
                  sltu         a7, a6, t1
                  ori          s7, s2, -987
                  sra          zero, t2, s0
                  add          gp, s4, a3
                  sra          t1, s1, s0
                  and          s11, t2, t3
                  xor          s1, s0, s7
                  add          t4, t2, s8
                  auipc        zero, 401988
                  remu         a0, s5, a1
                  nop
                  srli         a6, ra, 0
                  mulhsu       a6, t2, a6
                  mulhu        a1, sp, a4
                  divu         s7, s8, a0
                  nop
                  addi         zero, t0, 1961
                  auipc        s6, 836819
                  slt          a3, t2, s10
                  xor          t4, s5, gp
                  srai         t4, sp, 27
                  andi         tp, s10, 1564
                  mul          t4, s7, a2
                  sltu         s11, s2, t3
                  divu         a3, s9, s11
                  srai         a4, s0, 2
                  rem          gp, zero, gp
                  slt          ra, s0, gp
                  divu         s6, gp, a5
                  nop
                  auipc        a6, 654502
                  xori         a1, t2, -362
                  srli         a2, s0, 13
                  or           s5, s0, s3
                  lui          zero, 708535
                  slti         a7, s7, 1917
                  srl          s8, zero, s6
                  sll          s1, s3, t5
                  slti         s9, gp, -544
                  sub          a1, s7, s11
                  add          s8, a0, t1
                  slti         s2, s0, -1399
                  lui          t1, 166825
                  mulh         t5, s1, a4
                  mulh         t4, sp, s4
                  sll          s5, s6, a0
                  lui          t2, 545784
                  mul          s8, s3, s2
                  and          s9, t5, zero
                  div          t4, a7, s0
                  divu         s11, t5, s0
                  divu         s1, t5, zero
                  mul          zero, zero, t6
                  div          a1, t3, t5
                  add          a3, a7, s4
                  sub          s5, a1, t2
                  andi         ra, t3, 1723
                  addi         s3, ra, -824
                  sll          s6, t0, s7
                  srl          a1, a0, t5
                  srli         a1, ra, 11
                  srli         s3, s4, 18
                  srai         ra, t5, 16
                  sra          a1, t0, s2
                  mulh         t6, t5, tp
                  sltu         gp, a1, s6
                  sub          s0, s4, t6
                  auipc        gp, 501664
                  mul          t1, s3, s11
                  andi         a5, s4, 564
                  divu         s3, t4, t5
                  andi         s0, a5, 369
                  mulh         a2, tp, s3
                  remu         tp, s6, a1
                  addi         s10, t4, -1518
                  mulh         a2, s8, zero
                  slt          s11, s4, t0
                  slt          a7, sp, tp
                  slli         a5, s8, 13
                  mulhu        s10, s4, s10
                  srl          s7, t4, a1
                  div          t6, s5, s10
                  sll          a3, s5, s4
                  andi         tp, a4, 755
                  srl          tp, s7, s6
                  mulhu        s8, t1, a2
                  andi         a1, sp, -924
                  nop
                  divu         t4, s4, t1
                  slti         t1, s8, -94
                  mulhsu       s7, s11, a0
                  sltiu        s0, a1, -1648
                  and          a2, s2, t0
                  sltiu        t2, t3, 1677
                  sltu         a3, s9, t1
                  mulh         s4, s4, s11
                  mulh         a0, a7, s2
                  andi         a1, a5, 1703
                  sra          zero, s5, t6
                  addi         s5, tp, -2031
                  ori          a0, s4, 149
                  div          s5, t1, a5
                  mulh         a7, s0, ra
                  xor          zero, a0, a2
                  sltiu        tp, t1, -655
                  lui          s5, 463452
                  mulhsu       t6, s1, t5
                  sll          t5, a2, tp
                  ori          a2, a2, -1313
                  lui          t1, 216711
                  sra          s9, ra, s4
                  remu         s1, a4, t1
                  slti         a3, s8, 1935
                  sltu         gp, t3, s0
                  lui          a0, 518793
                  ori          s5, t4, -2021
                  addi         s8, tp, 712
                  mulhu        t2, ra, s6
                  addi         t1, s6, -1864
                  slti         t1, s7, 1158
                  srl          s11, s9, a7
                  add          ra, s9, a3
                  mulhsu       a1, a1, t1
                  divu         a1, a3, s6
                  xor          s7, a6, t2
                  sltu         s4, s8, t6
                  addi         a6, s10, -305
                  div          ra, t5, s11
                  mulhu        zero, s1, s3
                  add          t5, a4, a2
                  lui          a3, 137627
                  sra          t5, s1, s9
                  sll          ra, tp, s1
                  mulh         s11, a2, zero
                  sltiu        a5, s8, -1429
                  rem          s10, a6, s4
                  mul          gp, t2, s0
                  nop
                  lui          s2, 95518
                  andi         t5, ra, -197
                  srl          s6, s10, a3
                  add          s1, s8, t1
                  or           s8, s6, a0
                  and          s10, t4, s0
                  sltu         a1, s4, s5
                  xori         s10, gp, 584
                  add          s9, s9, gp
                  and          s11, s9, s1
                  and          s3, s2, t1
                  nop
                  sub          s2, s10, a6
                  nop
                  sll          s4, s1, a4
                  andi         t6, s8, 321
                  and          a7, a3, t5
                  divu         s8, s3, a3
                  srli         a1, t4, 13
                  sub          s5, a5, t1
                  rem          gp, a6, s11
                  addi         gp, t5, 914
                  sltu         a6, gp, t1
                  lui          s10, 102290
                  xori         s4, t1, -10
                  rem          t2, a2, ra
                  xori         t4, s5, -1560
                  srli         t6, s4, 21
                  srli         s7, s2, 19
                  srai         s0, a3, 18
                  auipc        zero, 242214
                  div          s0, sp, t6
                  ori          ra, a0, -1136
                  sll          a5, a6, s2
                  sltu         a0, s3, a5
                  sra          tp, s11, s0
                  nop
                  xor          zero, a6, a2
                  add          t1, t5, s4
                  ori          a3, a2, 961
                  srl          s8, s7, s2
                  sltiu        a6, s11, 74
                  xor          tp, s10, s0
                  sltu         a7, tp, s11
                  nop
                  sltiu        s5, s3, -977
                  xori         t4, a3, -1692
                  mul          s11, s1, a7
                  slt          t2, t3, a4
                  remu         s4, a7, s10
                  divu         s9, sp, s0
                  srai         s4, gp, 5
                  xori         t1, t2, -1022
                  srl          t5, s2, ra
                  addi         a3, tp, -166
                  ori          gp, t4, -121
                  sltu         s9, s3, s3
                  or           s10, t2, s0
                  slt          ra, gp, a0
                  sra          tp, s7, s1
                  slti         s1, s7, -15
                  add          t6, a5, a5
                  xori         ra, s1, 342
                  or           a0, t0, s5
                  add          gp, a2, s2
                  slt          s4, zero, gp
                  srai         s5, a1, 2
                  rem          t4, a3, s10
                  sltu         a6, a5, t4
                  sra          t6, t1, a2
                  mul          a0, s3, sp
                  or           a3, s11, zero
                  slt          a0, zero, a1
                  auipc        s0, 269132
                  andi         a0, t4, -562
                  remu         tp, ra, a3
                  sra          tp, t4, s8
                  auipc        t5, 356614
                  sltiu        s5, gp, -1935
                  xor          a6, s4, t6
                  mulhsu       t6, sp, s7
                  auipc        s11, 134324
                  nop
                  sltiu        t4, ra, -1686
                  slli         a3, gp, 29
                  and          a4, a6, a5
                  slli         a0, ra, 2
                  slli         ra, t0, 8
                  srli         s8, s2, 9
                  xori         s1, s11, 1495
                  xor          tp, t0, tp
                  slli         t5, s4, 1
                  xor          s2, s9, s6
                  slli         s11, t2, 26
                  sll          s1, gp, s3
                  sll          a1, s8, s7
                  mulhu        a6, t5, s10
                  or           tp, s11, a6
                  remu         s8, ra, tp
                  div          a1, t2, t1
                  xori         s4, gp, 1831
                  xori         s7, t4, 923
                  slli         a3, s10, 27
                  addi         a2, a7, -582
                  srai         tp, t1, 22
                  slli         s2, zero, 16
                  mulh         a5, a6, a0
                  xori         gp, s8, -89
                  srl          a7, t6, s6
                  srli         s6, s10, 24
                  addi         a3, s8, 1469
                  addi         s11, a4, 1795
                  divu         a0, a6, t5
                  add          t5, t4, s6
                  auipc        a0, 68317
                  rem          s1, a7, t1
                  remu         t5, t1, t0
                  divu         s2, a7, t3
                  rem          s0, s9, s8
                  add          gp, a5, a7
                  sub          s8, t1, a1
                  add          t6, t4, s7
                  srai         zero, s6, 19
                  auipc        gp, 516334
                  slt          s0, gp, t0
                  or           a1, s9, s10
                  mulhu        t6, s7, s11
                  slti         a3, tp, -683
                  xori         s5, sp, -815
                  mulhu        a1, s1, s4
                  ori          t6, t2, -1145
                  sub          t5, s3, t3
                  auipc        ra, 878891
                  sra          a0, t0, t4
                  rem          tp, s9, t4
                  and          s9, t4, t2
                  sra          s9, ra, zero
                  mul          s9, a4, a0
                  divu         t5, t2, s11
                  mulhsu       s8, s10, t0
                  srl          s7, t3, s11
                  sra          a6, s1, gp
                  srl          s10, a7, a6
                  divu         a0, a1, a3
                  sub          s11, t0, a4
                  divu         s9, t3, s7
                  slti         s9, a7, 1282
                  sltu         a0, t0, s1
                  remu         s9, s9, s6
                  nop
                  xor          a6, s3, t3
                  srl          a4, s8, s6
                  sub          a2, s4, t3
                  mulh         s9, a3, s8
                  addi         a6, a6, 326
                  and          s11, s2, a5
                  mulh         a4, s7, zero
                  sll          a6, t1, t3
                  auipc        zero, 441068
                  andi         s10, t5, -901
                  addi         tp, zero, 468
                  auipc        s10, 829200
                  mulh         s11, a2, s2
                  sub          s1, a4, s0
                  or           a0, tp, gp
                  xor          tp, a4, s8
                  auipc        t5, 851494
                  slli         s9, a0, 9
                  srl          a6, a0, ra
                  mulhsu       t5, a3, t2
                  div          a3, tp, gp
                  sltu         s6, a6, s8
                  addi         ra, s3, 939
                  srl          s6, s4, a3
                  andi         t4, a5, -1355
                  rem          s6, tp, s8
                  slli         ra, gp, 8
                  xori         t6, s10, -1959
                  div          tp, s10, s7
                  srl          gp, a2, s6
                  lui          s4, 867350
                  slti         t2, s7, -939
                  srli         s11, s0, 14
                  mul          s10, zero, s5
                  mulhu        zero, t2, a2
                  sltiu        a3, a5, -210
                  mulh         a5, s3, a2
                  andi         s8, a7, -86
                  remu         s8, t4, t2
                  sltiu        a2, s4, -241
                  sltu         zero, sp, a7
                  ori          a6, s3, -1712
                  xori         t5, t0, 1263
                  mulhu        s8, s7, t0
                  sub          t5, t6, t2
                  andi         s3, s1, -1878
                  slti         a2, ra, -843
                  nop
                  sltiu        s2, t2, 979
                  slt          a3, s6, s8
                  add          a1, t2, a6
                  mul          s3, a3, a0
                  sll          s5, t1, a3
                  sra          a0, s1, tp
                  slti         s4, a1, -835
                  nop
                  andi         t1, zero, -2035
                  or           tp, s10, a7
                  or           s8, s7, tp
                  divu         s11, a2, t6
                  slt          s2, s8, a3
                  srl          s4, t4, t4
                  nop
                  slti         zero, ra, -84
                  auipc        t2, 941219
                  mulhsu       t6, ra, t2
                  sltu         t4, t4, s6
                  lui          s1, 1008980
                  srai         t5, ra, 11
                  add          t2, s6, t5
                  slt          s7, t3, gp
                  sra          t4, a5, a0
                  mulhu        s10, s8, a5
                  srli         s8, t0, 20
                  srli         s5, s0, 17
                  sub          a2, gp, a3
                  xori         s0, s0, 1052
                  nop
                  ori          t2, t3, -972
                  slli         t1, a1, 17
                  xor          a4, s10, a1
                  sltu         a2, t5, t6
                  slti         t5, a0, 1551
                  srli         s4, s11, 12
                  sltiu        s2, t1, 1611
                  sll          t2, a3, sp
                  divu         zero, s3, t4
                  nop
                  srl          a5, a6, s8
                  mulhu        a3, zero, tp
                  lui          t2, 657074
                  slli         a7, a5, 3
                  and          t4, s6, a1
                  slli         s8, t5, 15
                  div          s0, s9, s9
                  sub          a5, t2, zero
                  xori         a7, s4, -750
                  mulh         t1, s5, a7
                  srai         a6, s6, 17
                  sub          a1, s8, a3
                  divu         s2, t0, s8
                  add          a5, s6, ra
                  mul          s11, t6, zero
                  mul          s6, t1, zero
                  lui          a7, 1032848
                  sra          a5, a2, t6
                  mul          s7, t2, s7
                  mulh         s1, t6, t6
                  slti         s2, s7, 1379
                  auipc        a3, 715568
                  srai         zero, s4, 30
                  sll          a3, s6, s10
                  mulh         s8, a5, a3
                  xori         zero, a0, -1781
                  slt          s10, s7, t3
                  and          gp, tp, a3
                  lui          t1, 919127
                  mulhsu       s5, ra, a6
                  ori          tp, a5, -2037
                  srli         tp, s2, 13
                  divu         t4, t6, t5
                  sltiu        s10, s0, 153
                  nop
                  add          a3, ra, s10
                  mulh         a1, s6, s6
                  sltiu        a1, t4, 170
                  slli         s0, t2, 16
                  sra          a7, a1, a2
                  sll          s10, s9, s5
                  rem          s6, s6, zero
                  sll          t5, s2, a1
                  srai         s7, a1, 9
                  srai         t1, s0, 13
                  remu         s9, a5, s0
                  mulhsu       s9, s2, a3
                  srai         s11, zero, 15
                  addi         s10, tp, 554
                  remu         a6, a7, a0
                  mul          s8, a0, s6
                  ori          t4, t0, -1634
                  sll          s6, gp, t2
                  div          s1, ra, a5
                  andi         s3, a6, 301
                  xori         s2, a1, -517
                  div          a2, t2, a2
                  andi         s11, s6, -66
                  lui          a4, 324222
                  mul          s10, s11, tp
                  xori         zero, s8, -159
                  slli         s0, t4, 18
                  or           a5, s11, s5
                  mulh         s10, t1, tp
                  andi         s2, s5, 1188
                  sltiu        s3, s2, -729
                  xori         t6, tp, -61
                  or           s5, t6, s5
                  srli         s1, s1, 18
                  add          s10, a4, s6
                  add          s1, s2, a2
                  ori          s7, t3, -75
                  sltu         a5, sp, t6
                  div          t2, t0, s10
                  slli         a1, a0, 29
                  and          a1, a5, s8
                  addi         a7, a3, 1753
                  mulhu        s0, s1, s9
                  slt          t1, s0, tp
                  srli         s6, t6, 31
                  sub          t5, s2, s8
                  rem          t4, s5, tp
                  rem          a4, tp, a5
                  sll          t2, gp, a4
                  mulh         a4, zero, s11
                  rem          t1, t5, a7
                  xori         s11, s5, 499
                  sltu         s0, a5, sp
                  mul          s0, s11, a5
                  slli         a7, s4, 29
                  mulhsu       a3, t1, a3
                  slt          a6, s1, s1
                  add          s6, s6, a7
                  or           s1, a7, sp
                  srai         a6, zero, 13
                  addi         a7, a1, 1797
                  andi         s0, s8, 2038
                  srai         s9, s2, 18
                  or           s5, s9, s7
                  and          ra, a3, s8
                  mulhu        zero, a6, s10
                  srai         s4, t5, 8
                  srli         s4, s0, 16
                  sub          s0, t1, tp
                  sltu         ra, a5, a6
                  nop
                  srl          s2, s3, t3
                  sltu         s2, a5, s11
                  add          s11, s7, t6
                  div          ra, s4, t1
                  slti         t5, ra, -78
                  mulhu        s0, gp, t6
                  and          a4, a5, t6
                  slt          s2, a2, s10
                  addi         s3, s5, 935
                  xor          s11, t1, a1
                  rem          ra, s9, s9
                  slti         s7, s11, -169
                  add          a3, a0, gp
                  mulhsu       zero, gp, t2
                  remu         tp, a6, t0
                  nop
                  sltiu        zero, s11, 630
                  addi         s9, s3, -179
                  slli         s3, s2, 22
                  srai         s10, a7, 30
                  slti         t2, s3, -1943
                  add          t1, a2, s2
                  xor          s6, gp, a1
                  slli         t4, a6, 7
                  ori          ra, s5, -1659
                  sub          a0, ra, t4
                  div          a6, a7, a0
                  xor          s11, t2, t2
                  slti         gp, s5, -728
                  ori          a4, s0, -1529
                  mulh         s3, s1, s5
                  slli         t6, s8, 20
                  andi         a5, t0, -59
                  mulhsu       ra, zero, sp
                  mulhsu       a6, t1, s7
                  sub          ra, s9, s8
                  nop
                  rem          t5, a0, t1
                  andi         a5, zero, -205
                  div          s4, a2, ra
                  slti         a1, s11, 839
                  sltiu        ra, a0, -1266
                  nop
                  lui          a3, 785976
                  mulhu        a0, t3, s11
                  sll          s7, t0, tp
                  rem          s0, s3, s9
                  mulh         a1, a5, a3
                  auipc        a2, 663360
                  xor          a4, t6, t6
                  xor          t4, s10, a3
                  srl          s9, ra, a2
                  sltu         s10, t4, zero
                  sltiu        a2, s6, 1020
                  slti         ra, ra, -851
                  slli         a5, t0, 4
                  sub          s0, s6, s7
                  rem          s0, s0, s10
                  xori         a2, s8, 1666
                  mulh         s5, s7, t2
                  remu         s0, s1, s11
                  srl          s9, s10, s11
                  slt          t1, s2, s0
                  divu         t2, ra, a1
                  srl          s7, s9, s4
                  divu         s11, a7, a0
                  sub          s11, s4, s11
                  mulhu        a4, sp, s4
                  sll          s4, s6, s3
                  slli         s11, a3, 15
                  ori          s9, sp, -1208
                  andi         a0, a5, -588
                  slli         ra, t2, 7
                  slli         t6, s4, 0
                  mulhu        s10, a1, zero
                  mul          a7, a1, s2
                  srai         s2, a6, 23
                  slt          s6, t6, s0
                  sll          t2, s10, t2
                  lui          a0, 964629
                  srli         s7, ra, 31
                  sltiu        s9, a6, 943
                  add          s5, ra, a1
                  nop
                  slti         s7, s4, 1970
                  ori          t6, t3, -1550
                  ori          s8, a3, 1380
                  sltu         a3, s8, s4
                  add          t6, s6, t2
                  sra          zero, a1, a6
                  and          gp, t1, s8
                  srli         tp, s1, 24
                  srli         t2, t6, 20
                  srai         s0, s2, 7
                  auipc        a5, 29060
                  divu         t1, s11, a0
                  ori          a6, zero, 1451
                  remu         s5, t5, t0
                  srli         s6, s0, 10
                  sll          ra, t1, s8
                  div          t6, s1, tp
                  andi         t5, ra, -1085
                  mul          t5, s5, s9
                  mulhsu       t4, a1, t5
                  or           s7, gp, s11
                  srai         a5, a1, 7
                  slti         a5, t0, 135
                  slli         t4, t4, 23
                  sltu         s4, a3, s1
                  sll          t6, s3, ra
                  srli         s0, s1, 17
                  xori         a0, a3, 1400
                  add          a3, a4, s3
                  slti         a1, s0, -61
                  slt          a0, s0, s0
                  slti         s7, s9, -1674
                  xor          s9, a6, a7
                  mulhsu       a7, t5, t1
                  sll          a5, s0, t5
                  sltiu        a6, tp, -1356
                  nop
                  xor          a4, a4, s1
                  lui          t5, 169313
                  slli         s5, a7, 19
                  auipc        a6, 742752
                  addi         a5, s8, -1030
                  slti         a6, s2, -419
                  sub          s10, tp, s5
                  mulhsu       zero, a2, a2
                  andi         s7, s3, 733
                  sltu         s8, s3, t3
                  slt          a2, t4, s7
                  sltu         a3, s11, a2
                  slti         s4, gp, 1536
                  slli         s4, s9, 4
                  sub          t1, t4, s5
                  sub          s4, s7, s7
                  remu         s10, t6, ra
                  auipc        t1, 551901
                  nop
                  divu         t5, sp, a2
                  add          tp, t1, a6
                  srl          a3, s2, s3
                  sltiu        a3, a2, 568
                  srli         a0, s0, 18
                  sub          s5, t1, a0
                  slt          a4, s0, a3
                  sra          a2, a7, t2
                  div          s3, a2, t3
                  ori          s11, a2, -1647
                  srai         a1, a0, 12
                  andi         s5, a7, 851
                  slti         ra, tp, 585
                  lui          s0, 941868
                  auipc        a2, 774374
                  rem          a0, tp, s4
                  srli         t1, s7, 14
                  mulhu        s7, t2, s10
                  or           a0, s1, s9
                  sltu         s0, a0, s3
                  mul          a6, a4, s10
                  remu         ra, s11, a5
                  remu         a0, a2, a4
                  sll          ra, zero, zero
                  sltiu        s3, s3, 518
                  divu         s5, t1, s6
                  sra          t1, t5, a7
                  or           t4, s11, s8
                  sltiu        s11, t2, 777
                  slti         a0, s11, 1579
                  or           t1, s7, a3
                  xor          a3, s2, s1
                  addi         t4, s8, -905
                  sra          a1, s9, sp
                  ori          a5, s8, -365
                  remu         s5, zero, s1
                  sra          a0, a5, t5
                  slt          s0, a6, a2
                  lui          a6, 632018
                  auipc        s6, 467258
                  andi         s8, tp, 73
                  sltu         s9, s7, t1
                  mul          a2, a5, a2
                  xori         s2, s8, -1654
                  add          t1, a0, s9
                  divu         tp, s11, t4
                  slt          s1, s10, sp
                  rem          tp, t2, s7
                  or           s8, t3, t0
                  andi         a7, a3, 1951
                  nop
                  srai         s9, s5, 15
                  sra          a4, s11, s5
                  add          s2, s11, t3
                  addi         a7, s10, 23
                  mulhsu       ra, s10, a4
                  srli         a0, s3, 13
                  xori         a4, s8, -1499
                  addi         gp, s0, 800
                  srl          t2, a7, a6
                  mulhsu       s1, a3, s3
                  div          tp, t0, a7
                  mul          t6, a7, s3
                  mul          t5, t1, t6
                  slti         s8, s3, 213
                  xor          s11, ra, a3
                  mulh         a0, s10, a1
                  addi         tp, t4, -1741
                  mulhu        a0, t0, tp
                  mulh         a6, tp, a1
                  xori         zero, gp, -931
                  mul          s9, a2, t2
                  and          s2, t0, t0
                  addi         a0, zero, -803
                  sra          a3, s10, a1
                  srli         a7, s11, 17
                  sltiu        s10, a0, -1370
                  auipc        s9, 700733
                  divu         ra, zero, s10
                  nop
                  addi         a1, s11, 1874
                  and          s2, ra, a7
                  xor          s0, s10, s6
                  addi         a4, s7, -1273
                  srl          a0, a3, zero
                  and          tp, s7, a2
                  andi         a1, s9, 1903
                  lui          t1, 185209
                  addi         t4, s7, -1248
                  or           s2, s7, a4
                  slti         s6, a7, 1047
                  divu         s8, t1, s6
                  srl          s7, s7, t5
                  slli         zero, a6, 23
                  slli         a7, s5, 15
                  xori         zero, s2, 755
                  add          s1, sp, s4
                  add          s8, s0, s3
                  slti         s11, a5, -1565
                  xor          a3, a6, t2
                  sub          a1, a2, t1
                  xor          a3, s11, t2
                  srai         t2, t3, 18
                  add          a5, s0, t1
                  xor          a6, t2, a6
                  sub          s6, ra, t4
                  andi         ra, s6, 967
                  and          s1, s6, t6
                  mulh         a0, tp, s0
                  srai         s8, s6, 3
                  sub          a2, s9, s7
                  sub          s8, s8, s4
                  sub          s0, s10, s3
                  sll          ra, s3, s9
                  sltu         a3, a2, a1
                  slti         a6, s2, 344
                  remu         a2, t3, s7
                  xor          zero, s10, a6
                  srai         s6, a5, 23
                  mulhu        gp, t2, t5
                  sra          a5, a4, s11
                  xor          a3, a0, a3
                  xori         gp, zero, -548
                  rem          s8, s7, a7
                  mulh         t5, a6, t6
                  mulh         tp, t1, a3
                  sltiu        s8, s0, -781
                  xori         s5, s5, -1413
                  or           t2, s11, s0
                  xori         s9, s7, 644
                  xori         zero, t4, 2025
                  addi         s11, s4, 115
                  slt          t5, t6, s9
                  sub          s11, a5, t5
                  sltu         a2, s2, a3
                  slli         a6, s6, 12
                  divu         s7, a6, s7
                  slli         tp, s0, 28
                  or           s11, t2, tp
                  sltu         s8, a0, sp
                  srl          t1, t1, s5
                  or           s2, t6, a4
                  srli         s10, a0, 20
                  ori          gp, s7, 1593
                  slt          a2, s1, a3
                  srli         a4, t5, 11
                  rem          s2, s7, s9
                  remu         s9, t1, a5
                  add          s9, a3, s7
                  mulh         t1, a2, zero
                  lui          s6, 741701
                  and          s10, tp, a4
                  sra          a2, a1, a6
                  andi         s3, s3, -281
                  slti         a7, t3, 632
                  mul          zero, gp, t6
                  auipc        s4, 796273
                  slli         ra, a0, 12
                  sub          s0, a6, s6
                  sub          a0, a5, t2
                  divu         a0, a6, gp
                  div          s11, a4, s0
                  srai         a0, t2, 1
                  xori         s5, t2, -807
                  xori         a2, a2, -260
                  srai         s2, a5, 10
                  addi         s1, s5, 2046
                  divu         a6, t2, s0
                  xor          s4, a0, s7
                  addi         a2, a7, 540
                  mulhu        t5, a2, s1
                  rem          s1, s8, t5
                  nop
                  div          s0, zero, s0
                  nop
                  mulh         s10, s11, s3
                  divu         s8, s9, a7
                  divu         gp, s0, s7
                  addi         s9, t0, -1631
                  srl          s8, t5, s5
                  auipc        s11, 924315
                  sll          a0, s9, t6
                  addi         s3, ra, -227
                  and          a6, a7, s11
                  srai         s7, a4, 21
                  mul          t1, t2, a6
                  mulhsu       t1, s9, a1
                  and          t1, t5, t6
                  add          ra, tp, ra
                  mulh         s9, gp, s5
                  andi         s4, t6, 748
                  sll          a0, tp, t6
                  slt          t4, zero, t1
                  srli         t5, t6, 26
                  slt          t5, s0, t4
                  srl          gp, s1, a2
                  srli         s2, s0, 4
                  remu         s10, t2, t2
                  srai         s10, s5, 24
                  mulhu        t4, s10, s8
                  slti         s7, s2, -2039
                  divu         a5, s5, a4
                  div          s8, t6, s4
                  nop
                  slt          s2, s8, s0
                  rem          a0, s11, t0
                  sltu         s2, a4, s1
                  mulhu        a2, gp, t3
                  andi         s5, t6, -2038
                  mulhu        t4, a5, a7
                  addi         s2, s7, -1358
                  and          s5, a7, s11
                  mul          gp, s9, t0
                  sltiu        s6, s1, -370
                  slt          zero, t2, t4
                  mulhsu       a7, s2, s2
                  xor          a2, tp, s3
                  nop
                  sub          t4, s8, s9
                  slti         s11, s10, -401
                  sub          s10, a5, tp
                  mulh         gp, a2, gp
                  and          t2, a6, s8
                  mulh         s7, a1, t5
                  slti         t4, t6, -1666
                  auipc        t5, 804134
                  slt          ra, s8, s4
                  sra          s6, sp, s0
                  auipc        s2, 213833
                  mulh         a5, a4, t0
                  sltu         ra, s10, a5
                  divu         s1, t2, a1
                  srl          s5, ra, s10
                  div          zero, gp, gp
                  xori         a3, t6, -1500
                  mulh         s0, a3, t2
                  andi         s2, a4, 763
                  sub          zero, s8, s11
                  nop
                  sltu         a6, s9, a3
                  slli         s7, tp, 31
                  srl          a5, t5, t1
                  rem          s4, s4, a3
                  div          t6, s10, t5
                  mulhsu       s1, a0, ra
                  srl          s10, s2, s0
                  nop
                  xori         t6, zero, 1461
                  lui          s0, 915900
                  sra          t2, s4, s0
                  auipc        s7, 712063
                  mulhsu       t2, t3, s0
                  sltu         s9, a3, t0
                  mulhsu       t1, ra, a1
                  sub          s5, ra, zero
                  mulh         s2, s8, a3
                  rem          s5, t3, s7
                  xori         a1, gp, 1686
                  srl          s4, a6, s1
                  and          a5, s3, s0
                  srli         s4, zero, 31
                  remu         s8, s3, sp
                  slti         tp, t5, -1203
                  nop
                  remu         gp, s6, a5
                  auipc        tp, 465262
                  sltiu        a1, s9, -836
                  xor          a1, s6, a6
                  and          s8, a1, a1
                  divu         s3, s8, a0
                  slli         s10, a6, 21
                  lui          s11, 224078
                  nop
                  sltiu        a3, t2, 854
                  rem          a6, s11, a2
                  srli         t4, t6, 5
                  mulhsu       s9, t6, s1
                  mulhu        s9, a0, a7
                  rem          a2, a6, a1
                  sub          tp, s8, t1
                  sltiu        t2, s0, -2012
                  auipc        s3, 96769
                  xor          gp, s6, a4
                  sltu         s0, s10, s8
                  slt          tp, t0, zero
                  divu         s7, s1, a5
                  mulh         a5, sp, s4
                  div          t4, t0, a4
                  mulhsu       s8, t0, a4
                  srl          s5, a7, t0
                  sra          s5, t0, zero
                  lui          s11, 84171
                  sll          t2, s2, a0
                  xor          s11, t1, s2
                  andi         t6, ra, -1600
                  mulh         t5, t0, s7
                  rem          s10, s11, s9
                  and          ra, t3, a3
                  remu         a7, a5, s5
                  nop
                  sub          s8, a3, s5
                  or           zero, ra, s8
                  div          s3, s10, s0
                  mulhu        t2, a0, s6
                  sra          a7, s2, s3
                  sltiu        s7, s9, 572
                  sltu         s4, s0, s2
                  and          gp, a4, s11
                  mulhsu       tp, t3, s0
                  mul          ra, s10, s0
                  and          a1, s0, s4
                  srai         s7, t3, 10
                  ori          tp, t6, 202
                  addi         gp, t3, -1591
                  sltu         a3, sp, s2
                  sub          s0, t1, sp
                  srai         gp, s4, 21
                  lui          a6, 834355
                  xori         s0, s6, -1345
                  and          s1, s1, gp
                  lui          s5, 697835
                  xor          s9, s4, s7
                  ori          a5, a3, -1678
                  andi         ra, zero, -175
                  auipc        tp, 221
                  slli         s10, s10, 2
                  srl          a5, a0, t5
                  divu         a3, t5, t2
                  and          a0, tp, t3
                  mulhu        s4, s11, a1
                  rem          s2, s7, s1
                  ori          s1, a1, 1937
                  rem          t4, a2, zero
                  mulhsu       t5, s11, a0
                  ori          gp, a4, 1380
                  add          a3, gp, t2
                  or           t1, a7, s5
                  lui          tp, 137872
                  mulhsu       s9, t3, a5
                  rem          s4, s3, t2
                  sltiu        a1, a1, 1921
                  slti         gp, a5, 1801
                  rem          s9, t0, s11
                  div          t1, a1, t2
                  mulh         s2, a7, s8
                  lui          s10, 665350
                  sub          s6, s7, a6
                  auipc        t4, 510494
                  slli         s5, s7, 20
                  mulhu        a7, ra, t4
                  srl          s5, t0, t4
                  srli         s4, t1, 1
                  div          a4, s1, s9
                  sll          t5, s5, a6
                  srai         a6, zero, 10
                  sltu         a3, s1, a5
                  slli         a2, t6, 11
                  mul          s8, s9, t1
                  sltu         s7, a6, a4
                  srai         s9, t0, 5
                  nop
                  slt          s9, gp, s8
                  srli         s1, sp, 31
                  mulhsu       s0, tp, zero
                  mulh         s1, s11, a6
                  or           a2, s0, s6
                  add          s4, ra, a0
                  mul          s5, gp, s10
                  remu         zero, t4, s10
                  divu         s8, t2, sp
                  lui          tp, 538833
                  and          s6, s11, s0
                  addi         a0, s7, 1532
                  sltu         a4, a2, t1
                  lui          a0, 689923
                  srai         s11, s1, 1
                  ori          a4, zero, 997
                  add          a0, t4, a5
                  divu         t1, s10, a5
                  auipc        s0, 736782
                  auipc        t6, 448301
                  auipc        s2, 284207
                  auipc        t1, 222952
                  rem          s4, t2, s11
                  auipc        a6, 381566
                  rem          s1, s1, s2
                  div          s5, t1, s8
                  sub          zero, sp, t5
                  slti         a2, s6, 1168
                  mulhsu       a3, t5, a2
                  xori         s2, s11, -971
                  mulh         tp, s11, s7
                  mulhsu       s10, ra, s7
                  sub          a4, zero, t0
                  sll          s1, s3, s5
                  ori          tp, t1, -692
                  sll          a6, t3, s7
                  xori         a3, s11, 985
                  and          a4, gp, s2
                  mul          a7, gp, sp
                  slti         a7, gp, 451
                  xor          s6, sp, t4
                  nop
                  nop
                  nop
                  xor          tp, a6, s11
                  mulhsu       a7, a4, tp
                  ori          s2, a2, -1701
                  div          s4, t2, s8
                  xor          a6, a3, s3
                  srl          s1, a4, s0
                  sltiu        a2, tp, 968
                  auipc        s11, 725109
                  divu         s9, a2, a1
                  sll          s2, s9, a3
                  mulhsu       t2, a5, s6
                  slli         t1, s2, 22
                  andi         t2, t1, -1502
                  mulhsu       s7, t0, t5
                  mulhsu       s1, s4, a2
                  slt          s1, a3, s5
                  sll          s9, s1, a6
                  ori          s0, s4, -1144
                  slli         s10, s5, 16
                  sltu         gp, sp, a6
                  addi         t4, t4, -1261
                  or           t5, s9, s0
                  xor          t5, a7, s7
                  srl          s6, a3, a5
                  sub          a3, ra, a1
                  srai         s3, s10, 19
                  nop
                  mulhsu       s2, gp, ra
                  mul          ra, t0, a0
                  auipc        s6, 922874
                  add          t5, s11, a3
                  div          s4, a6, s10
                  slt          s6, s0, tp
                  srli         a1, s0, 29
                  auipc        tp, 784837
                  xor          t5, a4, a1
                  div          s9, a4, a2
                  sll          s1, s8, s6
                  andi         a1, a0, -1098
                  srai         a7, sp, 18
                  sltu         zero, t3, t3
                  auipc        s1, 511713
                  sra          s10, t6, s9
                  srl          s6, a3, a3
                  slt          a6, sp, t3
                  slt          ra, gp, t1
                  sll          a0, sp, a4
                  sltu         s2, t5, t5
                  addi         t1, sp, 687
                  nop
                  divu         zero, a7, a2
                  addi         s11, a4, 77
                  addi         zero, s4, 2006
                  mulhsu       t2, s1, a0
                  xori         s2, ra, 767
                  sltiu        a3, s5, -768
                  mulhu        s7, s9, t6
                  addi         s1, s7, -1477
                  div          tp, a0, a7
                  mulhsu       a5, s7, t3
                  srai         t6, s6, 11
                  lui          a7, 92010
                  mulhu        a3, ra, a2
                  slti         a2, a3, 1476
                  mulhu        t5, s2, t2
                  rem          s11, s11, t3
                  add          t5, a2, t5
                  sub          s6, t4, zero
                  addi         s2, ra, -906
                  or           a7, s10, a0
                  rem          gp, s3, zero
                  sll          a1, a0, s0
                  or           t4, s11, s3
                  auipc        a5, 516862
                  ori          t4, a4, 1137
                  rem          a7, a7, s1
                  sltiu        s8, a3, -1210
                  sub          ra, sp, s4
                  slt          a5, a0, t5
                  mulhsu       s4, t1, s6
                  or           a5, t3, s11
                  xor          s0, s4, s9
                  sub          gp, s11, s4
                  and          ra, s2, zero
                  xor          a3, s7, tp
                  sll          a6, a3, t5
                  or           a3, t1, s11
                  srai         a3, s2, 3
                  ori          a5, s8, -1421
                  srai         a3, a0, 16
                  nop
                  srai         a0, a7, 22
                  lui          t4, 154903
                  addi         a4, s6, 1057
                  remu         s9, s6, s4
                  lui          s1, 412786
                  remu         a6, s9, a1
                  mul          t6, s6, zero
                  add          a7, a5, s7
                  add          s0, gp, t2
                  slt          t4, s6, s5
                  auipc        zero, 162686
                  addi         gp, s1, 13
                  mulhsu       t4, a7, t5
                  remu         t4, s2, s8
                  rem          s1, t4, a7
                  sra          s7, s8, a0
                  remu         t2, t3, t1
                  mul          t2, s5, s8
                  ori          s10, s4, -986
                  andi         t1, gp, 1643
                  mulh         a2, a2, s9
                  sltu         a3, ra, s4
                  xor          s7, zero, s5
                  sltiu        a1, t0, -1729
                  addi         s8, a7, 1263
                  mul          a4, tp, t3
                  sra          t5, t6, t6
                  ori          s9, s3, -1460
                  and          s8, t6, a6
                  slt          s11, s1, a2
                  sll          s3, a4, a2
                  lui          s4, 246840
                  divu         a7, t5, ra
                  srl          s5, gp, s8
                  sltu         t2, t3, t2
                  srl          t4, s3, s1
                  slli         s2, t2, 17
                  add          a3, s1, a6
                  divu         s11, a2, a0
                  sra          gp, t3, ra
                  remu         a4, s0, gp
                  andi         t5, sp, 151
                  xori         s5, zero, 1559
                  mulhu        s0, s10, a7
                  srli         a2, t6, 18
                  auipc        t4, 295141
                  slli         s2, a4, 19
                  or           s11, t2, a3
                  slt          s10, a1, t1
                  or           t4, t3, s0
                  or           s6, t6, s6
                  rem          t2, s7, s11
                  sra          s4, zero, gp
                  sub          s11, s7, sp
                  addi         s10, a1, 978
                  lui          a4, 254950
                  addi         a6, t5, -1911
                  srli         tp, a5, 26
                  mulhu        s8, a2, t0
                  mulhsu       s4, tp, s5
                  and          s9, a0, s6
                  srai         a4, a7, 23
                  sub          a1, a3, s10
                  ori          s0, t5, -853
                  nop
                  sltu         gp, s3, gp
                  mulhu        a0, a5, t4
                  xori         a5, s1, -554
                  auipc        s6, 936675
                  sub          t2, t1, s3
                  mul          gp, a6, s11
                  mulh         gp, a5, s10
                  lui          s11, 131291
                  rem          a6, a4, a0
                  srl          s10, s8, t0
                  sub          s3, a7, zero
                  sll          a5, s1, s9
                  slli         tp, a7, 16
                  andi         s8, s4, -1915
                  remu         s3, t0, a5
                  rem          gp, s3, s4
                  sll          a3, a1, a3
                  andi         s8, t6, 1640
                  auipc        a1, 454377
                  srli         a7, s4, 19
                  mul          s0, t1, tp
                  sll          tp, s11, t6
                  addi         a4, zero, 22
                  auipc        a2, 352505
                  or           s7, s0, t0
                  sub          a5, a2, a1
                  slt          a0, t5, a0
                  add          s0, a4, a1
                  srl          a4, a3, s4
                  xori         s5, s10, 649
                  sra          t1, gp, tp
                  slti         s0, s5, 711
                  sltu         s7, s9, sp
                  sltiu        s6, a0, 301
                  xor          t4, t2, sp
                  sltu         zero, s10, a1
                  srli         t5, s1, 31
                  or           a6, s3, t3
                  divu         s11, s7, s6
                  xori         t6, zero, -1380
                  mulhu        gp, t2, t6
                  mulhsu       zero, zero, t4
                  mulhu        t2, a0, s6
                  mulhsu       ra, s11, zero
                  xor          s2, t5, t5
                  slt          s7, zero, a4
                  remu         t1, s5, s2
                  lui          a5, 818013
                  sltiu        a0, a1, -1547
                  mulhsu       t5, s2, s9
                  rem          s1, ra, t0
                  xor          s10, a4, a7
                  nop
                  and          s0, a6, a2
                  sltiu        t1, t2, 1433
                  div          s3, t2, ra
                  mul          s0, a3, tp
                  sltu         s4, s10, s9
                  sub          a0, t2, t5
                  sub          ra, s5, s8
                  mulhu        a4, sp, tp
                  sub          s8, t4, t5
                  srli         a1, t2, 4
                  srl          ra, s4, s6
                  sub          s7, t4, a4
                  srli         s4, a5, 0
                  lui          s4, 866612
                  rem          s3, a7, s0
                  sra          s2, t2, s3
                  remu         s6, s0, gp
                  mulhsu       s9, t5, t5
                  auipc        a1, 123868
                  and          a6, tp, s3
                  divu         t6, t6, a6
                  slti         s7, s8, -1276
                  sltiu        tp, a5, -1694
                  mulhu        a7, zero, a2
                  mul          t4, s1, a5
                  slli         a5, s6, 30
                  slli         s0, s6, 2
                  mul          ra, s6, t5
                  andi         zero, s4, 1173
                  sra          gp, a1, s6
                  remu         t2, t0, s5
                  srli         s0, tp, 12
                  mulh         s11, a2, a0
                  srli         a7, a1, 8
                  xor          s3, a2, s4
                  sll          zero, zero, s5
                  rem          zero, s7, t2
                  ori          s11, s8, 1803
                  divu         s9, t2, s2
                  addi         s10, t5, -1214
                  mulhu        s6, s1, t4
                  slli         s9, a0, 1
                  slt          s5, t5, s0
                  srli         t6, gp, 20
                  sra          tp, t4, s2
                  div          s5, t2, s9
                  auipc        t1, 241284
                  ori          a0, t4, 295
                  sltu         t1, s3, a4
                  sll          s8, a4, a5
                  sll          a4, s3, zero
                  or           s2, a3, a5
                  andi         gp, t2, 1897
                  addi         zero, a7, 583
                  sub          s2, s11, a5
                  div          t1, s9, s9
                  sra          s10, s8, a0
                  remu         s2, a0, a6
                  mul          a7, sp, zero
                  mulhu        a4, t4, s9
                  slt          t1, a1, s3
                  mulhu        s6, a6, a7
                  srli         s10, s0, 16
                  lui          a0, 758839
                  sltiu        tp, s10, -1513
                  addi         s8, s7, -1611
                  andi         a1, t5, 598
                  srl          t4, s3, a3
                  and          t5, t3, s11
                  sltu         s7, s8, t2
                  sra          tp, a6, s6
                  sra          s11, a3, s1
                  sra          t2, a2, s5
                  mul          ra, s3, sp
                  mulhu        a6, s6, s1
                  div          s0, t2, s1
                  divu         tp, s2, a7
                  add          t1, a7, t5
                  rem          a2, a3, t6
                  slti         ra, t5, -778
                  mulhsu       a2, t1, s11
                  auipc        s2, 754369
                  slti         s9, a1, -640
                  slti         s2, zero, -1732
                  div          s4, s4, a6
                  rem          s5, s4, a2
                  and          s7, s5, a2
                  and          s9, a7, sp
                  ori          t5, s0, 1375
                  sll          a2, s10, s8
                  xor          a0, sp, s11
                  mul          t5, ra, t4
                  srl          gp, s6, s6
                  mulhu        zero, t1, s8
                  mulh         a0, s4, t1
                  or           t1, s6, a7
                  mulh         tp, s0, tp
                  mulhsu       a7, s4, s9
                  mulh         tp, s9, t6
                  andi         a2, a4, 1246
                  auipc        s0, 865761
                  nop
                  sltu         a5, t3, s0
                  slti         a7, s4, 1314
                  mulhu        a0, a6, a5
                  remu         ra, s10, s2
                  srl          a6, s6, t4
                  sltiu        tp, s5, 1025
                  sltiu        t4, gp, 44
                  lui          s7, 929956
                  srli         s8, t4, 11
                  andi         s10, a3, -685
                  ori          a1, s5, 340
                  divu         a1, s0, sp
                  mulhsu       a7, gp, a6
                  andi         a5, a1, -1017
                  sltu         s4, s4, s6
                  lui          s9, 419725
                  auipc        s7, 625374
                  sltiu        t2, ra, -1018
                  xori         s0, s1, 1800
                  ori          t4, t1, 1099
                  slli         s6, a3, 28
                  nop
                  nop
                  ori          zero, s6, -774
                  remu         t5, a4, s10
                  lui          a1, 463412
                  xor          s7, a0, t2
                  ori          t5, a5, -1643
                  mulh         s8, a0, gp
                  slt          ra, t1, s7
                  sub          s6, zero, zero
                  add          t2, a3, t0
                  mulh         a6, t6, s6
                  remu         a0, tp, ra
                  or           t5, s8, a7
                  slt          gp, s8, s2
                  mul          a1, zero, zero
                  slti         s8, a1, -711
                  srai         a6, t6, 18
                  sll          s1, s3, a1
                  srl          a2, a2, s4
                  mulhsu       gp, a1, ra
                  lui          a1, 20715
                  mul          s5, gp, zero
                  auipc        t6, 104537
                  mulhsu       a2, a0, t4
                  add          t1, s2, a0
                  or           t4, a7, a3
                  and          s10, t0, s10
                  nop
                  sra          t5, a1, s10
                  and          s7, s10, a5
                  divu         t6, s1, t0
                  rem          s7, a6, a1
                  divu         a5, s2, s10
                  mulhu        a5, t2, s3
                  slli         s6, zero, 15
                  remu         s2, s1, tp
                  slli         ra, zero, 8
                  mul          t1, t4, a3
                  sra          t5, a3, s2
                  div          t1, a2, s3
                  nop
                  slt          s8, s9, s5
                  auipc        ra, 17856
                  mulhsu       zero, a3, s7
                  srli         s2, a6, 12
                  sltiu        a1, tp, 1682
                  sltiu        s6, s0, -1790
                  mulh         a3, t5, s7
                  nop
                  or           a7, s1, gp
                  xor          tp, s5, a4
                  mulhu        t5, s8, zero
                  mulhu        s3, a1, a3
                  slli         a3, sp, 15
                  sltiu        t2, a7, -1162
                  remu         a1, a6, s10
                  sltu         t4, t4, a5
                  add          s3, gp, gp
                  or           a3, s4, sp
                  div          t5, a3, a3
                  nop
                  xori         gp, s10, 1998
                  nop
                  xor          a0, t4, s11
                  sltiu        s2, a4, -533
                  sll          a4, zero, s6
                  nop
                  sltiu        s11, t4, -221
                  remu         a2, s3, t0
                  sra          t2, t2, s3
                  rem          gp, s10, t4
                  srl          ra, s7, a4
                  mulhu        a1, s7, s11
                  slli         t1, s2, 29
                  mulhu        zero, s1, a5
                  sub          s2, t4, t4
                  andi         t4, s11, -637
                  sltu         a1, t1, s3
                  srli         a0, t6, 31
                  or           t5, a1, t3
                  sltiu        a2, t3, -174
                  sub          t4, s5, s3
                  sub          a3, a6, a0
                  slli         s5, t5, 13
                  xori         a5, s2, -572
                  auipc        ra, 228321
                  mulhsu       s7, s1, s4
                  mulhu        a6, s7, s9
                  srl          s7, gp, s0
                  or           a3, s4, s4
                  addi         a7, t0, -633
                  srai         s10, a4, 12
                  slli         t1, s11, 31
                  srl          s3, t5, s1
                  auipc        s0, 438538
                  mul          a6, s10, t4
                  ori          a2, t0, 583
                  sltu         s4, s11, t0
                  slt          gp, s1, t1
                  div          s10, gp, zero
                  sub          a4, a2, s4
                  and          s2, s8, a0
                  xori         t4, a5, -218
                  auipc        t2, 254114
                  mulh         t6, sp, s10
                  slti         s0, t6, -1567
                  xor          a2, a2, gp
                  or           a4, s5, s0
                  xor          gp, t1, s7
                  mulh         t4, zero, s2
                  or           s5, tp, t3
                  remu         a3, s5, t4
                  mulhu        t1, s1, s6
                  slli         ra, gp, 29
                  slli         t5, zero, 15
                  nop
                  addi         t6, s10, -60
                  remu         s1, s8, a1
                  xori         s6, a4, -780
                  addi         tp, s2, 515
                  lui          s3, 244523
                  srai         a3, a5, 4
                  divu         s7, s5, a1
                  mul          zero, s4, s5
                  slli         a7, s7, 21
                  mulhu        a4, s7, s6
                  slt          s9, t5, s9
                  sub          s4, s9, a3
                  or           a7, s6, t3
                  srai         a2, s0, 19
                  div          s2, a4, ra
                  slt          s7, t5, t6
                  srl          gp, s2, s5
                  addi         s6, a0, 1051
                  mul          a2, s7, gp
                  and          s0, s3, s9
                  addi         t6, t3, -1132
                  addi         a5, t5, -2027
                  sltiu        a7, t1, -194
                  div          ra, a0, a1
                  mulhsu       t1, s10, t0
                  srl          t2, tp, s1
                  auipc        a7, 419391
                  mulhu        gp, a1, ra
                  mulhsu       tp, a4, a1
                  add          s4, t0, a7
                  srli         t4, s0, 13
                  xor          a7, s10, s7
                  add          s11, a3, a3
                  slli         a7, a5, 14
                  slti         t5, a4, -1748
                  sltiu        s7, s6, 1933
                  and          s2, a4, a4
                  sra          s7, s7, sp
                  sll          ra, zero, s10
                  auipc        s7, 521379
                  sra          s9, t5, s4
                  sltu         gp, zero, t1
                  ori          s0, s6, -2020
                  addi         s0, s7, 144
                  slt          s8, t3, sp
                  div          a1, zero, a2
                  add          s2, t5, gp
                  sltiu        s0, s10, -647
                  srl          s5, t5, s2
                  mulh         s1, zero, t3
                  remu         s8, s1, s3
                  and          gp, ra, a2
                  auipc        t4, 754685
                  srli         s4, tp, 28
                  slti         a6, s4, -1692
                  auipc        gp, 982738
                  xor          a7, t2, s3
                  mul          ra, a3, t0
                  addi         s2, s4, 1081
                  divu         a5, s10, s4
                  mulhu        a2, a0, tp
                  xor          t4, s7, s5
                  sub          t4, s5, zero
                  lui          s3, 874707
                  sra          s10, s4, a7
                  and          t2, s3, sp
                  lui          gp, 766367
                  mulhu        gp, s1, s9
                  srai         a5, s1, 31
                  auipc        s0, 796502
                  add          s11, s10, s5
                  mulhsu       s3, s1, gp
                  srl          a3, s6, s7
                  add          s7, t5, s2
                  srl          ra, s6, s1
                  sub          a1, s8, s7
                  addi         s0, s3, 761
                  sub          s4, a7, zero
                  and          s6, s3, s3
                  mul          s3, a0, s0
                  rem          s8, gp, a1
                  add          a3, a0, s11
                  slti         s5, s6, 873
                  slti         a4, a3, 276
                  sltu         s7, gp, t0
                  or           s11, ra, a5
                  remu         a0, t0, t6
                  addi         s1, a4, 35
                  ori          gp, a6, 1481
                  slti         ra, t3, -818
                  div          gp, s1, s7
                  slt          ra, sp, zero
                  xor          t2, a3, t1
                  or           ra, t3, s8
                  srl          a3, s2, s1
                  nop
                  slli         tp, t0, 24
                  sltiu        a4, a6, -1154
                  sll          ra, t5, ra
                  andi         tp, t2, -1451
                  ori          a1, s9, 917
                  sra          s5, s10, s11
                  sltiu        s4, a0, 1336
                  sra          s3, s4, a5
                  sra          t2, zero, t2
                  mulhu        t6, ra, a4
                  div          ra, a0, s8
                  rem          t1, gp, gp
                  sll          a3, s9, s5
                  or           s2, t1, s11
                  remu         t5, tp, a2
                  mulhsu       a5, t1, gp
                  srai         s8, s7, 16
                  srl          t6, s8, s9
                  slli         s0, t0, 10
                  slli         s5, s1, 8
                  lui          s1, 515166
                  and          t4, a4, t5
                  lui          a3, 669454
                  rem          s11, gp, t5
                  sltu         t6, t5, t1
                  lui          s1, 553121
                  nop
                  divu         s5, s7, s0
                  addi         t2, s3, -285
                  srl          t5, s7, t4
                  add          zero, a0, t5
                  and          t2, a4, t3
                  sub          a3, a6, zero
                  mulhu        s1, t3, a0
                  or           t4, gp, t6
                  slt          a1, a2, tp
                  nop
                  sll          tp, ra, a7
                  slt          s9, s4, gp
                  xor          s5, zero, s7
                  mulhu        s9, s2, s6
                  xori         tp, t1, 1474
                  divu         a2, gp, a7
                  ori          s3, s8, 686
                  remu         a3, s11, t3
                  srai         t2, s9, 24
                  nop
                  andi         s0, a0, 1317
                  sltiu        t5, tp, 1435
                  auipc        a3, 960345
                  sll          s0, s4, s1
                  auipc        a3, 242984
                  srli         s6, t4, 26
                  divu         a0, a4, sp
                  sra          t5, s4, t1
                  mulhu        ra, s9, s0
                  xori         s7, a3, 1863
                  addi         s6, t3, 1459
                  mul          t1, a2, t2
                  auipc        a6, 690181
                  or           t2, s1, a3
                  sub          t2, t2, s1
                  lui          tp, 889256
                  slli         s11, s5, 26
                  remu         s2, sp, s1
                  addi         a0, tp, -1648
                  divu         t4, s9, gp
                  remu         t5, a4, s1
                  xori         a4, s0, -386
                  sub          t5, a0, s1
                  mulhsu       s4, t5, s10
                  add          a1, s9, s9
                  add          tp, s4, s4
                  slli         a3, a1, 12
                  sltu         ra, s5, a5
                  ori          ra, a0, -7
                  sltu         s9, t2, sp
                  div          a5, s11, t5
                  xori         a1, t4, -439
                  remu         s6, a2, a1
                  mulh         gp, s2, a5
                  add          a7, t2, a5
                  srai         s2, a5, 4
                  xor          t5, t6, t2
                  div          s5, s3, a6
                  xor          a7, a4, t2
                  srl          t6, ra, s11
                  andi         s11, ra, 1429
                  nop
                  lui          a2, 87802
                  rem          s11, s5, t0
                  slli         s2, t6, 27
                  mulhsu       a6, s2, ra
                  rem          a5, a4, t4
                  divu         s6, t4, s9
                  and          s5, ra, t6
                  mulhsu       tp, s2, a0
                  sra          gp, s1, s11
                  xor          zero, t6, s2
                  sll          t1, gp, gp
                  div          s11, s2, t4
                  nop
                  mulhu        ra, a6, t2
                  sll          gp, t1, s7
                  slli         s8, s7, 30
                  srl          s8, t2, a5
                  sra          tp, s4, s5
                  add          s3, tp, t0
                  add          s8, s11, tp
                  addi         s3, t3, -59
                  and          a7, a2, ra
                  andi         t2, t3, 571
                  mulh         t4, t1, a2
                  divu         a3, s2, sp
                  sll          tp, a5, a1
                  and          s1, t3, gp
                  sltu         tp, a6, sp
                  rem          a4, t0, s1
                  slli         s9, t4, 13
                  or           s9, s0, t3
                  sub          a6, s8, s8
                  slli         a6, s8, 0
                  auipc        s11, 251037
                  xori         gp, a4, 1791
                  xor          s7, a0, s4
                  sll          s1, s2, s8
                  divu         t1, s1, a7
                  mulhu        t6, a1, t4
                  div          s2, a5, s3
                  xor          a2, s10, s3
                  xor          s3, t6, a4
                  sltu         tp, a4, t4
                  sub          tp, zero, t2
                  nop
                  mulhu        s0, a5, t0
                  slti         s11, a2, -588
                  xor          a6, t6, ra
                  and          s4, s0, s10
                  divu         t5, s9, s0
                  sub          a7, zero, zero
                  mul          t2, a4, t4
                  slli         ra, s0, 26
                  sltiu        a5, sp, -1374
                  mulhsu       t4, t3, t6
                  sltu         s9, a2, t1
                  remu         a7, a3, t0
                  nop
                  slli         s4, t2, 7
                  mul          s8, a1, tp
                  remu         s5, a3, s11
                  slti         a0, t6, -467
                  mul          s0, a0, t5
                  slli         a6, s9, 6
                  div          a4, s2, a1
                  mulhsu       t5, ra, s0
                  mulhu        a1, s7, sp
                  sub          s8, a3, s9
                  divu         s1, t1, tp
                  sltiu        a7, s10, -612
                  andi         zero, s11, 791
                  xor          s8, s2, s3
                  xori         t4, t3, -1457
                  mulhsu       s5, s11, t2
                  mulh         s2, t5, sp
                  slli         t4, t5, 29
                  mulhu        s2, a6, a5
                  srli         s7, a2, 15
                  mulhsu       a5, t4, ra
                  divu         a0, t5, t0
                  sltiu        ra, s10, 929
                  srl          s7, s8, a5
                  slti         a5, t3, 1792
                  xor          s9, t3, s5
                  sll          a3, gp, s0
                  mulhsu       s7, tp, s7
                  nop
                  rem          a3, sp, s0
                  slli         zero, tp, 5
                  and          a0, t3, s7
                  and          s8, a3, a0
                  and          a0, t5, s3
                  sll          a3, s10, s2
                  xori         s7, t6, 1975
                  sltiu        t2, s5, 1839
                  xori         s3, a1, 1467
                  slt          t1, s3, a1
                  ori          a6, zero, 65
                  divu         s7, a7, a0
                  mulh         t4, tp, t0
                  mulh         s0, zero, a1
                  addi         s8, gp, 1046
                  and          s1, s9, s5
                  rem          s10, s3, a7
                  srai         tp, s8, 21
                  andi         s0, s4, -196
                  add          s5, ra, a1
                  srl          a4, s9, a5
                  auipc        s11, 89002
                  divu         s11, a2, t6
                  sltu         s6, a1, a5
                  rem          gp, a2, s6
                  nop
                  divu         zero, t1, t3
                  remu         t5, gp, a4
                  remu         s10, ra, ra
                  ori          ra, a4, -2007
                  auipc        tp, 962079
                  ori          a4, s5, -438
                  sltiu        tp, ra, -547
                  ori          a4, tp, -1662
                  sll          s8, a5, a1
                  sltiu        s5, t4, -361
                  addi         s3, t6, 1587
                  remu         a3, t1, s6
                  mulh         a5, t6, s5
                  sltiu        s9, a4, 1030
                  mulhsu       a0, s2, a6
                  lui          ra, 330103
                  add          s11, tp, s9
                  srli         gp, s8, 14
                  div          s6, a5, zero
                  sub          t2, s3, a7
                  srli         s6, s11, 23
                  div          a4, s11, s2
                  xor          zero, t3, t0
                  sra          s6, s0, tp
                  slli         a2, a3, 25
                  auipc        a3, 254742
                  sra          s9, t3, a6
                  sra          a4, zero, s10
                  sltu         s8, t1, s7
                  auipc        ra, 817138
                  mul          zero, s1, s0
                  remu         s10, t5, ra
                  mulhsu       s4, ra, t0
                  div          a4, s3, a2
                  srai         s4, s7, 11
                  auipc        tp, 563498
                  divu         s0, t3, ra
                  slt          a1, a4, s4
                  rem          s2, t2, s0
                  auipc        a2, 858307
                  srli         a3, t4, 8
                  mul          tp, s11, s8
                  slti         t4, ra, -1864
                  sub          a1, s1, gp
                  div          a0, s9, s5
                  slli         tp, s0, 29
                  add          s0, s7, t4
                  andi         s2, s11, 1214
                  slti         s11, s7, 1431
                  add          a1, s9, s10
                  sra          s4, s1, a5
                  sltiu        s11, gp, -1117
                  divu         s5, zero, s10
                  sltiu        s2, s1, 1386
                  addi         s0, s11, 1623
                  rem          s1, sp, s6
                  mulhsu       s7, a1, s6
                  slli         s0, zero, 28
                  srl          t6, zero, ra
                  sub          t6, a4, s5
                  div          t1, a2, a6
                  srl          tp, gp, s5
                  nop
                  srl          tp, a6, a5
                  div          a5, a4, s5
                  mulh         gp, t6, t3
                  sltu         s5, t3, sp
                  sltiu        s0, zero, 792
                  sltu         s4, a3, a2
                  remu         a3, t6, s5
                  srli         s2, s1, 17
                  remu         a0, t2, s11
                  rem          s8, a4, t4
                  and          a0, s5, t4
                  andi         s3, s3, 658
                  andi         tp, s1, -257
                  sra          t4, a6, ra
                  srai         a2, a4, 31
                  divu         t6, zero, ra
                  ori          s4, a0, -1028
                  srl          s2, t2, t2
                  mulhsu       a1, sp, ra
                  remu         s6, s8, s1
                  auipc        a4, 379181
                  andi         a6, gp, 1836
                  sra          t4, s8, t6
                  mulhsu       t2, gp, t2
                  srai         s2, sp, 26
                  rem          a5, s6, s0
                  slt          t6, t1, t1
                  ori          t1, a5, 1747
                  andi         t5, s8, -1169
                  rem          s11, ra, s3
                  or           s5, a7, a6
                  or           t2, a7, s2
                  sub          a3, s1, t1
                  sltu         a7, zero, t1
                  mul          a3, t0, zero
                  xor          a7, t1, a2
                  divu         s1, s6, a1
                  sltu         a3, s7, t4
                  nop
                  xori         a4, t4, 1784
                  srli         a0, t3, 10
                  mulhu        t1, tp, a3
                  slti         a0, s5, 565
                  nop
                  lui          ra, 379454
                  sll          a4, gp, t4
                  sltiu        s1, sp, 204
                  lui          t2, 497346
                  sub          s6, t6, t3
                  slti         zero, a2, -360
                  mulhu        s3, ra, a6
                  slli         s10, ra, 25
                  sltiu        s10, a7, 1722
                  sll          t6, s5, s11
                  div          s10, sp, t5
                  nop
                  slt          t1, a0, t0
                  slti         gp, t3, 295
                  slti         s1, s6, 1646
                  lui          a0, 485736
                  sra          s0, a4, tp
                  slli         s5, s10, 10
                  mulh         a2, a7, s5
                  srl          t1, s9, zero
                  mulhsu       t2, a6, a0
                  divu         a2, t4, tp
                  nop
                  addi         t1, a7, -512
                  xori         a7, s3, 1063
                  or           t2, t0, s10
                  mulh         a1, gp, t5
                  sub          s6, s1, s10
                  mulh         t5, gp, t0
                  mulhsu       zero, t4, a3
                  mulhsu       t5, a3, s3
                  sltiu        t6, ra, -1882
                  srai         ra, s7, 17
                  xori         a4, a3, -1786
                  add          a4, s7, a7
                  sub          a5, s1, s5
                  add          s4, zero, t6
                  ori          ra, zero, -108
                  srai         t4, ra, 26
                  mulh         s5, sp, t6
                  andi         a3, s11, -749
                  lui          a3, 635457
                  sub          a4, a4, ra
                  add          a5, gp, s5
                  sub          s2, s0, t3
                  srli         s7, s9, 26
                  mul          ra, a5, s7
                  sub          t5, a5, s9
                  mul          a1, zero, gp
                  rem          a3, a2, a5
                  srli         t4, s7, 20
                  sltiu        a0, s5, 494
                  andi         a2, a2, 1962
                  slti         a0, ra, 904
                  addi         ra, a1, -817
                  sll          s5, zero, a6
                  sltu         zero, gp, a6
                  addi         tp, s8, -739
                  srai         a1, t0, 14
                  sll          t6, t6, a1
                  slti         s1, s11, -717
                  srl          a7, t1, a3
                  sltu         t5, a7, a4
                  sra          s2, s8, s4
                  mul          s6, a0, s7
                  or           t6, a5, a2
                  sltu         zero, zero, s6
                  mulhu        s5, t6, tp
                  sltiu        a0, s9, 115
                  andi         t1, ra, 154
                  mulh         s8, sp, t2
                  auipc        s2, 289001
                  addi         s10, a3, 1871
                  div          s9, s6, s6
                  slt          t2, zero, a7
                  addi         a5, s2, 369
                  xor          s2, t5, a1
                  or           t6, gp, s5
                  sll          s5, s0, ra
                  slti         t1, t4, 509
                  srai         a7, s8, 26
                  andi         s8, a4, 1662
                  or           s3, s11, t6
                  xori         s6, s8, -1122
                  addi         gp, t4, 1707
                  auipc        ra, 355139
                  divu         ra, s5, s4
                  mul          tp, s0, t6
                  slt          s7, s9, s9
                  addi         s1, s4, 1860
                  or           a3, a2, t5
                  div          s9, t0, gp
                  remu         a5, t2, gp
                  mulhu        s2, s2, t5
                  or           s8, s9, s8
                  andi         s4, a4, -930
                  xori         t1, t5, -1561
                  and          t1, gp, s6
                  andi         s4, s1, 829
                  rem          a6, t4, tp
                  mulh         a5, s10, s7
                  rem          s9, t1, s1
                  mulhsu       t5, a0, a5
                  lui          t1, 743096
                  sra          t2, a7, a6
                  lui          t5, 543007
                  xori         gp, s0, -715
                  div          a6, t5, t3
                  lui          s10, 18160
                  xori         a3, s3, 406
                  or           t6, gp, a4
                  nop
                  div          t6, gp, t5
                  sra          s8, a3, t0
                  divu         s4, s10, a0
                  sll          gp, s7, t3
                  mul          t4, a5, s1
                  slt          t4, a5, s2
                  nop
                  or           s10, s0, a0
                  andi         s11, t0, 1360
                  srli         t5, s2, 28
                  remu         a0, a3, t6
                  sltiu        t5, a2, 1841
                  sltiu        a6, a0, 729
                  addi         s2, s3, 1488
                  mulhu        s9, s6, t1
                  div          t5, t3, s8
                  sltu         t6, t6, s1
                  srli         s2, a7, 10
                  add          t1, s6, t6
                  slli         a5, a0, 7
                  sltiu        s3, a7, -1037
                  ori          s4, a1, -1536
                  div          a2, a1, sp
                  mulhsu       s6, t1, t2
                  xor          a0, t0, a5
                  add          t1, zero, a3
                  srli         t2, t0, 16
                  slli         s8, s0, 30
                  div          s11, gp, t0
                  sra          a7, s6, a7
                  srli         a1, a4, 28
                  remu         a0, t5, s3
                  srl          a1, s11, t1
                  mulh         t6, t4, s3
                  slt          s4, s4, s0
                  divu         t5, s8, tp
                  div          t5, a7, s8
                  ori          t5, a2, -141
                  auipc        s10, 253834
                  remu         a4, a1, t3
                  auipc        s8, 257322
                  mul          s8, tp, t1
                  andi         gp, a7, 1220
                  sub          t4, zero, t5
                  xor          a5, a6, s0
                  sra          a0, s0, t1
                  rem          a0, a4, s3
                  sll          s6, t2, zero
                  xori         t2, s5, 1510
                  slti         a5, s3, 1203
                  div          a4, zero, s1
                  slli         a6, a5, 5
                  srli         a3, tp, 28
                  auipc        a7, 1000362
                  add          a2, s11, a7
                  srl          gp, sp, s11
                  slli         a2, s1, 19
                  divu         tp, a5, a3
                  sltu         s10, a4, s5
                  rem          s1, a5, a2
                  sltiu        s8, a7, -355
                  sub          zero, a5, gp
                  sltiu        t2, a7, -1717
                  sltiu        s5, ra, -411
                  lui          t1, 451142
                  addi         s5, ra, 1930
                  slti         tp, t2, 657
                  xori         s3, t3, 271
                  divu         s5, s3, a6
                  divu         tp, a6, a3
                  divu         s1, ra, t0
                  add          t6, s11, s10
                  sltiu        s0, s6, -786
                  mulhu        a3, a3, a6
                  auipc        t1, 896750
                  or           s2, gp, s7
                  srl          a0, s11, s3
                  addi         a2, t4, -554
                  addi         t2, zero, -1514
                  div          t1, a2, s0
                  sltiu        s11, t6, 1827
                  andi         zero, t6, -1471
                  slti         a3, s2, -794
                  sub          t4, t4, s2
                  srai         s10, a3, 7
                  srli         a0, a1, 15
                  mulh         s8, s7, a3
                  div          a4, a0, gp
                  srai         tp, s1, 19
                  or           t1, s10, a4
                  addi         s9, a1, -1958
                  mulhu        a1, s0, s0
                  sltiu        ra, a7, -168
                  xori         a6, s2, -90
                  remu         t4, s2, a3
                  sltiu        ra, s0, -366
                  srai         a4, t3, 5
                  xori         s11, a2, 135
                  div          tp, s3, t6
                  nop
                  mulhsu       a6, t6, gp
                  slli         s3, a0, 30
                  addi         s0, s2, -1859
                  and          s10, sp, ra
                  xor          gp, s7, t3
                  ori          s5, t1, -720
                  add          t1, s6, a0
                  xor          s4, s8, t0
                  sltu         t5, a3, ra
                  sra          s4, zero, ra
                  sra          a0, a6, t2
                  slli         t5, s11, 22
                  add          s1, a4, s11
                  andi         s6, s7, 1274
                  divu         s2, a7, a3
                  auipc        zero, 175759
                  ori          s3, a7, 1240
                  nop
                  xor          t6, a4, s11
                  and          s4, zero, t1
                  addi         t5, t5, 1303
                  sltiu        s9, t3, -1205
                  and          t4, a1, a3
                  sra          a1, sp, s11
                  sub          a7, t2, t0
                  sll          s4, t6, t1
                  mulh         s8, a5, s5
                  mulhsu       t1, s0, gp
                  mulh         t5, a5, t3
                  divu         s9, a5, s0
                  rem          s2, a3, zero
                  and          s6, sp, s3
                  sll          s6, s6, a4
                  mul          t5, t4, s1
                  or           a5, gp, s5
                  slli         ra, a3, 31
                  nop
                  sltiu        s11, zero, -905
                  sub          a6, s6, t3
                  ori          t6, tp, 1714
                  nop
                  mulhsu       t2, s2, zero
                  div          s5, s11, s9
                  and          s5, t3, t1
                  mulhu        s10, s2, s8
                  div          ra, s4, gp
                  remu         a3, s9, s5
                  ori          s5, t4, 96
                  sub          t2, a0, t0
                  srai         s2, a3, 27
                  mulhsu       t4, t1, t5
                  add          a4, t3, a1
                  slti         t1, a0, -41
                  slti         a0, s1, 617
                  sll          s1, a4, s10
                  or           t6, s5, zero
                  add          t1, s6, gp
                  slli         s4, s8, 10
                  sra          t5, a4, ra
                  slt          t6, s7, s10
                  andi         a0, tp, 19
                  rem          s8, gp, gp
                  addi         a1, t5, -1915
                  srl          t1, s10, t0
                  slli         s3, s0, 7
                  mulhsu       t4, t4, ra
                  div          a0, s8, s5
                  srai         s6, a4, 8
                  or           a1, t1, t4
                  nop
                  slt          s11, s0, s1
                  srli         s5, a0, 3
                  slti         s1, zero, -511
                  slt          t4, s7, s2
                  xori         zero, t6, 1816
                  srl          zero, t1, s2
                  div          s1, s2, s1
                  sltiu        t5, s10, -1274
                  and          t6, s0, s0
                  sll          t4, s6, sp
                  sub          s5, t4, s11
                  srl          a3, s4, s0
                  or           s8, a4, a3
                  mul          s2, a7, s8
                  srai         a6, a6, 29
                  divu         a3, s11, tp
                  xor          gp, t4, t6
                  rem          a1, a3, s10
                  nop
                  srli         t1, tp, 7
                  divu         zero, s4, a0
                  xor          zero, t3, s3
                  slti         a1, s8, -575
                  div          s9, t0, zero
                  slt          a7, a3, a7
                  xori         a2, s4, 1901
                  xori         a0, t5, -1956
                  sll          a4, s10, s3
                  auipc        s2, 392035
                  mul          ra, sp, s4
                  add          a1, s3, gp
                  srl          s0, a6, s5
                  div          s4, s6, s9
                  sll          s3, t3, t2
                  andi         t1, s8, -8
                  mulh         s5, s5, s1
                  auipc        a0, 683600
                  mulh         s2, t6, s8
                  sltiu        a7, s1, 1855
                  xor          zero, t1, a1
                  or           s4, s9, s10
                  mulhu        s5, s10, a1
                  remu         a3, t3, s6
                  remu         s1, t4, a2
                  addi         s9, s0, 236
                  or           s9, s2, ra
                  sub          s1, s3, a3
                  slt          zero, a5, zero
                  mulh         tp, t0, t2
                  srl          t6, s11, zero
                  lui          a5, 236976
                  mulhu        tp, tp, t1
                  lui          a4, 300149
                  mulhsu       a3, a6, t3
                  ori          t2, s10, 427
                  rem          t5, s9, s8
                  remu         t5, s5, t3
                  or           s3, t2, ra
                  andi         s11, t0, -2037
                  srl          s7, s0, s7
                  andi         s8, s10, 1459
                  sub          t1, a2, a0
                  slt          a7, a2, a4
                  xor          t4, a0, s6
                  sll          zero, t1, a1
                  slti         a0, t0, 391
                  sltiu        gp, a4, -1095
                  xori         t5, s8, -1481
                  add          t1, s2, a5
                  mulhsu       s3, s0, t5
                  slti         gp, tp, -1301
                  ori          t2, sp, 120
                  mulh         tp, tp, s3
                  auipc        s10, 261459
                  srai         s8, t5, 9
                  slli         s6, a1, 19
                  ori          t6, a1, 368
                  xori         a0, t0, -851
                  div          a0, a5, a0
                  div          t4, s3, s10
                  ori          a3, zero, -260
                  rem          a5, a7, a0
                  srli         a1, s8, 15
                  sll          a4, t5, a1
                  rem          s4, a4, s2
                  addi         s11, a6, 1777
                  sltu         s9, s5, s11
                  or           a2, a7, s1
                  slli         s0, a5, 10
                  mulhu        a6, t6, s7
                  slli         gp, s11, 26
                  div          ra, a1, s5
                  mulhu        zero, s11, zero
                  nop
                  sltu         s8, s2, gp
                  slli         s10, s7, 14
                  srl          t2, zero, a0
                  and          t5, a4, a3
                  divu         t4, t3, a0
                  or           gp, t6, t5
                  andi         a0, a7, 116
                  div          a6, a7, t2
                  andi         s11, s0, -632
                  auipc        ra, 171833
                  sra          t6, t2, s7
                  xori         zero, t0, 250
                  mulhu        t4, s5, s9
                  slti         a6, t4, -41
                  srai         zero, ra, 1
                  srai         s10, t2, 5
                  sltu         a3, sp, t0
                  and          t2, s2, s7
                  add          s4, a7, t3
                  nop
                  lui          a5, 344857
                  sub          t5, s2, s5
                  mulhu        t6, t6, a7
                  sltu         t2, s7, t5
                  mulhsu       s1, s2, t6
                  addi         t1, a7, -1012
                  sll          s4, s6, s7
                  slti         a0, a6, -730
                  sra          t1, a1, s5
                  xori         ra, a3, 1907
                  mulhu        t4, s2, s0
                  auipc        s11, 451342
                  slt          s3, gp, s9
                  slli         s9, t2, 11
                  sltiu        t4, tp, 606
                  remu         s8, tp, s1
                  lui          a6, 501806
                  sra          a1, a6, t5
                  slli         ra, a3, 5
                  add          ra, t5, t4
                  ori          t4, s4, -1892
                  remu         t4, s2, a0
                  srl          a3, a1, s2
                  andi         gp, zero, 884
                  lui          s2, 705999
                  ori          a6, s7, -753
                  mul          tp, a4, a2
                  addi         a4, t4, 1325
                  xor          s4, a1, s8
                  mul          a0, t3, zero
                  sub          s2, s6, tp
                  and          t2, t5, s2
                  lui          tp, 889074
                  xor          s9, t1, s4
                  slti         s7, a2, -975
                  sll          s1, gp, ra
                  srai         s5, s0, 29
                  andi         s10, a1, 79
                  xori         s0, s11, -1824
                  remu         a0, sp, s0
                  slt          a2, zero, t2
                  sub          s1, s6, s9
                  rem          ra, a1, s9
                  andi         a2, s5, 1042
                  slti         a3, t1, 1355
                  sltu         t5, a7, a0
                  sltiu        a3, t2, -1026
                  and          s6, a0, t6
                  slti         s6, s0, 80
                  auipc        s1, 606187
                  slli         zero, a5, 18
                  auipc        a6, 165568
                  slt          a0, s5, s4
                  mulhu        s0, zero, a4
                  sll          s4, a0, t5
                  sra          a3, sp, a7
                  mulhu        a5, a6, a1
                  slt          s7, t5, a1
                  sll          a3, t6, a6
                  sltiu        s11, s11, 1190
                  remu         t2, t4, a5
                  auipc        s2, 699679
                  divu         s4, a0, s5
                  sltiu        t6, t3, -1490
                  ori          s5, s8, 1984
                  rem          a1, s2, t3
                  xori         a0, t0, 246
                  slti         t2, s7, 1069
                  andi         a0, a4, 545
                  ori          a7, s5, 360
                  auipc        ra, 889633
                  lui          a0, 81505
                  srl          a4, t1, ra
                  mul          t5, s8, t6
                  rem          t5, tp, s8
                  rem          t1, t1, s1
                  remu         ra, t2, zero
                  andi         a3, ra, -801
                  mul          a5, a4, s3
                  or           gp, a0, s0
                  mulh         a0, s10, s2
                  mul          tp, a4, a3
                  mulhu        s5, s10, t2
                  mulhu        tp, s8, t6
                  slt          a2, sp, a0
                  mulhu        a7, gp, tp
                  slli         s3, t0, 2
                  div          t5, gp, s3
                  sra          a5, t6, a7
                  auipc        tp, 181677
                  srl          a1, s9, t6
                  or           s10, a1, s4
                  divu         s3, s5, a2
                  rem          a5, a6, s8
                  sltu         t1, s5, a0
                  divu         s9, s3, t2
                  slt          s6, a4, t1
                  or           tp, tp, a4
                  addi         s11, t1, 1716
                  add          t4, a6, a0
                  ori          s3, s0, 1547
                  srli         s0, a1, 10
                  xor          s8, zero, zero
                  and          a1, t2, a7
                  andi         t1, a2, 701
                  rem          s2, a7, a5
                  or           s1, t1, t1
                  slt          s2, a1, s7
                  nop
                  xori         t1, t5, -919
                  auipc        ra, 266942
                  sltiu        ra, s4, 876
                  mulh         a3, zero, s1
                  nop
                  mulhsu       s3, a4, t5
                  srl          a5, a0, a2
                  div          s8, s0, a2
                  srai         s9, ra, 17
                  sltu         s11, zero, s5
                  slli         zero, a6, 0
                  lui          a1, 724492
                  srli         a2, s6, 8
                  slt          a3, s3, s10
                  addi         s3, t5, 1242
                  sll          a3, t5, t4
                  mulh         t4, a6, a7
                  lui          s9, 580409
                  sltu         t6, s9, s5
                  slt          a1, s11, s6
                  xori         s5, a2, 402
                  remu         s6, zero, tp
                  divu         s8, ra, t6
                  srai         t1, s0, 7
                  srli         s7, s5, 0
                  mulh         t1, a1, t6
                  xori         s5, a1, -312
                  slti         a5, tp, 523
                  srli         a3, s3, 11
                  srli         gp, a3, 18
                  div          s10, a5, ra
                  rem          s7, a7, a4
                  mulh         s7, a6, t0
                  div          zero, a1, t6
                  remu         s7, s0, a2
                  srai         t1, t1, 21
                  xor          tp, a3, t4
                  xori         a6, a3, -1303
                  andi         ra, t6, -1208
                  rem          t4, s9, t2
                  and          t4, s4, sp
                  sll          s10, s5, s5
                  remu         t1, s4, t4
                  nop
                  andi         s2, a5, 776
                  ori          s9, t6, -708
                  or           s9, a1, s2
                  sll          t1, gp, s11
                  rem          a2, t0, gp
                  slti         t4, s9, -1762
                  xor          a1, a6, a7
                  mul          s2, t2, t4
                  divu         t6, a1, t0
                  xori         s0, s9, 1148
                  and          ra, t4, t6
                  addi         t4, s7, 1110
                  sll          s3, a4, a4
                  remu         a5, tp, t6
                  srli         s5, ra, 20
                  ori          s2, a5, -227
                  slti         gp, a1, -2006
                  ori          s11, s10, -323
                  srl          s6, t5, s1
                  remu         a7, a1, a6
                  sll          t5, t3, t1
                  sltiu        t4, t4, 623
                  xori         t4, s10, -1275
                  xor          s7, sp, t5
                  rem          a0, s4, sp
                  srli         t2, ra, 11
                  sll          s7, s4, zero
                  auipc        s0, 408087
                  and          s5, a4, s6
                  slli         a7, t1, 12
                  xori         s11, zero, -1306
                  sltu         s2, t1, t4
                  auipc        s3, 637729
                  mulh         s10, sp, a0
                  add          a4, gp, a5
                  and          a4, t6, t3
                  divu         s3, s0, t4
                  srai         a5, a7, 18
                  remu         a7, t1, gp
                  addi         a5, s3, 351
                  slti         t4, s10, 140
                  rem          a0, t6, t4
                  addi         t2, s7, 1344
                  sub          t6, s1, a0
                  xori         t2, t0, 2037
                  slli         s2, t3, 30
                  remu         t1, gp, a0
                  auipc        s7, 1035972
                  sltu         gp, s3, ra
                  xor          s5, s2, s3
                  or           a5, t1, t0
                  rem          a5, a0, a6
                  xor          s8, s4, t2
                  rem          s5, sp, a7
                  remu         s8, a6, t5
                  sll          t1, t6, a3
                  and          gp, gp, a5
                  andi         zero, a4, 585
                  mulh         s6, s11, tp
                  lui          a7, 217602
                  div          s8, s3, s7
                  srai         s10, ra, 14
                  or           s11, s9, a4
                  slli         a4, s2, 3
                  srl          a7, s9, s3
                  xori         s11, s1, 1119
                  auipc        tp, 979737
                  xori         a1, s11, -858
                  and          t6, t0, sp
                  mulhu        s10, t5, t0
                  nop
                  sub          a3, a4, t5
                  mul          t4, s9, sp
                  xori         s0, sp, -169
                  or           s9, ra, s7
                  andi         s4, t2, 764
                  mulhsu       s4, s5, s7
                  sub          t4, t4, ra
                  andi         gp, t4, -1369
                  sltiu        s8, s10, 713
                  nop
                  xori         a1, s3, -1906
                  mulhsu       s5, a4, s9
                  or           t1, a3, a5
                  sll          zero, s5, s4
                  slti         zero, a6, 1986
                  ori          s9, s11, 1886
                  sub          a7, sp, t3
                  slt          a4, a3, a7
                  sub          s2, s2, a3
                  div          s7, t0, t6
                  nop
                  slt          gp, t2, t5
                  slti         t4, a5, -525
                  auipc        a5, 405483
                  sltu         a2, s4, a6
                  sltu         s6, s3, s6
                  addi         s3, s2, 1855
                  xori         s7, t4, 1412
                  xor          a4, a1, sp
                  nop
                  sltu         t2, s11, gp
                  mul          tp, sp, ra
                  mul          t1, ra, t4
                  mulhu        s0, s7, a3
                  rem          s9, t5, a3
                  or           s10, a0, t5
                  divu         a1, s6, t3
                  sub          s9, tp, s2
                  mulhu        s5, a0, ra
                  add          s3, t2, t4
                  sltu         t1, s5, s9
                  sub          ra, s1, t5
                  div          a7, zero, s9
                  nop
                  mulhsu       gp, a0, s9
                  mul          s4, t6, gp
                  sub          a1, t0, t3
                  srl          s5, a5, gp
                  addi         s9, a4, -305
                  slti         s0, s8, -414
                  srl          s2, t5, s6
                  ori          s3, s5, 234
                  slli         s9, gp, 31
                  div          s0, a2, t1
                  rem          s7, a2, s8
                  sltu         t1, s3, a1
                  srl          t2, a6, s1
                  or           a6, gp, t3
                  auipc        t5, 797770
                  sra          t6, ra, a6
                  sltiu        a7, ra, -482
                  or           s2, zero, s7
                  sub          s6, tp, a5
                  slli         tp, s4, 5
                  div          s9, s9, t5
                  remu         t6, s11, s3
                  auipc        s0, 796648
                  sub          a6, t2, a7
                  rem          s10, s9, tp
                  sll          s7, tp, a4
                  sra          a4, sp, zero
                  xor          s9, sp, a5
                  srai         s4, s5, 30
                  nop
                  sll          a0, s10, s5
                  addi         s5, s8, -18
                  mulhsu       t2, gp, t5
                  slli         s2, tp, 7
                  and          t6, s1, s6
                  sra          s7, t3, s0
                  mulhsu       a2, s7, a1
                  mul          a7, sp, s5
                  slli         s2, s10, 0
                  andi         t1, t3, -5
                  sltiu        s11, s3, 1849
                  srl          t5, tp, s8
                  andi         gp, s9, -113
                  rem          a2, t3, zero
                  div          s8, s1, t5
                  andi         a3, t3, 1424
                  divu         s6, s8, a5
                  srli         s5, sp, 24
                  rem          gp, s1, a2
                  mul          t4, t6, a7
                  sll          s3, t5, s1
                  and          ra, s0, s4
                  mulh         t5, s8, t3
                  slt          t2, a2, s2
                  nop
                  sub          s2, a3, s3
                  andi         s5, s2, 1819
                  mulh         ra, a5, s1
                  remu         s10, s4, a4
                  slti         s7, s8, -998
                  mulh         s8, t0, s6
                  srai         t2, s3, 6
                  or           t6, s8, s5
                  xor          t6, s5, sp
                  mulh         a3, s7, a3
                  auipc        t5, 187065
                  xori         s5, a0, 1539
                  remu         s5, s10, a6
                  sra          ra, tp, t6
                  mulhu        ra, gp, t2
                  xor          s5, s5, a6
                  divu         s3, s1, s11
                  auipc        s10, 443751
                  mul          a7, a7, s6
                  rem          a2, tp, s5
                  div          s8, s11, s7
                  divu         t1, s6, t6
                  xor          s7, a6, s11
                  xor          t2, s6, s5
                  divu         t1, s10, a4
                  sltu         t1, tp, sp
                  sub          ra, zero, a0
                  xor          a1, s3, s6
                  rem          t2, a3, s6
                  sub          zero, s1, s3
                  xori         a1, t2, 715
                  mulhsu       s4, s8, a1
                  xori         a7, s3, -154
                  nop
                  sub          a6, a3, s10
                  divu         s1, t0, tp
                  or           s0, a1, s9
                  and          s8, ra, t0
                  ori          a7, s8, 699
                  or           s3, a3, t4
                  sra          tp, t4, t0
                  or           s8, gp, s1
                  slti         t6, s0, 1791
                  add          a0, a2, s4
                  remu         tp, ra, ra
                  srl          gp, zero, t1
                  xori         a7, a1, 421
                  divu         a2, s2, s6
                  mulhu        s7, gp, s9
                  slt          a2, s4, t5
                  rem          a7, s9, t5
                  nop
                  mulh         t6, a6, t1
                  or           a4, tp, sp
                  ori          a5, s7, 783
                  divu         a4, a5, s2
                  srai         gp, ra, 5
                  lui          a2, 889551
                  and          s5, s10, s9
                  srl          a1, s2, s3
                  mul          tp, t6, a1
                  ori          t5, t5, 1615
                  auipc        t4, 304479
                  srai         s10, a5, 22
                  add          s1, a0, s8
                  mulhsu       t4, t6, s6
                  sltiu        t2, t3, -529
                  addi         a6, s8, -1061
                  mulhu        s9, a3, ra
                  andi         gp, a3, -723
                  div          s6, t1, gp
                  xori         s8, t0, -1488
                  mulhu        a7, s11, s9
                  sra          a4, s11, a4
                  mulhu        tp, t1, a4
                  andi         s5, t3, 433
                  auipc        ra, 334964
                  slti         s1, tp, -1687
                  remu         s1, t5, t2
                  lui          tp, 708149
                  ori          tp, s8, -944
                  sll          t2, s3, tp
                  auipc        a5, 1035901
                  slt          zero, tp, s4
                  slt          s9, a2, a2
                  sltu         s8, ra, a4
                  auipc        ra, 182676
                  addi         a6, t0, 1569
                  nop
                  lui          a3, 1020534
                  auipc        s0, 969593
                  sltu         s3, s2, s3
                  srli         a7, sp, 10
                  mulh         t6, t3, a3
                  addi         zero, a2, 995
                  divu         a3, s7, s9
                  sll          s2, s10, t6
                  xori         s6, a7, -1405
                  mulh         ra, s8, s7
                  slt          gp, s6, zero
                  add          s5, s0, s0
                  sltiu        s10, s7, -578
                  divu         t4, t1, a4
                  rem          zero, t2, s9
                  andi         s1, tp, -696
                  mulhsu       a4, a1, zero
                  slt          s2, a4, s9
                  mulhu        s7, s3, a3
                  remu         a1, t0, a5
                  ori          s2, s5, 1874
                  remu         a5, zero, s7
                  sltiu        a0, t5, 1057
                  xori         s7, sp, 1255
                  remu         s11, t2, s6
                  andi         s1, gp, -214
                  mulhsu       s4, t4, s10
                  xori         s10, s7, -232
                  sll          s6, t3, a2
                  srl          a3, t0, t5
                  mulh         a5, a3, a4
                  xori         a2, sp, -1850
                  divu         s4, a2, s2
                  remu         t1, a1, s4
                  and          a4, a3, t1
                  srli         s6, t4, 28
                  xor          a3, t6, s11
                  mulhu        t1, s11, a2
                  rem          a6, s0, t2
                  mulhu        a3, a5, s3
                  rem          a5, s0, s3
                  slt          t5, t6, a1
                  nop
                  and          a3, s3, a0
                  andi         ra, zero, 1799
                  mulhsu       a0, a0, s11
                  mul          s10, t6, t2
                  slti         s9, s10, -1789
                  or           s4, t3, s9
                  mulhsu       s3, t1, s3
                  mulhsu       s2, sp, s9
                  sltiu        a4, t5, -42
                  mulhu        s3, a4, s7
                  nop
                  rem          s3, zero, a7
                  xori         s4, s5, -974
                  xor          s1, s11, t0
                  remu         t4, ra, t5
                  sub          a2, t4, t6
                  srai         gp, s11, 1
                  xor          a3, s1, zero
                  auipc        zero, 71928
                  andi         s11, a4, 1067
                  ori          t1, s6, -1646
                  auipc        s6, 836248
                  slli         a3, a1, 30
                  slt          a4, s1, t3
                  mulhsu       s8, t0, t2
                  xor          a7, zero, a4
                  slt          a3, a4, a6
                  add          s8, s2, a0
                  srai         a3, a2, 5
                  slt          s0, t6, tp
                  slt          t2, a0, a6
                  addi         a7, t0, -335
                  auipc        ra, 379388
                  mul          s8, a2, sp
                  mulh         s10, s4, s1
                  xor          s7, s6, a4
                  nop
                  or           t5, t1, a2
                  sltu         t4, s8, zero
                  sll          s10, s4, t0
                  slti         ra, t2, -804
                  slti         t2, t6, 1012
                  auipc        ra, 482976
                  mulhu        s9, t5, a0
                  div          s3, a1, s1
                  remu         s4, t0, a5
                  addi         t1, t2, 1715
                  slt          a3, a3, t5
                  sltu         s6, a2, t1
                  remu         s4, s9, zero
                  mulhsu       s11, tp, s10
                  and          a5, t5, t4
                  slli         s8, a6, 30
                  sra          s8, tp, t0
                  mulhu        a7, a5, a1
                  srai         ra, tp, 16
                  and          zero, s6, s5
                  sll          gp, s7, a5
                  slli         s10, s5, 7
                  nop
                  slt          a3, s11, tp
                  lui          t4, 704371
                  add          tp, t0, t3
                  sltiu        a3, t3, 1259
                  sltu         t6, gp, s6
                  slti         s7, s5, 478
                  sra          a4, a2, zero
                  srl          gp, t2, a3
                  div          tp, sp, a1
                  sra          s11, s8, s3
                  sltiu        s0, t2, -1351
                  xori         a1, t5, 1374
                  auipc        s7, 809210
                  div          a2, a7, t6
                  sll          s5, s9, s11
                  xori         s0, s5, 942
                  slli         s2, s0, 27
                  mulh         s5, s2, s6
                  mulhsu       tp, s3, s0
                  sll          s4, ra, s1
                  and          s1, a2, t1
                  add          a5, s4, a0
                  add          s8, ra, s11
                  srl          s9, gp, s3
                  slt          s6, a4, s4
                  lui          s0, 511839
                  slti         a7, s4, 1568
                  mul          gp, gp, t5
                  div          s1, a7, a7
                  mulh         zero, a5, sp
                  srai         s7, ra, 26
                  andi         s4, zero, -2034
                  sltiu        zero, s5, 1048
                  sltiu        tp, s10, 1980
                  divu         s7, s1, s8
                  slt          s3, a7, t4
                  and          a4, s5, a0
                  andi         t1, gp, -163
                  mulhsu       a2, t0, a2
                  srl          zero, a3, s0
                  mulh         a2, s4, a4
                  andi         t5, t0, -2004
                  xor          s3, a3, a2
                  slt          tp, gp, t3
                  slli         s7, t2, 13
                  srl          a4, t0, zero
                  xor          s4, a5, s11
                  xori         a1, s4, 52
                  sltu         a6, zero, s0
                  lui          ra, 143287
                  add          a2, a1, sp
                  or           s1, s9, s4
                  sub          s2, s7, a6
                  remu         t4, a3, s4
                  mulhu        a7, s5, a2
                  sltu         t6, t0, zero
                  sltu         s4, a2, s11
                  mulhu        s4, tp, tp
                  divu         a0, t1, t2
                  srli         s2, s8, 26
                  and          gp, a5, t3
                  or           s3, s10, s1
                  sltiu        t4, s7, -861
                  sub          a7, tp, a4
                  srli         t4, t4, 3
                  sra          t4, s1, a5
                  divu         s8, gp, a5
                  divu         a4, s2, ra
                  mulhu        zero, s11, s7
                  divu         a6, t5, t6
                  slt          a6, s9, t3
                  sltiu        tp, s10, -1926
                  or           t5, s0, t1
                  mulh         a0, sp, zero
                  srli         gp, t2, 24
                  andi         gp, tp, 1947
                  srl          t1, sp, s4
                  nop
                  sltu         s2, s1, a6
                  mul          a5, a2, s6
                  slt          tp, ra, s1
                  sltiu        zero, s9, 816
                  sra          s3, s11, t5
                  srai         s11, s1, 22
                  mul          t1, s11, s7
                  andi         a5, a4, -1741
                  rem          a0, s6, gp
                  sub          zero, s4, t6
                  and          tp, a3, a2
                  auipc        a2, 972683
                  or           a7, a3, a0
                  srl          t6, t3, t5
                  rem          tp, a6, s0
                  mulhsu       s1, a7, sp
                  xor          t2, a1, sp
                  and          ra, a4, s6
                  nop
                  andi         a4, s5, -1981
                  ori          t1, t0, -941
                  andi         zero, zero, 213
                  sra          t2, s10, t3
                  rem          a7, s2, t4
                  sra          s3, s0, zero
                  slli         s1, zero, 3
                  ori          t1, s6, -1778
                  divu         s2, a6, t3
                  mulhu        t5, t1, s2
                  sub          a5, zero, a3
                  srl          a4, t6, sp
                  or           gp, a1, s9
                  mul          t1, zero, s4
                  rem          s9, s2, s6
                  srl          s2, s11, ra
                  slt          a0, s0, t6
                  sra          s9, zero, t1
                  slli         s7, t5, 17
                  auipc        a2, 826828
                  slti         a0, s5, 484
                  lui          s5, 466998
                  divu         ra, s3, s1
                  lui          a4, 870651
                  sra          s11, t3, a6
                  rem          s7, s1, a3
                  divu         gp, s11, a1
                  nop
                  slti         a1, ra, 1837
                  sltu         s11, s4, tp
                  srai         s10, a6, 22
                  sltu         a0, a5, t0
                  sub          t4, a6, gp
                  divu         a5, t6, s0
                  slt          a5, s8, sp
                  mulh         tp, s10, s3
                  sra          s5, gp, t5
                  divu         a4, t2, t0
                  sub          s4, t0, s8
                  lui          s5, 321096
                  xor          a3, a0, sp
                  mul          t4, s8, a2
                  sub          s4, ra, t5
                  slti         s6, s5, -2009
                  ori          a3, s6, -817
                  sub          t2, s3, s8
                  xori         zero, t5, -1454
                  mul          s5, a7, zero
                  xor          s11, a5, a5
                  mulhu        tp, a0, s7
                  sra          s4, sp, t6
                  srli         t5, a2, 8
                  xori         s10, t6, 2011
                  div          t5, s3, s2
                  slt          zero, a3, s5
                  auipc        t6, 1005179
                  sltu         s9, s11, s2
                  and          t1, s5, sp
                  add          s10, s7, t4
                  nop
                  auipc        tp, 906268
                  mulh         tp, t1, gp
                  slt          gp, s0, tp
                  divu         t5, a2, a5
                  sltu         a3, tp, zero
                  sltu         s9, a6, s1
                  rem          s10, a5, s2
                  sll          a4, s6, s2
                  sll          gp, sp, a2
                  nop
                  srai         zero, a0, 27
                  slt          s6, a2, t5
                  sll          a1, s2, t5
                  mul          tp, gp, t6
                  auipc        s4, 932805
                  or           s2, a7, a5
                  srai         a5, s0, 13
                  rem          s10, s7, a0
                  slti         s5, tp, 1469
                  sra          s1, s6, sp
                  sltiu        a3, ra, 1234
                  sltiu        gp, t0, 1736
                  sltu         a2, t1, a2
                  xor          s5, a3, s8
                  addi         s10, s2, 184
                  srli         s2, s8, 28
                  mulhu        s0, t0, s5
                  mulhu        t6, tp, s1
                  nop
                  nop
                  mul          s8, t0, a0
                  srai         s8, a6, 8
                  mulhu        ra, t3, a6
                  xori         s11, s6, 257
                  or           t5, s6, s3
                  srli         a0, s11, 22
                  sll          s8, s0, t5
                  mulhu        a4, s7, a2
                  auipc        s5, 385763
                  andi         a0, s3, -429
                  srli         zero, t2, 14
                  and          a2, a4, t2
                  or           s5, a0, t4
                  and          t1, s6, sp
                  mul          s9, s2, s6
                  slt          a6, s8, a0
                  srli         a4, t2, 14
                  and          a6, s5, t5
                  mulhsu       tp, s9, t3
                  sltu         t4, t1, t3
                  nop
                  nop
                  mulh         s11, a5, s11
                  or           ra, s3, s7
                  addi         s6, t1, -629
                  and          a1, s4, a2
                  add          s11, t1, a0
                  xori         a0, zero, 1982
                  divu         s11, s9, a0
                  divu         a3, ra, s3
                  andi         s0, t3, 1000
                  slli         t5, t6, 30
                  rem          s6, s11, t3
                  lui          s9, 466625
                  sltiu        gp, zero, 781
                  sll          tp, s10, a5
                  andi         s0, t2, -586
                  mulhsu       s5, tp, a1
                  ori          a2, tp, -838
                  sltiu        s1, s5, -1536
                  mulh         gp, t4, s2
                  auipc        a7, 962553
                  xor          s7, a5, t6
                  mulhu        s4, t5, s3
                  sltu         a3, a6, ra
                  or           t6, s8, s11
                  andi         t2, s11, -990
                  sll          t4, a0, t0
                  sub          a1, t3, a3
                  addi         a2, tp, 1117
                  slt          s1, t3, a7
                  divu         a7, a7, s1
                  sub          s3, a6, s5
                  rem          a1, a6, t6
                  ori          s0, t1, 1839
                  remu         s1, t5, s10
                  addi         s3, s10, -1006
                  srli         t4, s1, 4
                  nop
                  add          a3, a6, tp
                  ori          t1, t1, -1950
                  auipc        a6, 563457
                  nop
                  add          s0, a0, t0
                  slti         s1, a1, -1267
                  mul          a6, t2, a1
                  add          s4, a7, s10
                  slli         a3, s4, 3
                  divu         t5, a7, a3
                  srl          tp, zero, a5
                  nop
                  xor          s1, s6, sp
                  srli         s3, s4, 11
                  slti         t1, gp, 1991
                  slt          t6, s11, a1
                  nop
                  add          a2, t0, sp
                  rem          s6, a4, a2
                  and          s0, sp, s0
                  sltiu        gp, s3, 1637
                  sltiu        s9, t5, 1097
                  mulh         s9, s2, sp
                  sll          ra, s1, t6
                  rem          a0, ra, s6
                  remu         a4, s9, ra
                  and          s4, s8, ra
                  mulhu        s11, s5, sp
                  sltu         gp, ra, t4
                  slti         zero, s5, 1250
                  sltiu        a1, a0, -334
                  lui          s3, 406627
                  srl          s1, t6, s6
                  srli         a0, s5, 29
                  or           tp, t1, s10
                  sub          a4, s5, s3
                  srl          s3, zero, s5
                  ori          t2, a2, -576
                  slti         s6, zero, -332
                  xori         gp, a3, -723
                  mulh         s11, s5, tp
                  mulhsu       gp, zero, t6
                  mulhu        s9, a6, sp
                  sltu         s5, a1, s11
                  sltiu        ra, a2, -339
                  divu         t2, s3, a4
                  remu         tp, ra, a3
                  auipc        tp, 556225
                  addi         s8, t2, -813
                  xori         s1, s2, -791
                  xor          t4, a1, s0
                  and          s3, s5, s2
                  or           s4, s0, s8
                  mul          s10, a1, ra
                  srli         a6, a4, 30
                  andi         s9, s7, -1786
                  sltiu        a3, s10, 1295
                  mulhu        a5, t1, s4
                  sltu         ra, t4, s11
                  lui          s11, 586202
                  and          s3, t0, s3
                  slti         s5, s4, 1330
                  mul          s6, t5, a6
                  rem          s9, s4, tp
                  ori          a4, zero, -919
                  srl          zero, a7, t3
                  slli         gp, s3, 29
                  sra          s11, s8, s9
                  mulhu        a4, a4, a5
                  mulhu        a1, s8, t5
                  sltu         s5, t4, sp
                  slli         gp, s0, 8
                  sll          a0, a1, a0
                  sltu         a0, s8, s7
                  lui          t2, 960675
                  sltu         a5, t5, a3
                  divu         tp, t2, zero
                  lui          a3, 56238
                  srl          s10, s1, tp
                  addi         t4, s6, -1630
                  sub          a7, ra, a2
                  xor          s11, s4, zero
                  sltiu        s0, s10, -262
                  and          a0, t0, a5
                  srli         gp, s11, 27
                  xori         s5, t6, 1643
                  sltiu        t1, ra, -85
                  slti         gp, t5, 1535
                  slti         s7, zero, 500
                  sra          tp, sp, zero
                  remu         t4, a3, zero
                  remu         t2, s7, s1
                  sra          s0, t4, s10
                  srl          gp, t1, s7
                  srli         zero, t6, 22
                  mulh         t2, s6, s10
                  mul          t5, a6, t5
                  sltiu        s0, s5, 1356
                  andi         s9, t2, -1283
                  slli         s8, a3, 3
                  sra          t1, t1, s4
                  sltu         s9, a2, s6
                  ori          a0, a1, -72
                  srli         a5, t5, 4
                  xori         t4, s3, 951
                  sltu         gp, t3, t3
                  sltu         a5, s11, t1
                  and          s2, t5, a4
                  sltu         s2, s8, a2
                  auipc        s8, 843588
                  mulhu        tp, t6, a5
                  sra          s1, a5, tp
                  sltu         a0, tp, s5
                  xor          s1, a4, t6
                  sra          s9, t6, a2
                  mul          t1, t6, t1
                  and          a4, gp, s7
                  mulhsu       t4, s11, s7
                  ori          s0, s0, 1957
                  slli         t6, t1, 0
                  sltiu        t6, a2, -209
                  srl          a6, gp, s10
                  add          a5, gp, s1
                  mul          gp, a3, s6
                  divu         t4, t6, s7
                  xor          gp, s6, sp
                  divu         t6, s9, s1
                  divu         a5, sp, s8
                  sra          s7, t6, s8
                  or           s5, t4, t6
                  rem          a6, t1, gp
                  srai         tp, s10, 0
                  sltiu        gp, t3, -455
                  slli         s5, t3, 4
                  slli         s4, t2, 6
                  srli         a4, s7, 16
                  sll          a7, a7, s0
                  div          t1, a1, a5
                  sltu         tp, tp, s5
                  ori          a3, a6, 1267
                  srl          a1, t3, s0
                  sltu         a3, s9, s2
                  sltu         zero, s3, a7
                  or           a0, t4, gp
                  slt          t1, ra, a0
                  rem          t4, a1, s10
                  rem          s6, a7, s9
                  and          a1, t5, a4
                  auipc        a3, 785571
                  lui          t2, 989689
                  sll          a3, t4, s2
                  addi         s6, sp, 1268
                  srl          a4, a5, zero
                  srai         a6, s5, 16
                  srl          s9, tp, a4
                  sll          a3, t1, tp
                  xor          zero, a0, s5
                  slti         s6, s3, 2010
                  mulh         t4, a5, s5
                  mulh         a3, s1, t3
                  auipc        a0, 224642
                  or           s7, a2, s0
                  srli         s3, a4, 23
                  slti         s9, s5, -478
                  mulh         a5, t0, t4
                  slli         a6, a4, 16
                  div          gp, a7, a1
                  slt          a1, s11, a3
                  slti         a5, s6, 50
                  div          s1, s6, s5
                  andi         t2, t5, -139
                  ori          s6, t3, -329
                  srai         a2, t3, 22
                  mulhsu       s6, gp, gp
                  sltu         t5, t3, a7
                  mulh         s10, a4, a4
                  or           s5, gp, a0
                  lui          tp, 818648
                  srai         s7, s7, 23
                  lui          a0, 248344
                  slli         s1, a5, 10
                  and          a7, s2, a0
                  mul          s10, s11, zero
                  nop
                  lui          t2, 185384
                  mulh         tp, zero, s1
                  div          s0, t0, a4
                  sub          zero, sp, zero
                  xori         t4, t6, -1751
                  xor          gp, t5, t4
                  sltiu        s7, gp, -1242
                  xor          s9, t5, s5
                  slli         s4, s3, 0
                  remu         a2, a3, a7
                  mul          a7, sp, zero
                  rem          t6, s2, a2
                  xor          s10, gp, a3
                  sll          a7, t5, t4
                  srl          s1, gp, s1
                  srai         zero, t0, 0
                  mul          t6, a4, a4
                  remu         zero, a4, s10
                  sltiu        a3, gp, 280
                  srli         t4, gp, 12
                  lui          a5, 582795
                  slti         gp, a2, -414
                  sll          s5, a7, t6
                  xor          tp, s0, s8
                  or           a3, t4, t4
                  addi         t2, s0, -706
                  auipc        s6, 172382
                  mulhu        s10, s11, s8
                  slti         a0, s7, 1740
                  divu         s9, s7, s4
                  mulh         s3, s6, s4
                  sra          zero, s4, t1
                  remu         s1, s2, s8
                  or           s3, a3, a1
                  andi         a1, s9, 2017
                  mulhu        a1, a5, t0
                  mulhu        t2, s3, s4
                  nop
                  srli         t4, s6, 23
                  sltiu        gp, s2, 1243
                  mul          s2, a0, s10
                  xor          t5, t4, t4
                  divu         t2, a3, t1
                  andi         s8, s7, 1951
                  andi         a5, a4, 796
                  divu         a2, s9, s11
                  sltu         a6, t4, a5
                  srl          tp, s9, s9
                  divu         s5, gp, t4
                  auipc        s0, 513032
                  srli         a1, s10, 4
                  xori         a2, ra, -1570
                  divu         t1, t3, t5
                  auipc        ra, 191123
                  sub          s9, s6, t6
                  mulhu        t2, t0, a3
                  addi         t1, t1, -1374
                  sub          a3, a4, gp
                  srl          s4, s2, s5
                  mulh         t6, a3, t3
                  or           t5, a7, t1
                  sll          s9, ra, s2
                  slli         a4, t5, 29
                  mul          ra, a3, s6
                  nop
                  mul          a4, a0, s3
                  div          ra, s11, a7
                  slti         tp, t1, -1982
                  div          s4, s3, sp
                  and          zero, a7, t5
                  remu         zero, t6, a6
                  mulh         t1, s0, s6
                  slt          t4, t2, a0
                  lui          tp, 757298
                  sltu         t4, s5, a2
                  auipc        a3, 393793
                  slti         ra, s8, 118
                  mul          t2, t4, s10
                  rem          t2, s5, s3
                  auipc        s4, 444888
                  srai         a3, ra, 29
                  sra          a7, a7, gp
                  rem          s4, a3, t5
                  mulh         t2, s3, s6
                  or           t2, a0, a0
                  or           s6, s2, zero
                  nop
                  sltiu        t2, a7, 153
                  slli         s3, s0, 8
                  mulh         zero, tp, s8
                  andi         a0, s5, 469
                  sub          s4, s1, t4
                  mulhsu       a1, s8, a7
                  and          zero, s8, a1
                  add          s11, tp, t4
                  sub          s9, zero, ra
                  srl          a4, s6, s3
                  slt          s8, s6, s2
                  xor          s5, a1, t0
                  rem          t4, t5, s6
                  addi         s4, t1, -1299
                  ori          a4, s9, -1625
                  mulhsu       s5, s7, a0
                  rem          a4, s1, t3
                  sub          s8, s8, a4
                  sra          s4, gp, s4
                  sra          s8, t4, zero
                  sub          s0, s10, a3
                  sltiu        s9, a1, -1840
                  mulhu        a7, a4, gp
                  add          s0, t3, t5
                  or           t6, a2, s7
                  sll          a2, tp, ra
                  and          a0, t0, s1
                  nop
                  lui          s1, 628713
                  mulhsu       t1, s11, tp
                  sll          s6, s6, s6
                  andi         a5, s7, 1584
                  andi         zero, t6, 1199
                  sub          a3, t0, zero
                  xor          s0, s3, t6
                  add          a1, zero, sp
                  srai         tp, t3, 4
                  srli         a0, s1, 11
                  rem          ra, t1, t5
                  sltiu        s9, zero, -646
                  ori          t6, a6, 349
                  srli         a2, gp, 21
                  srli         t6, s0, 0
                  or           s2, s5, t3
                  sra          s8, t0, a3
                  and          s11, t3, s10
                  add          a3, s7, s11
                  nop
                  mulhsu       gp, s9, s0
                  sra          s5, t1, s9
                  slt          a2, a2, s0
                  srli         s1, a6, 22
                  nop
                  addi         t2, s9, 4
                  sll          ra, t2, s4
                  remu         t1, s4, a6
                  xori         gp, s6, -1153
                  sll          s1, s6, s11
                  sltu         t1, gp, s9
                  mul          t2, s4, a1
                  auipc        zero, 503432
                  mul          s2, s8, s4
                  rem          s7, a2, a6
                  sltiu        t5, s0, -372
                  addi         t2, s11, 146
                  srai         tp, s7, 30
                  mulh         a4, s8, zero
                  div          s8, t0, s8
                  or           s0, t4, a0
                  auipc        t4, 66650
                  divu         a1, s11, a1
                  add          s2, s3, s10
                  mulhu        s11, t2, tp
                  slt          tp, s8, ra
                  sra          gp, tp, t1
                  mulhu        a2, t3, s1
                  lui          s2, 996313
                  srli         s6, s8, 22
                  srli         gp, t0, 9
                  sltiu        s8, t5, -1235
                  sll          a7, ra, s0
                  srli         gp, t4, 22
                  xori         a5, s1, 1620
                  srli         t2, a1, 17
                  slli         s2, s1, 20
                  ori          s7, s3, -426
                  slti         a1, s2, -1342
                  srli         s6, a7, 7
                  and          s5, t3, tp
                  mulhsu       t2, s6, t1
                  sll          s10, a4, gp
                  add          t4, s4, gp
                  remu         s2, s6, s2
                  divu         t4, s2, a7
                  ori          a0, t3, 689
                  xori         s3, s10, -458
                  sub          s8, t2, t6
                  mulhsu       a7, t3, a4
                  sra          a3, s1, s11
                  sub          gp, s10, t1
                  mulhsu       s3, a2, a5
                  mulhu        a1, zero, a0
                  xor          s9, sp, a0
                  mulhsu       s9, s1, a7
                  rem          t2, a6, s6
                  mul          s10, t2, s8
                  srli         t4, t3, 28
                  andi         s1, a2, 1879
                  sll          ra, a4, a4
                  sra          s4, a0, s8
                  sltiu        s9, a7, 413
                  slli         s1, a7, 22
                  sra          t4, s1, s1
                  sll          a6, s8, t5
                  slt          gp, s9, gp
                  and          tp, t0, a1
                  xor          s2, zero, t5
                  mulhsu       t2, sp, t2
                  div          s7, a5, tp
                  div          s5, s7, t4
                  srli         a6, t1, 29
                  xor          s8, a5, s0
                  andi         t2, a1, 1103
                  slli         s10, t0, 31
                  xor          a5, t0, s10
                  sltiu        s7, t5, 1196
                  ori          s8, s5, 1636
                  sltu         t6, t5, t5
                  xori         a2, s7, 28
                  divu         t5, s11, t6
                  slti         s10, t1, -2031
                  andi         s7, s4, 1626
                  auipc        s8, 671203
                  auipc        t1, 110152
                  sltiu        s1, gp, -1587
                  lui          s4, 185852
                  and          t6, t2, sp
                  sra          t4, zero, sp
                  rem          s8, s5, a3
                  addi         s9, ra, 36
                  mul          s5, s1, gp
                  div          t5, a7, a0
                  auipc        a5, 680737
                  sub          gp, s5, a5
                  or           a5, a5, s8
                  sub          s10, t4, t6
                  nop
                  mulhsu       tp, a6, a5
                  xor          s4, a3, ra
                  rem          s5, sp, a6
                  sltiu        s11, t0, 1801
                  sltiu        s8, s7, 841
                  addi         a6, zero, 505
                  andi         s10, s11, -879
                  divu         s10, t1, t1
                  xor          s7, s9, a6
                  sll          s4, t6, a5
                  addi         s5, a6, 1508
                  mulhu        a2, s11, tp
                  rem          s5, s0, s4
                  srli         s0, a1, 17
                  div          a2, a2, s0
                  slt          s7, s4, sp
                  addi         zero, zero, 1690
                  xori         s7, s10, 147
                  mulh         a3, s7, s9
                  sltu         zero, s7, sp
                  xor          t6, t3, s8
                  slli         s11, s8, 7
                  or           s0, t6, s10
                  slli         zero, gp, 10
                  nop
                  div          zero, zero, zero
                  srl          a5, s7, s5
                  sltu         s6, s10, s10
                  srl          t5, t3, a1
                  mulhu        a3, a2, a2
                  and          gp, tp, t0
                  sltiu        t4, t2, -1357
                  xori         t2, s0, -1525
                  sra          ra, t3, zero
                  and          s11, s2, a0
                  mulhu        s11, t6, s9
                  lui          s4, 31901
                  and          ra, s3, s1
                  srai         s9, a1, 21
                  andi         a2, ra, -265
                  divu         zero, zero, t0
                  add          a7, s5, s2
                  divu         a6, a6, a1
                  andi         gp, a7, 229
                  divu         t1, a1, a2
                  sub          a1, s3, a7
                  xori         s5, s7, 1671
                  sltu         s9, s4, s9
                  slli         ra, s9, 1
                  auipc        s7, 481378
                  or           s10, a7, t1
                  remu         s8, t6, a0
                  remu         a2, t0, s11
                  sll          a3, t2, a4
                  sra          a6, s11, s7
                  slli         t4, s3, 19
                  srli         s3, a1, 21
                  div          a3, gp, s8
                  rem          a7, s1, s4
                  slli         s3, a7, 1
                  nop
                  srli         a6, t3, 28
                  ori          t5, s1, 1617
                  and          a1, a1, a4
                  sub          s9, t4, s5
                  mulhu        s8, s11, s4
                  xor          ra, t3, s10
                  slli         t4, ra, 28
                  srai         gp, s1, 30
                  slli         a6, tp, 13
                  nop
                  srl          s3, s8, a3
                  xori         a0, a1, -1628
                  mulh         t4, s9, tp
                  mulhsu       zero, s9, t5
                  sub          a2, s6, a3
                  srl          gp, s8, s0
                  xor          zero, a0, t1
                  sra          s8, s0, a4
                  mulh         a6, a2, t5
                  xori         tp, t4, 1613
                  sra          ra, a5, s1
                  or           a7, tp, a2
                  sra          s9, ra, t1
                  srli         s1, sp, 24
                  mulhu        t6, t0, s6
                  srai         s3, sp, 17
                  auipc        tp, 56396
                  divu         a6, t5, s5
                  sub          t4, a0, gp
                  slt          a6, gp, a1
                  sll          s1, s7, a5
                  mulh         t1, s0, gp
                  srai         s0, s7, 7
                  srli         a7, a0, 29
                  div          t1, s7, s0
                  add          s4, s0, s1
                  mulhsu       a0, a7, a1
                  slti         s4, s0, -1888
                  srai         s10, a7, 20
                  sltu         a3, sp, s8
                  div          gp, gp, gp
                  mulhsu       s8, t3, s5
                  and          a7, s5, a7
                  sra          a0, s0, t5
                  mulhu        a7, sp, t6
                  addi         a3, s5, -1881
                  rem          a6, s0, ra
                  or           t1, ra, t1
                  or           t4, t0, a7
                  auipc        s4, 1019020
                  slti         s1, t1, -1050
                  div          s8, zero, s7
                  and          s4, t1, s9
                  ori          a1, s6, 1971
                  slli         a4, t1, 10
                  sltu         ra, zero, t4
                  sub          s4, s6, s8
                  ori          s7, s3, 706
                  slt          t5, t6, a6
                  or           a7, s3, ra
                  sub          s7, a1, zero
                  srai         t1, s11, 10
                  mulhsu       tp, t3, ra
                  rem          a6, s5, a1
                  nop
                  sub          s0, t2, gp
                  slli         zero, s9, 2
                  slti         s4, t5, -671
                  slti         t2, a7, -857
                  sub          s0, s10, a6
                  or           ra, a0, t6
                  xor          t4, a3, s8
                  xor          s2, t0, a4
                  sltiu        a5, a3, -103
                  sra          a0, a1, s6
                  or           a3, s0, t0
                  sll          a1, s0, t4
                  srai         a1, ra, 19
                  sll          a6, s4, s9
                  rem          s9, zero, s4
                  slti         s7, s8, 1560
                  andi         s7, s0, -2008
                  srli         tp, sp, 8
                  divu         a2, s2, ra
                  remu         zero, t2, t3
                  xor          tp, gp, t6
                  slli         t5, s4, 30
                  sub          t4, s3, s3
                  rem          a1, sp, s4
                  div          s3, s5, sp
                  nop
                  mulh         a7, a2, t6
                  slt          a5, t4, t2
                  or           zero, ra, a1
                  sra          s4, a6, ra
                  srli         ra, t0, 27
                  auipc        s8, 742470
                  xor          t6, a0, s11
                  xor          s2, s9, a3
                  slt          s0, a5, s5
                  lui          s9, 784646
                  xor          a5, s3, s6
                  add          s7, s6, s3
                  andi         s8, a2, 1372
                  sub          s0, s6, a4
                  sltu         t2, s5, a6
                  sra          s0, s6, a7
                  addi         s4, s11, -974
                  xor          zero, s1, s1
                  addi         t2, s2, 1389
                  andi         s11, t6, -1641
                  andi         s9, s4, -1609
                  nop
                  and          a2, t2, a0
                  mul          a3, a7, gp
                  slt          s2, t2, t2
                  andi         a7, s7, 461
                  sra          ra, s1, t0
                  xor          a4, a1, a0
                  sub          s7, a4, s3
                  remu         s4, s11, a2
                  auipc        ra, 645153
                  auipc        a0, 396215
                  slt          a2, ra, gp
                  add          s4, zero, s5
                  mul          a1, s7, t5
                  auipc        ra, 440358
                  sub          s2, s9, a2
                  divu         zero, t2, s0
                  addi         t1, t0, 93
                  div          s0, s9, tp
                  mulh         s2, t2, t4
                  mulhu        s8, s1, s11
                  srl          zero, s10, a2
                  ori          a3, t0, 1595
                  srl          a0, s4, s5
                  sra          s6, gp, t2
                  and          s7, a5, t1
                  nop
                  mul          s11, s3, gp
                  mul          t2, s7, s1
                  addi         t6, t0, 1615
                  auipc        t1, 484363
                  auipc        s6, 406018
                  xori         a2, a2, -1782
                  mulh         a7, a1, s9
                  div          tp, zero, s2
                  div          s0, s10, s5
                  andi         t5, s6, -1469
                  slt          a4, s1, s1
                  remu         zero, s11, t0
                  sltiu        s5, s1, 1782
                  xori         a2, sp, -96
                  mulhu        a7, a2, s2
                  mulhu        a5, t4, s11
                  srl          s5, tp, s4
                  andi         s8, zero, 1806
                  sra          tp, a5, a0
                  sra          s6, s0, a1
                  sltiu        ra, s5, -476
                  xor          ra, s0, s11
                  addi         s11, a5, -1532
                  remu         a3, t6, a4
                  nop
                  srl          a4, s1, s1
                  addi         s6, zero, 1727
                  sltiu        s9, gp, -758
                  and          s8, t1, t6
                  mulhu        tp, t1, gp
                  or           s1, t2, a0
                  sub          a6, s6, t1
                  and          s5, t1, s7
                  ori          a2, a1, -1248
                  remu         s6, t2, a0
                  mul          s11, tp, t0
                  lui          tp, 356484
                  xor          s3, s10, t3
                  mulhu        a5, t5, gp
                  sltiu        zero, a4, -1564
                  mulhu        tp, s10, a2
                  srai         t1, s5, 3
                  div          a0, s4, s10
                  auipc        s5, 688440
                  slli         s2, t2, 13
                  srai         s3, s11, 21
                  srai         s6, a0, 22
                  srli         a2, t2, 26
                  mul          s2, a0, s10
                  divu         s2, ra, s8
                  sub          gp, t6, s8
                  srli         s6, ra, 1
                  div          s3, s7, a1
                  sltu         a3, s4, a0
                  sub          a1, s8, a4
                  mulhu        a0, t6, sp
                  ori          s1, s5, -180
                  xor          t2, s8, t2
                  remu         a0, a2, a4
                  sltu         tp, t4, a7
                  remu         s6, a6, t1
                  and          a5, a5, s2
                  slli         gp, s6, 10
                  sub          t2, gp, s10
                  srl          s5, a1, t6
                  sra          t1, a4, s8
                  srai         s5, a6, 27
                  auipc        s0, 909475
                  slti         s6, s9, 1564
                  sll          s5, t1, a6
                  xori         s11, sp, 1541
                  add          s6, t4, s1
                  srl          t4, t1, s0
                  or           s6, a0, s7
                  div          t6, zero, a1
                  mul          t5, a2, s9
                  mulhu        ra, s7, s9
                  srl          s2, a6, a0
                  lui          ra, 642662
                  srli         s8, t4, 21
                  auipc        tp, 696151
                  srai         gp, s6, 15
                  xor          a6, a1, sp
                  auipc        ra, 20240
                  nop
                  remu         s2, s9, s9
                  div          t4, a1, s3
                  div          ra, a7, t0
                  addi         a7, s5, -282
                  slti         a2, t3, -542
                  or           s9, s3, s2
                  sll          s5, s8, s10
                  slli         t1, t0, 29
                  andi         s5, t0, -340
                  sra          s4, a2, t4
                  rem          t2, t0, a6
                  or           t1, t5, s2
                  mulhsu       t1, s10, t6
                  xori         s5, a7, -803
                  slti         s10, s4, -941
                  sll          t4, s11, s1
                  sra          a4, t4, s11
                  lui          gp, 518041
                  mulhu        ra, s3, s8
                  mul          t5, a6, gp
                  xor          s4, s8, a4
                  slti         t1, t0, 435
                  or           t2, zero, sp
                  remu         a3, s1, tp
                  sltiu        a2, s0, -2044
                  addi         s10, s7, 640
                  div          a5, a4, zero
                  or           s2, s10, t0
                  srai         s10, t4, 29
                  add          s1, t1, a0
                  andi         t5, s10, 290
                  ori          ra, s11, 299
                  srl          gp, t0, a0
                  ori          s5, a0, 661
                  remu         a5, s1, s2
                  nop
                  sll          zero, s11, s3
                  xor          ra, a3, zero
                  mulhu        ra, t2, a2
                  mulhsu       a5, s10, s6
                  slt          ra, a7, s9
                  add          s8, s8, t1
                  slli         s4, s11, 23
                  sltu         a3, s7, t4
                  slti         s11, t2, 1204
                  or           t6, t4, s11
                  divu         t1, s8, s6
                  sra          s4, a4, a6
                  slli         a3, a4, 28
                  div          a1, s10, t4
                  ori          a4, a0, -76
                  lui          a3, 14073
                  div          gp, t3, zero
                  sltu         s7, s10, gp
                  sltu         t5, s7, t3
                  mulhu        gp, s5, s2
                  nop
                  addi         a7, s0, 2042
                  nop
                  slti         a1, a5, 177
                  srai         s3, a4, 11
                  srli         a6, a3, 15
                  lui          a2, 294528
                  add          ra, s5, a4
                  sll          s10, s2, a3
                  addi         s0, s9, 1549
                  sltu         t6, a5, a3
                  xori         s4, a0, 1219
                  div          a1, t5, a0
                  and          t6, zero, gp
                  addi         tp, s1, -1833
                  add          a1, t1, a3
                  slti         a1, t0, -41
                  sltiu        tp, a2, -2001
                  slti         t2, a6, 272
                  nop
                  nop
                  mulhu        s10, zero, s5
                  rem          s2, s6, t3
                  srli         s7, s8, 31
                  sub          t6, ra, sp
                  or           s3, a5, t5
                  slti         s9, zero, -222
                  auipc        a3, 485675
                  mulhsu       s6, t0, a7
                  slti         s1, zero, 1857
                  sltiu        s9, t4, -1024
                  sltu         a7, t1, a3
                  mulh         t5, s7, a7
                  mulh         s3, zero, sp
                  lui          s2, 814671
                  xori         s9, gp, 556
                  srl          s0, t2, s6
                  sltu         s11, s0, t2
                  lui          gp, 548394
                  srli         s9, t4, 14
                  lui          a7, 704169
                  or           a3, a0, s6
                  nop
                  mulhsu       s1, s11, a1
                  remu         gp, tp, s9
                  divu         a3, s3, s9
                  andi         s5, s7, 285
                  nop
                  rem          s8, ra, t0
                  srai         s10, t4, 30
                  mulhsu       zero, a4, s0
                  srl          s4, t1, s9
                  mulhsu       a2, s7, a3
                  xor          s2, t1, s8
                  mul          a6, a6, a5
                  slti         s10, t2, -1343
                  remu         a3, t4, sp
                  nop
                  ori          zero, t6, -1950
                  remu         s9, a2, s11
                  mulhu        a3, s2, a2
                  sltiu        a2, t5, 442
                  sltu         a2, a7, s2
                  andi         s1, zero, -1136
                  or           s0, sp, s3
                  sltu         t2, t0, s9
                  auipc        a0, 514628
                  mulhu        a4, s7, s1
                  sltu         a5, a4, a1
                  andi         zero, a7, 754
                  add          t1, ra, a4
                  mulhu        t5, ra, s5
                  div          a4, s8, a5
                  sltiu        s1, s11, -840
                  mulhsu       a3, s1, tp
                  and          s0, s1, zero
                  srl          s0, t3, s4
                  sltu         s2, t3, a0
                  andi         a3, a5, -1137
                  sltu         s11, gp, sp
                  slt          s7, t6, s3
                  addi         a4, s2, -954
                  sltiu        s0, a4, 311
                  nop
                  add          t6, a0, a5
                  slli         a2, a7, 29
                  and          a7, s6, s10
                  srl          s7, a0, a7
                  lui          a7, 604013
                  slt          a4, t5, zero
                  mulhu        a2, s9, t4
                  nop
                  auipc        s10, 252987
                  nop
                  divu         gp, a7, s10
                  sltiu        tp, a0, -89
                  srli         a4, a2, 20
                  srai         s0, a1, 19
                  mulh         s4, t4, t0
                  sll          t5, t5, a7
                  add          s7, s11, t5
                  sll          s2, a2, s8
                  sltiu        t4, t1, -230
                  sltu         ra, s8, sp
                  sra          s6, a2, t6
                  sll          gp, s7, a0
                  srl          s9, a7, gp
                  nop
                  ori          s10, a2, -1127
                  slti         a1, s6, -225
                  rem          s3, tp, gp
                  or           s11, s5, s9
                  addi         t6, s2, 2024
                  sub          s1, s11, a3
                  divu         a3, a4, a3
                  remu         s9, zero, s6
                  slti         s1, s1, -1310
                  sltu         s1, s6, a4
                  auipc        a5, 1045414
                  nop
                  sub          s10, gp, s9
                  mulhsu       s8, a1, zero
                  mul          t1, a5, t0
                  rem          a2, ra, s2
                  divu         t4, s3, ra
                  nop
                  srl          s2, a3, ra
                  div          s4, a3, a4
                  add          a2, a5, t3
                  lui          t6, 989218
                  slt          a5, t4, a7
                  divu         gp, t1, s3
                  mulhu        tp, t4, s7
                  sra          s2, s1, s6
                  or           s8, s6, s9
                  srl          a3, s10, a2
                  xor          gp, a4, gp
                  nop
                  andi         a5, s7, 1341
                  lui          a3, 81602
                  lui          s5, 911515
                  slli         a1, zero, 17
                  xori         tp, s4, 420
                  mulhsu       t4, t2, s4
                  mulhu        s6, t0, s7
                  sub          a1, s9, s7
                  add          s5, zero, s6
                  sltu         a6, t6, tp
                  sltu         t4, a6, a5
                  slli         s2, a3, 30
                  mulh         s2, s3, t3
                  xor          s10, a3, s3
                  slt          a1, t0, t2
                  mulhsu       a0, t5, a6
                  slti         a6, t2, -990
                  sub          t1, t0, t6
                  mulhu        s10, t3, s0
                  mulhsu       t6, s10, t0
                  srl          a2, t4, a7
                  slt          s9, s5, s0
                  sll          s4, t1, s1
                  srli         s9, tp, 17
                  sltiu        s11, s7, 273
                  sub          tp, a7, s8
                  mulh         s9, s1, t5
                  mul          gp, a6, s3
                  and          a1, t3, s10
                  sub          t1, t6, s3
                  xori         zero, t0, 71
                  nop
                  remu         a6, s11, a6
                  sra          a2, tp, sp
                  sll          a5, a6, gp
                  xori         a1, a7, 800
                  xor          a0, t4, s3
                  sra          a2, t3, a7
                  slli         tp, s3, 22
                  addi         s1, a4, -504
                  xori         a5, gp, 1373
                  srli         zero, s6, 14
                  ori          s0, t5, 414
                  xor          t1, t5, tp
                  ori          ra, a1, -19
                  slt          tp, ra, a2
                  divu         s2, s7, s9
                  andi         s5, t1, -1875
                  ori          s8, a0, 1456
                  xori         t4, s5, 304
                  addi         a7, ra, -568
                  slt          s1, s4, t4
                  sltiu        a5, t6, -497
                  mul          t5, s6, gp
                  add          a5, s7, t0
                  add          t5, a2, ra
                  divu         ra, t3, a2
                  sub          a5, s10, s2
                  auipc        a7, 275163
                  sltiu        a5, s6, 66
                  ori          zero, s0, -1975
                  sltu         t5, a2, a6
                  sub          tp, t6, a3
                  divu         s2, s6, s1
                  div          t2, tp, tp
                  sra          t1, t4, a1
                  srai         s4, t3, 8
                  slti         ra, s10, -780
                  srai         s7, a7, 19
                  div          s7, gp, a6
                  sra          a6, t0, t3
                  lui          s3, 473768
                  sub          t1, a0, a0
                  sltiu        a7, ra, 1113
                  slli         ra, a5, 2
                  div          ra, s7, s11
                  srl          t5, t6, t1
                  slti         s6, t0, -311
                  mul          a6, a6, t2
                  sltiu        t5, t2, 646
                  sll          a3, s11, s9
                  xor          ra, s5, s4
                  auipc        a0, 450690
                  mulhu        a2, s5, a6
                  xor          s6, t4, t6
                  div          a6, t1, s11
                  rem          t4, s10, s11
                  add          s11, t5, gp
                  sltiu        a2, s6, -1219
                  sll          s5, a2, a2
                  or           t4, s11, s8
                  nop
                  srai         a3, s1, 13
                  mulh         s9, s1, zero
                  addi         t1, zero, -766
                  ori          a7, tp, -105
                  mul          gp, t4, t1
                  slti         tp, tp, -1666
                  ori          a4, zero, 1079
                  slt          tp, t6, t3
                  lui          t1, 47749
                  addi         s9, t4, -1209
                  lui          s2, 239232
                  slt          s4, a2, s8
                  mulh         a5, s5, zero
                  slli         a7, a5, 1
                  divu         s11, s5, a6
                  sra          t4, tp, t3
                  add          s2, gp, zero
                  nop
                  or           s1, a6, s11
                  mulhu        s8, s10, s1
                  xor          s11, t4, a5
                  divu         a4, t5, gp
                  remu         t2, s4, gp
                  sub          s6, ra, s1
                  srl          s4, t2, s2
                  mulhsu       s0, sp, sp
                  srai         t1, a5, 18
                  or           a1, t4, t4
                  slli         t1, s6, 11
                  slli         s11, a6, 0
                  div          s3, zero, s11
                  slli         s11, t6, 1
                  divu         a2, a4, s7
                  addi         ra, s9, -1826
                  auipc        s9, 43213
                  remu         s4, tp, s0
                  sltiu        a7, t3, 1533
                  nop
                  div          a1, zero, a0
                  auipc        t5, 950363
                  xori         t1, s4, 803
                  mulh         a0, sp, t3
                  xor          s7, t0, a6
                  sub          s10, s4, tp
                  add          s3, a7, gp
                  or           a7, zero, gp
                  mul          a2, t0, a0
                  slli         t4, a2, 21
                  lui          tp, 255185
                  add          s10, s2, s10
                  mulhu        s0, s4, a5
                  rem          t6, s10, t0
                  sltiu        s7, sp, 1413
                  or           a4, sp, s11
                  andi         a7, t0, 910
                  xori         s9, t5, -1539
                  slt          t1, s9, t6
                  xor          t2, zero, a3
                  remu         ra, t1, t0
                  sltu         a1, t1, s9
                  sub          a1, s2, t1
                  slli         s0, a6, 29
                  div          t5, s8, s11
                  sltu         a6, s6, s1
                  add          s3, a4, a6
                  slti         s4, s11, -2032
                  sll          a0, a6, t6
                  sra          s0, gp, t0
                  ori          s0, zero, -770
                  add          a4, a2, a6
                  lui          s10, 541287
                  div          s1, a6, t2
                  nop
                  sub          a2, a0, s10
                  nop
                  div          s2, t4, tp
                  nop
                  sltu         t5, a3, a6
                  srl          s2, sp, a0
                  and          ra, a0, a1
                  div          s4, a2, s1
                  remu         zero, a0, ra
                  add          tp, s7, s4
                  sltu         ra, t6, s5
                  nop
                  and          t1, t0, s6
                  mulhsu       zero, s1, t4
                  sltiu        s7, zero, -273
                  nop
                  andi         t1, t3, -1870
                  mul          tp, t5, t0
                  div          s2, a4, a6
                  sub          s7, s1, a3
                  auipc        s7, 964169
                  div          a7, ra, t2
                  andi         a4, s2, -624
                  mulhu        a3, t4, t6
                  remu         t2, sp, s9
                  sltu         a1, t1, t1
                  xor          a0, zero, gp
                  slli         s4, s7, 4
                  mulh         s1, s3, s11
                  andi         t5, a0, 1456
                  sll          gp, a3, t6
                  lui          t4, 824775
                  andi         zero, s9, 1680
                  mulh         a1, s0, ra
                  mulhu        a3, s1, t6
                  andi         s2, s4, -253
                  rem          s11, a6, s3
                  mulh         s6, tp, s11
                  andi         a4, s0, 264
                  srli         t5, s2, 16
                  xor          s2, a4, t5
                  slti         ra, t4, -629
                  sra          s8, a4, s5
                  nop
                  slti         a2, t2, -321
                  mulhsu       s0, zero, s5
                  ori          s9, a4, -374
                  add          s11, s10, a5
                  sltu         s3, s3, s4
                  and          ra, a4, s6
                  addi         s10, a6, 917
                  xor          t4, a1, s3
                  add          t5, t1, s11
                  mulh         s9, s4, ra
                  rem          a6, a2, a2
                  slli         s4, gp, 6
                  lui          gp, 402324
                  xor          a5, a7, s1
                  mul          s11, a1, s1
                  rem          s4, zero, s5
                  srl          s2, a0, a3
                  sltu         s5, s1, zero
                  nop
                  remu         s8, sp, s9
                  and          t4, a5, s9
                  nop
                  and          t1, a1, s7
                  sll          s1, t0, s7
                  mulhu        a3, gp, tp
                  sra          t6, a7, t5
                  sltu         a1, s11, gp
                  mulhu        s4, a7, s0
                  mulhsu       a0, a0, t3
                  xor          a0, gp, s11
                  srli         tp, sp, 1
                  div          s2, sp, s6
                  slli         s6, s1, 18
                  rem          s9, s8, zero
                  auipc        s11, 345758
                  lui          t4, 635407
                  sltiu        a3, s7, -1865
                  or           tp, a2, s0
                  slt          a3, tp, a4
                  remu         t6, a6, s3
                  div          a1, t6, t4
                  mul          a4, s10, t6
                  and          zero, ra, s2
                  sltiu        s11, s6, 553
                  mulh         a6, t3, s11
                  mulhsu       s1, t2, a0
                  remu         tp, t1, t6
                  sub          a2, t2, t5
                  andi         t2, s3, 1328
                  or           t2, gp, ra
                  or           t1, a0, s8
                  slti         s10, ra, -1676
                  sltu         a3, t0, s4
                  sra          a1, a4, gp
                  srli         a0, s0, 0
                  mulh         s3, t5, s4
                  addi         s0, ra, 905
                  mulhsu       s0, a4, a3
                  srai         t4, s0, 18
                  mul          s4, zero, s4
                  remu         a0, t3, a3
                  rem          a3, t6, a1
                  remu         a4, s1, t1
                  rem          zero, a3, a5
                  slt          ra, t6, t1
                  slli         a1, t0, 23
                  srli         t1, s0, 12
                  mulh         a0, s8, s2
                  auipc        s6, 994516
                  sra          a2, s10, t6
                  addi         s8, tp, -1266
                  div          zero, s10, a3
                  rem          zero, t4, a4
                  and          gp, s8, t2
                  ori          a0, s10, 1082
                  auipc        s11, 780721
                  lui          a6, 312460
                  mulh         a4, s9, s10
                  slti         ra, s2, 1271
                  sltu         s7, a7, s0
                  div          a0, s8, tp
                  div          t4, t2, gp
                  rem          ra, ra, t4
                  srl          s11, s2, s4
                  mulhsu       ra, t2, a3
                  and          t6, s3, a3
                  lui          a6, 499963
                  ori          s11, t3, 884
                  andi         s0, a1, -1672
                  sltiu        a4, a2, -495
                  lui          t4, 513088
                  mulhsu       a3, a7, a7
                  sltiu        a7, s10, -170
                  add          s5, s6, s8
                  addi         s10, ra, 33
                  rem          s4, sp, tp
                  sltu         s6, s5, t2
                  xor          a7, sp, tp
                  mulhu        t6, s9, t5
                  sltiu        s1, a7, -348
                  addi         s9, t0, -981
                  or           s11, tp, s11
                  sll          t1, s3, t0
                  mulhu        a2, a5, s6
                  div          a6, t0, t3
                  divu         s8, s10, s11
                  mul          a7, s7, zero
                  sra          s5, t2, ra
                  mulhsu       t4, a2, t1
                  xori         s9, s5, -1815
                  andi         a4, ra, -1208
                  mulh         s9, a6, s8
                  srli         t2, t2, 11
                  divu         s4, a6, t2
                  auipc        s10, 799027
                  srai         a5, s6, 20
                  slt          zero, gp, t6
                  srai         s5, a5, 6
                  mulhsu       t1, a1, gp
                  slli         a7, t0, 29
                  sra          s8, t4, tp
                  add          ra, a4, a3
                  slli         s4, t3, 2
                  andi         a0, a7, -391
                  mulhu        tp, t1, s5
                  mul          t6, s11, s6
                  auipc        a5, 616239
                  mulh         s2, s11, t1
                  slli         s5, s2, 9
                  sll          a3, a2, s2
                  mul          tp, t3, sp
                  rem          a6, t4, s0
                  mul          t4, a6, s0
                  andi         t6, s4, -1448
                  lui          t4, 968656
                  lui          s4, 919542
                  mulhu        t5, t4, t1
                  xor          s3, a7, s9
                  remu         a3, a1, s10
                  or           s1, t0, s2
                  slli         a0, s2, 17
                  andi         s4, t4, -15
                  sltiu        a7, t1, 332
                  mulhu        a3, tp, a6
                  remu         s0, s2, gp
                  auipc        s5, 934475
                  addi         tp, s7, 43
                  rem          s3, a1, a0
                  mulhu        s7, s4, s11
                  mulhu        s7, a3, t0
                  mulh         a6, t5, a4
                  srl          gp, a2, a4
                  add          t4, t6, s5
                  or           t5, t4, a5
                  andi         s8, s10, -1520
                  lui          s6, 558926
                  sltu         s0, s1, a3
                  mulhsu       s4, t0, s0
                  slti         zero, a1, 1225
                  srl          a2, t2, s6
                  div          a0, ra, t6
                  mulhsu       tp, t0, s2
                  div          a1, t1, s9
                  rem          a3, ra, t5
                  or           zero, a5, tp
                  and          a7, s4, s0
                  xor          a7, sp, t2
                  nop
                  slt          s1, t0, tp
                  divu         a2, s2, a1
                  nop
                  srl          t4, a1, s1
                  srli         gp, t0, 25
                  xori         s9, zero, -543
                  auipc        gp, 367208
                  sub          a6, a3, a7
                  srl          ra, zero, s11
                  slti         t4, s7, 1588
                  andi         t4, s5, -1203
                  remu         a0, s9, s7
                  nop
                  divu         s11, sp, s2
                  addi         s4, sp, -620
                  slt          s0, a7, s0
                  andi         s5, a1, -1456
                  addi         a6, gp, -442
                  auipc        a4, 823655
                  mulhsu       s3, s1, t5
                  mulh         s8, a3, zero
                  rem          s6, s3, zero
                  srli         s0, s7, 21
                  slt          zero, sp, zero
                  add          a2, s10, ra
                  lui          ra, 186413
                  slt          a2, t1, t6
                  remu         t2, s9, a6
                  slti         a0, t5, -374
                  ori          s9, s5, 431
                  sub          s8, sp, a3
                  divu         t2, s10, tp
                  mulhu        tp, t4, sp
                  mulhu        a3, s3, s8
                  sub          s10, a7, s6
                  remu         t1, ra, s5
                  lui          s2, 802609
                  rem          a3, ra, s4
                  addi         t4, gp, 274
                  and          s11, s10, a6
                  mulhsu       t4, t4, a0
                  andi         gp, zero, -225
                  srl          t4, s5, s3
                  slli         t4, ra, 2
                  mulhsu       a7, s1, gp
                  ori          s11, ra, 1660
                  ori          s0, sp, -117
                  srli         s10, a4, 9
                  andi         a5, a0, -698
                  slti         t2, s2, -1219
                  mulhu        t1, a7, t2
                  sltiu        tp, s3, -1080
                  or           a7, a0, a7
                  slli         t2, a3, 2
                  ori          a5, a5, -719
                  rem          s9, a3, s8
                  div          a2, a7, t3
                  nop
                  sub          a5, s8, s8
                  rem          s5, a0, s10
                  slti         s6, a0, -838
                  sltu         t6, zero, s5
                  slli         a7, s6, 17
                  divu         s3, a4, s11
                  xori         s6, s9, 166
                  mulh         t5, t0, s3
                  mulhu        a4, s5, s2
                  slt          s11, s7, s10
                  xori         a7, t5, 1244
                  and          s6, tp, a2
                  sra          s2, s1, s10
                  sltu         a2, t6, s0
                  mulhu        t1, a2, a2
                  slt          a7, t1, t1
                  slli         s9, s9, 0
                  mulhu        s2, a7, s8
                  mulhsu       zero, s4, ra
                  divu         a3, a2, s3
                  addi         t4, s10, 76
                  mul          a1, zero, a6
                  or           a4, s0, s5
                  addi         s0, a6, -211
                  sra          s6, ra, gp
                  divu         a0, s1, s9
                  sub          ra, s9, s1
                  auipc        t4, 82603
                  add          a5, a5, tp
                  divu         a5, a1, a2
                  div          t2, a7, a0
                  sra          s5, a2, t2
                  rem          s2, a0, a3
                  rem          a1, t0, s6
                  slt          a1, a4, s6
                  auipc        gp, 720961
                  xori         a6, sp, -1180
                  nop
                  and          t6, a4, s5
                  srai         s8, sp, 19
                  slt          t2, s4, s6
                  mulhu        s5, a0, a2
                  auipc        a6, 781994
                  nop
                  remu         s8, tp, t3
                  auipc        s0, 359800
                  srl          s6, s3, s10
                  xori         s0, s3, 758
                  mulh         a3, s0, a6
                  addi         t1, s8, -1719
                  andi         s11, s2, 1499
                  rem          a2, t1, t3
                  auipc        s3, 658496
                  div          ra, a1, s1
                  and          a6, s8, s11
                  div          t1, s11, a5
                  rem          ra, t3, a3
                  sltu         s1, s2, s3
                  lui          a2, 850749
                  nop
                  sltu         a2, a0, a6
                  slli         t4, s7, 26
                  and          s5, sp, t4
                  xor          t5, t1, s8
                  div          a5, t6, s8
                  ori          s0, s6, 1562
                  sra          s8, t2, sp
                  sltu         s8, s9, s8
                  sll          t6, s9, tp
                  srli         tp, ra, 26
                  srai         gp, sp, 7
                  addi         tp, t4, -1979
                  rem          s5, s11, t5
                  divu         a5, s1, tp
                  sltu         a0, a4, s10
                  sra          s9, gp, t1
                  nop
                  addi         t5, a5, 677
                  sltiu        zero, s9, 119
                  xor          t1, s5, t5
                  srli         a1, a5, 7
                  mulhu        s3, t6, a5
                  sub          s8, t5, s7
                  srai         s8, s6, 3
                  and          s7, s4, s10
                  auipc        t4, 377004
                  mulhu        s11, s6, tp
                  mulhu        s5, t5, s4
                  div          s7, a6, t2
                  divu         a3, gp, t6
                  xori         t4, s10, -303
                  mulhu        s8, s0, s1
                  auipc        s8, 258118
                  andi         s8, s3, -763
                  rem          a4, sp, tp
                  slli         a4, s5, 12
                  mul          s2, a2, a6
                  sll          t2, s10, t1
                  mulhu        a6, tp, s5
                  srai         s0, gp, 26
                  mul          gp, a4, tp
                  xor          t4, ra, t2
                  srai         s5, a1, 5
                  xor          a3, t2, a4
                  add          s8, gp, a1
                  and          a3, s5, s6
                  auipc        s10, 721282
                  addi         a2, a5, 731
                  addi         s5, a6, -64
                  addi         t4, a6, -447
                  mulhu        ra, t1, t3
                  sra          t2, t6, s0
                  srai         a3, s11, 12
                  sub          a3, a4, a3
                  addi         s4, s6, -2024
                  auipc        s10, 515568
                  remu         a7, t5, ra
                  slti         t4, ra, -175
                  mul          gp, s7, t6
                  and          a5, s2, s2
                  sltiu        a0, s5, 1054
                  divu         s10, s2, t4
                  rem          a2, t0, t4
                  sra          s5, a0, a2
                  sra          ra, s2, a4
                  mul          a7, s4, t1
                  mul          t6, a1, s5
                  xori         t2, s6, -809
                  divu         a2, t5, tp
                  mulhu        t4, s4, s1
                  div          tp, t6, s5
                  srl          s4, ra, s0
                  ori          t4, s4, -315
                  and          gp, sp, a0
                  andi         a2, s1, 1774
                  mulhu        s9, sp, s5
                  add          s5, s4, t2
                  ori          t1, sp, 706
                  nop
                  lui          t4, 161590
                  srai         s5, s10, 19
                  sltu         t6, ra, sp
                  ori          s10, s1, 769
                  slli         a0, s4, 31
                  slt          s9, s10, t1
                  or           t6, a5, a4
                  nop
                  mulhsu       t2, t1, s7
                  add          a7, tp, s6
                  ori          zero, t1, -870
                  sltiu        a6, s1, 966
                  mulhu        s1, a7, s8
                  add          t5, t6, a1
                  or           s0, t5, tp
                  lui          t5, 907099
                  sub          s0, a7, a7
                  rem          t1, s3, s11
                  mulh         s7, t2, s6
                  xori         s1, t1, -865
                  sll          a2, s0, s9
                  sltu         s10, a6, t5
                  mulh         a5, s8, a1
                  lui          s0, 769672
                  slli         s11, a4, 15
                  addi         s0, s7, 1507
                  auipc        s1, 186293
                  srl          a2, s5, a1
                  auipc        a4, 945016
                  slti         s2, s5, 521
                  divu         t6, sp, t2
                  and          a3, s3, s4
                  addi         gp, a5, -1196
                  slt          s7, a6, t4
                  sll          s6, zero, s6
                  slti         a5, s6, -1617
                  sra          t2, s11, s11
                  rem          s7, t1, sp
                  srl          tp, s11, s1
                  divu         t5, s5, s2
                  slli         s4, ra, 20
                  xor          s1, sp, zero
                  sub          s11, s3, t1
                  or           s3, t2, s11
                  mul          s2, a5, s10
                  ori          a2, a2, -1339
                  sltiu        a5, s4, 753
                  sltiu        s5, s4, 376
                  nop
                  mul          a0, a5, ra
                  mulhsu       s2, t3, s7
                  div          t2, s11, s7
                  andi         a4, t4, -657
                  sll          a2, s3, gp
                  xor          t2, a1, gp
                  div          a0, t0, a2
                  sll          s2, s1, s4
                  mulhsu       s7, gp, t4
                  xori         a2, a0, 1460
                  sra          a0, a2, a1
                  andi         zero, ra, -1577
                  nop
                  div          a0, a0, s1
                  mulhsu       s5, s1, a3
                  div          t1, gp, tp
                  rem          t2, s5, ra
                  auipc        a2, 215409
                  xori         ra, tp, -1017
                  srai         s6, a5, 6
                  div          t4, tp, a1
                  remu         a1, a2, tp
                  sub          a1, sp, s8
                  sra          zero, s6, s11
                  sra          a4, s6, a0
                  slti         t1, t3, -1298
                  sltu         s3, s6, s4
                  sltu         a0, a1, sp
                  div          tp, t6, s9
                  div          s3, s1, a0
                  slt          s10, tp, t0
                  auipc        s9, 568782
                  mulhsu       s11, a0, a2
                  slt          s0, sp, ra
                  add          s4, s8, s2
                  xori         a7, s11, -598
                  xor          s0, t1, t2
                  xori         a2, a2, 432
                  srl          s11, a4, a7
                  nop
                  xor          t4, s4, t5
                  nop
                  srai         ra, t0, 15
                  or           s1, s3, a5
                  srai         tp, t5, 4
                  andi         zero, a5, -34
                  sra          a6, t0, s4
                  srai         a6, a5, 15
                  and          zero, s7, s1
                  sll          zero, t2, a0
                  rem          a4, s0, t3
                  slli         s1, a2, 15
                  slti         t2, t6, 1081
                  xori         a4, zero, -1582
                  srl          s10, t3, s2
                  slti         s7, s3, -354
                  rem          s0, a2, t3
                  slli         a1, a3, 1
                  divu         s5, zero, a0
                  sub          t4, t5, zero
                  add          s4, s10, a4
                  srli         gp, gp, 27
                  andi         ra, t4, 787
                  mulhu        s7, t4, t2
                  mulhsu       gp, a4, s11
                  slti         gp, s4, -1420
                  xori         t6, t3, -561
                  xori         s8, s8, -1165
                  xor          s2, s4, s5
                  lui          a0, 245453
                  remu         s11, zero, tp
                  mulhsu       s3, s10, a1
                  mulhu        s8, a1, tp
                  srai         s8, a4, 15
                  and          zero, a2, t4
                  add          zero, a4, a2
                  and          tp, a5, a1
                  slt          s2, t2, t3
                  mulhu        s0, t5, s0
                  xori         a0, s7, -1878
                  slli         a7, s4, 12
                  srli         zero, a5, 20
                  xor          s4, ra, tp
                  sub          a0, t4, a7
                  sll          s5, s7, s9
                  mulh         a0, t5, s4
                  srli         t4, s4, 19
                  divu         s5, s0, sp
                  srl          gp, s3, a5
                  andi         s7, s7, 344
                  divu         s8, sp, t5
                  mulhsu       ra, t1, a7
                  sltu         t2, t4, t3
                  and          s1, a1, a7
                  andi         s4, ra, -1973
                  divu         s6, s10, s3
                  slti         s3, a0, 669
                  nop
                  srai         s11, a0, 19
                  sltu         s2, a3, t2
                  auipc        s5, 13467
                  sll          a5, s3, s0
                  auipc        zero, 576654
                  divu         a5, a0, s3
                  sltiu        s1, s8, 1745
                  and          a7, ra, s8
                  sll          s4, t1, t3
                  div          a1, s7, a2
                  auipc        s8, 906609
                  auipc        a7, 821013
                  xor          a3, t5, t6
                  andi         t2, a2, 754
                  nop
                  addi         a0, t6, 1357
                  slt          ra, t6, t2
                  auipc        s2, 687449
                  srl          a7, s7, t5
                  nop
                  slti         s2, a3, 78
                  div          t1, a7, a5
                  sra          a3, a4, s7
                  srli         s6, a7, 17
                  mulhu        t1, s1, s9
                  ori          s4, a2, -1842
                  slli         a0, s1, 1
                  srai         a0, a3, 3
                  or           a0, s8, a4
                  auipc        s7, 610142
                  srli         a2, t3, 31
                  slli         s3, a5, 5
                  div          a3, sp, a3
                  mulhsu       t1, ra, a1
                  xori         a7, s9, 1054
                  remu         a4, s4, s4
                  sll          s2, s7, t3
                  or           a4, s10, a7
                  mulh         a2, t0, a1
                  srai         s0, s5, 31
                  or           a6, sp, s1
                  nop
                  xor          tp, tp, t2
                  andi         a2, t5, -1313
                  mulhsu       s5, s3, t1
                  sltu         a2, a3, t0
                  rem          s6, ra, sp
                  rem          ra, s10, s3
                  mul          s7, t0, s3
                  xori         s10, a1, 730
                  xor          t1, s0, t6
                  mulhu        s10, s5, t2
                  srl          gp, a1, t3
                  srl          zero, gp, t4
                  srli         ra, s2, 3
                  xor          s5, s3, s11
                  or           s8, a5, s8
                  mul          a6, s0, s4
                  divu         a5, a0, s6
                  slli         t5, t6, 29
                  srl          s11, a7, s6
                  sll          zero, s5, a6
                  mulhu        s1, ra, s2
                  srl          s6, s3, s1
                  mul          t1, a5, a2
                  xor          s1, s8, t5
                  mulhsu       s10, t1, s7
                  mulhsu       a1, s1, s7
                  sub          t2, t0, a3
                  srli         a2, a2, 15
                  xori         t6, s6, -1405
                  divu         tp, gp, a0
                  add          s5, ra, a2
                  xori         tp, a6, 699
                  sll          a2, ra, s7
                  auipc        s4, 658035
                  lui          ra, 120630
                  mulhu        t4, a1, a1
                  remu         t1, s2, s10
                  mulhu        zero, a5, a5
                  auipc        a6, 628697
                  sub          t4, a0, s2
                  addi         s2, ra, 1658
                  lui          s3, 1038418
                  slti         s5, t1, 190
                  srli         s10, s3, 8
                  sra          t5, a1, t3
                  slli         a0, a4, 9
                  slti         s4, t1, 1651
                  mulhsu       t4, s7, zero
                  remu         t6, t6, a0
                  andi         s3, gp, 1023
                  mulhu        a0, t2, a5
                  divu         s4, a0, ra
                  and          a1, gp, tp
                  srl          zero, a6, gp
                  sub          s7, tp, t3
                  add          t4, s10, t0
                  srai         s5, s4, 9
                  mulhu        s0, ra, s7
                  slti         s4, t4, 2047
                  xor          s11, s5, t6
                  slt          s10, a4, s3
                  or           gp, a0, s11
                  srl          a3, s9, t6
                  or           a5, t2, s0
                  xori         a4, s0, 882
                  sltiu        a2, s8, -1317
                  sll          s0, a1, t2
                  mulhsu       zero, sp, t0
                  divu         a2, t5, ra
                  sra          gp, a6, s9
                  remu         a6, s7, s8
                  rem          a5, t0, a1
                  slt          a0, a5, t4
                  div          a1, ra, a6
                  mulhu        s3, a3, s4
                  or           a7, s0, t1
                  mul          s0, s2, t6
                  rem          s3, gp, s4
                  mul          s6, s3, s6
                  remu         s11, t4, t3
                  ori          s9, t3, 822
                  sra          t2, a2, a1
                  sltiu        tp, gp, 1760
                  sll          a2, s6, t6
                  andi         zero, t6, 1813
                  remu         s9, t4, s1
                  sltiu        t5, a2, -1873
                  addi         s9, s7, 449
                  and          t1, gp, s11
                  slt          a0, a3, a3
                  srli         s11, gp, 9
                  auipc        tp, 7550
                  andi         t1, gp, 1361
                  auipc        s3, 1001049
                  mulh         a4, a3, t2
                  sltu         t6, t1, t6
                  mulhsu       a6, s2, s8
                  remu         s0, t6, s10
                  slti         s10, a3, -249
                  divu         ra, s7, s10
                  slti         s5, a7, -195
                  rem          s10, gp, t4
                  nop
                  nop
                  sra          s2, s1, s10
                  sltu         a3, t4, a5
                  mul          s8, sp, t6
                  slt          s7, s2, gp
                  divu         s11, t0, a3
                  slli         s0, s2, 27
                  srai         s4, s1, 8
                  sub          t6, a5, a2
                  xori         t2, t2, 262
                  mulhsu       t2, a6, s5
                  ori          a2, sp, -800
                  slti         s0, t2, 1052
                  auipc        a3, 1025475
                  lui          a7, 104956
                  auipc        t2, 741213
                  srl          s8, a4, s9
                  andi         a7, tp, -73
                  andi         a6, a6, -730
                  ori          s0, t0, -458
                  slti         t4, t4, -1105
                  and          tp, a2, s2
                  sra          tp, t2, s3
                  xori         s9, zero, 1559
                  xori         s1, ra, 1114
                  addi         s6, s7, 1161
                  rem          s5, t3, t3
                  nop
                  sltu         a2, a7, a2
                  auipc        s2, 474691
                  div          s2, s9, zero
                  rem          a3, a2, s4
                  mulhsu       a3, ra, a7
                  mulh         s7, tp, t2
                  mul          t2, s6, s5
                  slt          a6, s6, t6
                  slli         a3, s9, 3
                  ori          a1, s10, -1258
                  auipc        s1, 436863
                  remu         a4, s2, a3
                  div          a0, a4, a3
                  div          a2, gp, a2
                  xori         a7, t5, 1194
                  xori         a6, s11, 2033
                  ori          t1, a4, -38
                  ori          s6, t5, 1934
                  slli         a7, a6, 20
                  sltiu        t4, s2, -921
                  lui          a1, 997244
                  lui          s9, 716984
                  sra          a6, s11, a3
                  slti         t4, t1, -14
                  sltiu        a4, s7, 1662
                  mulh         gp, s8, a6
                  srli         a6, t2, 16
                  lui          t6, 384920
                  mul          t6, a3, s6
                  nop
                  xor          s4, t4, a2
                  sub          s9, s9, t2
                  slt          a7, t2, a5
                  slti         tp, a0, 150
                  slli         t4, a2, 16
                  nop
                  sub          s9, a4, s1
                  srai         s1, s5, 14
                  srai         t5, a4, 31
                  mulhu        s7, a3, gp
                  divu         s4, sp, s1
                  slt          s3, ra, a2
                  sra          s6, t5, t0
                  slli         a7, s6, 30
                  or           t6, t3, a4
                  div          a1, a1, s6
                  sra          t6, s4, tp
                  divu         t2, zero, t3
                  srai         a0, a5, 26
                  mulhsu       gp, sp, sp
                  and          t1, a7, t2
                  divu         zero, a3, gp
                  srl          s5, tp, s3
                  and          a7, a0, gp
                  and          zero, t3, a1
                  rem          tp, s1, t6
                  div          a0, t1, a0
                  sll          s8, tp, tp
                  div          zero, s7, s2
                  mulhu        s0, t0, s2
                  xori         s10, s3, 563
                  slti         a1, sp, 1085
                  sltiu        tp, t4, -1502
                  sub          t5, a0, a1
                  ori          ra, a6, 1971
                  slt          s0, gp, s9
                  addi         zero, s4, -430
                  srl          s2, t0, s4
                  div          a5, s9, a1
                  nop
                  div          s10, a7, s0
                  mulh         zero, s0, t4
                  sltiu        gp, s2, 1044
                  xor          t1, zero, s4
                  xor          s10, t6, t5
                  sra          s5, s9, s3
                  xori         t4, zero, 29
                  nop
                  ori          a1, t5, -1316
                  div          s8, gp, sp
                  mulh         a3, t6, t6
                  xor          a6, t5, a2
                  remu         t4, t3, t0
                  and          s11, a7, a0
                  slli         s11, zero, 18
                  auipc        a5, 777024
                  div          s7, s11, a7
                  mulh         gp, s0, tp
                  mulh         a1, t0, s7
                  xori         a2, a6, 678
                  auipc        a6, 635812
                  ori          s3, t5, 1616
                  slti         a4, s2, -986
                  mulhu        a5, zero, s8
                  srl          a0, t1, s1
                  rem          a6, gp, s10
                  div          s11, gp, a2
                  div          t5, s3, gp
                  mulhu        s0, s5, zero
                  rem          a3, gp, a4
                  srl          t5, a5, a2
                  remu         a6, zero, s9
                  srai         t2, a6, 26
                  sltiu        t2, s4, 1985
                  lui          s4, 782809
                  mulh         a6, s9, s6
                  lui          t2, 273801
                  mulhu        s2, tp, s0
                  divu         zero, a3, t1
                  mulh         t2, a1, s8
                  sub          s3, a2, s10
                  srai         s10, t6, 24
                  slt          t5, a4, s8
                  sll          t1, t4, s5
                  nop
                  and          s7, s1, t4
                  lui          a5, 405327
                  divu         ra, a6, a5
                  sltiu        t6, a0, -770
                  slti         s4, gp, 1118
                  and          a7, s0, a4
                  mulhsu       t1, s11, s2
                  nop
                  sltu         s2, t5, t3
                  srli         s7, t2, 17
                  mul          s8, s10, t1
                  mulhu        t2, a4, a1
                  and          t1, s5, t5
                  srl          s7, t5, t2
                  srli         a0, a0, 28
                  mul          s9, tp, s2
                  auipc        a2, 43398
                  mulhsu       ra, s5, sp
                  srli         tp, zero, 21
                  slt          a7, s2, s3
                  slli         s10, gp, 22
                  rem          a6, ra, s9
                  andi         s7, t0, -119
                  slti         s5, s11, -379
                  sll          zero, zero, tp
                  mulh         a4, ra, s10
                  andi         s8, s9, 1435
                  div          a0, s9, a0
                  remu         a5, ra, s11
                  mulhu        s3, s1, t4
                  sltu         t1, s5, a4
                  remu         s8, a7, a7
                  srli         ra, s2, 15
                  divu         gp, s7, s7
                  mulhsu       s0, tp, t3
                  remu         s8, a6, s2
                  slti         t2, a5, 969
                  mulh         ra, t2, s8
                  nop
                  auipc        s3, 301824
                  xori         s4, t0, -1966
                  divu         a0, s4, s3
                  srli         gp, s7, 8
                  divu         t2, s5, a4
                  remu         a0, tp, s4
                  add          s0, t0, a6
                  lui          s11, 392535
                  sltiu        s11, t2, 132
                  mul          a3, a7, t1
                  srl          gp, s10, s9
                  sll          ra, a6, s3
                  mul          s2, a7, a0
                  andi         t5, s5, -311
                  andi         s4, gp, 1791
                  mulh         t6, a2, s10
                  nop
                  sub          s4, s1, ra
                  sub          s3, a2, a7
                  andi         tp, a2, 562
                  and          t1, s7, s6
                  ori          s1, t4, 549
                  and          s4, s6, t3
                  srai         tp, s10, 13
                  add          s2, sp, s6
                  mulhsu       a1, a4, a5
                  sll          s1, t2, s10
                  slli         a0, a6, 23
                  nop
                  mulhsu       a2, s0, tp
                  srai         tp, a3, 5
                  srl          t4, ra, s5
                  divu         t2, a1, s3
                  remu         a6, a6, tp
                  rem          s5, a3, t5
                  sub          a3, zero, t4
                  sub          a5, s6, ra
                  sra          tp, s3, tp
                  srli         s1, s7, 5
                  div          gp, s8, ra
                  auipc        a1, 137354
                  andi         s6, t3, -1542
                  mulhsu       gp, a4, zero
                  slti         t6, s2, -1916
                  xori         a3, s5, -960
                  addi         t1, a5, -78
                  sra          tp, zero, s1
                  sltu         s7, t2, s8
                  xori         s5, a4, 766
                  ori          s5, t3, -2006
                  nop
                  xori         a7, gp, -1486
                  sra          s10, ra, s5
                  mul          t1, s5, a0
                  mulhsu       t4, s8, a6
                  andi         s4, t1, -795
                  remu         s6, s8, s3
                  slli         s3, t1, 31
                  remu         s6, s2, a5
                  srl          s9, t6, s2
                  slt          a5, a0, sp
                  ori          s5, a1, -1997
                  srli         t4, t1, 0
                  mulhu        s7, s6, s9
                  and          a2, a7, t4
                  slt          t4, s11, a3
                  ori          a3, t0, -484
                  xor          s6, a5, t0
                  auipc        zero, 884323
                  addi         t4, t5, -1211
                  div          t4, tp, s4
                  rem          t4, a2, s7
                  srli         s7, s3, 21
                  slti         a6, s1, 393
                  slti         s11, t2, -52
                  and          s9, t4, a3
                  andi         s2, a7, -357
                  xor          a5, sp, a1
                  nop
                  sltu         a6, ra, s6
                  xor          ra, s4, t6
                  ori          t5, a0, 921
                  sra          a5, s2, s8
                  slt          a4, s6, t1
                  sll          ra, t5, a2
                  slli         a3, t2, 27
                  andi         t4, sp, 1600
                  mulhsu       zero, s8, t4
                  addi         s6, a4, 1773
                  mul          a1, a7, a4
                  sra          s6, a3, a7
                  andi         s6, a7, 345
                  add          s11, tp, s6
                  sltu         s3, s5, s7
                  sra          s11, a2, a2
                  addi         a5, s1, -1527
                  sltiu        t5, s9, 1827
                  lui          s10, 681809
                  sll          s3, s11, t5
                  divu         t4, t4, a6
                  andi         a2, s5, -1080
                  sll          t4, t1, ra
                  srai         s11, t3, 21
                  mul          s5, s9, zero
                  or           s10, s0, s6
                  mul          s6, s7, a1
                  and          a6, t1, a5
                  andi         s1, a6, 507
                  slt          t6, s4, t2
                  rem          ra, t1, a5
                  lui          a5, 773767
                  sltiu        t5, s6, -775
                  add          zero, s7, s4
                  and          a0, a6, zero
                  srl          a3, tp, t6
                  srli         a1, s8, 4
                  xor          a0, s9, s7
                  or           a4, t3, a1
                  sltu         a1, gp, a7
                  sltiu        s5, t6, 1653
                  nop
                  slli         s11, s10, 6
                  mulhsu       a4, s10, s3
                  sll          a2, t5, a6
                  remu         t5, t2, s10
                  srli         a4, t3, 31
                  sltiu        s10, s10, -283
                  slt          tp, a1, t5
                  div          a3, s9, s11
                  and          t4, t2, t6
                  mulhu        s1, s6, s6
                  mulh         a3, t4, a0
                  mulhu        s3, t5, sp
                  mulhsu       zero, tp, a7
                  addi         s10, s4, 610
                  ori          a1, s4, 1830
                  lui          t5, 570923
                  slti         a0, s5, -284
                  nop
                  lui          gp, 767430
                  addi         s8, a1, 539
                  addi         s1, a7, -734
                  div          t4, s7, s3
                  andi         zero, t5, 1103
                  sltu         gp, ra, t2
                  divu         t6, t1, s10
                  or           a3, s7, s11
                  mulh         a3, a3, a3
                  rem          a7, s4, t0
                  sra          ra, t5, s5
                  sra          s6, a6, a5
                  srli         s1, t4, 28
                  ori          s4, a3, 1056
                  sll          t2, s1, t6
                  nop
                  or           t5, s2, s9
                  mulhsu       s6, gp, t5
                  sll          t2, s3, s5
                  sltiu        s1, a1, -1325
                  mulhu        t5, t2, s11
                  rem          a6, tp, a3
                  lui          a7, 274092
                  sub          t6, gp, s8
                  slt          s0, a0, t3
                  sltiu        s7, a2, -1812
                  or           s4, s5, zero
                  rem          s9, s0, s0
                  mulhu        s5, s3, s7
                  srai         t6, ra, 16
                  xor          s7, sp, a3
                  xori         t2, s11, 1929
                  mulhu        ra, s0, t0
                  ori          s2, s3, -844
                  addi         t4, t0, 563
                  nop
                  xori         ra, s7, -1919
                  sra          s0, t2, a0
                  add          s4, t4, sp
                  div          t1, ra, s5
                  srli         a5, s4, 28
                  srl          s1, a3, a1
                  nop
                  auipc        ra, 458292
                  andi         s1, t1, 1603
                  slt          s2, t2, t0
                  nop
                  slti         s4, a0, -706
                  lui          s0, 262389
                  sub          a4, s7, sp
                  addi         gp, s3, 1510
                  slt          zero, t1, a0
                  auipc        a0, 825069
                  sra          a5, zero, a0
                  mulhsu       t1, s2, s1
                  xor          t1, t5, s1
                  divu         s8, s7, s10
                  slti         s3, s8, 449
                  ori          s2, t2, 318
                  slli         a6, t3, 6
                  rem          s5, t5, a5
                  slt          s3, ra, a2
                  addi         tp, s6, -1281
                  mul          s8, s3, a6
                  div          s10, a0, a6
                  addi         a2, t2, 1822
                  auipc        a2, 495626
                  add          s1, s2, s4
                  nop
                  mulh         t4, s7, zero
                  srai         a7, s10, 6
                  div          ra, s3, t0
                  lui          t2, 818070
                  add          s3, t0, s8
                  sll          t6, t0, ra
                  mulhsu       ra, a1, s3
                  sll          gp, s3, t2
                  rem          a1, t2, s2
                  srl          s7, s10, s8
                  divu         t2, s4, s9
                  auipc        t1, 23785
                  mulhu        t5, gp, s0
                  sub          s0, s5, s5
                  rem          s5, s9, a0
                  mulhu        s4, t3, t2
                  mulhsu       s2, s1, a5
                  srl          a3, s5, a2
                  divu         gp, a0, s11
                  divu         zero, ra, s8
                  add          ra, t4, t6
                  sra          s2, ra, s3
                  sll          a5, a3, s7
                  srai         tp, sp, 27
                  slti         a4, t0, -2001
                  slt          a3, s5, t4
                  sltu         zero, a2, t0
                  sltu         s1, zero, a5
                  ori          t5, t0, -28
                  srli         gp, ra, 27
                  xori         t4, t1, -1251
                  div          s4, t3, s4
                  mulhu        s7, gp, t3
                  auipc        a0, 372320
                  ori          s8, s1, 1321
                  andi         s2, s7, -391
                  slti         t4, s0, -1519
                  srl          a2, t3, s5
                  srai         a3, s7, 4
                  add          t4, s5, t3
                  sub          t6, sp, a2
                  srl          a0, s10, s7
                  mulh         gp, s4, s10
                  slti         s3, s6, 1880
                  srli         s3, ra, 26
                  add          s0, s8, t3
                  srl          t2, a1, gp
                  xor          t6, s1, t4
                  div          s11, s7, ra
                  div          s4, s11, zero
                  mul          s7, s0, a0
                  remu         t1, s11, t0
                  auipc        s7, 867932
                  andi         s10, a6, -1137
                  srl          t1, t4, s5
                  slt          tp, a6, t1
                  divu         s3, a1, a1
                  sub          a2, a1, a5
                  and          t4, s4, tp
                  auipc        a6, 670246
                  sltiu        s4, a1, 403
                  add          s10, s5, a2
                  mulhu        s5, t2, zero
                  xor          a3, a7, t1
                  mulh         s6, t5, a0
                  andi         s3, s5, 1932
                  slti         t4, zero, 1146
                  sra          t5, s1, s9
                  mul          a2, s1, gp
                  rem          s0, s5, a6
                  auipc        a0, 1001425
                  rem          a6, t3, zero
                  mulhu        a6, t4, t6
                  addi         tp, s11, 459
                  remu         s11, s9, s11
                  xori         a7, a3, 1115
                  and          t4, a4, t3
                  lui          s9, 312198
                  rem          t1, s6, t1
                  and          a6, s7, s10
                  sra          a3, a2, s3
                  sll          a6, a3, t1
                  divu         a6, s0, a2
                  sll          s7, tp, a5
                  and          s8, a5, zero
                  mulhsu       s11, s2, t4
                  add          gp, t2, s1
                  mulh         s8, a1, a3
                  andi         gp, s1, 552
                  sltiu        s1, zero, -102
                  sra          s11, s3, a0
                  ori          a1, a2, 1369
                  rem          s3, t2, s5
                  divu         s8, a3, a7
                  sll          s8, t1, s10
                  and          t6, a0, s11
                  srli         t5, a1, 29
                  addi         ra, s1, -385
                  srai         tp, s1, 5
                  mulh         s6, s1, a3
                  sltu         s10, a5, t2
                  srai         a4, a1, 27
                  rem          s1, sp, s5
                  ori          a2, s8, -1311
                  sltiu        a0, tp, -1727
                  mulh         t6, t4, t5
                  divu         s11, s9, s8
                  addi         t2, s11, -46
                  andi         s0, s9, 511
                  sra          a5, s11, s1
                  remu         s4, gp, t6
                  mulhsu       s4, a4, s9
                  remu         a7, s5, a1
                  slt          s7, s2, s11
                  sra          a0, s9, a3
                  slt          a1, sp, a5
                  sltiu        gp, sp, -1205
                  srli         s8, sp, 25
                  xori         t2, zero, -1644
                  ori          t4, a7, 151
                  sll          s11, t3, t6
                  andi         s5, t2, -2029
                  srai         t2, tp, 10
                  sltu         s9, s2, a0
                  addi         s2, a0, 563
                  or           a2, s7, t5
                  remu         a4, s3, s5
                  srli         a0, t3, 12
                  srai         s11, a3, 11
                  srai         t4, s5, 9
                  srli         s3, s2, 15
                  and          tp, t3, t6
                  ori          a3, t3, -1823
                  srl          a5, s8, s5
                  addi         t5, a0, -1596
                  sll          s8, t3, s9
                  srl          t2, s3, a2
                  srai         s7, s0, 19
                  remu         a3, s6, gp
                  or           a6, s3, s9
                  or           ra, s11, t5
                  sltu         a5, s7, a7
                  div          s6, t2, s11
                  mulhu        a4, a7, s2
                  slti         s2, s0, 407
                  remu         t6, a5, a1
                  and          s9, gp, t3
                  or           a1, s5, s2
                  mulh         a3, t4, s4
                  srl          s5, a0, a7
                  srai         a1, t2, 14
                  mulh         t2, s11, s6
                  remu         s1, tp, a5
                  sll          a1, s10, s6
                  slli         s6, sp, 25
                  slli         s4, sp, 15
                  mulh         t2, t2, a3
                  add          zero, t4, a3
                  sll          a7, a5, s9
                  srai         s7, ra, 29
                  divu         t2, ra, t6
                  srai         ra, s9, 25
                  xori         a5, ra, -1402
                  mulhsu       a5, s11, t6
                  andi         a5, a2, -1249
                  div          zero, a5, a0
                  srl          t2, s7, s2
                  and          a0, s11, t3
                  mul          s7, a1, s9
                  srl          t2, t5, a2
                  srai         t6, s6, 22
                  mulhsu       t4, s1, a4
                  ori          t4, a2, 1517
                  divu         a1, a1, t6
                  divu         s0, s10, s9
                  and          s3, s10, s6
                  addi         ra, a5, 567
                  auipc        s3, 989612
                  slt          a0, s8, s4
                  srl          s2, t0, a5
                  lui          t5, 734612
                  andi         s10, a3, -1415
                  sltiu        t1, s6, -1678
                  lui          t5, 882579
                  sub          s10, tp, tp
                  lui          a5, 817267
                  lui          s1, 944919
                  srl          s5, s6, ra
                  divu         s8, sp, s3
                  addi         a0, s1, 287
                  sltu         s6, s7, t6
                  sub          t1, s8, t4
                  sltiu        a6, a7, -1512
                  rem          s7, a7, sp
                  div          s10, a5, s4
                  mulhu        zero, s7, gp
                  rem          s6, s5, s10
                  mul          a3, a4, a6
                  add          s0, s3, t5
                  sra          a6, s5, s6
                  mul          s6, a5, a0
                  srai         a3, s7, 12
                  auipc        s3, 7134
                  sltu         ra, t5, s7
                  addi         s9, a0, 613
                  slli         t1, a3, 1
                  slt          t4, s9, s6
                  and          s8, gp, t1
                  srl          a1, t4, s7
                  divu         s6, s3, a3
                  mulhsu       s9, a0, t6
                  sltu         t4, sp, a4
                  auipc        gp, 930666
                  slti         ra, t0, -133
                  sltiu        t4, t1, 227
                  sll          t6, s8, t1
                  srl          s2, t5, a5
                  slt          s5, s1, s1
                  sub          s1, t4, s8
                  andi         ra, ra, -329
                  rem          ra, t2, a6
                  xor          tp, s2, s0
                  srai         a6, a0, 31
                  ori          tp, s5, 1877
                  xori         t2, a0, 1056
                  mul          t6, gp, a0
                  remu         s3, t6, s2
                  and          zero, s6, ra
                  remu         a4, s8, s3
                  mulhsu       s5, t6, s9
                  slli         s1, s10, 8
                  srai         s3, s7, 9
                  xor          a6, s0, t0
                  divu         tp, zero, t3
                  divu         a0, s7, a4
                  addi         t2, ra, -365
                  slti         a0, t6, 1039
                  slli         s5, s9, 30
                  andi         s0, a1, -1435
                  sltu         s7, a7, t0
                  add          a3, s2, a6
                  and          a5, s3, a3
                  or           a3, s3, a0
                  remu         s3, s2, s9
                  sltiu        a0, t4, -891
                  slli         s6, t0, 13
                  xori         s3, a3, -109
                  add          s6, tp, tp
                  sra          a3, t5, a6
                  and          t5, t6, s3
                  auipc        t1, 862424
                  lui          s0, 797831
                  ori          s4, s5, -1618
                  sltiu        tp, t2, 1221
                  remu         t6, s4, gp
                  mulh         a0, s7, a7
                  mulhu        a1, a3, t2
                  mul          s6, t5, s10
                  sltiu        s1, a6, -407
                  sltu         a0, t2, s7
                  add          s6, s3, a0
                  xor          s2, s2, t2
                  mulhsu       t6, t4, t4
                  lui          s6, 48409
                  nop
                  div          s11, s1, tp
                  add          a2, s4, zero
                  add          a3, s2, s4
                  xori         a7, t5, -1758
                  xori         t1, s2, -773
                  slt          t2, a0, a6
                  or           s0, sp, t4
                  sra          s3, s9, s7
                  slti         t5, s2, 1162
                  or           s0, a4, t1
                  xori         s2, t3, 1004
                  rem          s4, a7, t3
                  xori         t2, s3, -619
                  ori          tp, s1, -78
                  remu         a1, a7, zero
                  ori          a5, a7, -1239
                  rem          t4, sp, s4
                  or           s4, s0, a7
                  and          a0, sp, ra
                  sltu         zero, a0, a4
                  slli         t1, ra, 8
                  addi         t6, s0, -44
                  slti         a5, s8, -215
                  or           s4, ra, s9
                  srl          ra, s0, t6
                  slti         s8, s2, -666
                  add          s10, s11, a4
                  xori         tp, t4, -802
                  srli         tp, s2, 0
                  slt          a0, ra, tp
                  mulhu        t2, s5, ra
                  xori         s5, a5, -90
                  or           tp, s0, s11
                  srai         s0, tp, 11
                  xori         t1, gp, -1426
                  sra          gp, s2, a5
                  srl          s10, t6, a2
                  add          a4, s11, s7
                  slt          a7, s9, a0
                  and          tp, t0, a4
                  add          s9, t3, a4
                  mulh         zero, a2, tp
                  slli         ra, t3, 28
                  addi         t6, t0, 1777
                  add          s3, s8, t3
                  or           s3, ra, a4
                  sltiu        gp, a5, 740
                  lui          a5, 650279
                  mulhu        t4, sp, t3
                  addi         a5, s7, 1477
                  sub          t6, t6, a6
                  and          s2, s5, s11
                  div          s6, gp, t5
                  xori         t4, s5, 922
                  mulhsu       s11, ra, s3
                  or           t1, a3, t6
                  sub          s2, s8, a2
                  mulhu        s6, s7, a7
                  mul          a6, a6, a3
                  remu         a3, t4, a1
                  sll          a6, s10, s5
                  sltu         t1, a3, ra
                  sll          t6, a0, t4
                  nop
                  sra          a4, t0, zero
                  mul          a7, t3, s9
                  mul          t4, s6, t0
                  sll          s5, t2, tp
                  remu         t2, s4, a0
                  slt          t5, gp, gp
                  slli         s2, a0, 27
                  srli         zero, s6, 17
                  xori         t5, t4, -839
                  add          s10, t6, a1
                  div          a1, sp, s11
                  auipc        gp, 446764
                  nop
                  sll          s8, a1, s2
                  srl          zero, t2, s2
                  nop
                  xori         t1, t2, -938
                  div          a4, s0, s11
                  and          a7, tp, a3
                  divu         s6, a6, a7
                  srli         a1, a2, 29
                  sll          t4, s0, s0
                  slt          t6, s9, t6
                  slti         a1, a7, -82
                  sltiu        t1, s6, -1129
                  srli         a1, tp, 20
                  divu         s4, t3, t5
                  mulhu        a7, t3, t4
                  srli         s6, a6, 10
                  auipc        a4, 166760
                  xori         s2, s0, -1402
                  slli         a6, zero, 25
                  srl          a3, a4, s3
                  mulhsu       s6, t6, t2
                  srai         ra, a7, 20
                  auipc        s9, 560565
                  add          zero, s9, s8
                  sra          t2, s3, a7
                  and          s2, s5, a5
                  slti         a4, a6, 1758
                  mulhu        t5, sp, a4
                  ori          s11, s7, -727
                  mulh         a1, s1, s11
                  remu         s4, a6, s7
                  and          s11, t6, a2
                  andi         s11, t5, 1700
                  sltu         gp, s1, a3
                  mulh         a6, a2, s4
                  xor          ra, a4, ra
                  sub          a0, s8, gp
                  div          zero, t4, t2
                  slli         a4, sp, 15
                  mulhsu       a1, s5, s5
                  sub          t4, a7, zero
                  sltu         a7, s0, a5
                  sub          s4, a7, a2
                  mulh         gp, a1, t3
                  xor          t6, t5, a2
                  mulhu        t1, a0, s1
                  lui          a3, 811556
                  xori         s5, a5, -979
                  slt          t1, t0, s4
                  mulhsu       ra, s5, t0
                  or           t1, s2, a1
                  andi         s8, s6, 175
                  add          zero, s1, zero
                  add          s6, t2, a2
                  sltiu        t1, s8, -1191
                  lui          s10, 267061
                  srl          tp, a6, s5
                  mulhu        tp, t1, a4
                  sltu         ra, a1, t1
                  andi         a3, s0, 702
                  sltiu        s9, a6, -1072
                  sub          t4, ra, t1
                  nop
                  nop
                  div          s7, t4, t2
                  slt          s4, t0, s4
                  sll          a7, a4, s0
                  srl          a1, s3, t6
                  sltiu        s3, s2, 1259
                  mulhsu       s5, s9, s7
                  mul          ra, a7, tp
                  mulhsu       s2, tp, s11
                  sll          tp, a2, s4
                  sra          s6, s10, s7
                  addi         t4, s0, 761
                  andi         a1, s2, 685
                  sub          t4, a7, a2
                  div          zero, s5, s6
                  auipc        s10, 942779
                  ori          s3, a0, 1174
                  div          s5, t0, t3
                  sltu         s8, a7, s7
                  sltu         s8, s1, s11
                  sll          ra, s8, s2
                  ori          gp, ra, 1392
                  and          a1, a5, zero
                  sub          s5, a6, s2
                  sltu         t5, t5, t0
                  sra          ra, t6, s8
                  sra          a6, s0, s0
                  srli         s10, t6, 6
                  divu         a2, s2, a1
                  rem          s0, t0, a3
                  sra          t4, s3, s9
                  div          s5, a5, s5
                  rem          a1, t5, a0
                  slti         s7, t0, -134
                  and          gp, t1, s2
                  srli         t1, zero, 15
                  div          ra, s5, s4
                  sltiu        s2, s10, 979
                  lui          t6, 94289
                  ori          t1, gp, -1234
                  addi         a2, s4, 1541
                  or           s3, gp, sp
                  slti         a1, a2, -1620
                  remu         a1, a2, a7
                  ori          a7, ra, 223
                  lui          s10, 757637
                  add          gp, t4, s2
                  srli         a2, t2, 9
                  srl          s2, s9, s2
                  add          tp, s4, s6
                  sra          a6, s2, tp
                  sub          zero, t4, a5
                  slli         a5, t3, 21
                  andi         s4, a5, 130
                  sll          s5, s2, s5
                  andi         t6, s7, 1156
                  remu         gp, a3, zero
                  or           s10, a7, s1
                  and          a5, a3, zero
                  sub          t1, s11, a0
                  srl          s10, zero, t3
                  lui          t5, 792002
                  sll          s1, s0, s5
                  sra          t4, s3, t5
                  andi         t5, ra, -1354
                  mulhu        s11, a5, s6
                  rem          t1, a0, sp
                  sub          t6, t6, a3
                  sltiu        a1, t3, 382
                  auipc        t5, 132110
                  divu         t1, s6, s2
                  div          a0, t2, s0
                  sll          s2, t0, s8
                  andi         s11, a3, 1419
                  srl          t1, a3, a6
                  srl          gp, sp, gp
                  mulhsu       gp, a4, s2
                  srli         a5, t0, 27
                  srl          s8, ra, ra
                  auipc        ra, 846384
                  srli         t5, s8, 2
                  slti         t5, t2, 1384
                  sll          t6, t4, zero
                  sltiu        s3, t5, -913
                  srai         s2, t2, 18
                  rem          a7, a1, t5
                  addi         s2, a3, -403
                  slt          s1, s0, zero
                  remu         s4, sp, s2
                  or           t1, a3, t5
                  divu         s8, a2, s7
                  and          zero, s3, a1
                  sll          a1, s3, gp
                  srl          t6, t5, a3
                  nop
                  sub          a4, s1, tp
                  slt          s4, gp, a7
                  ori          a2, s1, -2004
                  srli         s2, s6, 22
                  slt          s6, s11, s3
                  srl          tp, s0, a4
                  ori          zero, zero, 209
                  sub          t6, s6, a1
                  slli         tp, s9, 20
                  sltiu        s11, t4, -16
                  and          a5, t5, a1
                  nop
                  divu         a7, s1, gp
                  slti         gp, s2, 1125
                  or           a5, t3, t4
                  remu         s8, a2, a3
                  mul          tp, a3, s10
                  slt          zero, s9, t1
                  sltu         s5, a7, s11
                  slt          a3, a4, ra
                  lui          a2, 109881
                  nop
                  mulhu        zero, a5, s7
                  divu         s7, s10, a5
                  sra          tp, s2, t5
                  srli         a0, t4, 3
                  mulh         s11, zero, s3
                  xor          gp, s4, s3
                  slti         zero, s8, -770
                  xori         s6, a6, -1831
                  mul          a7, t3, t5
                  remu         s4, tp, gp
                  mul          a6, s3, t3
                  srl          t5, sp, a3
                  mulhsu       t6, t6, s0
                  slt          s2, s4, t0
                  div          a5, zero, s9
                  sub          t2, ra, a3
                  mulh         s9, tp, t1
                  divu         s1, t1, t2
                  slli         a0, s1, 5
                  sltu         a0, s0, s1
                  or           t2, a3, a4
                  mul          s8, sp, s6
                  mul          gp, zero, s1
                  ori          s9, a0, -86
                  slli         a0, s3, 7
                  sra          t2, a7, t4
                  sub          s1, s10, t2
                  nop
                  slt          a5, tp, s6
                  mulhu        gp, a5, s4
                  sra          s8, a3, s11
                  slt          gp, t4, sp
                  slti         zero, t1, 2
                  mulh         s2, t2, sp
                  sra          s7, s4, t2
                  mulh         ra, t1, s7
                  srli         t2, t1, 26
                  and          s11, t5, s9
                  remu         t6, t6, a1
                  mulhsu       a6, t2, s8
                  sltiu        gp, tp, 1571
                  sll          a3, a1, gp
                  ori          a7, a7, 1439
                  sll          a7, s5, a4
                  sltiu        s7, t3, 1468
                  mul          t2, a2, a1
                  div          a2, a6, a2
                  sll          t2, s9, t4
                  sltu         t1, t4, a2
                  mulhsu       a0, tp, t6
                  remu         a1, t2, s2
                  addi         t6, a5, 123
                  lui          t2, 120489
                  mulhu        a7, s6, t0
                  add          a1, a7, s2
                  mulh         a7, a2, zero
                  add          t5, s1, s1
                  sltiu        s6, a5, 1442
                  srai         a3, t6, 4
                  mulh         s10, t5, s11
                  xori         t6, t5, -1251
                  srai         t1, s3, 9
                  or           tp, a0, t6
                  sltiu        a4, t5, 562
                  or           s11, t0, tp
                  sub          a2, a5, a4
                  lui          a3, 960472
                  rem          a7, a0, s2
                  slti         s2, ra, -1736
                  xor          ra, t6, s6
                  sltu         ra, a0, t1
                  slt          a1, t5, a6
                  divu         t1, s7, t2
                  slli         a6, a2, 25
                  slli         s8, t4, 7
                  addi         t2, t6, -1379
                  remu         t5, t4, t2
                  and          a0, a6, a3
                  mulhsu       s0, t3, s3
                  sltu         s5, a1, ra
                  and          a2, t5, sp
                  addi         s2, s10, 1768
                  nop
                  addi         ra, t5, 868
                  mulh         s8, s4, a1
                  sll          gp, s7, t1
                  mul          s1, s8, a6
                  srli         t2, a7, 5
                  sra          s5, s8, t3
                  sra          s2, s4, a7
                  add          ra, s7, a1
                  sltu         s1, t5, s3
                  mulhsu       a0, s9, tp
                  slti         s6, t1, 379
                  ori          s7, a1, 1866
                  nop
                  srl          t2, t5, zero
                  addi         s7, s4, -168
                  lui          s6, 405179
                  mulh         t2, gp, gp
                  div          ra, s3, a2
                  sub          s5, a1, s3
                  mulhu        s7, sp, s2
                  divu         tp, sp, a0
                  sll          s5, a3, a7
                  lui          zero, 799647
                  div          s0, a4, s5
                  sltiu        a0, t3, -1423
                  addi         a7, a7, 650
                  nop
                  srl          s9, t0, a3
                  slt          s10, s7, s9
                  srai         a0, t0, 31
                  divu         s9, t3, tp
                  andi         s4, a5, -94
                  lui          t1, 847115
                  rem          s7, a5, s1
                  mulhu        a2, t6, t3
                  div          a6, a7, s7
                  or           a4, s1, zero
                  div          s3, t3, t3
                  sub          tp, ra, s8
                  srl          s5, s6, zero
                  rem          a6, a0, t1
                  mulhu        ra, s9, t3
                  xor          s11, t3, s6
                  or           t2, s9, t4
                  rem          a1, s10, sp
                  addi         s9, t2, 604
                  xori         s2, s5, -1708
                  srl          t6, tp, s5
                  srai         a7, gp, 17
                  xori         zero, t3, 1433
                  sltu         a5, gp, s8
                  xor          s5, t3, t5
                  mulh         t6, s1, s5
                  mul          s6, t5, s8
                  add          s5, s7, zero
                  mulhu        t5, ra, sp
                  or           s2, s2, s10
                  divu         tp, a2, gp
                  add          s5, s9, s3
                  xor          t4, t4, t1
                  auipc        a0, 844119
                  nop
                  sub          s2, s0, gp
                  xor          gp, s10, t5
                  mulhsu       s8, gp, t0
                  sub          s10, s7, t6
                  divu         t6, s7, s7
                  lui          zero, 466791
                  sra          a3, s6, a3
                  mulh         s2, a4, s8
                  srl          ra, a6, zero
                  sltu         tp, s10, s4
                  sltu         s3, s8, s9
                  add          s2, s4, s0
                  sra          t4, s4, a2
                  mulh         s0, tp, tp
                  srl          zero, s0, t6
                  ori          t1, a6, 385
                  mulhu        t5, a4, s7
                  mul          a7, t4, s4
                  rem          s8, a3, s10
                  nop
                  addi         a7, zero, 1087
                  or           a4, s2, a5
                  andi         a2, t2, 2027
                  srl          t6, a7, t1
                  slli         a3, a1, 31
                  xori         zero, ra, 371
                  slt          s9, a2, gp
                  sltiu        s11, sp, 801
                  ori          s10, s0, 918
                  div          a4, s11, a4
                  sltiu        t1, s11, -172
                  mulhu        s3, s8, t3
                  slli         t6, s11, 16
                  addi         s11, a2, 1987
                  mulhsu       s4, a1, sp
                  or           s11, s6, s8
                  remu         s9, s3, tp
                  mulhu        s8, a3, a5
                  andi         s1, t4, -504
                  remu         tp, gp, s5
                  sra          s5, a5, a3
                  mulhsu       s11, s0, s9
                  slti         a7, s10, -1879
                  andi         s9, t3, -1426
                  slti         s5, s5, -849
                  sll          a3, a1, a3
                  mul          a7, zero, t6
                  or           s0, zero, a0
                  srli         s9, a2, 18
                  mul          s3, s11, a5
                  slli         s7, t4, 17
                  srli         s0, ra, 0
                  sub          s2, s9, s3
                  sra          s4, s7, gp
                  slli         t2, a4, 0
                  sra          a1, a4, s11
                  nop
                  addi         s1, zero, -1661
                  mul          a1, s3, t5
                  sra          t4, t1, s2
                  divu         s5, s9, t3
                  addi         gp, tp, 1960
                  xori         t2, t6, -806
                  divu         gp, s9, s9
                  srli         s1, s1, 5
                  mulhu        zero, a7, t4
                  sra          t6, s7, s8
                  sltu         s7, t4, s10
                  srai         s2, a2, 14
                  addi         s8, t3, -115
                  mulhu        t1, a6, s1
                  xor          s7, s3, t4
                  mulhsu       a2, zero, tp
                  andi         a3, s7, 1698
                  divu         t5, t4, a7
                  mul          a7, ra, t5
                  slti         t5, ra, 73
                  or           s5, t0, a3
                  andi         t1, s7, -1147
                  slli         tp, zero, 10
                  or           a2, t4, s11
                  mulhu        t5, t1, a3
                  mulhu        s5, s9, t3
                  sltiu        s11, t6, 720
                  sll          t5, t0, s6
                  mulhu        s5, t6, s0
                  andi         tp, a7, -2048
                  ori          t5, a0, -1485
                  lui          s3, 342204
                  xori         s3, s2, -1395
                  mulh         ra, s3, s7
                  slti         t4, t3, -979
                  mul          t5, s3, a5
                  slti         s3, s3, -1289
                  and          a1, s2, s3
                  lui          s10, 289225
                  srai         tp, a3, 30
                  xori         a5, s0, 1270
                  and          a6, s7, s9
                  slti         a6, s3, 684
                  ori          t4, s3, 2022
                  andi         s5, a2, -132
                  lui          s11, 231117
                  slli         ra, s9, 19
                  sll          t5, s1, zero
                  sltu         a5, t5, ra
                  rem          gp, t3, s7
                  and          s10, zero, t2
                  slli         s0, zero, 20
                  div          s9, s5, t1
                  div          zero, gp, s5
                  and          a3, sp, s1
                  or           t2, t2, s9
                  auipc        zero, 827186
                  sll          s10, s5, s0
                  sra          s2, a5, s1
                  sub          tp, t3, sp
                  srli         tp, t1, 31
                  slt          a6, a5, zero
                  sll          a2, s9, s4
                  lui          s9, 220626
                  or           s1, a0, t6
                  remu         gp, s5, t2
                  mulhsu       t1, s11, s10
                  nop
                  srli         a1, a3, 4
                  xori         s11, tp, -1109
                  div          gp, s6, a6
                  lui          s7, 919692
                  mulhsu       s1, s11, a4
                  andi         a6, a0, -433
                  add          ra, s5, a4
                  addi         s0, a2, 1530
                  sltu         a3, t3, t1
                  slt          s4, s1, s6
                  lui          s10, 709287
                  slt          a2, t2, a4
                  rem          s2, sp, gp
                  srl          a1, a0, a1
                  divu         a7, a0, s1
                  xori         a5, sp, 1151
                  sub          s10, s7, a7
                  sra          a4, t5, s6
                  auipc        a6, 1011369
                  nop
                  div          ra, t1, a5
                  slt          s9, t6, t0
                  lui          t1, 178389
                  srl          tp, zero, s11
                  mul          a4, s9, a7
                  mulh         s9, t1, a7
                  lui          a5, 681904
                  xor          a5, a1, a5
                  xor          s9, gp, a3
                  mulh         t2, t3, s3
                  sltu         a1, t3, a3
                  sltiu        a2, t3, 538
                  lui          a1, 577738
                  slli         a0, t6, 0
                  addi         s0, s9, -536
                  slli         a5, a4, 20
                  remu         zero, s0, s5
                  slli         t5, s3, 23
                  sub          s10, s5, gp
                  mulhu        t1, zero, a2
                  slli         s0, t5, 13
                  and          a4, t1, s10
                  xori         a6, tp, -543
                  mulhsu       s10, gp, s2
                  xor          t1, gp, s3
                  sltiu        s5, a4, -1818
                  mulhu        t5, t1, a5
                  nop
                  slli         a7, t4, 3
                  srai         gp, s0, 8
                  remu         s11, zero, s7
                  sra          gp, s1, s7
                  mulhsu       a6, s8, s5
                  or           s11, s1, s2
                  slli         s2, s7, 14
                  mulhsu       t4, s7, gp
                  remu         s8, t4, a4
                  lui          s4, 55570
                  srli         s6, a1, 0
                  andi         a7, a3, 1917
                  sra          s6, s0, t1
                  mul          s0, ra, tp
                  slt          s11, s10, t1
                  divu         s7, t4, s9
                  slli         ra, s3, 13
                  srli         a7, s2, 29
                  remu         a3, a5, gp
                  ori          s5, zero, -670
                  srl          a1, t6, s3
                  xori         s1, a6, 1758
                  rem          a1, s9, a3
                  mulhsu       s10, a0, a2
                  or           s3, s10, s11
                  sltu         a1, s5, t5
                  addi         tp, t5, 1370
                  slt          zero, s11, s3
                  mulhu        gp, t5, t3
                  xori         t2, a1, 519
                  divu         t5, t0, s0
                  mulhsu       s3, t4, s11
                  mulh         s4, a2, a3
                  srl          a3, sp, s3
                  auipc        s0, 366117
                  or           s7, gp, s5
                  srli         s7, a1, 23
                  slti         s0, zero, -974
                  rem          s7, s2, a2
                  sra          a5, a4, a1
                  div          a6, a7, s4
                  mulh         a4, t3, s5
                  srl          t1, s6, t4
                  mulhu        s5, t6, a2
                  add          t5, zero, s0
                  auipc        a2, 142243
                  sltiu        s0, t5, -1821
                  sltu         t1, t4, a5
                  rem          t1, a1, s7
                  sll          s2, s6, t2
                  lui          s11, 424248
                  sra          s6, a5, a2
                  andi         ra, s2, -7
                  slt          a7, t6, t0
                  srl          s3, a5, a6
                  mul          a6, t5, t5
                  xor          ra, t3, a5
                  srli         s2, tp, 28
                  sra          ra, t6, t5
                  mul          ra, s5, t6
                  remu         a1, a4, s7
                  sltiu        t6, sp, 903
                  sltiu        s6, t0, -1015
                  rem          s0, a4, s7
                  sltiu        a5, t1, 34
                  sltiu        s4, zero, 286
                  slli         a2, gp, 22
                  nop
                  sll          t4, a0, t3
                  xori         ra, s1, 107
                  srl          a0, s5, t0
                  divu         s10, a4, gp
                  sll          s4, gp, s1
                  sltu         t1, a0, a1
                  nop
                  mul          zero, s10, zero
                  addi         s10, s10, -1975
                  divu         s10, a0, t2
                  slti         a3, s0, -1635
                  rem          s5, sp, t5
                  srl          a1, a0, ra
                  add          s7, s11, a5
                  add          gp, t2, s9
                  or           s10, s6, a1
                  xori         t2, t2, 1687
                  divu         a3, t5, s8
                  slli         a4, s9, 30
                  auipc        gp, 218867
                  mul          a3, s3, s2
                  remu         s3, zero, s10
                  sub          a5, s9, t1
                  xor          tp, s3, s2
                  srli         a3, s0, 20
                  rem          a1, a4, a5
                  slli         s8, a3, 14
                  auipc        s8, 621689
                  auipc        gp, 815556
                  slt          a7, tp, s1
                  slt          s1, t3, s4
                  add          a6, a6, t4
                  srli         tp, t0, 8
                  rem          zero, s1, ra
                  addi         s3, a7, 481
                  and          a2, s1, t5
                  mulh         s6, s8, t3
                  sll          a5, a4, s1
                  mul          zero, s9, gp
                  divu         t5, gp, s8
                  addi         s5, t6, -736
                  slti         t6, t5, -1350
                  ori          t4, s3, -865
                  slti         t5, t5, -411
                  add          ra, s0, a0
                  andi         s9, s10, -1591
                  sltu         t2, a6, ra
                  divu         a3, s1, t0
                  divu         s10, t3, s9
                  auipc        s6, 699453
                  and          t6, t5, t0
                  auipc        s2, 215041
                  sub          s10, s5, s3
                  auipc        s9, 694497
                  mulh         s10, a7, s0
                  slti         a7, gp, 320
                  mul          t1, s10, t0
                  sll          ra, s3, t6
                  mulhsu       a6, t6, t5
                  slt          t5, s8, s5
                  srl          zero, s7, t3
                  mul          t5, zero, s5
                  sub          a4, s10, s0
                  mulhsu       a0, s0, a4
                  mulh         a5, t3, s6
                  srl          a2, t6, t6
                  or           s5, sp, s11
                  srl          ra, sp, s11
                  and          t2, a4, t5
                  xor          s10, sp, s9
                  mulh         t2, t1, s2
                  sll          gp, ra, s7
                  rem          s5, a0, a6
                  mulhu        s9, s11, ra
                  srli         ra, s10, 24
                  sra          a3, t1, t4
                  rem          a3, a0, s1
                  div          tp, t1, s7
                  sltu         a7, t0, t6
                  ori          a4, t3, 224
                  div          a2, s1, s8
                  mul          s9, sp, a3
                  mulhsu       a7, t1, t6
                  lui          tp, 211395
                  remu         a3, sp, zero
                  srli         a7, sp, 17
                  ori          s5, t5, -1673
                  divu         s7, gp, zero
                  and          a3, t2, s1
                  xori         t6, a4, -405
                  sub          a1, a2, zero
                  or           gp, s5, t4
                  and          t6, a6, s1
                  nop
                  sra          t6, s6, a6
                  mulhsu       a5, t4, s6
                  mulh         a0, zero, s4
                  sll          gp, s5, s7
                  add          a4, s8, t6
                  sra          ra, s7, s5
                  lui          t6, 510527
                  slli         tp, s6, 23
                  sltiu        s2, zero, -584
                  mul          t4, a2, a4
                  sll          a5, a0, a4
                  ori          s0, s9, -1646
                  or           s6, a0, zero
                  slli         s8, s0, 18
                  slli         t5, t3, 6
                  mulh         s9, s0, a3
                  slti         s4, a5, 1277
                  sll          a3, a5, s10
                  sub          gp, t5, t2
                  slli         gp, s7, 30
                  sltu         a5, a3, a7
                  sltiu        a5, s3, 227
                  divu         s9, s5, s1
                  andi         a4, s9, -935
                  div          t4, s7, s9
                  mulhu        s5, s9, a5
                  mulhu        s11, t3, t1
                  slt          s2, a6, ra
                  mul          s7, s7, zero
                  sltiu        s1, a2, 278
                  srl          s8, sp, s8
                  srai         s6, t1, 7
                  auipc        a0, 987652
                  sll          s10, a7, gp
                  slti         t5, sp, 278
                  lui          a2, 503457
                  sub          a6, a4, t0
                  slli         s8, s0, 11
                  mulh         s9, s1, t1
                  and          s1, s9, t1
                  srli         s8, t3, 0
                  lui          t2, 528351
                  ori          s2, s3, 1991
                  slti         a4, s2, 1682
                  auipc        a3, 478157
                  mulhu        t4, zero, t0
                  lui          a5, 450422
                  mulhu        s2, s0, t6
                  add          a3, s5, s1
                  slli         s7, s3, 0
                  slti         t4, a0, 2026
                  sltu         a2, tp, s4
                  xor          t6, s4, tp
                  slt          t4, s3, a5
                  nop
                  div          t2, t3, t6
                  mulhu        s8, a4, s6
                  remu         t5, gp, a5
                  lui          tp, 516253
                  mul          a5, s11, a7
                  and          t4, s8, tp
                  sll          a6, a2, t4
                  xori         t6, t0, -814
                  ori          s0, s5, 873
                  rem          a4, s1, a7
                  sltu         a5, a0, t2
                  rem          t1, s11, a2
                  slti         s2, tp, -1107
                  nop
                  srl          s2, s5, s11
                  sltu         s5, a4, gp
                  sra          a7, a7, t3
                  and          t1, s3, a5
                  addi         s2, a1, 668
                  sltu         a0, zero, a6
                  andi         tp, t1, 2012
                  andi         t5, s1, -218
                  srai         a2, s8, 16
                  mulhsu       t1, t1, t0
                  sub          s6, sp, a4
                  add          a7, s11, ra
                  nop
                  srl          s8, tp, t3
                  addi         a2, t5, -382
                  remu         a7, tp, t6
                  andi         a0, zero, 902
                  srl          a0, s2, a0
                  sltu         gp, s4, a0
                  add          gp, gp, ra
                  slti         gp, s5, 564
                  or           s0, t4, s1
                  nop
                  add          zero, a1, s9
                  div          t4, sp, s6
                  addi         a1, zero, 1243
                  srli         s7, zero, 9
                  sltiu        ra, sp, 448
                  remu         ra, t0, s3
                  srli         s6, t0, 28
                  nop
                  slti         s0, t3, 1097
                  xori         gp, t0, -1386
                  slti         a7, t0, 1364
                  slti         s9, a5, -405
                  lui          tp, 795939
                  auipc        s10, 313164
                  and          s8, tp, a5
                  slti         zero, a4, -689
                  mulhu        t4, a2, s9
                  divu         t5, t3, t0
                  mulh         a7, s11, a7
                  add          a7, a6, s3
                  remu         s0, s8, s10
                  srl          t4, s10, sp
                  slt          s11, sp, s4
                  slti         t5, s0, 1747
                  slli         s9, s8, 4
                  rem          s5, zero, s2
                  lui          s10, 544579
                  andi         zero, ra, 1854
                  srli         s8, t3, 17
                  srli         a0, s3, 19
                  auipc        s2, 723762
                  ori          a0, t1, 907
                  sltiu        tp, a5, -707
                  divu         tp, s0, t1
                  mulh         t6, s8, s3
                  divu         t4, s0, s10
                  or           a5, s5, a3
                  slti         a3, a2, 405
                  auipc        t2, 966193
                  addi         a0, a4, -1722
                  rem          s4, t2, s1
                  mulhsu       s7, a0, t0
                  xori         tp, t3, -1789
                  addi         s11, t6, 1028
                  sll          zero, t5, s3
                  mulhsu       t6, s3, s4
                  srai         a3, t3, 15
                  or           s8, s10, t1
                  mulh         s3, s6, a5
                  srl          zero, a7, zero
                  mul          zero, a0, s6
                  remu         zero, gp, s5
                  sra          s5, s11, gp
                  sra          s11, a1, s8
                  xori         a2, s5, 862
                  ori          t1, s7, -997
                  ori          a4, a7, -1419
                  andi         gp, sp, 1724
                  remu         tp, s0, s6
                  or           t4, a1, a3
                  add          a6, zero, t4
                  mulhsu       s1, s9, t6
                  rem          ra, a0, s8
                  andi         a6, s10, -247
                  srl          s3, s9, s2
                  srli         a2, s1, 15
                  add          zero, s9, a2
                  mul          s3, t4, a7
                  srai         s10, s5, 13
                  rem          s0, a4, s11
                  mulhsu       a5, tp, s6
                  nop
                  auipc        s8, 532891
                  slti         a7, s6, -704
                  ori          s1, sp, -2
                  add          a5, a4, gp
                  xor          s0, gp, a3
                  mulh         a7, s9, a2
                  or           t5, a0, t1
                  divu         ra, t4, t6
                  xori         t4, a7, -1245
                  divu         gp, s7, t1
                  mulh         s1, sp, s3
                  srli         t5, t5, 3
                  mulh         t4, zero, s10
                  div          a0, s4, s9
                  srai         a7, gp, 24
                  auipc        ra, 887500
                  sltiu        s4, zero, 486
                  sub          s5, s5, t2
                  xor          s4, t2, zero
                  slti         s0, s2, 1824
                  srl          a2, s8, s3
                  srl          s8, zero, s1
                  srli         s2, a6, 11
                  sltiu        s1, t5, 507
                  slt          zero, s5, tp
                  xori         a6, t3, -606
                  sltu         ra, s9, tp
                  lui          t1, 281953
                  xor          t6, t3, a4
                  or           a4, t0, s5
                  xori         a6, t6, 1173
                  mul          t5, s3, t6
                  xori         a2, sp, 1721
                  sltiu        s5, t4, 473
                  xor          s4, zero, t4
                  remu         s5, s1, t3
                  mulhu        s7, a1, a0
                  div          t5, a3, s9
                  sub          t5, s10, gp
                  andi         a5, s7, -1681
                  xor          t4, a5, zero
                  or           t2, s6, s9
                  add          a6, s3, t0
                  sub          a4, s2, gp
                  mulh         s11, s8, t5
                  add          ra, zero, t3
                  sra          t4, t6, a2
                  xor          t4, s3, a2
                  sltu         tp, s6, s0
                  ori          a2, a3, -1223
                  ori          s5, a4, -918
                  addi         a0, a4, -1005
                  srl          s11, s9, s9
                  sra          s10, ra, t6
                  ori          s4, gp, 693
                  mulhsu       gp, s3, s7
                  slti         t2, a7, 861
                  sra          t5, t0, zero
                  and          gp, sp, t3
                  or           t5, a7, ra
                  sll          s9, t6, t1
                  auipc        s6, 209085
                  sub          s11, ra, s11
                  mul          ra, s8, t2
                  divu         a0, a2, gp
                  xor          zero, ra, ra
                  slti         tp, a7, -26
                  nop
                  slt          a2, a5, s5
                  rem          a6, ra, sp
                  sub          s1, a6, s3
                  nop
                  nop
                  or           s9, s10, s8
                  slti         a5, a6, -1363
                  divu         a4, t4, t6
                  lui          s1, 276860
                  mul          s5, t5, s10
                  div          s8, s8, a4
                  mul          t1, s5, s11
                  and          a0, s3, s0
                  addi         t6, s6, -658
                  remu         t2, t2, s1
                  slt          a3, a2, t5
                  xori         s6, t1, -1073
                  srl          s4, t3, t5
                  and          t2, s7, t2
                  mulh         t6, zero, s6
                  remu         s2, t0, t6
                  mulhsu       a7, s9, s7
                  ori          s8, s10, 1697
                  nop
                  xor          a1, s10, s7
                  remu         a2, s0, s0
                  slti         s1, s0, -1609
                  slti         a2, t1, 723
                  divu         gp, s10, t0
                  add          s1, s2, s1
                  slli         s9, a4, 28
                  remu         s4, t4, a3
                  srai         s2, s1, 20
                  or           s1, tp, a6
                  slli         t2, gp, 24
                  srli         s3, t2, 9
                  srai         a6, t6, 22
                  ori          a1, t5, -908
                  mulhu        s4, a6, a4
                  sltu         s7, s10, ra
                  slt          s3, gp, ra
                  or           a0, s8, t6
                  lui          a2, 516610
                  sltu         a5, a4, a1
                  srl          s2, s5, a5
                  sub          s1, a4, a1
                  sub          a2, s10, t2
                  xor          zero, a4, a6
                  lui          s9, 381815
                  srai         t2, a4, 21
                  andi         a7, a1, 1816
                  sltiu        s11, tp, -876
                  xori         a3, a7, 821
                  srl          a4, s9, t5
                  andi         a3, s1, 372
                  or           s8, t6, a6
                  mulhsu       s1, s5, a4
                  srl          s10, s4, s9
                  rem          s7, a6, s10
                  div          ra, a3, a0
                  srl          a6, s2, tp
                  lui          t4, 551274
                  mulh         a4, s3, s11
                  rem          s8, s4, a2
                  slti         gp, s6, -104
                  slt          t6, t3, t4
                  auipc        s7, 901311
                  and          tp, a1, s8
                  slli         s4, s8, 10
                  divu         a0, gp, s0
                  auipc        s4, 458013
                  xori         s9, a6, 1204
                  sltu         s11, s10, gp
                  slti         a1, a5, -1165
                  srli         t2, t0, 3
                  nop
                  addi         a1, s9, 1778
                  div          t2, s5, a1
                  sra          a0, tp, t0
                  srli         zero, t0, 19
                  slt          s2, s11, a5
                  sltiu        s5, s7, -1486
                  add          t6, t2, s4
                  rem          ra, s3, a7
                  mulhu        t5, s5, a7
                  srai         a6, s2, 15
                  slt          zero, a2, t3
                  lui          s2, 874981
                  xor          s10, s4, s11
                  lui          t2, 273502
                  slti         s3, s11, 1020
                  xor          t4, ra, tp
                  sub          s7, sp, a4
                  ori          s9, a3, 116
                  andi         t1, gp, 1120
                  auipc        s5, 8767
                  auipc        tp, 846130
                  remu         s4, t4, gp
                  lui          ra, 184442
                  auipc        t2, 327756
                  sub          gp, a4, a7
                  srai         a2, a0, 22
                  sltiu        ra, s6, 1310
                  addi         t2, t3, 1574
                  srl          a3, s5, s10
                  mulhsu       a0, t1, a2
                  sltu         a4, s0, t0
                  mul          t1, t0, s8
                  sltiu        ra, s10, -984
                  slt          t2, s0, zero
                  addi         s4, sp, 679
                  mulh         s2, s4, a6
                  srli         a3, a6, 29
                  nop
                  auipc        gp, 714464
                  nop
                  srai         s9, gp, 18
                  xor          a5, a5, s1
                  auipc        a0, 634731
                  srli         a6, s8, 20
                  mulh         tp, s8, a0
                  divu         a2, zero, tp
                  or           s10, s6, s11
                  slt          a6, gp, t5
                  sra          s1, s6, a3
                  auipc        a3, 499770
                  slli         s7, zero, 4
                  ori          t1, s9, -1664
                  and          t1, s1, a2
                  slt          a3, s4, a0
                  sra          a1, tp, s0
                  or           s5, s10, s5
                  or           s4, a1, s1
                  srl          s8, s9, s7
                  srli         t6, tp, 7
                  xori         a6, s7, 334
                  rem          s1, t6, gp
                  nop
                  andi         a4, a0, -238
                  srai         s10, a5, 9
                  auipc        tp, 271815
                  slli         a7, a1, 31
                  mulhu        a5, t1, a5
                  sll          s5, s1, s4
                  ori          zero, t1, 1279
                  and          t2, t0, t3
                  and          a5, s6, t6
                  slt          a0, s1, s6
                  div          a5, ra, t5
                  addi         s3, a6, -2008
                  slli         tp, t4, 12
                  xor          s11, a7, t2
                  or           t1, t6, a4
                  andi         a7, s10, 54
                  rem          a1, gp, t2
                  ori          t5, sp, 57
                  andi         a4, s5, -240
                  slli         zero, t0, 2
                  slli         s0, t6, 25
                  mul          s3, s1, a4
                  xor          gp, a1, zero
                  mulhsu       s11, s7, s7
                  andi         s0, t0, -102
                  mul          s2, s1, a0
                  sltu         t4, s8, gp
                  slt          tp, t5, s6
                  sll          t4, s0, s11
                  srl          s6, t6, s8
                  sltiu        s10, ra, -1382
                  addi         s3, s1, -1442
                  rem          ra, s0, ra
                  mulh         gp, s4, s5
                  or           s10, a1, t3
                  lui          a1, 688658
                  slti         tp, s1, -1568
                  srli         s1, ra, 26
                  sltiu        zero, s1, -1799
                  mulh         a3, a6, s5
                  mulh         t5, s9, a5
                  srli         tp, s8, 16
                  add          t5, sp, a4
                  sltiu        a5, tp, -759
                  sltiu        s6, s10, 1166
                  addi         s5, t6, -845
                  sra          s1, s5, s8
                  and          s7, s9, t1
                  mul          s1, a3, a5
                  divu         gp, a6, s3
                  slti         a2, s4, -580
                  mulh         t2, s2, a2
                  srai         t1, t5, 27
                  sub          s1, s0, tp
                  mulh         a5, s2, s11
                  div          t4, s3, a5
                  divu         ra, tp, t3
                  div          a0, s0, s9
                  xor          t5, sp, t2
                  add          s3, a2, s4
                  andi         a5, t5, -1128
                  sra          a3, s1, t6
                  sltu         a2, s10, s0
                  xor          s6, s8, t3
                  srl          s6, s8, t2
                  xori         s4, ra, 674
                  srli         gp, s11, 30
                  divu         a3, a6, s9
                  xori         t4, t3, -524
                  div          ra, t2, a3
                  add          s11, tp, a5
                  sra          s2, sp, s4
                  sltiu        ra, a2, 136
                  ori          gp, gp, 1071
                  andi         ra, t4, -2022
                  mulhu        a4, t0, s8
                  remu         t5, s6, t0
                  sub          tp, t5, t3
                  and          tp, gp, s10
                  sltu         s0, zero, zero
                  rem          t5, s6, s8
                  mulhu        a4, t0, a3
                  add          s10, s11, s1
                  mul          s6, a5, a7
                  divu         a7, a5, ra
                  addi         s7, ra, -1208
                  add          s1, s6, s10
                  slli         t2, zero, 5
                  mul          s6, t2, t5
                  mulh         ra, s9, t2
                  slli         a2, a5, 0
                  slli         t6, s3, 18
                  sub          zero, t1, s5
                  mulhu        s6, s8, a3
                  mulhsu       a3, s10, t4
                  xor          a2, s2, s5
                  or           s0, s5, a0
                  lui          t5, 863237
                  remu         s2, s2, t5
                  add          a6, a5, tp
                  ori          t2, gp, -1995
                  xor          s10, a0, a4
                  sra          s2, t1, a0
                  sra          a5, s2, t5
                  add          s2, s4, ra
                  mulhsu       s11, t3, t4
                  auipc        t5, 661401
                  auipc        s5, 587381
                  xori         s3, t1, 1970
                  rem          a4, ra, ra
                  div          s3, s6, t5
                  add          s1, t1, ra
                  mul          tp, s3, t5
                  mulhsu       s2, t1, gp
                  ori          a0, s6, -392
                  add          a6, a7, t2
                  ori          a2, s0, 1872
                  sra          t5, t1, a1
                  lui          a1, 485855
                  lui          t6, 116857
                  mulh         a2, gp, a7
                  sra          s7, a4, a3
                  lui          a3, 33774
                  sub          a1, a6, a7
                  xori         s2, ra, 1742
                  or           a3, s4, t6
                  mulh         s4, t6, a3
                  and          zero, t1, t5
                  rem          s8, t5, s8
                  and          gp, a2, a7
                  auipc        gp, 94025
                  srli         a5, a2, 18
                  srli         s5, t2, 22
                  slli         a2, s7, 19
                  nop
                  xori         ra, t4, -1248
                  mulh         a6, gp, s4
                  sll          tp, t1, t4
                  add          s9, s2, ra
                  slti         a3, tp, 564
                  auipc        s0, 91650
                  or           s7, s4, t6
                  or           s5, a5, a2
                  or           tp, ra, tp
                  sll          s11, a4, gp
                  srli         t1, s7, 13
                  mul          a7, a2, zero
                  xori         t6, t4, 104
                  srli         a7, sp, 6
                  ori          a7, t6, 76
                  mulh         s11, s5, sp
                  xor          gp, a4, a5
                  sub          s2, a3, s4
                  lui          s8, 654879
                  lui          s7, 1034319
                  mulh         t2, zero, gp
                  mulhu        t1, t2, t6
                  sltiu        t4, a6, 130
                  mulhsu       gp, s2, a3
                  slti         s10, a1, 1725
                  divu         s6, t2, s2
                  sltu         s10, s7, a4
                  slti         t1, a1, 1698
                  auipc        t4, 153288
                  remu         t5, a2, t0
                  srl          t5, s6, tp
                  srl          a7, a0, s0
                  mulhu        a7, a7, s11
                  auipc        s5, 330181
                  srl          t6, zero, s5
                  divu         tp, t0, s9
                  srai         a3, zero, 24
                  slti         s0, a0, 1570
                  srai         tp, t0, 30
                  sltu         s4, s10, gp
                  lui          s2, 670464
                  sra          s4, s10, s8
                  sltiu        a0, s8, 249
                  slli         s6, a2, 17
                  mulhu        a1, a0, a0
                  sra          s1, t2, t0
                  sltiu        s8, ra, 208
                  mulhu        a1, s2, a7
                  andi         s11, t1, 1388
                  rem          a2, t3, gp
                  remu         s0, gp, s6
                  and          s7, t5, s1
                  sltu         s2, a1, t1
                  sltu         a4, t2, s2
                  xor          ra, a1, t4
                  andi         a3, gp, 1704
                  sll          a5, s11, s9
                  slt          t5, s1, s1
                  rem          a2, s8, s6
                  lui          gp, 658856
                  div          a4, t5, tp
                  and          s11, gp, a5
                  sra          t5, a7, t6
                  nop
                  andi         a2, t6, 1998
                  xori         a0, a7, 1608
                  mul          s5, a4, s1
                  div          tp, a0, a7
                  sub          s3, a2, s7
                  addi         a4, tp, 1485
                  mulhsu       s1, s6, a1
                  slti         a5, s10, -629
                  or           ra, t1, t3
                  ori          a7, ra, -1341
                  add          a4, a7, t5
                  sltu         a6, s11, a4
                  sltiu        a5, a4, -966
                  sll          t6, t1, a3
                  addi         s4, sp, -1702
                  addi         t1, a0, -107
                  add          s8, a0, a1
                  slt          s5, t0, s7
                  sltu         t6, t3, a1
                  add          a3, t3, ra
                  xor          s8, a6, a0
                  div          s11, a5, s8
                  xori         s1, a6, 1132
                  auipc        s7, 12872
                  auipc        s11, 71832
                  rem          s2, t5, t2
                  rem          s11, s3, t0
                  slt          t6, s2, t4
                  sltu         t4, t2, s10
                  srl          a2, tp, a4
                  slli         s10, t3, 16
                  sltiu        s5, s2, 1788
                  sub          t4, sp, s3
                  mulh         t1, a6, t5
                  sltiu        s4, zero, 1794
                  auipc        a0, 650655
                  rem          t4, a3, ra
                  remu         t4, t5, t5
                  nop
                  remu         zero, s0, s0
                  xor          s8, a6, a1
                  lui          ra, 160315
                  addi         a1, s0, 932
                  andi         tp, s2, -1685
                  sra          a1, tp, a7
                  add          gp, t1, t0
                  sltu         t2, s4, zero
                  mulh         t6, s10, a7
                  xori         s11, s2, -1692
                  slli         s0, s7, 18
                  and          s9, s5, sp
                  srl          s0, s2, s0
                  sltu         s6, s7, gp
                  srl          s4, s6, s0
                  or           s7, s11, a2
                  srli         a3, t6, 1
                  divu         s0, s5, s4
                  div          s5, t5, ra
                  andi         s5, zero, 1458
                  lui          a4, 556936
                  sltiu        ra, gp, -942
                  mulhsu       s3, s7, a3
                  ori          a3, s7, 1335
                  slli         s3, s4, 9
                  mulhsu       s8, a2, s8
                  mulh         s7, s1, t2
                  mul          a3, t1, s9
                  srai         t5, a7, 19
                  mulhsu       a1, a0, t0
                  nop
                  sltiu        t5, a1, 1534
                  lui          a2, 289571
                  mulh         s10, t0, s6
                  remu         s0, ra, s1
                  and          a7, gp, a0
                  sub          s8, s0, t0
                  remu         a7, a7, a3
                  nop
                  sll          zero, gp, tp
                  slti         t2, s11, 1303
                  srl          s3, t5, s8
                  andi         s8, s6, 789
                  lui          s1, 623977
                  sra          a4, s4, t2
                  sra          a4, s9, a3
                  nop
                  add          s8, t0, a1
                  andi         a3, s8, -1856
                  rem          s0, s10, s6
                  lui          s6, 235515
                  or           zero, s4, a6
                  sub          a3, zero, s0
                  add          a4, a6, s7
                  or           s1, s9, tp
                  srli         s4, s8, 24
                  and          t6, s1, t0
                  srli         s2, tp, 27
                  ori          s11, s2, 856
                  xor          tp, t1, s5
                  slli         s7, t6, 13
                  nop
                  mulhu        s0, t5, t6
                  mulh         a2, a1, t4
                  andi         a4, t0, 1234
                  auipc        zero, 910553
                  divu         s7, s2, s9
                  ori          s0, a4, -849
                  srli         a3, tp, 21
                  mulhsu       a6, t3, s1
                  slt          s0, t1, gp
                  andi         t2, t1, 819
                  mulhu        t4, t4, a0
                  mul          zero, a0, s11
                  sltiu        s4, s4, 743
                  srai         s2, t2, 1
                  srai         tp, zero, 16
                  div          a5, s1, zero
                  div          s5, t3, a5
                  srl          s9, a5, t4
                  ori          a4, s7, 499
                  mulh         a0, a7, t2
                  sltu         t4, s3, a2
                  remu         a2, s11, a7
                  mul          t1, tp, t0
                  addi         a1, a6, 936
                  sltu         a1, a4, a7
                  auipc        a2, 902683
                  sra          s0, s8, s8
                  mulhsu       s10, zero, ra
                  srl          t1, a5, s6
                  lui          s5, 294144
                  addi         s10, s4, -1142
                  lui          a6, 348653
                  divu         s5, t0, s0
                  addi         s4, a6, -957
                  mulhu        gp, a2, a1
                  div          a3, s4, a3
                  auipc        s2, 878806
                  auipc        t5, 372420
                  slli         t2, a5, 31
                  add          a3, t5, a0
                  srl          tp, a2, s7
                  mulh         s2, s4, t4
                  sll          a0, s4, t5
                  sltu         s3, t1, a2
                  sltu         gp, s2, a3
                  divu         s6, s7, s5
                  xori         a7, gp, 226
                  srli         s0, t4, 31
                  sltu         zero, s9, s5
                  xor          a7, t5, ra
                  and          tp, s3, s2
                  divu         a6, t2, t4
                  divu         a5, t0, s7
                  srai         t1, s4, 27
                  auipc        a4, 699179
                  sra          a7, ra, s8
                  sltu         a6, s6, ra
                  srl          ra, a0, s2
                  div          s8, s4, s11
                  slti         s9, a5, -252
                  srl          s7, s10, ra
                  sra          s6, a1, t0
                  mulhu        t4, a7, s10
                  ori          t6, a4, 148
                  mulh         s11, a3, t1
                  slli         a5, a4, 17
                  nop
                  xor          a6, a7, s11
                  xor          s8, t6, zero
                  sra          t5, a3, sp
                  mulhu        t5, s10, s11
                  sll          gp, s1, t4
                  sltiu        tp, sp, -470
                  add          t6, t1, s2
                  sub          a4, s4, s7
                  slti         t1, s2, -1818
                  lui          s1, 186142
                  sll          s9, a7, a7
                  lui          a3, 578098
                  addi         s0, t2, -1518
                  sra          s6, a5, t4
                  mul          s5, s3, s9
                  mul          s3, ra, a3
                  andi         s11, gp, 1441
                  remu         t5, s1, s8
                  auipc        t2, 345856
                  slt          s7, t6, s9
                  sltu         s9, s2, s5
                  nop
                  div          s1, a6, zero
                  srai         tp, sp, 24
                  mulhsu       a7, a0, ra
                  xor          s4, s1, a6
                  add          s7, t3, t5
                  addi         s6, t3, 1837
                  sltu         s2, a0, a4
                  sltiu        s1, a7, -1787
                  rem          zero, a0, s7
                  sra          ra, a6, a6
                  nop
                  slli         s8, s10, 14
                  mul          t5, s2, s0
                  sll          t5, s5, a5
                  sltiu        a4, s0, -340
                  mulhu        zero, s6, a5
                  slt          s7, s9, t4
                  div          a4, s7, a0
                  div          t5, a1, s6
                  remu         s3, a5, t4
                  sltiu        a4, tp, 1239
                  sub          t1, gp, a7
                  sra          a3, s3, sp
                  slt          t1, t5, t2
                  sll          a7, s3, t1
                  slti         s9, t6, -485
                  sra          a1, s11, s5
                  xor          s7, t4, t1
                  andi         s10, t1, -1127
                  lui          a0, 490570
                  xori         a0, t2, 117
                  xori         gp, s2, -1434
                  and          a4, s3, sp
                  remu         s5, s0, s3
                  mulhsu       s8, s4, a1
                  sltu         s10, a5, a5
                  slt          a0, a3, gp
                  sltu         ra, s10, s2
                  divu         s6, tp, ra
                  divu         t5, s3, s10
                  sub          t2, s4, s7
                  lui          s10, 518930
                  mulhsu       a3, s11, s7
                  andi         s11, a5, -818
                  add          zero, s4, s2
                  srli         s9, gp, 18
                  srl          s5, ra, a3
                  auipc        a5, 1001525
                  add          a3, s4, s0
                  lui          a4, 1430
                  andi         s6, s0, 1109
                  and          t1, t4, s9
                  sltu         zero, a0, s7
                  nop
                  and          a7, a0, s5
                  sra          s10, sp, tp
                  sll          s5, a6, sp
                  slt          gp, s6, a3
                  xor          gp, s4, a6
                  auipc        a7, 921479
                  sra          a6, s11, t5
                  srli         s7, s7, 6
                  add          s3, a4, t6
                  add          ra, a4, a6
                  add          s3, s0, zero
                  addi         zero, t2, -346
                  srl          a4, a6, a1
                  lui          s5, 452282
                  mulh         s11, a6, t5
                  sltu         a7, s6, tp
                  auipc        t5, 837058
                  mulhsu       s5, a3, a1
                  div          s1, a4, s1
                  remu         s7, t2, a1
                  slli         s0, t0, 28
                  mul          a0, t1, s6
                  mul          a4, sp, sp
                  slli         t4, a3, 8
                  lui          a5, 340628
                  nop
                  sra          t4, t0, t3
                  sra          ra, a7, s9
                  sltu         s6, t4, s0
                  auipc        ra, 412382
                  nop
                  rem          t4, s8, a3
                  div          tp, s2, s0
                  mul          s8, a4, tp
                  sltiu        tp, s9, -801
                  addi         t6, a4, 646
                  remu         a3, s1, a5
                  ori          s6, a5, 1098
                  srl          a3, t3, s7
                  mulhu        a2, s3, a5
                  divu         a3, t3, a4
                  rem          s3, a7, s2
                  mul          s5, a3, s1
                  add          ra, a7, s10
                  and          s0, a4, s7
                  mulhsu       s9, a3, a5
                  and          s11, a0, t6
                  srli         s1, s10, 3
                  sltu         ra, s6, s1
                  mul          a3, a1, gp
                  mulhu        t2, t0, s11
                  lui          t1, 889919
                  mul          zero, s4, a5
                  xori         t2, a6, -606
                  addi         tp, t6, -1500
                  addi         s0, s8, -2023
                  ori          s11, t4, 1290
                  mulhsu       s8, zero, a1
                  and          zero, t0, a4
                  divu         s3, t0, s2
                  mulhsu       s2, a3, s4
                  sub          s7, a1, t3
                  xori         s4, t3, 229
                  ori          a2, s11, -65
                  slti         a0, t1, 694
                  slli         s11, s2, 7
                  slti         t5, s10, -893
                  mulhu        s4, t1, s0
                  ori          s7, zero, -1736
                  divu         a0, s1, t6
                  srli         s7, t0, 5
                  xori         s0, a5, -1084
                  remu         a0, s11, a7
                  srai         a3, s4, 29
                  ori          t6, ra, -653
                  lui          s3, 822043
                  xor          s9, s9, t0
                  nop
                  sltu         s7, t0, sp
                  addi         a0, s8, 1002
                  and          t6, s4, t4
                  mulhsu       t5, s4, ra
                  addi         s8, t6, -1175
                  andi         t2, a0, -4
                  sltiu        t2, a0, 813
                  sra          s11, a7, s5
                  rem          ra, a1, a3
                  srl          s9, s7, s4
                  sub          s8, a2, zero
                  mulh         zero, t3, s1
                  mul          s9, s0, a7
                  xor          a5, sp, s0
                  nop
                  mulhu        a4, s11, a6
                  slt          t6, s5, t6
                  sltu         zero, s7, s7
                  add          s7, t0, s6
                  slt          s2, s6, a4
                  xor          a2, a6, sp
                  auipc        a0, 685203
                  slt          zero, a0, a0
                  sub          s8, a4, ra
                  xor          zero, s3, tp
                  mulhu        t5, t1, a7
                  nop
                  divu         s2, s11, sp
                  mulh         a4, s8, t3
                  mul          a5, s9, s6
                  or           s5, s1, a7
                  slli         a0, a2, 14
                  srli         s3, t2, 23
                  mulhsu       a2, s5, a7
                  auipc        a6, 545552
                  slt          a5, s7, s11
                  rem          s1, t4, a2
                  add          s3, t6, s10
                  addi         a5, s1, 1261
                  sra          gp, s11, s5
                  slli         a3, s9, 24
                  slli         s4, t1, 6
                  slli         tp, a7, 6
                  slt          t4, s1, s2
                  andi         s7, t3, -1338
                  mul          t5, s7, a5
                  remu         a0, t0, s7
                  remu         gp, s3, t0
                  auipc        ra, 154839
                  add          s10, a7, a5
                  or           s0, tp, s11
                  sub          s2, t6, t1
                  srli         a1, t3, 21
                  srli         t5, t3, 10
                  div          t1, a3, s2
                  srli         s0, s11, 2
                  or           gp, s4, a6
                  ori          s2, tp, -895
                  ori          s3, s11, 1005
                  auipc        t1, 460715
                  srai         s7, s7, 28
                  mulhu        ra, s7, s1
                  slli         a0, t1, 17
                  rem          a6, t4, t6
                  or           t6, a5, a0
                  srai         tp, t3, 14
                  lui          a0, 689448
                  auipc        a3, 254985
                  divu         s5, t3, s1
                  slt          s10, s5, s9
                  sltu         a3, s0, s10
                  slt          t4, sp, s11
                  slt          t1, t4, t6
                  nop
                  mulhsu       s8, s1, s9
                  sll          a0, a2, t3
                  xori         t5, a5, -661
                  xor          zero, s11, s6
                  srai         s2, s4, 5
                  srl          s9, a7, a4
                  or           s8, a1, s7
                  mulhsu       a0, s9, s7
                  mulhu        t5, gp, s9
                  sub          s6, a2, t3
                  div          s7, s3, s2
                  remu         s10, ra, s3
                  ori          a3, s7, 1551
                  sltiu        a2, tp, -1206
                  sll          a0, s6, t2
                  mul          a6, s5, s10
                  addi         zero, s10, 1247
                  sltu         t5, t0, t2
                  sra          s3, s2, s8
                  nop
                  divu         t5, t6, t5
                  add          s8, t2, gp
                  addi         s4, s6, -585
                  sltu         ra, s6, s9
                  sll          s0, t5, s1
                  slt          t5, a5, s9
                  sltiu        s6, t1, -1909
                  sll          a5, t5, t2
                  lui          t4, 699605
                  or           a7, tp, sp
                  mulhu        a3, a7, s3
                  nop
                  srl          a2, a5, s11
                  lui          a3, 57528
                  and          s11, s8, t2
                  xor          t4, s5, a0
                  sub          a3, s11, s2
                  nop
                  xori         a7, s2, -857
                  lui          s8, 328758
                  sll          t6, sp, a1
                  slli         a5, gp, 21
                  andi         a3, s5, 1966
                  xori         s9, a5, -330
                  mulhsu       s9, s10, t1
                  slt          s8, s4, t4
                  sltu         a5, a6, s7
                  xori         t1, t4, -1125
                  andi         a1, s11, 1348
                  srli         s3, tp, 5
                  and          a1, t4, t6
                  srli         zero, s11, 27
                  remu         s3, gp, a4
                  sra          t6, t5, t4
                  xor          s2, t6, s5
                  xor          a7, s5, a1
                  divu         t2, a5, a5
                  sll          a7, a3, gp
                  rem          gp, t5, a7
                  sra          zero, t2, a4
                  sub          a5, a5, t3
                  lui          zero, 868606
                  add          a0, s5, s6
                  ori          a0, t5, -1840
                  divu         t1, s6, t2
                  srli         s1, s11, 18
                  mulh         gp, s7, tp
                  srl          s5, a7, a5
                  sra          s6, gp, gp
                  and          s3, s6, s10
                  mulhsu       a6, t5, a2
                  or           a0, t6, t6
                  remu         t6, t5, a2
                  div          a7, t1, t1
                  mul          t6, s8, s7
                  sltu         zero, t1, a0
                  andi         gp, s9, 1660
                  andi         ra, gp, -1890
                  mulh         s6, s10, s2
                  slti         s6, t5, 1090
                  rem          ra, t4, s9
                  rem          a2, a7, s6
                  and          a3, tp, t3
                  slli         a5, s7, 0
                  divu         ra, s4, a6
                  slt          s5, s5, s0
                  slt          s9, tp, t0
                  mul          s6, t2, t3
                  rem          ra, s8, s0
                  sltiu        s3, a5, 922
                  addi         a2, s6, 753
                  auipc        s9, 299460
                  addi         a4, t0, -1009
                  mulh         s11, a3, a6
                  remu         a3, t1, a1
                  addi         t4, t1, -1772
                  sra          s4, ra, a7
                  sltu         t6, t1, s1
                  slti         ra, ra, 1486
                  auipc        gp, 942476
                  xor          gp, gp, t3
                  addi         zero, a2, 42
                  divu         s11, s9, a5
                  auipc        a1, 851647
                  add          s8, zero, a2
                  or           t4, s3, s4
                  lui          s3, 578683
                  sra          a4, s9, t1
                  mulh         s4, t4, a6
                  srli         a3, sp, 29
                  slti         a0, t3, -541
                  slti         s10, t5, -1899
                  add          a7, s7, a4
                  sltu         zero, s11, s9
                  add          ra, s6, s9
                  or           s4, a3, zero
                  nop
                  or           s0, a5, a6
                  xori         a7, gp, -53
                  xor          a3, a3, t1
                  slti         a3, tp, 792
                  mulhsu       s5, t3, s6
                  xori         gp, t2, -1586
                  sltu         a0, gp, t0
                  div          a2, zero, s9
                  nop
                  ori          s4, t0, -1649
                  slt          a3, sp, a6
                  mulhu        a1, a0, a4
                  mulhsu       zero, gp, t6
                  srli         s6, t1, 9
                  mulhsu       s8, sp, t2
                  auipc        s1, 771859
                  slt          a5, s2, a0
                  mulh         a5, t2, a5
                  div          a4, tp, gp
                  sra          a3, t4, t2
                  xor          s7, s10, a7
                  srl          s11, sp, t5
                  xor          a2, ra, s7
                  auipc        a1, 260543
                  addi         s9, s2, -273
                  add          a6, s9, t1
                  nop
                  lui          s7, 622824
                  sub          s0, a2, s6
                  and          a6, gp, s2
                  slti         a5, t2, -921
                  sra          s8, t6, a4
                  auipc        t1, 51489
                  mul          s11, zero, a3
                  sltu         s9, a0, s4
                  xor          s4, sp, t4
                  lui          s6, 232396
                  mul          t4, tp, s6
                  xori         s10, a6, -1728
                  remu         a0, s7, t2
                  mulhsu       a5, s7, ra
                  mulh         s10, t5, s9
                  mulh         tp, s10, s4
                  addi         s1, sp, -1089
                  slti         a4, t4, 1649
                  rem          a6, t0, t3
                  div          ra, t6, a4
                  mulhu        s0, s0, gp
                  mul          a4, a0, a0
                  sltu         a7, s8, zero
                  ori          s7, s1, -677
                  slli         t6, t2, 7
                  mulhsu       a0, a6, a2
                  mulh         a4, a3, gp
                  slti         ra, t5, -1778
                  sra          t1, tp, tp
                  srli         s11, a3, 23
                  sltiu        s1, a5, -906
                  sltiu        s7, ra, -421
                  add          ra, a0, s5
                  xori         s8, a7, 1274
                  mul          t4, s4, a0
                  ori          s9, t4, 406
                  add          s1, s11, t5
                  nop
                  xor          t5, s10, s3
                  mul          t2, a4, a1
                  srli         s4, s2, 28
                  addi         s2, s4, 977
                  andi         zero, a0, 1487
                  sltu         t4, a2, t5
                  sltu         s2, s5, s6
                  or           s0, s7, a7
                  slti         s0, a4, -942
                  lui          s7, 911737
                  rem          s7, s7, t1
                  div          s5, t1, gp
                  xori         a7, s7, -1917
                  sub          ra, t1, s4
                  sll          s9, s0, t0
                  andi         s1, a1, -1405
                  and          a6, t0, t1
                  slti         s10, s10, -1061
                  srli         t4, tp, 0
                  andi         s7, zero, -530
                  mulh         s7, s8, t2
                  divu         a2, s11, t2
                  sltiu        a2, s1, 925
                  mulhu        s3, s1, s3
                  rem          a7, s3, zero
                  sra          ra, gp, t0
                  sll          s5, s10, s6
                  xori         s5, s5, 893
                  and          s7, a6, a5
                  add          t2, a0, ra
                  auipc        s4, 1030259
                  sra          t1, t4, a6
                  nop
                  slt          a6, gp, s11
                  mulh         s4, t5, a7
                  sra          s3, a3, s10
                  mulh         a7, zero, s2
                  mulhu        tp, tp, a2
                  ori          t1, s4, -968
                  remu         a3, a1, t0
                  srl          gp, t0, t3
                  srl          gp, t6, a3
                  divu         s7, a0, a1
                  mulhsu       a5, a6, a5
                  mul          s5, t2, s3
                  slli         t5, sp, 27
                  addi         t1, a2, -1732
                  srli         tp, s11, 28
                  sltiu        t2, s2, -697
                  divu         s11, s2, ra
                  srli         s2, s7, 31
                  lui          t4, 576400
                  auipc        s8, 443169
                  sra          gp, a1, t2
                  xor          a2, t0, t4
                  remu         s5, a5, t0
                  sub          t4, s5, sp
                  add          s1, s8, s10
                  srai         a2, s1, 30
                  slli         t2, t5, 9
                  srli         a5, a3, 3
                  sll          s4, s6, s1
                  andi         s11, t1, 61
                  mulhu        s6, ra, s3
                  addi         a5, t6, 869
                  sltiu        s0, s5, 55
                  slli         t2, a6, 31
                  mulhu        s8, gp, gp
                  srai         a3, a6, 1
                  srai         s5, t4, 6
                  div          zero, a2, gp
                  rem          t4, t2, s3
                  slli         a5, sp, 24
                  sltu         s11, s6, s6
                  divu         a4, s6, tp
                  slli         a0, s7, 0
                  remu         t1, a0, s6
                  srl          a4, s10, s10
                  slt          t1, zero, gp
                  sll          a7, gp, a4
                  xor          s9, sp, s7
                  sub          a7, t2, t6
                  nop
                  xori         a1, s4, 1407
                  slli         s2, zero, 12
                  sll          a4, s1, ra
                  andi         s4, s4, -31
                  mulh         s2, s10, t2
                  xori         t4, t1, -1810
                  xor          a1, a1, a2
                  auipc        a4, 449073
                  mulhsu       s10, a7, s10
                  mulhsu       a2, zero, s4
                  srl          tp, t4, t0
                  nop
                  sra          a1, a6, s2
                  auipc        s1, 498246
                  and          t4, s8, t4
                  slt          s11, gp, s7
                  auipc        a0, 500020
                  andi         s0, s6, -58
                  xor          s5, a3, s9
                  sra          s10, a7, s5
                  rem          s4, a3, s9
                  lui          s7, 682212
                  addi         s11, s2, 1092
                  xori         zero, s6, -111
                  slti         s9, t3, -1739
                  slli         t5, t4, 29
                  rem          a6, t6, s1
                  sra          a0, a4, ra
                  xori         s11, t2, -532
                  xori         s4, s11, 509
                  srl          s0, a6, a3
                  nop
                  srai         t5, s0, 27
                  sltiu        s7, s7, -903
                  xor          a0, s5, t4
                  div          s9, t4, t3
                  slt          t5, a0, s5
                  sra          t4, s0, s6
                  slli         s6, s2, 23
                  srl          t6, s7, ra
                  srl          t1, t5, s6
                  add          a4, a5, s3
                  mulh         a6, a1, t4
                  mulhsu       s9, t5, s3
                  srl          s7, s0, s6
                  xori         s7, s4, -1202
                  remu         zero, s6, t3
                  srl          s9, t2, s4
                  sltu         a3, s6, t2
                  srl          s0, s5, s8
                  nop
                  mulh         t1, a2, a6
                  xori         a5, a5, -1661
                  slli         s5, s8, 26
                  slti         a0, a3, 1206
                  div          t6, t0, t4
                  addi         s11, s5, 1670
                  add          a7, sp, t3
                  mul          t5, a6, t0
                  sub          s10, s11, s6
                  xori         s4, a6, 568
                  mulhsu       s10, s0, s0
                  srai         s11, s10, 25
                  rem          a2, a7, s2
                  xor          s7, s7, t2
                  sll          t1, zero, t6
                  sltu         a5, t1, a0
                  mulh         ra, a1, s9
                  nop
                  slti         s8, s8, -89
                  srli         s11, t1, 11
                  add          tp, s7, gp
                  sub          s1, a2, a0
                  nop
                  remu         t4, s7, a2
                  mul          t4, s3, s5
                  sra          s7, s1, t5
                  mulh         t1, a4, t3
                  mulh         t1, s9, a2
                  addi         s5, s6, 1649
                  ori          s4, s2, 1454
                  srli         s6, a2, 16
                  mulhsu       ra, ra, a5
                  slti         s9, ra, -2017
                  mulhu        s7, t2, zero
                  mulh         a0, s2, s7
                  divu         a7, t5, zero
                  xor          gp, ra, t0
                  addi         a5, s4, -915
                  slti         t5, t0, -508
                  rem          t6, a4, a6
                  xor          s0, s10, s10
                  mul          s3, s6, t5
                  add          s6, s4, a2
                  mulhsu       t4, a2, t1
                  mulhsu       s11, s5, t4
                  add          gp, s5, s3
                  mulhsu       s10, s6, tp
                  sll          t1, ra, s11
                  srl          s1, a4, tp
                  mulh         t5, t4, s9
                  addi         t4, a1, -203
                  div          tp, s11, a3
                  rem          a1, a0, a3
                  andi         s9, t5, 1194
                  or           s6, a6, sp
                  srai         a1, s7, 5
                  nop
                  remu         s4, s2, s1
                  srai         s4, a4, 23
                  and          s6, t3, t1
                  remu         t6, a5, sp
                  slti         zero, t1, -1409
                  mul          gp, s3, zero
                  add          s2, tp, s3
                  sltiu        s1, s8, 708
                  slli         s2, a5, 18
                  sll          a4, a7, a4
                  sltiu        t1, t0, 1221
                  slt          t6, a2, s2
                  slt          s4, s10, t5
                  lui          zero, 183905
                  lui          s8, 405725
                  addi         gp, s8, 510
                  ori          s0, s8, 594
                  addi         s2, t3, -1763
                  auipc        s10, 214447
                  nop
                  auipc        t1, 159921
                  add          t5, t3, t0
                  mul          a5, a0, s2
                  mul          s0, t0, s1
                  add          s5, s9, zero
                  slt          gp, t3, t0
                  auipc        a1, 826241
                  xor          ra, s11, s1
                  mulhsu       s2, s10, a1
                  div          gp, s7, s10
                  or           a0, s3, s11
                  div          s8, zero, t1
                  add          a2, s4, t1
                  xor          zero, s2, a3
                  mulhsu       t2, s9, a3
                  addi         a0, a0, 684
                  mulh         t1, t3, s2
                  slti         s11, a7, 349
                  mulhsu       a0, t0, s9
                  srli         s6, s10, 26
                  nop
                  sra          a1, s9, t2
                  sra          zero, a0, s9
                  div          s9, a1, s2
                  addi         t1, s3, 1011
                  mul          t5, s5, s2
                  slti         zero, s3, -701
                  mulhu        t2, s6, s6
                  add          s5, s11, zero
                  and          a5, s6, tp
                  sub          a0, a6, t3
                  divu         a1, t1, a6
                  xor          s1, ra, a6
                  srl          s5, a7, a5
                  remu         s4, a6, s8
                  rem          ra, s9, t2
                  srai         s10, a0, 0
                  xori         zero, a1, 1045
                  xori         s6, s7, -1441
                  sra          a0, ra, a5
                  divu         gp, zero, s8
                  sll          a6, s1, t4
                  xor          s4, a2, t1
                  div          s6, a5, s0
                  slt          a5, a1, s7
                  auipc        a6, 872518
                  sltiu        zero, t1, -678
                  sub          s9, t6, a3
                  srai         s5, a3, 27
                  divu         s8, s4, t2
                  mul          s3, a4, t4
                  and          t4, a4, s2
                  div          s4, s3, a2
                  slt          tp, a7, a3
                  srli         s1, s0, 6
                  sra          t1, s3, s7
                  nop
                  divu         s5, s1, s7
                  sub          a2, t4, s4
                  sltu         s6, a6, s1
                  remu         ra, a4, s5
                  mul          s1, s5, gp
                  srl          t4, t0, s6
                  addi         zero, s8, 943
                  sll          s9, s4, s8
                  slt          s11, tp, t5
                  div          zero, tp, a0
                  slt          a3, a1, a3
                  auipc        t6, 992541
                  auipc        a1, 675990
                  addi         t2, t2, -1661
                  slt          a5, a7, s8
                  mulh         s4, t2, s2
                  addi         t6, ra, 1817
                  andi         s1, s1, 252
                  sll          t2, gp, s11
                  slti         a7, t0, -1241
                  sll          zero, s4, gp
                  sub          s1, gp, t5
                  sub          gp, s1, zero
                  or           s11, a2, s1
                  add          t5, s4, tp
                  mulh         s3, s4, s7
                  nop
                  or           s7, a2, s8
                  slti         s0, t3, -322
                  andi         s2, a5, 1131
                  auipc        a0, 376759
                  add          t4, s3, t5
                  slt          t2, t3, a3
                  addi         s5, a1, 1426
                  srl          a4, s10, s1
                  nop
                  or           t5, a1, sp
                  lui          s3, 862810
                  slt          a6, tp, t0
                  xori         t6, s0, 1751
                  sltu         t1, sp, s8
                  slt          a7, t2, t4
                  sltu         s9, gp, a4
                  ori          s0, t4, 1834
                  addi         gp, t4, 131
                  slli         a3, ra, 20
                  srl          zero, tp, s6
                  divu         s7, s3, a4
                  slti         tp, t4, 131
                  sub          s7, s7, s4
                  sub          a4, sp, a4
                  add          a5, ra, t3
                  ori          a0, t5, 209
                  divu         s2, a0, s6
                  add          a0, s3, s8
                  auipc        a3, 843704
                  divu         s5, a5, s9
                  mulhsu       t4, s5, zero
                  srl          a7, s11, t3
                  mul          s3, a0, gp
                  sltiu        s2, a0, -1092
                  remu         zero, t5, s10
                  nop
                  slti         s3, a5, -1728
                  srl          s0, a7, a3
                  andi         tp, t5, -1263
                  add          t1, a1, s9
                  mulh         s0, s7, s6
                  divu         tp, s7, t2
                  sll          s5, a5, a3
                  ori          a3, a5, -845
                  xor          a3, s6, s10
                  slti         a3, s11, -1460
                  srai         s0, t5, 30
                  srli         gp, s11, 1
                  divu         tp, s9, a7
                  xori         t2, a2, -87
                  sltu         s8, s3, tp
                  slli         a7, t3, 27
                  sub          a5, a2, s11
                  div          s7, s2, a2
                  sub          a7, ra, gp
                  srai         s2, a2, 2
                  lui          s6, 205614
                  slt          s7, s2, t3
                  mulhu        a5, sp, zero
                  mulhsu       s9, zero, ra
                  or           gp, s3, t1
                  sltu         gp, a0, zero
                  or           s2, s4, a0
                  xori         gp, sp, 1170
                  remu         zero, sp, s6
                  sltu         t1, t1, gp
                  xor          a5, sp, t5
                  div          a0, t2, s2
                  sub          t2, s2, tp
                  div          s4, s1, s8
                  slli         t2, t1, 29
                  add          s7, t6, a1
                  auipc        s1, 249431
                  mul          s2, s4, s4
                  nop
                  auipc        a6, 147104
                  div          t2, s9, s0
                  sltiu        a6, a0, 755
                  xor          s9, s6, tp
                  mul          t1, s0, ra
                  divu         ra, s9, t4
                  mulhu        a2, s4, s11
                  mul          s9, t0, a3
                  and          a7, s0, a4
                  or           zero, s1, a6
                  xori         a4, t3, -371
                  srai         s8, t6, 18
                  add          s4, s3, s1
                  mulhsu       tp, t3, zero
                  mulhu        a5, a5, t3
                  sltu         a5, t1, a1
                  mul          s5, t2, s3
                  nop
                  remu         tp, s2, s0
                  rem          s1, a7, s3
                  addi         tp, a0, -1290
                  mulhu        zero, s2, a3
                  srai         s5, a7, 29
                  and          gp, tp, s5
                  srl          t1, s5, s6
                  nop
                  or           t1, ra, t1
                  sltu         s0, a6, t6
                  xor          s1, a1, s10
                  and          s3, s7, t1
                  mulhu        t5, a2, a2
                  mulhu        a0, t4, tp
                  auipc        s4, 775665
                  sltu         gp, s0, t5
                  mulhsu       t5, t6, s1
                  mulhsu       t4, s4, s5
                  sltiu        s5, gp, 1331
                  rem          a6, a6, sp
                  sub          t4, ra, a5
                  mul          s5, s4, s6
                  mulhu        s11, s0, t3
                  sltiu        s6, gp, 290
                  slti         tp, s9, -400
                  andi         s5, s6, -96
                  xor          s11, s2, t1
                  and          s10, zero, s1
                  nop
                  slli         t2, t1, 2
                  or           t1, t2, t6
                  mulhsu       s1, s3, s8
                  divu         s5, s4, t3
                  divu         a7, a6, zero
                  div          a1, t6, s4
                  slli         t5, s8, 14
                  srl          s0, s8, s4
                  sltu         s9, s11, s10
                  srai         t5, a0, 20
                  srl          gp, zero, a0
                  mulh         t2, ra, s1
                  and          a0, gp, t6
                  mul          a4, t2, a2
                  srli         s7, sp, 20
                  nop
                  nop
                  sub          s10, a0, zero
                  sltu         a6, s11, ra
                  rem          s11, t6, a7
                  nop
                  andi         t6, t3, -339
                  or           a1, t0, a6
                  slt          s2, s5, gp
                  xori         zero, t2, -172
                  and          a7, a4, t3
                  mulh         gp, s11, t6
                  and          a1, s11, sp
                  mulh         a0, a0, a0
                  and          a0, a1, t4
                  slt          s2, s7, s1
                  srai         s4, s7, 15
                  srli         t6, t4, 1
                  xori         a1, s7, 622
                  srai         gp, t5, 30
                  sra          s11, a0, tp
                  sra          t1, t6, t2
                  auipc        a6, 124311
                  remu         s7, a1, tp
                  or           ra, t6, s9
                  srai         s4, a5, 5
                  slt          t5, s1, a3
                  srai         s7, s5, 28
                  slti         s2, a4, -572
                  mul          a0, t1, ra
                  or           s10, s3, t2
                  sltiu        t5, s9, 366
                  div          zero, s11, a4
                  nop
                  slti         a2, a4, -59
                  sll          a4, ra, s3
                  auipc        t6, 630063
                  remu         a1, tp, t5
                  ori          a3, a6, -1909
                  mulhu        tp, s8, gp
                  rem          a1, s9, t2
                  slti         t6, tp, 1406
                  lui          s10, 97227
                  andi         a3, s1, -1756
                  auipc        a0, 318880
                  sra          t5, s0, t2
                  slt          zero, sp, gp
                  nop
                  mulhu        s9, t6, a0
                  divu         t5, t3, t4
                  sra          a1, sp, s11
                  sltiu        zero, gp, -339
                  sltiu        ra, t6, 475
                  sub          s3, a6, sp
                  mul          s2, s7, t5
                  remu         a0, tp, s3
                  srai         a3, t4, 21
                  slt          t1, a5, a3
                  divu         t6, t4, sp
                  and          a0, zero, a7
                  mulhsu       s0, a5, t6
                  add          a0, a2, s10
                  xori         s5, a6, 2040
                  lui          s10, 89543
                  auipc        t1, 341362
                  srl          s1, s3, t1
                  sra          s0, s7, s10
                  divu         a0, t1, a6
                  mul          gp, t4, s2
                  srai         a4, s3, 15
                  slt          s8, s1, a0
                  ori          a5, a7, -1103
                  mulhsu       a3, a1, s3
                  divu         t1, a1, a6
                  mulh         s6, s11, t6
                  xor          a0, a3, t4
                  sub          zero, s5, s5
                  mulhu        a1, s6, s1
                  srl          s11, s8, zero
                  sll          a0, a2, s5
                  and          a7, s10, a3
                  divu         zero, gp, tp
                  slt          s10, a0, a4
                  slti         gp, s9, 271
                  sltiu        ra, s9, 356
                  rem          gp, t2, s7
                  add          a5, s8, sp
                  nop
                  srai         t1, t2, 6
                  srai         s11, s5, 25
                  or           t6, zero, zero
                  srli         s2, ra, 7
                  nop
                  srai         gp, tp, 20
                  xor          a5, s3, s5
                  nop
                  mulhsu       a6, t0, gp
                  srli         s10, t2, 4
                  slt          a0, a7, s9
                  mulhsu       a1, s6, s4
                  auipc        s1, 313822
                  slli         s6, a5, 6
                  auipc        s8, 622972
                  srl          s4, s0, a1
                  nop
                  mulhsu       zero, sp, s2
                  sltiu        s9, a5, -177
                  srli         s10, a2, 20
                  mulhsu       s1, s9, tp
                  lui          s2, 163705
                  andi         a0, a7, 1114
                  mulh         a7, s8, a0
                  lui          tp, 986182
                  remu         a0, t2, s6
                  slti         a6, a5, 457
                  sltu         s0, t5, t6
                  addi         s7, t4, 1730
                  mulhu        s8, s0, s9
                  slti         s8, a0, 855
                  srl          gp, a3, s0
                  sltiu        s7, a7, -39
                  sll          tp, a6, t3
                  sra          gp, a7, t4
                  addi         s10, s1, -263
                  mul          s9, t3, a0
                  mulhsu       a7, t4, t3
                  andi         a5, s5, -1140
                  sltu         s8, t1, s1
                  sll          t4, a3, t6
                  divu         s2, a5, s3
                  lui          s4, 757735
                  nop
                  slli         a0, tp, 8
                  xori         a1, a7, -931
                  andi         a7, s6, 1929
                  ori          zero, sp, -354
                  nop
                  lui          a1, 726743
                  sll          zero, s3, t4
                  slti         t2, tp, -75
                  and          s4, a3, s11
                  xori         s11, s0, 636
                  srl          s3, a5, a2
                  andi         t6, a2, -1417
                  or           s2, a7, s5
                  nop
                  add          s4, s0, a2
                  mulhu        s10, s5, sp
                  sra          s1, s7, s5
                  mulh         t5, sp, a6
                  divu         s3, s7, s3
                  mulhu        s10, tp, t5
                  and          s8, zero, s4
                  or           s8, s8, t1
                  andi         t4, a3, -1463
                  lui          t5, 346785
                  nop
                  add          a7, zero, t4
                  ori          ra, s3, 1368
                  remu         t2, a7, s3
                  rem          s3, s2, s5
                  xori         s4, s9, 321
                  mulhsu       t1, s7, a6
                  sltu         t6, a7, a3
                  sltiu        s9, t3, 9
                  xori         t5, t4, 251
                  slt          t5, a3, s4
                  addi         tp, a6, -1221
                  or           s1, t6, s1
                  mulh         t6, a4, a4
                  and          t2, s4, zero
                  mulhsu       s11, s5, t3
                  xor          s1, t6, gp
                  slti         s2, a4, -125
                  xori         a7, a5, 1711
                  mulhu        a3, s3, a0
                  or           s6, s1, t6
                  sll          s5, ra, a2
                  srl          s8, s11, a6
                  slti         s2, t6, -253
                  andi         s0, s2, -1312
                  add          s3, s9, s3
                  sub          ra, ra, gp
                  andi         tp, t3, 1478
                  or           t5, a2, a2
                  sub          t6, t1, s1
                  xori         tp, s10, 792
                  srl          s4, s2, a2
                  xori         a2, a3, -2016
                  xor          a0, t4, s6
                  lui          s11, 278068
                  slti         s4, t1, -944
                  srai         t2, a5, 4
                  ori          s11, s2, -663
                  add          s8, a3, t1
                  mulh         t5, t1, a1
                  slti         t5, a0, -5
                  sltu         s4, s0, a5
                  auipc        a7, 519035
                  slti         s2, t4, 1600
                  andi         t6, s4, -2005
                  remu         t6, t2, t5
                  auipc        t6, 467450
                  addi         s3, s2, -1522
                  sub          t1, gp, s6
                  ori          a2, t6, -1098
                  divu         gp, s4, s0
                  remu         a4, s10, s9
                  srli         s0, a4, 8
                  or           tp, t3, a5
                  srl          a1, t0, a6
                  sra          s3, s7, a2
                  sub          a7, s8, s8
                  rem          gp, a1, a2
                  nop
                  srai         s2, gp, 7
                  andi         s11, gp, 153
                  srli         ra, a2, 9
                  lui          a2, 1028348
                  xori         t6, s6, 517
                  lui          a3, 756226
                  sra          s8, s4, s8
                  mul          s10, a3, a4
                  sll          s2, s6, s5
                  lui          s8, 239851
                  and          s5, s1, t6
                  slt          ra, tp, s8
                  xori         s10, a1, -1941
                  lui          t4, 155050
                  sltiu        t6, t3, -714
                  srli         s9, t2, 4
                  sll          gp, s2, a1
                  remu         s0, t5, a0
                  mul          s4, sp, t3
                  mulhu        a3, sp, s7
                  ori          zero, s7, 1620
                  mulh         t2, a5, s11
                  or           t1, s2, t4
                  srl          s8, s8, a1
                  slti         s1, a3, 392
                  mulh         s11, s0, s2
                  sra          a2, t5, s0
                  xori         s10, s10, 357
                  sub          a3, t5, s7
                  auipc        a0, 35992
                  nop
                  add          gp, s8, t4
                  mulhu        a4, t1, a2
                  slt          s9, t2, s11
                  sltiu        a2, t2, -707
                  and          s7, s2, t1
                  slt          t6, tp, a4
                  auipc        s8, 116570
                  sub          s11, a3, s1
                  slti         s4, t0, 71
                  ori          a3, a5, -82
                  lui          t1, 945846
                  mulhsu       a6, sp, zero
                  ori          s11, t0, 1410
                  srl          zero, s6, s7
                  addi         a3, zero, -1181
                  sltu         gp, s7, s7
                  sub          s4, s5, t5
                  slt          s9, t4, t5
                  rem          s1, t2, s7
                  xor          zero, a5, s0
                  remu         s10, t1, t4
                  sltu         gp, a5, t2
                  xori         s6, a5, 563
                  sll          a1, a0, t3
                  add          a0, a6, zero
                  auipc        a2, 750718
                  sltu         tp, sp, a0
                  or           ra, gp, t2
                  sra          a6, t3, ra
                  andi         s3, s2, -586
                  ori          s6, s0, 1161
                  slti         t4, t0, 540
                  addi         tp, s3, -610
                  slt          s0, t0, s2
                  srl          a4, gp, t2
                  add          s10, s7, a6
                  srli         s7, gp, 26
                  addi         s2, s5, 1086
                  ori          s6, tp, 683
                  slti         t5, s2, -756
                  srai         a3, a6, 18
                  sub          s0, sp, a1
                  slti         a4, s9, 893
                  sltiu        a0, t3, -119
                  mulhsu       a6, a1, t0
                  addi         a7, a7, 601
                  srai         s0, s11, 30
                  divu         t5, ra, t2
                  srai         s0, t0, 24
                  xor          t1, a4, s2
                  sub          a3, s0, a1
                  sll          t2, t4, gp
                  srai         tp, s0, 22
                  auipc        s1, 1034997
                  mulhsu       t2, a2, zero
                  slt          a5, s0, s5
                  sll          a2, s6, s11
                  remu         tp, a3, t5
                  addi         s4, a1, -1479
                  mulh         s11, a1, t1
                  sltiu        zero, s6, -557
                  sltiu        a5, a1, 1814
                  slli         t2, ra, 15
                  sub          s5, t1, t4
                  remu         s6, s6, tp
                  mul          tp, t5, s9
                  slt          gp, s0, s0
                  xor          s4, t5, s11
                  nop
                  or           a6, s11, s10
                  slti         a0, sp, 628
                  add          gp, gp, ra
                  srli         a3, t6, 5
                  remu         s6, s8, s5
                  div          t5, s1, t5
                  sub          s0, t0, s9
                  sltiu        a2, tp, -202
                  sra          s4, s6, a7
                  xor          t1, zero, t6
                  ori          s3, s10, -1320
                  remu         t1, t2, a7
                  ori          t6, s2, 856
                  lui          a0, 36217
                  sub          s8, s9, s1
                  div          a6, a3, a6
                  and          tp, s7, s5
                  mul          a0, a1, sp
                  or           zero, a1, t3
                  nop
                  sltiu        s7, s9, -2027
                  sra          tp, t3, s11
                  srli         t1, a6, 25
                  mul          s5, a1, t2
                  slt          s0, s4, sp
                  andi         a2, s8, -1212
                  lui          zero, 727826
                  div          s7, a2, t1
                  mul          s3, gp, a7
                  srli         t1, a7, 0
                  mul          gp, t3, s2
                  srli         t2, t1, 4
                  addi         s6, a3, -1762
                  mul          s1, s0, a7
                  mulhsu       t1, a2, s5
                  mulhu        t1, tp, s7
                  mul          s2, a0, a6
                  srl          a7, s4, t3
                  andi         s3, sp, 45
                  mulh         a7, a0, t4
                  xor          s0, s5, s9
                  srl          s1, a5, s10
                  div          a0, ra, a3
                  slli         a0, s9, 20
                  slli         s4, tp, 21
                  slli         s7, s6, 13
                  xori         s5, t3, -1241
                  srli         s1, s7, 25
                  srai         s10, a0, 23
                  sra          t6, s5, t5
                  divu         t4, t4, t5
                  auipc        t6, 782026
                  slt          s9, a7, t3
                  xor          a0, gp, ra
                  or           gp, s7, ra
                  andi         gp, t0, 1018
                  nop
                  andi         ra, a2, 1348
                  add          t2, s11, s0
                  xori         s11, s1, -1395
                  sra          a3, a7, s9
                  srli         s2, s4, 24
                  slti         s9, t0, -510
                  rem          gp, a0, a0
                  mulh         zero, sp, t3
                  sltu         s10, s2, s5
                  mulhu        s3, gp, t1
                  srai         a0, a0, 23
                  sltu         t1, s3, a2
                  add          a4, s10, tp
                  addi         s5, s6, 1424
                  nop
                  sltiu        t4, s9, 895
                  sltu         t6, a5, s8
                  slt          ra, s9, s6
                  xor          s11, s1, s1
                  mul          s9, t1, s1
                  lui          s5, 983157
                  mulh         s0, zero, s8
                  slti         t5, a4, -1537
                  addi         a5, t0, 159
                  slti         a4, t6, -989
                  rem          s9, t1, a5
                  div          a7, ra, tp
                  mulhu        ra, a4, s6
                  sltu         a0, s11, a5
                  slt          tp, a2, s3
                  divu         s6, s2, t6
                  sub          t2, sp, zero
                  mulhsu       s8, s7, s7
                  addi         t4, a6, -1064
                  slli         gp, t4, 27
                  rem          zero, s4, t0
                  sll          a7, zero, s6
                  and          t5, t6, t4
                  remu         s0, s1, s9
                  sra          a2, a4, s1
                  divu         s0, s8, s1
                  rem          t5, t5, s3
                  remu         s11, t4, a2
                  sub          a5, a0, s8
                  slli         ra, s8, 12
                  sltiu        s2, s4, -2018
                  div          s7, t2, s6
                  srli         t4, tp, 20
                  slt          s4, gp, zero
                  rem          zero, a3, s0
                  mulhsu       s5, s8, s9
                  or           tp, s7, a3
                  mulhsu       tp, a2, s7
                  divu         ra, s4, a5
                  add          s1, t6, t2
                  mul          s9, a3, gp
                  slli         t6, a2, 14
                  slt          a6, t1, a3
                  sra          t6, a0, sp
                  srai         s10, s6, 0
                  div          a0, s8, s2
                  mul          tp, a1, s7
                  addi         a6, t5, 770
                  mulh         t5, s2, a3
                  and          t5, t1, s1
                  srl          zero, s2, a2
                  nop
                  rem          tp, s11, s8
                  srl          s8, a2, a4
                  sub          t2, ra, s5
                  mulhsu       s2, s9, a2
                  rem          s3, s11, s3
                  srli         s0, s3, 5
                  lui          a3, 359887
                  srai         a7, s2, 22
                  sra          s7, t2, s7
                  rem          a6, s11, zero
                  sltiu        a4, t5, -142
                  mulhu        s3, a2, t5
                  div          a3, s5, t6
                  srl          s9, s2, s5
                  xor          s0, a0, s1
                  srli         s10, s7, 25
                  sll          a3, s7, s3
                  xor          t6, t1, a4
                  slt          t6, a1, a3
                  sltu         s4, a3, t5
                  slti         a1, s7, -1868
                  sll          zero, t3, zero
                  andi         t5, s8, 910
                  mulhu        t4, s8, gp
                  sub          s6, a4, a5
                  auipc        s9, 33630
                  div          t5, gp, s8
                  srai         a3, s7, 1
                  auipc        a1, 1020299
                  and          s3, ra, t3
                  xor          s9, t6, s1
                  slti         s5, a4, 1671
                  srai         s0, s1, 14
                  srli         a1, a1, 30
                  rem          t6, a7, s5
                  srai         t6, a0, 14
                  rem          s4, s2, s7
                  sltu         s9, s3, s5
                  nop
                  addi         a1, s11, 1323
                  sltu         t2, s4, t6
                  xori         t2, s11, -67
                  srli         t4, s6, 20
                  sll          zero, s7, a5
                  andi         s9, s4, 1465
                  rem          s0, s3, tp
                  sll          gp, t3, a2
                  andi         t1, s11, 1695
                  mulhu        t5, s4, s0
                  srl          t1, t0, a3
                  ori          s1, t4, 263
                  auipc        s11, 726278
                  auipc        t6, 299650
                  mulhu        a0, t5, s8
                  auipc        a6, 989614
                  slli         s7, s0, 28
                  mulhu        a6, a2, s3
                  xori         a0, a7, -1580
                  mulhu        a5, s1, s5
                  sll          a1, a1, a7
                  auipc        a7, 503268
                  ori          t5, s11, 1611
                  and          s5, gp, s1
                  andi         t4, zero, -1275
                  sltiu        a1, a6, 1970
                  slti         s5, tp, -1081
                  andi         a7, t6, -967
                  andi         s7, s5, -552
                  auipc        s9, 33140
                  addi         s4, a7, -1108
                  xor          ra, a1, sp
                  sub          s1, a6, s0
                  addi         a2, a4, -1084
                  sltu         s0, gp, t1
                  divu         t4, t0, s7
                  srai         t2, s3, 14
                  xor          s1, tp, t4
                  sll          s0, s10, a4
                  xor          t5, t4, s8
                  div          zero, s9, s9
                  rem          gp, s7, tp
                  sub          s9, a2, sp
                  mulhu        s5, sp, zero
                  xor          a5, a2, s1
                  sra          a1, s5, t0
                  srli         s10, a5, 13
                  mulhu        a4, s4, t5
                  or           a2, s0, s1
                  add          t2, a0, zero
                  div          t2, tp, t6
                  slt          gp, tp, a3
                  srl          a3, sp, a1
                  lui          ra, 571100
                  rem          s5, t1, s10
                  ori          tp, s7, -636
                  or           a2, a0, a2
                  mulhsu       s2, t5, s1
                  slti         a3, a6, -408
                  mulh         tp, t0, t2
                  mulhu        s8, s0, s1
                  ori          a2, s0, -769
                  mulh         a0, s7, t3
                  mulhsu       s6, s0, a6
                  slt          zero, a6, t1
                  mulhsu       s4, a2, a6
                  ori          t4, s8, 864
                  slti         a3, gp, -1619
                  slt          a5, zero, t5
                  divu         s6, s7, a5
                  andi         a3, s11, 229
                  xori         s4, sp, 368
                  div          a0, s9, s10
                  sub          a0, a6, s8
                  srl          a5, t2, a5
                  srli         s8, t1, 2
                  add          t4, s9, s11
                  sra          s9, t0, zero
                  remu         t6, a3, t3
                  ori          gp, t2, 431
                  andi         a1, a0, 1118
                  slli         a2, zero, 24
                  sub          s5, s11, a0
                  div          a2, s7, a0
                  mulhu        s0, s4, s0
                  slti         s3, s8, 516
                  ori          a3, sp, -429
                  sub          a4, zero, t4
                  mul          zero, t5, s6
                  mulh         s8, a4, a0
                  slt          a2, a7, a5
                  or           t2, a1, s7
                  sub          s2, s4, t4
                  mulhsu       s9, s9, a1
                  slt          tp, gp, gp
                  mulhsu       a0, s0, t5
                  remu         a1, t1, t4
                  nop
                  mulhsu       s5, s3, t1
                  div          a5, s6, tp
                  mul          t4, s2, s11
                  slti         a4, a6, 1403
                  slli         s2, s5, 11
                  mulhu        s11, s3, s10
                  ori          s4, s3, -979
                  srai         s11, a7, 12
                  remu         tp, s10, s10
                  srli         zero, t6, 10
                  div          a2, a3, s9
                  srli         a1, tp, 30
                  mulhsu       s4, s0, a2
                  mul          zero, s9, s5
                  srl          t5, t6, s7
                  addi         t6, a1, -1976
                  sub          s11, gp, s7
                  mul          s4, a5, t4
                  mulh         s2, s1, a7
                  or           s7, a3, s3
                  srai         s8, a0, 30
                  mulhsu       a0, a3, a5
                  sltiu        a5, t3, 324
                  andi         s4, s7, -1638
                  xori         zero, t1, -909
                  sltu         t4, gp, t4
                  and          s7, s10, a3
                  mulhsu       s1, t5, s5
                  addi         a3, t3, -1218
                  slli         s4, s7, 13
                  nop
                  addi         t5, t4, -252
                  mulhsu       a0, s8, s10
                  nop
                  and          s8, a6, t2
                  sltiu        s2, s8, 887
                  sub          a4, s4, t0
                  or           t5, a7, a5
                  xor          t5, s2, gp
                  mulh         s3, a5, t4
                  divu         t4, t3, s4
                  mul          s5, t3, s8
                  srl          a0, a3, s0
                  remu         s0, a3, a4
                  andi         s2, a3, 1907
                  srl          gp, a4, a7
                  mulhsu       t4, sp, s10
                  sltiu        zero, zero, 2047
                  ori          s7, a1, 1576
                  div          t5, a2, gp
                  or           ra, sp, s9
                  auipc        t4, 47583
                  sll          s11, s5, s0
                  sub          s6, tp, s7
                  sltu         s3, t1, sp
                  divu         t1, s11, s4
                  rem          s6, a6, s0
                  divu         a2, s5, s5
                  sub          a5, t0, s0
                  mulhsu       t2, s7, s1
                  addi         tp, a0, 584
                  addi         s4, ra, -1401
                  xor          t6, t2, s6
                  add          a6, a6, s11
                  sub          a2, zero, s2
                  mul          s0, a6, t0
                  ori          s9, s11, -1447
                  sll          s9, s9, t0
                  div          t1, s0, s5
                  mulhsu       s6, s11, sp
                  remu         s2, a3, s0
                  mulh         a5, t6, t3
                  mulh         a3, zero, s3
                  sra          s9, s3, s8
                  sll          a1, s3, t6
                  srli         t4, zero, 18
                  addi         s3, s7, 418
                  mulh         a5, a4, s5
                  mul          s5, s7, s10
                  xor          s11, s5, a1
                  ori          s2, s9, 1987
                  rem          s8, t2, a3
                  sub          a3, a6, s5
                  slli         a5, t5, 28
                  mulhsu       t5, a1, a4
                  xor          s3, s8, a5
                  sltu         t2, t6, t5
                  div          s2, t0, s0
                  xor          s4, a0, s0
                  rem          t6, sp, s11
                  lui          t5, 973274
                  ori          s7, t4, -1419
                  mulhu        s1, s4, t3
                  add          a6, ra, a3
                  div          s11, s0, a0
                  auipc        zero, 901649
                  or           a0, s10, s1
                  mulh         t2, a6, s5
                  srli         ra, a4, 20
                  or           a2, s4, s6
                  sra          tp, s9, t6
                  slli         a1, t4, 19
                  sll          t6, zero, s5
                  mulhsu       t1, a3, t3
                  addi         zero, t0, 378
                  srai         a7, a4, 22
                  mulh         s9, a1, zero
                  lui          s2, 740172
                  addi         t5, a3, -61
                  srl          t2, t1, zero
                  slt          t1, t5, s11
                  andi         s6, s10, 213
                  lui          a2, 528189
                  sll          s5, sp, s5
                  srai         s3, ra, 1
                  or           t5, sp, t3
                  sltiu        zero, tp, 1105
                  divu         s0, s1, sp
                  mulh         s2, s4, a6
                  addi         a2, s10, 1688
                  ori          s1, ra, -1890
                  add          ra, ra, ra
                  mulh         tp, s10, ra
                  mulhsu       zero, s0, t4
                  mulhsu       s5, s3, t2
                  sub          tp, s9, t4
                  div          a5, s2, s10
                  sltu         s0, t4, t6
                  and          s2, a0, s3
                  slli         s3, s2, 29
                  mulhsu       s10, s10, t2
                  slli         a3, s4, 24
                  sra          gp, t5, a7
                  auipc        s1, 976873
                  sltu         t4, s4, s8
                  add          s8, sp, s8
                  mulhu        a7, a2, t0
                  sra          zero, s5, t6
                  andi         a0, gp, 458
                  and          s11, s4, sp
                  mulhu        s6, t6, a3
                  addi         ra, s10, 787
                  rem          t5, a7, zero
                  rem          t4, t3, a3
                  or           a7, a2, s6
                  ori          s11, a1, -1431
                  mulhu        a5, t5, t5
                  srai         ra, a6, 29
                  mul          a5, a7, t6
                  mul          s2, s9, t0
                  divu         s9, s7, s10
                  sll          a7, gp, gp
                  remu         a1, a1, s2
                  sll          t4, a2, t1
                  srai         s5, s11, 3
                  and          s9, s3, a7
                  rem          a1, s11, t3
                  xori         s8, t3, 1249
                  lui          a0, 831545
                  sll          t4, a7, s4
                  divu         s8, t0, s1
                  div          s3, t6, s0
                  auipc        a1, 76740
                  mulhu        t1, t4, s9
                  rem          s4, a2, s7
                  xor          s8, s8, s7
                  nop
                  sub          s10, a4, t3
                  slt          a3, a3, a5
                  mul          s0, s8, t0
                  xor          a0, t4, tp
                  add          a7, a0, s0
                  lui          s1, 585394
                  xori         t2, a6, 1959
                  or           s5, a6, gp
                  sub          t2, a7, s9
                  slli         s4, tp, 12
                  mulhu        zero, s0, s6
                  auipc        s9, 986311
                  slli         tp, gp, 20
                  divu         t4, a0, a3
                  ori          t4, s10, -164
                  andi         t5, s8, -1438
                  mul          s5, s2, s2
                  mul          s4, s8, s7
                  add          s7, s0, a7
                  slti         t6, s1, -650
                  addi         a3, s7, 596
                  auipc        t6, 423169
                  addi         ra, s3, -841
                  auipc        a3, 287468
                  divu         s2, s8, a0
                  mulhsu       t4, tp, zero
                  xor          s8, s0, ra
                  lui          s6, 340787
                  rem          s9, a1, ra
                  remu         s6, gp, s7
                  xori         a0, s10, 613
                  or           t4, s9, zero
                  mulhu        s11, a1, s6
                  auipc        a0, 694576
                  sra          t1, gp, s5
                  mulhu        a5, a7, s1
                  andi         tp, a0, -1422
                  xor          s9, s8, a0
                  add          a3, gp, t3
                  div          a3, sp, a3
                  srai         s9, s11, 25
                  div          s3, a6, s11
                  rem          t6, sp, zero
                  add          t6, a3, a6
                  mulhsu       t2, a1, s2
                  xor          s6, sp, sp
                  slt          t1, s7, sp
                  slti         a5, zero, -1714
                  divu         s7, a2, a6
                  slt          t1, t6, t1
                  andi         ra, s6, -1044
                  div          s5, gp, a2
                  srl          a2, t1, a3
                  mul          s4, a4, a3
                  sra          s9, s9, s1
                  mulhsu       s7, ra, a4
                  addi         t5, s4, 494
                  rem          s7, zero, s1
                  addi         s10, s5, 375
                  lui          s2, 751590
                  rem          a5, zero, a7
                  sub          t2, a0, a1
                  rem          a6, t0, a5
                  nop
                  srli         s6, t0, 4
                  srl          a0, a5, t1
                  xori         t2, t1, 1270
                  sll          a7, s6, t3
                  slli         t1, a0, 26
                  srli         s9, zero, 20
                  slti         a4, zero, -323
                  remu         t2, s3, a2
                  slli         t5, s7, 11
                  remu         s3, t3, t2
                  nop
                  nop
                  mul          s6, s11, s3
                  sltiu        s11, s3, -1855
                  rem          s2, t6, t0
                  sltiu        a0, sp, 1653
                  nop
                  auipc        a0, 168833
                  sltu         a4, t2, a5
                  addi         s5, s11, -1995
                  lui          tp, 361617
                  mulhu        a5, s0, s6
                  sltiu        s9, t1, -1904
                  lui          s0, 986404
                  sra          zero, t4, a1
                  sub          a4, t2, a4
                  mulhu        a5, t0, a0
                  srl          a5, t1, a2
                  xori         s5, t0, -803
                  rem          ra, s4, t1
                  mulhu        s5, a1, s5
                  srai         gp, t4, 1
                  xor          a6, s3, a5
                  nop
                  addi         gp, t6, 746
                  xor          s3, s3, a2
                  remu         s7, s6, s7
                  xor          tp, t2, zero
                  srl          s2, a5, gp
                  remu         a1, tp, t5
                  sltu         s0, a4, s11
                  slt          t2, a5, sp
                  xori         gp, t0, -917
                  and          s5, t3, gp
                  mulhsu       a6, tp, a0
                  lui          s2, 331811
                  sltu         t6, a5, a7
                  remu         s1, s11, s2
                  mulh         gp, s0, t4
                  and          s2, a5, s10
                  slt          a3, a7, sp
                  srai         s1, a5, 4
                  auipc        gp, 212939
                  mulh         s6, s8, s10
                  slt          a1, a3, t0
                  sltiu        s11, s4, 753
                  nop
                  and          t2, s3, t5
                  sll          a4, a0, a7
                  mulhu        t5, s3, s0
                  lui          a4, 556334
                  mulhsu       s8, s5, a3
                  xor          s11, t4, tp
                  xori         s2, a6, 190
                  addi         a0, ra, 1227
                  srli         s1, t6, 26
                  mulh         s8, t0, tp
                  divu         a7, t4, s5
                  div          s9, a3, t4
                  slt          t2, a5, a0
                  mulhu        s9, zero, a1
                  auipc        a3, 733538
                  sra          t1, zero, a0
                  sltu         zero, a7, a7
                  sltu         a6, a7, s11
                  sltu         a7, s1, t2
                  sra          a1, t3, t2
                  remu         gp, zero, t5
                  sra          a3, a2, s1
                  ori          t1, s11, -642
                  srl          t5, a0, tp
                  sltiu        s10, t6, -1649
                  srai         s6, t0, 22
                  sll          s4, ra, t5
                  add          a6, s6, tp
                  sltu         gp, a1, t1
                  sub          s5, t6, a4
                  sltiu        zero, tp, -1454
                  mul          s0, a2, s5
                  mulhsu       s6, a5, a3
                  remu         a1, a4, s9
                  ori          s10, s3, 1168
                  add          t1, s10, a7
                  sra          s0, s8, s4
                  srai         s11, a1, 11
                  slti         t5, a2, 66
                  add          s10, a2, tp
                  ori          t4, s10, -1265
                  xori         s8, s11, -1737
                  divu         tp, t3, t0
                  slti         s6, s10, -203
                  ori          s8, a7, 1063
                  srli         gp, t3, 4
                  add          s10, a4, t3
                  or           zero, s3, a1
                  srli         s0, a3, 13
                  rem          t2, a2, a3
                  ori          t4, gp, 38
                  sltu         s9, ra, s7
                  sltu         tp, a2, s9
                  rem          s3, s7, t0
                  rem          ra, s7, t1
                  slli         s4, tp, 31
                  divu         a6, a2, gp
                  divu         a0, s11, a5
                  srai         s7, s9, 26
                  mulhsu       a0, s4, zero
                  and          t5, a0, t2
                  slli         a3, t5, 8
                  sll          s0, s9, s5
                  div          t6, s9, t1
                  auipc        s11, 156780
                  mulh         ra, t4, t0
                  remu         t5, s10, gp
                  mulh         s11, s4, sp
                  add          a1, t6, s6
                  lui          s8, 457524
                  or           a0, s1, tp
                  sltiu        t4, s2, 1732
                  and          s3, s1, a1
                  srl          t6, t3, zero
                  add          t2, zero, t3
                  slt          t2, s3, ra
                  mul          s7, t2, sp
                  sub          a1, sp, tp
                  ori          s7, s6, 1249
                  auipc        s10, 1026117
                  xori         a6, s8, -47
                  srli         s2, gp, 27
                  remu         ra, sp, a5
                  xori         zero, t4, 1027
                  sll          a3, t0, tp
                  srli         t6, t6, 18
                  slt          a4, a6, s2
                  divu         s10, s0, t2
                  divu         s6, s6, s9
                  andi         s0, s4, 522
                  divu         t2, s0, s6
                  mulhu        s10, s1, s11
                  srai         tp, s2, 29
                  sltiu        s8, s6, 454
                  lui          s4, 17475
                  sra          a0, t1, s4
                  divu         tp, t1, a5
                  nop
                  srli         t1, a4, 23
                  sra          s8, ra, t6
                  lui          s3, 691482
                  xor          zero, a0, tp
                  mulh         a5, zero, s3
                  srli         s11, s5, 24
                  sub          t6, a3, a0
                  sltu         gp, s9, gp
                  addi         s0, s7, 263
                  xor          t5, a4, s8
                  xori         t1, s8, -1260
                  remu         t6, a6, s2
                  lui          t2, 981098
                  srli         zero, a5, 17
                  xori         s6, gp, 858
                  lui          t5, 979317
                  sub          s1, t0, s8
                  srli         t5, tp, 2
                  nop
                  lui          ra, 532191
                  lui          s8, 366181
                  srai         s8, t2, 4
                  sll          tp, a2, t2
                  xor          t6, s3, s11
                  addi         s8, a7, -1958
                  srli         a4, t0, 28
                  addi         t4, s0, 72
                  slt          s2, a0, s7
                  sub          a3, t0, a5
                  divu         s11, t3, t4
                  srai         t5, s6, 24
                  mulhu        tp, a5, s0
                  andi         s0, s10, 419
                  rem          a1, a6, a7
                  div          s2, s11, t3
                  nop
                  andi         s3, a1, 723
                  mul          a7, s3, sp
                  sra          ra, t2, s10
                  ori          t6, t5, -437
                  srai         s10, t0, 14
                  slt          s7, s0, zero
                  rem          s5, s6, a7
                  ori          s11, s6, 14
                  srl          zero, a5, a3
                  add          s0, sp, s7
                  mulhu        s3, t0, a6
                  auipc        gp, 865859
                  sra          a1, a7, s7
                  ori          a4, s6, 710
                  divu         a7, s11, s8
                  addi         t5, t5, 567
                  mulhsu       tp, t0, zero
                  mulh         s7, a7, s0
                  srli         zero, ra, 18
                  divu         t2, s6, s1
                  and          s8, a0, t2
                  srl          a1, s0, gp
                  slli         t1, a3, 19
                  andi         t1, t1, 1496
                  srli         a2, ra, 17
                  rem          ra, s5, s2
                  remu         t4, s11, s4
                  remu         s5, a2, a5
                  div          s3, a0, s8
                  slli         s2, s9, 21
                  auipc        a3, 698869
                  add          s0, a1, sp
                  remu         a4, a4, gp
                  mulhsu       s6, s4, t2
                  ori          gp, t1, -1178
                  srl          t5, a3, a6
                  mulh         t1, t1, s1
                  rem          a6, t4, t0
                  auipc        t5, 518462
                  or           t2, s2, s4
                  addi         s11, a5, -315
                  sub          s5, ra, gp
                  slt          s3, t6, zero
                  ori          a0, a5, -141
                  remu         t4, t2, s9
                  rem          t4, a2, t4
                  sra          t4, t4, s0
                  nop
                  xori         s1, t6, 1641
                  add          gp, s2, s8
                  xor          s6, a4, t5
                  add          t4, t0, t2
                  slti         a6, sp, -110
                  divu         a2, a5, s11
                  auipc        s9, 30613
                  slt          t4, s2, s10
                  mulh         zero, zero, a1
                  sra          gp, a1, ra
                  remu         a2, a0, gp
                  mul          a0, a4, s8
                  mulhsu       s7, a7, s4
                  sltiu        a2, s6, -444
                  sra          t5, s1, s7
                  mulhu        s11, s6, a6
                  or           s8, t1, s7
                  rem          zero, zero, s9
                  addi         s4, s4, 928
                  sra          zero, a6, t3
                  xori         a7, a1, 645
                  mul          s5, zero, t1
                  auipc        zero, 607452
                  srai         a4, t6, 27
                  nop
                  add          t2, gp, s11
                  xori         s10, a2, 545
                  ori          s4, zero, -1223
                  srai         a2, a7, 4
                  lui          s5, 954019
                  slti         s9, zero, 1127
                  slt          s10, t2, s5
                  sub          t1, a1, t1
                  mulh         a3, a3, s6
                  div          zero, a3, tp
                  rem          s8, sp, zero
                  nop
                  slti         a3, sp, 887
                  or           t1, a7, s0
                  sub          t6, ra, a6
                  mulh         s8, s3, ra
                  addi         a4, s0, 3
                  slt          s2, s9, s2
                  ori          s5, t1, 40
                  mulh         a2, a4, a0
                  slli         t2, s5, 17
                  sltiu        s10, a1, -357
                  xor          a2, s0, a0
                  add          s7, a0, a0
                  ori          s2, tp, -1925
                  lui          zero, 1028363
                  slli         a3, a3, 11
                  sub          t6, s3, t4
                  or           a0, s7, a5
                  srai         a4, s10, 3
                  divu         a2, s0, s5
                  ori          t6, a3, 145
                  remu         a2, t6, t1
                  andi         s10, a0, -747
                  auipc        gp, 226781
                  remu         t4, s3, zero
                  srli         a0, zero, 8
                  sra          s4, a3, s9
                  auipc        a5, 858592
                  slli         s9, t3, 17
                  slt          t2, sp, s5
                  add          s8, s0, ra
                  mulhsu       a2, s6, gp
                  div          tp, a3, t6
                  mulhsu       s0, sp, a2
                  mulh         s4, t4, s1
                  sltu         gp, ra, s6
                  rem          gp, a7, t2
                  and          s5, sp, t1
                  sltiu        a7, s0, 1675
                  add          t5, t5, sp
                  slti         s6, s9, -576
                  xori         s0, s4, -325
                  or           tp, s8, t4
                  rem          s9, s4, ra
                  mulhsu       t2, sp, t4
                  or           gp, a3, s0
                  addi         a7, s8, 644
                  lui          gp, 613724
                  sltu         t5, t1, a4
                  addi         a4, s2, 912
                  mulhsu       a1, s10, ra
                  auipc        s6, 463516
                  mulh         s8, tp, a0
                  mulhu        s11, a7, a2
                  mulh         zero, a4, t5
                  sltu         gp, a1, zero
                  add          a5, s10, a5
                  remu         s7, a5, s0
                  srli         s3, a7, 16
                  or           a0, s9, s10
                  slt          a0, zero, s5
                  xor          s5, ra, a0
                  slli         s1, a5, 17
                  sra          a0, t0, s2
                  rem          a1, t4, tp
                  add          t6, ra, ra
                  rem          s5, s6, s9
                  xori         a4, a4, 894
                  and          a2, zero, t3
                  div          a3, t1, t4
                  mulhsu       t6, s2, a6
                  remu         s4, s10, t0
                  sltiu        ra, s2, 156
                  or           s6, t3, s9
                  mul          s4, gp, a3
                  sub          s1, t5, s1
                  andi         t4, a0, -1984
                  mulhsu       a3, s11, s6
                  remu         s8, tp, s9
                  mul          a0, t6, s1
                  or           s8, t2, gp
                  sra          a1, s2, s3
                  sltu         a3, a0, t5
                  sub          s4, tp, t4
                  xori         s7, a1, 676
                  sltu         t4, t2, s2
                  divu         s7, a4, a2
                  slli         a5, a3, 14
                  mul          s0, t3, a2
                  mulh         s3, s9, gp
                  lui          gp, 940026
                  srli         tp, t4, 21
                  nop
                  add          a0, a5, s6
                  srli         s5, s10, 18
                  sltiu        s9, ra, -850
                  auipc        s4, 677081
                  mulh         s2, a7, a6
                  slli         s11, s2, 21
                  sub          s6, a3, s4
                  remu         s3, t2, a3
                  divu         s0, a7, t3
                  srli         s11, t0, 31
                  add          a1, sp, a2
                  rem          s7, s9, t5
                  sltu         a3, a1, s6
                  xori         s10, a4, 170
                  xori         s2, s5, -319
                  sub          s2, a4, a2
                  divu         a4, s9, a5
                  addi         s0, t4, -1260
                  sll          t5, t3, s9
                  auipc        s7, 347415
                  sll          s5, a1, s3
                  remu         a0, t4, a2
                  srl          a1, a6, s5
                  srai         zero, t6, 20
                  auipc        a2, 109432
                  sltiu        a1, a0, -86
                  slti         a0, t4, -1899
                  mul          tp, ra, a1
                  mul          a2, t6, t5
                  and          s6, s1, a5
                  addi         a5, s10, 1833
                  sra          t5, t2, s5
                  slt          s3, a2, t5
                  auipc        a2, 680868
                  slt          a6, sp, ra
                  nop
                  sll          s8, s5, ra
                  xori         s5, a2, 1193
                  xor          t5, a0, t5
                  mulh         s0, a6, s2
                  mulh         s3, sp, s5
                  slti         tp, s8, -819
                  auipc        s2, 190778
                  lui          a0, 65450
                  div          t4, s0, s7
                  xori         s3, s1, 1597
                  auipc        s9, 273577
                  and          t5, s2, a5
                  sltu         s5, a5, a7
                  nop
                  andi         s4, ra, -1056
                  or           a0, a1, sp
                  srai         s2, s5, 8
                  auipc        s0, 1007057
                  sltiu        s6, a7, 617
                  add          a2, a1, s8
                  mulhsu       a1, t5, s0
                  andi         a7, a6, 1017
                  or           s2, s4, t2
                  xori         gp, a3, -1144
                  xori         t2, a5, 1828
                  sltu         t2, t1, s10
                  mul          a0, a1, t4
                  sub          s10, s1, s6
                  ori          a1, t3, 869
                  or           s6, t1, t4
                  srai         a7, s5, 3
                  lui          s3, 22009
                  mulhu        zero, a7, t6
                  mul          t2, s5, a0
                  srli         a0, s7, 16
                  mulhu        s1, a4, a1
                  nop
                  xori         s4, a7, 293
                  auipc        s8, 656727
                  slli         s0, a3, 6
                  addi         s8, a4, -1482
                  divu         tp, s7, a3
                  rem          s7, s7, s7
                  ori          s8, s1, 806
                  sub          tp, s6, s0
                  or           s4, t6, sp
                  ori          s5, ra, -1878
                  andi         s3, t0, 1891
                  remu         s3, a6, s5
                  sll          a1, s5, gp
                  xori         t4, s0, -2043
                  srli         s10, s1, 24
                  sll          t4, a2, s1
                  mul          s11, s8, a0
                  slt          s0, t2, ra
                  and          zero, s7, a6
                  srli         s1, a7, 22
                  mulh         s1, t5, t6
                  addi         a0, t0, 830
                  nop
                  sltiu        s8, ra, 1861
                  mul          zero, s2, a5
                  srli         t2, a7, 25
                  srl          a3, tp, s7
                  srl          s2, s9, a7
                  slti         zero, t6, 1873
                  mulhu        a0, s6, a2
                  xor          t1, s10, tp
                  sll          s3, s8, s10
                  sltu         s7, a7, a4
                  xori         tp, t4, 482
                  sll          gp, s8, s3
                  sll          zero, s4, s0
                  xor          gp, t6, s7
                  mulhu        s5, a3, a0
                  sltu         s11, a1, t4
                  sltiu        s10, t1, -437
                  andi         s1, s1, 1009
                  slli         s7, t2, 21
                  xor          gp, a7, a3
                  slli         zero, t0, 27
                  ori          s0, s3, 1832
                  sltu         t5, s1, s7
                  and          tp, a5, s8
                  lui          t2, 39950
                  mulhu        t5, t6, t1
                  sltu         a6, t0, s4
                  rem          ra, s6, ra
                  divu         t1, tp, t0
                  mulhu        gp, a1, s6
                  mulh         t2, s4, t5
                  remu         s9, s3, s0
                  srli         s1, s8, 16
                  divu         tp, ra, s9
                  xor          s1, s2, gp
                  mul          s8, t4, s6
                  and          s8, tp, a2
                  xori         s3, t0, 432
                  slti         s4, s6, 1082
                  divu         s5, s4, s0
                  div          ra, a6, a7
                  xori         zero, s2, -801
                  add          a1, t5, s10
                  srai         t2, s7, 28
                  div          a1, s2, a2
                  nop
                  slti         a7, s7, -1553
                  sltu         zero, a4, a1
                  mulhsu       t1, a7, tp
                  sub          a5, t2, ra
                  mulhu        s5, a3, t5
                  nop
                  slt          t4, s3, t3
                  remu         s8, s2, t2
                  div          s8, s10, t6
                  mul          t5, t4, a6
                  addi         tp, zero, 129
                  mulh         t1, tp, t1
                  remu         s6, s7, tp
                  rem          t4, s3, gp
                  remu         t4, s5, t6
                  slli         tp, a6, 20
                  add          s5, t1, a4
                  nop
                  divu         t5, t4, s9
                  divu         a1, t4, a3
                  sll          s6, s6, t1
                  slti         s6, zero, 1692
                  sub          a0, gp, zero
                  srl          t1, a1, s3
                  mulhu        s6, a4, gp
                  sltiu        t6, s10, -1806
                  and          s8, s11, a1
                  mulhu        a3, t1, s5
                  lui          a4, 552563
                  divu         s8, ra, s6
                  andi         s8, a5, 1826
                  srl          t5, gp, s11
                  xori         s2, a3, 536
                  lui          s6, 561753
                  addi         tp, s9, -832
                  xori         a2, s7, 465
                  remu         s9, s3, s8
                  mul          a5, zero, s11
                  slt          zero, a1, a6
                  rem          s3, tp, s9
                  sltiu        s0, s7, -1875
                  sltu         a5, s4, ra
                  divu         tp, s1, s2
                  rem          s0, t5, sp
                  addi         t4, a4, 205
                  addi         s11, s1, 914
                  mulh         zero, t2, a7
                  srai         a6, zero, 17
                  srli         s3, s2, 13
                  srl          a3, s0, t6
                  nop
                  srli         t2, s7, 26
                  sub          s3, s0, s8
                  mul          s0, a7, s11
                  addi         zero, a4, 1598
                  and          a3, s10, a5
                  sll          s6, a3, s3
                  and          a2, s4, a4
                  xori         s1, a7, -1349
                  sltu         a7, a7, t6
                  srli         ra, s0, 21
                  sub          s8, s2, t0
                  sll          a5, a0, a6
                  div          s3, a2, s11
                  and          a7, t6, t4
                  slli         a5, t1, 5
                  slti         a6, a7, -1239
                  divu         t6, a3, zero
                  sltu         tp, sp, a2
                  add          t2, a1, t6
                  ori          s2, zero, -86
                  srai         ra, t1, 21
                  div          t4, s5, gp
                  slti         a4, gp, 763
                  slt          s9, tp, ra
                  srai         t4, sp, 22
                  ori          zero, a0, 640
                  mulh         t6, a2, s2
                  auipc        a3, 78359
                  sltiu        s5, a5, 1165
                  lui          s6, 1047361
                  nop
                  sra          s4, tp, gp
                  addi         gp, a7, -1162
                  and          s4, ra, s0
                  slli         t2, a7, 9
                  sltu         t2, sp, a3
                  slli         s10, t6, 30
                  auipc        t1, 381312
                  slli         a3, t2, 3
                  add          tp, ra, s10
                  nop
                  mulhu        zero, sp, t2
                  srli         s2, a2, 1
                  remu         s6, t6, t0
                  mulhu        s6, tp, t6
                  addi         s8, t0, -610
                  lui          a0, 647466
                  mulhu        s5, t4, s10
                  add          a4, t0, a0
                  mulhu        t5, a6, s11
                  div          s9, s7, a5
                  xor          gp, t0, tp
                  nop
                  xori         gp, s10, 1103
                  and          t2, zero, s1
                  and          a7, s3, tp
                  remu         a2, a3, s10
                  div          t5, t5, s3
                  or           a0, s5, a2
                  slti         s5, s10, -1993
                  srli         s6, s5, 2
                  sltu         s0, s4, s2
                  srai         s6, s0, 5
                  andi         tp, s5, -333
                  mulhsu       t5, zero, s5
                  divu         s5, s10, a0
                  or           t5, t3, s6
                  sll          s9, t5, s9
                  add          a3, s5, t3
                  slti         tp, s3, -680
                  xor          a2, t4, s7
                  xori         a0, a3, -2000
                  mulh         tp, s6, ra
                  sra          s4, t0, s1
                  slt          t4, s11, t2
                  sltiu        s8, s1, -536
                  sra          s4, s11, s1
                  mul          s7, t2, s1
                  mul          a2, s5, a3
                  add          a6, s9, s7
                  sub          s3, a1, a6
                  sub          s2, s6, a5
                  xor          t5, ra, s6
                  srli         s9, s6, 22
                  sltu         t5, s1, t1
                  remu         s6, s10, a4
                  slt          a0, s7, s5
                  or           t4, s7, s11
                  srli         a1, t6, 28
                  slt          s1, s10, a5
                  xori         t1, s11, -1458
                  divu         s6, s11, s1
                  auipc        s4, 188418
                  lui          s3, 802406
                  and          a5, s9, s1
                  sub          a3, a3, s1
                  lui          zero, 859671
                  slti         s7, s4, -615
                  add          s1, a6, zero
                  ori          s4, t6, -541
                  addi         t4, s2, 1038
                  add          s9, a0, a6
                  slti         a3, t0, 852
                  andi         s3, a3, -1537
                  divu         s4, t1, a6
                  divu         s10, s1, t3
                  xori         s3, s5, 1379
                  ori          zero, a0, 1838
                  mul          ra, a4, s1
                  or           gp, t3, a2
                  auipc        s2, 1044128
                  lui          a2, 749100
                  auipc        s0, 771114
                  slt          a2, a5, s7
                  nop
                  mulhsu       t4, s10, s10
                  mul          gp, s7, a2
                  ori          t5, t0, -1996
                  rem          a0, s2, a7
                  mul          t4, s4, zero
                  addi         s8, s6, -714
                  slti         t1, s7, -712
                  ori          a3, a2, -1630
                  nop
                  slli         a0, a6, 10
                  addi         a0, a6, 557
                  remu         a3, t4, a7
                  add          zero, tp, a2
                  sltu         s10, a3, t0
                  ori          a1, t4, 630
                  sltu         ra, a3, s6
                  slli         a5, a5, 11
                  addi         s0, sp, -327
                  srl          s4, a1, a2
                  slt          s3, t1, s1
                  mulhsu       t6, ra, s4
                  slt          s6, a5, s1
                  div          tp, ra, t0
                  divu         t6, a3, a7
                  rem          s8, t2, t2
                  remu         t4, t2, t5
                  slti         gp, s5, 1441
                  xori         t2, s6, 687
                  and          zero, sp, s2
                  add          gp, s11, zero
                  sll          s6, zero, tp
                  lui          s10, 775462
                  or           s2, t5, t1
                  or           a6, s10, s1
                  remu         t2, a0, t6
                  mulhu        s0, t5, s4
                  mul          a3, ra, a6
                  srli         a5, s5, 3
                  sub          t1, a3, a1
                  slli         t5, sp, 22
                  or           s6, s3, s11
                  sra          a3, zero, a7
                  sra          a2, t1, s9
                  xor          zero, zero, a6
                  lui          a1, 171586
                  and          t4, s11, t4
                  sltu         s2, s1, a0
                  nop
                  add          zero, ra, s10
                  lui          s2, 797390
                  xor          s3, s2, a1
                  mul          s8, s3, t0
                  xori         t2, a4, 1924
                  div          gp, a7, a4
                  sltiu        gp, zero, -1306
                  divu         s9, t0, t0
                  divu         s3, zero, s1
                  sltu         s9, s11, t3
                  rem          tp, s10, t2
                  auipc        s6, 66575
                  or           t2, a6, t0
                  sll          a3, a3, a1
                  div          t6, t5, s6
                  rem          zero, t0, t5
                  sltiu        s10, s7, 138
                  auipc        a0, 995648
                  lui          t6, 819362
                  sltu         s1, a6, ra
                  or           a2, a7, t0
                  auipc        s0, 676605
                  sltiu        tp, s3, -1253
                  slli         s10, zero, 23
                  srai         t5, a7, 24
                  addi         s5, s4, -80
                  srai         tp, sp, 9
                  auipc        a0, 134115
                  div          a6, s8, t6
                  slti         tp, s1, 1476
                  slli         s6, t5, 31
                  xori         s10, a5, -222
                  sltiu        t6, t2, -153
                  srli         a7, a5, 24
                  srai         s8, t5, 26
                  mul          a4, ra, t3
                  sltiu        s4, t2, -1792
                  mulhu        t5, s5, gp
                  or           a0, s8, s8
                  addi         t1, t1, 868
                  mul          s1, t2, a5
                  divu         s8, t4, a3
                  sll          tp, a1, a1
                  sub          s0, s3, t4
                  xori         a6, a2, 504
                  slt          ra, s5, s0
                  nop
                  ori          s7, ra, -451
                  slti         t4, s6, 2028
                  srl          s5, a1, a4
                  sltiu        s1, zero, 1070
                  andi         a5, a2, -699
                  sltiu        s8, s1, 255
                  sltiu        a0, s8, -1446
                  auipc        s8, 686457
                  ori          tp, s10, 536
                  div          s4, t3, s3
                  sll          a5, s2, s0
                  div          zero, a1, t1
                  andi         a4, t4, -839
                  div          s8, a1, s3
                  ori          a2, a1, 2043
                  ori          tp, ra, 1060
                  mulh         s7, s1, s6
                  sltu         a4, t4, gp
                  and          s4, tp, s2
                  srli         t1, zero, 24
                  sltiu        zero, s4, -1468
                  or           s0, t5, s5
                  mulh         s2, t0, t2
                  mulhu        s10, t5, s7
                  xori         a1, t3, 819
                  or           a4, t3, s1
                  xori         a5, t5, -568
                  rem          a7, a0, a3
                  slli         t2, s5, 30
                  xori         s6, s0, -1958
                  sltu         ra, s6, a0
                  addi         a0, a0, 1923
                  sll          s5, a0, t0
                  sltiu        t6, s4, -2048
                  slli         s2, t6, 27
                  mulhu        s5, s7, s6
                  xori         a6, s9, -1363
                  sltiu        s5, a0, 1495
                  addi         a3, zero, -335
                  mul          s6, s10, a5
                  or           s1, zero, s11
                  srl          a5, a6, s7
                  slli         s1, s6, 0
                  mulhu        s5, a3, t1
                  xor          s2, s5, s5
                  srl          s1, s6, a7
                  xori         s7, zero, -1872
                  mulhu        zero, s8, a4
                  mulhu        zero, s1, sp
                  xor          s4, t4, a5
                  mulhu        s3, a2, a6
                  sll          a4, t1, t1
                  or           s5, s5, t4
                  slt          t4, a0, s6
                  nop
                  or           a7, s7, s2
                  mul          a6, ra, a1
                  sll          a1, ra, zero
                  lui          t6, 384815
                  slti         ra, gp, -981
                  xori         a0, a6, -330
                  or           s0, s4, a0
                  slli         a1, s7, 2
                  ori          t1, a6, -1713
                  ori          zero, t4, -122
                  sltiu        t2, s9, 692
                  rem          s10, zero, a0
                  slli         a1, t3, 1
                  mulhsu       s4, a7, a6
                  lui          t6, 100457
                  add          a2, a2, a5
                  lui          a0, 1002792
                  srl          a4, a1, sp
                  xori         t4, t5, -1945
                  sll          a7, a3, s8
                  divu         a3, s8, t4
                  sltiu        gp, t6, 648
                  nop
                  mulh         t1, a0, ra
                  slt          s0, s4, s1
                  xori         s10, t2, 1068
                  sltiu        t6, s2, 1492
                  ori          t2, s1, -320
                  remu         a0, a4, s8
                  srli         t1, a4, 23
                  srai         gp, s7, 0
                  auipc        s10, 343951
                  sra          s6, a3, s3
                  xor          a4, t6, t0
                  srli         t6, zero, 31
                  mulh         a5, s2, t0
                  srl          t6, s0, s1
                  mulh         s0, t2, s0
                  add          t1, s10, s3
                  slt          a6, s9, s5
                  ori          a0, s5, 358
                  sll          t1, s6, s0
                  divu         gp, s3, s3
                  sra          ra, s8, s0
                  rem          s2, t5, ra
                  div          a4, ra, a4
                  srl          t2, t5, s4
                  addi         a5, s7, -1941
                  lui          a1, 960950
                  lui          tp, 1047430
                  slti         a0, s11, -1253
                  xori         a0, s4, 146
                  srli         a1, s11, 17
                  addi         a3, s8, 1838
                  mulh         a4, tp, t1
                  ori          s6, t2, 1507
                  or           s1, ra, a6
                  or           a4, t0, s3
                  mul          a4, t3, t4
                  addi         a0, a4, -1314
                  div          ra, a3, s0
                  slt          t6, a6, s2
                  xor          s4, gp, s9
                  mulhu        s3, ra, a3
                  slti         a2, s11, -1601
                  andi         s0, a7, -2035
                  xor          s11, t2, s7
                  add          s2, a1, a5
                  mulh         s5, sp, s6
                  or           s5, s9, tp
                  xor          t2, a1, s4
                  xor          zero, s9, s10
                  rem          s4, s2, a7
                  mulh         a1, sp, t1
                  add          s10, t5, s2
                  add          ra, s1, a5
                  and          ra, tp, a2
                  sub          t5, s1, t1
                  mul          s6, t1, s9
                  divu         s7, s9, a7
                  srli         a2, s10, 25
                  andi         a0, s1, -262
                  slli         gp, t6, 29
                  lui          s3, 10784
                  nop
                  mulhu        s5, tp, a7
                  nop
                  add          t6, t3, a1
                  srli         s11, a0, 0
                  sll          t4, t0, a2
                  sra          s2, t1, s5
                  or           a5, a5, a1
                  remu         t1, s1, a6
                  srai         s7, s7, 5
                  sra          s2, t1, t4
                  and          s9, t1, a2
                  sub          s8, zero, t5
                  and          s5, a6, zero
                  sra          a3, a6, s8
                  slt          a2, a3, a7
                  sltu         s7, ra, a6
                  mul          t2, a1, s7
                  sltiu        t5, a3, -411
                  sltu         gp, s2, s11
                  mul          a6, s0, s5
                  addi         a5, zero, 579
                  nop
                  addi         a3, a5, -696
                  andi         s10, s4, 835
                  srai         s9, s1, 13
                  srli         s3, t3, 28
                  xor          a0, t0, s10
                  srai         s5, a7, 18
                  lui          ra, 633832
                  mulh         t6, s11, a7
                  slt          s9, s9, s1
                  srl          s2, s8, s2
                  remu         t6, s2, a7
                  andi         s8, a2, 1935
                  mulhsu       s10, s10, s0
                  rem          a2, t6, ra
                  auipc        s9, 822845
                  srl          s8, t0, a7
                  mulh         a0, t3, a7
                  sub          s7, t5, zero
                  sltiu        s7, t0, 1846
                  slt          a6, a1, s0
                  slti         s2, a0, 600
                  andi         a3, s4, -1476
                  or           a0, s8, s4
                  slti         s10, sp, -1811
                  xor          s7, s11, sp
                  andi         s2, a2, -999
                  rem          s9, gp, ra
                  sra          s5, s8, a5
                  slti         s2, a2, -578
                  sltu         s5, gp, t4
                  add          s8, s10, ra
                  andi         s4, s7, -319
                  and          t6, t0, a3
                  slti         s9, tp, -100
                  auipc        a3, 475745
                  sll          t4, s9, t2
                  mulhu        t1, t1, t5
                  auipc        zero, 89376
                  mulhsu       tp, a6, a5
                  xor          s7, s2, s5
                  sltiu        a1, s5, -610
                  sra          a5, t6, s4
                  sub          a7, s2, s1
                  sltu         t2, s8, a7
                  srai         a5, s7, 17
                  sub          a2, t1, t6
                  mulhu        s2, t3, gp
                  slli         a3, s4, 25
                  div          a3, s2, s3
                  slt          t5, a2, a6
                  sub          a7, s9, a5
                  srai         t1, t3, 6
                  remu         s5, s1, s11
                  srai         s4, a1, 3
                  mulhu        t4, s11, s4
                  slt          t4, tp, a0
                  mul          s5, a7, t0
                  mulh         s1, s2, a6
                  ori          a3, sp, -1219
                  rem          s10, t2, s11
                  mulhu        gp, a6, sp
                  srai         s5, t1, 19
                  remu         tp, t1, tp
                  and          s5, t2, ra
                  nop
                  divu         s6, s5, s5
                  slli         ra, a1, 23
                  addi         t1, a0, -92
                  mulh         t4, s2, a6
                  sltu         a2, t4, zero
                  mulhsu       a0, gp, t4
                  lui          s2, 969224
                  mulhsu       s8, sp, s1
                  slli         t1, a6, 13
                  xor          s0, s5, s1
                  mulhsu       a6, a6, s8
                  mulhu        t5, a5, s10
                  lui          t1, 586181
                  xor          a3, a4, a1
                  srai         s8, s8, 9
                  mulhsu       a0, a4, s3
                  sltiu        s8, s3, -1025
                  addi         a2, gp, 143
                  srai         s9, t0, 19
                  srli         s8, zero, 16
                  and          s5, s3, a0
                  slti         t2, a5, -1889
                  mul          a2, s11, t2
                  rem          a2, tp, a1
                  add          a2, gp, a2
                  addi         t4, a4, 837
                  srl          a6, gp, a2
                  nop
                  srai         tp, zero, 2
                  slti         s6, a7, -501
                  auipc        s4, 378632
                  div          a4, zero, tp
                  slti         s11, s2, -1692
                  ori          a0, t3, -1084
                  slli         s5, t0, 23
                  divu         ra, s6, a5
                  nop
                  slli         t5, s4, 24
                  sltiu        a1, s5, 354
                  or           zero, sp, t3
                  mulh         s10, a3, ra
                  xor          t4, t0, s9
                  mulhsu       s5, tp, t1
                  sub          a7, a6, s9
                  lui          tp, 787732
                  remu         t2, a7, s11
                  xor          a0, a1, s2
                  sra          a7, a7, s10
                  srai         a7, a1, 22
                  div          a3, s2, s3
                  or           t1, zero, s8
                  lui          s11, 700557
                  lui          s3, 782230
                  xor          s9, a1, t0
                  srli         t5, s9, 18
                  div          s2, a0, t4
                  sub          ra, a6, t6
                  srai         s3, zero, 26
                  srli         a1, t3, 9
                  srli         s6, s1, 29
                  or           s2, sp, tp
                  mulhsu       tp, s6, s0
                  srl          s9, t0, s3
                  div          s2, tp, zero
                  ori          s9, a3, 1269
                  or           s11, s0, t1
                  slt          t1, t3, t3
                  remu         tp, a5, s2
                  mulhsu       a0, t0, s10
                  addi         a0, ra, 1130
                  sll          s2, s6, t1
                  addi         gp, ra, -1363
                  ori          s10, ra, 681
                  xor          t6, a3, zero
                  addi         a4, t3, 1573
                  srli         a2, a5, 26
                  mulhu        s7, zero, gp
                  div          s7, zero, t6
                  sll          zero, gp, t1
                  auipc        s4, 528440
                  mulhsu       t5, s10, s4
                  ori          a3, a7, -1334
                  sll          s1, a4, a1
                  srl          t5, s11, a1
                  srai         s8, a1, 6
                  xori         s9, a0, -721
                  andi         a3, s11, -1964
                  xori         gp, s8, 1420
                  andi         zero, tp, -154
                  sub          t1, gp, tp
                  mulhsu       zero, s4, s11
                  auipc        s4, 253616
                  divu         a7, a5, gp
                  srai         zero, t1, 17
                  rem          s0, t6, a5
                  slli         t1, t5, 31
                  mulhsu       t4, a7, t3
                  ori          s10, t2, -240
                  mul          a1, tp, ra
                  xori         a3, s9, -1289
                  rem          s6, sp, t4
                  mulhsu       a5, a0, s8
                  srli         s11, s4, 7
                  rem          tp, t6, sp
                  rem          t1, s2, s5
                  add          t4, s5, sp
                  and          t2, a0, s3
                  slt          a2, s7, ra
                  remu         ra, a2, s2
                  andi         ra, s7, -207
                  xori         s0, tp, 2000
                  xori         s7, s3, -1250
                  mulh         gp, s11, s0
                  sra          t4, s6, a5
                  sltu         a2, s7, t4
                  andi         a7, s11, 1335
                  sltu         s11, s1, a1
                  sll          s1, t2, t1
                  mul          a5, a6, t3
                  divu         s6, s3, zero
                  slt          s10, s0, ra
                  mulh         s7, s8, s7
                  sll          s10, s2, sp
                  srai         tp, t6, 0
                  nop
                  ori          t6, t0, -1116
                  mulhsu       s8, s2, a1
                  div          a3, s0, s9
                  sra          a5, s11, a3
                  xori         zero, s5, -1232
                  mulh         s11, s1, gp
                  sub          s7, s4, a3
                  mulhsu       ra, s6, a5
                  sub          a0, a6, s7
                  slti         tp, s2, -137
                  xori         a3, s6, -1910
                  remu         s2, t5, s0
                  and          s11, s0, s1
                  sub          a7, a5, a0
                  srl          t5, s6, gp
                  xor          t1, a6, sp
                  sltiu        a5, s4, -1781
                  slt          s10, s4, s6
                  sub          zero, s5, s6
                  nop
                  andi         t4, s10, -698
                  slli         t6, a1, 14
                  add          a2, t3, a7
                  sub          t5, gp, s1
                  srli         s2, t3, 5
                  la x2, test_done
                  jalr x0, x2, 0
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
                  addi x28, x28, -4
                  sw  x5, (x28)
                  add x5, x28, zero
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x28, x5, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x20, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x20, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x20, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x20, x9, ecall_handler
                  li x9, 0x1
                  beq x20, x9, instr_fault_handler
                  li x9, 0x5
                  beq x20, x9, load_fault_handler
                  li x9, 0x7
                  beq x20, x9, store_fault_handler
                  li x9, 0xc
                  beq x20, x9, pt_fault_handler
                  li x9, 0xd
                  beq x20, x9, pt_fault_handler
                  li x9, 0xf
                  beq x20, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  add x28, x5, zero
                  lw  x5, (x28)
                  addi x28, x28, 4
                  mret

load_fault_handler:
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  add x28, x5, zero
                  lw  x5, (x28)
                  addi x28, x28, 4
                  mret

store_fault_handler:
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  add x28, x5, zero
                  lw  x5, (x28)
                  addi x28, x28, 4
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  add x28, x5, zero
                  lw  x5, (x28)
                  addi x28, x28, 4
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  add x28, x5, zero
                  lw  x5, (x28)
                  addi x28, x28, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x5, x28, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  add x28, x5, zero
                  lw  x5, (x28)
                  addi x28, x28, 4
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
