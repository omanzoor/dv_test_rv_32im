.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x22, 0x40001104
                  csrw 0x301, x22
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  li x22, 0x0
                  csrw 0x304, x22 # MIE
                  mret
init:             
                  li x0, 0xf2f44a25
                  li x1, 0x0
                  li x3, 0x8d5fa22a
                  li x4, 0xc6edd89d
                  li x5, 0xf6416d2c
                  li x6, 0x4
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xf4010a48
                  li x10, 0x9cdf523
                  li x11, 0xff30acbe
                  li x12, 0x9
                  li x13, 0xd
                  li x15, 0xf1afed83
                  li x16, 0x57edb3bf
                  li x17, 0xf0b090c1
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xf9ff3593
                  li x21, 0xfc966079
                  li x22, 0xf
                  li x23, 0x0
                  li x24, 0x5
                  li x25, 0x0
                  li x26, 0x1bd99547
                  li x27, 0x80000000
                  li x28, 0x93df2637
                  li x29, 0x2
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x2, user_stack_end
main:             sub          s3, s4, gp
                  div          a5, ra, s11
                  sltiu        s5, t3, -1846
                  xor          a6, a2, sp
                  mul          t1, s5, tp
                  sltu         a3, a6, tp
                  ori          a3, s9, -493
                  srai         s5, t5, 18
                  ori          ra, zero, -664
                  mulhu        ra, t3, t1
                  sll          s8, tp, a4
                  lui          s10, 167218
                  srai         t6, a5, 18
                  xor          t1, t2, a0
                  remu         tp, s9, tp
                  mulhsu       a2, a5, a1
                  sll          t1, t6, s6
                  divu         s11, s11, t1
                  slt          t5, s1, gp
                  slti         s0, tp, 1650
                  sra          a0, t1, t4
                  srli         ra, s7, 20
                  mulhsu       t1, t0, a4
                  nop
                  slti         a1, s4, 602
                  xori         a7, s3, -410
                  sltiu        gp, a4, -238
                  slli         s3, t0, 9
                  auipc        a1, 731762
                  srl          s8, t3, a5
                  divu         s3, gp, zero
                  mulh         s3, s9, a1
                  add          s4, a7, a5
                  srai         s5, a0, 17
                  mulh         a0, s2, a4
                  slli         s9, zero, 4
                  add          s1, s10, zero
                  div          a3, s0, ra
                  sra          a3, a6, a6
                  slti         t1, a6, -798
                  srli         a5, s7, 5
                  slti         a2, a5, -546
                  ori          s6, a4, 1666
                  mulhu        ra, a7, s11
                  remu         t3, s8, s4
                  sub          t2, s9, t0
                  srli         s0, a1, 9
                  xor          t2, t6, a2
                  slli         s11, a3, 23
                  mulh         a3, s5, t0
                  andi         zero, a4, -1472
                  addi         gp, t1, -1540
                  slli         t3, s0, 23
                  addi         a0, t0, -404
                  srli         s9, s10, 12
                  lui          a5, 367925
                  slti         s11, s10, 1564
                  nop
                  nop
                  srli         a5, s6, 16
                  mulh         a3, a1, a6
                  slti         s7, a4, -92
                  slli         s11, t1, 22
                  addi         a0, a1, -1979
                  divu         s4, a3, t6
                  andi         t2, t3, -1335
                  sltu         s11, s5, t1
                  auipc        s5, 389017
                  auipc        s4, 352576
                  remu         zero, s8, a3
                  and          a1, s3, s4
                  and          zero, a0, a4
                  slt          a1, sp, t1
                  slli         s3, ra, 17
                  remu         t5, zero, s11
                  sll          tp, a1, t1
                  mulh         s8, t2, s0
                  slti         s3, t4, -770
                  add          t1, s10, a0
                  and          t1, t4, a7
                  slli         t3, a1, 6
                  mulhu        zero, zero, s8
                  xor          s3, a0, a1
                  add          a1, s11, t6
                  srl          a7, t1, s8
                  slt          s10, sp, t0
                  andi         a0, s2, 825
                  mulh         a7, t2, s7
                  divu         t1, t1, a6
                  slti         s7, a5, 1475
                  sll          s5, a7, a1
                  and          s9, t2, t2
                  srai         ra, ra, 27
                  and          s5, s5, gp
                  slli         t3, t4, 4
                  add          zero, t5, t5
                  srl          t4, t6, s1
                  divu         tp, s8, s8
                  sltu         s1, a6, s0
                  slt          gp, a4, a1
                  sub          ra, gp, s8
                  mul          s1, s0, s2
                  divu         t2, s7, tp
                  xori         ra, s7, 1222
                  slt          zero, a5, t4
                  nop
                  sll          a7, a0, s2
                  srli         s1, a5, 20
                  rem          s3, s6, s11
                  lui          t6, 303078
                  srl          t3, a0, tp
                  andi         a0, s1, -221
                  srl          s9, s9, s6
                  rem          a5, gp, s0
                  and          t4, a4, s4
                  sra          t3, a0, s4
                  srl          t5, t0, a1
                  srli         a3, s6, 20
                  mul          a0, s11, s10
                  mulhsu       s9, a7, a7
                  slt          s1, t5, sp
                  divu         ra, s4, a1
                  srai         t2, t2, 29
                  rem          s5, t3, s1
                  slt          s8, a5, s3
                  xor          s11, a4, s0
                  andi         s6, s0, 751
                  ori          s3, ra, -1019
                  div          s3, s7, t0
                  nop
                  mulh         a5, s8, tp
                  rem          a0, s9, a5
                  mulh         t1, s1, a0
                  auipc        a7, 14035
                  sra          a1, s7, s2
                  mulhu        s8, s11, t6
                  nop
                  lui          s5, 177501
                  auipc        s5, 198225
                  mulhsu       s1, t4, zero
                  mulhu        zero, t1, zero
                  and          s5, t1, a4
                  add          s1, s7, s8
                  divu         s8, a0, s7
                  and          t5, a0, s1
                  lui          s7, 744737
                  mul          t1, a6, s11
                  xori         zero, t6, -1854
                  nop
                  srai         t1, s0, 1
                  sll          t1, a6, t4
                  slli         a3, t1, 2
                  div          t1, s5, a2
                  add          s2, s8, ra
                  sltu         t1, gp, a6
                  slti         s7, a2, 919
                  nop
                  srl          t5, a7, ra
                  mulhu        gp, ra, a4
                  mul          t4, a7, a0
                  add          a0, t4, a1
                  ori          s5, s9, -1937
                  or           t6, s7, s11
                  mulhsu       a0, zero, a3
                  ori          s7, s3, -1289
                  mulhsu       gp, s6, s2
                  divu         s2, sp, tp
                  mulh         t2, s10, a5
                  slt          s8, s0, a6
                  slli         ra, a3, 18
                  mul          s2, a6, s2
                  nop
                  slli         s6, t1, 4
                  mulh         t2, s4, t6
                  srai         a5, a2, 16
                  lui          tp, 433896
                  mulhsu       a5, gp, s8
                  add          s4, a3, t6
                  mulh         s11, s1, s1
                  or           gp, zero, t2
                  lui          a3, 163482
                  srli         t6, t1, 14
                  slli         a2, t5, 12
                  sra          a3, t4, a4
                  divu         t4, s2, s4
                  srl          s0, a0, s10
                  mulhsu       gp, ra, t6
                  and          t1, a2, t5
                  auipc        s6, 439744
                  mulh         s2, a0, s6
                  divu         s11, s4, t3
                  add          a0, sp, s11
                  mulhsu       s0, s2, s9
                  auipc        s9, 599513
                  slt          s9, s6, t3
                  remu         t4, s10, s6
                  nop
                  sll          ra, t4, t3
                  mulhu        s8, s2, t4
                  mulh         a1, s10, gp
                  xori         s8, zero, -1353
                  ori          t1, a3, -1554
                  xori         a2, s9, 1762
                  slli         a6, sp, 31
                  andi         gp, s1, 1400
                  sub          t3, sp, s4
                  ori          a1, s5, 1875
                  srai         s3, s0, 6
                  div          t6, t4, t3
                  sra          s4, a1, t1
                  sra          s9, s10, t5
                  lui          s0, 163855
                  divu         t6, t4, t1
                  ori          gp, a7, 1003
                  sll          tp, s5, s11
                  srli         t5, a4, 10
                  mulh         s4, t5, s5
                  nop
                  sra          a2, s5, sp
                  sll          a1, t3, sp
                  srai         a3, a5, 28
                  auipc        s8, 955256
                  sll          t2, s10, s6
                  ori          a7, ra, 621
                  mulhu        a3, a7, zero
                  mulhu        a5, s11, t3
                  mul          s8, t6, a2
                  remu         s1, a7, a5
                  sltiu        zero, zero, -1854
                  auipc        s3, 227870
                  srl          a0, a6, t1
                  div          s8, s2, a5
                  mulh         t2, s9, t4
                  andi         s8, zero, 1074
                  ori          tp, gp, 1418
                  mulhsu       a1, a5, a3
                  mulhu        t6, s11, a4
                  rem          s1, zero, s11
                  mul          a0, gp, a3
                  and          t1, s1, s9
                  slt          a2, zero, s4
                  xori         s10, s7, -809
                  mulhsu       t1, s10, a2
                  srl          s7, s7, t0
                  div          a3, sp, zero
                  sll          s11, s1, s0
                  mul          s7, a7, a1
                  auipc        t6, 428833
                  srai         s9, a0, 2
                  slli         t2, a6, 13
                  divu         a5, t5, t3
                  lui          s5, 145286
                  slti         t4, a4, 321
                  xori         t2, a3, 1518
                  div          s2, a0, s2
                  addi         zero, t6, -1203
                  sltu         a0, t2, s11
                  remu         ra, t1, t2
                  sltu         t4, a3, gp
                  slt          zero, gp, a6
                  andi         t1, tp, 476
                  sra          gp, s5, s5
                  sltu         t1, s8, a7
                  remu         a2, s7, t6
                  mulhsu       a3, s9, a2
                  mulh         zero, s8, s7
                  or           t3, sp, sp
                  srl          s10, zero, s5
                  sll          s0, t2, zero
                  slli         s5, a2, 12
                  ori          s3, s0, 236
                  mulh         zero, zero, tp
                  or           t5, t5, s0
                  auipc        ra, 223575
                  sra          a6, t3, t3
                  srai         a5, s3, 13
                  addi         t6, t3, -644
                  auipc        t1, 642932
                  slti         s2, tp, -1677
                  xor          t3, a1, a4
                  srli         s3, t4, 29
                  nop
                  remu         a2, s11, s0
                  remu         s11, tp, s5
                  sub          s7, s9, s4
                  srl          a7, gp, s11
                  xor          s2, s7, a3
                  sltu         s6, a5, t2
                  andi         s7, s10, -1493
                  mulh         t4, a4, t1
                  slt          t1, t6, a1
                  addi         zero, s5, -1483
                  sltiu        t5, s10, 199
                  addi         a3, s1, 1843
                  div          s6, a4, t3
                  sll          zero, t0, a1
                  mulhu        tp, s0, a1
                  mulhu        tp, a7, s1
                  mulh         a6, t3, s3
                  auipc        a2, 881724
                  addi         a3, t1, -114
                  slli         a2, sp, 10
                  sra          s6, t6, s6
                  slt          a0, a2, a1
                  ori          a7, a5, 494
                  slt          a7, s0, t3
                  mulh         a3, a4, a5
                  mulhsu       t2, a5, s1
                  or           s11, t1, t2
                  sub          a0, s1, s2
                  addi         zero, t3, -1229
                  nop
                  sra          t2, a6, gp
                  mul          s2, s3, s2
                  or           a2, a0, s3
                  srl          s3, a1, a0
                  auipc        t2, 889956
                  rem          s7, t3, s11
                  and          a0, a6, a7
                  remu         s1, ra, a7
                  srli         s9, a1, 2
                  mulhu        s0, t3, t6
                  mulhsu       t6, zero, a7
                  slti         a6, s5, 639
                  andi         t5, s4, 178
                  lui          s11, 115957
                  add          a1, s1, s6
                  sltiu        gp, t4, -1246
                  mul          tp, s0, s5
                  divu         s5, s11, t4
                  rem          s11, s0, sp
                  sltu         s9, s10, a6
                  and          s11, s6, s0
                  sltiu        a6, a0, -18
                  addi         a0, s10, 1920
                  sltu         gp, a7, s2
                  srli         s10, s11, 18
                  divu         s1, s3, a7
                  sltiu        a6, sp, -333
                  srli         gp, a0, 12
                  srl          s7, gp, a1
                  sltu         s2, s1, t0
                  slt          a2, t3, ra
                  srli         s9, s3, 6
                  xori         s10, a3, 114
                  divu         a3, s0, a4
                  or           a5, a7, a7
                  or           a5, t1, t1
                  xori         gp, t4, -1298
                  mulhu        s6, t2, s4
                  sra          s0, t2, t6
                  add          a6, t6, t4
                  ori          t2, a4, -962
                  auipc        t6, 910566
                  srli         s6, a7, 20
                  or           t2, a4, s1
                  xor          s11, ra, s8
                  srl          s8, tp, t4
                  sub          ra, s4, s10
                  sltu         t6, a5, s4
                  srli         a1, s5, 4
                  slt          a6, a1, s4
                  and          s7, s6, ra
                  srli         a2, t0, 0
                  and          s11, t6, s5
                  srai         t5, s5, 30
                  srl          s1, zero, a4
                  remu         a3, t1, s11
                  slt          s6, a1, a6
                  slt          s5, t2, t3
                  andi         ra, t3, -1525
                  srl          s1, s2, t1
                  srl          t4, s6, a6
                  rem          ra, a2, s0
                  mul          s2, s5, a1
                  and          s8, s10, s2
                  andi         t4, s10, 1014
                  mulhsu       t3, s11, s0
                  sra          s9, t1, s2
                  nop
                  sltiu        ra, s7, 1976
                  lui          t3, 926453
                  and          a0, a1, s2
                  sltiu        ra, ra, 683
                  auipc        a7, 187405
                  sltu         s5, ra, gp
                  sra          gp, s4, t0
                  srl          s11, s10, s10
                  slli         s10, s5, 29
                  slt          tp, t6, t2
                  mul          a6, a5, zero
                  srai         s5, a2, 0
                  add          a1, ra, tp
                  mul          a1, s5, s3
                  slt          s9, s9, s1
                  and          s0, t1, a1
                  ori          s3, s7, 623
                  slt          zero, s2, a6
                  xor          s8, s7, a3
                  divu         t1, s3, a1
                  xori         s5, t3, -463
                  addi         s4, s7, 1963
                  auipc        s5, 805159
                  add          zero, a3, tp
                  rem          a1, t5, a3
                  srli         t1, t4, 20
                  mulhsu       t2, t0, gp
                  andi         s2, a5, -1821
                  sltiu        s8, s10, -668
                  auipc        s7, 678923
                  sltu         a5, gp, s8
                  slt          t4, a3, t2
                  mulh         s7, s10, a6
                  sltu         s2, t1, s0
                  sltu         s5, t2, s1
                  slti         s7, s1, 1547
                  xori         t1, s8, 1151
                  nop
                  mulhsu       t6, ra, gp
                  or           t5, t2, gp
                  addi         s8, t3, -1636
                  div          a0, sp, s0
                  xor          a1, s2, t2
                  xor          t1, s3, gp
                  lui          s2, 51507
                  srl          s4, t5, t2
                  sltu         a0, s5, a5
                  slt          t6, a2, t4
                  srli         t3, t6, 28
                  nop
                  sltu         t2, sp, ra
                  sub          t4, sp, a0
                  mulhu        tp, t4, t0
                  sll          gp, a0, t3
                  sra          s0, s6, t5
                  div          s5, s6, s9
                  mul          t6, s7, t1
                  slli         s7, a0, 23
                  mulh         a0, t0, s6
                  xor          s3, a1, s6
                  slli         zero, gp, 2
                  slt          a1, s5, t4
                  rem          s0, a1, s3
                  srli         s3, s10, 25
                  divu         a5, sp, t4
                  remu         s4, t2, s6
                  mul          s6, a5, s1
                  xori         t4, s1, -1572
                  srli         t1, a0, 15
                  mulhu        s1, a4, zero
                  sub          s4, s6, a5
                  srli         t2, t0, 15
                  mulhsu       s11, t4, t5
                  andi         s7, sp, -684
                  srl          s0, a4, a0
                  add          t3, s5, t0
                  andi         t2, t5, 124
                  nop
                  mulhsu       s5, t6, a6
                  auipc        t4, 795043
                  mulh         s6, tp, a7
                  sra          s0, a5, s8
                  srl          a5, s4, s10
                  srli         s10, t3, 8
                  or           s2, t6, t4
                  mulhsu       t4, s7, sp
                  xor          zero, t3, a0
                  slli         t5, t5, 9
                  sra          t1, a2, sp
                  sra          s1, t1, zero
                  slt          s2, s11, sp
                  andi         t6, s11, -521
                  slti         t2, a1, 263
                  slti         a6, s3, 471
                  nop
                  xor          s5, a5, s8
                  sltiu        t5, s3, 307
                  mulh         tp, a4, t4
                  mulhu        gp, s11, sp
                  mulh         t5, gp, ra
                  andi         s2, t0, -309
                  add          s6, t2, s1
                  xor          s3, a0, t0
                  xor          s0, a0, a2
                  sltiu        t2, s8, 1008
                  auipc        t6, 833267
                  ori          s4, t1, -387
                  ori          ra, a7, 1204
                  sltu         a5, t4, t2
                  mulhsu       s6, s1, s8
                  mulh         s10, s11, t3
                  rem          s6, sp, gp
                  mulhu        s10, s7, s7
                  and          gp, t3, s1
                  sra          gp, a4, a1
                  srli         a5, s8, 15
                  srai         s2, t1, 11
                  mul          t1, s1, a1
                  xor          s10, a5, a4
                  sub          a7, s11, t2
                  mulh         t5, s11, s6
                  and          t1, s2, t0
                  xor          a0, t4, s4
                  ori          s5, sp, 1772
                  or           s5, t0, s2
                  add          t6, a0, s7
                  slt          a2, s7, s0
                  remu         s4, a0, t5
                  mulhsu       t2, sp, a4
                  mulhsu       t3, t2, s9
                  or           tp, a0, t0
                  mulh         gp, sp, gp
                  andi         a7, s7, 181
                  rem          a7, s0, a5
                  mulhu        s2, a7, zero
                  sltiu        gp, t2, 140
                  mulhsu       t2, s5, s3
                  slti         s8, s0, -1157
                  mulh         gp, a2, s6
                  and          t6, t4, s5
                  xori         a7, zero, -1053
                  mulhu        s3, s5, gp
                  srai         t4, s9, 15
                  sltiu        s3, sp, 1984
                  div          a2, a4, a2
                  mulhsu       s0, a5, s5
                  srl          t5, t1, sp
                  sra          a6, tp, ra
                  mulhu        ra, gp, t0
                  add          s2, a7, s3
                  mulhu        tp, s10, t3
                  sub          t6, s6, s1
                  add          a3, t2, zero
                  slli         a1, gp, 14
                  xor          s11, s5, s3
                  srl          s1, s9, s0
                  sub          t3, s0, a1
                  sll          gp, t1, t6
                  sll          s6, a3, s10
                  mulh         s3, a1, tp
                  xor          t6, sp, a6
                  mulh         t6, s6, s5
                  or           t4, t4, t1
                  srli         t5, zero, 31
                  remu         s7, a4, s0
                  srai         zero, a1, 24
                  mulhsu       s6, a3, a7
                  add          a1, s7, a5
                  add          gp, s11, t0
                  xori         t2, a5, -1794
                  add          t3, s1, s4
                  sll          s10, t2, s10
                  xor          t5, sp, s9
                  mulhsu       a3, a2, ra
                  nop
                  sub          s11, t6, s10
                  sra          a2, gp, s11
                  sra          t6, t3, a1
                  sltiu        s10, s5, -1057
                  slt          a7, a6, ra
                  remu         s3, t3, s10
                  ori          s7, a5, 102
                  or           s5, s8, t1
                  divu         s7, a7, ra
                  mulhu        a6, s6, s0
                  sltiu        a6, ra, 1527
                  andi         t1, zero, -2009
                  slli         a3, a1, 28
                  or           s10, ra, a3
                  mulh         s10, a3, a2
                  mulhu        t2, gp, a5
                  xor          ra, s2, a5
                  divu         a3, s10, s3
                  sra          s6, gp, t6
                  auipc        s3, 1034441
                  sll          a3, s5, a1
                  mulhsu       zero, t4, t4
                  and          tp, t3, s3
                  ori          zero, t4, -270
                  addi         ra, s7, -565
                  mulh         t6, gp, a2
                  xor          s11, s9, a3
                  or           a2, a2, zero
                  nop
                  mul          t2, t1, t4
                  slt          a7, t6, sp
                  add          ra, s3, s0
                  xor          t1, t1, t2
                  xor          s1, s6, a2
                  div          gp, tp, t2
                  andi         zero, t3, -1386
                  srli         a1, a0, 2
                  auipc        a1, 60274
                  addi         t4, s8, 153
                  auipc        a6, 517389
                  slti         s3, s11, 1654
                  xor          s5, s11, t6
                  sub          s7, s8, a2
                  nop
                  srl          s3, s3, a3
                  sra          a7, t6, a5
                  ori          gp, s6, -1092
                  sltu         s2, s4, s8
                  lui          a0, 851777
                  xori         s11, t6, 484
                  srli         s9, s11, 27
                  lui          s6, 425527
                  srl          s8, s2, t2
                  ori          t3, t2, -884
                  mulhsu       tp, s4, t2
                  divu         s2, a5, a2
                  mulhu        s8, a6, a5
                  sub          t5, t6, t2
                  rem          s3, a0, s3
                  andi         gp, s10, 707
                  sltiu        zero, s3, -841
                  slli         gp, t2, 13
                  or           a6, a6, ra
                  and          s5, s9, s1
                  add          t6, t4, s10
                  add          a3, t1, a0
                  lui          s3, 949265
                  slli         s0, a1, 30
                  divu         zero, s11, a0
                  slti         t5, s8, -560
                  sub          s8, gp, sp
                  sra          s4, a2, a6
                  rem          s7, tp, s2
                  or           t3, t3, s1
                  sub          a1, s11, t0
                  sub          s2, s11, a7
                  slli         t5, a6, 10
                  mulhsu       t5, t1, s3
                  slti         s7, sp, 653
                  slli         a3, s9, 26
                  slt          a5, sp, a2
                  addi         t5, a5, 1786
                  sltu         s8, a0, a3
                  mulhu        s4, s8, s9
                  slt          a2, a6, s1
                  sltu         tp, s1, s5
                  divu         s10, s8, a1
                  slt          t6, a4, sp
                  sra          t6, a3, s4
                  mulhu        s3, s8, a4
                  xor          a2, a6, t6
                  slli         s2, t4, 30
                  div          t2, s5, sp
                  and          a0, a7, sp
                  divu         s10, a0, t4
                  mulh         tp, a5, t5
                  mulh         t5, t1, t4
                  andi         a2, t1, 184
                  sll          s0, s3, zero
                  divu         t2, s1, s8
                  lui          s7, 476026
                  divu         s4, a2, t5
                  slli         t4, gp, 11
                  and          a2, a7, t0
                  divu         ra, a6, t5
                  and          t2, t4, s3
                  addi         t2, s5, 1774
                  or           s1, t5, sp
                  divu         a7, ra, t3
                  slli         t4, s0, 30
                  and          t3, s8, t6
                  slt          s2, s1, zero
                  remu         t5, s9, a7
                  add          tp, tp, a2
                  divu         t3, t3, s4
                  xori         s0, t0, 1286
                  sra          a2, zero, a2
                  srli         a2, a7, 21
                  slt          s7, s1, s6
                  or           s5, a3, a7
                  slti         a6, t5, 364
                  nop
                  mul          s5, s5, t5
                  xor          s9, s7, s11
                  slli         a5, s11, 18
                  lui          t4, 245974
                  srli         a3, s10, 11
                  and          t3, t6, t4
                  sub          s7, s1, a7
                  slti         a2, zero, 526
                  mulh         s0, t3, s1
                  srai         a0, a5, 12
                  sub          a7, t6, t4
                  mulhu        t4, a4, a7
                  remu         s6, t2, t6
                  rem          a1, a3, sp
                  rem          s5, s4, sp
                  sra          s7, s5, tp
                  srai         s6, s11, 7
                  lui          s4, 422449
                  addi         gp, zero, 1227
                  srl          s1, s7, a4
                  slti         tp, s7, 725
                  mulh         a2, s5, s2
                  lui          a0, 711186
                  nop
                  srl          s1, gp, a2
                  sltiu        a3, zero, -1698
                  slli         t1, s4, 17
                  slt          s7, t5, ra
                  srai         a0, s9, 11
                  xor          s1, t3, t6
                  srli         a0, ra, 22
                  sll          s8, a4, a3
                  srai         s3, t6, 26
                  srai         a6, t4, 4
                  nop
                  mul          t4, t1, t6
                  ori          s3, a0, 152
                  add          s3, s9, s5
                  mulhu        t3, s2, a6
                  sltu         s10, s6, t2
                  sub          s5, s9, a2
                  mulhsu       t5, s0, s7
                  auipc        t5, 611558
                  slli         a0, gp, 21
                  srai         s9, a7, 25
                  xor          tp, a2, s8
                  andi         s9, ra, -978
                  mul          t5, t3, s7
                  rem          s8, t4, t1
                  auipc        a1, 934799
                  sra          t5, s9, t6
                  srl          s1, s0, a7
                  rem          gp, t4, t2
                  srl          a1, a7, s9
                  remu         s10, s2, a3
                  srli         s1, s0, 22
                  add          gp, t1, a4
                  andi         a6, t5, -386
                  sltu         t1, t5, a2
                  and          ra, a6, s5
                  andi         ra, t1, 1952
                  lui          a5, 168549
                  sltiu        t1, sp, -184
                  and          a3, t4, s4
                  mul          t1, t2, a5
                  addi         a5, s6, 828
                  slli         t3, s11, 17
                  rem          s8, sp, s9
                  xori         t5, t3, -600
                  add          a0, sp, a3
                  mulh         a7, t1, t5
                  addi         t4, a2, 1924
                  addi         ra, t2, -1617
                  ori          tp, t6, -2041
                  and          t2, ra, s10
                  xori         a6, s10, -931
                  divu         s10, s9, a4
                  slt          t1, a4, gp
                  addi         s9, a0, 1268
                  rem          tp, a4, s5
                  andi         t5, t1, -34
                  or           s0, s7, s6
                  nop
                  divu         t5, s3, ra
                  xor          a3, s10, s0
                  sltu         t6, a7, ra
                  mul          tp, s4, a7
                  sltu         s0, s8, s4
                  rem          a2, s3, s10
                  add          a3, a7, s10
                  mulh         s7, s11, s11
                  div          t6, t3, t4
                  addi         s8, ra, 1340
                  xori         t6, a1, -1281
                  and          t2, s10, a5
                  mulhu        t3, a4, zero
                  nop
                  slli         s3, a2, 3
                  xor          tp, a0, a6
                  mul          s10, s7, t0
                  lui          gp, 89433
                  sub          tp, s11, a1
                  ori          s0, s9, 1454
                  srai         t4, t6, 11
                  sltu         s6, a2, s9
                  rem          t2, a0, s0
                  mulhu        s6, tp, a1
                  div          s4, s3, a2
                  div          s0, tp, a6
                  xori         t1, t1, -1433
                  add          s5, a3, a2
                  ori          t2, a7, -1244
                  xor          t2, s1, s3
                  mulh         a6, s7, t0
                  srli         t6, tp, 13
                  add          s4, s4, t4
                  andi         gp, t5, 1627
                  or           s8, a7, a2
                  add          s9, t0, a2
                  sltiu        s3, s3, 1908
                  sltu         a3, s0, tp
                  nop
                  srl          zero, sp, s5
                  mulhu        a0, s8, a3
                  remu         s4, a1, a1
                  mul          s11, a5, s3
                  and          tp, a3, a1
                  and          s1, s5, sp
                  sltu         a0, s0, t1
                  sltiu        s10, t6, -634
                  remu         a5, a7, a5
                  mulhu        s2, a5, zero
                  mul          s7, t2, a7
                  mulhsu       t2, a0, gp
                  auipc        t6, 899039
                  remu         t1, t6, s10
                  slt          s0, s4, t3
                  rem          t2, a1, gp
                  mulhsu       s10, a6, a0
                  nop
                  srli         s0, s0, 3
                  ori          t1, ra, -1838
                  sltu         s11, a7, a1
                  sll          gp, zero, s0
                  divu         a0, s10, s1
                  or           t6, a5, s5
                  mul          a2, a2, s5
                  remu         s6, s10, s3
                  sll          s1, s1, t6
                  rem          t3, t5, t5
                  ori          a5, s4, 1188
                  ori          a2, t5, 589
                  mulhu        s9, sp, s4
                  slt          s3, s11, s2
                  xor          s1, a2, s8
                  rem          s5, s9, t3
                  srli         a3, t5, 17
                  nop
                  sltu         gp, a0, a1
                  lui          ra, 234736
                  srl          s7, s1, zero
                  ori          s5, t6, 1802
                  addi         a0, sp, -1301
                  ori          ra, t1, 1823
                  sltu         t1, s11, s8
                  sltu         ra, a7, s5
                  divu         s6, t1, a1
                  nop
                  mulhu        t5, s4, s10
                  or           s5, t6, t0
                  addi         t4, s0, 1463
                  mul          a7, a6, t0
                  sltu         a6, tp, s2
                  srli         s8, s2, 24
                  slt          s1, gp, t3
                  srli         s0, s8, 31
                  remu         s10, a2, t0
                  div          a0, t6, a1
                  mulh         s4, t6, tp
                  divu         s11, s5, s6
                  sub          a5, s1, gp
                  mulhsu       t2, a7, a3
                  lui          tp, 52792
                  andi         a6, a7, -440
                  and          a6, zero, a2
                  xori         t6, t0, 1872
                  divu         s0, s6, zero
                  xor          a0, s6, a1
                  slli         t5, sp, 15
                  addi         s10, s3, -1857
                  slli         a1, s6, 3
                  mulhu        t2, t6, t6
                  slti         a7, t0, -1890
                  or           s1, sp, s3
                  or           s10, s2, t6
                  sra          s11, t6, ra
                  nop
                  div          t1, s4, t0
                  andi         t3, s10, 808
                  or           a0, s3, a0
                  ori          gp, s5, -705
                  sra          s11, s3, s8
                  andi         a2, ra, -1362
                  remu         zero, a2, ra
                  mul          a5, a0, s10
                  mulh         gp, s6, t2
                  sltiu        s6, a2, -1625
                  slli         a2, s5, 0
                  slti         s8, s9, -90
                  ori          t5, sp, 676
                  nop
                  sll          t5, s2, s7
                  divu         a6, t1, a3
                  slti         t2, t4, -220
                  addi         s6, a2, -2014
                  sll          a5, s7, s9
                  sub          a5, s11, a1
                  divu         a5, s0, t5
                  srai         s10, s3, 23
                  auipc        s6, 241653
                  sra          a2, t2, a5
                  slli         s8, t3, 15
                  andi         t4, gp, 118
                  add          a5, s9, a6
                  xor          s3, s1, s5
                  sra          s5, sp, s8
                  andi         a7, s6, 487
                  mulh         t3, a2, tp
                  or           s9, a6, zero
                  ori          gp, a1, -867
                  mulh         tp, ra, s6
                  slli         t1, s8, 21
                  rem          a6, s0, s2
                  mulhsu       a0, gp, tp
                  auipc        t3, 646526
                  nop
                  srai         s2, t6, 2
                  lui          a3, 695276
                  and          a1, s8, s9
                  or           ra, s1, a6
                  srai         a5, a6, 19
                  sub          a5, sp, t5
                  xori         s5, s1, 644
                  addi         t6, t5, 354
                  sltu         a0, a2, s5
                  or           a2, t2, s4
                  andi         t4, s4, 1072
                  mulhu        s1, t0, s2
                  sll          t3, s10, a6
                  sub          t2, s8, tp
                  add          t2, t6, t2
                  srai         s4, a3, 23
                  srli         s5, a3, 12
                  divu         s9, zero, ra
                  mulh         t1, s9, t1
                  srl          s10, s10, a4
                  sra          a0, sp, a3
                  mul          a3, tp, tp
                  sltiu        gp, t4, 1842
                  nop
                  slt          a3, s5, t6
                  mul          s8, s0, t4
                  xor          t5, t3, t1
                  andi         s0, t1, 1125
                  or           s4, s2, zero
                  nop
                  div          t5, a5, tp
                  rem          tp, s10, t0
                  nop
                  divu         s6, a4, t3
                  srl          tp, a2, zero
                  div          s11, a5, s5
                  nop
                  lui          t6, 637213
                  remu         s1, s7, t2
                  slt          a5, a6, s1
                  srai         a5, a2, 7
                  mul          t2, s3, a0
                  or           ra, gp, tp
                  remu         a7, s2, a2
                  sub          s7, ra, t0
                  srai         s11, a0, 19
                  ori          s7, a7, 120
                  slti         s2, ra, 1314
                  xor          s2, sp, s11
                  srl          a7, s10, a7
                  sll          a7, a3, t1
                  srl          s3, s9, sp
                  nop
                  and          a3, ra, s9
                  addi         s11, t4, 1023
                  mulhsu       a6, t1, sp
                  srai         s3, s10, 3
                  sltu         a2, s8, a3
                  addi         a5, a2, -1111
                  sltiu        s6, s10, 818
                  mulhsu       t5, gp, a7
                  nop
                  srai         s6, s8, 18
                  xor          s7, s1, t3
                  srai         s7, s6, 8
                  xori         s4, a7, -1811
                  sll          s4, a5, s5
                  addi         t2, a1, 867
                  sll          a2, t1, ra
                  srl          tp, t1, t3
                  slti         a5, s11, 573
                  sltiu        zero, s11, 1956
                  ori          s1, gp, 1811
                  divu         s10, t4, t5
                  sltu         s11, s2, a1
                  addi         t5, s0, 1899
                  or           t4, s7, ra
                  slli         a2, s10, 21
                  addi         zero, s7, -1871
                  rem          s0, a6, a6
                  sltu         s10, a2, t2
                  ori          t4, t0, -1913
                  andi         a0, s0, 1984
                  srli         tp, t6, 10
                  andi         a1, t6, -1113
                  and          a0, a5, t1
                  mulhsu       tp, tp, tp
                  andi         s5, t2, 1184
                  lui          s0, 395989
                  mul          s1, a5, s3
                  mulhsu       a5, s2, s1
                  xori         t6, a5, 818
                  lui          tp, 170416
                  div          s0, ra, a4
                  mulhu        s3, a3, t6
                  or           s9, a6, a0
                  sra          s5, s7, s2
                  lui          a6, 723499
                  rem          s7, s1, s4
                  lui          a3, 158232
                  and          a7, sp, t5
                  srai         s3, t4, 4
                  ori          tp, t6, 1378
                  sub          a1, s3, t5
                  ori          s7, ra, 1807
                  xor          t2, ra, tp
                  div          tp, t3, a6
                  sltu         t4, s6, t3
                  mulhsu       a7, a7, ra
                  div          s10, a0, s3
                  slli         s5, a1, 27
                  slt          tp, a3, a1
                  and          a0, s9, s3
                  lui          t1, 93513
                  div          s7, s11, s9
                  xor          s1, s9, s11
                  remu         a3, t1, a7
                  rem          s9, s0, a6
                  div          s6, a5, a7
                  mulh         t1, t1, ra
                  sltu         s1, t5, s6
                  add          t2, a5, s1
                  mulh         s4, gp, s8
                  slli         ra, ra, 28
                  ori          s9, a5, -967
                  divu         a2, a3, s2
                  nop
                  and          a3, s8, a7
                  mulhsu       a7, s10, a2
                  slli         a5, s9, 19
                  andi         s4, a3, 937
                  slli         s9, s9, 26
                  rem          a7, tp, s11
                  andi         s2, a1, 1403
                  xor          s7, t5, t5
                  srli         a7, a4, 0
                  xor          s2, t0, s5
                  nop
                  sll          s10, sp, s0
                  srai         t5, s4, 28
                  xor          t2, s8, zero
                  sltiu        s4, t2, -1870
                  srli         s5, t3, 23
                  sltiu        a3, a4, 448
                  slti         s7, t2, 1798
                  addi         s5, t1, 1875
                  sltiu        s2, s11, -136
                  slt          s10, sp, a5
                  xori         s4, zero, -441
                  sltiu        a2, t3, 684
                  rem          s5, s11, zero
                  srl          t3, t2, s2
                  mulh         s5, a4, s4
                  ori          s6, tp, 1032
                  lui          ra, 687213
                  mulh         s8, tp, a2
                  remu         s1, sp, gp
                  auipc        a6, 530324
                  xori         ra, t6, 667
                  sra          gp, tp, t6
                  srl          a7, a3, gp
                  mulh         s2, s2, t2
                  xori         t6, s8, -1146
                  srl          tp, zero, s8
                  or           t4, tp, s6
                  sub          t1, s11, gp
                  mulhsu       a1, a0, s9
                  andi         t1, a6, 1294
                  slli         t1, t2, 11
                  mulhu        t2, s6, s8
                  andi         s10, gp, 1398
                  srl          a1, a3, a3
                  sltu         s5, zero, t1
                  xor          s7, s0, s4
                  div          a5, a4, s4
                  mulhu        a0, a4, a3
                  sll          s0, t2, a0
                  slti         s3, a5, 475
                  sra          s9, a0, s3
                  srai         t2, s11, 12
                  divu         t6, a7, s9
                  divu         t4, a1, t6
                  sltiu        ra, t0, -1267
                  or           s1, s3, a3
                  add          a6, tp, t3
                  xor          a2, s5, ra
                  div          a0, s6, gp
                  add          a1, t4, s1
                  sub          ra, s8, a3
                  slt          gp, a2, a7
                  srl          t5, gp, sp
                  xor          a5, s9, t4
                  remu         s10, t0, a0
                  mulhu        s8, s2, gp
                  xor          ra, s2, a0
                  ori          a6, s6, 1205
                  xori         t4, a5, -34
                  sub          t2, s2, s7
                  srl          a7, t0, a4
                  add          s4, t4, sp
                  sltiu        s2, a3, -712
                  mulh         s5, t2, a5
                  remu         s10, t4, a3
                  mul          s5, ra, t5
                  ori          t3, a4, -1027
                  xori         a7, sp, 375
                  remu         a7, a7, t4
                  sub          s9, s3, a7
                  slli         s8, zero, 23
                  lui          t2, 615178
                  remu         a1, s2, t0
                  sll          s5, s2, s10
                  sll          a7, s2, a7
                  sll          a3, t1, t5
                  mul          t3, s7, zero
                  mul          s6, t5, ra
                  srl          zero, t4, s10
                  sll          s6, ra, s6
                  add          gp, s11, t4
                  rem          ra, sp, s6
                  sll          t2, a0, s7
                  slt          s7, zero, s8
                  slti         a1, a1, -2037
                  andi         t1, s1, 1281
                  div          s9, a1, s9
                  srai         a2, gp, 25
                  remu         a0, s0, a0
                  srl          zero, t6, s9
                  sltiu        s1, s8, -792
                  xor          ra, zero, s8
                  sltu         a5, s8, sp
                  rem          s5, t0, a0
                  slti         ra, s8, 663
                  and          s11, s10, a6
                  mulhsu       t6, t2, a1
                  mul          s11, s2, s0
                  divu         t5, t6, a7
                  slli         s1, s9, 15
                  div          t4, a5, tp
                  div          s7, a0, s3
                  slli         t4, ra, 24
                  mulhsu       s3, a7, s4
                  sra          t4, s8, a0
                  divu         s10, s7, t6
                  sll          zero, a5, a4
                  divu         a7, s10, a2
                  srai         a5, s5, 9
                  xori         s4, s9, 1384
                  div          a1, s6, s8
                  divu         t6, s10, s6
                  lui          a2, 351301
                  div          tp, zero, tp
                  sra          a1, a2, t6
                  srli         a5, zero, 20
                  ori          zero, a6, 1309
                  mul          t4, sp, a1
                  ori          s1, a1, 1716
                  or           s2, t4, s7
                  sltiu        a3, a5, 305
                  sra          gp, t2, a1
                  or           a2, tp, t4
                  divu         s0, s5, s5
                  addi         s1, s0, 525
                  slli         s9, t1, 30
                  divu         a6, s2, t4
                  slti         s5, t5, -269
                  srl          gp, t0, s4
                  andi         a0, t4, -1864
                  lui          s0, 593914
                  sll          t2, t2, s1
                  slli         a2, s9, 7
                  ori          s2, t5, -37
                  mulhsu       a0, a4, a6
                  divu         s2, zero, a7
                  and          a5, s6, t5
                  srl          s9, s4, a3
                  sub          s0, sp, a6
                  srl          t1, s5, t5
                  sltu         a1, a7, t2
                  sltiu        gp, a7, 1878
                  slli         a7, t5, 19
                  mulh         s9, s10, gp
                  sub          s7, sp, s9
                  srai         t1, t2, 15
                  sltiu        t3, a5, -1082
                  slli         zero, s2, 7
                  mulhu        t2, a7, s1
                  srai         a5, a3, 1
                  andi         a6, a4, -1490
                  slti         t3, s1, 390
                  sltu         s6, ra, sp
                  slt          t4, s8, a0
                  or           s5, s0, s1
                  sltiu        t2, t4, 1072
                  mulhu        a1, a4, t2
                  xori         s8, a4, -593
                  div          t4, a0, a1
                  div          s8, gp, t4
                  or           s1, s10, tp
                  rem          s5, a6, a4
                  auipc        t1, 610242
                  xor          a7, s4, s2
                  addi         s0, sp, -1203
                  sltiu        t4, a7, 1544
                  sll          s4, s10, t2
                  sll          tp, t4, t3
                  srli         s8, tp, 19
                  slt          s6, a5, s0
                  srai         t1, t3, 3
                  div          t5, s4, t1
                  slt          zero, s4, t6
                  nop
                  rem          a0, s6, s10
                  xori         t6, s9, 165
                  sltu         a6, a2, s7
                  sltiu        s5, zero, -2030
                  slt          a5, a3, t4
                  sltu         t1, zero, zero
                  nop
                  srl          s9, t6, s1
                  slti         s10, t1, -1680
                  srli         s7, s6, 2
                  sll          t5, s8, a7
                  sltu         t3, gp, s1
                  slti         s1, t0, -1093
                  mul          s3, t6, a6
                  sll          a7, s6, s9
                  slt          a6, zero, t2
                  slti         t4, t6, -1183
                  sub          t5, s6, s9
                  addi         s11, sp, 1785
                  xori         a1, s9, 689
                  andi         t1, a1, -118
                  sltu         a1, zero, t4
                  remu         t2, sp, a0
                  rem          ra, s1, gp
                  sll          t3, s3, zero
                  xori         s7, s10, -930
                  and          t5, t4, a0
                  div          zero, t5, s1
                  sra          s9, a1, a3
                  or           s6, a1, a7
                  rem          t6, t2, a6
                  add          a7, s7, a2
                  mulhu        s8, s3, t0
                  mulh         s3, zero, t5
                  slti         a0, s9, 804
                  andi         a3, s5, 1644
                  slli         a1, a7, 17
                  nop
                  sub          ra, s1, s2
                  div          gp, a3, t0
                  auipc        a7, 999758
                  srli         s11, ra, 13
                  remu         s9, s4, s1
                  divu         t4, s6, s9
                  mul          s5, s0, s1
                  sll          s3, s11, s7
                  ori          a6, a1, -1493
                  srli         t4, s3, 19
                  divu         s10, sp, sp
                  addi         t3, a0, -1066
                  andi         t2, s6, -1468
                  nop
                  add          ra, t3, s3
                  mul          gp, a1, t5
                  mulhsu       s0, t3, t4
                  rem          zero, a7, a1
                  divu         s10, s3, ra
                  nop
                  divu         s0, t4, t5
                  or           s7, a1, t6
                  div          s9, s0, a1
                  srli         t5, s8, 11
                  sub          a7, t1, ra
                  remu         a5, t1, zero
                  mulh         t5, a3, t6
                  srai         s2, s6, 6
                  xori         t1, s10, 1065
                  addi         t6, sp, 1226
                  xori         a2, s9, -1109
                  slti         a2, t4, -608
                  srl          s4, ra, a1
                  lui          a0, 732752
                  andi         s3, t1, 1439
                  sub          zero, s2, t0
                  sra          zero, s8, ra
                  add          a5, zero, a7
                  sub          s4, a2, t6
                  sub          s0, s3, s11
                  div          t3, a1, s10
                  sltu         s11, s4, t0
                  add          s11, s2, tp
                  divu         a6, a1, t0
                  xor          a3, t6, zero
                  addi         zero, ra, 1696
                  sltu         s2, a0, t1
                  nop
                  srai         s7, t6, 15
                  sltiu        a6, s2, -1893
                  remu         t1, s11, t4
                  ori          a6, s1, 1976
                  mulhsu       s8, s10, t6
                  mulhsu       gp, a5, a1
                  add          s10, gp, t0
                  rem          s1, gp, s10
                  or           s9, s4, s8
                  mul          s8, s9, s3
                  ori          tp, s11, -1881
                  xor          t1, a7, s0
                  mulhu        ra, s8, a1
                  xor          a3, s8, s9
                  rem          zero, gp, a6
                  div          s10, s1, t0
                  remu         a0, sp, t4
                  addi         s2, a3, 450
                  mul          s8, s5, s9
                  srl          t5, t4, a7
                  srli         t2, t2, 15
                  xori         s11, s1, 2045
                  sra          t3, s3, s8
                  auipc        t3, 563811
                  nop
                  add          s9, s4, ra
                  remu         s6, s11, s9
                  auipc        s6, 52203
                  sll          gp, gp, s9
                  srli         a0, t0, 4
                  sll          s2, s11, gp
                  srli         zero, a7, 25
                  slti         gp, s7, -39
                  slt          a1, t1, t5
                  slti         t2, s8, -1792
                  sltiu        a7, s0, -1070
                  slti         a2, s6, 797
                  auipc        s5, 37209
                  sltiu        s8, t0, 954
                  andi         t4, s10, 557
                  div          s11, s1, a2
                  mul          a5, a0, a4
                  sll          s8, a7, s6
                  srli         t2, t4, 24
                  or           t4, a2, s1
                  div          s1, t1, a1
                  auipc        t1, 723153
                  sltiu        t3, t3, 421
                  slt          s3, a4, s1
                  rem          s5, s7, sp
                  div          s1, zero, s7
                  div          ra, t2, gp
                  slt          a6, t3, t1
                  sltiu        a3, t6, 1093
                  sra          a3, tp, s2
                  remu         s2, s4, s9
                  auipc        a3, 249973
                  sub          a1, t0, tp
                  xor          a3, s11, s11
                  sltiu        s8, a3, 1542
                  sub          tp, s2, s3
                  remu         a6, t2, s2
                  srli         ra, t0, 3
                  divu         s6, sp, s6
                  sll          ra, s1, a0
                  sll          s4, s8, s3
                  auipc        s10, 842274
                  sltu         t2, a1, t6
                  sltu         s2, s4, s1
                  or           ra, a6, s6
                  sra          s10, t4, tp
                  sltu         s5, s8, t6
                  remu         t5, s5, t3
                  mulh         a2, sp, a1
                  andi         a0, t3, -262
                  divu         s5, s2, s2
                  sub          s10, t3, s0
                  addi         tp, zero, 622
                  sra          s5, sp, t4
                  add          a1, s5, s0
                  or           s8, s10, a0
                  divu         t3, t5, s7
                  auipc        s6, 920925
                  andi         s8, t4, 350
                  rem          zero, ra, a3
                  rem          t2, a2, t5
                  rem          a7, s9, a0
                  mulhu        s8, a7, s0
                  auipc        t2, 577254
                  mulhu        s9, t6, s3
                  sub          a0, s10, a0
                  slli         t2, s8, 29
                  and          a6, s9, gp
                  slti         a7, t0, 341
                  or           tp, gp, s1
                  or           gp, a1, t4
                  add          a7, t1, a7
                  sltiu        a7, t3, -201
                  add          a5, s10, gp
                  xori         t3, sp, -2029
                  sub          s7, a1, s11
                  slt          t4, zero, s6
                  mulhsu       s9, a3, a4
                  ori          a6, s7, -947
                  nop
                  remu         t1, s11, s11
                  xori         s3, s9, 1778
                  sltiu        t5, s7, 43
                  auipc        s5, 268084
                  mul          a6, t0, s2
                  sltu         a7, tp, a3
                  mulh         tp, s5, t4
                  mulhsu       ra, a5, t2
                  lui          s6, 531986
                  ori          tp, s3, -1559
                  slt          t4, ra, t4
                  addi         a3, s1, 669
                  nop
                  xori         s9, a6, -1862
                  mulhu        s2, s7, t6
                  xori         a7, t0, 1554
                  slt          t5, s6, s11
                  sll          s2, a1, a3
                  srli         s10, s8, 14
                  and          t2, t6, s8
                  xori         s10, s7, -677
                  lui          ra, 196441
                  rem          a7, s9, s6
                  or           a5, s2, a4
                  sra          s6, tp, s11
                  xor          a2, s2, t1
                  nop
                  slti         a2, ra, -1252
                  sltu         a0, sp, ra
                  srl          s9, a4, t3
                  addi         t6, a1, -1147
                  rem          t5, s6, s1
                  mulhu        s10, s8, t3
                  sltiu        gp, a1, 1938
                  srl          t1, t0, s6
                  slti         tp, sp, 1497
                  divu         s7, a0, a7
                  and          a5, s11, s0
                  or           s6, t6, tp
                  slt          t3, s2, a7
                  srli         s7, s1, 5
                  xori         s9, t0, 1396
                  add          t2, a2, t5
                  mulhu        s4, s11, s0
                  auipc        s11, 538153
                  lui          a7, 388802
                  slti         t4, s5, 741
                  andi         s3, a2, -1449
                  andi         s1, gp, 1551
                  xor          t2, t5, sp
                  auipc        a2, 129380
                  slti         a6, s9, -2020
                  divu         t3, s5, t6
                  add          s9, ra, s9
                  mulhsu       a1, s4, zero
                  srl          s5, zero, s8
                  slli         s0, sp, 14
                  or           s5, t2, t5
                  sltiu        s0, t3, -648
                  divu         t4, s9, tp
                  mulhsu       s9, s9, s3
                  div          zero, a5, a7
                  xor          s11, t2, tp
                  nop
                  srai         s2, a6, 10
                  auipc        s1, 853657
                  slti         s1, s2, 1170
                  add          a0, sp, a2
                  div          s7, t3, a2
                  mulhsu       s1, a0, a0
                  divu         a0, t4, a7
                  addi         s8, t5, -104
                  sub          gp, a4, s8
                  ori          a5, tp, -1099
                  or           s2, s2, s8
                  andi         a3, s0, 305
                  or           t1, s4, a7
                  xor          a6, s0, a6
                  xor          t2, s1, t6
                  divu         s4, t2, s8
                  mul          a3, t5, s8
                  lui          s9, 771630
                  sub          s11, a2, t6
                  or           a5, gp, s10
                  xor          a1, s8, t0
                  sltiu        ra, s9, -898
                  remu         a2, a3, a5
                  and          zero, s8, gp
                  sltu         t5, a4, s9
                  nop
                  mulh         s10, s8, s3
                  slli         a2, t5, 2
                  sub          t3, s11, t3
                  xor          a2, t1, s10
                  rem          s11, s5, a4
                  nop
                  nop
                  sltu         a6, a6, s8
                  slli         tp, s0, 16
                  divu         t1, s4, a5
                  sll          tp, s5, s5
                  lui          a6, 472817
                  sltiu        t6, s3, 124
                  mulhu        s8, a3, a6
                  div          s6, s4, gp
                  lui          t4, 673521
                  mulhu        s7, s6, s0
                  mulhsu       t2, s7, a6
                  srai         s6, t4, 13
                  xor          a7, s0, gp
                  auipc        t5, 759159
                  add          zero, s1, s2
                  div          a5, s9, s5
                  auipc        s5, 160525
                  andi         a3, t1, 930
                  remu         a0, t3, ra
                  srl          s7, a5, t0
                  sltu         a6, ra, t3
                  srli         t1, t2, 29
                  xori         t6, t4, 573
                  add          s0, ra, a6
                  auipc        t5, 658463
                  srl          ra, t3, s4
                  slli         s2, a6, 10
                  rem          t3, s6, s11
                  sra          s8, a1, s3
                  remu         s1, ra, t3
                  lui          t1, 68389
                  sltu         gp, a4, a0
                  xori         t5, t2, 1588
                  sra          a7, t1, t1
                  or           s4, s0, a1
                  rem          tp, zero, a6
                  slti         t4, s9, -2039
                  lui          tp, 152362
                  auipc        s7, 984614
                  andi         s0, s5, 1028
                  add          a1, ra, a7
                  mulhsu       s5, tp, t3
                  addi         a2, sp, 932
                  slti         s4, t5, -1667
                  xori         tp, a0, -1305
                  srai         s3, a4, 2
                  mulhsu       t4, s8, sp
                  sll          s3, s4, s8
                  slti         s6, a6, 1619
                  mulhsu       t2, s5, gp
                  srl          t1, t6, s10
                  sra          s7, a2, s5
                  slli         s9, t0, 30
                  auipc        zero, 439290
                  srai         zero, a4, 4
                  mul          s4, a1, a4
                  srai         a2, t6, 18
                  nop
                  sub          s9, s5, s10
                  mul          s1, a3, s1
                  ori          s9, a6, -618
                  mulh         tp, s8, gp
                  ori          tp, zero, 604
                  or           s6, s5, t6
                  sltu         a6, s6, gp
                  nop
                  mulh         a0, s10, s7
                  srai         s2, s2, 21
                  mul          a7, a7, t3
                  or           s0, a3, s7
                  srli         ra, t6, 13
                  srli         a5, s11, 31
                  sll          a6, s8, a2
                  srl          s4, s1, a1
                  srai         s3, s6, 20
                  rem          t2, s6, a4
                  lui          s1, 1039590
                  ori          t4, a3, 1917
                  slli         s10, s0, 4
                  slt          a2, s3, zero
                  lui          s11, 771600
                  mul          a0, zero, s0
                  divu         a3, s8, t1
                  slli         s6, s11, 7
                  slli         t1, gp, 30
                  sltu         t5, t4, t0
                  xori         t1, s11, 112
                  sltiu        t3, ra, 1315
                  slli         t1, s11, 3
                  srli         t4, s7, 12
                  srli         zero, s5, 25
                  sub          t1, a5, t4
                  sub          t3, zero, s4
                  addi         a3, ra, -1143
                  add          a3, s5, s7
                  srli         s1, t4, 17
                  divu         t6, t4, a7
                  divu         a0, a1, tp
                  srai         a5, t3, 26
                  xor          a6, s9, t4
                  andi         s9, s1, -149
                  slt          s8, ra, t0
                  slt          t1, s1, a6
                  xori         tp, a5, -283
                  remu         s2, s11, s3
                  slti         zero, s4, 1664
                  ori          t1, t3, -942
                  andi         a7, s8, 1734
                  srl          a3, s4, a4
                  sltu         a1, s11, a1
                  srl          s7, gp, a3
                  sub          a0, t6, t1
                  mul          s9, sp, s7
                  xori         t5, s4, 1814
                  slti         t5, t0, -520
                  mulhsu       s7, a2, a2
                  rem          s7, a0, s10
                  mulh         s10, a5, a4
                  add          a0, a6, sp
                  srai         ra, s11, 24
                  add          t3, a6, t5
                  mulh         s10, s0, s3
                  nop
                  xori         s6, s1, -1555
                  slt          s11, t5, s6
                  and          gp, s9, t0
                  sll          t6, s11, t2
                  ori          s8, s2, -129
                  sub          t5, gp, a6
                  div          a6, t4, a1
                  rem          s8, t0, s8
                  srai         a0, t4, 5
                  slti         t1, t3, 1695
                  sll          s10, s2, s6
                  mulhsu       a5, s7, t1
                  mulh         ra, s11, tp
                  nop
                  addi         s6, a0, 1608
                  add          a2, gp, t1
                  or           s5, t2, s11
                  slt          t5, s1, t0
                  srli         s10, a5, 0
                  srli         a5, a0, 30
                  mulh         tp, t5, a0
                  ori          s6, t4, 301
                  remu         t5, t5, ra
                  slli         s0, s7, 6
                  slt          gp, s6, s2
                  nop
                  sub          a6, ra, s8
                  sltu         s11, s10, t3
                  ori          s5, t0, 565
                  nop
                  slti         tp, t4, -2008
                  srli         t2, a6, 23
                  rem          tp, s11, ra
                  mulhsu       t1, s3, a7
                  sltu         a1, a6, t5
                  sltiu        t2, s1, 559
                  mulh         a1, s11, gp
                  sltiu        t2, s3, 941
                  slli         a5, t6, 12
                  sub          s11, s5, s11
                  or           s4, t0, t5
                  sra          a2, s2, a1
                  sltu         t2, s0, zero
                  srli         s6, s2, 30
                  sltiu        a2, a4, 1654
                  mul          s7, s2, sp
                  sra          gp, ra, s11
                  xori         s3, t4, -1780
                  ori          a5, tp, 1321
                  nop
                  mulh         a2, s8, a6
                  sra          s0, s4, gp
                  nop
                  mulhsu       t5, s3, s8
                  andi         t1, a3, -1484
                  mulhu        t3, t3, s0
                  slli         a5, s10, 11
                  mulhu        zero, s9, a2
                  auipc        a5, 332031
                  lui          s0, 614453
                  sll          a3, t6, s11
                  div          s2, s11, s10
                  srai         a5, sp, 18
                  mulhsu       a5, a1, s10
                  or           s3, t3, sp
                  slli         a5, a5, 2
                  xor          s5, tp, zero
                  srl          gp, t5, a1
                  srl          t1, a0, t6
                  sra          gp, a2, ra
                  xori         s0, s8, 1467
                  xori         a2, s8, -209
                  xor          a6, t2, s11
                  slti         a5, t3, -101
                  mulh         t1, sp, a0
                  nop
                  sub          t2, t3, tp
                  auipc        gp, 351436
                  auipc        a2, 483249
                  lui          a6, 151778
                  srai         a1, s6, 16
                  mulh         gp, tp, a0
                  sll          tp, t4, t5
                  sub          a3, sp, a6
                  auipc        t3, 600789
                  rem          s3, a6, a4
                  andi         t5, s7, 808
                  mulhsu       a3, s7, s2
                  srli         zero, t6, 17
                  lui          t3, 731979
                  sltu         s2, gp, t4
                  srai         s2, s2, 23
                  mulhu        s6, a2, s4
                  slt          t5, a5, tp
                  rem          zero, s1, t1
                  andi         a5, gp, -262
                  srai         a5, ra, 7
                  div          tp, s9, sp
                  srai         a1, ra, 27
                  sltiu        gp, t3, -253
                  srli         a6, s11, 30
                  sra          a0, s3, t6
                  xori         s4, a3, 589
                  lui          t2, 87570
                  srli         t5, s11, 9
                  mulhsu       a2, s5, t6
                  sra          s7, t0, ra
                  auipc        a6, 686310
                  nop
                  xor          s8, a5, zero
                  slli         ra, a3, 10
                  auipc        gp, 666556
                  add          a7, t6, s7
                  sub          t6, a6, s11
                  rem          s1, s6, s3
                  addi         zero, sp, -1661
                  slti         tp, s11, 351
                  add          t4, s6, a5
                  nop
                  srl          s2, s7, ra
                  sra          a2, s3, s3
                  sll          a3, tp, s4
                  add          zero, t6, t0
                  srai         ra, s3, 26
                  srai         a3, ra, 5
                  mulhsu       zero, s3, s9
                  div          s4, t1, s9
                  mulhu        s5, ra, a5
                  srli         a2, t6, 23
                  srl          zero, s3, tp
                  mulhu        ra, a5, t6
                  andi         a5, t4, -1745
                  mulhsu       s9, t0, t1
                  srai         a0, t6, 21
                  and          a5, s5, s8
                  slt          t6, a1, s2
                  xori         a3, a4, 1580
                  nop
                  andi         a7, a3, -1948
                  or           a6, t6, a3
                  div          a5, t5, s1
                  auipc        tp, 983694
                  andi         s6, s2, -939
                  srli         a1, s0, 23
                  srli         s2, t1, 10
                  or           s1, zero, zero
                  or           s9, a7, tp
                  divu         ra, a0, t6
                  rem          s11, s9, a7
                  mulh         s8, sp, zero
                  mulhu        s3, a0, t0
                  rem          t5, sp, s5
                  srl          a7, s4, t1
                  slli         a3, s0, 23
                  sltu         s4, s7, s8
                  auipc        s1, 259561
                  sltu         a7, a6, s11
                  xori         s2, t3, -1379
                  srl          t1, t5, s11
                  div          a0, a3, ra
                  slli         a3, a4, 25
                  sltu         s10, t2, sp
                  div          s6, s1, a3
                  xori         s9, t1, 1091
                  sltu         s2, t2, a4
                  nop
                  add          t4, s1, sp
                  sub          tp, t1, t0
                  slti         t5, a6, -186
                  sub          t3, s6, zero
                  mulhu        a2, t4, t3
                  srl          s8, a5, s2
                  mul          s5, a1, t5
                  addi         s7, a5, -883
                  mulhsu       s0, s8, t3
                  auipc        s2, 763579
                  sra          t3, sp, s1
                  sub          a0, s8, s11
                  slli         s7, t0, 18
                  auipc        gp, 1356
                  mulhu        s7, s5, t1
                  sub          s3, s11, a6
                  lui          s5, 2903
                  rem          zero, s8, a6
                  rem          t1, a7, s0
                  or           a2, s8, s6
                  mulhu        s11, t5, a2
                  mulh         a3, gp, a7
                  sra          t2, a4, s10
                  slt          t2, s5, t1
                  and          t1, s4, a7
                  sltu         s2, t5, a4
                  ori          a0, s3, 22
                  mulhu        tp, a5, s2
                  slt          s7, s3, t6
                  sll          s4, s11, a7
                  and          gp, sp, gp
                  ori          tp, t1, 300
                  srl          s2, a2, sp
                  sltu         t1, a3, s5
                  mulh         tp, t4, s10
                  rem          t4, s0, s3
                  add          t2, gp, ra
                  xor          a3, s9, s5
                  div          s10, s0, s0
                  mul          t3, a5, s4
                  srli         a7, gp, 1
                  mulhsu       s5, tp, s1
                  or           tp, a6, t6
                  ori          a6, s9, 1838
                  add          a1, s0, a3
                  sub          s2, zero, t3
                  sltiu        a5, sp, -1581
                  andi         a1, s8, 1207
                  addi         s3, s9, -865
                  mulhsu       t1, t6, t6
                  add          ra, t5, s9
                  mulhsu       s9, ra, s9
                  sltu         a5, a7, s1
                  andi         t2, a7, 69
                  slt          s5, a7, s5
                  ori          s4, t2, 1250
                  mulh         s0, s5, a6
                  andi         a7, a7, 104
                  mulhu        a1, t2, a3
                  auipc        zero, 537843
                  rem          t2, a5, t4
                  slti         t2, a5, 473
                  slti         tp, a5, 563
                  div          a5, t5, a5
                  div          gp, s0, a6
                  sub          a0, s1, s2
                  and          zero, gp, sp
                  mulhu        s7, s3, t2
                  and          t6, t5, a2
                  slt          t2, gp, t5
                  ori          t4, a5, 140
                  sra          t4, s1, tp
                  or           ra, a0, t1
                  slt          ra, a0, s1
                  srli         a6, t0, 28
                  sra          ra, t0, a2
                  nop
                  mulhsu       s11, a3, sp
                  nop
                  slti         t1, s3, 764
                  sll          tp, s0, t4
                  sra          a5, s3, s1
                  auipc        s10, 964656
                  srai         s3, s6, 21
                  srl          a5, s4, s6
                  lui          s2, 719362
                  or           gp, a6, gp
                  auipc        t3, 1007677
                  sra          a6, a0, s9
                  srl          s4, s3, a7
                  rem          s10, a7, t0
                  or           s5, a1, s11
                  sltu         a0, s4, t6
                  andi         s6, t5, -1940
                  sll          s7, zero, t4
                  divu         ra, s9, s9
                  or           a6, gp, t2
                  sra          a2, a0, a5
                  auipc        t4, 275015
                  slt          s7, t6, sp
                  srl          a2, s8, gp
                  mulhu        t3, a7, a2
                  div          a0, a4, s11
                  srl          t5, t0, ra
                  sub          s5, t0, gp
                  sltu         s8, a1, s5
                  slli         s1, tp, 13
                  or           t1, s5, t1
                  slt          t1, sp, s0
                  and          s4, a4, s10
                  mulhsu       t5, t0, gp
                  slli         zero, t0, 3
                  add          t4, ra, zero
                  mulhu        t2, gp, a5
                  add          t4, a2, a0
                  mulhsu       s5, a3, t3
                  sltu         a0, gp, s3
                  div          t4, s0, s2
                  srli         tp, s5, 30
                  sll          t4, t5, s9
                  lui          a2, 1035574
                  mul          s8, ra, t3
                  rem          s9, s7, s2
                  slli         s2, s6, 11
                  mulhsu       t1, t5, s9
                  srl          s5, a3, s6
                  ori          s8, s10, 1439
                  slli         s5, a0, 25
                  sltu         s7, s5, ra
                  sub          s5, t0, ra
                  auipc        a7, 1025901
                  div          ra, a7, a6
                  slli         s1, s2, 9
                  or           s5, t6, t4
                  mulhu        s1, ra, a0
                  nop
                  srli         t5, s7, 17
                  add          tp, t3, s9
                  slti         t6, t3, 1988
                  nop
                  mulhsu       a7, s0, s2
                  div          zero, s2, t5
                  slti         t2, ra, -668
                  sub          a1, a4, t2
                  srai         t2, t5, 11
                  rem          s7, s4, a1
                  addi         s2, s9, 176
                  slti         s6, zero, 1341
                  sra          a2, t1, s8
                  ori          t5, t6, -787
                  or           s3, s7, gp
                  slt          a5, s2, a1
                  nop
                  or           s11, s5, s3
                  andi         a5, s5, -320
                  or           zero, s0, s0
                  xor          s9, s9, t1
                  remu         gp, t3, s3
                  mulhsu       tp, s10, ra
                  sltiu        s5, s3, 566
                  and          t5, a6, a1
                  slt          s6, tp, s8
                  andi         ra, a2, -1187
                  remu         a7, s1, s3
                  andi         t5, s6, -1665
                  ori          s7, t6, -594
                  lui          t5, 445208
                  remu         t5, ra, a0
                  mulhu        s7, a5, a1
                  sub          s11, a2, s3
                  slt          s2, a2, a7
                  sra          tp, t3, s6
                  mulh         t6, tp, t3
                  slti         a6, a3, 1507
                  sll          a2, s1, a6
                  ori          s1, t3, 1932
                  sll          s3, s3, a6
                  mulhu        s6, ra, t1
                  srai         s6, a5, 19
                  sltiu        s7, a6, 914
                  sll          tp, t1, t5
                  nop
                  srli         s11, t6, 14
                  sltiu        s4, t3, 882
                  sra          s10, t6, s3
                  or           ra, s6, a7
                  slt          t3, tp, s1
                  srli         a6, gp, 9
                  ori          t1, t1, 1937
                  srli         s0, s7, 30
                  sll          s10, a5, gp
                  ori          t2, a3, 258
                  srai         s4, t4, 4
                  or           s6, a5, a3
                  xor          s6, a6, s1
                  andi         s10, a4, -1826
                  and          ra, a7, a5
                  mul          a1, gp, ra
                  div          a3, s10, ra
                  and          a5, a0, a4
                  sltu         s8, a3, s5
                  or           s2, a7, s0
                  ori          tp, a5, 1831
                  mulhsu       gp, t5, a0
                  srai         tp, a5, 24
                  mulhu        s8, t2, s11
                  sltu         s6, t3, a7
                  sltu         a1, a0, t5
                  lui          ra, 858952
                  auipc        s9, 694457
                  sltiu        t1, zero, -44
                  srl          a5, s10, s0
                  sub          a6, s11, a6
                  add          s1, tp, s2
                  andi         a3, s0, -1283
                  mulhsu       s6, tp, s2
                  mulhsu       tp, sp, s0
                  slli         a5, a4, 20
                  remu         a3, a2, t4
                  mulhsu       s2, a3, a7
                  sra          s5, t0, s0
                  auipc        a2, 866405
                  sltu         a5, s11, s1
                  srli         t4, t1, 7
                  addi         s6, s3, 1497
                  auipc        t3, 216237
                  xori         a5, s11, 130
                  add          t4, tp, s2
                  div          t2, s10, s0
                  sltiu        a0, s0, 662
                  sltiu        s11, a4, -364
                  srli         s8, ra, 2
                  slt          t3, tp, s1
                  andi         ra, s0, -1632
                  srli         t2, s6, 23
                  srl          s8, s7, a6
                  addi         a5, tp, 304
                  rem          zero, t2, s1
                  sll          s11, a5, a7
                  xori         s7, s11, 182
                  sll          s3, s7, a1
                  or           gp, t4, a2
                  mul          gp, t0, s2
                  auipc        t2, 557089
                  srl          s6, s10, a2
                  lui          t1, 830926
                  mulhsu       s4, s7, t2
                  sltu         a5, t5, t4
                  lui          t1, 943715
                  sub          s4, a6, s9
                  xor          t5, s11, t1
                  sltu         s0, t2, a1
                  sub          s11, s1, t4
                  remu         a1, ra, a3
                  div          t3, s6, a5
                  divu         zero, s11, ra
                  div          gp, t6, t1
                  slt          a0, s0, tp
                  div          a7, s9, t3
                  add          t6, a4, a1
                  sltiu        s1, a3, -113
                  xor          s2, s1, gp
                  div          gp, s2, ra
                  slt          t6, s2, gp
                  nop
                  srai         t1, t6, 25
                  mulh         a5, a2, s5
                  remu         t1, s1, t6
                  or           a2, s0, a4
                  slli         a1, t1, 14
                  mulhsu       s1, t2, s0
                  rem          s1, s1, t1
                  slli         a1, a7, 28
                  auipc        s11, 76450
                  ori          s8, s5, -937
                  add          s11, t4, s6
                  add          a0, tp, s4
                  ori          t3, s3, -1011
                  sll          gp, s0, tp
                  and          s0, s8, tp
                  lui          s11, 341763
                  lui          t2, 434190
                  addi         s1, a7, 341
                  lui          s1, 756955
                  xori         a1, t6, 1954
                  rem          a5, s11, t0
                  lui          s6, 21867
                  ori          t1, a5, 1415
                  mulhsu       s5, s0, a5
                  addi         t1, s1, 1684
                  rem          a6, gp, t5
                  sltiu        zero, s11, -1063
                  andi         s11, a7, 320
                  sll          s2, s9, zero
                  or           s5, t6, s1
                  mulh         a5, t6, zero
                  xor          tp, t5, a4
                  sra          s0, s10, s1
                  srai         a2, a1, 28
                  slt          tp, a7, s8
                  sra          s0, t3, zero
                  div          t6, sp, a7
                  mul          a7, t0, a1
                  srai         s2, s3, 21
                  add          zero, gp, s2
                  div          s3, a3, tp
                  rem          s1, sp, a3
                  auipc        s11, 18665
                  and          gp, t0, s11
                  lui          a5, 877252
                  or           s6, a5, s8
                  add          a6, t0, s9
                  srl          t5, s9, tp
                  sll          s8, a2, s10
                  sltiu        s9, s6, 399
                  auipc        s6, 772115
                  sltiu        s1, s2, 1717
                  sltiu        a0, t6, 934
                  ori          ra, a0, -1647
                  div          a7, s0, a3
                  slti         s9, t3, -1297
                  nop
                  mul          s6, s5, t6
                  sltiu        s7, t4, 651
                  slli         s11, s0, 16
                  sltiu        s8, t6, 822
                  lui          t1, 830364
                  remu         t6, s9, t0
                  and          s5, s7, t6
                  srli         s0, t4, 2
                  mulhu        a7, gp, s5
                  ori          a1, s9, 897
                  sltiu        ra, s2, -509
                  srl          a2, t5, s11
                  rem          t5, s6, a4
                  mul          a5, tp, t0
                  rem          s9, a2, t4
                  divu         t2, a7, s7
                  mulhu        a7, t2, s5
                  ori          a3, s8, -882
                  div          a2, s3, a7
                  slli         s3, a6, 26
                  add          a5, t4, t6
                  srli         s10, t0, 31
                  sll          t1, a4, s1
                  mul          gp, s6, s0
                  xori         s5, t2, -404
                  and          a2, a7, t6
                  and          s5, sp, sp
                  mulhsu       t4, a2, s5
                  lui          a6, 107310
                  xor          s5, gp, ra
                  mul          s9, s8, t1
                  slli         s1, ra, 20
                  divu         a1, a2, s8
                  srli         s7, t5, 18
                  sub          s4, t6, t2
                  sltu         t1, s8, zero
                  srli         a5, s7, 12
                  div          t5, a0, s1
                  slt          s4, gp, a1
                  slti         s2, a6, 72
                  remu         s2, t4, s9
                  mul          s3, t1, a1
                  divu         zero, a5, s9
                  mul          t5, s11, a1
                  slt          s8, s1, a2
                  srai         a5, t4, 14
                  and          zero, zero, s9
                  srl          s1, t1, s1
                  div          s9, s3, s1
                  mulhu        s0, a2, s0
                  srai         s6, s1, 2
                  andi         tp, t0, 1882
                  rem          t5, s0, s0
                  srl          a3, t0, s4
                  slli         s3, t0, 31
                  srl          tp, s6, t5
                  andi         s0, zero, -1056
                  srai         t3, t2, 11
                  srl          s3, tp, t5
                  slli         t5, s4, 28
                  addi         s5, t3, 1306
                  div          s5, t3, a5
                  div          s8, a0, t5
                  auipc        s1, 814283
                  sltiu        t6, a2, 608
                  sra          s4, t4, s8
                  sltu         s7, tp, s8
                  sub          t5, t2, s8
                  auipc        t2, 233053
                  sltiu        zero, t1, -684
                  sub          s7, zero, t1
                  slt          a1, s1, s6
                  xor          t1, t4, t0
                  or           t2, t4, a3
                  srai         a6, s5, 22
                  slti         t4, a0, -38
                  srai         t2, a6, 7
                  auipc        a0, 429275
                  mulhsu       s4, s11, a7
                  andi         a7, t4, 1290
                  nop
                  mulh         t4, gp, a3
                  slli         a0, s10, 23
                  srl          a7, a5, zero
                  sub          a6, t0, a4
                  divu         s5, s4, a4
                  div          ra, zero, s9
                  sll          s10, t6, a2
                  mulhu        t5, a6, s10
                  sra          a5, s4, s6
                  mulhsu       a7, a0, t6
                  mulhu        s6, s2, s7
                  sltu         ra, s11, ra
                  slli         s1, a4, 13
                  div          zero, t3, gp
                  nop
                  mulh         s4, a2, s10
                  srl          s1, t6, s11
                  lui          t5, 722323
                  xor          s9, s2, s3
                  slti         a2, s4, 151
                  andi         ra, s4, 1997
                  remu         s2, a3, a4
                  addi         t4, a7, -972
                  andi         s8, tp, 585
                  slti         a2, s11, -1980
                  nop
                  sltiu        t2, a7, 14
                  mulh         s3, a3, t2
                  slli         t5, a2, 26
                  rem          t1, t4, a3
                  andi         s8, a2, -906
                  sltiu        s7, gp, 1415
                  mulhu        t5, a6, s5
                  ori          s7, a6, -1275
                  sltu         t1, t6, t0
                  sltiu        s8, a0, -1450
                  srai         a5, t5, 17
                  auipc        s11, 214384
                  divu         a7, t6, t1
                  ori          a1, s2, -52
                  sll          tp, tp, t1
                  nop
                  slli         ra, tp, 0
                  addi         gp, a7, 101
                  add          a5, s7, sp
                  slti         a6, zero, 453
                  mul          s0, t1, a1
                  slli         s9, t4, 22
                  rem          a2, s10, a3
                  mul          a5, sp, s6
                  remu         a3, s1, a1
                  xori         a6, s5, -1956
                  auipc        s2, 381381
                  xori         ra, s9, -1481
                  andi         ra, t2, -1423
                  slt          a1, s4, zero
                  auipc        t5, 959194
                  sra          s11, t5, gp
                  sub          t3, gp, ra
                  or           s6, s10, t3
                  sra          s11, a0, s0
                  srl          s7, sp, t1
                  mulhsu       s10, t3, a4
                  slli         a6, a0, 9
                  sll          a3, a7, a0
                  nop
                  lui          t2, 64635
                  sra          a5, s4, s2
                  sra          ra, a0, s1
                  addi         ra, t6, -1591
                  or           t4, a5, t6
                  mulhsu       s5, s3, s4
                  mul          s8, a3, a3
                  andi         s8, s5, -1564
                  ori          gp, s10, 1549
                  remu         t5, gp, t3
                  slt          tp, s5, t0
                  xor          a5, zero, s2
                  rem          t5, s11, t6
                  ori          s1, a0, 2025
                  remu         t1, s1, gp
                  slli         t4, a3, 24
                  slli         a0, a0, 27
                  ori          a5, s6, -1505
                  add          t2, t2, t6
                  rem          s2, sp, ra
                  mul          a7, s7, s3
                  sra          gp, a5, a2
                  mulhsu       s4, s11, t2
                  or           a2, a1, t4
                  rem          a6, s10, t1
                  srli         t1, s4, 23
                  slli         s3, s10, 8
                  xor          zero, tp, s2
                  slt          s4, s7, s10
                  or           a2, t1, s5
                  sub          a3, a0, a2
                  xor          zero, a7, s6
                  sub          t2, s9, s3
                  ori          tp, s10, 1149
                  sltiu        a2, s11, 1155
                  sub          s2, a7, a2
                  slti         s0, a5, -435
                  lui          s3, 37596
                  sra          s10, t5, a7
                  sll          s11, a7, sp
                  sltu         a7, s6, zero
                  slli         t2, zero, 10
                  slli         zero, a0, 27
                  xor          tp, s4, s4
                  or           s9, tp, s0
                  sll          tp, t1, s3
                  sltu         s4, t0, sp
                  add          t2, s1, zero
                  sub          s6, s7, a7
                  addi         s7, s7, -1222
                  rem          t6, t2, ra
                  and          t1, s3, s6
                  sltu         a3, s9, a3
                  sltu         s4, tp, a4
                  mulh         s11, s4, gp
                  remu         s11, t2, ra
                  xori         s11, a6, 213
                  srai         s4, ra, 30
                  add          t6, a4, s11
                  remu         s8, a5, s0
                  mulh         a6, a4, a2
                  sll          s2, t1, s4
                  sltu         s7, s0, zero
                  divu         t1, a5, a3
                  or           s3, s8, a2
                  sltu         t5, s6, a6
                  mulhu        s1, gp, ra
                  sll          s4, zero, s5
                  mulh         a1, a4, a0
                  div          a0, tp, t3
                  slti         s8, s7, 134
                  mul          a7, sp, t1
                  srl          s7, s8, t5
                  nop
                  slli         s5, ra, 12
                  sltiu        s3, s8, 1467
                  xor          s9, s2, s1
                  nop
                  sub          a7, s7, t6
                  srl          ra, zero, s4
                  ori          ra, t6, 42
                  auipc        t3, 589945
                  add          gp, s0, t6
                  slti         s0, s5, -987
                  slt          a7, sp, s2
                  xori         s6, s0, -1190
                  xori         tp, zero, -972
                  srli         s7, a6, 30
                  addi         s2, a3, -1681
                  srai         s6, s10, 29
                  srli         tp, a1, 25
                  remu         t5, gp, a5
                  sltiu        s9, s7, -1715
                  or           a0, t2, s10
                  lui          a6, 863120
                  xor          a7, ra, s6
                  sltu         a0, s6, a4
                  xor          a0, sp, a1
                  sltu         t3, s7, s5
                  sra          t2, s11, t6
                  srl          s8, gp, t0
                  andi         s8, sp, -1298
                  div          s9, gp, s9
                  auipc        gp, 1015372
                  xori         s0, s11, 802
                  nop
                  srl          t5, t3, s4
                  andi         s0, sp, 601
                  sub          s6, t6, s7
                  sltu         t6, a7, s0
                  auipc        t2, 1034413
                  and          t1, t5, s0
                  and          a2, a4, s1
                  slt          a1, s7, s4
                  addi         s3, s4, 248
                  divu         a1, a7, s3
                  srli         s3, t5, 30
                  rem          s11, a2, t1
                  mulhsu       a7, s2, s3
                  srl          s11, a6, ra
                  ori          t1, s4, 528
                  mul          t1, a2, sp
                  rem          s2, t4, s7
                  sub          t2, s11, a4
                  remu         s1, s11, a0
                  addi         a6, t3, -1902
                  slti         t1, t5, 1411
                  xori         a5, gp, 508
                  srai         a6, s4, 16
                  lui          a5, 606767
                  rem          tp, s11, a5
                  nop
                  srl          t2, s9, s7
                  ori          s10, a0, -195
                  slli         t2, a4, 3
                  mulh         s11, a0, s8
                  or           s2, a7, s6
                  mulh         ra, gp, ra
                  andi         s4, s0, -398
                  auipc        t6, 504411
                  mulhsu       s4, sp, s8
                  remu         s7, s10, zero
                  addi         a0, s0, -514
                  addi         gp, s9, 826
                  lui          s0, 401450
                  sll          s9, t0, a1
                  sltu         s3, zero, s9
                  andi         s7, gp, -1227
                  mul          s7, a2, s2
                  addi         ra, ra, -1555
                  slti         zero, s4, -1599
                  srl          t6, s9, a3
                  lui          ra, 108344
                  xori         s2, a0, 1730
                  sltu         gp, ra, a5
                  remu         tp, t4, s0
                  sra          t1, t4, s9
                  sltiu        ra, t0, 860
                  or           s6, s3, s8
                  div          a6, s6, t4
                  sltu         t1, t6, a3
                  divu         s11, a7, gp
                  slti         s9, t6, -534
                  srl          s8, s3, s8
                  sltu         a2, ra, s4
                  add          s2, t1, s2
                  remu         t6, gp, t5
                  srl          a0, a3, s2
                  sub          tp, s6, zero
                  addi         a5, s8, -683
                  srli         s4, t0, 7
                  lui          t1, 917184
                  sub          s11, s10, t1
                  sub          t2, t3, s5
                  ori          a5, s7, 1730
                  addi         a2, s10, 1059
                  slt          t6, t1, sp
                  mulh         a1, t1, t4
                  lui          a5, 971018
                  srai         s11, s2, 27
                  addi         s6, a0, -1122
                  mulh         s8, t0, ra
                  add          a0, t6, s4
                  slli         t3, t6, 29
                  mul          s5, a0, s0
                  addi         a6, sp, -1701
                  auipc        s11, 313775
                  sltiu        a2, tp, 331
                  or           a5, a7, zero
                  auipc        a0, 468579
                  addi         t5, t1, -346
                  xori         t1, s10, 385
                  nop
                  srl          tp, a1, a3
                  srl          a0, a5, s3
                  remu         s1, s9, a3
                  slli         t2, tp, 29
                  slt          t2, s4, s6
                  lui          t2, 314202
                  remu         s8, ra, s2
                  srl          s1, a0, t6
                  slt          s10, a5, a2
                  sltu         tp, s0, s4
                  slli         s6, a5, 20
                  or           s3, tp, s8
                  xori         a5, a3, -637
                  srl          s1, sp, a5
                  add          t4, a4, a3
                  srl          a7, t0, s0
                  sll          t4, tp, ra
                  remu         a0, t5, s6
                  add          s6, a1, t6
                  xori         ra, t1, 1397
                  div          t2, a2, gp
                  addi         t5, t3, 1532
                  mulh         a5, s3, t5
                  rem          s5, a2, s10
                  div          t2, s9, s10
                  rem          tp, s10, a6
                  sll          s5, a3, s8
                  sltiu        s1, s0, 1461
                  sub          s8, a7, s9
                  addi         tp, t0, 180
                  mulhsu       a1, sp, gp
                  nop
                  add          a7, s6, zero
                  nop
                  divu         s11, s7, s4
                  addi         tp, ra, -1891
                  addi         s2, tp, 634
                  auipc        t1, 616133
                  addi         a0, s6, -1447
                  srli         s0, s2, 21
                  and          t2, s8, a5
                  xori         s2, t2, -1815
                  rem          t3, t5, s4
                  sll          a5, a7, s5
                  xori         s8, t3, 745
                  div          tp, s8, s5
                  div          t1, t3, a3
                  andi         s9, ra, -1847
                  xor          s2, tp, a1
                  lui          ra, 962299
                  srl          t4, s6, sp
                  sltu         t3, a7, tp
                  auipc        t3, 306593
                  xori         a3, t3, -1380
                  srli         t2, t5, 30
                  sub          s8, a3, s7
                  sub          s5, t2, s6
                  divu         s1, t5, t0
                  auipc        a0, 150649
                  divu         s11, s8, s9
                  xori         zero, t5, 1636
                  sub          s4, a2, t3
                  srai         a7, zero, 2
                  sltiu        zero, s10, 476
                  slti         t3, a1, 305
                  srai         gp, s8, 0
                  nop
                  andi         a6, a1, 980
                  sll          a2, a2, sp
                  mulhu        a0, t3, zero
                  mul          ra, s9, s11
                  sub          s11, s3, s6
                  srl          a6, s10, sp
                  slt          t2, s5, a6
                  mulh         s3, s10, s5
                  slli         s2, s1, 19
                  sll          s8, s8, t0
                  addi         s0, a5, 393
                  xor          a3, a0, s2
                  slli         gp, s8, 10
                  lui          s4, 442622
                  auipc        t5, 126013
                  sltu         t2, a6, a3
                  addi         t4, s10, 1282
                  remu         t1, s1, a5
                  and          t4, s10, s5
                  addi         t3, s10, 1179
                  xori         t3, gp, -765
                  addi         s10, s7, -90
                  slti         s0, s6, -41
                  srl          s6, t2, a1
                  div          t1, s5, t5
                  srai         t1, s8, 28
                  or           t2, s2, t6
                  xori         t5, s6, -475
                  slti         s7, s10, 274
                  xori         tp, s3, -684
                  or           a1, s1, ra
                  addi         a0, a7, 1293
                  srl          a5, tp, zero
                  srli         t2, a2, 0
                  div          ra, tp, s8
                  nop
                  slli         t5, s0, 27
                  xor          zero, a3, t5
                  srli         s11, a1, 16
                  sltiu        s10, sp, 1996
                  sll          a5, s11, s5
                  srl          t6, s3, s9
                  xori         a2, sp, -910
                  lui          a0, 972228
                  mul          tp, s1, t3
                  sltu         t6, a5, s6
                  div          s4, t6, s3
                  mulhu        t1, t1, a4
                  mulh         a3, s8, t3
                  mulhu        t3, a1, tp
                  remu         a0, s2, a0
                  addi         a1, gp, 1507
                  srli         s11, s1, 0
                  addi         a6, a6, 1304
                  rem          a3, t3, s6
                  xori         a5, s1, 568
                  sltiu        a5, s4, -1472
                  mul          ra, a0, a6
                  add          gp, zero, ra
                  srai         s0, t1, 21
                  remu         a7, s6, t1
                  srli         a0, s0, 2
                  add          s10, tp, a5
                  slli         a3, s5, 2
                  nop
                  slt          a0, a1, gp
                  ori          t3, s2, 164
                  rem          s10, s10, zero
                  slli         s2, s10, 9
                  slt          s3, tp, s1
                  srli         t6, t6, 13
                  srai         a0, s10, 16
                  sltu         s10, a2, s1
                  srai         s10, a6, 1
                  sra          s6, a4, a6
                  and          s1, a7, s0
                  ori          s1, a4, 614
                  add          s1, s11, a6
                  sub          s2, t3, s8
                  srai         t5, s7, 22
                  mul          t2, s11, a4
                  and          s2, s7, a0
                  rem          s3, a1, s9
                  auipc        s1, 340914
                  and          t6, s3, s11
                  remu         a5, s6, a2
                  slli         a3, s1, 14
                  slli         t3, a6, 12
                  divu         t5, gp, s6
                  rem          a1, a2, a6
                  slli         t4, s6, 6
                  add          s7, a0, s7
                  srl          a3, a2, a2
                  rem          a2, gp, a1
                  div          s10, a5, sp
                  xori         s6, s4, -918
                  or           a1, a6, s3
                  mulhu        zero, a1, s5
                  sltiu        a7, s11, -1337
                  sltu         zero, s10, a1
                  srl          ra, a1, ra
                  remu         a5, s5, t0
                  addi         s1, s6, -1494
                  divu         t4, t4, s2
                  ori          s4, t3, -866
                  sra          t5, a1, a4
                  remu         a0, t3, s1
                  sltu         t2, ra, s5
                  and          a1, s0, zero
                  mul          s5, s0, zero
                  addi         a6, t3, -1024
                  srli         ra, a1, 16
                  ori          s8, t4, 257
                  sltu         a6, a3, a0
                  div          t6, s6, s11
                  addi         a7, s7, 1338
                  srl          t4, a2, t5
                  andi         gp, zero, -1222
                  mul          a5, tp, s2
                  div          t5, tp, a6
                  and          s11, t4, s0
                  remu         s6, t6, a5
                  sub          tp, t1, s6
                  srl          s8, s5, a1
                  xori         s2, s0, -542
                  sra          s5, t6, a1
                  sra          gp, sp, s5
                  and          a1, s2, t6
                  mulhsu       s10, s8, a6
                  xori         a1, s4, 1998
                  slt          s5, s8, t2
                  addi         tp, t5, -936
                  divu         a7, a0, t6
                  divu         s5, a2, s7
                  div          t6, t0, s6
                  mulhsu       t4, t1, sp
                  addi         a5, s7, 1898
                  and          t6, sp, t3
                  and          t6, gp, s6
                  mul          s2, a7, s3
                  mulh         s8, s7, s6
                  sltiu        t5, s11, 1949
                  sltu         ra, s4, t6
                  add          a0, tp, s10
                  andi         t1, s6, -1602
                  slti         t6, ra, 487
                  and          s5, t2, zero
                  slt          gp, t0, s3
                  auipc        t4, 1005772
                  sll          tp, a4, a7
                  lui          s2, 886008
                  slli         gp, t2, 18
                  remu         a3, t4, ra
                  srai         s4, a7, 9
                  sltiu        s4, a5, 376
                  sub          a0, s6, s3
                  and          t2, s1, s8
                  sltu         s3, s4, t6
                  sll          t3, s9, ra
                  auipc        s7, 528582
                  mulhu        s4, a6, s11
                  srl          a3, a4, a1
                  srli         zero, sp, 19
                  and          t1, t2, sp
                  srli         a1, t4, 1
                  slti         t5, a4, 1513
                  rem          t6, s2, s1
                  nop
                  srli         t1, s0, 3
                  sltu         s9, t2, gp
                  andi         s3, a6, 1223
                  mulh         a3, zero, s10
                  andi         t2, s3, 811
                  divu         ra, s10, s0
                  sra          t2, t5, t6
                  andi         a1, gp, -1586
                  andi         s0, sp, 707
                  slli         s7, s1, 21
                  or           t3, s11, a4
                  mulhu        t5, t1, a7
                  mulh         s10, a7, t5
                  mulhu        s0, a6, s8
                  addi         t2, s5, -1223
                  xori         a6, s4, 1483
                  srl          s0, a5, s2
                  mulhu        gp, s9, t2
                  slt          a1, s5, t3
                  div          s5, a5, s11
                  nop
                  ori          a7, t6, -1476
                  divu         s11, a7, t3
                  srli         s6, t0, 6
                  remu         a7, t3, s4
                  sub          a7, a4, s10
                  andi         zero, s4, 1174
                  mulh         a5, s3, s11
                  srl          a5, ra, zero
                  addi         t2, t2, 691
                  slti         a5, s9, 542
                  rem          s11, gp, t3
                  srl          a7, s10, s10
                  mulh         s0, ra, a4
                  sub          tp, a2, s7
                  rem          t1, a0, t0
                  srli         t1, s6, 24
                  or           s4, t6, s1
                  srai         tp, s2, 4
                  mulhu        a0, s2, t4
                  mulh         ra, a6, t5
                  sltiu        gp, zero, -700
                  mulhu        a0, s8, gp
                  add          gp, t6, s4
                  ori          t5, s9, -891
                  sub          a3, s5, s7
                  or           t3, a5, a3
                  srai         zero, gp, 24
                  srl          a5, s0, s4
                  addi         s1, t5, 1263
                  ori          a0, s5, -661
                  mulhu        t6, s11, t0
                  addi         a3, s5, -1895
                  ori          a7, zero, -1938
                  slt          t3, a7, t4
                  mul          a0, s8, a6
                  or           s4, sp, t3
                  nop
                  and          gp, s7, s3
                  sll          s1, s2, t1
                  slti         a5, a5, 1350
                  slti         a0, s0, 1131
                  addi         t3, s11, -68
                  xor          s0, sp, s8
                  add          a0, t6, s4
                  slti         s1, gp, -1983
                  srai         a6, s7, 17
                  xor          ra, s8, a0
                  srl          tp, a7, tp
                  sll          a3, a4, s2
                  sll          a1, t1, s6
                  srl          t1, s0, s6
                  sub          gp, t5, t0
                  sra          t2, s5, t2
                  div          s11, s10, t0
                  mulh         t5, s2, sp
                  srli         t1, a0, 1
                  addi         s11, s3, 26
                  addi         s8, a7, -812
                  sra          a7, s5, a7
                  srli         s2, sp, 28
                  xor          a1, a1, s1
                  slt          t6, a7, a7
                  sub          ra, t2, sp
                  srai         a7, a0, 2
                  add          tp, a3, a3
                  auipc        s2, 27855
                  mul          s10, zero, s11
                  remu         s6, s10, zero
                  div          s8, t2, s9
                  mulh         t1, t4, t6
                  rem          s2, s8, tp
                  xor          s0, sp, s2
                  mulhu        zero, t2, t1
                  add          s5, a4, s0
                  sra          a5, s6, s3
                  mulhu        gp, a4, t5
                  and          a1, s1, a3
                  slli         a0, s6, 12
                  nop
                  div          s10, a4, t2
                  slti         s5, a3, -915
                  remu         t3, s1, a3
                  ori          a1, s11, 1899
                  nop
                  mulhsu       zero, s0, s0
                  slti         ra, s11, 1738
                  xor          s2, gp, a4
                  addi         t1, t0, -1685
                  andi         t1, t4, 1
                  mulh         s6, s7, s7
                  rem          s11, a4, sp
                  xori         s10, s10, -1675
                  divu         a1, a1, a2
                  rem          a2, t1, t3
                  and          s5, t0, a2
                  srl          s5, a5, t2
                  mul          s2, s9, t1
                  mulh         a0, s4, ra
                  mul          s6, t6, t2
                  mulhu        a2, s8, s7
                  mulhu        gp, t5, a4
                  divu         a5, s5, t3
                  sub          tp, gp, a4
                  xor          s2, s2, t3
                  sltu         t2, a0, a5
                  srai         s5, a2, 9
                  mul          s0, a1, s11
                  lui          a0, 298178
                  andi         s5, zero, -1413
                  sub          t4, a0, t1
                  nop
                  add          a3, s6, t0
                  slti         a1, t5, 981
                  srai         s6, sp, 24
                  sll          t6, s2, a5
                  mulhu        t1, s8, s3
                  srai         s5, s5, 6
                  sra          s5, a3, a3
                  slt          s8, s0, s10
                  xori         s8, a7, -895
                  slt          t3, t2, a4
                  mulhsu       t2, t0, s6
                  sub          a1, gp, sp
                  sub          a2, a6, s8
                  mulh         a6, s10, sp
                  add          t2, s3, a2
                  sub          s11, t3, zero
                  and          s4, s6, s8
                  auipc        s1, 34550
                  sub          s10, zero, s7
                  sltiu        s7, gp, 1621
                  lui          a6, 598745
                  auipc        t2, 364165
                  mulh         t1, t1, a7
                  lui          a2, 376069
                  sltiu        a0, t1, 1
                  div          s3, s1, ra
                  remu         s3, tp, t1
                  sltiu        tp, s7, 984
                  sub          t5, s9, s2
                  xor          t2, t4, tp
                  rem          a1, gp, s10
                  mulh         ra, s8, t5
                  andi         a1, tp, 1309
                  div          a6, t3, s0
                  divu         s9, t4, t6
                  lui          ra, 787374
                  sltu         s10, sp, t3
                  mulhsu       s8, t1, t1
                  sub          a1, a5, a5
                  addi         t1, s2, 1113
                  mulhsu       s1, s0, tp
                  sltiu        t2, tp, -1832
                  sra          s0, zero, a0
                  or           t6, s11, gp
                  mulhsu       s2, zero, t4
                  slli         ra, s11, 2
                  nop
                  ori          ra, s5, -9
                  xor          s3, s0, a6
                  sltu         a5, s11, s4
                  mulh         s1, s6, t0
                  rem          t3, s4, s1
                  slti         a2, s3, 289
                  and          s6, a5, t2
                  mulh         s6, tp, s8
                  xor          s5, t6, s8
                  srai         t1, s11, 13
                  rem          s1, t3, gp
                  sub          t2, s8, t3
                  xori         a6, s4, -1173
                  sub          s0, t2, s8
                  addi         t5, t0, 1149
                  sltiu        t2, t1, -1178
                  rem          s0, tp, a1
                  mulhu        a0, s6, sp
                  and          s1, a3, gp
                  srai         s1, a6, 4
                  mulhu        s8, s5, s4
                  addi         ra, s6, 1935
                  sub          t1, t1, s10
                  mul          s3, tp, t5
                  or           a0, s5, s9
                  xori         a2, s6, 396
                  mulhu        s1, s2, gp
                  addi         s6, tp, 621
                  mulhsu       s8, s10, gp
                  andi         a0, s6, 1486
                  nop
                  auipc        s10, 1027099
                  andi         gp, a2, -565
                  rem          s1, a7, sp
                  slt          a1, s1, t5
                  div          gp, s1, s5
                  or           a6, s3, s10
                  auipc        s8, 588066
                  addi         t2, s4, 1445
                  ori          s2, s9, -165
                  divu         s10, t2, tp
                  sltiu        t5, a2, 125
                  srl          s5, s10, ra
                  and          t4, tp, t3
                  mulh         s2, s11, t3
                  add          s2, a7, a2
                  sra          a5, s3, s9
                  slt          a6, gp, s3
                  mulhu        s7, a0, s8
                  ori          s10, s5, 590
                  xori         t1, s10, -1308
                  divu         s7, s2, s1
                  ori          a3, s10, 1965
                  andi         t4, a3, 29
                  auipc        s2, 455259
                  sltiu        s6, s0, -441
                  sra          s9, t1, a5
                  sll          gp, a5, t5
                  div          t1, s6, a0
                  rem          t5, t5, s6
                  srli         a6, s3, 12
                  auipc        a6, 470006
                  mul          t3, t5, t4
                  or           t5, a5, s1
                  xori         gp, a6, -41
                  sra          t5, t4, s4
                  andi         s3, a2, 857
                  srli         s11, a3, 9
                  addi         a2, a7, 938
                  andi         s1, a4, -922
                  mulhsu       s7, sp, a4
                  mul          ra, s8, t5
                  auipc        gp, 386016
                  srl          s9, t1, a2
                  sltu         a3, s9, zero
                  mulhu        a0, s1, s11
                  slt          tp, tp, t4
                  slti         gp, t3, -315
                  divu         ra, a5, s5
                  mulhsu       s7, s9, a0
                  sll          t1, a1, s2
                  div          s1, s1, t4
                  divu         t6, s3, s5
                  nop
                  xor          a1, sp, s1
                  srai         s5, t3, 25
                  remu         s5, sp, gp
                  xori         s2, s10, -1451
                  xori         t6, s11, -1058
                  mulhsu       s5, t3, a4
                  lui          zero, 835392
                  nop
                  srai         s6, a1, 13
                  lui          ra, 808132
                  remu         tp, s2, t2
                  mulhsu       t1, s0, t6
                  sltu         t2, s7, t1
                  remu         t5, a0, s8
                  slti         t1, a6, -1165
                  add          a3, zero, s7
                  slti         a5, a6, -1862
                  mulh         s7, s0, s11
                  mulhu        s6, sp, s0
                  and          a0, a6, a1
                  sltu         t1, s7, ra
                  srl          s1, s9, s10
                  andi         a0, a2, -136
                  sub          s3, a0, s9
                  and          zero, s1, ra
                  srai         zero, s1, 25
                  srai         s6, a1, 23
                  andi         s6, a2, 763
                  xori         t5, a4, -1472
                  divu         t5, zero, t3
                  sltu         ra, t3, a4
                  mul          ra, t3, tp
                  sra          s8, t2, s3
                  srl          s7, tp, s9
                  remu         s1, s3, s11
                  xor          s11, a6, a6
                  mul          s5, s3, s3
                  andi         zero, zero, -1397
                  rem          s1, tp, s3
                  divu         a5, t5, s10
                  mulh         s4, t0, t3
                  add          a1, a0, t5
                  slli         s5, t1, 15
                  nop
                  divu         ra, s9, s6
                  sra          t1, t6, t0
                  mul          a5, t5, s2
                  mulh         tp, ra, a4
                  srli         a7, t4, 6
                  slli         a3, a4, 28
                  slli         t2, tp, 8
                  andi         t3, tp, -1011
                  slt          gp, s8, a1
                  lui          s2, 597681
                  sra          s6, s3, zero
                  mul          s1, gp, s3
                  srli         t6, a0, 22
                  sra          a2, a6, t1
                  rem          a5, t3, a5
                  srl          s5, a2, s3
                  sub          s3, a5, t0
                  or           t4, s10, ra
                  auipc        s1, 851497
                  slti         s1, t4, -1981
                  ori          a7, a5, -704
                  slt          s1, s7, a1
                  sltu         a0, t0, t4
                  sltiu        s4, s7, -1498
                  sll          s6, s10, s0
                  divu         t3, sp, t2
                  sltiu        zero, s4, -1214
                  divu         s4, t6, zero
                  sltiu        s5, a4, -1520
                  remu         t1, s4, sp
                  srli         gp, t6, 4
                  sra          a5, s1, s7
                  slt          tp, s8, a1
                  lui          s6, 375920
                  xor          a6, s8, t5
                  div          t1, t0, a7
                  remu         gp, t6, t6
                  mulhu        s2, t6, s3
                  slt          tp, t5, sp
                  xori         t2, gp, -1975
                  sltiu        s8, s11, 1935
                  divu         s4, s7, t6
                  xor          ra, gp, s7
                  xor          a0, a3, t6
                  srai         a5, ra, 24
                  lui          ra, 756023
                  sltiu        s1, s7, 1459
                  slt          a0, t2, t6
                  xori         s1, t2, 1378
                  remu         a7, zero, zero
                  mulh         s4, s1, a3
                  slli         gp, t4, 20
                  or           s6, a1, s8
                  mul          a7, t4, a6
                  slt          a5, ra, s10
                  srli         s10, t3, 26
                  ori          a6, zero, 748
                  remu         zero, a6, a2
                  srl          s11, s4, a4
                  slti         s9, s2, -1435
                  remu         s6, s11, a1
                  srl          s6, ra, a4
                  srai         s11, sp, 8
                  srl          t2, a3, t5
                  auipc        s11, 627820
                  sra          t4, t6, a5
                  rem          t6, s8, tp
                  slli         a2, s3, 19
                  sltu         t4, s2, t3
                  mulh         a7, a2, t1
                  sltu         tp, s3, zero
                  xori         t6, t6, 1474
                  xori         s8, s2, 985
                  slt          t1, tp, gp
                  rem          s5, a1, a5
                  sltu         a1, a0, ra
                  or           t2, t1, a3
                  lui          a7, 271811
                  sltiu        s10, a2, 2005
                  sltiu        a5, s1, -593
                  sltu         a3, s0, t5
                  div          s9, a3, a7
                  sltu         a2, s9, s3
                  sll          a6, t4, s1
                  srai         s8, a4, 25
                  srl          t5, a7, t4
                  div          zero, s11, t2
                  andi         s0, s4, -1596
                  ori          s4, a5, 841
                  mulh         tp, s1, s0
                  ori          s7, t4, -1947
                  mulhsu       a7, t0, s6
                  rem          s0, a4, gp
                  sltu         zero, a7, zero
                  xor          t3, s9, t6
                  andi         a1, s0, -1475
                  remu         s5, t3, s1
                  and          s10, tp, t4
                  div          s2, t2, s8
                  divu         s10, s2, s7
                  mulhsu       t6, t1, a0
                  sltu         s0, zero, t3
                  srl          tp, t3, sp
                  mul          s1, t5, tp
                  div          t4, tp, s1
                  mul          s0, s9, s5
                  srl          a0, a2, a5
                  remu         tp, a0, a2
                  div          a7, s6, s8
                  ori          t5, zero, -138
                  mulhsu       s5, ra, sp
                  mulhu        s3, a1, s4
                  mulhsu       s10, t4, s3
                  slli         a7, t5, 10
                  mulh         s5, s0, t3
                  addi         a6, s11, 1819
                  ori          tp, s3, -1831
                  rem          t2, t6, s9
                  sll          s5, a4, s10
                  slti         s4, a7, -2006
                  addi         gp, s4, -403
                  nop
                  mulhu        a3, t1, a1
                  slt          t6, t3, ra
                  mul          t2, s8, a4
                  sub          a0, s0, s0
                  slt          ra, t1, t4
                  or           a5, ra, zero
                  add          zero, s3, s11
                  auipc        ra, 572996
                  srli         tp, s6, 8
                  srl          s2, t4, s6
                  add          s0, s2, t0
                  srli         t6, t3, 14
                  or           a7, s5, a4
                  remu         a2, ra, a3
                  auipc        a3, 299465
                  xor          a2, t1, s2
                  slli         a0, s6, 31
                  mulhsu       s0, a5, t0
                  auipc        gp, 1652
                  mulhu        ra, s4, t1
                  slli         s0, t0, 22
                  srl          s6, a4, gp
                  sltiu        s4, tp, 343
                  ori          a0, s7, 810
                  mul          t3, s7, t4
                  slli         a1, zero, 24
                  remu         t4, s1, s1
                  mul          a3, s8, t5
                  andi         a3, a0, -947
                  sra          t2, s7, zero
                  addi         t4, a4, 1870
                  or           s9, t1, s9
                  mulh         a0, t6, sp
                  mul          ra, s1, a0
                  lui          s5, 513497
                  sltu         s0, s4, s4
                  rem          ra, a3, s4
                  ori          s1, a2, 1499
                  addi         s10, s7, -1583
                  mulh         s2, t5, ra
                  mulhu        tp, gp, a2
                  remu         t1, t6, a3
                  sub          s1, a5, s7
                  add          zero, a2, s5
                  xor          s9, s9, a6
                  xori         s6, s10, -576
                  slt          t6, t0, s11
                  lui          s2, 76067
                  srai         a0, s4, 21
                  mulhu        t1, t0, s11
                  andi         s8, t1, -648
                  lui          s2, 639774
                  slti         t2, gp, 194
                  ori          s2, t1, 314
                  mulhsu       t4, t1, a0
                  slli         s6, t5, 1
                  divu         s4, s11, sp
                  div          a5, t2, gp
                  lui          tp, 338686
                  srli         s9, s5, 30
                  srl          s0, s4, a2
                  divu         gp, tp, t6
                  xor          a0, s6, s11
                  lui          s3, 933593
                  div          s11, s7, a7
                  ori          a0, t3, -1908
                  srli         s2, s5, 7
                  slt          t1, s11, ra
                  ori          t5, a3, -1728
                  remu         a7, a3, s8
                  auipc        s3, 128555
                  andi         s4, a7, -697
                  sltiu        s3, s7, -679
                  sra          t6, s0, s6
                  addi         a0, ra, 1646
                  slli         a7, s6, 10
                  add          s4, s0, a4
                  add          t3, ra, a7
                  sltiu        ra, gp, -1718
                  srl          s3, s9, a1
                  mulhsu       t2, a4, tp
                  and          t1, a2, s1
                  mulhsu       s2, s10, a7
                  mulhsu       s8, a2, a4
                  sub          s1, tp, t5
                  and          a1, s1, t3
                  srl          tp, t6, t6
                  add          s5, sp, s9
                  sltiu        a7, gp, 1394
                  or           s8, a5, t3
                  mulh         t3, t1, sp
                  srai         t6, s3, 18
                  mulhu        a5, sp, s5
                  mulhsu       a2, t6, s10
                  sll          t6, s9, s5
                  or           a3, t0, s1
                  slt          s8, s11, s2
                  mulhsu       a3, zero, a1
                  lui          t5, 1024504
                  mulh         a1, a2, s6
                  and          s1, sp, a7
                  mulh         s1, gp, sp
                  ori          ra, s1, 1302
                  srli         a1, s7, 24
                  sltiu        s2, t3, 1689
                  remu         a2, sp, t1
                  rem          a7, tp, s11
                  ori          a2, t5, -1354
                  sltiu        a3, a1, -813
                  addi         s7, s8, -1177
                  slti         a2, t5, 383
                  div          ra, t4, s11
                  mulhu        t5, gp, a4
                  slli         ra, s1, 28
                  mulhsu       t4, t2, a5
                  sltu         gp, t6, t1
                  andi         a7, s3, 1533
                  lui          ra, 441948
                  srl          a0, s8, s8
                  sltiu        tp, t1, 1457
                  andi         zero, s5, 1963
                  mulh         t1, a4, t2
                  divu         gp, s4, t3
                  div          t2, a4, a1
                  sltu         s8, t5, s8
                  srli         s8, t6, 30
                  srli         s6, t5, 19
                  or           s1, s1, t5
                  slti         s9, t4, 1710
                  divu         s5, s4, t4
                  srai         a6, s1, 4
                  slti         t5, t3, 326
                  ori          tp, a4, -365
                  sltiu        tp, s10, -602
                  mulhu        zero, gp, t3
                  add          s5, a5, a7
                  divu         ra, a2, s7
                  srli         t1, zero, 5
                  sltu         s7, t3, s3
                  sra          tp, a5, sp
                  sub          s0, sp, s4
                  div          a0, tp, s4
                  divu         s6, ra, s3
                  or           a6, t1, zero
                  divu         s7, s5, gp
                  sub          a1, a3, a3
                  mul          a2, a7, t2
                  sltu         s3, a7, t1
                  slti         a7, s10, -1348
                  or           a7, t6, t0
                  and          ra, s4, t3
                  nop
                  sub          t1, a2, a7
                  srli         gp, zero, 3
                  divu         t6, t3, sp
                  xori         a5, a5, 1447
                  remu         s1, a0, t4
                  slti         s7, s11, 1364
                  add          s10, a4, s10
                  auipc        a5, 994120
                  divu         s6, a0, a6
                  add          a7, ra, t4
                  andi         s6, t4, -2017
                  mulhu        tp, a2, a5
                  slli         s3, a4, 7
                  mulh         s7, tp, t1
                  rem          t2, t1, ra
                  slt          s1, a3, s5
                  sll          s8, ra, a2
                  slli         t1, a0, 9
                  sltu         s8, a3, zero
                  sltiu        t2, a1, 1288
                  mulh         a7, s2, t3
                  nop
                  srl          s7, t0, s8
                  slli         s0, zero, 13
                  remu         s10, s0, t5
                  sub          t1, s9, s7
                  add          a0, s6, t6
                  rem          s11, s4, s8
                  ori          t5, zero, 462
                  xor          t1, a3, t0
                  slt          ra, s3, sp
                  sub          a5, sp, s1
                  slli         a2, t6, 26
                  auipc        s11, 993221
                  addi         a2, a7, -1627
                  addi         ra, a3, 899
                  andi         a1, s7, 1325
                  or           tp, t6, t0
                  sub          s8, s9, a3
                  addi         t2, tp, 864
                  remu         t4, s1, s6
                  or           zero, gp, t6
                  srai         s7, a7, 7
                  div          s4, a4, s6
                  mulhsu       t1, s1, a2
                  sltiu        t5, s3, 485
                  mulhu        zero, s11, s6
                  xori         t5, a3, 1493
                  mulhsu       t1, t2, s2
                  div          s0, s6, s8
                  mulhsu       a3, s3, s2
                  srli         tp, s1, 28
                  rem          t3, t5, a0
                  sltiu        a0, t5, -2026
                  ori          s1, gp, -1623
                  add          t4, s10, s4
                  slt          t1, s4, a5
                  sll          a2, a1, a7
                  nop
                  ori          a2, ra, -1628
                  srai         a7, gp, 20
                  xori         s1, a7, -808
                  sltiu        s6, a2, 1242
                  srai         a5, s1, 24
                  lui          s7, 280672
                  mul          a0, s8, t3
                  slt          t1, t0, s9
                  sltu         s1, a4, t5
                  lui          a7, 711136
                  auipc        t2, 200955
                  slti         t6, s5, 538
                  auipc        s5, 850010
                  ori          tp, gp, -240
                  xor          gp, s1, a1
                  sub          s1, a0, t4
                  srai         s3, t2, 16
                  slti         s3, t1, -363
                  slti         t1, sp, -1251
                  andi         s8, t6, 1111
                  or           s7, sp, s1
                  slt          s9, s3, a4
                  divu         t5, a6, t3
                  auipc        t5, 1027533
                  sub          s10, s6, t0
                  slli         t3, s8, 9
                  mulhu        t2, a7, a6
                  sltu         tp, s8, a6
                  addi         ra, s9, -1182
                  addi         t1, gp, 1786
                  slti         s11, t0, 1773
                  nop
                  sub          a2, s2, a3
                  div          t2, tp, tp
                  lui          t1, 288800
                  addi         s8, gp, 148
                  remu         t4, a3, s4
                  slli         s7, tp, 15
                  srl          s9, t3, a2
                  lui          a7, 55178
                  ori          a2, a6, -55
                  mulh         t5, t6, s5
                  slti         t3, a5, -484
                  divu         a6, s7, tp
                  add          a0, s11, t4
                  nop
                  srl          a7, a7, s9
                  rem          s5, t3, s3
                  nop
                  ori          s8, s6, 390
                  mulhu        s0, zero, a1
                  auipc        s11, 556008
                  or           s0, t4, t1
                  sltu         a6, a2, a5
                  add          a0, s2, s10
                  sltu         a0, s5, t3
                  andi         t6, t2, -472
                  sltu         t1, s7, s3
                  slli         s11, s0, 25
                  div          s5, s3, t4
                  mul          a5, t4, tp
                  sll          a5, s6, s9
                  slli         a0, a1, 15
                  mulhsu       s1, t0, t6
                  xor          t2, t1, a3
                  and          s1, zero, tp
                  add          a7, zero, s6
                  add          tp, s4, a1
                  ori          s4, a0, 306
                  mulh         t5, t3, t3
                  srai         s5, a7, 5
                  andi         s6, s4, -1679
                  addi         tp, sp, 215
                  slli         s2, tp, 14
                  srai         s10, s5, 1
                  srl          s3, s4, s5
                  sll          s7, s5, s9
                  mulhsu       a1, t3, s8
                  ori          s7, t0, 1917
                  rem          s6, t5, t5
                  mulh         s9, gp, s2
                  remu         a3, gp, a1
                  mulhu        t1, s11, ra
                  srl          t4, a2, s7
                  auipc        a7, 999595
                  srl          a0, s0, s1
                  mul          t5, s7, a3
                  remu         gp, a6, s7
                  srl          tp, s11, s1
                  divu         tp, s3, t3
                  divu         s8, a4, s11
                  ori          t3, a0, -319
                  xor          t4, t4, a0
                  ori          a0, t0, -1402
                  mulhu        a7, s8, s9
                  srai         s10, t6, 19
                  slti         a6, a0, -1293
                  lui          t5, 350170
                  srl          gp, a7, a5
                  ori          s9, a6, 560
                  sub          s4, t4, t6
                  mul          gp, a0, s9
                  xori         s5, t1, 68
                  ori          t5, s8, -1191
                  sltiu        ra, s8, 312
                  rem          a7, a7, t2
                  add          s3, s9, s4
                  srli         s2, a0, 14
                  andi         s3, a6, -844
                  mulhsu       a2, s3, t2
                  xori         t3, a5, -1653
                  xor          a3, s7, s2
                  nop
                  mulhu        s2, s0, t1
                  sltiu        tp, s11, 1298
                  or           s5, s3, t5
                  sra          t2, a4, s8
                  remu         t1, t2, s4
                  sltiu        tp, s7, 1072
                  slti         s10, s6, 1197
                  nop
                  mulhu        gp, t0, a7
                  remu         s6, tp, s5
                  slli         t4, s7, 19
                  and          t3, s2, tp
                  slti         s11, tp, -320
                  mulh         s6, s7, s10
                  or           t3, s6, t3
                  add          t6, t2, s1
                  auipc        s5, 669152
                  srli         t3, zero, 9
                  addi         a2, t5, 1260
                  auipc        a2, 882897
                  slli         s9, t0, 25
                  slli         ra, a6, 14
                  mulhsu       s7, t5, a3
                  mul          s4, s2, a3
                  sltiu        zero, s4, -475
                  add          zero, s0, a0
                  addi         s5, t5, -1180
                  nop
                  mulhsu       s2, tp, a0
                  and          s11, a7, t3
                  xor          gp, t4, t5
                  remu         ra, t5, a1
                  divu         t6, s7, zero
                  mulhu        a0, a4, t0
                  or           t4, s7, ra
                  mulh         s1, t4, zero
                  sltiu        t2, s0, 1299
                  add          a7, s0, zero
                  slt          t6, t3, t6
                  sltu         tp, a6, t2
                  remu         ra, a6, sp
                  srli         s0, t0, 10
                  and          s1, s8, s9
                  mulhu        s0, s2, s4
                  slt          s8, s5, t0
                  lui          s0, 576878
                  mulh         a1, zero, a3
                  add          s5, t3, t3
                  addi         s3, s3, -1776
                  nop
                  nop
                  rem          a6, a6, a1
                  and          s2, a2, t4
                  srli         ra, s7, 29
                  slt          t1, a2, t0
                  remu         t5, s9, a7
                  slti         ra, t3, 695
                  mulh         tp, a5, zero
                  addi         s9, s3, -1529
                  mul          s8, t0, s2
                  mul          a1, s3, s4
                  rem          t4, s3, a0
                  slli         s8, s9, 6
                  andi         t1, t1, -1318
                  mulhu        s1, a6, t4
                  nop
                  add          a2, s7, s8
                  remu         s2, a7, sp
                  sll          a3, s1, s6
                  sltu         s11, t5, tp
                  srl          t1, t3, s11
                  srai         ra, zero, 12
                  nop
                  sltiu        ra, t2, 1714
                  srl          gp, s9, s10
                  divu         s0, s5, t0
                  lui          t1, 395600
                  remu         s8, a3, s1
                  addi         tp, s9, -1791
                  srai         t3, sp, 9
                  remu         s2, a0, s10
                  sltu         a6, a2, s7
                  lui          s5, 644249
                  mulhsu       t1, tp, s9
                  mul          s11, s1, s3
                  divu         s2, a3, s11
                  divu         zero, tp, s1
                  or           zero, s8, tp
                  sltiu        s8, a2, -1004
                  andi         s11, t4, 1644
                  slt          zero, sp, t2
                  auipc        tp, 229947
                  and          a0, a2, a2
                  srl          a7, ra, sp
                  lui          s6, 860247
                  xor          s2, t5, s9
                  sltiu        s2, s1, -156
                  remu         s8, s11, ra
                  slt          a3, zero, t5
                  sltiu        a6, sp, 1441
                  xor          s6, a1, s0
                  ori          s4, a6, -1533
                  mul          tp, a5, tp
                  remu         s11, t2, t1
                  slti         s5, s5, 1224
                  srai         zero, a3, 4
                  nop
                  srli         a5, a3, 19
                  srl          a7, s1, s9
                  slt          a0, a0, t0
                  sub          a6, a4, a3
                  slt          s1, t3, t4
                  mulhsu       s9, tp, s5
                  div          ra, s5, t6
                  auipc        tp, 431412
                  andi         tp, t1, 160
                  add          t2, s3, a6
                  xor          a7, a6, s5
                  mulhu        a2, tp, gp
                  lui          t5, 238288
                  mulhsu       t4, t4, a3
                  lui          t6, 765993
                  srli         a1, s8, 22
                  xori         ra, a6, 563
                  sra          t1, s2, t1
                  div          a3, t6, s3
                  lui          a7, 642830
                  slti         s4, a2, 1750
                  sltiu        s10, a0, -1607
                  srli         a1, a0, 5
                  divu         t2, sp, s3
                  rem          t2, a5, t5
                  mulhu        a5, a1, ra
                  and          s2, s7, t2
                  slt          s8, t3, gp
                  sltu         zero, t6, sp
                  rem          a2, s9, sp
                  xori         t5, s4, 721
                  slli         tp, s9, 13
                  mulhu        gp, t4, s5
                  mulhsu       t5, a5, a5
                  remu         t4, a4, s7
                  divu         tp, s7, t6
                  mulhsu       s10, s8, a1
                  slti         zero, a5, -286
                  remu         s10, t3, t6
                  mulh         s3, s8, a0
                  ori          s9, s5, -1951
                  ori          s11, t6, 1700
                  lui          s7, 652994
                  slli         s8, s3, 23
                  srli         s4, gp, 28
                  andi         s10, zero, -1708
                  sltu         a3, gp, sp
                  slti         s2, zero, -875
                  sub          a1, ra, a4
                  sltu         s4, t4, zero
                  lui          s7, 1048298
                  rem          ra, s4, s0
                  lui          ra, 402377
                  mulhu        a7, s8, t6
                  addi         tp, gp, 1391
                  sltiu        s0, s3, 831
                  and          s11, zero, zero
                  mulhu        s10, tp, s4
                  div          a0, sp, a3
                  add          s10, t2, s3
                  slt          s7, gp, gp
                  srai         s0, a4, 24
                  remu         t5, s7, a2
                  sltiu        a3, s9, 1766
                  sll          s10, s5, t5
                  srl          t4, s0, a0
                  xori         s9, s0, -1588
                  mulh         a0, s6, tp
                  xor          t1, a1, s11
                  add          a2, t6, zero
                  mulhu        s2, s6, s9
                  add          s2, t4, a6
                  add          s9, sp, zero
                  slti         a0, s4, 1253
                  divu         ra, t6, t2
                  div          s8, zero, a5
                  sub          a1, a0, tp
                  add          a5, t2, t6
                  srl          s7, ra, s11
                  sltiu        a5, t3, 1216
                  div          s7, a2, a7
                  sll          a1, a3, t3
                  slt          s5, a3, s9
                  add          a2, s1, s4
                  mulhsu       a1, t3, a5
                  ori          zero, s4, -930
                  slt          a6, s4, s6
                  srli         s8, s6, 24
                  add          t1, t0, a5
                  or           s4, s6, a4
                  mulhsu       a3, s5, zero
                  auipc        t2, 759682
                  rem          t2, a7, t2
                  auipc        ra, 558694
                  and          s3, t5, ra
                  mul          t2, s8, s8
                  auipc        s7, 518186
                  slti         s0, s1, -842
                  addi         s7, s0, 236
                  sltiu        t2, ra, -1407
                  mul          s2, s10, s8
                  divu         s4, s0, t6
                  mul          s8, a6, t2
                  div          s6, s0, a6
                  xor          t2, a6, s11
                  slt          s3, s10, a2
                  mulhsu       a1, a0, sp
                  remu         t5, t5, a0
                  divu         a2, s4, s5
                  mul          s0, t3, s1
                  and          a1, tp, t4
                  nop
                  sll          gp, a5, a1
                  mulhu        s0, a1, t5
                  sltu         s5, s5, s3
                  mul          t1, a1, ra
                  slti         s7, a3, -1478
                  srl          t1, t1, s7
                  addi         a1, s0, 1215
                  andi         gp, s1, -1370
                  srl          t1, a2, t6
                  andi         s0, a2, 1400
                  xor          s4, s10, t6
                  auipc        a0, 615573
                  xor          a3, s11, a3
                  mulhu        zero, a5, a4
                  lui          t1, 977334
                  ori          t3, s6, -167
                  sltiu        a6, s11, -418
                  sltu         t5, a7, t2
                  xor          s0, s0, s0
                  sub          t1, t4, s5
                  ori          gp, t1, 1496
                  nop
                  div          tp, t0, t1
                  mulh         t2, s0, a2
                  slt          gp, a6, a5
                  rem          a6, s5, t3
                  sll          s2, a7, t3
                  and          tp, t6, t5
                  div          s9, t5, t5
                  div          s3, t3, zero
                  sltu         s2, t4, t5
                  sra          s6, ra, a1
                  auipc        t1, 278387
                  remu         s8, gp, t1
                  and          t4, a7, t0
                  remu         a6, t0, a1
                  mulhu        a1, t6, a7
                  lui          s5, 286009
                  auipc        ra, 321799
                  lui          t1, 206631
                  nop
                  mulhsu       tp, t0, sp
                  or           a6, t0, sp
                  auipc        s9, 819656
                  sltu         tp, a4, s7
                  ori          a6, gp, 319
                  and          s5, s0, t4
                  or           s5, s8, s6
                  ori          t5, s11, -739
                  xor          s4, a1, s3
                  and          s1, t1, s1
                  add          a3, s0, s10
                  sll          t6, s6, tp
                  sltu         t5, a2, a4
                  sra          s4, t6, zero
                  auipc        s9, 190515
                  sub          zero, s10, t6
                  xori         ra, a2, -1163
                  auipc        a1, 804643
                  sltu         s4, s10, s8
                  sra          t6, zero, t2
                  andi         a3, a0, -238
                  srai         t6, s9, 16
                  slt          t6, t2, s11
                  addi         t4, s5, 841
                  mulh         gp, s3, a4
                  srai         s0, a7, 14
                  slti         gp, s0, -1534
                  sub          s4, s8, s7
                  div          a0, t3, a7
                  srai         s9, s5, 14
                  mulhu        ra, gp, t4
                  mulh         s2, a3, t6
                  srai         t5, a5, 18
                  xor          s2, t1, s7
                  srl          s10, s3, s11
                  remu         t5, s4, a1
                  mulh         s6, a2, s10
                  sltiu        ra, s8, 1219
                  slli         s1, t3, 0
                  sltiu        s6, s9, 1402
                  xori         s2, s8, -260
                  xor          s3, sp, t1
                  sltiu        s0, a3, -1967
                  sra          t4, s9, s3
                  or           zero, s0, a5
                  lui          zero, 943207
                  slt          tp, s9, sp
                  sub          gp, t6, a2
                  lui          s3, 272079
                  sltiu        a6, a5, -1384
                  slt          s8, gp, a1
                  mulh         t6, a7, gp
                  addi         s8, sp, -161
                  div          t3, t4, tp
                  lui          zero, 562904
                  slti         s7, s7, -1799
                  sltu         s10, a1, a6
                  sub          t1, s7, s2
                  add          zero, a6, a0
                  andi         s10, gp, -1082
                  sltu         s0, ra, t6
                  mulhsu       a6, t3, a5
                  mulh         a6, s7, gp
                  mul          a7, tp, a6
                  srai         zero, sp, 11
                  nop
                  mulhsu       s2, s9, s3
                  mul          a7, s7, t6
                  sub          ra, a3, tp
                  slti         ra, a4, -823
                  andi         gp, s8, 1129
                  and          t2, s1, a6
                  mul          s1, a3, s0
                  xori         tp, t3, -1140
                  sll          s2, a1, a6
                  xor          a0, t6, s11
                  add          t3, s6, s7
                  remu         s4, s4, a4
                  mul          s11, s1, t4
                  sltiu        s3, t5, 795
                  addi         s7, a4, 1780
                  and          s0, zero, t3
                  mul          a1, a7, s9
                  srl          zero, s2, s2
                  sub          s11, a0, t0
                  xor          t2, s5, s10
                  rem          t2, a6, t2
                  sltu         t4, tp, a1
                  sltu         s5, a3, a5
                  sll          s1, t4, s0
                  xori         t1, ra, 530
                  and          s9, s10, s9
                  slli         a5, s10, 29
                  mulh         a5, s10, zero
                  sltiu        s2, gp, 985
                  srli         t1, s5, 3
                  sra          s0, t2, t1
                  ori          a0, t3, 1359
                  ori          a3, a1, -505
                  slt          t3, a0, s1
                  slti         a0, s4, -1857
                  nop
                  srli         t6, s11, 2
                  mulhsu       s3, a6, a0
                  mul          s7, gp, a5
                  sra          a2, t2, a3
                  div          ra, s5, a5
                  or           s0, t5, s4
                  and          a3, a6, a7
                  sltiu        a6, s8, -568
                  auipc        t1, 278922
                  mul          s11, s8, t4
                  srl          t2, s4, s10
                  rem          a0, s2, s7
                  mulhu        s0, a6, s11
                  nop
                  sll          t5, s10, a0
                  divu         s11, t6, s8
                  xori         s3, t6, 631
                  andi         t6, a2, -629
                  mulhu        a1, s10, t0
                  lui          s6, 639071
                  srli         s5, gp, 20
                  slti         s0, s0, 1702
                  sltiu        s1, a6, 500
                  sra          s9, s9, t2
                  lui          s7, 341335
                  div          s7, a0, s10
                  slti         tp, s3, 382
                  slli         ra, a2, 9
                  srl          ra, t5, zero
                  mulhsu       s1, t2, s6
                  addi         a2, a4, 1547
                  mulhu        ra, sp, s0
                  srl          ra, a6, a1
                  slt          s7, tp, s11
                  add          s5, s4, a7
                  auipc        t5, 681999
                  rem          t2, zero, a5
                  remu         s5, s5, t5
                  xori         s8, s6, -1351
                  mulhu        s2, a4, a4
                  srl          a7, zero, a6
                  mulh         t2, t0, a5
                  mulhu        t6, s10, gp
                  xori         gp, s10, -796
                  srl          s11, t4, t0
                  and          a0, t0, t5
                  or           zero, a2, s1
                  sltiu        a3, s5, -1679
                  addi         s5, s7, 2014
                  remu         s1, a0, ra
                  or           a5, a4, s11
                  andi         a0, a7, 1428
                  mulh         s10, s11, tp
                  and          s6, s6, t6
                  srl          a3, gp, t0
                  mulhsu       a2, s9, s1
                  sll          a5, s10, s11
                  divu         gp, s8, tp
                  xori         ra, s11, 1519
                  nop
                  mul          s5, s3, t4
                  sltu         a0, zero, s9
                  sll          t3, gp, sp
                  sll          t6, s0, s6
                  and          s8, s9, t1
                  xor          s7, s7, s10
                  sra          a7, ra, t1
                  andi         a0, s11, -1327
                  slti         s3, t0, -528
                  lui          t4, 558506
                  div          a0, s8, s2
                  slli         zero, a2, 16
                  srli         s7, s6, 23
                  sltu         gp, s9, zero
                  remu         ra, s10, a6
                  xor          s2, s6, a0
                  div          t1, t3, s7
                  sll          ra, ra, ra
                  ori          a5, a5, 343
                  add          a0, s1, s11
                  auipc        t4, 724821
                  xori         tp, s5, 1382
                  srl          t6, a4, s5
                  sltiu        t2, t4, 2031
                  sub          t3, gp, t4
                  srai         s0, tp, 5
                  addi         s10, s10, -1901
                  srli         a5, ra, 22
                  andi         s5, t2, 925
                  mulhu        a2, s8, a1
                  slti         gp, s4, 1326
                  add          a5, s4, s8
                  remu         a6, s4, s3
                  slt          a1, t1, t1
                  srli         a0, t0, 14
                  ori          s9, s1, 333
                  mulh         ra, s11, sp
                  or           s4, s1, a3
                  slt          a7, a6, t4
                  sltiu        s5, s11, -826
                  sra          a1, t1, zero
                  sltiu        s7, a1, -587
                  slli         a2, s8, 29
                  slt          a6, a6, t3
                  sra          zero, a6, a4
                  div          ra, s8, sp
                  div          zero, tp, t2
                  xor          s8, gp, a7
                  remu         ra, sp, s10
                  div          zero, ra, s9
                  lui          s0, 914314
                  slt          s6, t3, t2
                  mulhu        a6, t0, s5
                  andi         t3, t3, -1579
                  addi         a5, a7, 1190
                  mul          a5, a3, sp
                  lui          a7, 677758
                  srai         t3, a0, 27
                  rem          s10, t6, t4
                  sll          s0, t3, s1
                  mul          s6, zero, t1
                  sltiu        a6, a0, -765
                  nop
                  addi         a6, a5, 1595
                  srli         t3, a1, 29
                  and          gp, a7, s10
                  nop
                  div          t3, s8, s2
                  slti         a7, s0, 1339
                  addi         t6, a4, 1637
                  sra          s9, s10, s0
                  sltu         s2, a4, a2
                  srli         s4, t4, 28
                  mulhu        s7, a0, s7
                  sub          s1, t2, t1
                  slt          a0, s6, s10
                  srli         s2, a7, 28
                  slti         s11, sp, -49
                  rem          s3, a3, a6
                  div          a6, a1, s10
                  remu         tp, t2, a4
                  srai         t3, s0, 28
                  divu         t5, t0, s1
                  add          tp, t5, s10
                  addi         s1, t3, -886
                  mul          t3, a1, a0
                  addi         s9, a6, 538
                  div          t3, a3, zero
                  mulhsu       s7, s4, s7
                  sll          s11, tp, s0
                  nop
                  sra          t6, sp, t6
                  add          s3, ra, s8
                  xor          gp, t4, t3
                  add          s2, a0, s5
                  andi         s8, s6, -519
                  xori         ra, a0, -1777
                  add          a2, t1, s5
                  addi         s9, sp, 737
                  sltiu        s3, gp, -1876
                  sltu         s1, s0, t4
                  sll          a7, s3, s9
                  slli         a5, a7, 9
                  nop
                  slli         t4, a6, 24
                  mul          a0, t1, s11
                  remu         zero, gp, a1
                  ori          s4, s6, 136
                  srli         s4, s3, 6
                  mul          s3, a2, t1
                  slli         s0, a6, 17
                  xori         s5, s9, 132
                  sub          s7, sp, tp
                  add          zero, t1, a7
                  ori          a2, t0, 1825
                  srli         a1, a7, 26
                  addi         s8, s8, -61
                  slti         t1, a4, 145
                  mulh         gp, a5, t6
                  mulhsu       a7, a0, a7
                  mulhsu       t5, a4, t5
                  rem          s0, s10, ra
                  srli         s4, t0, 21
                  remu         gp, s5, s9
                  or           s7, t1, sp
                  slli         s10, a7, 14
                  mulh         t6, s4, a4
                  andi         a0, s9, 1487
                  xor          a2, s4, a4
                  srli         gp, s9, 20
                  slt          t4, s1, a1
                  mulh         s9, s9, s2
                  lui          s9, 47673
                  slli         t6, a3, 27
                  remu         s4, a5, s1
                  srl          s8, s0, t1
                  srli         t1, a6, 12
                  xor          s11, t0, s10
                  rem          t2, s11, s3
                  xori         s8, a0, 703
                  div          a3, s1, t4
                  rem          t4, t4, a3
                  andi         t3, s5, -914
                  divu         s1, ra, ra
                  sltiu        a2, s7, -1614
                  auipc        zero, 483150
                  slti         s2, s8, 973
                  slti         t6, s10, 1716
                  sra          ra, t0, s2
                  slti         a3, s11, -1253
                  slt          t4, a2, a0
                  mulhsu       s0, a2, s3
                  sltu         a6, t2, t1
                  auipc        zero, 286635
                  auipc        t2, 28637
                  xori         a0, s11, -563
                  andi         s3, s11, -1837
                  mul          a6, t4, t3
                  mulhsu       a5, tp, s5
                  rem          a1, s9, t5
                  xor          t5, a2, a4
                  xori         t1, s8, -831
                  or           a5, t3, a6
                  nop
                  mulhsu       a2, t6, a3
                  slti         t4, a0, 70
                  auipc        t5, 495587
                  sltiu        s4, a6, -1543
                  mulh         a0, s8, a6
                  or           zero, s4, s4
                  lui          t1, 1041569
                  sra          a1, t1, s2
                  and          a0, s0, s4
                  sltu         t5, t6, a4
                  mul          s8, gp, sp
                  mulh         s6, sp, s11
                  auipc        a5, 133476
                  sra          s1, s7, s6
                  mulhsu       t6, s9, s2
                  mulhsu       a7, a7, s6
                  addi         t5, a6, -656
                  or           t4, a0, s1
                  nop
                  slt          a7, s1, s7
                  add          t3, s5, s9
                  nop
                  srai         s1, a5, 27
                  sltu         t1, a0, s4
                  slt          s11, t5, a1
                  divu         s6, s6, t0
                  sra          ra, a3, s10
                  nop
                  xori         s1, s10, 1809
                  remu         tp, s8, t1
                  rem          a6, gp, s6
                  srl          t1, s9, a5
                  srli         t6, a2, 14
                  divu         a2, s5, s11
                  slli         s7, t3, 10
                  remu         ra, a1, s5
                  slti         t5, t3, -1639
                  nop
                  or           t2, a2, s0
                  xor          a0, s6, s11
                  divu         s11, t5, gp
                  slti         s10, s7, 97
                  sll          t1, a7, s11
                  lui          zero, 790192
                  xori         s2, s1, -1117
                  sll          s9, t5, a5
                  ori          s4, a1, -1603
                  srli         s3, s3, 5
                  srli         t1, s11, 22
                  srl          t1, t2, s5
                  sub          s11, s7, a3
                  nop
                  sltu         a1, t6, t5
                  sll          s11, t1, a2
                  lui          s2, 574444
                  nop
                  addi         s11, ra, -31
                  addi         a5, t3, 1877
                  divu         s3, s3, s3
                  andi         t4, s6, -824
                  xor          s6, t2, t5
                  sra          s8, s11, s10
                  or           s6, zero, a2
                  srl          a5, a0, a1
                  xori         a7, t6, -1148
                  xor          t6, t1, s11
                  ori          s0, a7, -605
                  auipc        a6, 818838
                  sub          zero, s4, a0
                  xor          s9, s1, a2
                  ori          t1, sp, 1222
                  slli         a7, s8, 22
                  nop
                  ori          s5, s8, -1223
                  or           ra, s1, s11
                  divu         zero, a6, a1
                  srl          a5, a0, t5
                  nop
                  rem          a7, ra, s4
                  nop
                  slt          a1, s1, tp
                  slt          s5, s8, a2
                  remu         s11, s7, gp
                  sltu         s11, zero, s0
                  srl          s6, t3, s11
                  sub          t4, a3, a1
                  ori          t3, s11, 400
                  sll          ra, a0, a0
                  div          a3, s4, a0
                  sub          t2, s9, gp
                  add          a0, t2, a0
                  slt          s2, a2, t0
                  andi         s2, s9, -359
                  mulh         s4, a2, gp
                  sub          s2, ra, a6
                  addi         s7, s0, 606
                  ori          s9, s10, 27
                  sll          a3, t0, ra
                  sll          s2, s11, s3
                  mulh         s10, sp, t5
                  slli         s4, s3, 27
                  remu         s0, t5, s2
                  divu         s1, s4, t2
                  srli         t5, t3, 30
                  sll          t4, t1, s2
                  sra          s10, s4, tp
                  slti         t1, s8, -1257
                  sll          t3, s7, a6
                  rem          t2, s0, s2
                  lui          tp, 836307
                  sra          t3, s11, ra
                  auipc        s1, 947382
                  and          a6, gp, t3
                  slti         s9, s8, 25
                  slt          a3, t3, gp
                  sltu         t3, t0, t1
                  mulhsu       s2, a3, t1
                  sll          s3, t2, s4
                  srli         s2, zero, 3
                  divu         s7, s10, s7
                  lui          a6, 828239
                  sltu         tp, a4, t4
                  andi         s3, s3, 1868
                  sll          tp, s2, a4
                  and          s1, tp, a7
                  auipc        t1, 915728
                  sltu         s4, a4, a5
                  srli         s8, s7, 8
                  addi         s3, a2, -1110
                  divu         zero, t2, a3
                  sub          s4, t2, t1
                  slt          ra, t4, s6
                  mulhsu       s2, a6, ra
                  and          s3, t4, s11
                  mulh         a0, a3, a0
                  sltiu        t5, s4, 1829
                  rem          s1, gp, s2
                  xor          tp, ra, s7
                  slt          s1, tp, t2
                  sltu         t2, s11, s5
                  or           s8, a6, ra
                  remu         s3, a4, s3
                  mulhu        s1, t2, t3
                  srl          t3, s5, s11
                  slt          a2, s5, ra
                  remu         s3, t3, s1
                  srli         a7, tp, 21
                  nop
                  slli         ra, s11, 29
                  xor          ra, tp, t4
                  add          a7, t5, t1
                  srai         s6, s6, 5
                  andi         t2, s10, 636
                  sll          a6, zero, a6
                  divu         a5, sp, s3
                  and          tp, a3, s7
                  slli         s8, s9, 22
                  lui          a0, 729267
                  div          s0, s5, a7
                  add          s11, sp, a3
                  sltiu        a6, t2, -454
                  mulh         tp, tp, s0
                  div          s10, t1, s9
                  mul          zero, tp, a2
                  slli         t6, a1, 23
                  srli         t3, s5, 15
                  auipc        s2, 775956
                  remu         a0, sp, s3
                  rem          a5, zero, a7
                  srai         s5, s8, 21
                  sub          gp, t1, a0
                  rem          s9, s1, a1
                  mul          s5, s9, gp
                  mulh         a0, t5, t4
                  slti         s3, zero, -371
                  srl          t1, s6, t3
                  lui          a7, 13033
                  mul          s9, t5, s9
                  div          gp, a5, t4
                  slti         t1, a3, 953
                  div          zero, a2, sp
                  sltu         s1, s9, gp
                  and          t5, tp, a7
                  slti         t4, sp, -1560
                  slti         t3, s1, -626
                  slli         s0, sp, 18
                  mul          s10, s7, a2
                  sub          a3, a7, gp
                  mulh         s3, zero, s4
                  nop
                  srai         a6, a4, 14
                  div          s6, a7, t5
                  mulhsu       s2, s1, s5
                  srai         ra, s8, 25
                  slli         zero, t5, 7
                  srli         a5, sp, 9
                  xori         t4, a5, -1184
                  sub          s2, s8, t0
                  add          a0, t5, t1
                  xori         a5, gp, -565
                  slli         t4, a0, 17
                  or           s0, a3, s5
                  sltiu        t2, s4, -1194
                  srl          s6, s0, t3
                  div          t3, t2, s4
                  srai         s6, a5, 18
                  slt          s10, t3, a0
                  mul          s4, s1, s9
                  srli         a1, t5, 24
                  mul          a5, a4, a4
                  srl          t4, a3, s5
                  xor          s7, a1, a1
                  xori         s5, a1, 546
                  srli         t4, t6, 10
                  srli         s7, s1, 3
                  mulh         a2, ra, s10
                  add          a0, t3, zero
                  srli         zero, s3, 11
                  mul          a1, s8, s2
                  addi         s10, gp, 1158
                  mulhu        a6, a6, s6
                  divu         a6, a2, t1
                  mulhsu       t1, s11, s9
                  sra          a5, a7, a5
                  srl          s9, s0, a5
                  mul          s6, t3, s0
                  auipc        s11, 107386
                  remu         ra, gp, a1
                  rem          s11, a5, s8
                  mulhsu       s1, t4, a7
                  ori          t1, zero, -684
                  sll          s11, a4, a6
                  xor          a3, s2, t5
                  slt          a0, t2, a4
                  srl          a3, t1, a4
                  sltu         ra, s9, s7
                  rem          a3, s5, t6
                  remu         s4, t5, s7
                  sub          t2, t0, t6
                  slt          s7, s6, a5
                  add          t3, ra, t6
                  or           s10, s7, t0
                  remu         t5, t1, t2
                  mulhsu       s2, s2, s5
                  slti         t1, s3, -555
                  mulh         zero, t6, s2
                  andi         s1, s3, 963
                  rem          s11, a0, t6
                  ori          a5, a5, -1398
                  srli         s10, tp, 14
                  srli         s6, a1, 26
                  mulhu        zero, sp, gp
                  nop
                  slli         s5, a0, 11
                  or           a3, s6, t2
                  slli         t5, s6, 0
                  and          s4, t6, gp
                  slti         t4, s7, -1046
                  srai         t4, a3, 31
                  div          ra, tp, t6
                  sll          t3, s2, zero
                  xor          a0, s4, a1
                  xori         s0, t4, -438
                  div          a3, s0, a3
                  andi         s5, a5, 255
                  rem          a5, s9, sp
                  ori          t1, a4, 1357
                  auipc        s3, 580864
                  lui          a7, 192834
                  andi         ra, s8, -1352
                  nop
                  mulhu        tp, gp, s2
                  auipc        s3, 61140
                  addi         a7, s7, -1817
                  lui          t1, 423632
                  xor          a5, s2, s7
                  or           s10, s1, a0
                  sll          t1, t2, a5
                  divu         s10, t1, s8
                  sra          a3, a3, ra
                  mulhu        a3, s4, s3
                  slti         a1, t3, 1440
                  rem          ra, s7, gp
                  sub          s7, a2, s4
                  remu         a7, s2, a2
                  andi         t1, a3, -1233
                  remu         t3, t5, zero
                  srli         s8, zero, 24
                  sll          t4, a2, gp
                  sub          s2, s1, s11
                  mulh         t2, t4, a7
                  mulh         a3, s8, s7
                  slti         a1, t0, -1701
                  slti         s3, a3, -1126
                  addi         s1, s11, -838
                  add          t3, ra, a2
                  rem          zero, t4, gp
                  div          t5, s7, t4
                  add          s10, s4, a1
                  slli         s3, t1, 8
                  sll          t3, sp, s4
                  srli         s0, a1, 14
                  mulhsu       t3, s10, t2
                  sltu         tp, ra, t4
                  srli         a7, ra, 31
                  sra          t1, s1, tp
                  srli         a5, s10, 1
                  sltu         t5, s5, t3
                  sltu         t5, a1, zero
                  div          a6, s8, a7
                  andi         t6, a0, -1555
                  xori         a0, s5, 1934
                  mulhu        s0, t2, gp
                  and          gp, a4, a4
                  and          s0, a5, t6
                  slti         s10, a1, -1366
                  slti         s8, a1, 46
                  sra          s9, a1, t5
                  sub          a1, tp, a1
                  or           tp, s1, s5
                  slti         s4, s3, 1235
                  srai         s9, t0, 19
                  divu         a0, a4, a5
                  add          gp, s5, a7
                  sltiu        a2, s9, -568
                  slt          s6, a5, s3
                  sub          s5, s4, a3
                  slli         a3, a6, 27
                  addi         s5, s8, 1099
                  srl          s6, s10, s9
                  srli         a5, s3, 13
                  srai         a7, a6, 2
                  and          t1, s11, s0
                  srli         s7, a5, 4
                  slli         s0, a5, 12
                  slt          s3, a3, s6
                  auipc        gp, 597179
                  div          s9, gp, t5
                  lui          s2, 446565
                  srai         s2, a0, 27
                  lui          s0, 791028
                  sltiu        a0, s8, -222
                  sub          a7, s0, a1
                  and          t5, a2, s3
                  div          zero, t2, t4
                  or           a7, gp, s5
                  sll          s9, s11, s0
                  ori          a0, a6, -1772
                  xor          s3, a3, a7
                  sltu         ra, s9, s11
                  srli         s8, t2, 0
                  nop
                  srai         a1, t3, 14
                  nop
                  srai         a0, s2, 21
                  sll          zero, gp, s3
                  srai         s8, s5, 3
                  srai         a0, s9, 14
                  sltiu        s11, s6, 391
                  addi         t1, a3, -303
                  slli         s11, a3, 1
                  div          t2, s2, a3
                  sll          a0, s0, s8
                  slt          s8, a1, a3
                  sltiu        s7, s11, 513
                  nop
                  rem          s2, gp, s10
                  srai         gp, a3, 10
                  sll          s0, s1, ra
                  sltu         a0, zero, t6
                  add          gp, gp, zero
                  andi         a7, s4, 325
                  mulhsu       a6, a2, t1
                  add          s7, s3, s9
                  sll          a2, a0, s10
                  xori         a1, a3, -1161
                  rem          a6, ra, a6
                  slli         s10, tp, 26
                  sub          s6, t6, s6
                  mulh         a3, t2, gp
                  rem          a5, a0, s6
                  srli         s3, t3, 13
                  nop
                  slli         s2, s1, 17
                  remu         a3, gp, s7
                  slt          s1, s3, a0
                  sll          t1, s1, t1
                  sll          a1, t6, t1
                  andi         a2, zero, 614
                  divu         t3, a0, s10
                  slti         tp, s3, 507
                  auipc        s5, 321154
                  srli         t5, t5, 19
                  remu         t5, s6, sp
                  sub          t5, ra, a2
                  and          s3, gp, t1
                  addi         t5, a5, 285
                  ori          a1, s5, 583
                  or           s11, s9, s2
                  sltiu        s5, s1, 1193
                  sltiu        zero, a5, 765
                  srl          s3, a7, a5
                  sltu         s10, a0, t5
                  slt          s10, a4, a5
                  xori         s0, t2, -1329
                  mulhsu       t1, s3, s4
                  add          a2, s4, a6
                  div          a0, a5, a7
                  ori          a6, a1, 35
                  lui          zero, 745181
                  ori          t6, t4, 368
                  add          s5, t2, s2
                  sltiu        s6, t3, -1188
                  nop
                  srli         s2, a1, 23
                  mulhu        a3, t6, t3
                  srai         a1, t2, 2
                  slt          a2, a3, s1
                  sub          a2, s11, a5
                  sub          zero, s6, sp
                  remu         a5, s5, s5
                  mulhu        a6, a4, t2
                  or           a1, a3, s7
                  mulhu        s5, t5, t0
                  divu         s1, ra, t6
                  auipc        a7, 867783
                  ori          ra, s2, -446
                  addi         t5, gp, 1135
                  rem          ra, a7, a7
                  srli         t5, t6, 18
                  sra          zero, a7, a7
                  sra          a0, s0, a5
                  mulh         tp, s6, s10
                  lui          t6, 313527
                  mul          s10, s2, s5
                  sra          a6, a1, t0
                  slt          a2, gp, a4
                  xor          t5, a2, a2
                  remu         s2, a6, s8
                  and          t6, s2, s11
                  slt          zero, a7, a4
                  slti         s5, t6, -812
                  auipc        t2, 165599
                  or           s1, t0, gp
                  slli         s4, s8, 7
                  mulhu        s11, a3, t4
                  rem          t1, s9, a7
                  mulhu        tp, a2, a3
                  mulhu        t5, t3, a4
                  and          zero, t6, s2
                  sra          a0, a5, t6
                  mulh         s0, s9, a6
                  xori         zero, s2, -378
                  and          a2, zero, t2
                  or           s6, a0, a0
                  rem          s10, t2, t3
                  remu         t3, a7, s2
                  lui          a5, 221310
                  mulhu        a6, a4, s8
                  srl          zero, t3, t4
                  xori         s2, gp, -1231
                  slt          a7, a2, s4
                  xor          tp, s5, s3
                  sub          s11, tp, t2
                  sub          a7, sp, t3
                  sll          t6, t2, t5
                  xor          a7, s7, s11
                  addi         a3, a1, -1067
                  slli         s9, a0, 7
                  xori         s6, t6, 1272
                  ori          s10, s7, -494
                  andi         s2, a3, 749
                  srai         t5, s10, 10
                  sra          tp, zero, a7
                  mulhsu       gp, a3, a6
                  mulh         t3, a5, a6
                  sltiu        s4, t2, -1211
                  ori          a2, t2, -645
                  divu         a3, t3, s0
                  sltiu        t2, s8, 208
                  rem          t4, a2, s0
                  sltiu        t1, a7, -1649
                  sub          s10, s3, t4
                  lui          s0, 528012
                  lui          s9, 772759
                  sltu         zero, t5, zero
                  mulhu        t4, t4, t2
                  xor          a5, t3, t4
                  mulhu        tp, s9, gp
                  div          s1, t1, t4
                  slti         t5, a4, 956
                  mul          a7, s10, zero
                  rem          s10, s4, s8
                  sub          t1, a4, t2
                  mulhsu       s5, s3, a7
                  lui          t4, 208851
                  sltiu        a5, t3, 182
                  xor          s1, a1, zero
                  andi         gp, a5, 120
                  and          a0, ra, tp
                  slli         s8, s4, 9
                  slli         tp, zero, 7
                  or           ra, s1, t4
                  slli         s5, t1, 5
                  addi         t3, t5, -346
                  slli         a2, t4, 12
                  xor          s7, gp, a5
                  sra          s11, s8, ra
                  or           s7, s2, a4
                  nop
                  sub          t3, sp, ra
                  xori         a6, a1, -1397
                  sltu         t6, a5, sp
                  sltiu        s9, s4, -161
                  xori         t1, s11, -1344
                  sll          a5, t5, s3
                  addi         t4, s4, -910
                  ori          a6, t3, 345
                  add          a5, s7, sp
                  srli         t3, s1, 23
                  srli         s7, a5, 14
                  mulh         s2, sp, a3
                  add          a0, t3, a4
                  or           t2, a4, t2
                  andi         s0, t0, 1606
                  mulhsu       t6, t4, t1
                  sltiu        a0, a1, -747
                  slli         t1, s4, 17
                  ori          a5, a5, -1377
                  sltu         s5, s1, s3
                  ori          a7, a0, -1107
                  mulhsu       a0, a1, s0
                  mul          a2, a0, zero
                  remu         a5, s0, a4
                  addi         a5, s4, 973
                  mulh         a6, s0, s3
                  sltiu        t5, a2, -1562
                  mulh         ra, t6, a5
                  xor          t5, t0, t0
                  remu         t4, s5, s5
                  slli         s8, zero, 12
                  sltu         t6, s4, s2
                  div          s5, a7, s3
                  auipc        t6, 955778
                  sltiu        s9, t4, 2020
                  sll          t5, s2, s4
                  slt          tp, a4, t0
                  slli         s9, s11, 26
                  nop
                  srai         s11, s2, 30
                  mul          t2, s3, tp
                  nop
                  mulh         zero, s1, t2
                  slti         a3, t6, -1182
                  mulhu        a6, t3, a7
                  remu         t1, a2, t0
                  slti         s2, s1, -628
                  auipc        s11, 592595
                  slti         s9, t3, 59
                  rem          s2, s2, s4
                  add          s7, a1, tp
                  div          s1, gp, s0
                  mulh         a7, t5, zero
                  remu         a6, tp, a4
                  andi         t2, s11, 342
                  mul          a6, s1, ra
                  addi         ra, s3, 1954
                  srl          a6, t5, sp
                  srai         t4, s11, 7
                  lui          s3, 788764
                  rem          s0, a5, s8
                  ori          t2, a0, -1712
                  auipc        s3, 633077
                  sltu         gp, t4, zero
                  rem          ra, tp, tp
                  sll          t4, t0, s6
                  mulhsu       a2, zero, a0
                  srl          t2, s7, s4
                  srl          s10, t0, s9
                  sub          a5, s2, s5
                  mulhsu       zero, a0, t5
                  srli         s11, a4, 14
                  sub          s4, t0, t5
                  srli         s8, s0, 5
                  srai         s5, s5, 24
                  divu         zero, s10, t2
                  add          t5, ra, s0
                  slti         a5, a2, 1732
                  and          gp, ra, t5
                  rem          a6, tp, s7
                  slt          ra, s3, t5
                  sll          a3, t0, s7
                  lui          a0, 905506
                  xori         a2, sp, -1176
                  mulh         s3, s8, sp
                  sll          a0, t0, a1
                  auipc        zero, 897150
                  sll          tp, ra, a5
                  mulh         a6, s8, s0
                  div          s5, a0, s11
                  slti         ra, gp, 1638
                  slti         a3, s10, -1262
                  sra          a0, a0, a0
                  remu         t6, s6, a2
                  sub          t3, a4, s7
                  mulhsu       t3, s2, t4
                  addi         t1, a6, 1851
                  sltiu        s1, s9, -338
                  mulhsu       a3, t0, s3
                  lui          t3, 1034222
                  divu         a3, a4, a6
                  srli         s5, sp, 2
                  mul          t1, a0, s8
                  andi         s5, t5, 571
                  add          tp, a7, s1
                  slli         s5, sp, 31
                  mulhsu       t1, s1, a1
                  sltu         a7, s7, t5
                  and          t1, s8, t6
                  nop
                  sra          a2, s7, a7
                  andi         a1, a4, -1643
                  addi         a1, gp, 420
                  remu         s6, s0, a4
                  add          s3, t5, t6
                  and          a1, s6, s0
                  xor          s11, s8, s1
                  rem          t2, a5, s6
                  slt          a7, tp, s1
                  andi         s7, s5, 1376
                  sltu         t5, s3, s9
                  mulhsu       gp, s0, zero
                  mulhu        s11, s11, a5
                  mulhu        s2, a5, a5
                  div          s3, a0, a7
                  slti         zero, s6, 867
                  slti         a3, zero, 1179
                  remu         s0, s7, s0
                  add          s0, s4, s10
                  or           a7, s10, a1
                  mulhsu       a0, a2, a2
                  xor          t5, t3, zero
                  mul          s8, s10, t1
                  and          s2, ra, a0
                  xor          tp, s11, s2
                  lui          s5, 382175
                  mulhu        a5, a5, t4
                  sra          s8, t1, s9
                  slt          t5, s9, t1
                  ori          t1, t1, -122
                  remu         t2, tp, t1
                  div          s4, a2, t5
                  ori          t5, s8, 1068
                  sltiu        t1, s10, -1258
                  srl          s11, ra, t1
                  srl          zero, t6, a5
                  mul          ra, s1, s7
                  lui          t1, 190310
                  lui          t5, 598354
                  sub          s2, gp, a4
                  nop
                  sra          s2, tp, a5
                  add          ra, sp, s3
                  sltu         a0, t6, gp
                  slti         s5, s0, -861
                  nop
                  xori         s4, a6, 799
                  sll          s0, t3, zero
                  lui          s3, 201316
                  mulhu        t5, t1, a1
                  sltu         a6, sp, s9
                  slt          s2, t0, t2
                  rem          a6, s6, t1
                  div          zero, s2, t4
                  mul          s3, s11, a0
                  remu         ra, s6, ra
                  add          s11, a2, a5
                  sltiu        tp, a3, -1084
                  mulh         s1, s1, s11
                  ori          t3, s3, -1243
                  rem          s4, a5, gp
                  nop
                  sltiu        s3, s11, 831
                  slti         a7, a0, -849
                  sltu         ra, a6, t4
                  ori          s6, gp, -266
                  remu         s3, t6, a4
                  sub          a3, s6, a1
                  mulhu        a2, s6, a7
                  xori         a6, zero, -1831
                  mulhsu       s8, s5, a6
                  or           s8, s2, tp
                  ori          gp, s8, -2045
                  div          s3, s9, s9
                  remu         s1, a2, s9
                  ori          a0, s4, 1969
                  sltiu        a1, ra, 1165
                  lui          s10, 712277
                  and          a0, sp, t5
                  sll          s11, a7, a5
                  sltu         t5, s1, s7
                  remu         a7, s10, s4
                  auipc        s1, 310214
                  addi         zero, s3, -1031
                  add          a0, t4, a7
                  auipc        s3, 282100
                  nop
                  xori         t5, a7, -521
                  slti         a1, a6, 328
                  srli         tp, t0, 23
                  add          a3, sp, t4
                  srai         s8, sp, 9
                  addi         a0, s10, 1573
                  srai         ra, s6, 3
                  add          t3, tp, s2
                  slti         a6, a1, -83
                  xori         t1, t6, 1901
                  divu         t3, t4, s1
                  auipc        s7, 637637
                  sra          t5, s5, s5
                  xor          s5, tp, ra
                  sll          s0, t1, s7
                  mul          a5, t2, s11
                  sll          t1, a5, s4
                  srai         s1, s5, 17
                  sll          t2, s11, s4
                  auipc        s5, 127859
                  andi         s6, a6, 1615
                  mul          t5, sp, t3
                  nop
                  sltu         s11, zero, t4
                  srl          t6, t0, tp
                  mulhu        a0, sp, tp
                  or           s2, t5, a1
                  xor          t2, t6, s0
                  sltiu        tp, s9, 112
                  remu         a0, a2, s11
                  rem          a5, gp, s2
                  xor          a1, a3, s4
                  sltu         t1, a6, zero
                  srli         s10, a5, 30
                  xor          s7, s4, s2
                  srai         a3, s10, 25
                  xor          s4, t6, s3
                  srai         a2, s2, 24
                  srli         a0, ra, 15
                  lui          s3, 74946
                  srl          s8, s10, s5
                  mul          t4, a1, s5
                  nop
                  mul          s1, a3, s8
                  add          a5, t6, s11
                  srai         s5, s11, 31
                  srl          t2, s1, s7
                  remu         s5, gp, gp
                  sra          t4, s2, s11
                  mulhu        s5, s8, s4
                  lui          tp, 812686
                  and          gp, s0, s4
                  ori          a0, t4, -1361
                  mulh         s11, t6, s1
                  slli         a6, t4, 5
                  sltiu        s4, t5, 998
                  ori          a3, a1, -345
                  sub          a7, gp, a2
                  ori          t1, t4, 221
                  sra          tp, ra, a5
                  xor          s7, t6, a3
                  srai         s0, a7, 5
                  mulhsu       t5, s0, tp
                  and          tp, s0, a0
                  and          a6, zero, s7
                  remu         s5, s10, s5
                  mul          zero, a4, a7
                  slt          t1, t0, a3
                  srai         t1, t1, 25
                  andi         s4, a7, -480
                  slti         s8, s0, 116
                  div          s1, t0, t2
                  addi         s9, s1, -2024
                  or           s10, a6, t4
                  xor          s6, zero, a1
                  sra          a0, s0, sp
                  mul          gp, s8, s11
                  srai         s4, zero, 19
                  auipc        ra, 120180
                  rem          a3, sp, s9
                  lui          t5, 286800
                  srai         t3, a1, 24
                  rem          t4, t3, s8
                  sltiu        s7, a7, 1626
                  remu         s2, t5, zero
                  div          a5, s2, a4
                  add          s1, s5, s2
                  slti         s3, t0, -405
                  mulhu        a7, a6, s6
                  divu         t4, a7, s2
                  sltu         t6, s4, t6
                  slli         tp, a4, 8
                  rem          t1, s1, s7
                  sll          s9, t0, s3
                  sltu         t2, s10, zero
                  sltu         tp, s11, s7
                  mulh         s1, s0, t4
                  sll          a7, t0, t2
                  slt          s2, s8, s9
                  srai         s5, s5, 18
                  mulhu        ra, a1, s4
                  xori         a7, a4, -1383
                  sltiu        a5, t4, 861
                  div          s3, s7, s0
                  xor          s11, sp, s9
                  slt          tp, t1, ra
                  mulhu        t2, sp, s1
                  mul          gp, ra, s1
                  nop
                  srli         a0, s9, 18
                  lui          a1, 1032904
                  mul          s10, tp, s2
                  slti         zero, s11, -388
                  mulhu        s8, a4, t4
                  and          gp, s11, a2
                  nop
                  auipc        a7, 303398
                  mulh         s10, s11, s1
                  and          t3, a0, a2
                  auipc        s6, 874375
                  remu         s2, s1, s3
                  addi         s10, a0, -416
                  slti         t2, gp, -1219
                  srai         s2, s11, 23
                  remu         tp, s8, s9
                  slti         tp, s5, -1791
                  sltiu        t5, a2, 1974
                  mulhu        s7, s7, a7
                  andi         a7, s2, -697
                  andi         s8, s8, 919
                  add          s10, a7, s6
                  slti         s4, s5, 1422
                  mul          s2, s10, t5
                  sltiu        s0, t3, 208
                  sltu         s3, s1, t6
                  sub          a2, t5, a7
                  sub          s8, a7, s10
                  slti         a7, s9, 458
                  and          s8, s3, s9
                  or           tp, s1, s11
                  sll          t4, s11, gp
                  slt          ra, ra, a5
                  and          gp, s8, s6
                  add          t5, t2, s6
                  srl          s2, s10, s3
                  sll          s6, a3, s10
                  nop
                  nop
                  mul          a2, a6, t3
                  ori          s5, ra, -636
                  div          t4, s8, t6
                  sltu         s8, t5, a4
                  sub          t6, sp, t6
                  nop
                  slli         t6, sp, 7
                  sltu         s3, a3, s10
                  rem          ra, a5, s11
                  slli         s3, gp, 0
                  sltiu        a1, t0, -725
                  add          gp, s1, s5
                  slti         s7, a0, 1162
                  xor          a3, s8, s8
                  mulhsu       s3, gp, a4
                  ori          t4, s10, -1307
                  slt          s0, a3, s8
                  sra          a5, t0, t1
                  mulhsu       t6, t2, a1
                  xori         tp, s3, 1904
                  div          a6, s0, s7
                  mulhu        t3, a1, a7
                  xor          s7, t0, s8
                  addi         a3, zero, 1722
                  rem          s9, tp, s4
                  addi         s0, t6, 863
                  lui          t2, 100154
                  mul          gp, a2, zero
                  sll          t1, a3, t5
                  slli         s9, s4, 27
                  lui          t6, 675706
                  add          s0, t5, s5
                  or           a1, t4, t2
                  sub          s11, s10, zero
                  xor          t6, s3, s1
                  slt          a5, t5, s11
                  divu         s3, s11, sp
                  srl          s11, s8, s10
                  divu         s9, a6, s2
                  slt          a2, t3, sp
                  sltu         s7, t2, t1
                  sub          s10, a1, a4
                  sll          tp, t5, t1
                  mulhsu       s6, a2, s6
                  mulhu        t5, a2, s0
                  srli         s5, a2, 7
                  andi         s7, s9, 814
                  mul          a6, s3, t1
                  sltiu        zero, s2, 1337
                  sra          s9, sp, s10
                  sub          ra, a6, tp
                  slt          a7, a1, s11
                  xor          s4, tp, s7
                  srl          a3, s8, s6
                  nop
                  lui          s6, 378396
                  srli         s1, s2, 28
                  add          a7, t4, t6
                  rem          s7, s9, s1
                  or           ra, t0, a2
                  or           s0, s0, a5
                  ori          s5, a5, 1105
                  rem          gp, t3, s3
                  andi         s4, sp, 952
                  mulhsu       s7, s6, t2
                  xori         ra, a7, -1908
                  or           t3, s9, s1
                  sltiu        a3, zero, 95
                  slti         s5, a6, -812
                  xor          s10, s11, s2
                  div          t6, s9, zero
                  lui          s1, 763524
                  slt          s2, ra, s2
                  div          a6, t2, t6
                  sll          s4, s2, a4
                  srai         a3, a7, 22
                  divu         t3, a4, s2
                  rem          s5, s7, a2
                  or           a2, s7, s10
                  add          t6, s9, sp
                  add          s6, s10, a4
                  slti         a3, s5, 1289
                  xori         t3, a2, 699
                  sub          s2, a3, s9
                  sltiu        t4, s5, -221
                  addi         t5, t1, 780
                  ori          ra, a2, -174
                  ori          ra, s1, 455
                  divu         tp, s8, s3
                  lui          s10, 804888
                  slti         t1, a7, 1739
                  sltiu        t3, a7, -1986
                  sll          a6, a0, a2
                  or           s8, a1, a5
                  srl          s0, tp, s0
                  slt          t6, s10, s10
                  srli         a2, s10, 1
                  slt          a7, t2, sp
                  srli         s2, a0, 20
                  slti         t4, t2, 1171
                  div          s0, a0, a5
                  and          s11, gp, a7
                  slli         s1, t4, 11
                  ori          s0, t0, -338
                  mul          t1, s3, t2
                  lui          a7, 973476
                  addi         t3, s10, 1037
                  and          zero, zero, t3
                  divu         t3, s7, s0
                  sltiu        s7, s10, 665
                  nop
                  or           ra, t4, a3
                  ori          t2, s8, 358
                  sll          s3, t4, a1
                  mulh         ra, t3, s2
                  sub          s10, s2, s9
                  slli         tp, t6, 6
                  remu         s1, t3, s2
                  mulh         s3, a3, s3
                  lui          tp, 423564
                  slli         s0, t0, 26
                  mul          s3, t2, t1
                  xor          t6, s6, s5
                  sltiu        tp, t4, 242
                  divu         t5, s2, s9
                  sll          s2, a7, s4
                  and          s5, s8, a3
                  rem          s9, s3, s7
                  xori         s0, a0, -1562
                  sltiu        s2, t0, 261
                  slti         a5, sp, -1202
                  srli         s4, s3, 1
                  remu         gp, s5, s7
                  sra          gp, t5, s10
                  xor          s11, s10, t2
                  remu         t5, t3, t6
                  srli         t6, tp, 21
                  srl          s10, t1, sp
                  mulh         t4, ra, s2
                  mul          t5, s6, a6
                  remu         t4, t6, s11
                  sll          a5, s7, s1
                  auipc        s4, 545668
                  divu         s9, t4, s1
                  div          s4, a4, t3
                  sltiu        s9, sp, -95
                  add          tp, a1, a0
                  sltiu        a2, a2, 383
                  mulhu        ra, s6, s1
                  sll          s0, gp, s5
                  mulhu        s3, a2, s3
                  mulhsu       ra, s0, s2
                  mulhu        a2, t5, a3
                  slti         s4, a0, -865
                  srai         s11, s5, 21
                  xori         s7, a2, -1036
                  addi         s5, a4, 1504
                  mulh         a5, t3, s7
                  andi         t6, zero, 62
                  sra          a7, s5, s6
                  nop
                  lui          t6, 627844
                  sltu         a0, s5, s5
                  andi         s7, a0, -1645
                  divu         t6, a1, t2
                  addi         t6, s7, -1479
                  mul          a5, a1, s2
                  add          ra, zero, a0
                  remu         gp, gp, s9
                  srai         s10, s11, 19
                  slt          t6, sp, t6
                  sra          a1, s5, gp
                  rem          a0, t5, a2
                  mul          gp, a3, s3
                  srai         ra, a1, 11
                  slt          tp, s6, s10
                  srl          t2, a1, sp
                  srl          a3, t0, a5
                  slt          a5, ra, s4
                  addi         t4, s7, 1324
                  sltiu        s7, t1, -471
                  addi         zero, gp, -566
                  mulh         tp, s5, s7
                  add          a2, s5, sp
                  mulhsu       s1, a4, a0
                  sltu         t2, gp, s0
                  rem          s9, a0, s7
                  and          s11, a7, s7
                  xor          t2, s11, gp
                  slli         gp, s10, 23
                  mul          s0, a0, t4
                  divu         a7, t0, s0
                  divu         s10, a5, t2
                  sltu         a2, a7, t5
                  slt          s3, a7, s2
                  add          s4, a6, t5
                  sra          a0, s5, sp
                  div          gp, a7, s11
                  mulhsu       t2, a4, s7
                  sra          a2, a6, a2
                  add          t5, s3, t4
                  srl          gp, a4, s11
                  xor          s2, t4, t3
                  sll          tp, s1, s0
                  sltu         s11, a0, a1
                  sra          s4, s8, t2
                  mulhu        a3, t2, s3
                  xori         a2, t5, 1008
                  rem          t3, t3, t1
                  sltu         s6, zero, ra
                  auipc        a5, 929374
                  xori         t2, t4, -269
                  srli         s1, t2, 5
                  or           s8, a2, t3
                  lui          a7, 1006366
                  slli         s4, s4, 11
                  auipc        s5, 666466
                  and          t4, a2, a2
                  sub          s9, s7, s4
                  or           t4, a5, s5
                  sltiu        gp, sp, 213
                  slt          a3, a5, s11
                  srai         s2, s5, 18
                  sltiu        t6, t5, -164
                  addi         s3, t6, 509
                  srli         t6, s3, 20
                  mulh         gp, t2, s3
                  mul          s6, t2, a6
                  remu         a2, gp, tp
                  sll          t3, a4, s3
                  sltu         ra, t4, s0
                  rem          gp, a6, s11
                  xori         t2, s8, 220
                  remu         zero, a1, s10
                  mulhu        a1, sp, s8
                  addi         s3, a0, -1600
                  srai         s10, s5, 29
                  remu         zero, s8, s3
                  mul          a5, a3, gp
                  slti         a2, tp, 1072
                  remu         ra, a3, a0
                  andi         a7, sp, -1747
                  ori          s5, s11, 180
                  slt          a0, t5, s0
                  add          a1, s4, s9
                  slli         s11, tp, 20
                  auipc        t5, 897561
                  sltiu        tp, a1, 1837
                  or           gp, s8, s1
                  and          ra, t3, s4
                  sll          a6, s5, zero
                  slli         gp, a2, 15
                  and          s10, s10, s7
                  xor          t2, s3, s8
                  xori         s1, s1, -888
                  srl          s0, a2, s8
                  andi         s2, a1, 904
                  add          zero, t3, a1
                  sra          gp, a3, a0
                  rem          a2, gp, s11
                  slli         s8, s5, 22
                  sltiu        s7, zero, 327
                  srli         a5, ra, 19
                  divu         s2, t0, s1
                  and          s11, t1, t6
                  add          a1, t6, s8
                  slt          t1, a7, a0
                  slt          zero, t0, a3
                  sltiu        a0, ra, 392
                  rem          s9, s8, a5
                  xor          a0, a0, sp
                  divu         t3, sp, s7
                  xori         t4, tp, -755
                  sll          gp, s2, s1
                  divu         ra, a0, zero
                  div          a1, s11, a1
                  or           s6, s11, t4
                  sra          ra, t1, t0
                  rem          a7, s4, gp
                  or           s4, gp, gp
                  xori         s6, s9, -866
                  xor          a2, a1, a3
                  srli         zero, zero, 24
                  sltiu        s7, t5, 889
                  mul          a1, t5, a3
                  sltu         a0, s5, s4
                  mulh         t4, t5, t6
                  sltiu        t4, zero, 1130
                  sll          s10, a6, s8
                  or           ra, sp, s4
                  mulhsu       s7, s3, t2
                  divu         a3, a1, a1
                  slt          s3, s3, s4
                  sltu         a3, s4, a5
                  and          s4, s1, a1
                  andi         t5, a7, -352
                  nop
                  sltu         a6, a4, s2
                  and          t1, ra, s10
                  sra          s7, s10, s11
                  slt          zero, a2, t3
                  divu         a1, t5, tp
                  ori          t5, s3, 1888
                  sltiu        a1, t1, 776
                  sub          s4, s4, a0
                  mulhu        s8, t2, t4
                  divu         t2, s8, s11
                  mulh         s0, t5, s3
                  ori          a0, t6, 1866
                  sra          ra, t4, a6
                  or           s2, t1, a0
                  mulh         a3, t2, a4
                  sltu         t1, t6, a1
                  slli         gp, t1, 23
                  lui          a5, 965504
                  mulh         s9, t3, s4
                  slt          t1, zero, s6
                  slti         gp, t1, -265
                  sra          t1, s3, t6
                  sll          s0, t4, sp
                  sltu         a2, s11, a4
                  srai         t4, t6, 9
                  mulhsu       a5, s2, t4
                  slt          s6, a0, a3
                  mulh         gp, a0, t4
                  mulh         t1, a1, s11
                  remu         ra, ra, a0
                  div          a0, s7, s4
                  andi         s2, s3, -1268
                  xori         a2, t2, -1579
                  div          s8, gp, a5
                  xori         s8, a6, -275
                  ori          a0, s6, -76
                  sll          a7, a4, ra
                  srli         s11, sp, 26
                  lui          a2, 918907
                  xor          t5, a2, t0
                  srai         t2, a6, 8
                  sra          a7, a1, a7
                  sll          t5, t5, s0
                  mulh         s10, s0, gp
                  mulhsu       s0, s11, a2
                  divu         gp, sp, a6
                  sub          t4, a5, s9
                  div          t3, a2, s0
                  slli         s0, gp, 0
                  rem          s6, ra, a7
                  sltiu        t2, a2, -118
                  mulhu        t6, zero, a1
                  remu         a6, t3, a1
                  divu         s4, ra, t3
                  rem          tp, tp, s5
                  and          t4, s2, s0
                  and          s7, a5, t0
                  sra          a0, t5, a0
                  auipc        s5, 456015
                  mul          s0, s7, s9
                  sra          s6, s11, t3
                  slli         t4, a1, 27
                  sra          ra, t6, t3
                  divu         s0, a1, t1
                  auipc        gp, 724969
                  slli         a6, t4, 2
                  ori          s7, t3, 1095
                  mul          s1, a5, s0
                  slli         s9, a2, 23
                  addi         t1, s3, 1667
                  slti         a5, a3, -54
                  and          s8, s3, a4
                  srli         a6, s6, 18
                  sra          tp, t3, t6
                  sltu         tp, a6, t5
                  mul          tp, t0, s0
                  andi         t6, s4, 1956
                  rem          a0, tp, a3
                  rem          a5, t4, a5
                  mul          s2, s1, s8
                  mul          s2, t3, gp
                  sltiu        t6, t1, 1563
                  addi         a5, t3, 1436
                  remu         s0, a4, t3
                  sub          a1, sp, s9
                  mulhsu       t2, s11, a5
                  nop
                  mulhu        t4, a1, t3
                  slli         s11, t0, 7
                  slt          a5, t4, s11
                  slli         s1, a4, 17
                  mul          s8, s8, s10
                  xor          s2, a2, s5
                  mulhu        t1, a3, zero
                  remu         s2, s3, a2
                  auipc        a3, 689130
                  or           s10, t5, s0
                  ori          s8, tp, -786
                  andi         t4, s1, 291
                  remu         s5, s3, a6
                  mulhsu       t4, s3, a4
                  remu         s11, a7, t6
                  srai         t1, s7, 25
                  mul          s1, s1, s2
                  slli         a0, ra, 11
                  and          s5, s1, a0
                  srli         zero, s9, 16
                  andi         s3, a0, -1276
                  xori         s4, t6, 1697
                  nop
                  xor          s8, s9, s3
                  nop
                  mulhu        a3, a1, s0
                  slli         s2, ra, 31
                  sll          a5, s0, a1
                  sra          t6, s1, a7
                  or           t5, s9, a0
                  ori          a1, s8, -221
                  srli         s2, s5, 4
                  remu         ra, a4, t2
                  slt          s10, gp, a7
                  srai         t2, s11, 30
                  addi         t2, a4, 1684
                  srl          t5, s9, t2
                  addi         a0, s10, 796
                  mulhu        ra, a1, a1
                  lui          a0, 257536
                  srl          a0, ra, sp
                  srl          t1, zero, a7
                  srli         a5, s0, 3
                  div          a0, t6, s7
                  mulhu        s10, s7, a2
                  mul          t5, a1, t0
                  sra          t5, a2, s7
                  nop
                  sltu         s4, s8, s8
                  sltu         s0, t1, t6
                  sltu         a7, t3, a0
                  remu         t2, t0, a2
                  srai         t6, a4, 13
                  xor          a7, s5, s2
                  or           ra, a3, a5
                  srli         a2, t5, 20
                  sra          a5, t3, t6
                  mulhsu       s8, t0, a0
                  slt          a6, a5, t5
                  slli         zero, s11, 15
                  sll          s5, s0, a3
                  and          s11, s11, s10
                  nop
                  rem          tp, a6, a7
                  sub          s8, s5, s3
                  sll          s8, s9, t1
                  divu         t2, zero, s7
                  and          t1, s2, gp
                  sra          a7, a3, gp
                  or           gp, a1, s7
                  srai         a3, a4, 10
                  srl          tp, t3, t5
                  sll          a0, a4, a0
                  andi         t1, t0, -1266
                  srai         t5, tp, 19
                  auipc        s2, 839336
                  mulhu        ra, s3, s0
                  mul          a1, s11, s6
                  sll          s5, s10, a6
                  slli         t1, s3, 0
                  slti         a6, a3, -693
                  sltiu        gp, ra, 865
                  sltiu        a6, s6, 2005
                  xor          ra, zero, zero
                  mulhsu       ra, a1, a7
                  sra          s3, s8, t1
                  slli         s9, t3, 9
                  sltu         s1, s3, ra
                  addi         s2, a3, 1807
                  slt          t6, a7, s3
                  div          s0, t5, tp
                  slt          s1, t2, tp
                  sltu         s1, a6, a3
                  sra          t3, t2, t4
                  or           zero, a0, s0
                  mulhsu       s7, zero, tp
                  divu         a5, sp, a5
                  mul          a2, tp, t6
                  sra          tp, t5, s3
                  srl          a6, t1, a3
                  sltiu        t1, t1, -237
                  srai         s4, s4, 31
                  sub          s2, a6, s11
                  div          a1, s0, a2
                  mulhsu       zero, s11, a4
                  xor          gp, t3, s3
                  andi         a5, a1, -1505
                  srli         t3, t2, 22
                  rem          s5, a2, a3
                  addi         a0, a0, 1960
                  mulh         s2, t2, t1
                  sra          t1, t4, a0
                  xor          s5, s8, a3
                  srl          t2, s1, a6
                  rem          t4, t4, t2
                  lui          a2, 579954
                  slti         t1, s11, 1576
                  ori          s0, a4, 1242
                  srl          a3, t2, sp
                  sub          s4, s4, tp
                  remu         s9, s1, s11
                  mulhsu       gp, t1, ra
                  rem          s9, a7, s1
                  divu         ra, a4, sp
                  div          gp, s3, t3
                  sll          a2, a6, ra
                  slli         s1, zero, 5
                  rem          s0, a3, a2
                  or           s10, s7, s9
                  addi         t6, a0, 408
                  srai         a3, s11, 17
                  sltu         s10, s9, a5
                  remu         ra, s7, s0
                  xor          s9, s10, s7
                  srli         zero, sp, 31
                  div          t2, a2, s9
                  srli         gp, tp, 2
                  srai         a3, t6, 30
                  andi         ra, s3, -843
                  auipc        s1, 462296
                  sltiu        t6, s0, 1050
                  and          t3, a1, s5
                  and          s1, t0, a1
                  xori         s5, t1, 1709
                  and          t4, zero, t4
                  mulhu        a6, s5, a5
                  sra          t1, s0, a0
                  lui          s0, 806888
                  rem          ra, a0, a3
                  divu         s5, t5, s3
                  xori         a5, t2, -433
                  rem          a5, t2, a4
                  slti         s4, t4, 1511
                  xori         a0, a4, 597
                  rem          s2, t3, a3
                  srli         s5, a1, 25
                  mulh         s2, sp, sp
                  mulhu        t2, a3, a3
                  mulh         a1, t1, s5
                  mulhu        ra, t5, s1
                  and          ra, a0, s6
                  and          s7, t3, t0
                  ori          a3, a7, 1215
                  sll          s2, a3, s11
                  sra          s2, a6, s9
                  mulhu        s1, s11, s9
                  remu         a6, a0, a3
                  sll          t1, s10, s7
                  rem          s0, t1, a7
                  divu         tp, a0, ra
                  and          zero, s6, t0
                  sltiu        s4, a0, -1135
                  remu         a0, a2, s2
                  sltiu        s7, t1, 1528
                  mulhsu       tp, a5, a4
                  div          s11, s6, gp
                  remu         a5, tp, a7
                  mulhu        a3, a3, tp
                  nop
                  mulhsu       s8, t3, s0
                  sub          tp, s3, s4
                  remu         s8, s0, s1
                  rem          a1, gp, a7
                  srai         s2, s7, 1
                  and          a2, s0, s6
                  nop
                  sll          t1, s6, s3
                  sltu         a3, ra, t2
                  and          s5, t5, a3
                  auipc        a7, 83310
                  sltiu        s10, a5, 259
                  mulhu        s7, a3, t2
                  lui          a2, 908056
                  and          s5, a5, s5
                  rem          a0, gp, s11
                  slti         a5, s11, 1546
                  slti         t4, t6, -1779
                  or           a1, zero, sp
                  mulhu        s0, a6, s10
                  sub          ra, t4, gp
                  sll          ra, tp, a0
                  mul          t5, t1, s11
                  sub          s3, a7, a2
                  andi         ra, a7, 1672
                  lui          tp, 594321
                  mulh         t2, tp, s1
                  xori         t1, s1, 1664
                  auipc        t6, 441516
                  or           t4, t6, t3
                  lui          a3, 166244
                  slli         s0, ra, 9
                  slt          s2, a2, s9
                  sra          s8, s5, a1
                  sltu         s7, a1, a2
                  addi         t2, s3, -93
                  lui          a6, 429663
                  sltiu        a2, s11, 1209
                  srl          s0, a5, s4
                  srli         a7, a6, 26
                  xori         s2, a5, 201
                  rem          t1, s10, a4
                  divu         s7, s11, t4
                  xor          t2, a6, tp
                  xor          t2, a3, zero
                  addi         s7, s10, 1637
                  sltiu        a5, s2, 117
                  sra          s0, t5, s10
                  sltu         s3, s4, a4
                  andi         s4, a0, 870
                  mulh         a2, a3, a3
                  and          a2, t3, s7
                  lui          s6, 1011350
                  sra          s5, ra, a6
                  remu         t3, s9, a2
                  sub          s2, a3, s7
                  sra          t5, sp, t6
                  remu         a0, a4, t1
                  slt          s5, s5, s8
                  divu         a2, sp, a0
                  remu         s5, a2, t4
                  rem          t2, t3, a1
                  nop
                  add          a0, t0, t4
                  auipc        a5, 191096
                  and          a5, s9, s9
                  andi         s7, ra, -1910
                  slt          s2, a4, s6
                  slt          s11, t1, t1
                  xori         a0, a3, 381
                  andi         t3, a4, -1303
                  sltu         s7, a5, t3
                  srl          a7, s5, a2
                  ori          t5, t1, -873
                  srai         t1, s4, 13
                  sll          s3, t4, s8
                  or           s11, a3, s0
                  rem          s7, s0, tp
                  srai         t1, s3, 5
                  sub          s4, s6, s0
                  nop
                  mulhu        a6, t4, t3
                  auipc        a6, 119376
                  auipc        s11, 652693
                  div          a5, s2, gp
                  lui          s7, 143464
                  andi         tp, s1, 378
                  srl          s3, a3, zero
                  sll          s2, s3, s8
                  andi         tp, a0, -1350
                  nop
                  div          a7, t0, a4
                  slt          s2, a4, a6
                  ori          a3, a3, 1557
                  srli         t1, gp, 10
                  lui          s3, 164266
                  sltiu        tp, gp, -570
                  sltu         tp, tp, a7
                  andi         s7, s10, 180
                  nop
                  auipc        s0, 174829
                  and          s10, s3, gp
                  sll          a6, s7, a3
                  mulh         s9, s10, ra
                  sll          a3, t0, s10
                  xori         a0, s1, -352
                  mul          a1, s9, a3
                  remu         a0, s9, s10
                  sltu         a0, a2, s0
                  rem          a5, t5, s1
                  lui          t1, 767815
                  mulhu        a6, s9, s4
                  divu         t6, tp, sp
                  and          a2, a3, s10
                  nop
                  mulhu        a5, s6, t3
                  mulhsu       s9, a1, tp
                  xor          s10, s7, a4
                  sltiu        a5, a2, 126
                  slti         s0, s11, 162
                  nop
                  srl          s2, s2, t4
                  addi         s8, t1, -2048
                  sltiu        a7, gp, -1476
                  mulhsu       t4, s8, tp
                  nop
                  add          t3, s7, a7
                  srl          a5, s8, s1
                  srli         zero, gp, 5
                  srai         s11, s10, 5
                  slti         s11, tp, -1056
                  ori          a5, a6, -1675
                  mulhu        tp, t2, s7
                  xori         tp, s9, 774
                  slti         s1, t0, -704
                  ori          s11, s1, -1652
                  divu         tp, zero, a3
                  nop
                  xori         t5, a4, -810
                  lui          t6, 192167
                  sra          s6, t4, t0
                  addi         t2, s6, 874
                  mulh         s4, sp, s1
                  slt          t4, t6, a0
                  remu         t3, s7, t3
                  remu         s1, sp, s0
                  addi         zero, s6, -213
                  sra          s11, s3, a5
                  sub          a0, gp, sp
                  ori          s6, zero, -1439
                  mulhu        tp, a4, a7
                  xori         s5, a4, -1683
                  auipc        t4, 246299
                  slli         gp, a3, 17
                  rem          a2, a4, s1
                  or           gp, tp, a7
                  divu         a0, s4, ra
                  slti         s9, a5, 811
                  sra          s0, s6, t3
                  srl          s10, ra, s7
                  sra          s2, t5, a4
                  xor          s7, a7, s4
                  srl          s0, s5, a2
                  divu         t5, s10, t4
                  srai         ra, zero, 0
                  rem          s10, sp, s10
                  rem          s5, tp, a7
                  sltu         s10, t6, a1
                  andi         t2, tp, -590
                  or           t5, s6, t1
                  srai         s0, s1, 0
                  lui          s11, 826432
                  or           s9, a6, s1
                  slt          a7, s9, a6
                  and          a1, s1, s9
                  srl          tp, t4, a4
                  lui          a2, 802006
                  slti         s9, tp, 918
                  add          t1, t4, t3
                  srl          tp, s4, s10
                  slli         ra, gp, 8
                  nop
                  mulhsu       tp, s6, a3
                  rem          s6, s4, s2
                  sub          t4, s6, a2
                  mul          s1, sp, a2
                  and          s9, s6, a7
                  mul          t2, t6, s11
                  srli         s9, s8, 14
                  xor          a6, t6, t0
                  sra          a3, gp, s11
                  sltu         t3, s11, s8
                  div          a2, t5, a6
                  addi         zero, s7, -547
                  remu         a1, t4, s0
                  mulhu        tp, a0, t4
                  remu         a5, zero, t6
                  mulh         a6, ra, ra
                  slti         s1, s11, 216
                  divu         t5, s8, s2
                  divu         s6, sp, zero
                  add          t5, t3, a3
                  divu         t6, t1, s5
                  sltu         s0, s11, t4
                  sll          a1, ra, a0
                  sltiu        a2, zero, 553
                  xor          tp, s1, s4
                  sltiu        a6, sp, -895
                  nop
                  slt          tp, s1, s8
                  andi         t6, s9, -1042
                  srli         a7, t6, 14
                  remu         s11, a0, t0
                  slti         s6, a6, -109
                  mul          s3, s9, s7
                  slti         ra, s0, -1591
                  addi         a7, a7, 1843
                  mulhsu       t6, t0, zero
                  divu         s3, a1, t1
                  srl          ra, a5, t2
                  add          s9, s9, a5
                  and          s1, s7, s11
                  andi         s7, s11, 1924
                  sltu         gp, s1, a0
                  mulhu        a2, t2, t1
                  slli         zero, t6, 26
                  ori          a5, s9, -1433
                  lui          s7, 555354
                  divu         s10, s7, s10
                  rem          s4, a1, s3
                  auipc        zero, 225182
                  srl          s5, s4, a1
                  mul          t4, t4, sp
                  lui          s3, 609070
                  ori          t1, s2, -1120
                  slt          a2, s10, s11
                  slli         a7, s11, 15
                  srai         t4, s5, 31
                  remu         s10, sp, t2
                  sltiu        s6, t2, 1279
                  lui          a0, 256128
                  mulhu        s4, s1, s1
                  and          ra, a6, s10
                  divu         t2, a3, s9
                  andi         s6, ra, -1148
                  rem          gp, s7, a1
                  remu         a1, s10, a3
                  mulhsu       s9, tp, tp
                  mulhu        a5, s8, a0
                  add          t2, a1, t1
                  srli         a7, s4, 1
                  xori         s1, s5, 625
                  rem          s7, t1, s5
                  slt          s3, ra, a4
                  nop
                  slt          s7, t5, s2
                  sub          a2, t2, sp
                  ori          a3, s3, -1701
                  andi         s6, a1, 1244
                  mulhu        ra, a3, t2
                  srli         s9, s5, 26
                  sub          s3, gp, t4
                  mul          tp, t3, a6
                  or           s6, t2, s4
                  div          a0, s6, s7
                  sub          t3, s9, gp
                  ori          t5, s8, -643
                  sltiu        t6, s10, 1280
                  xor          a6, a1, a7
                  nop
                  sltiu        t5, t1, 583
                  addi         t2, a6, 396
                  auipc        a1, 249540
                  slli         s11, t4, 11
                  sub          a0, a1, s4
                  divu         t6, s9, a1
                  sltu         gp, a0, t4
                  srl          t6, t5, tp
                  divu         a5, tp, s10
                  or           s5, s9, s9
                  addi         a5, t5, 33
                  mulhu        t6, a4, s8
                  xori         t2, sp, -675
                  mulhu        t4, a2, t2
                  nop
                  mulh         a3, s5, s2
                  srai         a6, zero, 29
                  mulhsu       t2, zero, s9
                  lui          a7, 393028
                  remu         s10, ra, t5
                  rem          t6, t1, s1
                  mulh         s1, t3, s1
                  mulh         a0, s9, s8
                  sltiu        t4, a7, -1857
                  slt          t4, s6, s0
                  srai         s11, a2, 31
                  div          gp, s6, s9
                  slt          t4, s1, a4
                  add          a2, a1, a3
                  lui          t6, 420436
                  ori          gp, tp, -331
                  sltiu        a6, t5, 322
                  div          t6, s0, t4
                  slti         s0, s7, -1935
                  sra          t3, s7, a1
                  mul          s4, s0, s10
                  or           t1, a3, s0
                  and          zero, t6, s7
                  mulhsu       s6, s5, t6
                  add          t1, s0, a5
                  andi         t6, s4, -1975
                  add          t3, a6, t3
                  mulh         s8, a4, a4
                  lui          t6, 986179
                  slti         t6, a3, -191
                  addi         zero, s1, 201
                  divu         a6, s8, a3
                  sltiu        s3, s7, -541
                  mulhsu       a2, a0, s9
                  remu         t3, t3, s4
                  lui          a7, 877337
                  slt          s10, a4, t0
                  mulhu        s11, gp, t6
                  nop
                  srai         s4, s1, 10
                  slt          gp, ra, t1
                  and          a3, a4, s1
                  slli         a3, a7, 23
                  xor          t2, a0, a4
                  ori          s5, t6, -466
                  div          a0, s4, s3
                  add          a0, a5, t5
                  mulhsu       t6, t4, a3
                  srl          s11, a0, t3
                  srli         gp, a4, 21
                  sltu         tp, zero, s11
                  add          tp, s1, t0
                  mul          s0, a4, a1
                  sub          t5, sp, s9
                  mul          tp, a1, t6
                  xori         a2, s4, 436
                  auipc        zero, 204427
                  mulhu        s1, s6, s6
                  sra          s9, zero, tp
                  sltu         a7, t5, a5
                  rem          t6, s0, s11
                  nop
                  sltiu        s7, t2, 607
                  slti         t4, t2, -646
                  rem          a5, t0, t5
                  add          s0, t5, t0
                  divu         tp, sp, gp
                  addi         a5, s2, 1525
                  addi         s8, s3, 1228
                  sra          a6, zero, a6
                  srl          s8, a1, s2
                  xori         a6, t5, -1019
                  srai         s8, gp, 24
                  slti         s3, a7, 483
                  auipc        s6, 381331
                  xori         a1, t2, -166
                  xori         s4, t0, -1762
                  mulh         a0, t5, a4
                  add          ra, ra, s7
                  auipc        s5, 135503
                  and          a3, a4, a6
                  or           s9, a0, zero
                  add          gp, s4, ra
                  mulhu        s2, t4, sp
                  mul          zero, tp, s0
                  sll          s11, t6, a1
                  auipc        t1, 571464
                  lui          a5, 335718
                  lui          a7, 143562
                  sra          s2, a6, t5
                  lui          t5, 29202
                  auipc        s0, 467193
                  auipc        tp, 214343
                  addi         a0, t0, 945
                  slli         a0, ra, 19
                  mulhu        zero, t0, gp
                  xori         s10, a2, -659
                  nop
                  mul          s2, s1, t1
                  rem          s9, a6, a1
                  div          s3, s5, s5
                  slt          gp, a2, s7
                  lui          s10, 950059
                  srl          t5, t3, s5
                  sra          gp, t5, s4
                  slti         a7, a5, -1557
                  mulhsu       t2, t4, tp
                  xori         gp, t2, 2001
                  mulh         t4, a1, s8
                  div          a5, gp, t5
                  nop
                  ori          t1, t4, -1222
                  andi         s9, zero, -1055
                  slti         s4, a7, -1121
                  lui          a0, 215658
                  sll          gp, s4, t6
                  andi         s2, t3, -1886
                  mulh         s8, s9, t0
                  remu         s1, zero, a1
                  auipc        s11, 906726
                  remu         s8, t0, s9
                  xori         ra, s3, 738
                  srl          gp, s0, a3
                  xor          s8, a4, s5
                  sll          a7, ra, t2
                  sltu         tp, s10, a4
                  srai         a1, s5, 30
                  nop
                  nop
                  xor          s4, s11, s10
                  xori         s4, a3, 15
                  sltiu        s7, a6, 804
                  nop
                  nop
                  sra          s6, a5, a2
                  slti         s11, s5, 801
                  xor          t3, s0, gp
                  sltu         t5, s11, s2
                  slti         s6, s3, 1574
                  mulhsu       s0, a4, a5
                  add          s0, s9, a5
                  xori         s1, s10, -1864
                  remu         t3, a4, a0
                  sltiu        gp, s5, -1250
                  slt          t5, s0, a2
                  slti         s10, a1, 2022
                  rem          gp, a6, t3
                  auipc        gp, 192852
                  add          a1, t4, tp
                  slti         a3, s10, 2019
                  divu         s2, a5, s11
                  mulhu        a1, a2, s11
                  and          tp, t6, s9
                  slli         t3, a7, 13
                  add          a6, t4, t1
                  xor          a1, gp, s11
                  sra          s2, t5, t2
                  slti         s8, a5, -933
                  sltiu        zero, s6, 626
                  sltu         zero, s11, tp
                  srai         s1, a3, 18
                  slli         s8, s0, 22
                  add          a3, t0, t3
                  auipc        a0, 634944
                  lui          a1, 421687
                  mulhu        a2, t5, s5
                  slt          a2, s9, s4
                  sub          s10, a5, t6
                  mulh         a2, s9, a6
                  andi         t6, t4, -1815
                  add          a3, a2, s7
                  sltu         t2, a6, a2
                  sltiu        a5, s9, -2011
                  srai         tp, a0, 28
                  sll          t4, s0, a2
                  slli         a6, s5, 7
                  mulhsu       s10, s5, s4
                  rem          tp, ra, s1
                  srli         a6, t1, 6
                  sll          a0, s10, a7
                  andi         t3, s11, -344
                  slli         a0, a5, 29
                  srl          s1, s4, t5
                  mulh         a0, s2, a5
                  sltu         t2, a2, s7
                  srai         s0, s9, 23
                  slt          s5, s3, t6
                  or           s8, a0, s7
                  nop
                  divu         a7, s6, tp
                  addi         a5, a4, -545
                  addi         s0, s3, -1599
                  divu         a0, s11, a2
                  lui          t4, 532494
                  sltiu        s1, ra, 722
                  andi         s2, a7, 1487
                  sltiu        gp, t0, -861
                  xor          a0, a3, a3
                  divu         s6, s3, a0
                  lui          t5, 892468
                  slt          s7, a2, s1
                  addi         ra, s1, -836
                  auipc        t1, 660618
                  ori          a5, s10, 675
                  addi         a3, a1, -799
                  ori          t4, s1, -1926
                  srl          ra, s3, t2
                  mul          a2, s3, t6
                  sra          a1, a6, sp
                  divu         s5, s1, a3
                  srai         t2, a2, 30
                  lui          a1, 631440
                  mulh         t5, a7, t0
                  slli         s5, t5, 25
                  rem          t6, t1, a2
                  rem          a6, s10, s4
                  mulhsu       s6, gp, a7
                  or           a1, a5, s10
                  mul          a5, a2, s7
                  srl          s2, t0, t4
                  ori          s7, t0, 76
                  nop
                  remu         s3, a4, s0
                  sltu         a7, s10, s2
                  andi         s8, a1, 1638
                  slt          s8, s7, s5
                  sub          tp, t1, t1
                  srli         a0, zero, 16
                  divu         a7, s6, a5
                  ori          t4, a4, -842
                  mulhu        s0, t2, a4
                  srai         a1, s7, 18
                  divu         a2, a3, a3
                  mulh         a3, t1, a3
                  andi         a0, s2, -785
                  srli         s4, s5, 13
                  sub          s5, s6, t1
                  srl          s9, a3, a1
                  mulhsu       s10, gp, t3
                  andi         a0, a1, 356
                  sll          s3, s6, t1
                  lui          s4, 136910
                  auipc        t3, 20857
                  add          s0, t4, t5
                  ori          gp, s9, -19
                  div          s3, s6, a2
                  xor          t3, s2, a3
                  mulhu        t6, ra, s1
                  remu         a2, t5, t3
                  srai         s6, s2, 23
                  mulh         a3, s4, a0
                  sll          gp, t6, s0
                  srai         s11, a3, 15
                  xori         t4, a5, -711
                  or           a1, a5, s11
                  mulh         ra, a7, s2
                  srli         ra, t0, 2
                  rem          s9, s10, t2
                  auipc        gp, 411158
                  andi         s4, a6, 1479
                  addi         zero, a6, 790
                  mulh         t5, sp, gp
                  srl          s10, s1, t2
                  srli         ra, a6, 1
                  lui          s6, 919678
                  andi         a6, t0, -638
                  mul          gp, s2, a5
                  sltu         ra, s9, gp
                  sll          tp, t3, s2
                  srli         a3, a7, 27
                  sub          s11, zero, s9
                  nop
                  remu         tp, ra, a2
                  srli         s5, a5, 9
                  mul          s8, s0, s8
                  remu         s4, s11, ra
                  or           s3, a7, zero
                  andi         s9, a1, 1184
                  sltu         a5, s8, s10
                  srai         s9, s9, 10
                  srli         zero, t0, 9
                  sll          s9, s4, t1
                  xor          t5, s8, s8
                  rem          a3, s0, a1
                  slti         s3, t5, 815
                  sltu         s5, t4, s4
                  divu         s6, s10, a6
                  or           a2, a7, gp
                  sltu         gp, s11, s9
                  sub          s2, s8, s4
                  sltiu        t2, t5, -1065
                  remu         a7, s11, s3
                  lui          t4, 103480
                  mulh         a0, s5, gp
                  sub          t3, a3, a1
                  srl          t5, s7, s0
                  addi         ra, s11, 936
                  rem          t4, t4, s11
                  mulhu        tp, t2, t2
                  sub          t2, s5, t3
                  ori          ra, s11, 623
                  add          s7, s11, a0
                  mulhsu       s5, ra, a4
                  addi         s11, t1, -1499
                  xor          s2, a0, s7
                  srl          a6, t0, a0
                  and          t1, s7, s7
                  div          t2, t1, a0
                  srli         a7, s4, 11
                  sll          zero, s11, s9
                  andi         s6, s0, 1150
                  rem          s11, a7, ra
                  sub          gp, s7, a2
                  srai         t1, a4, 21
                  addi         gp, t0, 1314
                  sltu         s0, t1, a2
                  and          ra, a7, s3
                  slti         t6, a2, 1755
                  mulhu        s5, a7, s1
                  nop
                  srai         a2, ra, 20
                  srai         a3, t6, 20
                  sub          s8, s6, s10
                  srl          s1, a7, t1
                  or           s8, a3, ra
                  slt          t5, t0, a1
                  mulhsu       zero, t5, s2
                  rem          a3, sp, s6
                  slt          gp, a2, s11
                  sltiu        s10, s5, 1074
                  ori          s11, a2, -1404
                  xori         zero, a6, -1347
                  sra          t5, t1, t2
                  and          s7, s7, ra
                  remu         a5, a1, t2
                  slt          s3, a3, sp
                  ori          a3, t5, -1257
                  srli         a0, a0, 16
                  and          gp, a2, s2
                  addi         a5, s3, 1019
                  rem          s0, s6, a5
                  sub          s0, a2, ra
                  mulhu        s1, a5, t2
                  sltiu        t1, ra, -1804
                  slt          s2, s1, t4
                  ori          s2, zero, -1722
                  or           gp, a4, ra
                  srli         a3, t5, 5
                  andi         t1, t1, 805
                  rem          s0, a1, zero
                  add          gp, t3, s5
                  sub          a5, s9, s0
                  xori         s11, t0, 32
                  rem          a5, t3, t4
                  div          s4, s9, t3
                  addi         zero, s8, -1237
                  mul          s4, t0, a2
                  xori         s0, a5, -974
                  slti         s2, a6, -429
                  and          a3, s4, t6
                  add          s1, a7, s4
                  div          s8, t5, a1
                  auipc        s4, 625456
                  add          a5, t0, zero
                  slti         s8, t1, 976
                  or           t1, sp, a0
                  auipc        s9, 213420
                  ori          t3, t0, -1821
                  remu         s4, a7, t0
                  remu         ra, gp, s2
                  slti         t3, a2, 1837
                  mul          t1, t1, s11
                  ori          s9, s0, -1486
                  nop
                  sll          s7, zero, a6
                  slti         t4, t6, 1161
                  rem          gp, s3, tp
                  mulhu        a2, t0, s6
                  addi         a7, s4, 1043
                  xor          t3, a5, t2
                  sltiu        tp, s7, 417
                  sltu         gp, s1, sp
                  and          s5, t2, a7
                  div          s0, a6, a7
                  srli         s9, s6, 31
                  add          tp, a5, t5
                  rem          gp, t6, s0
                  mulhu        s11, a2, s5
                  mulhsu       a3, a2, t0
                  nop
                  nop
                  srai         t2, t3, 14
                  xori         t1, t1, 1203
                  xori         t3, sp, -1760
                  slt          t6, a6, s7
                  ori          a0, a6, 1669
                  sra          t5, t3, a5
                  sltu         s8, sp, s1
                  sra          t4, a7, gp
                  slti         s7, s3, -190
                  sltu         s6, gp, t6
                  addi         t4, gp, 327
                  or           a6, t2, s6
                  sll          a3, s5, s3
                  and          s9, s11, t3
                  mulhsu       a5, t6, zero
                  divu         s9, t5, s2
                  mul          s0, s1, s8
                  divu         s0, a0, s1
                  andi         zero, gp, -1942
                  andi         s6, sp, 1291
                  mulhsu       s5, s0, t2
                  mulhu        s0, t6, s2
                  add          a1, t6, s10
                  srai         ra, gp, 17
                  slt          gp, t3, zero
                  auipc        t1, 351623
                  lui          t6, 874468
                  or           s11, zero, s1
                  ori          a1, a7, -96
                  or           s4, tp, a6
                  sra          s3, a2, s2
                  sltiu        tp, a0, -889
                  sra          t2, t3, s11
                  div          tp, a6, zero
                  slt          t5, t2, s9
                  andi         tp, a4, -870
                  and          t5, s0, t2
                  rem          s5, s5, s10
                  add          a2, a5, a3
                  sltu         a6, t5, s10
                  slti         s6, s4, -1638
                  lui          a3, 887138
                  andi         s1, s1, -1685
                  divu         s6, s0, s11
                  andi         s10, t4, -1430
                  xor          s10, tp, zero
                  auipc        a0, 201311
                  xor          t6, t2, a0
                  and          ra, a4, gp
                  lui          a7, 531949
                  and          t5, s5, s9
                  rem          a0, tp, s11
                  sra          s0, a1, tp
                  rem          a2, ra, s7
                  lui          s5, 352694
                  srli         s5, ra, 15
                  remu         a2, s0, t5
                  addi         s4, a7, -1533
                  xor          tp, sp, ra
                  sll          a6, t0, a2
                  and          s8, s11, t3
                  sltu         t3, ra, s1
                  ori          t1, s8, 1636
                  srai         s7, a3, 1
                  mulhu        zero, s2, sp
                  sll          s6, a5, t0
                  remu         a6, s3, s5
                  sltu         a0, a1, a3
                  xori         t4, s9, 869
                  srai         a6, a1, 29
                  mulhu        s8, t2, t4
                  auipc        ra, 567964
                  andi         s5, s3, -223
                  div          a2, a0, s10
                  mulhu        a7, sp, tp
                  divu         s10, zero, s1
                  srli         a6, s11, 7
                  sltiu        t6, t4, 213
                  auipc        a1, 311562
                  sltu         a5, gp, t6
                  xor          a3, t4, zero
                  mul          t1, t4, s5
                  ori          a7, s9, 717
                  srai         a1, t1, 14
                  div          gp, a1, a6
                  xor          tp, s3, ra
                  mul          a0, gp, sp
                  andi         s2, t6, -471
                  div          tp, s0, gp
                  xori         ra, s0, -1533
                  xor          ra, s3, t5
                  xor          s1, gp, tp
                  xor          t5, s2, s11
                  srl          s2, a1, t5
                  lui          s1, 208507
                  and          t1, t0, t3
                  divu         s5, s5, s9
                  srai         a1, t2, 2
                  add          a5, s6, t3
                  mulhsu       a0, a4, sp
                  or           a2, a0, sp
                  srli         a1, t5, 9
                  mulhsu       ra, t3, a0
                  srli         s7, t3, 19
                  mul          s10, tp, s8
                  divu         a2, t3, a6
                  srl          t1, a1, tp
                  mulh         a1, s6, s2
                  and          tp, ra, s11
                  and          s8, s6, a3
                  xori         t6, sp, 1273
                  rem          tp, tp, s1
                  andi         s7, t4, -1504
                  xori         s2, s3, 1049
                  addi         t5, a2, -1383
                  xori         t2, a6, 417
                  div          a1, s1, a0
                  divu         a3, s11, a6
                  nop
                  remu         s4, a1, s11
                  xor          a5, s2, a0
                  sra          s2, a7, t1
                  add          a5, a1, a3
                  andi         t3, a2, 603
                  div          zero, s5, t6
                  lui          t1, 276003
                  sltu         s7, s1, s1
                  slti         s4, s0, 1754
                  sub          s10, t1, s7
                  srl          a0, a6, a7
                  sltiu        a7, t6, 1836
                  divu         s4, t3, s5
                  addi         t3, gp, -1855
                  and          t5, ra, a0
                  mulhsu       tp, a5, t6
                  mulhu        a5, ra, ra
                  remu         s7, s10, s10
                  slti         t4, s8, -720
                  add          tp, s4, s2
                  mulh         s10, t5, s7
                  srai         a3, t5, 14
                  srai         t1, a5, 26
                  andi         t2, zero, 936
                  mulh         a6, s5, t0
                  sub          s11, s9, s10
                  addi         a5, s3, -526
                  slti         s1, s5, 1576
                  remu         a5, s11, s0
                  sra          s2, s10, tp
                  xori         gp, a0, 415
                  mulhsu       s1, sp, t4
                  sll          t3, s11, s5
                  slli         a6, tp, 23
                  rem          s4, t3, zero
                  sll          a1, ra, s9
                  slli         s11, s8, 20
                  xor          s1, t2, s6
                  mul          a0, s5, zero
                  auipc        t2, 455095
                  remu         t3, t6, a5
                  xor          s7, t6, s0
                  remu         s0, s6, t1
                  and          s3, t3, s11
                  addi         zero, s9, -1229
                  xor          s1, sp, t2
                  nop
                  lui          a6, 46207
                  addi         a5, s5, 891
                  xor          a6, a1, s9
                  srai         s4, t4, 1
                  mulhu        ra, ra, a6
                  andi         s2, tp, 476
                  slti         s11, t4, 1310
                  sll          t6, a5, s3
                  addi         a6, a6, -1002
                  slti         zero, s7, 870
                  srai         t3, t4, 4
                  mul          t1, a3, s8
                  sltu         s3, a1, s0
                  lui          t4, 929196
                  slti         t5, s4, 880
                  mulhsu       s0, zero, gp
                  lui          t1, 551400
                  andi         s2, s4, 732
                  div          a1, a1, t0
                  div          s8, t6, s11
                  mulh         a3, t2, s6
                  slti         a5, s3, 1353
                  srai         s9, a7, 5
                  mul          t6, s3, t4
                  addi         a0, a6, -202
                  sll          t6, t1, s8
                  remu         s2, t4, s4
                  add          t3, a4, zero
                  ori          s7, ra, 752
                  auipc        a1, 460466
                  mulhsu       s9, s2, t0
                  div          s3, a2, s2
                  sltiu        s6, sp, 576
                  srl          s2, s10, s2
                  xor          t1, tp, t1
                  add          t5, a2, a5
                  xor          t5, s4, t2
                  sltu         t5, t1, sp
                  add          t5, s5, sp
                  sub          s9, t1, a2
                  sub          t6, a2, a4
                  slli         a3, sp, 2
                  nop
                  slti         s6, a5, -1178
                  sub          s7, s9, t1
                  srl          a1, zero, s11
                  ori          a1, a4, -930
                  divu         s6, s3, s0
                  divu         t1, s9, s9
                  sra          s0, t5, s1
                  andi         tp, zero, -970
                  lui          t4, 84722
                  add          t6, t5, a3
                  add          s8, t0, s10
                  divu         s11, t1, a6
                  xor          t1, a5, zero
                  remu         s1, t4, sp
                  slli         t3, s10, 2
                  addi         t1, s10, -70
                  nop
                  add          a1, ra, s0
                  sll          zero, t1, t6
                  sltu         s4, a6, t3
                  slti         t5, s2, -1379
                  sll          a5, t0, t3
                  nop
                  lui          s5, 135683
                  mulhu        a7, t2, a5
                  slt          a2, s5, s8
                  remu         a3, ra, gp
                  srli         a6, s11, 13
                  slti         a5, t5, 1140
                  or           tp, s1, t2
                  srai         t1, s6, 20
                  slli         t1, t6, 10
                  nop
                  slt          s1, sp, s10
                  mulhu        s4, s9, s4
                  srai         t4, s10, 4
                  auipc        a7, 837366
                  add          s5, a0, t4
                  xori         t3, s9, -156
                  div          a5, t1, a1
                  remu         tp, s3, t4
                  srli         gp, a7, 20
                  xor          s3, t3, gp
                  sll          a7, t1, t0
                  or           tp, sp, sp
                  ori          s6, s9, -1241
                  slt          t5, s0, s4
                  add          a1, tp, s11
                  auipc        t6, 855928
                  auipc        t5, 526684
                  mulhu        a2, gp, sp
                  mulh         s2, s6, t1
                  mul          a2, tp, t5
                  xor          tp, tp, ra
                  slt          tp, s11, a1
                  rem          s11, a2, s4
                  andi         s1, sp, 309
                  xor          ra, t3, a7
                  mulh         s11, a1, s9
                  div          t1, a7, a0
                  srli         s9, s8, 26
                  ori          tp, t3, -1670
                  slt          s2, a2, s6
                  sltiu        tp, s2, 1484
                  remu         a2, s5, s1
                  andi         s2, t2, -1038
                  slt          a1, t3, s10
                  slt          s5, s6, t1
                  slt          s11, a2, tp
                  xori         t5, s10, -180
                  mulhu        tp, t0, s2
                  srl          s8, t4, a3
                  ori          t5, s3, -408
                  srl          t6, s8, s5
                  sltu         s10, a0, s0
                  addi         gp, gp, -204
                  andi         tp, t3, 1287
                  mulhu        t4, s4, a2
                  addi         t5, zero, -776
                  srl          zero, s7, a3
                  addi         a7, tp, -1411
                  sub          gp, ra, s10
                  andi         s3, t6, -2017
                  sra          a2, s4, a3
                  srl          ra, a2, ra
                  slti         s2, s9, -1939
                  srai         a6, t5, 24
                  sll          a0, a5, s7
                  mulhsu       tp, a4, s3
                  div          s8, t1, s4
                  mulhsu       s5, s3, s3
                  slt          s0, a5, a1
                  divu         a0, t3, s7
                  remu         s7, s4, t1
                  add          s5, a7, t5
                  sub          t5, s9, s7
                  add          s1, a0, s5
                  sll          gp, sp, s11
                  slt          a6, a1, a1
                  sra          a0, s9, sp
                  and          s2, t3, t3
                  addi         a5, s11, 1809
                  and          t3, a1, t1
                  srl          a1, t3, a6
                  mulhsu       t1, s9, a1
                  and          s11, a2, s6
                  srli         a3, s3, 31
                  sra          s4, s9, t4
                  addi         s7, a5, -484
                  div          a7, sp, s11
                  rem          s6, t3, s2
                  mulhsu       a1, t3, s0
                  addi         a7, t3, 651
                  and          a5, s3, s2
                  slti         s10, a3, 1265
                  add          t1, t6, s0
                  andi         a0, tp, 1719
                  and          t3, zero, s0
                  andi         t4, t2, 664
                  remu         s5, a6, s8
                  srai         t2, a0, 1
                  nop
                  srl          s4, s1, t6
                  divu         a0, a0, sp
                  addi         a7, a6, 558
                  xori         t3, s8, 1225
                  sub          a0, a6, s4
                  nop
                  auipc        t5, 653681
                  sltiu        tp, t0, -188
                  addi         t4, s6, -1511
                  rem          a1, t6, a1
                  mulhsu       a0, s4, s1
                  div          t6, s7, s6
                  sub          s0, s9, s4
                  mulhsu       t5, a1, a5
                  xori         t1, t3, 885
                  lui          t2, 386506
                  ori          a1, s9, 913
                  mulhu        s4, s11, s11
                  nop
                  sra          s10, s0, ra
                  slti         s1, t6, 1220
                  mulh         s10, s9, t5
                  sltu         zero, s5, gp
                  add          t5, s4, s11
                  sltiu        a2, s0, -311
                  or           s0, t5, s0
                  and          s1, s10, s5
                  xori         t1, s1, -1045
                  divu         zero, sp, t1
                  srl          t5, a4, t2
                  or           s2, t1, s4
                  sra          s8, s11, zero
                  div          a3, s2, s6
                  and          ra, s1, a1
                  rem          t2, t0, zero
                  and          t1, a7, t3
                  auipc        s9, 753841
                  andi         a6, t5, 1593
                  slli         s5, a4, 9
                  srai         a0, t3, 6
                  add          t6, a0, s1
                  srai         s11, a6, 7
                  slli         s5, t0, 27
                  and          s6, s6, s1
                  xori         t2, s5, 1109
                  and          a7, s9, s4
                  mulhu        t5, a1, a1
                  ori          tp, tp, 112
                  sll          s9, s5, t1
                  slti         s10, s8, 1199
                  auipc        a2, 198402
                  add          t2, tp, t5
                  remu         s6, sp, t3
                  divu         a2, t0, s10
                  slti         a7, a3, 1226
                  srl          t3, gp, s10
                  lui          t2, 57308
                  sltu         s11, s4, ra
                  and          zero, t4, t5
                  sll          s11, a7, gp
                  sltu         a6, t0, s2
                  rem          t2, t0, a3
                  ori          t1, t3, -931
                  add          s5, s6, a4
                  andi         a2, t4, -51
                  slli         a5, s2, 31
                  sra          a7, ra, t5
                  ori          t6, s6, -1403
                  xori         s2, s5, 20
                  sra          s3, t6, s1
                  slt          s11, s2, a4
                  lui          t4, 10113
                  slt          a0, ra, t1
                  slti         s8, a4, 1946
                  sra          a1, t4, a7
                  div          s1, s2, s1
                  ori          a2, s2, 1890
                  auipc        gp, 965559
                  remu         a5, a6, a1
                  rem          a1, ra, zero
                  divu         a3, zero, gp
                  xori         a3, a0, 1226
                  sra          tp, s0, t1
                  xori         s10, s5, -473
                  xori         s11, s11, 95
                  or           a0, s2, s10
                  sub          ra, a7, a4
                  divu         s10, t1, a1
                  addi         a0, a4, 1208
                  xori         a6, zero, 920
                  xor          s5, s7, t0
                  andi         a1, tp, 2032
                  xori         t1, t1, 1049
                  srai         a2, a1, 6
                  mulhsu       s10, s4, t2
                  auipc        s4, 30371
                  mulhsu       t1, a4, ra
                  divu         s6, s6, t1
                  xor          s1, a1, a0
                  nop
                  add          s1, s11, s0
                  andi         tp, t4, 113
                  srl          a3, a0, s9
                  sltiu        gp, sp, 1091
                  addi         a2, sp, -45
                  addi         t4, s11, -442
                  sltu         s10, s7, t4
                  add          s7, s3, zero
                  srl          t1, t2, t5
                  slli         a6, a2, 31
                  slti         t5, s7, -516
                  add          s3, a3, a2
                  sltiu        s6, t6, 2031
                  and          t1, s2, s5
                  sltiu        s0, a3, -57
                  rem          a3, a7, t3
                  and          s1, s7, s5
                  addi         s1, t0, -512
                  addi         t1, gp, 1377
                  slli         s1, s0, 12
                  or           gp, s2, t2
                  mulhu        t3, s7, a4
                  and          s8, t1, s9
                  nop
                  srli         t1, s10, 21
                  slt          s4, t1, t1
                  mulhu        s2, t6, s3
                  xor          s0, a4, a6
                  mulhu        zero, a2, s6
                  div          ra, s4, t2
                  ori          t2, t3, 1541
                  srl          t6, a3, a5
                  srli         s3, gp, 26
                  nop
                  andi         a7, s1, -596
                  srai         a7, tp, 7
                  sub          a5, s2, a6
                  add          zero, s9, s11
                  sll          a7, t2, s10
                  mul          s3, s3, s0
                  slti         s9, a4, 1385
                  andi         tp, t0, 1754
                  sltiu        s10, s4, -1799
                  auipc        s2, 707654
                  add          a5, ra, t4
                  add          t2, a2, s7
                  mul          t5, s7, a1
                  srl          s4, t1, s1
                  rem          a1, t4, a1
                  lui          t6, 779434
                  or           a3, s11, t0
                  rem          gp, gp, t4
                  addi         s11, ra, 2025
                  divu         t2, s10, s9
                  slti         gp, sp, -1487
                  sltu         ra, s7, a0
                  mulh         a6, t5, a4
                  add          s8, t5, a1
                  sltu         s8, s11, s0
                  lui          t4, 702308
                  divu         s5, s6, s1
                  div          s10, s5, s0
                  srl          s5, t6, s0
                  andi         s10, t4, 610
                  xori         s7, a0, 1412
                  divu         a5, a0, t1
                  sub          t3, a2, s5
                  mulh         t5, s6, a7
                  sub          s3, t6, t0
                  mulhu        s0, t6, s8
                  srl          s7, a6, s5
                  rem          t3, ra, sp
                  add          a3, zero, a1
                  mul          a6, a7, a6
                  mulh         s9, a7, tp
                  sll          t1, t4, a5
                  srl          s6, s1, s2
                  sltu         gp, s5, sp
                  nop
                  sub          t2, s9, a6
                  ori          t2, t5, 36
                  lui          s10, 355961
                  lui          s2, 947502
                  auipc        t2, 812312
                  auipc        a5, 676634
                  remu         a0, s11, t2
                  mul          a6, s4, t6
                  mulhsu       s9, a7, t6
                  slli         a1, s10, 1
                  srli         t1, tp, 21
                  mulhu        t6, s8, s6
                  srl          t2, s3, a7
                  or           a5, sp, s5
                  div          s8, s7, s2
                  auipc        s2, 649195
                  srai         t4, s11, 25
                  slt          s9, s0, t6
                  sltu         s3, s5, tp
                  mulhu        a5, t3, s2
                  or           t6, s4, s11
                  sltiu        t5, s3, -1057
                  rem          a3, s11, t0
                  srl          s7, a3, t3
                  sltu         t2, a0, s11
                  sra          t5, t1, a2
                  srai         tp, a0, 15
                  sub          t5, t2, tp
                  sra          s2, tp, a4
                  xor          s7, t5, sp
                  xori         s7, s1, 566
                  srl          ra, ra, s9
                  sltu         zero, a0, s7
                  srli         a7, a3, 20
                  ori          t5, zero, -1118
                  srai         gp, s11, 21
                  sra          zero, s8, t4
                  sltiu        s3, s11, 1171
                  div          a6, s11, s4
                  addi         s6, s0, 1571
                  div          t5, s0, a4
                  sll          a2, a7, s4
                  mul          s10, t5, a7
                  lui          s6, 956298
                  mul          s2, a7, s2
                  mulhu        s7, t5, s7
                  auipc        t1, 221411
                  div          s3, t1, t6
                  auipc        s7, 722169
                  slt          a1, s10, t4
                  sll          a0, s8, s7
                  mul          s6, s8, t4
                  slt          s6, s11, t0
                  slt          s4, t4, a7
                  sltiu        s11, s11, -1491
                  mul          a3, s2, gp
                  srai         s5, s2, 15
                  or           s5, zero, a6
                  sll          s11, a7, zero
                  auipc        t6, 537229
                  xor          s9, ra, a0
                  sltu         s4, s1, sp
                  srai         s1, s6, 30
                  sra          a0, s2, a2
                  mulh         tp, t5, t1
                  lui          tp, 219492
                  sra          t4, s11, s5
                  srli         t4, s8, 18
                  add          s1, ra, s1
                  remu         t4, t2, a2
                  mulhu        s3, t6, s11
                  slt          a3, s5, s8
                  andi         a1, s2, 1889
                  remu         t6, t2, s3
                  div          a3, t5, a0
                  or           s3, s9, zero
                  div          t1, t6, t5
                  mulhu        a7, s5, a7
                  sub          a2, s9, s7
                  sltiu        s5, a1, -224
                  slti         s5, t6, -1681
                  slt          s11, sp, s3
                  mulhu        t3, a2, s4
                  or           t4, a4, t1
                  sra          a1, s8, a3
                  mulhsu       zero, t6, s10
                  sltu         s0, a4, t0
                  remu         s5, s3, a4
                  rem          t5, a6, a2
                  nop
                  sll          a5, s4, t2
                  auipc        t5, 166962
                  div          s3, s2, ra
                  add          a6, s0, t2
                  sltiu        a1, zero, -1614
                  addi         s11, s7, -1327
                  andi         t4, t0, 1938
                  add          tp, a0, gp
                  sra          s4, a4, t0
                  addi         a2, sp, -1637
                  ori          ra, sp, 1496
                  remu         t4, s0, a7
                  mulhu        a5, t3, t0
                  mulhu        a2, t6, a5
                  remu         ra, a5, s3
                  sltiu        a5, t1, -1613
                  slli         s1, t6, 22
                  slli         t6, tp, 10
                  divu         a0, s9, a1
                  auipc        a7, 127278
                  srl          a2, s3, a0
                  xor          a3, s11, s5
                  remu         s11, s8, t6
                  nop
                  addi         s5, sp, 1635
                  slti         a0, s11, -729
                  nop
                  rem          zero, t2, a0
                  and          tp, a7, t6
                  xori         a3, a7, 1144
                  sra          s9, s4, zero
                  mul          a3, t1, ra
                  mulh         s10, s3, s8
                  divu         s5, zero, a4
                  srai         a1, a0, 6
                  auipc        tp, 605209
                  slti         a3, s0, 1631
                  xori         s7, sp, 621
                  andi         a7, s1, -1435
                  xori         t1, s7, -1984
                  and          a5, t6, t4
                  and          a2, t1, s8
                  andi         s1, s3, -759
                  srl          a2, s5, zero
                  sub          a2, s4, a3
                  andi         a3, t4, 1990
                  slli         a3, s10, 18
                  mulhsu       s2, t2, s1
                  slti         a3, t4, 1225
                  nop
                  srai         a0, a7, 0
                  mulhu        s0, zero, t3
                  auipc        t4, 1047590
                  sub          t5, a2, s10
                  auipc        s5, 779922
                  divu         t5, a5, a0
                  sll          s4, s0, gp
                  mulhsu       s2, t6, t1
                  andi         s7, zero, 312
                  mulhsu       s2, t4, a3
                  rem          s1, a5, t5
                  ori          s7, t4, 537
                  sll          t4, a6, s11
                  mulhu        s10, s9, s10
                  srli         a3, s6, 29
                  sll          t5, s7, ra
                  sub          t6, a4, s0
                  add          ra, s3, t2
                  sub          t1, t0, s6
                  srl          s4, s10, s6
                  xor          a5, s0, s8
                  mul          t5, sp, a7
                  andi         tp, t0, 193
                  or           t3, t0, a2
                  mul          a1, t3, t1
                  slli         t2, s7, 25
                  divu         tp, s2, s9
                  mulh         s10, a0, zero
                  nop
                  xor          a7, s0, s6
                  sra          a7, s9, gp
                  rem          s7, zero, s10
                  srli         s5, s3, 30
                  divu         s9, a4, s6
                  slt          t2, t1, s4
                  mul          a7, t6, gp
                  addi         gp, a3, -1691
                  add          t2, zero, s1
                  xori         t1, s3, 2034
                  auipc        zero, 349318
                  xori         s0, a2, -604
                  divu         s2, s7, zero
                  nop
                  mulh         t5, s7, s11
                  rem          s11, s9, a0
                  remu         s5, t5, a6
                  lui          zero, 1044935
                  andi         s3, s8, -1797
                  nop
                  mul          t6, t3, zero
                  xor          tp, a7, gp
                  mulhu        s2, t2, s4
                  ori          t1, t1, 604
                  addi         s0, t3, -255
                  srli         t6, a6, 26
                  addi         t2, ra, 1085
                  sll          t3, s5, a5
                  srai         s11, a6, 29
                  mulh         t2, s3, a1
                  sra          t3, t4, zero
                  ori          s11, ra, 1120
                  slt          a2, a7, s6
                  lui          s0, 767182
                  mulhu        s8, s10, s0
                  xori         t5, s8, -1653
                  addi         ra, a7, 1528
                  ori          s4, s0, -560
                  xori         s1, s10, 274
                  xori         zero, ra, -1585
                  slti         t4, t1, 1935
                  rem          s5, s9, a4
                  sra          t6, s5, a2
                  remu         s8, a3, t5
                  ori          t1, t1, 359
                  auipc        s0, 530606
                  divu         t6, t5, s9
                  nop
                  nop
                  auipc        a6, 606720
                  slti         s3, ra, -831
                  addi         a0, s9, 815
                  sltu         t1, t0, s10
                  sub          zero, t4, t0
                  nop
                  and          zero, zero, a3
                  xori         a5, t2, -423
                  nop
                  sll          a2, s1, t2
                  slti         a7, t4, -563
                  mul          t2, t2, a5
                  add          zero, a2, t0
                  mulhsu       a7, s11, s3
                  sll          gp, ra, t2
                  sltu         s0, t5, t1
                  slti         s5, sp, 184
                  slli         s1, a5, 9
                  mulhsu       s2, t6, t3
                  divu         s1, s1, a3
                  or           a5, a6, t6
                  xor          s0, tp, s11
                  andi         ra, a6, -750
                  addi         t2, a0, -1000
                  slti         t4, s3, 173
                  ori          s7, s0, 48
                  nop
                  srli         s2, s6, 20
                  sll          s8, sp, t2
                  lui          a5, 478567
                  andi         s5, a2, 2016
                  or           s6, s9, tp
                  srl          t1, t5, s8
                  andi         t4, a0, 699
                  addi         s10, a1, 1418
                  slt          s5, tp, t4
                  and          ra, t4, a1
                  ori          a6, a7, 795
                  mulh         s2, s11, t4
                  mulhsu       a7, a6, s6
                  xori         s9, sp, 1925
                  sll          gp, t3, s6
                  slli         t1, a4, 30
                  sltu         s8, s4, s8
                  slt          a5, s8, s10
                  nop
                  div          a7, s0, s3
                  auipc        tp, 403912
                  slti         s5, s11, 817
                  mul          a7, gp, sp
                  slli         tp, s2, 1
                  nop
                  mulhsu       gp, a4, sp
                  nop
                  mulhu        a3, a6, s1
                  add          gp, s6, tp
                  div          t4, ra, t5
                  sra          s6, gp, s5
                  add          s10, s7, s0
                  add          a1, a2, a2
                  rem          s2, tp, t3
                  mul          a3, sp, s2
                  sltu         t6, s3, sp
                  add          s8, a3, s1
                  xor          s2, s1, s2
                  auipc        zero, 210675
                  mulh         s1, a2, s5
                  remu         s10, a7, sp
                  mulhu        s9, s5, ra
                  mul          t6, zero, ra
                  div          s4, t6, sp
                  divu         a2, s4, s4
                  mulhu        s2, s4, ra
                  mulhu        s0, t1, a0
                  mul          a0, s0, sp
                  sltu         t1, gp, t5
                  remu         s7, s7, s9
                  sll          s0, a7, s9
                  sltiu        s5, t1, 1074
                  sra          zero, a5, a7
                  addi         t6, zero, 714
                  nop
                  addi         s1, s1, -764
                  rem          ra, s8, t3
                  lui          s2, 984984
                  srli         t6, a2, 30
                  srli         t1, a2, 26
                  srl          a0, t6, a7
                  xor          tp, s9, s11
                  xor          s5, s1, t4
                  mulhsu       t6, s11, a0
                  divu         s4, a6, sp
                  ori          s7, s1, 1062
                  mul          a3, s5, s11
                  divu         a0, a0, a6
                  sll          tp, t2, s0
                  andi         gp, sp, -1154
                  div          a6, t2, t0
                  srli         a5, s8, 7
                  rem          s9, s7, t5
                  sll          s8, a6, s0
                  ori          a0, s5, -467
                  rem          s8, s0, t2
                  mulhu        a0, t1, t3
                  mul          t3, t1, t6
                  addi         a1, zero, -1457
                  divu         a6, a3, s7
                  srli         t3, gp, 18
                  mulhu        s9, s6, t0
                  xori         s2, s1, 1566
                  add          a3, t6, s2
                  rem          gp, s8, a0
                  mul          a0, t6, gp
                  mulh         ra, t1, t5
                  div          s11, s4, tp
                  lui          ra, 656888
                  sltu         a3, t6, tp
                  mulhsu       t6, a3, t5
                  rem          t1, t0, s3
                  sltu         t2, tp, sp
                  andi         gp, s11, 575
                  remu         a5, t5, s7
                  srl          t4, s7, ra
                  mul          ra, a7, a1
                  mul          t6, t6, t6
                  mulhu        a0, t5, s7
                  divu         zero, s8, ra
                  div          s4, zero, s8
                  mul          s2, s5, t3
                  mulh         s4, sp, s9
                  slt          a0, ra, a3
                  add          s5, ra, t5
                  sltiu        s7, t5, -1081
                  xor          zero, t0, t3
                  sub          gp, sp, s3
                  slti         t4, tp, 1654
                  srai         a5, t0, 5
                  sra          t5, a7, t3
                  addi         t6, zero, 1611
                  div          s11, s10, ra
                  ori          a5, t5, 1523
                  srli         s2, a1, 8
                  slti         s1, s11, 259
                  sra          a6, a7, a6
                  rem          a5, t6, t0
                  sll          s6, s1, s3
                  sub          s9, a6, s6
                  mulhsu       a1, a1, t2
                  divu         s6, t1, t2
                  sltiu        a0, s7, -511
                  slt          a3, s1, a4
                  slli         s7, s7, 19
                  sltu         s7, ra, tp
                  mulh         s1, t5, t0
                  xor          ra, s7, s6
                  srai         tp, ra, 11
                  remu         a2, ra, a2
                  remu         a5, t3, a4
                  lui          a5, 289909
                  srl          s8, s7, a5
                  sltiu        t2, a6, -975
                  rem          tp, a2, a7
                  srl          s0, s5, t4
                  xor          t5, s6, s8
                  sub          s5, s11, s6
                  srai         s10, gp, 27
                  auipc        a3, 123701
                  slli         ra, s0, 18
                  srl          a1, s6, s8
                  addi         a0, s0, 1896
                  mulhu        s8, s10, t4
                  slti         t3, ra, -2021
                  add          a1, s0, s4
                  xor          s5, s11, sp
                  divu         t3, t0, a5
                  remu         a5, s6, ra
                  srai         s9, a3, 15
                  sra          t2, s6, s7
                  slti         t3, a3, 646
                  srli         t6, a5, 10
                  mul          s5, s5, t5
                  add          a2, a7, s7
                  sltu         a1, t1, s7
                  ori          s3, s0, -418
                  srai         gp, t6, 23
                  srai         s6, t3, 31
                  or           s0, t5, a7
                  xori         t6, sp, -1514
                  or           t5, s1, s7
                  nop
                  remu         s4, a4, gp
                  sltiu        zero, a6, 580
                  srl          s1, t6, t2
                  srli         gp, sp, 0
                  ori          a7, zero, -1696
                  lui          s6, 273742
                  addi         a3, s9, 610
                  xori         gp, t3, -1517
                  mulhu        s6, sp, t1
                  ori          a0, s4, -2002
                  remu         s6, s8, t1
                  nop
                  xori         s0, sp, 1568
                  divu         s0, t6, s9
                  auipc        s5, 464079
                  sll          s0, a6, sp
                  mul          a3, a0, s3
                  slti         a5, t2, -2008
                  or           s7, t2, t1
                  srl          s9, a5, gp
                  mulhsu       t2, tp, s1
                  sltiu        s2, gp, -1186
                  rem          s5, t5, gp
                  sub          s4, s11, s1
                  slli         t2, a6, 15
                  ori          tp, s3, 510
                  ori          s5, t0, -1967
                  slti         t1, s7, 1619
                  nop
                  divu         a6, s1, t3
                  div          a0, sp, zero
                  sll          s3, a4, s10
                  sltiu        s6, a1, 1262
                  slt          t3, t6, s3
                  sltiu        s8, gp, 1741
                  sra          s9, sp, a4
                  auipc        gp, 927646
                  and          t3, t2, a2
                  mulhu        s2, a7, s5
                  ori          s8, ra, -624
                  slti         a2, s6, 1939
                  sll          s1, s2, t0
                  add          s7, t2, a4
                  mulh         t4, s10, tp
                  nop
                  ori          a3, a7, -1379
                  lui          s4, 404068
                  sll          a0, t3, a7
                  sra          a0, a0, t1
                  sll          ra, s9, a4
                  xori         s11, s7, 353
                  div          t2, t2, gp
                  sll          s1, s1, tp
                  srl          ra, ra, gp
                  rem          t6, s6, t0
                  xor          s2, t6, a1
                  add          a0, t1, s2
                  auipc        s6, 1016794
                  rem          s5, s2, s3
                  srli         a7, s1, 20
                  slt          t1, ra, a3
                  andi         s7, s4, 238
                  mulhu        s11, a3, zero
                  srli         t1, s5, 9
                  divu         s1, t0, gp
                  sub          a1, s4, s2
                  srl          gp, t2, tp
                  mulhsu       a7, t4, s5
                  lui          a0, 210987
                  add          a7, zero, s4
                  rem          a5, t3, gp
                  xori         t2, a3, 248
                  auipc        a7, 551761
                  auipc        s0, 135887
                  auipc        a5, 958936
                  auipc        ra, 1039036
                  sll          s11, tp, s4
                  or           ra, t2, gp
                  mulh         a7, a2, s3
                  sll          a7, s4, gp
                  div          a0, s5, a2
                  slti         t1, s8, 215
                  slti         s1, s8, 104
                  lui          t4, 226304
                  auipc        a1, 215195
                  srli         a1, a2, 4
                  lui          a1, 673544
                  nop
                  mul          t5, s9, s8
                  nop
                  remu         zero, sp, sp
                  lui          s11, 934839
                  div          s4, sp, t3
                  sltu         t2, t5, s4
                  sra          gp, sp, a6
                  srl          a2, s9, t6
                  srl          t4, tp, s3
                  sll          a6, s0, s2
                  sll          a6, a4, a7
                  srl          zero, s3, s2
                  sub          a6, a1, ra
                  slli         s0, s9, 4
                  slt          a2, s3, t0
                  and          s5, t4, s10
                  slti         s9, s5, -206
                  ori          a0, t5, -350
                  srli         t1, t0, 25
                  sll          zero, s9, a0
                  slli         a6, a3, 24
                  ori          t5, a4, -437
                  nop
                  srl          s2, s8, ra
                  divu         s11, t1, a3
                  mul          t4, s3, s9
                  add          ra, t3, a6
                  ori          zero, s10, 1752
                  mulhu        t1, zero, s3
                  slti         t5, t6, -240
                  xor          t4, a6, t4
                  sra          a3, t5, a2
                  sll          gp, t0, a1
                  sra          s7, a3, t3
                  nop
                  mulh         a1, s1, t4
                  and          s1, s3, s2
                  and          gp, a4, t0
                  addi         t2, t3, 229
                  add          t4, a0, s5
                  sltiu        a0, a4, -1858
                  add          gp, s4, a4
                  xor          a2, t2, t0
                  srai         a5, s7, 13
                  rem          t4, s2, a2
                  mulhsu       s11, a2, t6
                  divu         a7, t5, zero
                  lui          s9, 14328
                  auipc        t2, 3130
                  and          a6, t6, sp
                  divu         gp, a6, a1
                  sltiu        a1, s10, -317
                  sra          s6, t3, t2
                  srli         s9, a6, 10
                  xor          a0, t2, s8
                  lui          a3, 375863
                  slt          t3, s4, t0
                  mulhsu       s1, s3, s3
                  divu         a0, tp, a5
                  slti         a7, s8, -1288
                  sub          a7, a2, s1
                  slli         zero, a2, 19
                  addi         a0, s2, -1955
                  rem          t4, ra, s9
                  remu         ra, a3, t4
                  sltiu        a0, a2, 1622
                  slli         t3, a0, 7
                  sra          s4, a5, a7
                  slt          s1, a2, a5
                  add          a3, t5, s7
                  and          t3, a6, t6
                  and          s4, a2, s1
                  or           a7, t1, s7
                  lui          a0, 533929
                  nop
                  sltiu        t2, s1, 131
                  remu         a6, a7, tp
                  slti         a3, t3, 1691
                  sll          a3, t3, gp
                  slti         s2, s8, 1343
                  sll          a0, t2, sp
                  auipc        a0, 738607
                  andi         s6, s6, -1127
                  rem          gp, a2, t2
                  remu         t6, s3, s7
                  srli         s11, s7, 0
                  remu         s9, a3, gp
                  andi         t5, t2, 632
                  addi         s9, t3, 309
                  slti         zero, a6, -159
                  andi         s0, t6, 2016
                  remu         s7, a0, zero
                  sltu         t2, tp, a2
                  mulhsu       s11, zero, t2
                  auipc        s2, 404706
                  or           a0, s3, a2
                  sltu         a7, s0, s8
                  mulhsu       s0, t1, s1
                  sll          t3, a6, t5
                  srli         a0, s8, 3
                  add          a0, a3, t1
                  slt          tp, sp, gp
                  lui          s9, 936663
                  ori          s6, s9, 287
                  add          tp, s6, a3
                  or           s7, s8, s9
                  remu         s10, s9, a6
                  srl          gp, a5, s8
                  remu         a0, t6, gp
                  mulh         t4, s5, s5
                  sra          s1, a0, s7
                  nop
                  remu         s9, s11, s9
                  ori          t3, gp, 957
                  mul          s6, a3, a7
                  slt          a7, a7, t3
                  auipc        s6, 81706
                  remu         ra, ra, s4
                  andi         zero, t5, 1952
                  nop
                  auipc        a2, 1038285
                  div          ra, tp, t2
                  mul          a2, zero, a3
                  sltu         s5, a1, t0
                  lui          s0, 653000
                  or           s4, a7, s0
                  xor          t1, a4, s1
                  srai         t2, sp, 0
                  nop
                  div          a1, s11, t6
                  slti         s4, s4, 1023
                  sra          s0, s7, t1
                  mulhu        a1, a4, s9
                  srli         a2, ra, 22
                  mulhu        ra, a5, a2
                  sub          s9, t4, s1
                  and          a0, a3, s6
                  slt          a0, a3, gp
                  slli         a5, gp, 29
                  andi         gp, s0, -513
                  sltiu        t5, s10, -413
                  remu         a5, t3, s11
                  srai         gp, s2, 17
                  slt          a5, gp, ra
                  addi         gp, t5, -900
                  add          s10, s1, a6
                  mul          a1, s1, a6
                  slti         s11, s10, 1887
                  xori         s0, s4, 804
                  ori          s5, s5, 1500
                  div          s9, s4, s1
                  ori          s8, s3, -8
                  slti         a5, t4, -526
                  srli         t1, s4, 17
                  slli         t2, s3, 12
                  and          s6, a4, a0
                  mul          s2, a6, zero
                  srai         s5, s8, 6
                  xori         a6, t2, 1931
                  or           t1, a0, s9
                  andi         t1, a6, 1459
                  sra          s0, s7, ra
                  or           t6, s4, s7
                  rem          t6, s8, t6
                  addi         a0, t4, -2026
                  xori         t3, s0, 1913
                  lui          t2, 362959
                  xori         s7, a2, 283
                  xori         s3, s8, -424
                  srl          ra, s2, a3
                  add          s3, tp, a3
                  divu         s0, t2, tp
                  sltiu        t2, a4, -1307
                  or           s5, t4, s4
                  mulhu        s9, s8, t5
                  div          s6, t4, a1
                  mul          s11, s10, a3
                  ori          t5, s8, -1362
                  mulh         a6, sp, s6
                  srli         t3, s7, 0
                  slli         s9, s4, 15
                  mulhsu       a6, a0, a6
                  sltiu        t4, tp, -946
                  add          t3, tp, a5
                  or           s2, s11, t2
                  sra          s2, a1, s3
                  div          a0, a2, s5
                  mulh         a3, s3, gp
                  addi         t3, gp, 1736
                  mulhu        a3, a1, s3
                  xor          s1, a6, s4
                  srai         s4, ra, 17
                  ori          t1, t1, -60
                  mulh         zero, s2, s8
                  mulh         s8, s6, t6
                  slti         t6, s7, -1124
                  nop
                  slti         a3, t0, -1074
                  srai         s6, s4, 4
                  mulh         t6, ra, a5
                  andi         s5, t5, 842
                  srli         a1, s3, 15
                  divu         a5, sp, s7
                  remu         ra, a6, s0
                  mul          s1, a0, a1
                  srai         s2, t6, 31
                  sra          a7, a7, s6
                  remu         zero, gp, s8
                  mul          t2, s0, a3
                  rem          a5, a1, s10
                  lui          t4, 577073
                  addi         s6, s8, -32
                  srl          t3, s7, s2
                  xori         s7, s3, 1932
                  srl          ra, s0, s10
                  mulhu        s4, s10, a1
                  slti         s5, a3, -1111
                  and          a0, s6, t2
                  mulhsu       ra, s7, tp
                  mulhu        a1, tp, s6
                  mul          t6, ra, s4
                  srli         a2, t5, 31
                  slli         a3, a0, 14
                  mulh         a7, sp, ra
                  mulhsu       a5, s8, tp
                  srl          a2, a2, t0
                  mulh         s10, t4, zero
                  or           s9, zero, a2
                  xori         s1, t3, 1660
                  div          a2, s6, s6
                  sll          a6, s10, s1
                  divu         t4, a2, s11
                  add          s10, tp, a5
                  auipc        s8, 345549
                  auipc        s11, 1002594
                  slti         s8, a1, -1685
                  mul          s11, a6, a2
                  sltiu        s5, t4, -1230
                  mulhu        t4, gp, s0
                  srai         s10, ra, 0
                  divu         s1, s6, a1
                  srli         s4, a3, 15
                  mul          a1, a0, s6
                  mul          s10, gp, zero
                  sltu         s3, t3, ra
                  rem          s3, t2, s9
                  nop
                  remu         a2, s3, t2
                  mulh         a3, tp, a0
                  sra          a3, s9, s11
                  mul          a0, a0, t5
                  mulhu        a6, s8, t6
                  sltiu        tp, s8, 1982
                  mul          t5, a2, s6
                  div          a7, a5, s5
                  sra          a2, a1, t0
                  slt          t3, a4, t3
                  sub          gp, t3, a0
                  lui          tp, 952278
                  auipc        a1, 6461
                  and          s0, s11, s5
                  mulhu        s11, ra, a3
                  lui          tp, 1025250
                  slli         gp, t0, 29
                  srl          s11, a6, s10
                  remu         s2, s10, a1
                  add          s0, a5, s10
                  remu         zero, t3, s5
                  sub          s5, tp, a4
                  srl          s0, a6, s10
                  add          a0, tp, s2
                  mul          a0, a0, a3
                  mulhu        t3, t5, sp
                  slt          tp, s4, a0
                  sll          a2, s9, t0
                  mul          s3, t6, s10
                  remu         s2, t5, t0
                  xor          a3, s1, t1
                  srl          t2, tp, s1
                  slt          s6, a5, s5
                  xori         s8, tp, 1159
                  srai         s6, s2, 9
                  mulh         a7, s8, s5
                  sll          t4, ra, s4
                  divu         t1, s7, t1
                  ori          s4, t0, 1452
                  nop
                  mulh         s0, a4, s7
                  remu         t5, s4, s2
                  slt          t2, t3, ra
                  xor          a3, t4, t5
                  mul          a2, a3, s2
                  xori         t5, a0, -1950
                  mul          t3, s0, s0
                  div          t2, a7, ra
                  sltiu        t6, s2, -1169
                  slti         s8, s11, 1958
                  add          a1, s2, a3
                  remu         a6, a3, s10
                  rem          s11, a7, a2
                  div          s0, s0, t1
                  add          s6, t5, s5
                  sra          a0, s6, s2
                  srai         s0, s4, 14
                  srli         t6, a5, 22
                  andi         tp, tp, 1608
                  div          ra, t0, s11
                  mulhsu       s8, s4, t3
                  xori         zero, zero, 1443
                  auipc        ra, 892147
                  andi         s7, a3, 1460
                  rem          s10, a7, t4
                  or           s1, t2, gp
                  sltiu        t6, s9, -1277
                  xori         a6, s1, -1566
                  sltu         s0, s9, a3
                  ori          t1, s0, -500
                  mulhsu       s2, a4, t5
                  div          t5, a0, ra
                  and          a1, s4, a5
                  or           s8, s1, t5
                  remu         a5, s5, zero
                  sltiu        a5, s11, 1937
                  div          t4, s7, a7
                  mulhu        a0, sp, a2
                  sll          s7, sp, s7
                  div          s3, a6, s10
                  srai         a2, s4, 8
                  srli         t5, ra, 13
                  mul          t5, t0, a7
                  srl          s6, a2, s10
                  add          t6, a3, s6
                  mulhu        tp, s9, gp
                  srli         a5, a4, 3
                  auipc        t5, 775017
                  add          t1, a4, s6
                  or           a3, a1, a4
                  slti         s0, gp, 319
                  srl          s2, t3, gp
                  xor          t1, s2, s0
                  or           a5, a5, s10
                  rem          a5, a1, a7
                  srl          s10, s8, s3
                  xori         a3, a7, -1554
                  rem          gp, tp, s5
                  nop
                  srl          s11, zero, zero
                  sll          a1, a3, tp
                  ori          t2, s10, 1955
                  srl          s10, t0, zero
                  div          s11, t2, s10
                  srai         a1, gp, 28
                  slt          s7, s6, s5
                  and          t4, s4, sp
                  xori         a2, s8, -1915
                  mulhsu       zero, s4, s2
                  andi         s8, a3, 550
                  nop
                  remu         s4, t5, s1
                  xor          s8, s3, t1
                  sll          a0, a7, ra
                  andi         a3, s9, 1097
                  addi         a3, gp, -59
                  mulhu        t1, a1, t1
                  slti         s8, t6, 1714
                  lui          tp, 70360
                  sltiu        s2, t0, -475
                  mulh         t2, a0, a1
                  or           gp, s0, a0
                  auipc        a6, 702079
                  slti         a1, a6, 495
                  srai         s10, s7, 11
                  xori         a6, s6, 233
                  rem          a1, s6, t0
                  and          s0, a6, sp
                  div          t4, s3, t6
                  div          gp, gp, a5
                  auipc        s11, 504623
                  sub          t3, a7, s2
                  rem          a6, s2, s11
                  and          tp, s9, s5
                  mulh         t3, t4, a4
                  divu         s3, s5, s10
                  or           s5, a5, s1
                  div          gp, t4, a0
                  lui          s8, 904356
                  ori          a7, s1, -742
                  lui          s7, 357611
                  div          s8, s7, s4
                  mulhu        gp, s10, sp
                  nop
                  mul          a6, s2, a2
                  slt          t6, t3, s0
                  srli         zero, t2, 8
                  mulhu        zero, a7, t2
                  nop
                  remu         s2, s0, s1
                  slt          t1, s5, s8
                  slti         s3, s1, -1084
                  slt          tp, t6, t0
                  lui          s1, 354110
                  addi         s2, a1, 953
                  add          s5, s5, a1
                  remu         a3, t3, t1
                  mul          s7, a5, s10
                  lui          s3, 194829
                  slli         t5, gp, 6
                  sltiu        ra, s9, 1920
                  slli         a7, a0, 5
                  div          t5, s4, t1
                  slti         s3, s3, -1885
                  slt          s5, t5, t6
                  mul          a5, a1, s1
                  remu         a5, zero, tp
                  mulh         s2, s7, s1
                  sltiu        s3, a7, -314
                  andi         tp, t1, 1912
                  nop
                  sra          s10, s0, s3
                  slt          a3, s5, sp
                  add          s11, a6, t0
                  lui          s8, 41081
                  sll          a1, s11, t4
                  xor          s11, a4, s8
                  sltiu        s7, tp, -571
                  div          zero, s11, a1
                  srl          s1, sp, s1
                  mul          a1, t4, s0
                  rem          tp, a5, t6
                  addi         a7, s0, 54
                  andi         t6, gp, -1340
                  sltu         s1, s9, s3
                  slt          s5, t1, s0
                  sll          s4, s1, a7
                  auipc        ra, 582065
                  xor          s10, gp, sp
                  divu         t3, a3, t2
                  xor          tp, s7, s11
                  slt          zero, s0, s4
                  srli         s11, a4, 2
                  sltu         a6, sp, s10
                  ori          a3, s10, 607
                  divu         tp, a1, a7
                  rem          s0, a4, s6
                  addi         a1, a0, -385
                  ori          s10, s8, 419
                  mulh         s2, t2, s5
                  sra          s4, t0, s0
                  divu         s2, s11, sp
                  add          s10, zero, gp
                  xori         s9, t4, 790
                  mulhu        s7, s3, t3
                  srli         s2, s4, 30
                  mul          t6, t5, a5
                  sltiu        t5, a1, 846
                  mulhu        t2, s10, t4
                  slt          t4, zero, a1
                  srai         a2, s7, 18
                  add          t2, s3, s8
                  auipc        a5, 723492
                  and          s11, s5, t0
                  sra          s9, sp, t1
                  and          t2, s11, a7
                  mulhsu       t2, a1, s5
                  srl          s11, t2, s11
                  sltu         s2, s8, t0
                  slli         gp, s8, 10
                  addi         s8, a3, 1952
                  srai         a2, a1, 18
                  srli         s10, s6, 17
                  lui          a5, 835353
                  slli         s11, a3, 18
                  divu         ra, ra, s8
                  sltu         zero, s0, s8
                  mul          s8, a7, s1
                  slti         s10, t6, -1643
                  remu         t2, a2, t6
                  and          s0, s6, a4
                  addi         s1, sp, 1605
                  srli         s9, s10, 1
                  and          s8, zero, t2
                  mulhu        t1, t5, t4
                  sll          a6, a7, s9
                  auipc        a6, 959518
                  sll          a6, s6, a6
                  sltiu        a2, t1, 1809
                  remu         s8, s8, s5
                  auipc        a5, 364395
                  add          s5, s6, gp
                  remu         s5, t1, t1
                  srl          s3, t2, a0
                  mulhu        a0, a6, s10
                  ori          s11, s11, 445
                  sll          s1, s3, t3
                  sltiu        a5, s9, -1783
                  srl          t3, a0, gp
                  sll          s8, a4, t1
                  sll          t2, a3, t2
                  add          a0, t5, s8
                  sra          s4, gp, t2
                  remu         t3, ra, s11
                  and          a2, s8, tp
                  auipc        s0, 1041661
                  andi         a6, s2, 1189
                  slti         s6, zero, 218
                  srai         s3, s6, 22
                  remu         t6, a4, t0
                  auipc        t3, 922329
                  slt          s2, a0, s7
                  lui          a7, 656873
                  xori         ra, s4, -782
                  sltiu        s3, t6, -1339
                  ori          s8, s0, 1893
                  sub          s1, gp, s5
                  mulhsu       s5, s8, a1
                  sltu         t3, t4, tp
                  xori         a6, a2, 221
                  sll          s0, s9, s10
                  xori         ra, sp, -1301
                  srli         s10, s7, 24
                  ori          a2, zero, 1973
                  srli         a3, sp, 30
                  auipc        a7, 561739
                  remu         t1, a4, zero
                  slt          t2, a6, s9
                  mul          a6, s3, sp
                  or           a1, s9, gp
                  srl          tp, ra, s6
                  auipc        t4, 624909
                  mulhu        s3, s2, t5
                  sltu         s8, a1, a7
                  slt          t4, gp, sp
                  andi         s2, a7, 1168
                  sub          s3, s1, a1
                  sll          t4, s3, s7
                  xori         t1, a7, -1397
                  srai         s7, s8, 30
                  srl          a0, s11, a2
                  sltiu        s10, t4, 1648
                  rem          zero, tp, s1
                  and          a3, s5, zero
                  ori          s1, t4, 376
                  sra          a7, t4, s6
                  sltiu        a7, a0, 218
                  sra          t4, s2, t5
                  rem          s6, ra, a0
                  slti         s3, s1, 1065
                  mul          s5, a5, a6
                  div          a3, tp, tp
                  or           s5, a7, s5
                  andi         a2, t2, -1704
                  slt          t2, s3, s4
                  remu         s2, zero, t6
                  sltu         s1, t4, s9
                  div          s4, t3, s5
                  divu         s10, s6, s2
                  or           t6, a3, zero
                  mulh         a0, zero, t6
                  rem          s7, a2, a0
                  slti         t5, a2, -749
                  xori         s1, s7, 1292
                  mulhu        s1, sp, s7
                  xor          zero, t2, t4
                  mulh         s10, sp, sp
                  srai         s6, s2, 9
                  xori         a0, s6, 1468
                  sll          zero, t3, s9
                  xori         tp, a0, -1105
                  remu         s8, s11, a2
                  sub          s11, t3, s9
                  slti         t2, a3, -1847
                  srai         t4, t4, 4
                  sltu         zero, zero, s8
                  divu         s6, a1, a7
                  mul          ra, a3, ra
                  add          s3, s10, s8
                  mul          a5, t0, t5
                  srl          t2, s5, a0
                  and          gp, t5, a1
                  sltiu        t1, a2, -1014
                  rem          a0, s4, s4
                  or           s1, s7, s7
                  xori         a0, gp, -755
                  divu         s3, s9, s8
                  add          t5, s4, s5
                  mul          s11, t3, t6
                  sra          s5, tp, s7
                  slti         ra, s5, -1139
                  xor          a1, t5, a6
                  srli         t1, a2, 2
                  add          s6, t1, a6
                  or           a3, a6, tp
                  lui          t4, 889910
                  sltiu        t3, a7, 794
                  srai         t4, t6, 30
                  divu         a2, a3, t4
                  slt          s2, tp, s11
                  srl          a5, s8, t6
                  slt          t3, t0, tp
                  add          s6, s1, t1
                  remu         a5, s4, s1
                  auipc        t2, 530057
                  auipc        a2, 362286
                  lui          a3, 377092
                  sll          a7, ra, tp
                  ori          s3, s9, 2027
                  srli         s10, a2, 28
                  sub          s1, a6, a6
                  mulhsu       s1, s3, gp
                  or           t1, t2, t6
                  divu         ra, a6, s1
                  div          s4, s7, s4
                  sltu         gp, gp, s11
                  rem          zero, s4, a3
                  andi         a0, a6, 417
                  auipc        s3, 172370
                  sltiu        s3, s2, -1695
                  divu         t3, s0, t2
                  srl          a2, a7, t6
                  andi         t1, zero, 470
                  ori          a1, s10, 1708
                  sra          tp, s3, ra
                  xori         t5, sp, 648
                  mul          a0, t0, t5
                  ori          s0, ra, 1830
                  nop
                  sra          tp, s4, tp
                  rem          t5, s1, s0
                  mulhsu       s7, a1, a1
                  mulhsu       a6, t5, s5
                  remu         t1, s0, zero
                  xor          s2, s10, s10
                  mulh         s11, s6, s6
                  or           s1, s10, a0
                  and          a3, s6, s4
                  sub          a6, s10, t5
                  and          gp, s7, a6
                  sub          ra, a0, s3
                  addi         t5, t3, 964
                  lui          zero, 1014040
                  mulh         a1, t2, a2
                  srli         a3, s11, 26
                  sltu         tp, s9, a5
                  slt          a1, a4, t6
                  addi         t4, s1, -548
                  div          a5, a4, s7
                  andi         zero, s5, -1941
                  div          s4, gp, sp
                  srl          a0, t5, s0
                  nop
                  add          a1, a1, s4
                  sltu         tp, s7, t1
                  remu         s8, s8, a5
                  srai         s5, t2, 24
                  sll          s2, s10, zero
                  ori          t3, s7, 859
                  divu         s3, s8, s7
                  divu         ra, t2, a6
                  slti         t6, zero, -1277
                  remu         s5, ra, t2
                  or           t3, s10, t5
                  mulh         t5, s8, tp
                  div          a3, ra, a5
                  div          s3, s1, t6
                  slt          a3, s6, a7
                  add          s7, a7, s1
                  mulhsu       s9, s1, s9
                  slt          s5, s5, t0
                  xor          gp, s11, a7
                  lui          a7, 67419
                  srli         gp, a4, 21
                  sltiu        a7, a5, 1488
                  slti         s11, a7, -22
                  slli         s5, s5, 11
                  auipc        s9, 764847
                  slti         a3, s3, -1588
                  xori         t6, s11, 781
                  srai         t5, tp, 29
                  add          t2, s0, sp
                  mulhsu       tp, s2, s4
                  slli         s10, s10, 4
                  mulhu        s11, s0, s11
                  andi         a0, s10, 917
                  srli         a5, s11, 11
                  sra          s5, s1, s9
                  nop
                  or           t3, a0, s10
                  slli         a5, ra, 28
                  and          s5, s9, s1
                  div          a0, t6, t6
                  slli         t3, zero, 27
                  andi         a6, ra, -687
                  mulh         zero, s3, t1
                  sltiu        s7, zero, 1745
                  sra          s11, s3, s9
                  add          a5, s0, t4
                  slli         s5, s9, 11
                  xori         s10, s9, 440
                  mulhu        a7, a3, s0
                  remu         a7, gp, s9
                  nop
                  slt          t6, a1, a7
                  sll          tp, s2, t1
                  sub          s7, t2, t2
                  auipc        t1, 19081
                  mulhu        a3, s8, s5
                  mulhu        s5, s9, tp
                  mulhsu       s6, ra, t1
                  mulhu        s9, s1, s2
                  slli         s8, s4, 3
                  andi         s3, s1, -263
                  sub          a2, a0, t6
                  sub          s0, a0, sp
                  remu         gp, s0, gp
                  slli         s2, t0, 7
                  sra          a3, a2, s7
                  srli         t1, t5, 9
                  sltu         t5, t4, s11
                  auipc        a1, 120650
                  mulhu        t1, zero, s1
                  addi         ra, s7, -1296
                  add          s7, t6, t3
                  srl          a1, s4, t2
                  andi         s0, s1, 1755
                  remu         s5, s0, s9
                  divu         a1, s11, s0
                  mulhsu       s3, a0, t6
                  ori          t5, a1, -1430
                  auipc        a1, 259165
                  srai         s3, t3, 15
                  sltiu        t1, s7, 2047
                  ori          t6, s11, -562
                  add          t5, tp, s3
                  srai         a7, s0, 14
                  lui          t6, 19596
                  nop
                  or           s2, s11, sp
                  xor          a2, a3, t3
                  ori          t1, a2, 357
                  slli         s11, s7, 28
                  div          a1, a3, ra
                  remu         t2, zero, a6
                  lui          s1, 472888
                  mulh         t4, s7, s10
                  slti         s7, s4, 523
                  mul          s5, s6, a0
                  divu         t3, s6, a3
                  mul          s1, sp, t6
                  xori         a7, a1, -1741
                  slt          a3, t4, tp
                  mul          a2, t2, s6
                  div          tp, s6, s2
                  add          a0, t5, tp
                  addi         s0, a0, -135
                  xori         s9, ra, -1924
                  rem          a0, s10, gp
                  srl          s5, sp, gp
                  slt          a2, zero, zero
                  xor          s6, t4, s6
                  sll          s1, a3, t5
                  addi         t1, gp, -331
                  xori         s11, s8, -1364
                  xori         s10, a1, -47
                  mulh         t5, gp, a1
                  sub          t1, a6, a0
                  rem          a2, a7, s7
                  sltu         s8, a5, a6
                  sltiu        a1, a5, -1122
                  mulh         a7, s10, s1
                  addi         t1, s5, -1524
                  lui          a7, 810941
                  mul          a2, t5, s7
                  srai         a0, a4, 17
                  ori          s8, s5, 1490
                  addi         t2, t6, 451
                  andi         s11, a0, 1176
                  auipc        ra, 425344
                  mulhsu       s9, t0, t3
                  srli         a0, zero, 31
                  lui          s1, 664305
                  sltu         t2, a7, s8
                  and          tp, a7, a5
                  remu         t2, s8, a3
                  lui          zero, 234221
                  srli         s10, tp, 18
                  sll          a3, s11, a2
                  mulhu        s6, a1, a6
                  auipc        a2, 730942
                  nop
                  andi         t5, t5, 784
                  sltiu        t2, a5, 175
                  mulhsu       tp, s10, s0
                  rem          s7, a6, t6
                  mul          s8, zero, sp
                  slli         s8, a1, 30
                  slli         s1, t3, 25
                  addi         a1, s3, 763
                  srai         a3, a4, 25
                  andi         a2, a2, -1295
                  sra          s5, s11, s5
                  remu         s9, s8, tp
                  sll          s4, t0, ra
                  remu         s3, a6, a2
                  sra          t1, t4, s11
                  rem          ra, a7, tp
                  div          s5, t3, t3
                  sra          t2, a5, t6
                  mul          s5, s11, t1
                  mulh         s10, a3, a2
                  and          tp, s5, zero
                  mulh         zero, s2, s6
                  sub          a3, s8, a1
                  slli         a7, s9, 5
                  and          t3, s10, s2
                  mul          s4, a6, s8
                  xori         zero, a2, -618
                  or           t3, s6, ra
                  sll          s4, t6, s11
                  sll          a1, t6, s11
                  mulhsu       a6, a7, t5
                  lui          s4, 137242
                  srl          a2, s3, t3
                  sltiu        s9, zero, -367
                  slti         t1, a2, 451
                  divu         a7, t5, t4
                  mulhsu       t6, t3, ra
                  mulhu        a1, a3, a5
                  add          t5, a3, s2
                  xori         a0, tp, -1682
                  div          a7, s6, s0
                  div          s2, s5, a4
                  slt          t4, a6, t3
                  divu         s8, s6, a7
                  add          s0, t1, t4
                  mulhu        s4, s11, a3
                  sltu         zero, a2, t0
                  mulhsu       t1, t2, a5
                  divu         s11, a1, t3
                  nop
                  sll          t2, zero, s10
                  sra          s4, a2, s0
                  srli         t5, s6, 20
                  srl          s10, a0, tp
                  mulhu        s8, a5, s10
                  srai         a3, s8, 9
                  mulhsu       t2, gp, ra
                  sltiu        a0, gp, 644
                  ori          s5, s8, 720
                  mulhsu       a6, s1, a7
                  sltu         ra, s9, s9
                  sll          s4, s0, t4
                  mulhu        s9, s8, t4
                  andi         t2, a3, -87
                  slli         s5, s7, 1
                  sll          t2, gp, s0
                  rem          t3, a0, s7
                  srli         t2, a6, 31
                  andi         tp, s0, -12
                  addi         s3, s2, 898
                  nop
                  sltu         zero, t3, t6
                  xor          a1, s11, a3
                  sll          a5, a4, a0
                  mulhu        a3, s10, s10
                  div          t5, a5, t3
                  slti         t4, t4, 1806
                  remu         s4, s10, tp
                  xori         s9, a3, 400
                  sltu         tp, t2, s3
                  mul          a1, a3, a3
                  and          a2, a0, t0
                  ori          tp, s10, -439
                  xor          s8, a4, s2
                  mulh         s2, t2, a7
                  slt          t1, gp, a5
                  or           s5, a0, s4
                  add          gp, t0, s9
                  add          gp, a3, a4
                  auipc        a0, 944515
                  xori         gp, s4, -524
                  xor          s10, a2, a6
                  slli         tp, a0, 13
                  srl          s11, s2, s1
                  srli         s2, tp, 8
                  slli         a3, s11, 20
                  mulhu        s10, t2, s4
                  slt          a5, t4, t0
                  mul          t1, ra, gp
                  rem          t6, ra, t3
                  remu         s2, s10, a2
                  add          a0, t6, t0
                  ori          t4, a7, -838
                  remu         t1, sp, s5
                  sltiu        s3, a2, -1054
                  xor          zero, t6, a5
                  slt          gp, t4, a3
                  slt          a7, s9, t0
                  xor          a5, ra, zero
                  sra          ra, s6, a2
                  ori          t6, zero, -1320
                  sll          a1, s6, ra
                  mul          s5, a7, a7
                  addi         a0, s1, 196
                  srai         a3, t2, 21
                  srli         s3, gp, 25
                  sub          a1, t1, ra
                  andi         s11, a7, -997
                  div          a3, s7, t4
                  nop
                  xori         s3, t5, 798
                  sra          t1, a6, s3
                  and          a2, zero, t3
                  xor          s0, s5, t5
                  auipc        s4, 110302
                  ori          a1, t5, 2045
                  nop
                  sll          s6, sp, t3
                  mulhsu       s9, tp, s11
                  mulhu        a5, a1, s1
                  slt          s2, tp, t4
                  div          a6, a4, a2
                  div          zero, s0, sp
                  or           s3, s1, s2
                  sub          a3, s0, s0
                  remu         a2, gp, s7
                  div          s5, a0, a0
                  auipc        t2, 325821
                  slti         ra, s0, -1544
                  slt          s7, ra, s2
                  srai         s9, s10, 13
                  divu         a7, t4, a7
                  rem          t2, t4, s9
                  slt          s2, a5, s11
                  mulhu        a0, t2, s5
                  nop
                  lui          s0, 816351
                  xori         a1, s8, 1844
                  slt          a0, tp, zero
                  xor          tp, s9, tp
                  mul          s4, s3, t4
                  andi         s8, s0, -875
                  div          a3, a1, s7
                  auipc        s7, 650921
                  div          a0, a3, t2
                  lui          s0, 336240
                  sll          s9, s9, s4
                  divu         s10, s4, a3
                  addi         a0, s8, -48
                  add          t5, t5, t6
                  slli         s9, t0, 31
                  slli         s3, zero, 16
                  addi         s7, a6, -172
                  mulhsu       t3, s4, t0
                  srli         a5, s8, 4
                  or           a5, t2, a3
                  slt          a6, tp, s4
                  addi         a2, tp, 85
                  lui          s10, 975372
                  mulh         zero, s9, sp
                  srai         a3, s7, 14
                  ori          a7, a2, 65
                  mul          a2, t5, a5
                  sra          t3, t5, tp
                  sub          s5, s5, t0
                  divu         t5, s8, a4
                  mulhu        a5, gp, s3
                  mul          s9, s0, t2
                  mul          zero, zero, s3
                  auipc        t2, 758616
                  srai         s9, t4, 7
                  remu         s7, s4, s9
                  srai         s10, a6, 6
                  mul          s9, s6, s10
                  mulhu        s8, t2, ra
                  andi         a2, s3, -767
                  sltiu        s2, t3, -1759
                  mulhsu       s2, a3, s5
                  divu         s3, s2, s5
                  srli         s8, s11, 25
                  sltiu        a2, t4, -444
                  sll          t6, gp, sp
                  ori          s2, tp, -288
                  andi         a7, s7, 1079
                  or           s10, t3, s5
                  andi         s4, t6, 1260
                  addi         a1, t2, 973
                  slt          s5, s5, ra
                  xor          gp, t5, tp
                  div          t1, s1, a6
                  mul          a0, tp, s11
                  and          s1, s8, tp
                  slti         s10, a7, 33
                  mul          ra, s6, s7
                  sra          s2, t0, t2
                  slt          s3, a0, a3
                  srai         s0, t2, 20
                  and          zero, a1, s1
                  sra          s5, tp, s5
                  mul          a3, t6, a2
                  slt          t6, s9, s7
                  mul          s10, s0, s2
                  sll          a5, ra, a7
                  sub          a0, a4, s5
                  and          t1, t0, t1
                  srl          t2, t1, sp
                  addi         gp, t0, 245
                  ori          a7, tp, 299
                  nop
                  sra          s2, t6, t6
                  ori          s9, s2, 3
                  mulhu        zero, t3, a3
                  andi         s1, s0, 1785
                  srli         s10, t1, 13
                  mul          tp, tp, s0
                  lui          s9, 123959
                  sll          t4, s6, sp
                  nop
                  slt          a3, tp, ra
                  rem          ra, t1, a2
                  sra          s8, s4, s7
                  mul          a0, a2, t1
                  ori          s7, gp, 1122
                  nop
                  mulhu        a6, s4, s9
                  andi         s4, a7, -770
                  and          t4, a1, s8
                  div          a5, s8, s6
                  remu         s2, s4, a4
                  and          a6, ra, a0
                  addi         t5, a5, -971
                  andi         s5, s10, -1667
                  auipc        gp, 460562
                  sll          a0, a4, s5
                  lui          s9, 243791
                  mulhsu       zero, a5, s0
                  and          a2, s1, t3
                  divu         s5, ra, s2
                  remu         a7, ra, ra
                  sub          s10, s5, s3
                  xori         zero, s3, 1989
                  sub          t1, s3, a4
                  sltu         s5, a0, s7
                  andi         s4, s1, -1854
                  mulh         a1, s7, a5
                  auipc        ra, 2274
                  xor          tp, a5, s2
                  remu         s11, t6, t4
                  or           a3, a1, a6
                  srli         s4, s1, 14
                  auipc        t1, 237888
                  xori         s9, s10, 1379
                  srli         s9, s9, 9
                  srli         s1, s11, 13
                  xori         zero, a1, 216
                  mulhsu       s5, t0, tp
                  xor          s5, t3, t5
                  slti         t6, s7, -1423
                  rem          s8, s7, zero
                  srl          s1, s2, s4
                  slti         a3, t5, -826
                  slli         a0, t3, 11
                  lui          gp, 704419
                  and          s1, gp, a2
                  add          a2, t4, a4
                  div          s1, s11, t0
                  lui          zero, 721880
                  div          t2, s11, s7
                  and          a5, a3, a7
                  srai         a6, a2, 31
                  sra          a0, t3, t0
                  divu         t6, s7, s9
                  slt          s10, sp, s4
                  srai         s10, s2, 20
                  slt          gp, t2, s2
                  srai         t6, s6, 19
                  slti         a0, a5, 1161
                  ori          a5, a5, -738
                  srai         a2, t5, 27
                  xor          s7, s9, a1
                  rem          s10, t6, a7
                  mul          tp, a6, s8
                  lui          s4, 644985
                  andi         s2, s0, -1803
                  and          s11, s4, t0
                  addi         s6, s3, 1198
                  and          gp, a7, s11
                  lui          a1, 732005
                  slt          ra, a0, a2
                  auipc        gp, 229553
                  sll          t3, t3, t5
                  div          t6, zero, s11
                  srli         a0, a7, 12
                  sub          t5, t5, s11
                  mulh         t3, s2, t0
                  lui          a0, 440394
                  sltiu        s6, t3, 2023
                  srl          s5, a3, s8
                  mulhu        ra, s4, s1
                  and          a7, a7, ra
                  rem          tp, zero, s0
                  xor          t5, t4, a5
                  sra          s8, t6, s2
                  mulh         s7, s9, a0
                  mul          s0, t5, s6
                  add          ra, s2, s2
                  slti         s7, a4, -1158
                  mulhu        t3, t0, t0
                  xor          a7, s11, s5
                  mulhsu       s10, t4, s8
                  slt          t1, t6, t1
                  slli         s4, s10, 8
                  andi         t2, s2, -769
                  srai         a0, t5, 18
                  divu         s11, a0, a0
                  mulhsu       s9, s0, a3
                  sub          s8, sp, tp
                  sltu         s1, s10, s7
                  mulh         a3, a6, a3
                  and          a5, t4, s4
                  nop
                  sltiu        gp, s0, 1103
                  srai         ra, s11, 25
                  andi         a2, s9, 1494
                  or           s4, s6, sp
                  nop
                  slli         s8, s8, 23
                  rem          s6, a2, s8
                  sra          t2, t0, a2
                  divu         gp, a4, s11
                  srli         t4, ra, 26
                  slt          zero, s0, s0
                  nop
                  ori          s6, s11, -252
                  ori          zero, gp, 150
                  mulh         s2, a1, a3
                  ori          a7, s1, 1258
                  slt          s10, s11, gp
                  sltu         s4, t5, t6
                  mulhu        s3, s1, ra
                  srai         zero, s6, 31
                  add          a6, ra, s8
                  slti         t3, t2, 1311
                  or           s5, zero, a0
                  srli         a6, t0, 18
                  sltiu        a1, t3, -1470
                  ori          t3, tp, 997
                  sll          s0, s2, a7
                  nop
                  srai         a5, s2, 30
                  mulh         s3, a6, s5
                  xor          zero, s4, t0
                  mulhsu       s10, s3, t5
                  slt          t6, t3, a1
                  xori         zero, s5, -1944
                  sltiu        gp, a2, -1159
                  divu         a0, a7, s1
                  srai         a7, s11, 9
                  and          tp, t4, s0
                  sll          tp, t5, a4
                  slti         s6, a0, -1680
                  div          s1, t5, t3
                  remu         t4, s11, s3
                  srli         zero, s4, 29
                  srl          t1, s6, s4
                  auipc        t6, 673601
                  nop
                  or           a5, s1, t6
                  xor          t6, s10, s7
                  xori         t1, a3, -1977
                  addi         a2, sp, -343
                  lui          gp, 531692
                  remu         s4, t5, s1
                  sltu         ra, t3, t2
                  add          t2, zero, ra
                  xor          t1, s9, s6
                  mulh         a5, t2, t3
                  xori         a7, s4, 1669
                  srai         s11, s11, 24
                  sra          a3, s0, ra
                  sra          gp, a1, s0
                  slt          a3, s3, a1
                  or           s4, a2, a3
                  sltiu        t4, a4, -1155
                  lui          a5, 240506
                  srl          s0, t1, a3
                  sub          a6, zero, s3
                  auipc        a3, 653838
                  srli         s11, t3, 25
                  mulh         gp, zero, t1
                  ori          s3, t4, -160
                  add          s3, s3, s0
                  slli         s6, s0, 25
                  div          a7, s5, s6
                  mul          a0, t5, s10
                  add          ra, gp, t5
                  slti         s11, s7, -1776
                  or           t6, a3, t4
                  mulh         s5, a3, s0
                  srli         t5, t0, 17
                  mul          gp, s0, s4
                  remu         s5, a4, tp
                  sub          t1, s8, tp
                  sltiu        t1, t4, -427
                  sll          t1, a7, s1
                  sub          zero, a4, s5
                  sll          t6, gp, a7
                  ori          t2, s9, 2024
                  srli         t1, s3, 5
                  add          ra, tp, s9
                  divu         t3, s8, t0
                  sll          gp, a4, tp
                  mul          a1, t1, s6
                  slli         ra, a2, 16
                  sltiu        s4, tp, -521
                  divu         t5, a4, tp
                  ori          gp, s7, -435
                  sll          s8, gp, s11
                  slti         s11, s2, -1974
                  lui          a0, 90793
                  sltiu        a6, s5, 1683
                  auipc        s1, 975842
                  mulhsu       s8, s11, a3
                  or           a6, s10, t4
                  and          a3, s6, a0
                  slt          s4, s5, s10
                  and          s10, t6, s6
                  mulhu        a3, s6, sp
                  nop
                  mul          t5, s2, zero
                  auipc        zero, 237892
                  slli         a1, s6, 12
                  or           s0, s6, t5
                  sll          t6, s5, ra
                  mul          tp, a2, a2
                  xor          tp, gp, s4
                  slti         s2, a4, 1557
                  srai         s2, s4, 18
                  slli         gp, t0, 5
                  sub          t4, s8, zero
                  xori         t1, gp, 1680
                  srai         a2, a3, 22
                  sll          t2, a7, s3
                  mulh         s7, a2, s11
                  lui          a2, 28444
                  sltiu        t3, s9, -1004
                  div          zero, s8, a4
                  xor          s0, sp, a4
                  sltu         s1, a4, a7
                  lui          s8, 894751
                  sltu         s6, s8, a4
                  slli         s7, zero, 0
                  sra          gp, s8, s4
                  sll          s7, t3, a6
                  srl          t6, t5, a1
                  srl          s4, s1, s4
                  ori          t6, s1, -1384
                  remu         s0, s10, s1
                  slti         s11, ra, 553
                  mulhu        s1, t4, s10
                  addi         s8, a6, -1856
                  mulhu        s3, t2, t6
                  xori         s8, t2, -629
                  mulhsu       ra, t6, t6
                  andi         zero, t5, 1965
                  xori         t4, ra, 1964
                  divu         a7, t2, a0
                  or           a1, s10, t4
                  remu         gp, t4, a4
                  divu         zero, s11, s4
                  sra          s2, s2, tp
                  and          s11, s5, sp
                  addi         s10, s7, -91
                  div          a1, t6, s6
                  mul          s6, ra, zero
                  srli         s6, s1, 29
                  remu         t2, a6, t3
                  slli         a7, t0, 13
                  sra          t2, t4, a0
                  addi         s11, t1, -662
                  auipc        s5, 225264
                  srai         s7, s9, 16
                  mulh         s10, t1, t1
                  add          t5, tp, t4
                  sll          t1, t4, zero
                  nop
                  slt          t1, t0, t6
                  srl          t3, zero, a5
                  add          s3, s11, a6
                  xor          s5, a3, t0
                  auipc        tp, 298611
                  sub          a0, t5, s1
                  divu         s9, ra, s6
                  sll          t2, s0, zero
                  sub          gp, s4, sp
                  srli         t5, s5, 8
                  mulhsu       a5, s11, a7
                  nop
                  mulh         s5, s2, s1
                  or           t6, a5, s3
                  div          ra, t5, s4
                  sltu         s4, a4, s0
                  andi         s2, a5, 490
                  sub          s0, s4, a2
                  div          t2, gp, s11
                  or           ra, s4, t4
                  nop
                  lui          tp, 627474
                  addi         a3, a2, 412
                  srl          a5, t1, s7
                  mul          a3, t1, s2
                  mulh         t6, a5, s6
                  addi         zero, s9, -215
                  or           ra, s3, s3
                  mulhu        a6, a5, gp
                  divu         s2, s10, t5
                  and          s9, s2, s11
                  and          s1, a5, s6
                  div          a6, s8, zero
                  rem          a0, t1, a6
                  srl          a7, s8, t5
                  xor          a5, a3, sp
                  ori          tp, t3, -106
                  mulh         s0, zero, a7
                  srai         s7, s6, 30
                  or           ra, s0, s1
                  rem          s5, ra, a0
                  or           s11, s9, s0
                  ori          t6, s1, -1178
                  or           s0, s5, a2
                  slli         gp, s8, 13
                  sltiu        t5, t1, 780
                  lui          a0, 708727
                  nop
                  divu         gp, t6, s11
                  or           ra, t5, a0
                  srai         a2, s1, 2
                  ori          s8, s0, 1129
                  mulh         t2, sp, a1
                  sra          s0, tp, s9
                  slli         t2, ra, 17
                  remu         s0, s10, a7
                  slt          ra, s1, t3
                  mulhu        t6, a4, sp
                  mul          s1, zero, s11
                  nop
                  slt          gp, s2, s3
                  rem          t6, a5, s1
                  slti         s5, s8, 1839
                  mulhsu       s4, s1, s0
                  rem          t1, zero, a1
                  remu         s11, t3, s8
                  mul          t5, a7, a2
                  xori         a5, s0, 333
                  nop
                  slt          t1, s3, gp
                  add          s11, t5, gp
                  mulhsu       t1, s10, t6
                  remu         s3, gp, s1
                  sub          gp, s6, s6
                  xori         s8, a3, -1678
                  slt          t3, s1, t0
                  add          t1, ra, s11
                  rem          s6, s2, t3
                  addi         t4, s8, -1641
                  slti         a6, s10, -1790
                  mul          s3, s1, ra
                  sltiu        s8, zero, -1784
                  mulh         s5, s10, a0
                  mulh         zero, gp, t0
                  or           s7, a4, gp
                  slti         a6, s8, -768
                  add          gp, s11, t0
                  slt          s5, a7, a5
                  srai         a5, t3, 10
                  remu         t1, a3, t5
                  addi         a0, s11, -1439
                  div          a6, s11, t3
                  srl          t4, s1, zero
                  div          s10, s5, gp
                  srli         s1, t2, 27
                  srl          s6, s10, s0
                  srli         s0, s1, 0
                  mulh         s3, t2, zero
                  mulhsu       a5, t5, s5
                  sra          a3, s1, a7
                  sll          s0, s2, a4
                  rem          s8, s4, ra
                  sltiu        s8, s4, 1028
                  div          s5, s7, a7
                  sra          tp, s11, a4
                  andi         s3, t5, -672
                  mulhu        s1, s9, t6
                  remu         s0, a0, t1
                  mulhsu       a0, s2, s6
                  slt          a2, t1, a3
                  divu         t1, s11, s11
                  andi         t6, s0, -1377
                  div          tp, s6, a7
                  rem          ra, t4, s5
                  slli         s5, gp, 17
                  or           gp, a1, a1
                  srli         s8, a0, 10
                  rem          a5, t0, s9
                  auipc        a5, 1038022
                  xor          t2, a0, t4
                  sltu         s3, s6, a1
                  or           t3, s1, s6
                  xori         a2, s6, -1928
                  addi         s6, a6, 1055
                  andi         s5, tp, -1875
                  lui          s3, 1040818
                  or           s7, s4, s8
                  xori         a5, s10, 779
                  slt          zero, sp, gp
                  mulhu        s4, s0, s11
                  add          tp, t4, t6
                  srl          a7, s10, a0
                  ori          s4, t0, -615
                  mulh         s2, a1, a3
                  slli         s6, a3, 27
                  sll          s6, t1, zero
                  slti         a7, a5, -1257
                  srli         tp, a3, 13
                  sra          s8, sp, s1
                  and          s7, s1, a6
                  addi         s9, s7, 1650
                  sltiu        gp, t6, -1154
                  sra          s2, s2, s4
                  nop
                  sra          a3, gp, s10
                  sltu         s10, s4, t6
                  mulhu        t2, s6, t3
                  sub          a0, ra, s3
                  addi         s3, a0, -79
                  xori         tp, a7, -747
                  slti         a0, t2, 883
                  and          s2, gp, s9
                  mulh         gp, s4, s9
                  mul          a7, s1, s8
                  remu         t1, t6, t3
                  mulh         t2, a7, a1
                  sra          s4, t0, s11
                  sltiu        a3, zero, -1985
                  srai         s5, t2, 29
                  srai         t5, s6, 26
                  srli         a5, a2, 23
                  remu         t2, a6, tp
                  slti         s10, t1, 1065
                  srai         s1, a2, 16
                  add          s10, a1, a3
                  lui          s5, 102662
                  slt          t6, s6, a5
                  sltiu        a2, ra, 868
                  srl          s9, ra, a4
                  srl          t2, s2, a5
                  andi         s5, a7, 524
                  ori          a2, s11, 1683
                  mul          a5, a7, t6
                  srli         t6, a0, 28
                  add          s7, s8, s7
                  rem          s2, a0, a1
                  srai         a2, a3, 2
                  xor          s1, a4, t3
                  andi         zero, s9, -1965
                  ori          a6, tp, 1557
                  srli         tp, zero, 22
                  and          tp, s2, sp
                  nop
                  sltu         t3, t4, t4
                  xor          ra, a6, a7
                  rem          s0, s7, a2
                  rem          gp, s7, a3
                  sub          s9, t0, t3
                  sltiu        a3, s1, 1115
                  xori         zero, gp, 1100
                  xori         gp, s10, -1487
                  nop
                  sra          s4, t5, s7
                  or           t6, t1, zero
                  auipc        s6, 56881
                  add          s7, t0, tp
                  sra          s10, t1, a2
                  and          a7, gp, t2
                  remu         t1, t6, s7
                  sll          s2, s9, t4
                  slli         tp, gp, 29
                  sra          a3, s6, a7
                  sll          s7, s3, t6
                  lui          s3, 105860
                  mulhsu       gp, a0, tp
                  mulh         t3, s7, s0
                  slti         t4, a3, -573
                  mul          s1, sp, s9
                  slt          t3, s10, zero
                  srai         a7, s10, 20
                  auipc        a1, 575524
                  ori          s4, s9, -830
                  ori          t2, t1, 990
                  mulhu        s10, s0, s3
                  addi         s8, a4, 754
                  addi         a3, s1, 1110
                  remu         t2, s3, sp
                  sll          s6, s4, s2
                  ori          a7, t2, 666
                  divu         s4, s5, t0
                  sltu         a5, s11, s1
                  divu         s7, a3, a3
                  ori          gp, s5, -567
                  xor          t1, gp, s11
                  sub          tp, s10, a5
                  divu         s10, s7, a5
                  sll          s1, t0, s2
                  mulhsu       s4, gp, t4
                  or           a6, s2, a2
                  or           s11, a4, a6
                  xor          a7, a6, a0
                  mulh         s8, t3, s2
                  slli         a3, s4, 21
                  div          s9, s10, a3
                  slti         a0, t5, -159
                  srli         t5, s11, 10
                  srl          gp, a4, a4
                  mul          a5, s7, s5
                  nop
                  lui          a0, 894665
                  slli         t1, t1, 16
                  slt          s5, s9, s10
                  xori         gp, s8, 1858
                  sll          s11, t3, t6
                  srl          a3, t2, s2
                  nop
                  and          t2, s3, ra
                  mulh         s5, ra, zero
                  sll          s10, s3, gp
                  srli         t5, s5, 28
                  or           t1, a7, a6
                  ori          s8, a3, 1395
                  mul          a3, t1, s8
                  nop
                  lui          zero, 567643
                  add          t5, s1, a3
                  srl          tp, t6, zero
                  srl          t4, s2, a6
                  sub          s11, s4, a4
                  srai         zero, s5, 16
                  and          s9, t1, s6
                  slli         ra, s6, 24
                  nop
                  xori         a5, a2, -1815
                  slti         t5, zero, 2013
                  mul          a7, a6, t1
                  or           zero, s5, s10
                  rem          a1, s0, a5
                  and          s10, tp, a7
                  add          t5, t0, a3
                  mulhu        s9, t4, s11
                  srai         s11, t1, 7
                  div          a3, a1, s11
                  auipc        ra, 572798
                  sll          gp, t1, s3
                  sll          t1, s5, s11
                  or           t5, sp, t0
                  srl          zero, t0, tp
                  remu         s1, s3, ra
                  nop
                  remu         t4, a4, t4
                  lui          s2, 706181
                  lui          s5, 613920
                  addi         a2, ra, 599
                  xori         s11, a2, 1654
                  and          zero, t3, gp
                  srli         a1, sp, 1
                  slti         t2, s2, 1223
                  slti         t3, t2, 34
                  mul          s3, t2, a4
                  srai         t4, a1, 15
                  remu         a2, a0, a6
                  addi         a2, gp, 1818
                  mulh         t2, s1, a2
                  srai         tp, ra, 6
                  lui          a0, 608700
                  add          gp, s11, s3
                  rem          ra, s8, t0
                  mulhu        a5, a3, a0
                  addi         s5, s5, 1278
                  andi         t6, s11, -96
                  xori         t2, ra, 224
                  xor          s6, s8, s3
                  lui          s4, 1037542
                  remu         s1, a2, s9
                  sra          s7, s5, t1
                  slli         a3, a0, 0
                  add          a0, s0, a4
                  remu         gp, a2, gp
                  sltu         a0, t6, s11
                  andi         s6, a2, 911
                  mulhu        s3, gp, ra
                  remu         t5, s5, t5
                  mulhu        a5, s0, t2
                  lui          t4, 506968
                  slt          a0, s2, a1
                  mul          t6, t1, t3
                  srai         s10, t3, 22
                  nop
                  nop
                  remu         t4, gp, t2
                  mulh         a3, s3, t6
                  sltu         s9, gp, s2
                  divu         t2, a4, a2
                  remu         s4, zero, sp
                  xor          a0, s8, gp
                  sll          tp, s9, t6
                  and          s8, s9, t6
                  mulhsu       zero, sp, s9
                  auipc        t6, 890272
                  srai         s10, s7, 5
                  auipc        t1, 961467
                  and          a1, s8, s8
                  addi         a3, t0, -1108
                  sltiu        s3, s3, 105
                  sub          s3, t5, a3
                  rem          a7, sp, s10
                  slt          a7, a4, t0
                  mulhu        s0, tp, s6
                  lui          t1, 12037
                  xor          a0, s10, s10
                  sltu         t1, a2, a2
                  rem          s2, s3, a7
                  remu         t6, t3, s11
                  andi         t2, t5, 441
                  and          a2, s11, t0
                  srl          s0, tp, zero
                  srai         s0, s4, 26
                  and          s3, s0, gp
                  add          s4, s6, a0
                  lui          s11, 940311
                  sltiu        a6, a6, -1964
                  divu         ra, t4, a1
                  and          s10, s11, s1
                  lui          s4, 919846
                  xor          s5, a5, a0
                  srl          a3, s6, t5
                  xori         a2, s0, -1963
                  ori          s6, s1, -756
                  andi         tp, a1, -1797
                  lui          t3, 1003411
                  srli         s6, tp, 22
                  sltiu        a0, s8, 127
                  addi         s1, s1, 934
                  rem          s3, a1, s6
                  remu         zero, s0, t5
                  xori         s2, t1, 1374
                  slt          s7, a1, t6
                  srai         a0, a7, 23
                  mulhsu       t1, a4, s8
                  srl          s1, t0, a6
                  lui          s11, 417690
                  remu         tp, t0, a7
                  lui          s11, 348451
                  xor          a3, s4, a1
                  remu         a2, t2, t2
                  ori          a2, a5, -1411
                  nop
                  auipc        t5, 898092
                  rem          s4, a2, s1
                  remu         t5, a4, ra
                  xori         s10, s6, -753
                  mulhu        gp, a1, ra
                  srli         a5, t3, 27
                  or           s4, s6, s4
                  slli         s1, a3, 2
                  srli         a1, t2, 3
                  sltiu        s9, s6, -1457
                  div          s0, s3, s10
                  mulhu        s1, a2, tp
                  sra          t3, t6, s9
                  and          zero, t4, s6
                  divu         a6, s8, a6
                  remu         a0, sp, s11
                  addi         t1, s6, -414
                  auipc        a2, 202975
                  slli         t2, t1, 22
                  sltu         a3, t5, s0
                  add          a2, a2, s1
                  ori          s7, tp, -8
                  sltu         t5, s6, s4
                  srli         ra, s7, 22
                  sra          s2, a4, ra
                  remu         a3, t5, a3
                  remu         s4, s4, s9
                  sltu         s11, t3, zero
                  ori          a0, a4, -1907
                  sub          s9, s11, s0
                  srli         s9, s1, 0
                  mulh         s9, s3, s0
                  sra          t6, t0, s7
                  xor          tp, s2, a2
                  sltu         t3, gp, s1
                  div          t6, s10, t5
                  sltu         s2, s10, a0
                  srli         a6, t6, 14
                  srl          a3, t0, s9
                  or           tp, tp, t0
                  ori          a2, s10, -974
                  srl          s6, zero, tp
                  mulhu        zero, s5, s7
                  sltiu        gp, s4, -960
                  slli         tp, s3, 21
                  andi         s9, ra, -152
                  xori         s11, tp, 580
                  srli         s7, sp, 0
                  mulhsu       a6, s6, s11
                  srli         t1, s2, 5
                  ori          a2, s5, 295
                  sll          a2, zero, s7
                  addi         zero, a1, -343
                  add          s5, s5, s4
                  sll          s11, a0, a2
                  andi         a1, a3, -1694
                  lui          t4, 125947
                  add          a0, gp, s7
                  nop
                  ori          a5, tp, -1530
                  slti         s4, s4, -1844
                  ori          t5, a6, 339
                  slti         a3, s0, -705
                  sra          gp, ra, s3
                  sltiu        gp, a7, 672
                  mulh         s5, a3, s1
                  slti         s8, t0, -729
                  lui          t4, 327456
                  srli         s11, a6, 14
                  div          t5, t4, t2
                  nop
                  xor          t1, sp, a7
                  sub          zero, s11, tp
                  srl          s8, s4, a2
                  slli         t5, s5, 20
                  sub          zero, t1, t6
                  mulhsu       s4, gp, s5
                  remu         t5, a0, a4
                  lui          s8, 683448
                  remu         t3, t5, tp
                  slti         t2, a6, -1482
                  addi         a5, s8, 607
                  srl          s9, t3, s1
                  div          t2, a2, s9
                  auipc        s2, 823908
                  addi         s2, a0, -100
                  auipc        a3, 357502
                  or           t2, t4, zero
                  auipc        a0, 641654
                  divu         s2, a3, s3
                  lui          t4, 694849
                  mul          t1, a7, t3
                  addi         t4, s8, -169
                  sltu         t1, s6, zero
                  slt          s9, s9, s2
                  slli         ra, a5, 12
                  andi         s0, s8, 841
                  and          t4, a3, s9
                  sll          s1, s9, gp
                  divu         tp, s8, s11
                  or           a0, sp, s1
                  andi         s7, s1, 288
                  slti         s3, ra, -739
                  add          s5, a0, tp
                  mulhsu       t1, t5, t4
                  divu         gp, s5, s11
                  or           s6, a2, sp
                  xori         tp, s10, 2035
                  mulhu        a7, t0, t6
                  ori          s0, a0, -438
                  sltiu        s3, t1, -1587
                  sra          zero, s0, sp
                  xor          a5, tp, t0
                  ori          a1, t3, 1456
                  mulhsu       a5, a5, a4
                  rem          a2, gp, s4
                  mulh         s2, zero, sp
                  lui          a3, 279555
                  srai         t1, a7, 10
                  xori         s7, a7, 721
                  or           tp, t5, a2
                  div          a2, gp, a4
                  xori         s11, a1, -958
                  addi         ra, s4, -182
                  lui          a5, 185157
                  mul          s10, t5, a5
                  srl          a0, s0, s4
                  slli         s6, t3, 30
                  slli         gp, s8, 20
                  nop
                  sra          a3, s0, t4
                  divu         s9, gp, s3
                  sltu         a0, s2, a0
                  slti         ra, zero, -525
                  nop
                  rem          t3, s8, s9
                  sll          a6, t2, s8
                  and          s7, a2, a1
                  divu         s9, s8, s6
                  sra          t3, gp, t0
                  addi         s9, s4, -256
                  slti         a0, a6, -1777
                  sltiu        gp, s2, 1809
                  divu         t1, t0, s2
                  sra          s0, t5, s9
                  ori          a3, t4, -358
                  mulhu        ra, sp, t4
                  or           zero, gp, zero
                  sra          s0, s11, t2
                  sltu         zero, tp, a5
                  add          a6, s9, s6
                  mulhsu       a0, t1, a7
                  mulhu        tp, s3, ra
                  and          t6, a5, s3
                  slti         s7, a4, -1811
                  srai         s11, s9, 2
                  mulhsu       s3, s3, ra
                  sll          t3, t3, a3
                  or           s11, s3, gp
                  lui          s0, 291144
                  and          s11, s1, t5
                  andi         s2, a6, 30
                  sltu         a2, s3, a5
                  slt          s9, t4, t4
                  ori          s11, sp, -1471
                  div          s4, tp, s2
                  mul          s7, t6, t1
                  rem          a5, a4, gp
                  rem          s11, s0, s0
                  mulh         ra, t3, t5
                  xor          a7, s0, t3
                  rem          tp, tp, a3
                  mulhu        a3, a5, t6
                  andi         s4, a3, 992
                  addi         a0, t5, 2010
                  slti         a2, tp, -1371
                  sltiu        t1, a7, -1064
                  divu         a5, a3, a4
                  ori          a2, t0, -500
                  sll          a1, sp, a2
                  xor          s8, s0, s7
                  mulhu        s8, s7, s4
                  add          s9, t2, a6
                  div          a1, s0, a2
                  and          s1, s8, zero
                  rem          gp, s9, a0
                  srl          zero, s7, a7
                  mulhu        s9, t0, a1
                  xori         s2, s11, -359
                  srl          t5, zero, t1
                  sra          a2, s9, t4
                  remu         t1, a7, a6
                  mulhu        s4, tp, s11
                  rem          a5, s3, ra
                  or           ra, gp, t5
                  slti         s3, s10, -1328
                  xori         a5, s0, -1825
                  srai         a1, s9, 12
                  slti         ra, a7, -975
                  xor          zero, t3, t0
                  div          s3, t0, a2
                  and          t3, s5, gp
                  and          t1, t2, s0
                  xor          t4, ra, s4
                  xori         a2, t0, 1408
                  nop
                  or           t3, s0, s2
                  rem          tp, s1, a6
                  sra          tp, t1, a5
                  or           t4, s6, s5
                  rem          t1, a2, tp
                  remu         a2, s4, s0
                  mul          t6, s1, s7
                  sltiu        s1, s2, 775
                  slli         tp, s6, 0
                  divu         s8, a0, s1
                  auipc        t3, 242254
                  sltu         a0, sp, t4
                  srai         s11, s6, 10
                  or           a6, s11, a1
                  or           a0, s2, a6
                  add          a3, s11, a1
                  remu         a0, ra, t1
                  srli         s2, s1, 26
                  sll          s7, t0, t2
                  srli         s11, s9, 25
                  sltiu        a3, a7, -1144
                  sltu         t3, a0, zero
                  mulhu        tp, s9, s3
                  srli         s5, a4, 16
                  xori         a0, s7, -1281
                  mulh         s8, s6, s9
                  slli         tp, s5, 1
                  and          tp, s10, t6
                  slt          gp, t6, ra
                  xori         t1, a7, 1100
                  add          a3, s11, s2
                  srli         s0, a7, 25
                  divu         s0, ra, sp
                  mul          a5, a3, s11
                  andi         s3, a4, -1843
                  nop
                  divu         s5, t5, gp
                  slli         s2, t1, 10
                  rem          a3, s8, s4
                  sub          zero, s11, zero
                  remu         s5, a0, t0
                  xor          s10, a5, t4
                  and          ra, zero, ra
                  slli         t4, t2, 30
                  sra          t2, s1, a1
                  mulhsu       tp, t6, gp
                  slli         t2, s9, 1
                  remu         s2, s10, s0
                  div          a3, t2, s5
                  sltu         t6, zero, s5
                  mulhu        s1, s9, t5
                  xori         s8, s11, 1864
                  srai         s6, a0, 8
                  divu         a2, s11, a2
                  auipc        tp, 619108
                  or           s2, a0, s7
                  mulhsu       ra, s4, a1
                  sltiu        ra, sp, -1982
                  and          a1, s0, a2
                  mulhsu       s7, t5, a3
                  mulhu        s11, a2, s11
                  srl          a7, t1, a6
                  sll          gp, s6, t2
                  xori         s4, a4, 1141
                  sll          s11, s9, a1
                  divu         t2, tp, s4
                  sltu         a3, t4, t6
                  xor          s4, a5, s0
                  nop
                  slli         t2, s3, 4
                  auipc        a0, 168909
                  mulhu        a3, ra, s10
                  or           a2, t6, s9
                  and          tp, zero, a7
                  srl          s6, s10, t6
                  div          a3, gp, s5
                  lui          a7, 353032
                  or           t4, t3, a0
                  slt          t5, t1, t6
                  sub          s2, a2, sp
                  mulhsu       s7, a3, t2
                  nop
                  sll          a5, t5, t2
                  mulhu        a6, s7, t1
                  xor          a2, s3, a4
                  xori         s3, s5, 1472
                  sll          a2, a0, sp
                  nop
                  divu         s7, t3, t4
                  xori         s10, ra, -1664
                  mulhsu       a2, a7, s6
                  mulhsu       s10, t0, s3
                  sltiu        s5, a3, 97
                  xor          a2, t5, a0
                  ori          s5, a4, 1183
                  xori         t3, t2, 607
                  andi         s2, t2, -820
                  mul          a2, s7, s9
                  and          tp, zero, tp
                  or           s1, tp, a6
                  slli         s0, zero, 31
                  sra          s11, s5, a7
                  srai         s8, a6, 27
                  remu         t1, a3, s9
                  srai         a0, t2, 9
                  sltu         s8, s0, s3
                  mul          a5, t2, a6
                  xor          s7, s1, a0
                  slt          zero, s5, s7
                  sra          ra, gp, ra
                  sll          a7, a7, s0
                  and          s9, t3, s3
                  addi         s8, s1, -1075
                  auipc        s0, 984824
                  mulh         s8, s0, s6
                  auipc        t5, 824815
                  xor          zero, ra, t0
                  and          a2, s9, a3
                  sltu         a7, s6, t1
                  div          s7, s0, s2
                  srli         s10, ra, 6
                  div          a2, t6, s4
                  add          s5, zero, t4
                  srli         s1, t6, 12
                  sub          t6, s2, s11
                  add          s0, t5, s10
                  slt          s9, s8, t2
                  andi         gp, s3, -563
                  xor          a5, a4, t1
                  srai         s10, a1, 15
                  mulhu        s10, a1, sp
                  rem          s9, sp, t2
                  slt          a2, ra, s3
                  slli         t2, a1, 30
                  slt          s7, s10, zero
                  sltiu        ra, s0, 1006
                  sltiu        t4, zero, 884
                  addi         a7, a2, -1539
                  div          t3, a4, t2
                  and          s5, t4, s9
                  xor          t5, s6, t5
                  xori         a2, a6, -405
                  sll          zero, t1, t2
                  remu         tp, s5, tp
                  sltiu        a5, t2, -210
                  divu         s10, a5, s8
                  mulhsu       a5, s6, tp
                  mulh         gp, a1, a2
                  xor          t5, sp, s1
                  xor          s5, s5, s9
                  sltiu        a0, a2, 243
                  remu         zero, s11, a1
                  slli         t2, a6, 12
                  mulhu        t1, ra, t4
                  addi         t2, a4, -840
                  add          ra, s5, s5
                  xor          s10, a1, s2
                  sll          a0, s1, t6
                  slti         a7, zero, -1808
                  add          a1, a5, s3
                  xori         a7, zero, -1992
                  sltu         gp, a4, s5
                  ori          s3, tp, -1873
                  add          s8, s2, zero
                  auipc        tp, 938934
                  nop
                  or           t5, t6, s1
                  xori         t1, s4, -1844
                  divu         tp, a4, a4
                  slti         zero, a5, 750
                  mul          a5, s0, ra
                  sltu         a5, s7, t1
                  sub          s3, s6, s1
                  remu         s10, s11, s8
                  sltiu        a0, t0, 1946
                  slti         s9, s1, -1748
                  auipc        ra, 1023908
                  slt          a0, a0, t3
                  add          s0, t6, t6
                  slli         s2, t0, 1
                  sltiu        gp, a1, -778
                  auipc        s6, 660394
                  nop
                  srli         s7, tp, 25
                  addi         s4, s3, 1852
                  add          a0, s6, a3
                  lui          gp, 351239
                  xor          a0, a4, s3
                  remu         s0, t4, a4
                  mulh         s9, s3, s2
                  andi         s1, zero, 1730
                  mulhsu       a2, s9, t6
                  mulh         zero, s6, t1
                  sra          s10, a5, s6
                  lui          t6, 398801
                  and          a1, t4, tp
                  auipc        s10, 238226
                  srai         t4, s8, 29
                  add          t2, s8, s8
                  ori          a0, s5, 1818
                  mulhsu       s10, t0, a2
                  lui          t4, 635458
                  remu         t2, gp, a7
                  auipc        s5, 244732
                  xori         a2, sp, 1004
                  srai         a0, t4, 5
                  div          s4, zero, t6
                  mulh         a1, s7, t1
                  ori          s10, s6, -687
                  srai         a7, a5, 27
                  slti         t6, s0, 196
                  srli         a7, a5, 1
                  div          s7, s11, ra
                  sltiu        s11, s5, 77
                  srl          tp, sp, a0
                  xori         a1, a1, -1997
                  or           a3, a6, s11
                  mulhu        a5, s7, s0
                  andi         t3, a1, -1366
                  srli         gp, a2, 20
                  sltiu        s5, s0, -1678
                  sra          a7, a7, ra
                  lui          t1, 714439
                  add          gp, a3, s11
                  ori          s5, s2, -1634
                  add          a0, t3, t6
                  div          a0, s7, s10
                  rem          t3, s10, t2
                  mulhu        s0, s6, a0
                  mul          gp, s11, t5
                  mul          s2, a5, a2
                  mulh         a0, a0, t3
                  xor          a3, t0, s3
                  xor          s7, zero, s1
                  remu         t5, t3, t0
                  auipc        s9, 867329
                  div          s1, a7, a0
                  slli         tp, s3, 2
                  divu         a6, a4, s1
                  auipc        s6, 178480
                  lui          s3, 393462
                  xori         s7, s1, -1558
                  rem          t1, sp, s2
                  sub          a2, a4, s6
                  srai         s10, tp, 3
                  slt          t6, ra, t5
                  sltu         t1, tp, a7
                  mulh         a6, tp, s7
                  srl          a0, s1, a1
                  addi         t4, s5, 759
                  sll          s11, s4, a6
                  slti         a6, s0, -133
                  mulhu        tp, s3, s8
                  mulhsu       s2, s5, s5
                  sltu         s11, s8, s10
                  srl          a0, a2, s0
                  divu         s6, s2, t1
                  nop
                  xori         s8, ra, 422
                  add          a3, s1, sp
                  mulhsu       s5, t5, t5
                  xor          gp, s5, a2
                  xor          a0, s2, a6
                  srl          ra, s3, t0
                  mul          s9, a1, t2
                  srli         t3, tp, 11
                  ori          s3, a2, -220
                  addi         a0, s6, 1238
                  andi         a0, a3, -740
                  auipc        s2, 690127
                  rem          t5, s4, t0
                  rem          s1, a7, s3
                  slli         gp, a5, 0
                  mul          s2, zero, a7
                  sll          gp, gp, s0
                  addi         a3, s2, -1560
                  divu         s4, a1, t6
                  nop
                  srai         s2, a5, 6
                  mulhsu       t1, s4, a5
                  sra          s3, s8, t2
                  addi         t6, t4, 1487
                  srai         tp, s1, 9
                  sra          s8, s6, ra
                  srai         s5, s0, 12
                  addi         tp, s9, -1649
                  srai         s11, ra, 7
                  andi         s5, gp, 211
                  nop
                  sub          a2, s8, a3
                  auipc        tp, 931973
                  mulhu        a2, gp, a4
                  addi         s10, t4, -1181
                  sub          s2, a0, s1
                  nop
                  mul          s5, zero, t0
                  andi         a2, s3, 427
                  srl          gp, sp, t2
                  mul          s1, tp, a2
                  remu         a1, t1, t6
                  mulh         s6, t6, s8
                  sll          a5, a5, s6
                  srai         s2, sp, 23
                  and          s0, s0, tp
                  div          s4, a2, t5
                  slt          t3, a7, a4
                  lui          t2, 185960
                  xor          s6, a4, a7
                  ori          a6, s5, -604
                  add          zero, a0, a0
                  auipc        a3, 664952
                  slti         t5, s9, -595
                  sltiu        s5, s3, -1191
                  slt          a0, t6, s6
                  or           t5, a3, gp
                  sub          s2, s7, gp
                  mul          s11, zero, t0
                  srli         a6, s7, 8
                  auipc        s10, 190354
                  mul          zero, s1, t4
                  nop
                  slli         t2, a7, 25
                  mulh         t6, t1, s11
                  sll          s3, t4, t2
                  slt          a1, a2, gp
                  sltu         s8, s10, t1
                  or           t2, t2, s10
                  nop
                  rem          zero, t6, s3
                  auipc        t6, 751060
                  auipc        s4, 287694
                  andi         a0, t4, -991
                  divu         t4, s2, ra
                  slli         a3, t0, 19
                  srli         a2, t3, 8
                  slli         zero, s7, 28
                  remu         a7, t3, s0
                  xori         a5, s10, 503
                  slti         a3, zero, -65
                  xor          t4, s4, a5
                  add          t5, s10, t3
                  rem          a5, t3, s8
                  remu         tp, s1, a5
                  sltu         s3, t3, a5
                  mulhsu       s11, s8, s5
                  srl          a7, gp, sp
                  ori          s0, a1, -1527
                  div          t2, a1, s3
                  sub          tp, s2, t4
                  slli         s7, a0, 15
                  divu         t5, s5, a7
                  and          zero, sp, s1
                  slt          s11, s10, a1
                  mulh         ra, s5, zero
                  add          s0, t4, t0
                  sra          a6, s11, s9
                  sltiu        t6, a6, 1268
                  andi         s3, t1, -333
                  or           a5, a2, gp
                  or           t2, s6, t0
                  slti         tp, ra, 129
                  or           t6, s9, s8
                  slli         s2, gp, 30
                  sltiu        a6, s5, 1355
                  srl          s4, a0, s11
                  or           t4, s7, t2
                  div          s5, s10, a2
                  sub          s11, s4, s2
                  mulhsu       a6, s4, tp
                  srli         a6, t1, 25
                  ori          a3, s0, -1325
                  slti         s10, zero, -1148
                  mulh         tp, a3, tp
                  slt          t2, gp, tp
                  divu         s2, gp, s1
                  sll          t4, s11, s11
                  lui          a1, 995452
                  sub          t4, zero, s9
                  ori          s10, ra, -717
                  sra          tp, tp, sp
                  add          s6, s11, t0
                  nop
                  sltiu        t2, t0, -1487
                  slt          a3, t6, s3
                  sltiu        a3, sp, 1289
                  remu         a7, a1, t3
                  slt          t6, s11, s4
                  mul          s3, t5, s11
                  and          t5, t6, a3
                  or           a6, a1, t3
                  mul          t5, s5, s10
                  mulhu        zero, s1, a7
                  or           a7, a3, gp
                  srli         a6, s11, 0
                  sltu         s5, t5, a6
                  div          ra, tp, a1
                  and          s9, a3, s1
                  mulhsu       a5, s1, s0
                  and          a1, t2, a1
                  andi         s11, t0, -1947
                  add          s3, s1, a5
                  divu         ra, t1, a3
                  divu         s0, s0, t1
                  srai         gp, t2, 20
                  slti         s0, s2, -413
                  srli         a0, t1, 4
                  remu         s8, s5, a5
                  srli         s4, t5, 25
                  slti         ra, s9, -687
                  srl          t2, a7, t5
                  andi         s2, t3, -944
                  lui          s2, 223172
                  div          t2, s6, sp
                  srli         s3, zero, 4
                  slt          t5, s8, s1
                  sltiu        a6, a2, -899
                  or           s10, s5, s4
                  mul          s6, t5, s11
                  rem          a5, zero, s2
                  xor          t6, sp, s1
                  slt          t1, a7, t3
                  xor          a5, s9, t4
                  add          s6, t2, s0
                  remu         zero, t6, t0
                  slli         t1, a7, 21
                  sub          t3, s9, a3
                  lui          a6, 1009486
                  nop
                  andi         s10, a7, -796
                  div          s5, s8, a3
                  ori          t2, t6, -1588
                  remu         ra, a6, zero
                  sltu         t5, t4, s0
                  sltiu        t6, s7, -1014
                  mulhu        t2, a4, a5
                  or           ra, s8, t4
                  or           s11, s10, s7
                  mulhsu       s0, t6, s0
                  sltu         s1, s1, s8
                  sltu         gp, t2, s1
                  srai         a3, a1, 12
                  or           s7, t5, t5
                  sll          zero, a2, a6
                  sll          t3, t2, sp
                  rem          s2, tp, a2
                  and          s1, t6, t0
                  ori          s3, t0, -1887
                  ori          t2, a7, -477
                  ori          t3, a1, -361
                  xor          tp, a2, t0
                  addi         s9, s11, 1701
                  andi         t2, s1, 95
                  sltu         s8, a6, tp
                  srli         a0, ra, 26
                  xori         t1, s2, -1350
                  auipc        a5, 423616
                  lui          s5, 211703
                  mulhsu       s2, s7, s2
                  xori         a3, s2, -211
                  sll          s10, s3, t5
                  srli         gp, a2, 4
                  mulhsu       a2, t0, tp
                  mul          s10, a0, zero
                  nop
                  xor          t4, a6, s7
                  xor          a0, a3, tp
                  nop
                  remu         a3, a2, a7
                  rem          s8, a1, s11
                  srli         t5, a7, 3
                  mulhu        t2, s9, t2
                  nop
                  or           s1, t2, s0
                  or           s5, s0, t5
                  mulhu        a3, a0, s8
                  nop
                  ori          a2, tp, -1617
                  srli         a3, s10, 29
                  srai         gp, a7, 2
                  and          s2, a0, gp
                  mul          a6, a1, t4
                  mul          t3, zero, ra
                  srai         s5, s4, 22
                  sra          a2, a1, tp
                  xor          ra, zero, s1
                  auipc        t3, 298770
                  sra          s4, a6, s5
                  sltiu        t3, t1, 151
                  auipc        a3, 189607
                  srai         t2, a1, 16
                  sub          s8, s5, s9
                  rem          a5, a1, a4
                  sub          t2, zero, gp
                  rem          a6, t3, t5
                  slli         s7, t4, 6
                  mulhu        a1, ra, s8
                  ori          s1, a5, -426
                  auipc        s2, 332024
                  sltu         a0, t4, zero
                  nop
                  mul          zero, s9, s11
                  sltiu        gp, s2, -62
                  remu         s8, s1, t2
                  auipc        s1, 1025807
                  auipc        t2, 448173
                  xor          ra, s10, sp
                  xori         t5, s11, 593
                  slti         s11, a0, 226
                  remu         s11, s7, sp
                  slli         a0, s8, 6
                  divu         gp, a6, s10
                  sll          zero, s6, s6
                  nop
                  add          tp, ra, t5
                  rem          a7, a2, a4
                  mul          s10, s4, s8
                  rem          a7, s2, a4
                  slti         a6, tp, 1967
                  sub          s9, s1, ra
                  srli         a7, t5, 0
                  mul          a3, sp, t4
                  nop
                  add          a1, a2, t5
                  mulh         t4, a5, s11
                  div          a2, t5, t2
                  or           a7, t5, ra
                  slti         s2, s10, -763
                  nop
                  mul          s8, tp, a3
                  or           s5, t1, t4
                  srl          s9, a6, s9
                  div          t5, a4, gp
                  sltiu        s10, s11, -513
                  mulhu        s7, s0, s9
                  addi         tp, s0, -1696
                  slli         t1, s11, 17
                  mulhu        s7, sp, s2
                  srai         a2, s3, 29
                  remu         s2, a5, s9
                  andi         t1, a2, -419
                  andi         tp, a6, 269
                  mulhu        tp, s11, a1
                  lui          a7, 276654
                  sra          a0, a5, tp
                  sra          a3, s2, s1
                  and          a0, a3, a5
                  mul          t2, s9, s5
                  xori         s9, s7, -466
                  lui          tp, 237949
                  sra          a0, s10, s6
                  andi         a5, s5, 716
                  srli         s3, a3, 15
                  remu         a1, t0, t4
                  mulhsu       a1, s1, s8
                  auipc        t4, 800582
                  mul          a7, gp, s10
                  sub          t6, s6, s1
                  xor          tp, a7, t4
                  sll          t3, a2, s6
                  add          t2, t5, s7
                  mulhsu       gp, s10, a0
                  mulhsu       tp, ra, s7
                  mulh         t6, zero, s11
                  slli         a3, s5, 8
                  slt          a7, t5, t3
                  and          gp, a0, t4
                  div          t1, t5, ra
                  or           s6, t5, a7
                  ori          a7, tp, -1681
                  sltu         a3, s5, a6
                  rem          a1, a2, gp
                  slti         a1, t6, -1371
                  xori         a5, s2, -1278
                  lui          s2, 334842
                  sra          s2, t1, a5
                  sub          gp, s1, t2
                  sltiu        ra, s11, 1111
                  sub          s7, s2, t2
                  lui          s0, 668980
                  auipc        s0, 657186
                  nop
                  mul          a3, s3, s10
                  addi         t4, s10, 787
                  andi         a2, s1, -229
                  add          s6, t5, s3
                  sltiu        t6, a2, -30
                  xori         t2, a4, -1639
                  srai         t3, tp, 23
                  xori         s1, s11, -914
                  addi         t1, s2, 1452
                  nop
                  sub          a6, a6, s2
                  sll          a0, sp, ra
                  add          s5, t2, s7
                  addi         s9, s10, 1847
                  sra          t3, s7, t4
                  mulhsu       a5, a3, s6
                  sltiu        t2, zero, 1375
                  and          zero, ra, s10
                  sltu         tp, a5, a0
                  xor          t2, s10, a3
                  sll          a3, a3, t4
                  auipc        t2, 101975
                  div          t1, s7, gp
                  rem          s10, t1, s3
                  xori         s3, s7, 816
                  slli         zero, s2, 17
                  sra          s1, t4, s5
                  addi         s3, a0, -1398
                  auipc        s0, 573860
                  sltiu        s9, tp, -289
                  add          s9, s8, s2
                  auipc        s10, 610678
                  nop
                  mulhu        t1, tp, s8
                  sltiu        a2, a0, 936
                  nop
                  auipc        a2, 1021944
                  sltu         s7, s8, a0
                  sltu         a0, s5, s9
                  nop
                  ori          t3, a5, -1382
                  srl          s10, s7, s10
                  slt          s8, t4, zero
                  nop
                  or           t1, a3, ra
                  mulhsu       a6, s8, a4
                  sub          t1, s2, a0
                  and          t2, t4, ra
                  ori          s11, s8, -16
                  ori          t3, s0, -790
                  srl          t1, s8, t5
                  andi         t3, a7, 1775
                  mulhsu       s2, t5, a4
                  andi         s7, a4, 274
                  div          s3, t5, s4
                  slt          t4, s7, t1
                  and          s11, s7, s11
                  slli         gp, s11, 30
                  slti         t4, s7, -917
                  div          s5, t1, a5
                  xori         s8, t5, -98
                  mul          tp, a5, a1
                  divu         s0, t4, t1
                  srli         s1, t3, 24
                  auipc        s10, 603115
                  slt          a2, ra, t2
                  auipc        a3, 950172
                  div          tp, a6, s9
                  xor          zero, s8, a3
                  remu         t3, t6, a2
                  mulhsu       zero, t5, a6
                  addi         t1, t4, 1624
                  srl          a0, a3, t1
                  nop
                  xor          s10, s8, t5
                  addi         s6, s2, -1361
                  sltu         a5, a2, sp
                  and          t3, t5, s4
                  rem          tp, tp, tp
                  auipc        a3, 224714
                  sll          gp, s10, a1
                  div          s11, zero, a2
                  mul          s2, s0, t1
                  div          zero, t4, t0
                  addi         a6, s1, -265
                  mul          t3, t5, s3
                  mul          s5, t6, t2
                  divu         t2, a5, gp
                  div          t2, a1, s6
                  slli         a6, t3, 25
                  sltiu        t5, s2, -946
                  andi         s1, s0, 1772
                  srai         s4, t4, 4
                  srl          s10, t4, zero
                  addi         gp, s2, 230
                  remu         zero, t5, s2
                  sll          a6, s11, a6
                  ori          s9, t4, 1996
                  mulhu        s8, sp, gp
                  srli         a1, a3, 10
                  mulhu        tp, a7, t4
                  addi         a7, a7, 582
                  sub          a7, t1, s5
                  and          t3, a7, s5
                  xor          t4, a5, ra
                  mulh         a1, ra, s3
                  srl          zero, t6, a5
                  xor          gp, t5, a3
                  div          s11, s5, s1
                  srli         s1, a5, 13
                  divu         a0, t3, zero
                  ori          a7, a0, -171
                  rem          t5, a4, t5
                  remu         a6, s8, a3
                  add          s5, s9, a7
                  add          ra, s2, t6
                  slt          t1, a1, sp
                  srai         s3, t4, 14
                  mulhu        a3, t6, zero
                  mulh         a0, s10, a7
                  mul          s8, a0, t3
                  slti         tp, t6, -2014
                  lui          t2, 628544
                  div          s10, a5, zero
                  add          s9, s10, ra
                  remu         gp, s4, a1
                  addi         a7, t1, 1380
                  sltu         t1, s2, a3
                  divu         ra, a2, s8
                  sra          s11, s0, t4
                  srai         t1, s3, 1
                  rem          t5, t2, s1
                  slli         tp, ra, 30
                  divu         s5, s7, t6
                  mul          a0, t2, a6
                  lui          s1, 784441
                  sra          a0, t2, s11
                  sltiu        s2, t4, -1358
                  divu         ra, tp, t6
                  add          s11, tp, s6
                  mul          a5, a1, a5
                  srl          s9, s5, t6
                  add          s0, s7, t5
                  remu         s7, tp, s11
                  srl          a5, t3, s6
                  auipc        s5, 304823
                  xor          a5, t1, a6
                  srai         s3, gp, 22
                  srli         t5, s11, 0
                  lui          s1, 275516
                  mulh         t4, a2, s5
                  add          t3, s5, ra
                  mulhsu       a0, t5, zero
                  slli         t4, s4, 2
                  sub          tp, t4, s10
                  divu         ra, a7, a1
                  srli         a0, s11, 7
                  sub          a7, s7, a2
                  nop
                  xori         s6, s8, -936
                  and          tp, sp, tp
                  addi         s8, t1, -333
                  mulh         s5, a5, s11
                  mulhu        a6, t3, a6
                  auipc        a3, 1014127
                  sub          t1, ra, tp
                  slti         a7, sp, 529
                  slti         s5, tp, 445
                  lui          s6, 101925
                  lui          tp, 508790
                  lui          t4, 652013
                  sra          s6, a4, a4
                  auipc        a6, 91958
                  remu         gp, t4, a6
                  xor          a2, a7, a7
                  slti         s2, s7, 1062
                  srl          a1, a2, s10
                  slli         a1, s0, 8
                  auipc        t1, 297318
                  sra          a1, zero, a7
                  add          a7, a4, s9
                  sub          tp, t5, t0
                  add          ra, t2, a3
                  div          gp, a7, ra
                  sub          ra, sp, t4
                  srai         t1, gp, 10
                  slti         s0, a1, 594
                  sltiu        s9, s5, -553
                  slt          s6, s7, s6
                  sll          s8, s1, s8
                  mulhu        t1, t6, s4
                  div          a7, s8, a0
                  andi         t6, s8, 916
                  and          s6, ra, t2
                  slli         s5, s2, 8
                  slt          a6, s5, sp
                  xori         s1, t4, 210
                  ori          t2, t1, -685
                  mul          t6, a1, tp
                  xori         a3, s8, 521
                  srai         s0, s9, 9
                  sll          a1, a6, tp
                  xori         zero, zero, -878
                  srl          s10, s3, s1
                  xori         s4, s11, -1331
                  remu         s0, s7, a2
                  sltu         a3, s6, sp
                  div          t6, gp, s1
                  div          s2, a2, s3
                  mulhsu       s2, s4, s11
                  mulhsu       t2, s9, s6
                  sltiu        s8, t6, 1655
                  xor          s0, s7, a6
                  rem          s1, sp, a4
                  sub          t6, s5, gp
                  add          s2, s11, a2
                  ori          s11, a5, -1796
                  nop
                  slli         s8, s10, 12
                  andi         s0, sp, 1326
                  and          t1, a0, t0
                  mul          t6, a7, t2
                  andi         s4, s2, -896
                  xor          t3, a6, sp
                  rem          t3, s9, t5
                  lui          s3, 379930
                  srl          s8, sp, a2
                  addi         s11, zero, -1941
                  add          tp, s1, s5
                  srl          a1, a2, a1
                  andi         a3, a2, -1829
                  mulh         s6, a7, ra
                  div          a5, tp, t4
                  auipc        s0, 577945
                  srl          s8, s0, t3
                  srli         s9, s7, 19
                  ori          a6, a7, 686
                  mul          t1, t6, s3
                  xor          s2, t2, a3
                  sltiu        s8, gp, 1678
                  mulhu        s11, ra, sp
                  xor          zero, a4, a1
                  xor          a6, a0, a4
                  sub          a6, s6, s0
                  andi         a3, sp, -1201
                  sll          gp, t3, a5
                  div          ra, a1, s8
                  mul          a0, s4, a3
                  add          a0, a3, a7
                  remu         t5, t4, t3
                  mulhsu       s0, t2, s0
                  slti         a1, s3, 1934
                  andi         t6, s8, -1161
                  remu         a7, s10, t2
                  slt          a6, t2, s5
                  sll          s9, a6, t3
                  addi         s7, t3, -1416
                  slt          a0, gp, s5
                  mulhsu       a5, a5, a5
                  slt          t2, sp, t5
                  div          a7, gp, a4
                  sub          t6, a0, a0
                  slti         s10, tp, 1314
                  nop
                  sltu         s1, s9, t0
                  remu         t2, t0, a1
                  and          s8, s5, a1
                  div          s1, a2, s0
                  slt          s9, tp, ra
                  sltiu        a0, tp, -300
                  xor          t5, sp, s11
                  mul          t6, t3, t4
                  srai         a7, s8, 6
                  xor          t2, ra, s6
                  divu         s1, t5, t2
                  ori          s2, s5, 1373
                  srli         t6, gp, 10
                  and          s4, a5, gp
                  mulhsu       s8, s6, a5
                  slti         s3, s1, 1897
                  srli         zero, s8, 30
                  sll          s0, s4, s9
                  add          s4, s6, a3
                  remu         zero, t4, s7
                  xor          t5, t6, t1
                  or           a2, a1, s9
                  mul          t3, zero, t1
                  srli         s4, s9, 16
                  srai         s5, s8, 26
                  mulhu        s11, a2, s8
                  sub          s11, s7, a6
                  rem          a2, s8, s9
                  srli         t3, t3, 9
                  nop
                  mulh         a1, a1, t4
                  mulh         tp, s5, s2
                  rem          ra, t3, a4
                  mulh         a1, sp, t0
                  mul          s4, s6, s8
                  auipc        a5, 757227
                  sltu         t3, t4, a4
                  nop
                  mulhu        tp, zero, s7
                  auipc        t2, 268273
                  addi         s4, s7, -1904
                  sra          t2, a7, s10
                  remu         t2, a3, a5
                  mul          gp, a3, t2
                  sltu         zero, s9, t4
                  xor          a2, sp, s2
                  lui          tp, 731414
                  nop
                  slt          s1, s5, s0
                  divu         s7, s7, sp
                  sra          gp, a1, s10
                  slli         s7, s1, 7
                  srli         a3, ra, 13
                  remu         a7, a4, t0
                  andi         a0, a3, 741
                  sltiu        t3, s0, 940
                  andi         s11, sp, -1483
                  auipc        s8, 691398
                  sra          gp, a0, s1
                  sltu         zero, t5, s10
                  mul          a0, t2, s6
                  mulhu        a3, ra, t6
                  andi         ra, a3, -987
                  and          gp, s3, t5
                  mulhu        zero, s7, ra
                  and          t6, s7, gp
                  mul          s2, s4, zero
                  srli         s1, a1, 23
                  mulhsu       a0, s5, t6
                  nop
                  slt          t2, a0, s8
                  sll          t6, sp, gp
                  xori         s4, t5, -282
                  remu         s11, s10, s10
                  xori         s3, t2, 1153
                  xori         a7, a4, -1930
                  srai         zero, t4, 28
                  mulhu        t2, a0, t2
                  auipc        zero, 50934
                  nop
                  ori          s9, s10, 1104
                  rem          s11, s7, sp
                  srli         tp, zero, 28
                  sltiu        s10, a4, 1938
                  andi         s8, s10, 1859
                  xori         t4, s3, 911
                  srai         s5, sp, 31
                  slli         t6, ra, 26
                  xori         s3, t1, -1678
                  sltu         s10, s1, a7
                  xor          t1, s3, s0
                  sll          s2, zero, t1
                  div          t2, t6, s8
                  sltiu        a1, s6, 768
                  mulhu        tp, a3, a0
                  slti         a3, s4, 1690
                  ori          t5, a2, 1649
                  slti         gp, s3, 972
                  slt          s8, t2, s2
                  srl          a2, s1, s5
                  rem          s1, s1, s11
                  addi         t2, s8, 1826
                  auipc        t6, 224526
                  andi         tp, a7, -1253
                  xor          s10, s5, t4
                  srli         zero, s0, 5
                  div          a5, s8, s1
                  srai         s5, s0, 26
                  lui          ra, 103511
                  xor          a7, a2, s0
                  srli         s11, s4, 4
                  srli         s5, a7, 5
                  mulhu        a3, a4, s1
                  remu         a1, s5, a3
                  auipc        a5, 655355
                  mulhsu       s8, s7, a4
                  and          a0, a0, a2
                  sll          s5, a2, a5
                  and          zero, s7, s9
                  mulh         t1, a5, sp
                  sll          a0, a2, t6
                  addi         gp, t6, -294
                  sltiu        t4, t1, -1319
                  srai         t1, t4, 7
                  remu         s0, gp, sp
                  remu         a3, t2, a7
                  mulhu        t1, a3, t1
                  srli         s9, a2, 4
                  andi         tp, t0, 1433
                  remu         t2, a5, t2
                  lui          a3, 607912
                  rem          s11, s5, s7
                  mulhsu       t1, s1, a1
                  mul          s3, zero, a0
                  xori         tp, s7, -1297
                  ori          t5, t2, 624
                  srli         s2, a7, 4
                  srli         s2, s10, 25
                  slti         t4, t2, 862
                  xor          s2, ra, s9
                  srl          s4, s6, a5
                  srai         a1, a0, 7
                  slli         t4, s7, 15
                  srai         a0, a6, 15
                  sltu         s0, s8, s2
                  rem          ra, s5, t0
                  sltiu        s1, sp, -971
                  slt          t1, s9, a7
                  la x5, test_done
                  jalr x0, x5, 0
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
                  addi x14, x14, -4
                  sw  x2, (x14)
                  add x2, x14, zero
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x14, x2, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x22, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x22, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x22, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x22, x11, ecall_handler
                  li x11, 0x1
                  beq x22, x11, instr_fault_handler
                  li x11, 0x5
                  beq x22, x11, load_fault_handler
                  li x11, 0x7
                  beq x22, x11, store_fault_handler
                  li x11, 0xc
                  beq x22, x11, pt_fault_handler
                  li x11, 0xd
                  beq x22, x11, pt_fault_handler
                  li x11, 0xf
                  beq x22, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x2, x14, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x14, x2, zero
                  lw  x2, (x14)
                  addi x14, x14, 4
                  mret

load_fault_handler:
                  add x2, x14, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x14, x2, zero
                  lw  x2, (x14)
                  addi x14, x14, 4
                  mret

store_fault_handler:
                  add x2, x14, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x14, x2, zero
                  lw  x2, (x14)
                  addi x14, x14, 4
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x2, x14, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x14, x2, zero
                  lw  x2, (x14)
                  addi x14, x14, 4
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x2, x14, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x14, x2, zero
                  lw  x2, (x14)
                  addi x14, x14, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x2, x14, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x14, x2, zero
                  lw  x2, (x14)
                  addi x14, x14, 4
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
