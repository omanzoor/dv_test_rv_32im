.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x22, 0x40001104
                  csrw 0x301, x22
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
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
                  li x0, 0xf2d30e05
                  li x1, 0x5
                  li x2, 0x572fabbe
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0xf5dd404b
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xf76a2bce
                  li x10, 0x1664673c
                  li x11, 0x0
                  li x12, 0x1899d941
                  li x13, 0x80000000
                  li x14, 0x3
                  li x15, 0x382c3980
                  li x16, 0xf62f66cc
                  li x17, 0x248c3d59
                  li x18, 0xf6b771ed
                  li x20, 0xfa0b1134
                  li x21, 0x80000000
                  li x22, 0xf101f922
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xf31a0a46
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0xfe87253d
                  li x29, 0x80000000
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             srai         sp, t3, 22
                  addi         a2, gp, -486
                  remu         t2, t0, ra
                  xor          s1, a7, s2
                  sra          t6, zero, ra
                  ori          t0, t3, 259
                  sra          a7, t4, s1
                  srli         t0, a3, 19
                  rem          s4, s7, t3
                  slt          s11, a0, s3
                  mulhsu       s8, s2, gp
                  div          a4, s11, t3
                  sra          s6, s0, s6
                  xor          s6, a5, s1
                  div          a5, t2, sp
                  lui          t3, 356057
                  or           a0, t6, a5
                  slti         s11, tp, -886
                  xori         gp, s10, -1083
                  nop
                  xori         s2, a3, 1125
                  srl          sp, s3, a2
                  xor          a4, s11, a1
                  auipc        s5, 119153
                  divu         t2, a1, sp
                  lui          a3, 780270
                  slt          t4, tp, a7
                  div          s5, s2, s7
                  srl          s2, s2, s10
                  slt          s5, a3, a0
                  mulhsu       s0, t4, s7
                  xor          tp, t2, t2
                  or           ra, s2, t0
                  sub          sp, s0, t2
                  or           sp, sp, s11
                  rem          s7, a1, tp
                  mulhsu       a4, s9, t5
                  remu         s6, a7, a5
                  xor          tp, t5, sp
                  slli         s11, gp, 16
                  nop
                  mulh         a5, s10, zero
                  slli         s4, a7, 23
                  mul          t6, t4, s9
                  mulhsu       a0, t0, t6
                  slti         s7, a7, 1522
                  sra          a3, ra, a2
                  divu         t1, s11, t6
                  mul          a1, t3, s1
                  rem          sp, t2, s0
                  mulhsu       s5, a3, s0
                  slti         a7, s6, -809
                  srli         s0, a1, 23
                  div          gp, tp, t6
                  and          ra, s7, a0
                  srli         t6, s7, 6
                  sltu         a7, s11, a6
                  slli         zero, ra, 31
                  mul          tp, s3, s4
                  add          a5, s8, s10
                  nop
                  srli         s2, a4, 19
                  nop
                  srl          gp, s1, tp
                  auipc        s7, 765227
                  auipc        s11, 435418
                  sra          s9, zero, a5
                  rem          s5, a2, t3
                  sll          a0, a6, s10
                  xor          s0, a5, a2
                  slt          s0, gp, t0
                  slti         s11, t4, -1846
                  lui          ra, 266611
                  or           s8, s2, t1
                  add          t2, t6, a3
                  sltiu        s9, a7, 330
                  sub          t2, a0, s10
                  or           s11, s7, t2
                  sltu         a0, a7, s9
                  sltiu        a0, s4, -494
                  mulhsu       t2, a7, a5
                  slli         t1, ra, 16
                  lui          s8, 177935
                  add          t1, t2, t2
                  or           a6, gp, zero
                  divu         t2, t4, t3
                  lui          ra, 118502
                  srl          s6, s11, a6
                  sll          a7, a4, a5
                  remu         a1, sp, a6
                  srai         s7, a1, 10
                  rem          t2, t0, gp
                  divu         t2, t3, s1
                  srai         a1, t6, 29
                  srli         a4, s3, 22
                  mulh         s7, tp, sp
                  srl          s9, s9, t4
                  nop
                  mulh         s11, s5, s1
                  xori         s4, tp, 225
                  sra          a3, gp, s1
                  and          a0, s11, t1
                  xori         sp, s7, -1396
                  div          zero, s11, s7
                  add          a5, a0, s9
                  and          t0, s4, s2
                  srai         t6, s11, 12
                  mulhsu       a2, t5, s4
                  addi         s9, a1, 881
                  xori         a4, ra, 97
                  nop
                  addi         t6, a2, -1167
                  mulhsu       s7, a1, s11
                  lui          s2, 460211
                  auipc        a4, 464808
                  xori         t0, s11, -221
                  mul          s11, s6, s10
                  and          t1, s3, s11
                  lui          gp, 1010410
                  xor          gp, s1, a6
                  sra          t3, s1, a1
                  and          a1, t4, s11
                  divu         s8, s9, s9
                  addi         a2, t3, -43
                  and          s5, ra, s11
                  sra          t0, s10, s3
                  mulhsu       t3, t5, s6
                  srl          s11, a7, t4
                  sll          a7, tp, a7
                  lui          s5, 328066
                  lui          zero, 421219
                  mulhu        s5, sp, a5
                  srli         s1, s9, 28
                  andi         tp, s1, 417
                  lui          t2, 656665
                  slti         a4, s0, 2
                  sub          a7, t1, s8
                  xor          a5, tp, s8
                  mulhsu       s0, a2, tp
                  ori          tp, a1, -1211
                  nop
                  addi         s11, a6, 771
                  nop
                  slli         s0, sp, 10
                  rem          a0, t3, s11
                  mulhsu       s5, a7, t6
                  slli         tp, zero, 25
                  andi         t4, a5, 334
                  mulhsu       s5, t2, s6
                  sra          t3, t1, zero
                  mulhsu       t3, s5, s7
                  slli         a2, a5, 26
                  andi         s0, s8, 715
                  sltiu        t6, zero, 1189
                  srl          s2, a5, a7
                  auipc        s11, 293830
                  or           s6, sp, a5
                  nop
                  nop
                  srai         ra, s9, 10
                  rem          t6, t2, tp
                  sra          a6, tp, s11
                  sll          s6, a1, a4
                  nop
                  srai         ra, a5, 3
                  xor          a5, a4, s2
                  sltu         gp, ra, t2
                  xori         a3, a4, 1035
                  auipc        sp, 464600
                  mul          a6, s3, a1
                  auipc        t0, 531274
                  mul          a7, s2, t4
                  nop
                  addi         t0, t0, -1445
                  slti         a1, t0, -591
                  sltu         s11, s1, t1
                  srai         s7, s6, 5
                  slli         gp, a7, 1
                  or           a1, s9, a7
                  slti         t4, s1, -626
                  xori         s8, a5, 383
                  andi         a4, s9, -860
                  xor          tp, t1, t4
                  xor          s1, a7, t3
                  ori          s1, s7, 1348
                  xori         s11, a3, 1148
                  mulhsu       s2, zero, a6
                  remu         s7, s8, a3
                  or           t1, t3, t0
                  mulhu        s8, gp, a5
                  sra          s11, t3, s3
                  divu         s5, tp, a1
                  sltiu        t2, s8, -1412
                  and          s6, a3, a4
                  xor          a5, s9, gp
                  addi         t6, s4, 1653
                  andi         tp, s6, 525
                  mulhsu       s9, t5, a7
                  xori         s7, ra, 794
                  remu         s4, zero, a4
                  mul          t4, s3, s7
                  sll          gp, s3, s7
                  mulhsu       s11, s3, s4
                  div          s4, s2, t2
                  remu         s8, a5, zero
                  sll          a2, s7, s11
                  nop
                  mul          a6, s10, t0
                  slti         t0, a4, 1293
                  sra          a1, s4, s3
                  srli         a0, a0, 9
                  sra          tp, t3, s10
                  and          sp, a7, a0
                  slli         a0, s9, 29
                  sra          tp, s1, sp
                  srli         s7, s11, 3
                  sub          a1, a4, s3
                  div          t3, ra, tp
                  xori         s8, ra, -1989
                  andi         s1, s4, -1442
                  ori          t4, s9, 1968
                  sll          s6, s0, t3
                  srli         gp, s11, 23
                  sub          t1, sp, s2
                  lui          t3, 44914
                  or           a0, t3, s8
                  xor          s5, s11, sp
                  and          sp, a0, zero
                  ori          s11, a3, 1818
                  xori         s9, ra, 1769
                  lui          s5, 511366
                  mul          zero, ra, s1
                  div          sp, s10, a2
                  or           a5, s10, a2
                  sltiu        s7, t6, 440
                  lui          t0, 624685
                  srl          s8, t5, a1
                  slli         s0, s0, 6
                  sra          a0, a4, s8
                  sltu         t2, s2, t0
                  or           tp, s4, s8
                  add          a7, a3, a4
                  srli         s11, s10, 26
                  sub          ra, s7, s1
                  and          s5, a1, sp
                  xori         t4, s3, 2003
                  slt          s6, s2, t3
                  remu         t1, s0, sp
                  add          s8, a1, a2
                  mul          s2, s8, a4
                  mul          t0, ra, t6
                  srli         s2, a1, 4
                  slli         ra, s3, 10
                  divu         t2, t3, s4
                  sltiu        s6, s2, -628
                  mulhsu       s11, s9, s4
                  div          a7, a5, t4
                  xori         t6, tp, 235
                  xori         s2, s0, -1681
                  mulh         s2, t6, t2
                  remu         s4, s7, gp
                  divu         a1, zero, a6
                  ori          a1, s3, 612
                  mulhsu       t1, t3, sp
                  xori         s1, t6, 42
                  slt          t6, tp, s0
                  rem          s6, t1, a5
                  andi         s1, t6, -1891
                  nop
                  srai         t0, t4, 2
                  sub          a4, s6, t4
                  andi         t2, s3, 1045
                  remu         t1, s4, a4
                  or           s4, s10, s2
                  sll          a5, s6, s3
                  xor          s7, a7, s11
                  xor          a3, zero, a3
                  slti         a4, tp, 306
                  remu         s9, a1, a3
                  sub          s8, s0, s6
                  div          s5, a5, gp
                  andi         a2, s3, -211
                  or           a2, a1, a3
                  sra          s6, t2, s1
                  and          tp, t4, t6
                  sll          t2, a4, a3
                  nop
                  div          s11, s10, t0
                  and          a5, t1, a6
                  sll          t0, a3, t0
                  srai         s2, a4, 12
                  slli         s7, ra, 19
                  mul          a1, a5, t1
                  rem          a2, t1, t1
                  rem          s6, a3, s11
                  nop
                  lui          tp, 617122
                  mulhu        t0, a1, s1
                  lui          s1, 870936
                  remu         tp, a6, a3
                  divu         a4, s9, s8
                  srai         s0, t2, 31
                  divu         a4, ra, s0
                  add          a7, zero, sp
                  sltiu        t2, a7, -1411
                  sll          a5, s6, s11
                  div          s4, zero, a4
                  rem          s11, t3, s9
                  ori          s0, t6, -1530
                  slti         s2, t4, -444
                  slli         a0, zero, 17
                  xor          a0, s4, tp
                  mulhsu       a4, s11, s4
                  rem          s0, a3, t4
                  mulhu        t4, a7, s8
                  slt          t4, t2, tp
                  sltiu        s0, a1, 1088
                  xori         t2, t1, -1754
                  and          a2, s3, s8
                  mulhsu       a0, s4, t4
                  or           t2, t4, gp
                  slti         a3, s8, -1705
                  mulhsu       gp, s4, s0
                  auipc        t1, 377815
                  slt          a0, a7, s5
                  mulhsu       s5, s0, a5
                  mulhu        a0, s4, t1
                  mulhsu       t6, s10, s8
                  sltu         s4, t6, t1
                  srli         a4, ra, 23
                  and          t1, t5, s10
                  mulhsu       a0, s9, a5
                  mulhsu       s11, zero, s3
                  remu         a3, s8, a1
                  mul          a6, a5, s8
                  mulhu        a2, t3, a1
                  srai         s1, t6, 13
                  ori          a1, t6, -1331
                  remu         s4, s11, a4
                  divu         t3, s2, t2
                  slt          t1, s11, s1
                  nop
                  slli         gp, a5, 24
                  divu         t4, sp, s0
                  andi         a4, t5, 197
                  divu         s8, s7, s4
                  divu         tp, a7, a2
                  add          tp, s1, a1
                  divu         a6, s3, a5
                  sll          s5, s2, s11
                  mulh         t0, s9, t0
                  andi         s7, s8, -1175
                  srai         ra, s11, 20
                  ori          t4, s7, -155
                  mulh         a3, a3, s5
                  mulhsu       t2, zero, s11
                  add          t3, s3, t5
                  addi         s7, a4, -1457
                  addi         zero, s0, 1148
                  sll          s8, t5, sp
                  sll          t2, t1, a7
                  remu         a3, a1, a5
                  srai         gp, a5, 21
                  srl          a1, s10, s9
                  mulhsu       a6, tp, s6
                  auipc        t4, 997705
                  srli         t3, gp, 23
                  andi         a4, s6, 1235
                  mul          s4, s1, s3
                  sra          ra, t6, t2
                  xori         s2, s8, -1385
                  srai         zero, s8, 25
                  xor          s11, t1, ra
                  addi         a6, gp, 356
                  slti         s4, a1, -1207
                  addi         t0, ra, -525
                  mulh         t3, t1, t0
                  andi         a5, t1, 1804
                  divu         a4, s6, a1
                  mulhsu       s8, t5, t6
                  xor          t3, sp, ra
                  sltiu        tp, a3, -249
                  slt          t4, a5, t6
                  srl          a3, zero, t6
                  sll          a1, sp, t6
                  mulh         a6, t0, a7
                  mulhsu       t2, s3, t6
                  andi         a0, ra, -1621
                  rem          a7, a6, s5
                  sub          s8, s0, a0
                  sltu         a0, s2, s10
                  mulhsu       gp, a7, t5
                  srai         s8, s8, 28
                  sltu         t2, gp, s9
                  sltu         t3, s0, t6
                  rem          sp, s0, a0
                  rem          s7, s11, s7
                  srai         a7, t2, 25
                  mulh         t0, a0, s3
                  or           t3, a2, a1
                  srai         t0, a2, 7
                  sll          tp, a3, a2
                  sltiu        s6, a0, -950
                  auipc        s8, 1002925
                  ori          tp, a1, 2027
                  and          s5, s2, a7
                  srai         s8, t1, 23
                  add          ra, tp, s1
                  sltu         gp, s9, s7
                  andi         t1, s9, 1054
                  rem          s7, sp, t6
                  andi         s2, s9, -1652
                  srli         s5, s4, 7
                  mulhsu       a7, t2, tp
                  slli         s1, t6, 18
                  slti         a0, s1, 1486
                  auipc        s4, 253458
                  sltiu        s8, gp, 1803
                  srli         a6, gp, 27
                  ori          t3, s7, -341
                  srl          ra, t1, a0
                  addi         sp, t6, -1049
                  slt          t6, s2, ra
                  andi         s8, s10, -1300
                  xor          gp, s11, ra
                  lui          zero, 982540
                  srl          t0, gp, gp
                  slli         gp, s6, 10
                  mul          a3, s7, s7
                  sra          tp, gp, s7
                  add          t1, s5, a7
                  slti         ra, s5, 878
                  srai         s9, a5, 25
                  sll          a5, s9, s11
                  divu         s9, a1, t2
                  or           a4, a5, a4
                  add          s1, a6, t6
                  rem          a0, sp, a2
                  add          s0, a7, s9
                  srli         s0, s2, 27
                  lui          s7, 796600
                  and          a3, a0, t0
                  auipc        s11, 895793
                  rem          a3, gp, a7
                  div          s2, t0, s3
                  slli         a6, s2, 31
                  sltiu        s8, t0, 962
                  remu         s1, s4, s10
                  xori         s7, a0, -553
                  srai         t0, s7, 31
                  ori          s6, a2, 228
                  ori          a0, s7, -198
                  add          t2, t0, t3
                  slli         a0, t6, 22
                  xor          t6, s3, a7
                  sltu         s5, s4, tp
                  nop
                  srai         s6, s8, 6
                  div          s0, ra, a3
                  ori          s5, s8, -343
                  srl          s11, s1, s11
                  sub          sp, s5, t5
                  srai         a4, s11, 1
                  divu         s2, s3, t6
                  add          ra, t0, t3
                  slti         t6, s3, -2012
                  sltiu        a2, ra, 714
                  lui          s11, 343341
                  auipc        a6, 55752
                  nop
                  mulhu        a5, t5, a0
                  xor          t1, s10, s6
                  lui          a0, 346991
                  xor          a5, s6, t4
                  mulh         a3, s11, gp
                  andi         sp, a2, 1847
                  srai         s11, t6, 1
                  mulh         s6, s3, a0
                  xori         t1, s6, 1602
                  mulhu        t6, s2, a7
                  mulhsu       t6, tp, s8
                  and          sp, s3, a6
                  and          t3, t3, s2
                  or           a0, t2, s9
                  div          gp, a7, t4
                  or           t1, t1, s5
                  lui          a0, 728461
                  lui          t3, 722999
                  mulhu        t3, t2, a1
                  slti         a0, s11, -1499
                  xor          s5, t1, s9
                  lui          s2, 166677
                  remu         s9, t3, s6
                  lui          a7, 595179
                  sltiu        s9, s7, 705
                  slt          s11, s3, t6
                  mulh         a0, s8, a6
                  srl          a0, s5, a1
                  sll          gp, s8, t0
                  rem          s11, a4, s6
                  add          s8, t1, t0
                  addi         s2, s8, -177
                  or           sp, zero, gp
                  ori          a4, a7, -674
                  mulhu        zero, zero, a0
                  and          s4, s2, s9
                  xor          s9, a0, s9
                  sltu         t1, s8, sp
                  slli         t2, ra, 3
                  div          s4, s6, s4
                  srl          a3, s3, sp
                  slli         t2, s4, 30
                  mulhu        a2, a3, a3
                  auipc        s1, 94955
                  sltu         gp, a5, t6
                  remu         s2, s10, t2
                  mulhsu       a6, zero, s3
                  srl          a6, s8, s2
                  addi         ra, s0, -128
                  nop
                  srai         t2, s8, 17
                  mul          gp, t4, a7
                  or           t3, s7, s2
                  lui          s6, 695895
                  sub          s6, t3, t0
                  sra          t6, s1, s0
                  ori          a7, gp, -648
                  mulhsu       a3, s9, t3
                  srl          t1, s10, a6
                  xori         sp, a4, 779
                  sub          sp, s5, a2
                  andi         tp, a3, -1241
                  nop
                  andi         gp, a5, 185
                  divu         a2, sp, t1
                  slli         s0, s8, 1
                  slli         a6, s4, 0
                  sltiu        s2, a6, 431
                  auipc        a0, 144687
                  nop
                  add          a0, tp, gp
                  sltiu        t6, s0, 1035
                  xor          a3, s1, s0
                  slli         gp, s8, 3
                  divu         a4, a4, a4
                  sub          s2, zero, t3
                  mulhu        s5, ra, a5
                  xori         s2, a3, 1035
                  and          s11, s7, a0
                  sltiu        s1, s0, -1996
                  add          a0, a6, t4
                  addi         t3, s0, 1837
                  nop
                  srli         s0, a0, 29
                  srl          s6, gp, t4
                  mulhu        s7, a4, gp
                  auipc        a1, 1047207
                  mulh         s6, a3, a0
                  sll          s5, t5, ra
                  slli         a7, s4, 24
                  and          s11, s3, t4
                  add          a0, s0, a2
                  and          t0, a2, s11
                  sll          s11, s1, a4
                  mulhu        s2, a1, a2
                  mulhu        ra, sp, t0
                  mulhu        s11, t0, a1
                  xori         t2, s6, -64
                  sltiu        a1, ra, -407
                  nop
                  add          s2, s0, s0
                  srai         s1, s9, 22
                  divu         t3, a4, a0
                  and          a0, s1, t5
                  slti         a5, s10, 1107
                  slti         s2, s1, -1465
                  addi         a1, a5, -503
                  lui          a2, 161183
                  and          t0, t5, a2
                  slti         a2, s8, -1939
                  nop
                  srl          t6, s7, t2
                  ori          s7, a3, -1213
                  ori          s6, a4, -602
                  sll          sp, ra, s3
                  andi         s4, a6, 204
                  xor          s1, a6, s10
                  sra          s8, a6, s8
                  srli         t0, sp, 19
                  srli         t2, s9, 27
                  mulhsu       t3, s0, t1
                  sltiu        a4, s8, 75
                  xor          sp, t1, a5
                  sltiu        a5, t6, 913
                  andi         sp, s10, 1388
                  or           sp, t1, a4
                  or           ra, a7, s6
                  divu         a5, t4, a5
                  mulh         t1, t4, s1
                  andi         gp, s9, -101
                  xor          t3, s9, a5
                  srl          a3, s8, t5
                  slt          tp, s0, s6
                  mulhsu       ra, s4, t4
                  srli         s11, a6, 24
                  div          a0, s1, s7
                  nop
                  mulh         s9, a3, a1
                  srl          s0, s5, t5
                  sltu         t2, t6, s3
                  mulh         ra, sp, s9
                  sltu         a6, s7, t0
                  srai         a6, t1, 10
                  sub          a0, t1, t5
                  addi         t2, a4, 1246
                  add          a7, s5, a3
                  lui          a3, 248004
                  sltu         s7, t1, s6
                  srl          s1, s2, sp
                  nop
                  sltu         a6, a7, a2
                  xor          sp, s8, s0
                  sltiu        t3, s10, -643
                  slti         s4, a6, -371
                  lui          s1, 507645
                  nop
                  lui          a4, 838034
                  rem          s1, s2, a6
                  mulhu        s6, zero, zero
                  addi         a0, s2, 1442
                  mulhsu       a0, a6, a2
                  srai         gp, tp, 10
                  divu         s8, a5, t1
                  andi         s1, t2, -1123
                  remu         a1, s11, s6
                  srai         sp, s6, 13
                  div          tp, a5, t5
                  sltiu        s7, s0, 1602
                  slli         s2, a7, 15
                  and          t2, s1, t6
                  mulhsu       s0, s1, sp
                  slti         s4, s8, -693
                  remu         t6, s11, s4
                  sub          t1, gp, a1
                  sltiu        a1, ra, -348
                  sra          s4, a1, zero
                  slt          zero, a6, t6
                  xor          ra, a0, a5
                  sll          zero, s4, s8
                  ori          zero, a6, -832
                  auipc        s5, 326762
                  mulhu        a1, s5, t4
                  slt          zero, t0, t2
                  auipc        a1, 546118
                  lui          s0, 53237
                  srai         a6, s9, 8
                  sll          a7, a6, t5
                  andi         tp, s4, 1271
                  sub          a7, s9, sp
                  srai         a5, ra, 17
                  sltiu        tp, t6, -1441
                  lui          a0, 877465
                  slt          t6, t2, t1
                  mulhu        a3, s5, t0
                  rem          t6, t4, gp
                  auipc        a2, 270315
                  add          gp, gp, gp
                  divu         s9, a1, s0
                  mulh         zero, a7, gp
                  andi         t0, s3, 79
                  addi         a4, s9, 195
                  xori         s2, t2, -1938
                  mulhu        s0, t2, s11
                  srl          s1, t0, s0
                  or           s1, t5, s6
                  srai         t2, a5, 25
                  srai         s5, s7, 23
                  remu         t6, s3, tp
                  slt          a7, t0, s8
                  divu         s11, gp, t4
                  div          s6, s3, s11
                  div          s1, a4, t3
                  mulh         t3, a7, t6
                  srai         a6, t2, 30
                  mul          s7, t0, s4
                  or           sp, a7, gp
                  srli         s2, s9, 0
                  srai         t6, a0, 22
                  nop
                  slt          s8, t3, s8
                  addi         zero, a6, -1440
                  auipc        zero, 724914
                  mulhsu       t3, s2, a1
                  addi         s1, t3, -285
                  mul          zero, s3, s4
                  andi         s0, zero, 315
                  div          a3, sp, s4
                  sra          a2, s1, ra
                  nop
                  and          sp, t5, s5
                  and          a5, a5, s11
                  divu         s8, s0, a0
                  add          a6, tp, a3
                  srli         t2, a2, 4
                  add          zero, s7, sp
                  srli         s6, s3, 8
                  nop
                  sltiu        s5, t1, -9
                  or           t0, s8, s2
                  srli         gp, a1, 16
                  remu         a5, s2, s6
                  sra          s2, a6, a5
                  divu         a3, t3, s10
                  divu         s7, t0, s11
                  xori         a2, t6, -77
                  or           sp, s1, a6
                  mulhsu       a6, s11, ra
                  xori         gp, ra, 1765
                  rem          s9, t0, zero
                  and          s4, s10, s1
                  xor          a7, t6, s5
                  srai         t0, s8, 16
                  sll          a2, sp, t4
                  slli         s7, s10, 6
                  xor          a4, gp, t4
                  xori         s6, a1, 651
                  remu         t2, t5, s10
                  div          s9, s4, t0
                  mul          zero, s3, s10
                  xori         s4, a0, -618
                  andi         s6, t6, -1190
                  sltu         t6, zero, s4
                  sub          a2, s5, a5
                  andi         s0, s4, -1457
                  srli         tp, ra, 22
                  sub          s0, s3, gp
                  xor          a3, a2, s8
                  slti         a5, sp, 996
                  rem          a5, t4, s4
                  sra          s8, s4, sp
                  mulh         a4, s0, s3
                  srli         s11, tp, 8
                  xor          t3, s6, a7
                  sltu         a7, s9, a1
                  ori          t6, s9, 960
                  mulhsu       s2, s9, s1
                  nop
                  divu         s8, t3, t0
                  and          s6, s7, t6
                  slti         t3, s1, -14
                  slli         s7, a1, 5
                  slti         a3, sp, -1581
                  slti         t6, s7, -1178
                  lui          zero, 597521
                  sltiu        s11, t6, -812
                  or           t3, t1, s4
                  mulhsu       a1, a5, t5
                  slt          t0, a7, s7
                  andi         a1, s9, -994
                  nop
                  div          tp, tp, s8
                  mulhsu       a4, t2, t3
                  or           tp, sp, s11
                  sll          s9, s0, s0
                  auipc        s9, 668595
                  nop
                  srl          s11, gp, t5
                  mulhsu       t4, s9, t3
                  andi         gp, s10, 1091
                  sll          s9, sp, a1
                  and          a1, s0, a5
                  srli         s11, s0, 31
                  mulhu        tp, s9, a4
                  mulhsu       a7, a1, s1
                  auipc        s4, 212070
                  auipc        t6, 920235
                  xori         tp, s5, 662
                  mul          s7, t5, s0
                  mul          s7, s8, s6
                  mulh         a3, a6, s4
                  or           s6, a5, a7
                  srl          t2, a0, s9
                  slli         a4, a4, 15
                  slt          a0, zero, sp
                  sra          s2, tp, t4
                  div          a3, s2, t1
                  xor          s9, t0, t0
                  and          s6, a4, ra
                  sub          a3, s10, t5
                  and          s6, t4, s5
                  sltiu        a2, a7, 1624
                  and          s11, a1, s8
                  andi         t2, ra, 751
                  andi         s4, s1, 565
                  mulhsu       t4, t3, a3
                  ori          gp, t0, 1940
                  sub          a3, t4, t4
                  mul          t1, s1, s7
                  sltu         a4, t4, s9
                  andi         a4, sp, 78
                  or           a0, s10, s10
                  srai         s5, s11, 28
                  mul          a7, s3, t4
                  sra          tp, t2, a3
                  mulhu        s11, s7, t2
                  rem          s1, t5, tp
                  srl          t0, s7, t1
                  auipc        t4, 703296
                  ori          t2, s2, -1939
                  sra          s6, a5, t3
                  srl          a0, s2, t2
                  remu         a1, a3, ra
                  add          gp, a6, t3
                  sll          s2, a6, s5
                  sll          zero, zero, s4
                  add          zero, a6, tp
                  sltu         gp, a5, s6
                  addi         a5, t2, 1749
                  andi         s1, a6, 1904
                  sltiu        s8, s10, 472
                  addi         t2, a3, -1898
                  mulhsu       gp, s5, t5
                  ori          a2, a7, 1542
                  sub          a1, t4, a2
                  sll          a7, tp, t1
                  addi         a6, s2, -1232
                  sll          a3, t4, t3
                  add          s8, t2, s1
                  sra          s7, t5, s10
                  divu         a1, s4, sp
                  andi         s2, a5, -560
                  slti         t0, t4, 729
                  mulhsu       a7, s8, a7
                  add          s0, s8, ra
                  remu         a1, t5, s1
                  slli         s6, s2, 25
                  sra          tp, t6, t5
                  and          a2, a0, s8
                  slti         a5, s3, -1493
                  srli         ra, s2, 4
                  sub          a3, s6, s3
                  srli         a4, a5, 12
                  mulh         a1, s7, a5
                  div          s2, a1, t5
                  and          s2, a0, a3
                  sll          a6, zero, s6
                  div          s1, t5, t1
                  ori          a0, zero, 1649
                  mulhsu       a3, t5, t5
                  rem          s6, gp, t4
                  and          t0, a3, s10
                  div          s6, s5, a6
                  auipc        s0, 923009
                  addi         a0, a2, 1469
                  slti         a6, a6, -1908
                  lui          tp, 105946
                  srli         a2, s2, 1
                  mul          s8, s1, t4
                  mulhsu       a7, t6, t6
                  remu         tp, s1, a4
                  or           s1, t3, a5
                  mulh         s0, s3, a2
                  lui          tp, 625507
                  srli         t6, t4, 18
                  srl          s8, s8, sp
                  add          a2, a1, t2
                  andi         sp, a4, 544
                  xori         ra, t6, 1478
                  add          s7, a7, a1
                  srli         s6, a0, 23
                  slli         a4, s5, 12
                  xor          t0, s1, a5
                  mulh         s7, tp, a5
                  and          t2, t2, s3
                  rem          s0, t6, a6
                  andi         s9, ra, -552
                  divu         gp, s7, t5
                  sub          t2, a0, s0
                  addi         s6, t6, -928
                  lui          s8, 571276
                  ori          tp, gp, 61
                  slti         a3, s0, 699
                  sll          t3, s2, t1
                  slti         s11, zero, 1491
                  nop
                  slti         zero, s1, 1771
                  sub          a6, a4, a3
                  andi         a0, a1, 1746
                  mulh         ra, s6, t2
                  sltu         a0, a6, t5
                  slli         a0, t3, 13
                  rem          s7, s2, a7
                  slt          t0, t5, tp
                  addi         s5, s6, -1429
                  slli         a5, t3, 17
                  andi         a5, a7, -526
                  slli         t1, a6, 18
                  remu         s4, a3, s8
                  srli         s2, ra, 23
                  slti         a4, sp, -1747
                  or           t4, ra, s7
                  addi         tp, s1, -2
                  mulh         s11, sp, t0
                  nop
                  auipc        s8, 678698
                  slli         s2, s0, 20
                  mulhu        a0, a4, s6
                  sltu         t3, a5, t2
                  addi         s7, t6, -848
                  or           a7, ra, a5
                  srai         t6, s3, 0
                  nop
                  divu         gp, t4, t2
                  mul          t0, a5, t5
                  divu         s0, t0, s6
                  xor          s0, s3, s10
                  and          a2, a0, a5
                  addi         a5, t3, -1114
                  sub          s1, s0, t6
                  srl          t4, t0, t6
                  mulh         t1, a5, s1
                  mulh         t3, tp, zero
                  mulhsu       s5, t2, a4
                  add          a2, s4, s7
                  and          t2, t5, s1
                  auipc        t1, 349365
                  mulhsu       gp, a4, a6
                  srli         s9, s1, 30
                  sra          s11, t2, s0
                  sltiu        tp, a2, 588
                  andi         a2, gp, 1619
                  sll          s1, zero, s9
                  ori          t3, s4, 231
                  sltiu        s9, t5, 1348
                  lui          t4, 866420
                  xor          gp, zero, t1
                  nop
                  mulh         t3, t2, ra
                  mulh         t0, sp, t4
                  srl          t1, ra, s3
                  auipc        a1, 451934
                  auipc        s7, 748057
                  sub          sp, a4, s0
                  sll          tp, gp, t5
                  and          zero, tp, a7
                  divu         t6, t1, a5
                  sra          s4, s1, a7
                  xor          a6, s5, s7
                  slli         t0, t1, 13
                  xor          t1, a3, s1
                  add          a6, t6, t0
                  mulhsu       s7, s0, s8
                  div          s0, gp, a4
                  ori          zero, t1, -1597
                  srl          gp, s6, s7
                  slt          s2, s11, zero
                  mulhsu       a0, s9, t4
                  auipc        s9, 297802
                  xori         a7, s1, 515
                  addi         sp, t5, 1957
                  div          a4, s8, a5
                  or           s2, s11, sp
                  srai         s11, s1, 7
                  mul          s7, s1, a5
                  sll          t3, s4, t5
                  remu         t3, t3, t3
                  remu         s7, t0, s7
                  or           a0, t4, a4
                  or           s1, a0, a4
                  xori         s5, s4, 455
                  lui          s8, 602113
                  sub          ra, a0, s7
                  mulhsu       s2, s1, a1
                  lui          a7, 381751
                  addi         s4, a1, 1689
                  or           s4, a1, s4
                  srl          sp, s2, s5
                  or           t2, t5, a4
                  sltiu        t6, s3, 1231
                  srai         t2, t5, 24
                  add          s0, zero, a5
                  sltu         sp, a1, s6
                  sltiu        a2, a3, -1639
                  slti         s9, a4, -1746
                  andi         sp, tp, -1404
                  add          sp, tp, s4
                  slti         s11, gp, -688
                  sltu         t4, a0, a4
                  add          s2, t2, tp
                  slli         s7, t4, 11
                  mul          s11, s10, s1
                  sub          a0, s7, ra
                  slt          s11, s10, s11
                  slli         s11, s10, 0
                  add          s8, t5, t3
                  rem          t6, a1, s8
                  auipc        s4, 371958
                  mulhsu       s7, t1, t3
                  auipc        a4, 966559
                  auipc        s11, 103202
                  slti         a5, s10, -875
                  xori         s2, s11, -1333
                  srli         t3, t0, 30
                  or           a6, a1, a5
                  div          s11, a3, a3
                  sll          t4, s1, t6
                  xor          a7, a0, s5
                  addi         gp, t0, -147
                  slt          sp, s10, s3
                  rem          t6, a7, tp
                  xor          a2, s3, s11
                  mulhu        s11, t1, a1
                  auipc        t6, 295336
                  ori          s8, t3, 1509
                  srai         s11, a6, 26
                  lui          tp, 19230
                  lui          t4, 507199
                  add          t2, t2, a0
                  slti         t3, s2, 220
                  slli         t2, t4, 22
                  mulhu        s5, t6, s3
                  srli         t6, s3, 4
                  lui          t1, 328096
                  mulhsu       s2, s5, a0
                  srli         s0, s3, 4
                  addi         sp, sp, -610
                  rem          zero, t1, a7
                  sll          t6, s2, s0
                  mulhsu       gp, a1, s11
                  remu         sp, sp, t5
                  and          ra, ra, t1
                  ori          a2, t5, 1120
                  addi         a5, t0, -1260
                  srli         tp, s11, 11
                  ori          a1, s7, -1059
                  slli         zero, s10, 31
                  remu         a3, gp, t3
                  srai         t4, a7, 3
                  mulhu        ra, s3, a6
                  xori         t2, s6, -1144
                  div          s0, a6, s4
                  mulhu        s6, s10, a0
                  remu         s2, a5, s6
                  rem          s2, s4, s7
                  mulhsu       t0, s10, gp
                  sra          zero, sp, s3
                  slt          a7, a7, tp
                  mul          t2, s6, t6
                  rem          ra, a1, s10
                  add          t2, s11, t4
                  sltiu        a5, s3, 1348
                  xor          s8, s6, t2
                  or           zero, tp, t6
                  xori         sp, s7, -1064
                  add          sp, t0, s2
                  sub          a6, s3, a0
                  sub          s6, s1, sp
                  mul          ra, t5, s3
                  srl          tp, s0, tp
                  srai         a4, t4, 30
                  addi         s4, gp, -160
                  andi         tp, zero, -1762
                  mulh         s2, sp, ra
                  or           tp, s0, a7
                  slli         t1, a6, 21
                  sltiu        t1, s9, 804
                  mulhu        t3, s6, t1
                  div          a5, s2, s3
                  divu         s1, s6, t0
                  srai         s0, s2, 27
                  and          t4, s8, s7
                  andi         s1, a2, -195
                  lui          s11, 43446
                  srai         a6, s3, 26
                  mulhu        zero, s3, a5
                  divu         s9, tp, sp
                  xor          s2, t0, t5
                  and          s6, t6, a1
                  sltiu        s6, s5, -1440
                  addi         gp, zero, -995
                  slti         s1, s9, 597
                  mulh         a5, a6, a3
                  lui          zero, 914935
                  lui          s9, 412933
                  div          a0, t1, s11
                  sltu         t3, t4, s0
                  andi         zero, a3, -601
                  srli         a7, t2, 17
                  lui          a0, 541724
                  addi         a3, a4, -2004
                  sll          sp, a6, tp
                  addi         t6, ra, 148
                  sra          ra, t6, s7
                  rem          s6, s9, s9
                  addi         t3, s9, -1306
                  sll          s7, t2, t3
                  mulhu        t6, tp, tp
                  slt          ra, t2, gp
                  sll          a0, ra, s10
                  srl          s2, s2, t4
                  ori          s6, s3, -584
                  slti         a4, s9, 848
                  slti         s9, a6, -325
                  mulh         t4, s9, s10
                  sltu         t3, t2, tp
                  sltiu        s9, a2, 482
                  auipc        t1, 38041
                  sub          a1, a7, s9
                  srli         s8, sp, 16
                  mulh         s7, s2, s2
                  div          t3, a5, s7
                  div          a6, t1, s6
                  mul          a5, s11, a4
                  mul          a0, a2, sp
                  div          a6, s4, t3
                  mul          s7, ra, ra
                  ori          sp, ra, 1217
                  slti         a6, s11, 746
                  lui          a5, 279969
                  sll          tp, gp, t3
                  slt          a5, a4, t5
                  andi         a5, t5, 1181
                  xori         zero, a4, 1234
                  sra          t4, s9, zero
                  and          t3, s3, t1
                  mulhsu       s0, a0, t1
                  or           a0, t6, a0
                  sltu         sp, s6, a4
                  div          s4, s7, ra
                  nop
                  xor          s11, a2, a5
                  xor          s9, ra, t4
                  sll          a7, a7, gp
                  srli         a6, a1, 27
                  mulhu        t4, s5, s7
                  add          a4, a5, t3
                  andi         a5, a1, 1746
                  ori          a4, a6, -896
                  andi         gp, t6, 533
                  nop
                  lui          s5, 696050
                  sll          a4, s9, s7
                  andi         ra, s9, 1224
                  and          a7, t5, s7
                  and          s1, s10, s2
                  mulhsu       ra, gp, t6
                  srli         ra, s10, 27
                  ori          a0, t6, -1304
                  or           s8, ra, ra
                  srai         a7, a4, 13
                  auipc        t0, 56820
                  mulhsu       t0, a3, s0
                  div          s8, s8, sp
                  andi         t1, sp, -1986
                  sltu         a6, s10, gp
                  sltiu        t4, t3, -748
                  sll          s0, a2, a2
                  andi         s1, s4, 986
                  xor          gp, s9, s10
                  and          s1, s11, s3
                  auipc        ra, 892390
                  sltu         gp, s0, s6
                  sra          a0, a7, tp
                  divu         a7, s6, sp
                  sub          t1, sp, t5
                  slti         a7, s1, -1559
                  add          t6, t5, s2
                  auipc        t4, 779188
                  add          s2, a2, a7
                  sra          gp, a6, s7
                  sltiu        a4, s0, 1526
                  sltu         s11, t4, zero
                  sub          sp, s8, s5
                  srl          s0, s7, s8
                  divu         a7, t0, a7
                  xor          gp, s7, s11
                  auipc        a3, 864838
                  nop
                  mulhsu       zero, a0, s10
                  div          s6, a0, s1
                  srai         a4, s4, 17
                  srli         s4, s10, 12
                  sltu         a2, zero, a6
                  mulhu        t4, gp, t1
                  srli         t4, s11, 24
                  add          t2, s0, a1
                  srai         t4, s3, 26
                  addi         a2, s7, 1750
                  or           s4, zero, s6
                  sra          s6, s4, s9
                  sll          s8, s2, s9
                  sltiu        a4, t3, 89
                  srai         a4, a5, 9
                  slli         a1, t6, 6
                  mulhsu       t4, s10, a2
                  xor          s11, t1, s1
                  xori         t3, a4, -1602
                  div          s0, a7, t1
                  divu         t6, t1, s1
                  div          t3, s4, t1
                  addi         s4, s7, 1284
                  srai         s11, s2, 21
                  rem          s11, t0, a2
                  slli         t3, t0, 21
                  ori          s5, s9, -1607
                  auipc        a0, 395135
                  sub          s2, t3, s1
                  or           t6, sp, s8
                  srai         t6, t1, 15
                  mulhu        s9, t2, t0
                  slt          s2, s6, a3
                  mulhsu       s8, s8, a3
                  addi         s9, sp, 1915
                  sll          t2, s0, t6
                  mul          s1, s10, s0
                  sltu         ra, a6, a6
                  auipc        a6, 452750
                  mulhsu       a7, s3, t0
                  sra          s11, gp, s3
                  or           s2, s10, s4
                  sltu         a6, s0, ra
                  slti         a0, t5, -93
                  srli         s8, s2, 8
                  mulh         tp, s9, t4
                  sltiu        t6, tp, 830
                  mul          a0, t6, s2
                  mul          a4, a1, s11
                  sltiu        s0, t3, 1883
                  sltiu        ra, tp, -1777
                  slli         tp, s0, 15
                  mul          s7, ra, a3
                  sltu         t4, tp, t1
                  lui          sp, 609487
                  lui          ra, 943106
                  ori          s7, t5, 284
                  slli         s7, tp, 28
                  divu         ra, t0, t0
                  sub          s8, s3, zero
                  rem          s5, s6, gp
                  sub          sp, ra, t0
                  srli         sp, s4, 7
                  ori          a5, sp, -940
                  srl          s2, a6, a5
                  nop
                  or           s8, s0, a7
                  nop
                  srl          tp, s7, s6
                  srl          t3, t6, ra
                  or           a7, s5, t2
                  auipc        t2, 936546
                  addi         a5, tp, 583
                  divu         t4, s6, t6
                  andi         a3, s1, -1950
                  srl          s7, t4, a2
                  slt          s8, ra, s4
                  divu         s6, s4, a5
                  sltiu        s2, sp, 1414
                  mulhu        a0, s3, gp
                  srli         a6, s1, 21
                  div          a3, s4, zero
                  divu         s1, s1, s11
                  sltu         a4, s11, a3
                  div          s9, t0, a3
                  ori          a5, t1, -1532
                  nop
                  mul          zero, s0, ra
                  sltu         s5, s9, t6
                  auipc        sp, 1013430
                  sub          t4, tp, s6
                  xori         a3, a7, -868
                  srl          s2, a7, t0
                  andi         ra, t0, 1713
                  add          s11, a7, s10
                  mulh         t6, s3, s2
                  lui          s0, 387399
                  lui          gp, 880357
                  xori         s5, sp, -1148
                  xori         t4, a7, -57
                  remu         s11, a5, s9
                  divu         a5, s4, s2
                  auipc        s4, 1009103
                  and          t0, a6, a1
                  div          s1, s3, a3
                  mulhsu       s11, t5, a4
                  addi         a1, s11, 2
                  xori         s11, a5, -479
                  mulhsu       zero, a4, s7
                  add          t3, tp, sp
                  xori         a2, t0, 1730
                  sub          a7, a7, a7
                  srli         s1, s11, 25
                  mulhu        t6, s0, t6
                  remu         a7, t5, t3
                  slli         a7, tp, 8
                  div          s0, t5, s6
                  add          s2, s2, t1
                  srli         t0, a0, 24
                  remu         a3, a3, t3
                  add          ra, s9, s4
                  rem          s1, a3, t0
                  divu         a2, s1, t2
                  and          a3, s2, t3
                  sltu         a0, tp, t3
                  addi         t3, a0, -1473
                  nop
                  xori         s11, a3, 304
                  or           s4, t4, zero
                  srai         s7, s7, 1
                  mulhsu       a7, a3, t4
                  xor          t3, a7, s6
                  srli         a4, s5, 13
                  sub          a1, a6, s5
                  slli         s4, s5, 27
                  mul          a1, tp, a4
                  sltu         t4, a6, t1
                  slt          s2, t0, s6
                  slt          gp, s1, sp
                  mul          s4, s11, ra
                  mulhu        zero, s7, a1
                  rem          t4, a0, t5
                  srai         s4, a1, 7
                  add          s9, t5, t2
                  div          a7, zero, a6
                  or           t1, s4, gp
                  and          a7, t2, t2
                  mulhsu       s11, a4, a5
                  remu         a0, tp, zero
                  and          ra, a7, s3
                  add          s2, s5, a1
                  or           s8, ra, s7
                  mulh         zero, t5, t6
                  ori          zero, tp, 321
                  slti         s11, sp, 1945
                  remu         t0, a5, s10
                  nop
                  sll          t4, t3, s4
                  srai         t3, s6, 13
                  sltiu        s5, gp, -987
                  sltu         a7, s3, t6
                  addi         ra, t1, -1064
                  mulhsu       s5, sp, zero
                  srai         sp, zero, 19
                  lui          s8, 1045782
                  slt          ra, t3, s10
                  add          a2, sp, t1
                  srl          a3, t5, a1
                  remu         s5, s2, t0
                  sra          s0, t0, ra
                  srl          s1, a5, t4
                  div          t2, a6, s2
                  auipc        a0, 74296
                  mulh         sp, t3, a7
                  mulh         a5, s7, a2
                  div          a5, t6, a0
                  sra          a7, s11, a0
                  div          zero, s10, a6
                  mulh         ra, a2, t2
                  mulh         sp, gp, s5
                  and          a0, sp, s2
                  ori          s0, s0, 1478
                  srli         s6, a2, 8
                  sltiu        a6, a7, 452
                  lui          s4, 351320
                  xor          a4, a2, s11
                  slli         t0, s2, 15
                  auipc        s4, 247640
                  and          sp, a6, t0
                  sub          s6, tp, s11
                  rem          t0, ra, t6
                  auipc        a5, 338489
                  nop
                  sub          s7, a7, s10
                  mulhsu       a3, a7, a0
                  sltiu        s4, t3, -469
                  andi         a4, a3, -181
                  auipc        t2, 323730
                  addi         s11, t1, 766
                  sub          s0, s1, a6
                  div          t2, a6, t3
                  slli         ra, s10, 16
                  mulhsu       zero, a4, ra
                  xori         s5, a2, 1167
                  slt          s2, t1, s0
                  div          t6, t2, ra
                  mul          t4, s11, t1
                  rem          s11, t1, a4
                  slt          s6, s11, a6
                  srai         a0, a1, 29
                  add          s7, t5, s10
                  and          t4, s0, t6
                  sltiu        gp, t6, 1591
                  andi         s8, t2, -2042
                  srai         a7, t2, 25
                  sltu         a5, t4, s8
                  nop
                  andi         t4, a4, -842
                  or           gp, a2, s5
                  srai         gp, sp, 19
                  srli         a7, s6, 19
                  sltu         s0, s0, s10
                  divu         tp, s5, a4
                  addi         s7, t4, -1678
                  srli         s4, t5, 26
                  sltiu        tp, a6, -552
                  slt          t2, s7, s2
                  add          a3, s1, a4
                  slli         ra, a5, 12
                  divu         t6, s5, s11
                  sltiu        t4, gp, -437
                  add          a5, a6, t0
                  andi         s9, s5, -2039
                  sltu         t4, s5, gp
                  rem          a4, a7, a0
                  rem          a3, s5, a3
                  auipc        a1, 222031
                  xori         s5, t5, -1589
                  sltu         t6, s5, s9
                  rem          t2, zero, sp
                  mulhu        s7, t2, t3
                  and          a3, t5, tp
                  sltu         t6, t2, s1
                  mulh         s2, sp, s3
                  auipc        a5, 200417
                  addi         t6, a6, 572
                  srli         a7, s6, 14
                  srl          a5, t0, zero
                  ori          a5, sp, -1122
                  lui          s0, 334254
                  auipc        s2, 607043
                  slti         t4, a3, 1129
                  sltu         a2, a5, t0
                  slli         t4, t4, 6
                  sltiu        tp, s6, -1941
                  sra          s4, s6, s11
                  divu         tp, s9, a4
                  or           ra, s7, a2
                  sltiu        t2, t1, 702
                  lui          sp, 75779
                  srli         a3, t0, 15
                  xori         t2, t5, -1666
                  sltu         a7, s5, sp
                  mul          s6, sp, s9
                  lui          t4, 1036343
                  auipc        s8, 1022045
                  auipc        s8, 391032
                  mulhu        t0, t6, s8
                  slt          ra, s11, a3
                  mulhu        s4, s9, a7
                  mulhsu       zero, s4, s2
                  add          a0, t5, t4
                  slti         a2, s8, 1538
                  divu         a3, a4, s1
                  mulhu        t6, s9, s8
                  andi         ra, s0, 1322
                  srli         a4, a5, 16
                  slt          sp, t6, a5
                  mulhsu       s11, t2, t0
                  mulhu        a0, sp, t1
                  sltiu        zero, s3, 60
                  mul          s7, a2, a2
                  mul          a7, s9, sp
                  xori         tp, s9, 934
                  and          s7, s3, t2
                  auipc        a1, 252356
                  slti         gp, t1, 970
                  xori         ra, s11, -662
                  slli         a4, s11, 26
                  slli         tp, s5, 14
                  srli         a6, s3, 10
                  lui          s2, 84949
                  ori          t2, t1, 1885
                  ori          t6, s0, 428
                  lui          zero, 513343
                  srli         a0, a1, 11
                  slt          a0, a6, s3
                  rem          s5, s5, t3
                  addi         s7, s6, 1300
                  xor          a5, ra, t3
                  srl          t0, s0, s4
                  remu         a2, s1, zero
                  remu         s4, s8, s1
                  slti         a0, t2, 612
                  rem          s1, sp, ra
                  srli         zero, s11, 1
                  remu         s0, t4, tp
                  srai         a4, s0, 1
                  addi         s9, a1, 1916
                  slt          a7, a2, s4
                  andi         s8, t5, 751
                  addi         a5, s0, -1737
                  andi         a7, t5, -1461
                  sub          s0, s4, a4
                  mulh         s4, a4, t6
                  or           t6, t5, t0
                  srli         a4, t6, 17
                  div          s0, a6, s1
                  sll          a2, s0, t6
                  sltu         t2, t4, t5
                  slti         s7, t4, -270
                  andi         s6, s9, -624
                  rem          s4, ra, s11
                  and          s2, t3, ra
                  div          s8, s3, s8
                  auipc        a6, 217394
                  srl          t2, s0, t5
                  ori          a1, s3, -1711
                  slti         s6, t0, -1348
                  ori          s11, ra, 537
                  andi         a6, s6, 1779
                  srl          s8, a2, a0
                  sll          t3, a5, s11
                  mulhu        t1, gp, a4
                  divu         s1, s4, s0
                  sll          t0, a2, ra
                  ori          s8, s6, -1809
                  add          s2, ra, a6
                  ori          sp, a4, -1978
                  div          t3, s0, ra
                  rem          s5, t1, s8
                  andi         sp, s10, -1366
                  srli         a0, t4, 9
                  xori         sp, s3, 97
                  slti         s6, s3, -933
                  divu         t0, a1, a4
                  remu         s4, a2, gp
                  sltiu        s6, s8, 1174
                  auipc        ra, 114842
                  divu         s5, s1, s11
                  remu         s11, s1, s10
                  slt          a2, t1, t3
                  lui          a3, 436885
                  addi         s7, s6, 1625
                  mulhu        s1, t1, ra
                  sub          s5, a1, t5
                  or           tp, t0, s0
                  add          t2, s2, t1
                  sra          s6, a7, zero
                  slti         a6, t5, -634
                  slli         a5, s9, 26
                  remu         s1, t6, s7
                  xori         s8, t3, -1815
                  xori         s11, t0, 303
                  nop
                  divu         t1, t0, t5
                  xori         t2, t0, 874
                  sub          sp, s6, s3
                  ori          s7, tp, -1751
                  mulhu        a0, s9, a4
                  remu         s9, s3, a5
                  srli         t2, ra, 22
                  mul          t4, s11, s11
                  nop
                  mulhu        s8, a7, a5
                  slt          ra, a6, s4
                  srli         s4, a3, 3
                  mul          a7, s11, t2
                  mulhsu       t2, t1, t2
                  sltiu        t4, s4, -690
                  sub          zero, t5, s10
                  slli         a3, s11, 21
                  and          zero, a2, s2
                  sltiu        s1, s5, -1710
                  mulhsu       s11, tp, s6
                  sra          t1, s11, a3
                  lui          gp, 694039
                  andi         s5, gp, 1988
                  div          ra, s9, zero
                  add          a2, a0, gp
                  remu         t3, a4, a2
                  srai         a1, t0, 25
                  lui          t6, 624863
                  sub          t2, s8, sp
                  add          s9, s3, s6
                  remu         s1, t5, t3
                  ori          a0, tp, -386
                  sra          s4, s6, a6
                  andi         a4, t0, 780
                  mulhsu       a4, tp, t1
                  rem          s7, a6, s9
                  slli         s4, ra, 8
                  sltu         gp, a1, gp
                  add          s4, s7, ra
                  and          t0, ra, t0
                  lui          t3, 395368
                  srai         a2, s1, 29
                  mulhsu       sp, a3, s2
                  sltiu        t6, s3, -646
                  or           s9, t5, s1
                  sub          a4, a3, s3
                  sltu         s0, tp, zero
                  mulhsu       s0, a7, t3
                  sub          s8, ra, s1
                  mulh         s0, s4, t6
                  xor          a2, t6, a5
                  ori          s8, t3, -825
                  srl          gp, sp, s9
                  or           s2, t2, t5
                  slt          a4, a7, t4
                  mulh         zero, gp, t1
                  sll          a4, gp, t0
                  divu         a1, t6, s10
                  sltu         t6, a3, ra
                  mulhsu       a1, sp, zero
                  add          s9, t1, t0
                  sltu         a2, s0, s1
                  xori         a3, a0, -1083
                  srai         s9, a2, 10
                  rem          s1, s1, a2
                  sltu         t0, s5, a7
                  sltiu        s11, a1, 741
                  and          s6, s1, t4
                  sub          a5, a2, s2
                  slti         t0, s6, 324
                  or           t4, a1, a4
                  andi         s11, a3, -645
                  slli         ra, s1, 14
                  mulhu        ra, s1, ra
                  divu         t0, sp, zero
                  srl          t3, a0, a4
                  mul          s0, s9, t3
                  sltu         s0, s6, ra
                  xori         ra, s1, 684
                  slli         s5, t3, 7
                  sll          ra, s8, s2
                  mulhu        s11, tp, a1
                  slt          gp, s9, t6
                  sub          s6, a4, t2
                  sltu         t1, gp, t2
                  slli         s5, a1, 22
                  divu         t6, ra, gp
                  srai         a7, s11, 28
                  sltu         s5, tp, a7
                  srli         s2, s4, 14
                  srl          a3, s9, zero
                  xori         t4, s7, -1236
                  or           gp, t3, t0
                  srli         a0, a1, 0
                  ori          s11, a5, 43
                  andi         t0, gp, 1078
                  slli         s7, ra, 12
                  or           s4, t0, s2
                  divu         t3, s0, s0
                  mulh         gp, s8, s0
                  sra          a7, a4, s9
                  srai         tp, t6, 16
                  sltiu        a4, t0, 798
                  andi         a3, s6, 1775
                  srai         s4, a3, 0
                  div          zero, a2, s5
                  ori          s4, s1, -607
                  nop
                  mulhsu       s2, tp, tp
                  slli         t4, a5, 29
                  and          a6, s2, s7
                  mulhu        a7, t1, t0
                  remu         a0, a6, a0
                  mulhsu       sp, s11, ra
                  mulhsu       a0, a5, t1
                  sub          t0, t2, a2
                  xor          gp, t6, s3
                  sra          t4, s11, s1
                  sll          a1, t4, s7
                  rem          s2, s7, a5
                  divu         a0, a6, s2
                  slti         a4, t2, 1009
                  add          a6, s2, s10
                  ori          s1, s11, 1364
                  xori         t6, zero, 759
                  sll          a1, a3, a1
                  sltu         s0, t4, t6
                  sra          s9, t0, s2
                  mulhu        a7, t5, a6
                  lui          s1, 288147
                  srli         zero, a7, 29
                  or           s0, a7, sp
                  mul          t4, ra, s7
                  slli         a6, s11, 14
                  remu         t2, s5, s2
                  srl          t2, sp, tp
                  slli         s6, a7, 12
                  xori         a2, a1, -1092
                  sub          ra, zero, s6
                  auipc        s5, 158409
                  slli         s5, t3, 21
                  sub          t3, t0, a2
                  mulhu        tp, t6, s2
                  slti         s1, s2, -451
                  sub          s4, s0, a5
                  sra          s6, a1, s6
                  slti         tp, t6, 1147
                  srl          s9, a0, s11
                  xori         s11, tp, 455
                  lui          s4, 61427
                  xor          s8, a5, t5
                  slli         sp, s0, 1
                  srai         s5, a6, 28
                  andi         s8, t6, -1656
                  lui          t6, 734923
                  mul          s8, s4, ra
                  mulhsu       a7, s2, ra
                  xor          s7, t4, s2
                  sltiu        a5, a1, 71
                  srli         s7, t2, 31
                  sra          s4, a6, a2
                  nop
                  sub          zero, s11, a1
                  sltiu        ra, s6, -546
                  srli         a5, s3, 10
                  rem          a1, t2, a5
                  sltu         t6, t6, t3
                  srli         a1, ra, 6
                  slti         t2, t0, -1309
                  addi         a1, t3, 1346
                  slt          a7, tp, a1
                  nop
                  rem          s7, s11, t6
                  slti         s4, s1, 342
                  sra          s5, t3, a6
                  sll          s1, gp, s9
                  mul          s0, s8, a5
                  xor          s7, s1, a2
                  lui          a1, 677801
                  ori          s9, a7, 1605
                  srai         s9, gp, 3
                  rem          tp, a2, s2
                  rem          s1, gp, s7
                  sltu         t6, s4, s8
                  sltu         t6, s2, sp
                  auipc        t3, 951298
                  remu         s9, a0, s7
                  xori         t0, s10, -198
                  mulhsu       a0, s10, a5
                  or           s9, t6, a4
                  mul          a1, s3, tp
                  add          a3, t6, s3
                  sltiu        s6, a0, -1593
                  slti         t6, t6, 1628
                  sll          ra, s6, s2
                  sll          s9, s5, s8
                  sub          t1, a4, gp
                  mulhsu       s1, s3, t6
                  div          s2, s3, s7
                  auipc        t2, 960784
                  auipc        a5, 14387
                  rem          t2, a7, s10
                  sll          t6, a1, s11
                  sub          s9, s5, a7
                  remu         s11, s5, sp
                  ori          a7, t6, -684
                  mulhsu       a0, t2, t1
                  div          t4, t0, a6
                  srli         t4, s5, 11
                  xor          a7, s5, a6
                  srl          s6, t0, s9
                  mul          t6, t1, a1
                  div          a3, t2, a3
                  divu         s8, s8, a0
                  mulhu        s7, s9, s9
                  sltiu        s1, a7, 776
                  auipc        s6, 730765
                  xor          a0, s7, a2
                  mul          t1, a3, s11
                  nop
                  mulhu        s8, t3, t0
                  srli         s5, t4, 26
                  mulhu        a2, s11, a6
                  sll          s6, s9, s0
                  remu         s2, t3, s5
                  xori         sp, s4, -777
                  mulhu        ra, t5, a1
                  sub          a3, s11, s7
                  remu         a4, a5, t4
                  or           a3, s2, s6
                  and          gp, ra, a5
                  add          s8, s0, zero
                  sltu         s1, t0, sp
                  xor          t2, s10, t1
                  mul          t3, s11, a6
                  xor          t6, ra, s5
                  sll          t2, s5, t3
                  sltu         sp, zero, s10
                  mulh         s8, gp, s2
                  xori         t2, s8, 1301
                  addi         t0, tp, -1538
                  srai         a0, a2, 29
                  slti         a0, a1, 1066
                  sll          ra, s8, s8
                  or           a2, s0, s3
                  and          a5, sp, s8
                  srli         gp, a6, 14
                  sltu         a6, t1, a4
                  auipc        a7, 783650
                  remu         s1, t3, a2
                  mul          s6, t2, s1
                  addi         s11, s4, 1050
                  auipc        zero, 35112
                  mulhsu       t0, zero, a6
                  remu         tp, t2, s0
                  sltiu        s6, zero, -1526
                  sll          a3, tp, a5
                  sll          s0, t4, a2
                  sra          s4, s6, t0
                  slli         s1, s1, 6
                  mulhu        t2, a5, s7
                  mul          t4, t1, a2
                  sra          ra, s5, s4
                  mulh         s4, s9, s3
                  mulh         a5, s4, s7
                  andi         tp, s9, 1485
                  div          ra, t3, a2
                  sra          t3, t4, s7
                  rem          s2, sp, t5
                  slt          t6, a4, a4
                  mul          s1, s2, a1
                  sub          t3, t6, t4
                  srl          gp, s4, sp
                  slti         s8, t2, 1057
                  srai         t3, zero, 16
                  addi         s9, a3, -1635
                  ori          a2, t0, 1014
                  andi         s6, t6, -2001
                  xori         ra, t6, -895
                  srli         a2, s6, 10
                  xor          a3, a4, a7
                  slli         s9, tp, 19
                  div          s0, s11, a5
                  lui          t2, 947940
                  and          s9, s9, gp
                  lui          a6, 726919
                  mulhu        a6, t1, tp
                  addi         s6, t1, 1413
                  srai         s8, t6, 4
                  or           a4, s10, t2
                  mulh         s1, s3, t0
                  slt          s2, a0, sp
                  xori         zero, t5, -105
                  andi         s5, a6, -671
                  remu         s11, s0, sp
                  ori          gp, s3, 1207
                  nop
                  sub          s2, t6, t4
                  sra          s2, s5, s9
                  sra          t1, t4, a3
                  mulhu        t4, t0, t0
                  srli         t4, s0, 16
                  slti         s1, s7, -1911
                  mulhu        t4, gp, tp
                  divu         s4, tp, s3
                  and          t0, s8, a4
                  srli         a0, t1, 17
                  xori         a6, a3, -1113
                  add          gp, s3, gp
                  add          t6, s10, a1
                  remu         ra, s7, ra
                  or           s2, s0, a0
                  sll          ra, a6, a3
                  and          s0, a6, s6
                  or           s6, s1, t3
                  sltu         s9, t1, s7
                  auipc        s7, 370295
                  nop
                  srai         t3, t2, 10
                  sll          s2, sp, a4
                  sra          gp, a7, s4
                  and          a6, a7, t5
                  srli         a4, s3, 7
                  mulhu        s6, s5, t4
                  srli         s2, a4, 30
                  xor          a1, s6, s1
                  sll          s2, t6, t1
                  slti         zero, t1, 859
                  sltu         t6, a0, s6
                  lui          ra, 709382
                  srai         a2, t3, 9
                  addi         s11, a2, -1426
                  or           t3, a2, s5
                  ori          a4, gp, 798
                  and          t1, a7, a5
                  mul          a7, a3, t6
                  mul          s1, s0, a3
                  sltiu        t0, t6, 1083
                  rem          t4, zero, a1
                  ori          a1, s6, 1785
                  sltiu        s6, t3, 1572
                  sll          s11, t3, s2
                  sltu         ra, a6, s6
                  div          t3, s10, t3
                  and          t2, s11, a4
                  slli         t0, s2, 17
                  auipc        s8, 391931
                  nop
                  srli         a1, a6, 14
                  sub          s8, gp, zero
                  xori         s5, t1, -482
                  div          gp, gp, zero
                  slt          s11, sp, t0
                  divu         a7, a7, s10
                  nop
                  divu         ra, s8, t5
                  remu         s7, t5, t1
                  lui          a2, 860096
                  auipc        tp, 564264
                  sub          s6, s9, zero
                  and          t2, s6, a1
                  sltu         s4, t5, s9
                  slli         gp, s1, 8
                  sltu         zero, s5, s9
                  sra          t2, tp, t6
                  rem          s7, t3, t4
                  mulh         a7, s2, t6
                  mulhu        s2, s4, a6
                  mulhsu       t4, t2, zero
                  nop
                  srl          s1, a4, a0
                  lui          a7, 401469
                  and          s7, s4, s9
                  add          t4, ra, ra
                  mulhsu       s7, t6, t4
                  mul          t2, sp, s3
                  srai         tp, t1, 14
                  addi         s5, s5, -1179
                  slti         a4, t4, 1008
                  sll          tp, s6, s2
                  div          a5, a0, s0
                  mulh         s11, t3, s0
                  and          a7, ra, a5
                  slti         t2, s2, 624
                  sltiu        t4, s9, -2014
                  xor          t3, s10, t0
                  addi         t3, t3, 106
                  mulh         t3, s0, t1
                  xor          s1, a7, s6
                  auipc        s2, 875351
                  mulhu        s1, s9, s2
                  nop
                  slli         s8, t4, 10
                  slt          a2, t6, s6
                  and          s4, s5, s11
                  and          s4, t4, s8
                  slt          a7, a1, s2
                  mul          s2, s3, t0
                  srl          a6, a0, s6
                  div          a3, a6, tp
                  mul          a5, a3, gp
                  sltiu        s7, t6, 1692
                  mulhu        t6, gp, s0
                  mulhsu       s4, t4, ra
                  ori          a4, a4, -689
                  ori          gp, a4, 1805
                  or           a7, tp, t1
                  sra          s8, s8, s0
                  addi         s2, t4, 848
                  sra          gp, zero, a2
                  and          a1, s1, s8
                  slli         t2, s10, 16
                  rem          s1, s4, t5
                  auipc        tp, 556737
                  mulhu        s4, s0, s10
                  xori         gp, s1, -298
                  mulh         s6, ra, a3
                  divu         s7, t6, t6
                  auipc        s4, 472914
                  sltiu        zero, t2, 1657
                  or           a7, zero, s11
                  andi         s11, s4, -23
                  lui          a4, 848532
                  sltiu        sp, a7, -505
                  slt          s4, tp, t0
                  mulh         sp, s6, s9
                  mulh         sp, t0, s5
                  addi         s9, s7, 1211
                  sra          t0, t5, s10
                  slt          a2, s11, a4
                  xor          zero, s11, sp
                  mulh         s0, a5, gp
                  and          s1, sp, a0
                  rem          t3, a5, a3
                  auipc        gp, 33870
                  add          s1, s5, s3
                  addi         a0, a3, -1876
                  xor          s9, a7, sp
                  nop
                  mulhsu       a7, s3, a1
                  nop
                  srl          t0, ra, a2
                  addi         s11, s1, -844
                  andi         a1, s6, -1495
                  slti         a2, s7, 887
                  sub          t3, t3, a1
                  and          s0, s8, s6
                  or           a3, s5, t2
                  sltiu        a3, s4, 871
                  nop
                  lui          s6, 151593
                  auipc        a6, 27909
                  sub          a7, a7, s5
                  sra          s7, t1, s3
                  mul          a6, t1, s9
                  rem          t2, s11, t5
                  mulhsu       s7, s3, s7
                  rem          t3, a4, s11
                  andi         s1, t5, 125
                  and          sp, s2, a7
                  mulhu        a6, a4, a1
                  sra          s8, gp, a2
                  nop
                  nop
                  sub          a5, gp, s10
                  and          gp, zero, t4
                  add          s7, s8, a1
                  sltu         s11, s7, a1
                  mulh         t0, t1, s10
                  mulhsu       a7, sp, t0
                  mul          s4, s11, sp
                  div          a4, t6, a5
                  xori         ra, t0, -1128
                  mulhu        a5, s7, s6
                  mul          a5, a3, t1
                  srai         t3, s3, 6
                  rem          t6, t3, gp
                  mulhu        ra, zero, t2
                  add          t3, t0, a0
                  addi         s2, a3, -967
                  mulhu        s1, s10, s6
                  srli         a2, t2, 31
                  andi         a5, s7, 1585
                  addi         t2, s0, 425
                  srl          a7, a6, a0
                  remu         t3, a7, a1
                  sltu         a1, sp, t2
                  sltiu        s2, t1, 1721
                  slt          s2, s1, s1
                  sub          s7, s1, a5
                  andi         s4, t2, -417
                  slt          a4, t4, s11
                  sub          a0, t6, a2
                  srai         t1, t2, 11
                  nop
                  xor          t4, s0, s11
                  sub          s8, s10, a5
                  sub          a6, s7, t3
                  addi         a7, a2, 1265
                  addi         t1, a1, -650
                  add          s2, a2, ra
                  mulh         s8, sp, t1
                  slti         a5, a5, -1426
                  mulh         s2, a0, s7
                  slt          s0, t5, s5
                  mulh         a2, t4, s9
                  mulhu        s0, t5, a3
                  xori         s7, t0, 539
                  xor          s7, s10, a5
                  div          s8, t1, t5
                  ori          t6, a0, 1325
                  sub          s5, s4, s11
                  mulhsu       s9, t6, s10
                  xor          s0, a2, s9
                  slti         a3, a1, 477
                  addi         s9, a1, 426
                  srl          a1, s2, s10
                  or           s11, s5, a5
                  div          t2, a1, t4
                  slt          s6, a6, a0
                  srli         tp, a4, 13
                  div          s5, zero, s0
                  mulh         s2, s5, zero
                  srli         t4, sp, 2
                  ori          t2, t0, 143
                  and          a4, s5, t3
                  mul          t1, t2, s2
                  addi         a1, s10, 711
                  auipc        t6, 512091
                  addi         s6, gp, 214
                  lui          s9, 818098
                  mulhsu       t1, s10, s5
                  srl          s9, a1, t6
                  slt          s5, s4, a4
                  rem          s0, a0, a3
                  slt          a7, a7, tp
                  nop
                  slt          s1, s2, zero
                  and          s1, t2, a3
                  auipc        a7, 456300
                  sltu         a3, s10, a6
                  mulh         a0, s1, t2
                  srai         s11, a3, 12
                  divu         a6, s11, s9
                  and          s8, tp, t6
                  sll          s0, s3, a1
                  addi         tp, s0, -1762
                  sltiu        s2, s9, 1524
                  mul          a0, s0, s8
                  slt          s9, a2, tp
                  divu         t1, t1, a1
                  rem          a7, s1, s3
                  sltiu        a2, s10, -711
                  sltiu        t0, s2, 1516
                  sltu         s1, a7, s4
                  divu         a6, gp, a7
                  add          s8, sp, a1
                  andi         s2, s5, 1842
                  mulh         t2, t1, s7
                  andi         s1, s2, 744
                  sub          s8, t6, s5
                  srai         s6, s10, 29
                  or           t2, s6, tp
                  auipc        s11, 431679
                  mul          sp, s10, t4
                  and          t3, a6, t0
                  auipc        t4, 745811
                  div          a0, s6, s2
                  div          a0, ra, s10
                  slti         s5, tp, -1150
                  xor          s1, t6, s3
                  mulh         s6, s2, s9
                  mulhu        tp, t1, t3
                  auipc        zero, 196466
                  and          t6, gp, a2
                  xori         s11, s4, 1856
                  xori         s9, a0, 2037
                  sltiu        t1, a3, -1806
                  srai         s9, t5, 28
                  mulhsu       a0, t2, s0
                  auipc        a6, 303460
                  slli         t4, tp, 31
                  sub          s6, s8, s1
                  div          a0, s7, zero
                  sll          a0, a4, s11
                  slt          s11, s6, s4
                  nop
                  slt          a7, a2, t6
                  mulhu        s7, s7, a1
                  sll          s4, s0, a7
                  xor          tp, a1, sp
                  add          a1, gp, s11
                  slti         s6, t5, -1478
                  divu         tp, sp, s0
                  addi         a0, a4, 1940
                  and          s8, s5, a7
                  remu         a1, a3, s10
                  div          s0, a5, a5
                  srl          gp, s8, s0
                  mulh         a7, t2, s10
                  mulhsu       t4, a1, t1
                  slli         sp, t2, 16
                  xori         s9, t0, -1200
                  sltiu        t1, t6, 875
                  nop
                  srl          gp, a3, a7
                  rem          s7, t0, s2
                  rem          a7, a0, t4
                  sltiu        s5, t3, 1896
                  mulhu        t3, tp, t5
                  srli         a5, a7, 4
                  remu         tp, a7, a3
                  srai         a2, a5, 20
                  mulhsu       a1, a0, t6
                  sltiu        s6, s5, 51
                  srli         a0, s1, 15
                  rem          t4, zero, t5
                  srl          s7, t3, s11
                  slti         s11, ra, -2020
                  divu         s1, s1, t1
                  nop
                  mulh         ra, t1, s4
                  slt          s1, a0, t0
                  add          s9, t1, t5
                  sltu         gp, a6, a6
                  slli         gp, a6, 31
                  addi         s11, t2, -600
                  slli         a6, sp, 6
                  xori         a7, t5, -1854
                  srl          tp, a5, a7
                  div          s9, a5, s11
                  xori         tp, t0, -1645
                  remu         a7, s7, t4
                  sltiu        s2, t1, 191
                  srli         a0, a0, 3
                  sub          a5, a5, s9
                  srl          s6, sp, s1
                  mul          a6, a2, gp
                  sub          gp, s2, a3
                  remu         sp, t1, s11
                  nop
                  mulhu        t4, s1, s2
                  mulh         a0, s6, s2
                  remu         a1, s11, s6
                  div          ra, a7, s5
                  mulhsu       a0, t0, s7
                  sll          s4, t3, s5
                  lui          s11, 1007072
                  and          s5, s2, a2
                  andi         t4, t0, -14
                  xori         tp, s0, -577
                  xor          t2, zero, gp
                  rem          a6, a4, s11
                  add          s2, gp, t0
                  or           a7, sp, a1
                  sub          a2, s7, s10
                  ori          gp, gp, -384
                  sltiu        ra, t3, 847
                  sra          s1, a6, gp
                  slti         gp, a6, 1940
                  mulhsu       s7, a3, s5
                  add          s7, a7, a7
                  mul          s5, s7, a0
                  slti         t3, s0, -1538
                  slti         s6, s2, 898
                  srai         a2, a5, 24
                  add          a7, s10, tp
                  add          zero, t6, a2
                  srl          s7, s1, t5
                  mulh         a4, a7, t6
                  sub          t4, sp, s2
                  lui          t0, 223084
                  slti         t4, t4, 1797
                  slti         t4, t4, -1825
                  srli         s6, s11, 25
                  sra          gp, t1, t2
                  mul          s5, t1, sp
                  andi         s4, s1, 601
                  divu         s1, s6, gp
                  sltiu        a0, t4, -1290
                  rem          tp, tp, a1
                  and          s0, a0, a3
                  srli         a2, s5, 26
                  slli         s11, zero, 20
                  rem          ra, s0, s6
                  mulh         s11, s9, t6
                  div          s1, a3, t3
                  sra          s5, t0, t2
                  sll          s11, a6, s8
                  sra          gp, s6, t5
                  xor          s0, sp, s1
                  srl          tp, t4, s6
                  srl          a1, s7, zero
                  sub          t6, s4, a7
                  divu         a7, t0, s10
                  div          t6, a7, sp
                  mulh         s2, s3, s10
                  xor          a4, t1, t4
                  srli         a0, s7, 18
                  mulh         s11, s4, s7
                  mul          a2, t6, a6
                  andi         gp, s7, -1480
                  srl          a4, t3, s0
                  sltu         s2, s3, a4
                  sll          a1, a0, s10
                  sltu         s5, t1, t2
                  lui          s7, 445330
                  sub          s11, a6, a5
                  remu         a0, s4, s1
                  rem          t0, t6, t5
                  or           s1, t1, t3
                  xori         s7, t6, -1831
                  sra          s11, s9, a0
                  mulhu        t2, a1, a3
                  auipc        ra, 279076
                  div          t3, s7, tp
                  mulhsu       sp, t5, s2
                  remu         t1, t1, s2
                  rem          s4, s4, s9
                  slt          tp, t2, t6
                  srli         s11, a5, 1
                  sll          t3, a7, gp
                  mulhsu       s11, s4, gp
                  sltu         a6, zero, s11
                  slt          s11, zero, s2
                  srl          a5, s11, a4
                  rem          sp, a4, s10
                  or           tp, s0, a7
                  sll          t3, s11, a5
                  lui          t0, 145337
                  or           s1, a4, t2
                  add          t1, s6, a0
                  mulhu        s1, t3, t1
                  sltiu        t6, a0, 161
                  rem          s11, s5, tp
                  slti         ra, t1, 1319
                  ori          s11, s10, 223
                  mulhu        t1, a1, s6
                  slti         t4, ra, -853
                  and          a3, a2, s2
                  nop
                  srli         a3, ra, 9
                  sltu         t3, a4, a0
                  xor          s11, zero, ra
                  lui          s11, 741638
                  divu         s4, s0, ra
                  ori          s11, gp, 1891
                  andi         t2, gp, -1468
                  sltiu        s0, s4, -879
                  or           s0, s11, t2
                  andi         a0, a1, 771
                  and          gp, t0, a7
                  mul          tp, s3, t3
                  sub          s1, s6, ra
                  lui          s9, 841519
                  slli         s0, s6, 9
                  mul          t3, s8, gp
                  lui          s1, 797113
                  sltiu        s4, sp, -613
                  divu         s1, s3, s1
                  sltu         s2, t2, a0
                  mul          s6, gp, s7
                  auipc        s8, 141144
                  div          s1, gp, a1
                  and          s1, s10, s11
                  remu         s8, s8, s7
                  sltiu        a5, a0, 791
                  srli         a1, sp, 20
                  lui          zero, 277977
                  mulhu        t4, s1, s10
                  mulhsu       s2, s3, t1
                  xor          a7, tp, s5
                  sltiu        zero, sp, 12
                  rem          t0, tp, s3
                  srl          a1, t1, ra
                  auipc        s7, 855346
                  xor          a0, t2, s4
                  andi         s5, s2, -831
                  xor          s9, t3, a6
                  slt          a1, a4, ra
                  add          gp, s10, s6
                  sltu         s11, t5, t1
                  slli         s4, s6, 5
                  mulhsu       t3, a1, t5
                  slti         s1, tp, -568
                  or           t3, a3, s5
                  mul          a7, t4, a7
                  nop
                  sll          s1, s7, s2
                  remu         a3, s11, t2
                  remu         t0, a5, a3
                  mulhu        s6, s10, a2
                  rem          s11, s10, s4
                  auipc        t1, 908541
                  srli         a7, s8, 29
                  remu         a7, s10, s5
                  sub          a2, s9, a5
                  and          s2, t0, a7
                  mulh         s8, a1, sp
                  slti         t2, t4, -1045
                  srai         s4, t0, 23
                  mul          s8, s8, a5
                  srli         a1, s6, 8
                  or           a4, a7, t1
                  andi         s5, t2, -1503
                  mulh         t0, a4, sp
                  srl          a0, t1, s10
                  and          s5, s4, s5
                  nop
                  divu         a5, s3, a7
                  sltiu        s11, a4, -259
                  mulh         t6, t1, a3
                  or           s5, t0, t6
                  auipc        t0, 270620
                  ori          t6, t2, 1526
                  div          a7, s8, a5
                  lui          s0, 3424
                  slt          s5, a5, s3
                  srl          s11, s6, a1
                  xori         s8, sp, -460
                  slt          s0, s1, t6
                  sra          s0, gp, t5
                  or           t6, a4, t6
                  sltu         gp, s11, t2
                  slt          s7, zero, t5
                  div          s0, s6, s3
                  slti         s7, s6, 516
                  sra          zero, s10, s11
                  ori          a6, t4, 688
                  nop
                  sltu         t6, s7, s10
                  srli         a3, t6, 16
                  andi         a3, s1, -192
                  slli         s0, a2, 15
                  srai         s11, a0, 5
                  slli         gp, a7, 2
                  mulhsu       ra, a6, t1
                  sub          ra, s9, tp
                  rem          s11, s9, s0
                  srli         t3, s6, 8
                  slli         a4, sp, 17
                  mulhu        a4, ra, s10
                  rem          s6, a3, s5
                  mulhu        a0, s1, s9
                  sll          sp, ra, a2
                  sltiu        zero, gp, -1878
                  div          zero, s3, a0
                  srli         s8, a1, 13
                  sltu         s6, t1, a2
                  mul          a7, s7, a0
                  sltu         zero, t4, t0
                  srli         s6, t3, 21
                  or           a6, gp, s11
                  srl          s5, a2, s1
                  sra          a0, sp, a4
                  sll          s7, a6, t0
                  mul          s1, a5, gp
                  and          a1, s7, t0
                  div          t2, t6, a4
                  xori         t3, t4, -225
                  addi         t0, tp, -680
                  sub          t1, t4, s8
                  div          t3, t5, t6
                  add          a4, s1, s9
                  mulh         a3, s8, s4
                  mulh         zero, a0, a4
                  xori         sp, a6, 1178
                  slli         s6, a1, 21
                  sltu         s8, ra, a0
                  ori          t2, s6, -472
                  slli         ra, t3, 16
                  srl          a0, s10, a2
                  sltu         a6, a4, a3
                  slti         s0, s11, 1846
                  mulh         t1, t0, a0
                  mul          zero, s10, s4
                  remu         ra, sp, gp
                  addi         a4, sp, 1551
                  mul          s1, s8, a4
                  auipc        t0, 81592
                  ori          tp, a2, -1863
                  addi         s0, a7, 1716
                  slli         a3, ra, 19
                  slli         a3, a5, 15
                  sltiu        t6, s11, -359
                  mulhsu       a5, s10, a5
                  add          t2, s2, a3
                  ori          t4, a6, -706
                  or           s0, t0, a7
                  rem          t0, a5, s2
                  slti         t0, ra, -798
                  xori         a1, a1, -660
                  srli         s5, s1, 22
                  and          a6, zero, t2
                  mulhu        s8, a4, a4
                  and          ra, a7, t4
                  mulhu        a1, tp, a6
                  lui          t0, 306907
                  div          s6, t4, tp
                  or           s8, t4, s9
                  lui          a4, 646550
                  div          a1, t2, a1
                  mulhsu       s9, s4, s5
                  slli         a0, t4, 23
                  srai         t1, t0, 19
                  or           s4, t6, s10
                  sltu         t3, tp, a2
                  mulh         a7, s3, t0
                  div          a6, a3, sp
                  and          a5, a6, s6
                  divu         s7, a2, s11
                  mulhu        s7, s6, s1
                  and          s0, s2, s4
                  sltu         t3, a0, s7
                  slt          s7, t5, s10
                  remu         t4, a5, gp
                  div          t2, s11, t0
                  xor          s7, s10, s7
                  remu         s2, t2, s9
                  mul          a0, s5, t6
                  nop
                  auipc        a4, 936498
                  andi         s7, s3, 1652
                  rem          a4, a1, a1
                  ori          a7, a2, -1121
                  lui          s9, 764316
                  mulhsu       t3, s9, s5
                  sltiu        a6, t2, 800
                  srli         ra, s6, 16
                  srl          a3, s9, s7
                  xor          s1, a1, t0
                  slli         ra, s10, 13
                  nop
                  mul          s7, s6, s1
                  srl          a7, a0, s4
                  mul          a3, a2, a6
                  div          s1, t6, t2
                  addi         t3, sp, -476
                  and          s8, s9, tp
                  or           t6, a3, a2
                  div          a4, a0, s9
                  sra          s11, s3, s0
                  divu         t3, t2, t1
                  remu         a3, s0, a1
                  andi         tp, s9, -1350
                  add          tp, zero, a6
                  slt          s11, s10, t4
                  div          sp, t5, a6
                  auipc        sp, 20004
                  srl          a5, s7, ra
                  addi         a1, a0, -1324
                  mulhsu       t3, s8, a0
                  or           t4, a0, s6
                  sltiu        tp, s1, 246
                  slli         s8, s9, 28
                  srli         s8, sp, 10
                  rem          t6, t0, s10
                  xor          t2, a0, a2
                  mul          gp, s8, sp
                  sll          sp, s6, a5
                  sll          a0, a5, zero
                  mulhu        t6, s2, gp
                  sra          sp, s8, s9
                  xori         a1, s5, -408
                  andi         s5, t3, 1348
                  divu         s2, t0, a3
                  andi         a5, a0, 1468
                  andi         s6, s1, 712
                  sltiu        a6, a0, -839
                  lui          s11, 1511
                  ori          a1, a0, -1672
                  andi         s11, t0, 1783
                  sll          s8, ra, tp
                  sltu         s5, a4, a4
                  lui          s7, 725880
                  mulhsu       t2, s2, a4
                  andi         a6, tp, 1593
                  mul          s4, a7, s0
                  xor          s2, s7, tp
                  xori         t4, s4, 640
                  remu         a2, s10, a6
                  nop
                  lui          s8, 574053
                  slt          t3, t3, sp
                  srl          ra, s11, a6
                  rem          s9, s5, s1
                  xori         a0, a6, 1827
                  mul          t0, t5, t6
                  or           t6, s4, s3
                  srli         s7, t2, 29
                  mulhsu       s0, t0, a2
                  auipc        a5, 705928
                  andi         s2, t0, -1804
                  and          t6, t0, t4
                  slli         s11, s11, 26
                  add          s4, s9, t6
                  slti         s5, a2, -915
                  or           tp, a4, s9
                  sltiu        t0, s9, -753
                  sra          a4, a4, a6
                  add          t1, t4, sp
                  addi         a5, gp, -34
                  nop
                  mulhsu       a4, sp, s11
                  add          s4, s6, a7
                  sltu         s0, t0, s5
                  rem          a7, s0, s5
                  lui          a3, 891322
                  sltu         gp, s8, tp
                  or           a1, tp, a7
                  andi         gp, a6, -1493
                  rem          a0, a0, a2
                  rem          a1, s6, s6
                  slti         a6, s10, 651
                  sra          s8, s5, t3
                  remu         t3, a6, s0
                  sltiu        a2, s10, 872
                  add          gp, a5, sp
                  ori          a4, t2, -1590
                  srl          a5, a2, s7
                  sltu         a7, s10, t0
                  rem          s2, t5, tp
                  addi         s6, tp, -1270
                  addi         a0, t6, -205
                  slti         s4, s8, 1474
                  srai         a4, s0, 14
                  srai         zero, a3, 3
                  slti         s1, s4, 909
                  mul          gp, sp, t0
                  rem          t3, t2, s3
                  srai         s5, t1, 21
                  rem          a4, t2, a6
                  sra          s9, s9, ra
                  srl          s7, s3, a7
                  div          t1, t5, gp
                  sra          a7, zero, s11
                  sltu         s4, a5, s3
                  sll          s11, s8, t6
                  lui          s8, 955797
                  auipc        a1, 921745
                  remu         s5, s7, a5
                  sub          s7, s4, gp
                  andi         t6, s4, 126
                  sub          tp, s5, s6
                  sra          sp, t1, s8
                  divu         a0, gp, tp
                  xor          a6, a5, a0
                  srai         t1, s1, 3
                  srli         s11, a1, 28
                  xor          a0, a2, a6
                  sra          t1, gp, t5
                  ori          tp, s6, 1315
                  mulhsu       s1, s4, a2
                  sra          zero, a6, s3
                  rem          t3, a2, s3
                  div          s6, a3, s4
                  add          t0, t3, s2
                  divu         ra, a3, s5
                  xor          tp, s9, s8
                  slt          sp, s8, a5
                  auipc        a6, 1011650
                  slli         a5, s4, 1
                  mul          a3, s10, a6
                  xori         t3, s1, 1292
                  nop
                  sra          t1, s7, a5
                  srai         s7, t2, 1
                  srli         t1, s10, 3
                  div          s11, s3, a2
                  mul          s4, s5, s5
                  andi         s11, s9, 1223
                  lui          s2, 766624
                  xor          a0, t5, s8
                  addi         s0, s4, 667
                  sll          s5, a2, t4
                  sub          zero, t0, s0
                  mulhsu       a6, s4, a3
                  srl          a3, a2, t1
                  nop
                  mulhsu       t2, s10, a1
                  slti         a1, t6, -1852
                  rem          s11, s3, s11
                  lui          gp, 434911
                  mulhsu       s7, gp, s8
                  nop
                  div          a7, s5, s7
                  divu         s11, a2, a3
                  mulhu        a6, s10, a3
                  and          s4, s1, t5
                  sltiu        s4, a1, 1270
                  srli         a7, a1, 30
                  mulhsu       s8, t3, s3
                  sub          t1, t0, a1
                  rem          s1, a1, t3
                  sltu         s2, s4, t6
                  andi         s7, s5, -921
                  auipc        gp, 635361
                  andi         gp, s2, 1467
                  or           a7, t5, t1
                  lui          s7, 795194
                  srl          t4, s2, a7
                  slt          s7, a2, tp
                  lui          s5, 200932
                  slt          a2, s11, s3
                  sub          s5, s2, tp
                  srl          a0, s3, t0
                  and          sp, s9, a7
                  divu         s7, s3, t2
                  sltiu        a4, s7, -621
                  andi         a1, t0, 1494
                  srai         a4, s7, 26
                  and          ra, s11, t3
                  sra          a0, s2, s5
                  addi         t1, s5, -835
                  sltiu        s7, a6, -1997
                  slt          a5, s4, a2
                  sub          s5, t0, t4
                  xori         t6, a5, 1636
                  divu         a3, t5, s5
                  sltiu        a7, t3, -1844
                  sra          sp, s4, t3
                  srl          a6, t5, s9
                  add          a2, tp, s10
                  sltiu        a4, gp, 74
                  sltu         s1, s2, s6
                  andi         ra, a5, -1496
                  div          t4, a5, a2
                  slt          s8, zero, t2
                  mulhsu       t0, a2, a7
                  slli         s8, t0, 20
                  ori          a6, s2, -815
                  and          t1, s3, ra
                  divu         s2, a4, a5
                  sltu         s0, s7, sp
                  slt          t3, t2, a4
                  divu         s7, t0, s8
                  addi         t2, zero, -1972
                  slt          s7, s11, tp
                  mul          a1, t1, a0
                  div          tp, s8, s4
                  slli         t0, t2, 28
                  sra          a1, s4, gp
                  slti         s8, t3, 946
                  slti         a7, t5, -1709
                  srl          a3, s3, gp
                  lui          a0, 847158
                  mulhsu       s9, t2, t3
                  mul          a4, a3, t0
                  or           s1, s5, ra
                  div          s0, a1, t6
                  nop
                  ori          a7, s6, -1424
                  slti         a7, t1, -2025
                  remu         s0, t5, a5
                  remu         a7, sp, t5
                  lui          t4, 853079
                  mul          s2, s4, s1
                  lui          t6, 500255
                  andi         tp, s5, 1870
                  srli         s11, gp, 12
                  add          s7, s4, t2
                  sltu         a1, t4, t4
                  andi         a3, t6, -1965
                  srai         a0, s11, 27
                  add          a4, s6, gp
                  and          s2, a7, s6
                  mulhu        s6, s1, s6
                  mulh         sp, s4, s11
                  nop
                  slt          a5, t2, sp
                  and          gp, a3, s10
                  sll          gp, t1, a5
                  mulh         s7, s4, sp
                  sltiu        s9, s11, 493
                  mulhu        sp, s9, sp
                  srai         a2, t0, 6
                  mul          a1, t5, a4
                  div          a3, s8, s6
                  srl          zero, sp, a4
                  addi         s5, s2, -976
                  or           tp, t3, a6
                  sub          a0, s2, s8
                  sltu         t3, s6, t5
                  sll          t6, ra, t4
                  mulhu        t4, a5, s1
                  srl          t4, s9, s11
                  div          ra, a3, a7
                  xor          a5, a0, s3
                  addi         a5, t3, -1232
                  divu         t6, a6, t3
                  sltiu        s5, s1, -1563
                  xori         ra, s7, -1966
                  lui          sp, 706094
                  div          a0, t0, s9
                  slti         zero, gp, 539
                  slli         s0, t6, 17
                  mulhu        a7, a5, s5
                  sltu         s8, s3, s11
                  slti         s1, s6, -602
                  srai         zero, s5, 28
                  nop
                  or           a2, a5, s0
                  ori          s6, s2, -1113
                  xor          a0, sp, a3
                  srl          sp, s5, s2
                  sltu         t3, t2, s6
                  mulhu        t1, s5, a3
                  divu         s1, s10, s0
                  sltu         a0, s6, zero
                  sub          zero, s9, gp
                  lui          s6, 534846
                  sltiu        t0, t3, 1654
                  sll          s9, t6, a2
                  add          s6, s6, sp
                  rem          s4, a4, a7
                  div          s9, a7, a3
                  mulhu        a2, s3, s0
                  andi         t0, s5, 84
                  sra          zero, a7, t5
                  divu         t4, s10, s10
                  auipc        t1, 622099
                  slti         t3, s9, -1039
                  addi         gp, t6, -1624
                  srl          gp, t3, s4
                  addi         t0, a6, 1941
                  mulh         zero, s7, a7
                  sra          a4, a5, t4
                  xor          gp, a6, s4
                  slt          ra, sp, a6
                  slt          ra, s10, a6
                  lui          a7, 160327
                  add          zero, zero, s5
                  slt          s4, a5, s11
                  divu         s1, t5, a3
                  lui          s6, 606062
                  mul          s7, s10, s6
                  srai         a6, t4, 22
                  slli         a5, zero, 7
                  lui          t4, 282429
                  add          s7, gp, sp
                  add          a5, zero, t3
                  divu         gp, a2, tp
                  slli         s11, s8, 30
                  remu         s6, a7, s6
                  srai         t3, s10, 24
                  xor          t1, a3, s4
                  sltu         s7, t5, s7
                  xori         t1, s7, -1163
                  auipc        t2, 606199
                  slti         s9, t6, -1132
                  sra          t6, s4, t5
                  sltu         t0, t1, a7
                  lui          a1, 260917
                  or           t2, t1, sp
                  and          s9, a5, a6
                  mulh         s6, a0, a6
                  and          s1, s9, s8
                  addi         s5, s6, -1048
                  xor          t2, s5, s4
                  mulh         s11, t1, a0
                  srl          a1, s1, gp
                  nop
                  srli         s2, t2, 18
                  sra          a3, a6, t0
                  xori         s5, a7, -210
                  rem          sp, a4, ra
                  sltu         gp, a7, s5
                  mul          s2, a5, t1
                  mulhu        a6, a0, zero
                  addi         a2, a1, 1717
                  xor          s7, a7, a3
                  sltu         s7, a1, t6
                  add          a3, sp, a0
                  slli         a1, a0, 16
                  sltiu        a6, s4, 1403
                  and          a0, t6, gp
                  xor          t0, a1, sp
                  auipc        s0, 779713
                  slt          t3, s9, s7
                  mul          s1, s3, tp
                  srai         zero, a2, 22
                  sub          t6, s10, a3
                  ori          a3, s5, -1640
                  slti         ra, t1, 503
                  lui          t3, 295541
                  xori         a5, a2, -1408
                  nop
                  nop
                  or           t1, a1, s9
                  div          t4, a4, s8
                  or           gp, s2, a2
                  srli         t0, s5, 30
                  addi         t0, gp, -1030
                  sll          s7, t2, s10
                  srl          t3, gp, sp
                  sltiu        t3, t4, 1073
                  srai         gp, gp, 27
                  xori         a3, t2, 1504
                  auipc        sp, 780112
                  remu         a5, t3, ra
                  and          a5, a7, zero
                  remu         t2, s8, s5
                  srl          a5, a7, s8
                  slt          t6, ra, s7
                  addi         a7, a5, 1822
                  addi         s7, t6, -1311
                  sub          sp, t1, zero
                  andi         s6, a7, 2025
                  slt          t3, t2, s8
                  add          a7, s8, a2
                  xori         s2, s5, 273
                  slti         s4, s1, -1016
                  srl          t0, s6, tp
                  nop
                  divu         s0, s2, s6
                  remu         s8, a1, a0
                  mulhsu       t1, t2, a0
                  mulhsu       s11, t5, a6
                  mulhsu       s6, s6, t1
                  mulhsu       tp, s6, s9
                  mul          a6, t0, s7
                  div          a2, s7, s3
                  mulhu        s4, a6, s11
                  ori          tp, s7, -669
                  sll          s11, a3, t0
                  slli         t3, s11, 13
                  rem          s11, a1, gp
                  srli         a6, s3, 3
                  divu         sp, t0, s11
                  slti         zero, t2, -604
                  andi         sp, s1, -923
                  mulhu        s7, ra, ra
                  rem          t6, s4, t1
                  div          s8, gp, s7
                  srli         s4, s8, 3
                  add          t3, s8, t5
                  sltiu        sp, t6, 1189
                  slti         t3, a3, -317
                  or           t3, t4, a2
                  ori          a4, t5, -1308
                  srli         s4, a7, 28
                  rem          t0, a1, s4
                  ori          tp, gp, 105
                  mulhsu       s5, s8, s10
                  remu         gp, s5, zero
                  mulh         t2, s1, a1
                  srai         t1, a4, 8
                  srl          a0, s6, s1
                  mul          ra, t6, a5
                  remu         t0, a1, s2
                  mulhu        tp, s4, tp
                  slt          a3, a1, s5
                  sub          zero, a5, t0
                  mulh         s9, a7, a2
                  srli         a5, a5, 20
                  mul          t4, s6, a0
                  lui          s4, 114002
                  srli         s2, t5, 10
                  and          s4, t4, t3
                  add          t4, s9, s8
                  div          a1, t0, s9
                  remu         a1, s1, t1
                  slti         a7, a2, 1720
                  or           sp, s10, s11
                  divu         t2, s2, s10
                  sll          a5, s2, a2
                  sltu         t2, t5, s11
                  slt          tp, s2, a4
                  nop
                  lui          a2, 795120
                  xor          s4, s6, zero
                  sltu         a7, s8, s4
                  srl          s7, a3, tp
                  sltu         s5, s0, a5
                  or           s11, ra, t3
                  xor          s5, a1, a0
                  divu         s7, a3, s8
                  mulhsu       t3, zero, t5
                  srli         s6, gp, 9
                  ori          s4, a3, -892
                  divu         a7, s8, a2
                  sub          t2, t4, s11
                  remu         s6, t6, s4
                  andi         ra, gp, 1703
                  ori          s2, ra, 1945
                  sub          s2, a3, s4
                  or           s7, t5, zero
                  sra          sp, tp, zero
                  ori          ra, a4, -444
                  add          a6, s10, tp
                  div          t4, a6, a2
                  ori          t4, s2, -632
                  lui          t6, 994604
                  or           s6, s11, t1
                  mulhsu       t3, a4, gp
                  sltiu        zero, s1, -714
                  rem          a3, s4, t5
                  slli         t0, t5, 4
                  addi         a7, s4, -1923
                  mulhsu       t6, ra, ra
                  lui          a6, 771800
                  mulhsu       a7, tp, s1
                  and          s1, s11, s6
                  and          s6, t3, a0
                  slli         a1, t0, 23
                  sub          a1, s5, a1
                  srli         s5, a2, 2
                  remu         ra, t3, a1
                  slli         s7, tp, 6
                  xori         s5, t5, -267
                  and          t0, s6, tp
                  srl          t1, a5, a2
                  ori          t1, s10, -398
                  nop
                  slti         s2, s9, 1283
                  remu         a5, t1, a7
                  slli         a0, a5, 1
                  srai         a2, t4, 3
                  srli         s6, s10, 10
                  srli         a4, zero, 16
                  mulhu        s6, ra, t4
                  srai         s7, a1, 5
                  ori          a3, a1, 29
                  mul          zero, t3, a7
                  and          t6, s5, s9
                  divu         a6, t1, t3
                  slt          t1, a0, s10
                  divu         ra, a1, a6
                  xor          s4, s11, a6
                  divu         s11, s11, s4
                  sll          a1, s8, s11
                  sra          t0, s0, t5
                  mulhsu       sp, sp, s7
                  ori          t1, s0, -964
                  rem          t6, t4, a5
                  div          s1, t6, s7
                  srai         ra, t4, 25
                  remu         t2, a3, a5
                  slti         t4, a0, -1367
                  srl          t4, zero, t6
                  or           a5, a1, sp
                  ori          t1, t0, -613
                  mul          a4, a1, s4
                  andi         t6, t1, -1994
                  ori          t3, t6, 1167
                  srli         t0, a6, 15
                  sltu         a2, a5, a2
                  srai         s1, s1, 10
                  auipc        gp, 1020924
                  mulh         zero, a5, a1
                  lui          t1, 989159
                  sltu         a5, ra, s11
                  srai         t1, a4, 11
                  rem          s4, s7, a0
                  divu         t6, s1, s2
                  slti         s6, s8, 344
                  mulhsu       t2, sp, a1
                  mulh         sp, a6, t2
                  auipc        s2, 1021970
                  sra          a4, a1, tp
                  nop
                  xori         t1, s2, 1117
                  sub          s2, s0, sp
                  sra          s6, a2, s9
                  mulhu        zero, s8, s3
                  slt          a2, sp, t0
                  andi         s8, gp, 1913
                  add          a2, a1, s7
                  mul          t6, a1, a5
                  sll          s4, a0, s1
                  sltiu        s7, s0, -1655
                  divu         a1, a1, s5
                  or           tp, a7, s6
                  mulhu        ra, t6, sp
                  addi         s5, a6, 986
                  sub          s6, a3, a7
                  ori          tp, tp, -783
                  add          gp, ra, zero
                  mulhu        s6, s2, ra
                  sra          a3, a1, sp
                  xor          t0, t5, s6
                  srli         s5, a5, 8
                  ori          t1, t4, -1211
                  slt          s6, a4, a4
                  rem          t3, s10, tp
                  sub          s11, zero, a3
                  andi         gp, a1, 991
                  xor          ra, a4, a4
                  lui          t4, 627403
                  sub          s11, t3, a1
                  slti         gp, t2, -303
                  mulh         a4, s10, a4
                  or           a7, a7, t3
                  slti         s2, t1, 1227
                  andi         s11, t3, 291
                  auipc        a0, 909966
                  sra          a2, s5, s11
                  sltiu        s2, s2, -1363
                  slt          a4, tp, a6
                  nop
                  or           a3, a7, t4
                  slti         s6, s10, -1741
                  srl          a2, zero, t1
                  mulhu        sp, s7, t2
                  andi         s11, t5, -248
                  mul          a7, a4, a1
                  mulh         sp, s4, tp
                  lui          t4, 920090
                  slt          s5, tp, t2
                  xor          gp, tp, s8
                  and          s5, a0, a4
                  sltiu        tp, tp, 865
                  nop
                  nop
                  slli         ra, t5, 29
                  slt          zero, s0, s8
                  sltu         gp, tp, s4
                  slti         t3, gp, 1612
                  sll          s6, a2, ra
                  slli         s0, tp, 2
                  slli         t6, a6, 19
                  div          s6, s10, t1
                  sltiu        s4, gp, -58
                  xori         s7, s7, 1018
                  xori         a5, tp, 685
                  auipc        ra, 1042613
                  xor          a3, tp, zero
                  slti         ra, s11, -625
                  ori          t3, sp, 1024
                  addi         zero, a2, -1476
                  sltu         s8, a6, t0
                  sltiu        s11, s3, 1419
                  xor          s8, s9, s4
                  nop
                  sltiu        a5, s4, 531
                  xori         zero, a6, 132
                  add          s9, t5, a5
                  sll          s4, t3, s1
                  mulhsu       a2, s11, gp
                  srai         t6, a2, 30
                  and          s9, zero, a5
                  rem          t1, a4, ra
                  srl          zero, s8, s1
                  slti         t2, a0, -939
                  addi         s2, a2, -1807
                  xor          s5, s0, tp
                  xori         t4, zero, 966
                  sltiu        t0, t3, 363
                  ori          s11, ra, -97
                  xor          ra, t4, s6
                  or           a2, a7, s5
                  andi         s2, s5, -1496
                  ori          s0, a2, 2021
                  rem          t0, s10, t3
                  slt          s8, t0, t5
                  rem          s7, s4, a6
                  ori          a4, a1, 1441
                  divu         tp, t5, a5
                  xor          s1, t5, t1
                  mul          s7, a6, ra
                  or           a3, s5, t5
                  rem          t6, s9, tp
                  rem          gp, s3, t1
                  sll          a1, s3, a6
                  sub          ra, a4, a4
                  slli         s5, s7, 26
                  xori         gp, a7, 812
                  srl          s7, s5, s5
                  sll          t6, s1, a7
                  remu         t2, t3, t1
                  mulhu        a7, s10, s4
                  auipc        ra, 195840
                  slli         a1, s10, 28
                  remu         a5, t4, a1
                  sub          ra, sp, s8
                  mulhu        s8, t0, a2
                  srai         a1, a2, 26
                  mulh         a1, s11, sp
                  addi         t6, s4, -182
                  andi         s2, s0, 962
                  srli         s9, s4, 1
                  slti         s9, zero, 1465
                  nop
                  nop
                  sra          s11, a5, a3
                  div          s5, t0, t0
                  srl          a2, s6, a6
                  mulhsu       s7, s4, t4
                  sltiu        a4, t0, 1456
                  lui          a7, 152173
                  and          sp, t0, t6
                  xor          a5, s1, a2
                  divu         zero, a1, s0
                  auipc        s1, 247835
                  andi         s11, s2, 956
                  srl          s9, t2, a7
                  sub          tp, s2, t6
                  sub          a4, gp, s8
                  mul          s4, a3, tp
                  srl          t1, a5, a6
                  rem          tp, a6, t2
                  mul          s11, s1, t5
                  auipc        a0, 216784
                  sub          s6, s8, s9
                  sra          s4, t1, a1
                  lui          ra, 1015678
                  lui          a0, 559775
                  sltiu        s11, s1, 1469
                  slti         t1, a3, -1521
                  mulh         s1, a6, a0
                  nop
                  nop
                  and          sp, s7, t4
                  sltu         a1, a5, sp
                  mulhu        a0, a5, t2
                  mulh         a3, a4, s5
                  srai         zero, gp, 2
                  xori         a3, sp, -600
                  sra          a0, s2, a7
                  slli         s8, sp, 15
                  add          a2, a0, a4
                  sll          s8, s6, sp
                  slti         t2, s6, -344
                  andi         s2, s11, 881
                  div          a5, a6, s2
                  mul          s7, t3, a6
                  auipc        t2, 695909
                  sra          a2, t4, s2
                  auipc        s4, 157334
                  sll          sp, t4, a7
                  lui          s6, 894781
                  srl          s5, t6, a3
                  add          s6, s0, s10
                  lui          s7, 794428
                  slti         s9, a3, -1433
                  xori         a0, a7, -1236
                  sub          s5, s10, t0
                  nop
                  add          tp, ra, s4
                  sltiu        sp, zero, 1761
                  sra          s11, sp, a0
                  xori         s0, t6, 1672
                  ori          s0, a4, 2005
                  ori          a2, a1, 443
                  rem          tp, s10, s10
                  srl          s6, a1, s11
                  add          s7, t5, gp
                  slti         s7, s11, 449
                  sll          tp, t4, t5
                  andi         t4, t3, -1983
                  add          tp, s8, s2
                  mul          t4, t1, a7
                  lui          zero, 287669
                  or           t6, t5, s9
                  rem          ra, t6, s4
                  xor          a2, s7, t0
                  rem          t4, t3, a6
                  lui          t3, 855634
                  srai         s6, s8, 30
                  sub          a6, s0, a6
                  lui          a3, 9884
                  slli         s0, t2, 7
                  divu         s5, s9, a6
                  slti         s6, s2, 1759
                  mulhu        a4, t5, s10
                  sll          t0, s4, s3
                  srl          a0, a5, a4
                  slt          tp, t3, t1
                  rem          s7, t5, t0
                  xor          a3, a7, s8
                  slli         s9, t6, 31
                  srl          s2, a3, t1
                  and          ra, a1, s11
                  sltiu        s7, tp, -1147
                  sltu         s1, s3, s11
                  rem          t6, s8, a4
                  remu         s5, gp, s3
                  nop
                  srl          t0, s6, t2
                  andi         a4, a6, -643
                  or           t3, t4, s7
                  andi         s5, s1, 1193
                  add          a0, s6, tp
                  nop
                  sll          t2, s5, zero
                  div          t3, sp, s6
                  mulhu        s5, a5, s7
                  srai         a5, a7, 30
                  sra          a1, s0, s2
                  remu         s4, a6, a7
                  sra          t2, s4, t5
                  xor          s4, sp, s3
                  sltu         s4, a3, s7
                  sltu         a0, sp, s8
                  auipc        a4, 144433
                  addi         t0, a6, 1792
                  div          a6, zero, s2
                  remu         a6, a4, t4
                  mul          sp, a3, t1
                  auipc        ra, 283471
                  auipc        a7, 168122
                  rem          tp, s11, a4
                  mul          a0, s4, zero
                  and          t6, a3, s8
                  lui          s6, 476670
                  or           gp, ra, t1
                  sltiu        s4, a2, -668
                  slt          s6, a2, s11
                  xor          a7, t4, gp
                  sltiu        a4, t0, -933
                  xori         t3, tp, 1525
                  add          a5, a1, zero
                  xori         sp, a7, 163
                  sll          s0, s0, s8
                  mulhu        a5, s1, s7
                  srai         s6, s3, 24
                  divu         t6, s6, tp
                  srli         s4, a3, 30
                  slti         ra, t1, 432
                  rem          sp, t2, a1
                  sltu         a3, t5, s7
                  mulhsu       a5, a1, t1
                  rem          tp, a6, sp
                  rem          s9, a2, a5
                  srai         a6, s6, 12
                  slli         a2, t6, 16
                  add          a2, t1, s9
                  mulhu        sp, a4, tp
                  rem          gp, s4, tp
                  remu         s9, a6, s2
                  mulhu        t2, t5, a6
                  add          a5, s5, t4
                  ori          s0, a5, 971
                  ori          a6, s5, -735
                  mulhsu       s2, s5, a4
                  sra          a4, a0, s9
                  slli         s7, a3, 18
                  and          gp, zero, a7
                  nop
                  divu         s0, t5, s8
                  rem          sp, t5, s6
                  srli         a0, s6, 3
                  or           a2, t6, a4
                  sra          t0, t0, sp
                  sra          t6, t4, t6
                  rem          s5, zero, s6
                  or           s5, a4, s2
                  sra          a3, a6, t4
                  mulh         s0, s1, ra
                  ori          s9, gp, 1040
                  or           tp, a5, gp
                  slli         a2, t2, 6
                  add          a2, ra, s2
                  mul          t4, s5, a5
                  mulhsu       s6, ra, s3
                  and          a6, t4, t3
                  remu         t6, gp, sp
                  lui          a1, 191782
                  srai         ra, s6, 5
                  slli         a1, a7, 1
                  or           t3, s6, s9
                  add          s1, a4, t3
                  slti         s2, a7, -57
                  add          s7, s7, s9
                  xori         a4, t3, 2
                  divu         t4, t2, a0
                  sltu         a6, s7, a6
                  and          s5, a0, a2
                  mulh         s11, s10, s10
                  mul          s1, t6, tp
                  srl          s9, t3, t0
                  sub          s9, tp, t1
                  sub          s6, t3, s0
                  lui          tp, 455665
                  and          a5, s8, ra
                  sll          a1, s6, a5
                  divu         s0, sp, ra
                  nop
                  remu         s6, a1, s1
                  xor          s8, s8, s6
                  remu         a5, s1, s6
                  divu         s11, t0, s9
                  lui          gp, 362983
                  xori         a1, s11, 1871
                  ori          t1, s3, -1660
                  sltu         t6, s8, a4
                  sltiu        s9, tp, -200
                  remu         a2, s2, t2
                  div          a2, s5, s2
                  or           s5, s9, s8
                  auipc        t3, 925131
                  mulhsu       s1, t5, a5
                  lui          gp, 205968
                  sra          a0, s9, s4
                  mul          s6, s4, a7
                  or           sp, t4, s2
                  sltiu        gp, ra, -612
                  lui          s7, 729694
                  mul          a5, s5, t6
                  mul          s2, s0, a6
                  srai         a0, s4, 25
                  xori         a7, s1, 1773
                  sra          a3, s1, a3
                  srli         s5, t6, 10
                  slt          a3, a5, tp
                  sltiu        sp, a3, -1981
                  sub          a7, s5, sp
                  sll          sp, a0, t5
                  sra          a2, ra, s8
                  slt          s4, s3, s5
                  sltu         tp, gp, a5
                  divu         s1, t4, ra
                  nop
                  auipc        s6, 376080
                  ori          a4, s10, 1632
                  xor          t4, a5, gp
                  addi         s8, ra, -146
                  divu         s8, t5, s0
                  slli         t6, s4, 13
                  srli         s0, t3, 9
                  sra          s0, s1, gp
                  sll          s0, a1, t4
                  ori          a3, s0, 27
                  ori          gp, s11, 1002
                  andi         s6, t2, -1957
                  lui          s5, 719350
                  rem          t1, s11, s1
                  sltu         a0, a0, s0
                  nop
                  add          s1, t0, t5
                  sll          s11, a3, s9
                  srl          s2, t6, s7
                  slt          s8, a4, s3
                  ori          t0, s1, -586
                  mulh         a7, t4, t0
                  mulhsu       a1, a6, a1
                  sltiu        a3, gp, 2033
                  or           s1, a3, s11
                  srai         a1, s9, 25
                  mulhsu       a3, s6, gp
                  sll          s6, t6, gp
                  sll          a0, s10, s10
                  sub          s7, gp, t1
                  rem          a6, a7, zero
                  slti         tp, s10, 2034
                  sltu         zero, s3, s4
                  and          ra, t4, a6
                  lui          a2, 303429
                  mulhu        t4, t2, s4
                  mul          s6, a3, a2
                  sll          gp, s11, t5
                  srai         a2, s8, 17
                  or           gp, t2, s11
                  rem          gp, s7, s8
                  xor          t4, t2, a6
                  sltiu        a6, sp, -1120
                  nop
                  remu         a6, s1, t1
                  rem          s1, s8, s9
                  mul          s11, t4, gp
                  addi         t6, a7, -1585
                  sra          s7, s8, s10
                  lui          tp, 337358
                  slli         t3, s11, 3
                  mulh         t1, s8, s9
                  mulhu        s6, t6, s5
                  slti         s8, s4, -669
                  mulhsu       a7, s9, s1
                  divu         a5, s2, zero
                  rem          a0, s11, t6
                  addi         zero, a3, 470
                  xori         a6, s7, 1278
                  div          s8, s6, a4
                  sll          gp, a6, s7
                  or           s9, s5, gp
                  div          s4, a0, a0
                  xori         a5, t3, -1646
                  mulhu        a1, a2, s5
                  sltiu        a7, s10, -1542
                  div          t4, a0, a0
                  auipc        s4, 904726
                  xori         t0, t4, -329
                  nop
                  or           a1, gp, t1
                  lui          s6, 248145
                  or           s8, a5, s5
                  sltiu        t2, t4, 1170
                  mul          t3, s5, gp
                  and          t6, s3, t6
                  sra          t6, t2, t6
                  sltiu        s8, a2, -1038
                  lui          zero, 27191
                  slti         s7, s3, -1603
                  remu         a5, s0, s9
                  xori         a4, s0, 643
                  andi         s2, sp, -1766
                  mulhsu       t3, a3, s1
                  or           s5, t0, a7
                  divu         t6, a7, s7
                  andi         tp, s7, 1004
                  and          a7, s1, zero
                  lui          a1, 929939
                  add          a1, a3, s4
                  mulh         ra, t2, gp
                  mulhsu       a7, t6, s6
                  mulhsu       t4, a3, s8
                  sltu         s11, a2, s3
                  mul          t4, s11, a6
                  mulh         s2, t2, s8
                  nop
                  sltiu        t4, s2, -458
                  srl          t2, s3, t0
                  and          ra, t4, a1
                  addi         tp, s6, 1951
                  lui          gp, 976412
                  lui          t6, 632644
                  slt          s6, a3, t6
                  nop
                  slli         t0, s6, 15
                  xor          a0, s0, gp
                  slt          t0, t2, s10
                  xor          a7, a6, s8
                  xori         s0, tp, 1913
                  sltiu        s8, s11, 2031
                  ori          a6, sp, 634
                  auipc        s6, 885634
                  sra          t6, t1, zero
                  xor          s4, zero, a3
                  add          a3, sp, s9
                  addi         t0, s0, 1010
                  divu         s11, a3, a2
                  sll          a1, s8, s9
                  add          t6, t1, s9
                  div          s11, t5, t1
                  sltu         t0, zero, s6
                  ori          sp, a4, -92
                  and          t6, t3, ra
                  lui          t0, 225361
                  slli         s2, t1, 17
                  or           tp, s11, s3
                  slt          s5, a7, a6
                  rem          t0, s10, ra
                  xor          a6, s6, sp
                  srli         s11, a0, 17
                  srli         s6, t3, 10
                  srai         s7, t2, 27
                  slt          sp, s3, a7
                  add          s5, zero, a0
                  srl          a0, a1, a0
                  srai         s7, t1, 4
                  lui          s11, 259465
                  and          t0, zero, gp
                  addi         s9, s8, -278
                  xor          s5, a3, s7
                  remu         s6, s0, t2
                  divu         a5, s4, a6
                  mul          a1, s4, s2
                  sll          s2, t6, s5
                  addi         zero, ra, -1333
                  nop
                  rem          a5, s11, s11
                  mulh         sp, s7, s1
                  srai         t1, sp, 9
                  addi         a4, s10, -1271
                  lui          a5, 630745
                  xori         s11, gp, -238
                  addi         a3, a4, -1813
                  xori         s1, a2, -481
                  div          s6, s0, s0
                  div          zero, ra, s11
                  remu         s7, s4, s4
                  xor          t6, s2, ra
                  auipc        s6, 986236
                  slti         gp, t2, 1881
                  srl          s0, s3, t4
                  srl          gp, s6, tp
                  sltu         t6, a6, a7
                  xor          s7, t0, a4
                  slt          s9, a7, s0
                  srli         t0, s7, 15
                  ori          a0, a6, 1351
                  or           s5, gp, a1
                  slti         a4, a3, 1233
                  xori         sp, s5, 1325
                  mulh         t2, s7, s2
                  slt          s1, t6, a7
                  sltu         a0, a3, s6
                  or           s11, gp, s2
                  or           a0, a0, a5
                  sltiu        s6, s6, -726
                  addi         gp, s5, -983
                  mulh         s1, s9, zero
                  div          s8, zero, a6
                  remu         a0, s0, s9
                  lui          s8, 883729
                  slt          s2, ra, s2
                  mulhu        t2, s5, t1
                  or           s11, a7, t2
                  mulhu        sp, a4, a1
                  or           s5, a2, s2
                  add          a7, t3, a7
                  srl          t2, t6, t3
                  sll          a3, sp, a5
                  or           t6, a7, t5
                  mulhsu       t2, a4, sp
                  mul          a4, a7, t1
                  mulhu        gp, zero, a5
                  sltiu        s9, a5, -1326
                  auipc        s2, 338735
                  sltiu        a6, s6, 1385
                  andi         s4, a1, -1201
                  mulh         s8, s0, s6
                  srl          a5, a7, zero
                  mulhu        s2, t2, a5
                  and          a6, s8, ra
                  divu         s0, s10, a2
                  sltu         a7, t6, s9
                  add          sp, ra, t3
                  mulhu        s4, s9, s11
                  div          s2, s3, sp
                  sltiu        tp, a7, -1414
                  sltu         a1, zero, s3
                  addi         s11, t5, -1375
                  rem          tp, t2, s9
                  rem          s1, a2, s1
                  srl          s2, a7, t2
                  lui          s1, 771448
                  slti         a3, t1, 1462
                  or           s5, a2, s11
                  auipc        s2, 284766
                  nop
                  ori          s2, t0, 1874
                  sltiu        zero, s4, 758
                  slli         t2, a5, 13
                  auipc        t4, 121691
                  slli         a1, s6, 8
                  slli         sp, s4, 20
                  sll          a3, s10, a0
                  srl          a7, a0, ra
                  xori         t6, a2, 204
                  and          s2, s5, a2
                  slti         a7, sp, 1523
                  xor          s6, t1, t4
                  mul          s1, a1, s2
                  remu         sp, t3, t0
                  sub          s7, t2, t3
                  srli         s11, s7, 28
                  srli         a1, t5, 20
                  addi         s6, s5, 1091
                  sub          s1, t0, t6
                  div          s6, sp, s8
                  nop
                  slt          t0, s4, s11
                  addi         t0, a7, 930
                  auipc        s4, 183494
                  addi         s1, t4, -360
                  or           s1, t3, s5
                  slli         t0, a7, 27
                  mul          a4, s1, s9
                  andi         a1, s5, -1163
                  mulh         s0, s4, s0
                  sub          t0, s7, s10
                  ori          s1, t4, -1356
                  add          a7, s6, s5
                  slt          s7, a7, sp
                  mulhu        tp, a2, s2
                  nop
                  or           t3, a6, gp
                  add          a1, s6, s0
                  mulhsu       tp, a0, a7
                  srli         t3, a1, 8
                  mul          t3, s5, s10
                  lui          a5, 340409
                  sltu         a4, s3, a2
                  remu         ra, s4, s9
                  slt          sp, s10, a3
                  srai         tp, t4, 19
                  mulh         a4, a6, gp
                  and          a4, s1, ra
                  slti         a0, a7, -1064
                  xori         a1, ra, 756
                  and          s8, a6, a4
                  sltu         t4, s0, s5
                  auipc        s7, 972609
                  lui          a3, 476862
                  add          s2, a0, a7
                  or           s7, gp, s1
                  remu         a0, a0, t1
                  div          s8, t5, a4
                  sra          s1, s2, s2
                  srai         s5, zero, 21
                  lui          a7, 636428
                  add          a7, s5, a5
                  remu         s8, t3, t4
                  or           a1, a3, t2
                  ori          a5, zero, -1778
                  slli         s11, tp, 26
                  nop
                  mul          s6, t3, s0
                  lui          s1, 321160
                  srl          s5, a6, zero
                  divu         s11, t4, a0
                  srl          s0, a4, s8
                  sltiu        a3, s9, -1415
                  lui          s2, 650602
                  addi         a2, t1, -401
                  sltiu        s0, s9, 1015
                  slti         s11, ra, -598
                  sltu         a3, s3, tp
                  sra          t6, t2, a5
                  and          t6, t3, s1
                  srli         ra, a6, 8
                  mulh         t2, s6, a4
                  sltu         s11, zero, s6
                  lui          a0, 463098
                  remu         t2, sp, s9
                  auipc        a6, 383369
                  addi         a0, a0, -1383
                  div          tp, s0, s10
                  mulhu        s8, s7, s4
                  divu         t0, a2, s1
                  mulhsu       t2, s2, s1
                  divu         t1, t6, a4
                  sltu         s2, s3, a2
                  srli         sp, s8, 19
                  andi         a0, s10, 1878
                  sra          s6, s10, a7
                  add          sp, s0, s4
                  div          a6, s11, t1
                  ori          a3, t6, -1178
                  or           a0, t3, sp
                  xori         a7, a1, -945
                  addi         a3, a1, 1915
                  sra          t2, a1, a7
                  srli         t3, t6, 9
                  remu         s2, t4, zero
                  srai         gp, tp, 29
                  and          s7, s2, a6
                  auipc        ra, 857480
                  sra          s11, s3, s3
                  rem          s6, t3, s6
                  slt          s11, tp, sp
                  slt          s2, tp, s5
                  or           s9, a0, s7
                  or           t3, a6, a4
                  lui          s8, 55902
                  lui          s11, 233972
                  mulhu        a3, ra, a1
                  andi         s2, ra, 88
                  slt          a4, a2, a4
                  andi         a6, tp, 1069
                  mulhu        t3, t6, s7
                  sra          s8, t4, ra
                  divu         t6, t4, s10
                  nop
                  remu         s6, gp, s4
                  sltu         s1, a6, a2
                  mul          t0, zero, a3
                  rem          s4, t0, s8
                  xori         s2, a1, 672
                  slt          sp, s3, a4
                  sltiu        s5, s8, -519
                  mulhu        a3, t2, t2
                  sra          s4, a5, a5
                  or           t4, t2, t4
                  div          s7, a2, s8
                  auipc        s6, 919761
                  and          gp, s4, a3
                  mulhu        t3, t0, s11
                  mulhsu       t1, a0, a0
                  sub          gp, t4, tp
                  ori          a1, a2, -1600
                  xor          s1, t5, a0
                  addi         t3, a1, 465
                  mulh         s8, gp, s9
                  rem          t1, t3, t2
                  or           s5, a6, s1
                  mulh         a3, s1, s1
                  mulhsu       s5, s10, s10
                  nop
                  div          a4, a5, a5
                  rem          a3, t3, zero
                  mulh         sp, s3, a3
                  slt          s2, a7, a7
                  sltu         a7, a3, t4
                  slli         s1, tp, 16
                  sltiu        ra, s8, 725
                  slti         t1, a4, 1613
                  srli         t1, s7, 27
                  mul          a1, s4, a5
                  lui          s11, 232180
                  xori         ra, a2, -205
                  div          ra, a4, t3
                  or           s1, s1, sp
                  sll          sp, t2, zero
                  sra          a4, zero, s0
                  sltiu        s11, t5, 654
                  remu         s11, t6, s1
                  slt          a5, a0, zero
                  mul          a0, s7, t2
                  xori         s11, s5, 2044
                  slti         a0, s10, 143
                  sltiu        s8, s11, 628
                  nop
                  srl          t0, s8, a6
                  or           a5, t4, t1
                  andi         gp, a7, 1186
                  srl          a0, a0, sp
                  div          a6, ra, s9
                  sltiu        gp, a4, 676
                  srl          s11, s7, s11
                  srai         s11, gp, 4
                  andi         s2, s8, 319
                  sub          s5, s10, t4
                  rem          s9, gp, t4
                  slt          s2, s10, s11
                  srli         s9, ra, 26
                  sra          s11, t5, s7
                  ori          zero, zero, 383
                  auipc        a7, 531919
                  sltiu        s9, s9, 1164
                  xor          t0, a6, t0
                  mul          t0, s6, zero
                  sub          t1, a3, a6
                  divu         t0, s1, s5
                  rem          s11, a1, t6
                  xori         ra, s10, 1730
                  divu         s2, a1, s8
                  sltu         s5, t6, t4
                  sltu         tp, t4, s11
                  lui          ra, 216450
                  sll          a2, s7, zero
                  slli         s11, s4, 19
                  remu         t4, a5, t4
                  xor          t3, s1, a1
                  slli         gp, a5, 9
                  and          s8, gp, s11
                  add          s8, t3, a5
                  ori          a2, sp, -1796
                  nop
                  sltiu        s6, a2, 814
                  lui          gp, 56673
                  andi         zero, s7, 2045
                  srai         t3, s2, 30
                  div          zero, t4, a7
                  xori         s9, a6, -1053
                  slt          sp, s0, a6
                  addi         s1, t0, 349
                  sltiu        s6, t3, -1851
                  auipc        s8, 559284
                  add          a5, t0, a6
                  mul          s7, s3, t0
                  sltiu        a4, t0, -351
                  mulhu        a7, t2, ra
                  sltiu        t2, zero, -1848
                  sltu         s2, t6, s5
                  auipc        a4, 122863
                  andi         t1, a0, 939
                  and          a5, a3, s0
                  andi         s2, s8, -859
                  mulhu        tp, s10, s0
                  ori          t2, a7, 1093
                  sltiu        s5, a5, -1162
                  add          a1, t5, a6
                  divu         t4, ra, s11
                  lui          ra, 660812
                  andi         a1, s4, -421
                  mulh         a4, zero, t6
                  or           s5, tp, s3
                  remu         t0, gp, a4
                  mulh         t2, t4, a2
                  mulh         a0, s2, t3
                  and          t2, a6, gp
                  addi         s6, t3, 681
                  mulhsu       a5, gp, s1
                  addi         a6, s10, -1158
                  addi         zero, t5, -1423
                  and          a3, s7, a1
                  slti         s4, a3, -1752
                  mulhsu       a1, t4, s3
                  mulhsu       s5, s5, s1
                  mul          a2, zero, t1
                  add          a6, t5, t4
                  slt          a0, a2, t5
                  sltu         s2, s0, s4
                  xor          t0, s5, zero
                  xori         gp, tp, 1477
                  srl          s6, s4, a2
                  rem          s8, sp, a3
                  sra          t3, s8, s1
                  xor          zero, a5, a6
                  remu         s7, s7, s3
                  add          zero, a3, s3
                  rem          a2, a1, s11
                  remu         t2, tp, s1
                  sra          s4, s2, a4
                  ori          s5, s1, 912
                  or           sp, t1, s8
                  xori         a7, s6, -1846
                  mulhu        s4, a7, a1
                  rem          s11, s5, t4
                  xor          a4, s2, t2
                  sub          a4, s2, sp
                  andi         s0, a0, -96
                  sll          t4, a4, s4
                  mulhsu       s7, s4, s9
                  slli         s9, t1, 1
                  srli         t1, s3, 13
                  mulhu        zero, a4, a6
                  remu         t4, ra, s5
                  ori          s8, t6, 1658
                  or           s6, a4, a4
                  srai         s7, s10, 22
                  rem          t4, a4, t1
                  nop
                  nop
                  or           a7, s5, t1
                  slti         gp, s6, -631
                  srai         sp, s10, 11
                  rem          tp, s3, s8
                  xori         s8, a3, 1288
                  sll          gp, tp, a0
                  lui          tp, 171557
                  remu         a2, s6, zero
                  sra          a4, s1, a2
                  slli         s11, sp, 26
                  and          a5, a4, s3
                  rem          t2, t5, s2
                  sra          a1, a5, sp
                  rem          a5, tp, gp
                  div          t1, a3, tp
                  srli         s7, a6, 25
                  div          s9, sp, s8
                  xor          s1, gp, t2
                  srai         t4, a1, 18
                  slt          a5, s3, zero
                  mul          a4, ra, s9
                  mul          s0, s10, t6
                  remu         s0, a0, s2
                  addi         s0, s3, 1966
                  slli         t1, t1, 17
                  mulhsu       s4, ra, t6
                  div          t3, s4, t5
                  sub          t3, gp, t1
                  mulhsu       t2, tp, t3
                  rem          a0, s0, a0
                  auipc        s2, 331978
                  addi         s7, s5, -1202
                  andi         sp, s4, 1321
                  sra          t1, t4, t0
                  remu         gp, t6, t6
                  nop
                  nop
                  sra          s7, a2, t3
                  mul          s1, a2, s7
                  div          s5, t6, a5
                  lui          s6, 192086
                  sltiu        t0, s7, 779
                  xor          s8, s5, sp
                  lui          s2, 846756
                  auipc        tp, 755856
                  remu         ra, zero, tp
                  addi         s2, tp, 1290
                  or           ra, t3, t1
                  mulh         s6, a4, a3
                  and          zero, s10, t0
                  xori         a0, a2, -162
                  slti         a3, a5, -742
                  mulh         gp, t1, a0
                  srl          t4, s1, zero
                  sll          s4, zero, ra
                  add          a4, s10, a7
                  rem          t4, s11, s8
                  mul          a2, a0, a2
                  addi         t6, t5, -114
                  andi         s7, gp, -446
                  and          t6, sp, s9
                  sra          gp, a5, s11
                  divu         sp, s1, t0
                  lui          t2, 384797
                  xor          t1, a4, s11
                  sra          tp, ra, sp
                  add          s4, a6, zero
                  remu         zero, t3, t6
                  div          a2, a5, s7
                  addi         t3, s11, 1388
                  auipc        tp, 435692
                  andi         gp, a2, 834
                  remu         a7, t3, s5
                  slti         t3, ra, -1322
                  mulh         s4, t6, s9
                  mul          s8, t0, tp
                  divu         a0, a4, s3
                  ori          s8, a2, -885
                  sltiu        ra, a2, -258
                  rem          t6, t4, a1
                  slt          s0, s1, tp
                  addi         s1, s0, 1841
                  mul          t6, s6, s11
                  ori          a0, s3, 1602
                  ori          s0, tp, 22
                  srai         t1, s3, 31
                  or           a1, s8, s10
                  sltu         s5, s4, t5
                  mulh         a7, a3, t2
                  srai         ra, t6, 22
                  divu         sp, gp, t4
                  div          a3, t5, s5
                  or           s1, s6, ra
                  or           tp, a3, s8
                  auipc        ra, 771536
                  xori         a7, t4, 1261
                  div          t1, ra, a0
                  mulhsu       tp, t6, s3
                  auipc        s8, 794325
                  sltiu        s1, a7, -1680
                  slli         a5, ra, 29
                  or           t1, s8, zero
                  slli         s6, s6, 17
                  srli         a2, s4, 9
                  sltiu        a5, t4, -972
                  sll          tp, t4, t1
                  xori         a4, t6, 1237
                  lui          a1, 702103
                  sra          gp, s0, t5
                  rem          t2, t5, s0
                  mulhu        gp, a4, s7
                  lui          s8, 904756
                  add          a2, s6, s11
                  mulhsu       a4, a7, a7
                  slti         s7, s2, 1512
                  ori          a0, a4, -979
                  andi         a5, s3, 1338
                  slt          a2, t4, zero
                  rem          s11, s1, a6
                  rem          s8, t0, s1
                  andi         ra, zero, 215
                  xori         s2, t5, 260
                  slti         a4, s0, -1104
                  sltiu        tp, s0, 721
                  mul          s7, a7, t3
                  slt          s2, s7, s4
                  srai         s6, a3, 20
                  sra          t1, s7, a4
                  mulh         s2, t3, t6
                  or           s9, s10, a2
                  sltiu        gp, a5, -1841
                  sltiu        s11, s5, 2033
                  mul          tp, t4, ra
                  nop
                  xori         s0, s5, -221
                  or           a7, s4, sp
                  div          a4, t6, a7
                  mul          s6, tp, s0
                  sll          t0, ra, s11
                  mulhu        s7, s7, t2
                  rem          a6, s3, ra
                  and          tp, sp, s0
                  lui          a0, 704970
                  sub          s5, zero, s9
                  mulhsu       tp, a7, gp
                  sltu         a1, s4, a2
                  sltu         s11, a7, t2
                  mulhu        s8, t1, ra
                  sltiu        s6, a0, 602
                  and          t3, s10, a7
                  sltu         a3, gp, s9
                  slli         s2, s3, 15
                  slti         a2, t0, 1690
                  sll          t4, s1, s9
                  mulhu        t1, s5, zero
                  and          s4, t3, t4
                  srai         sp, t1, 22
                  xor          s0, tp, zero
                  sltiu        s11, s3, -581
                  lui          a7, 144890
                  mulhsu       s1, t2, s9
                  slt          a3, a3, a5
                  sra          a1, t3, ra
                  divu         t3, ra, a6
                  mul          t0, t2, s10
                  srai         a7, t0, 26
                  xori         s5, s7, -1635
                  xor          a7, t6, a7
                  add          a6, t4, sp
                  lui          a2, 7758
                  srl          a7, t1, a4
                  or           s5, t0, s6
                  ori          s11, s2, 847
                  sltiu        a4, t2, -141
                  srl          s9, s11, a2
                  andi         s11, a3, -572
                  srli         s7, t5, 19
                  nop
                  and          t1, s2, s6
                  sltiu        a2, t5, -1120
                  divu         a2, zero, s9
                  auipc        gp, 998094
                  and          s1, t1, s5
                  mulhsu       sp, s1, t5
                  mulhsu       a5, s2, sp
                  and          t6, a7, a3
                  mulhu        a5, a6, a7
                  sltu         a0, gp, s6
                  ori          s7, s3, -1680
                  mulhu        a4, s6, a6
                  ori          s8, a1, -846
                  addi         a3, t0, -1513
                  sub          t6, s7, a4
                  slti         s4, t6, 261
                  slli         s5, t3, 6
                  srli         s6, t1, 4
                  mulhu        s2, s2, tp
                  addi         s9, t3, 1262
                  slli         zero, t5, 28
                  addi         s7, a3, -774
                  sll          a1, a4, t5
                  mulhsu       t0, s11, t5
                  srli         s2, t1, 8
                  mulhsu       ra, s4, a5
                  slti         s2, t1, -1227
                  sll          a4, tp, s6
                  div          t3, tp, s1
                  srl          a1, s5, zero
                  auipc        s7, 803859
                  mul          a4, a5, s7
                  slli         s11, s10, 13
                  slt          s5, a1, a5
                  sltu         gp, s3, a3
                  slli         t6, tp, 31
                  xor          a6, a5, s4
                  or           t6, s1, zero
                  auipc        s8, 227937
                  slt          zero, t4, a1
                  andi         t3, s11, 683
                  andi         s0, s10, 1624
                  div          a4, t6, a4
                  srli         s5, a4, 1
                  mulhsu       a0, t4, s10
                  xor          t3, a0, s2
                  nop
                  rem          sp, s7, ra
                  slti         a6, t5, -39
                  xor          s1, t4, s0
                  lui          t1, 494326
                  andi         s0, s10, 1220
                  addi         s4, s3, 1433
                  srli         s8, tp, 24
                  srai         s7, a2, 7
                  sltiu        s5, t6, 756
                  xor          s2, s6, t0
                  mulhu        t3, a3, t3
                  or           s9, s3, a0
                  divu         s2, s0, a5
                  remu         s2, a4, a5
                  auipc        a6, 819098
                  srai         gp, t4, 16
                  sltu         s9, s7, a3
                  lui          s5, 282798
                  and          a6, gp, s4
                  addi         s6, a0, 21
                  add          t1, s3, a5
                  and          s5, t1, s3
                  lui          t3, 797138
                  sra          t4, a1, a6
                  sll          sp, t4, t0
                  slti         t1, t5, -235
                  add          s1, t4, t3
                  nop
                  addi         zero, s3, 236
                  lui          s5, 786043
                  lui          t2, 907233
                  rem          s6, a3, a2
                  add          tp, t4, s11
                  mul          a3, a5, a7
                  nop
                  slti         a0, a0, -904
                  divu         s2, zero, t5
                  mulhu        a4, tp, a5
                  nop
                  mulhsu       gp, s7, tp
                  ori          a6, s9, 1959
                  srl          a4, ra, s0
                  remu         t6, ra, gp
                  ori          a1, s7, 689
                  sub          a2, a2, t5
                  andi         a0, t3, 864
                  ori          t3, s0, -1564
                  srl          zero, s11, a0
                  sltu         a6, a5, s6
                  div          a2, a0, t3
                  lui          s5, 36503
                  divu         a5, a4, t3
                  xori         s1, zero, 1573
                  remu         s7, t1, t2
                  mulh         sp, s10, t6
                  sub          t4, t6, t6
                  rem          t0, t1, s8
                  nop
                  div          s1, t4, s2
                  auipc        zero, 478321
                  slti         ra, t2, 501
                  sltu         s9, s2, a5
                  sltu         t1, s10, t3
                  or           a5, t0, a4
                  lui          a0, 709978
                  rem          t1, t2, s2
                  andi         s7, s3, -1305
                  xor          s2, s2, zero
                  addi         zero, t1, 1915
                  mul          s8, a2, a7
                  sltu         zero, ra, t2
                  xori         s9, a7, 1662
                  ori          tp, a6, -1433
                  xor          s5, s10, ra
                  mulh         sp, s0, ra
                  lui          s0, 588072
                  addi         a6, s4, -1396
                  lui          zero, 754709
                  lui          s1, 207549
                  xor          a4, t4, s11
                  mulhsu       s1, ra, tp
                  sub          a4, sp, s0
                  andi         t6, a7, 1675
                  slti         s7, s11, -498
                  slli         a6, s3, 20
                  mul          s6, s2, s1
                  xor          zero, a3, s1
                  slli         sp, t6, 19
                  sub          s4, a1, sp
                  mulhsu       tp, s1, s0
                  srli         s11, s5, 24
                  or           a3, a1, gp
                  mul          sp, s1, ra
                  slt          s1, a5, s2
                  mulhsu       s5, a7, zero
                  add          t6, a2, tp
                  ori          s9, sp, -1914
                  ori          a5, a1, -1220
                  slli         t4, a7, 26
                  lui          s7, 236313
                  xori         a0, a4, 1999
                  sra          s9, t1, s0
                  srli         s5, t1, 30
                  nop
                  mul          s11, sp, sp
                  srai         a0, s6, 2
                  srai         t0, a5, 27
                  addi         s7, s1, 1784
                  sll          s6, gp, s2
                  mul          sp, gp, s8
                  mulh         zero, sp, zero
                  slti         a5, s9, -1302
                  xori         a3, a1, -561
                  sub          a4, s7, s9
                  mul          s2, s5, a5
                  sra          a7, t6, a4
                  rem          s11, t3, a3
                  or           s4, t6, a2
                  slti         a0, s11, -1307
                  rem          s8, t2, s11
                  and          a7, s7, s3
                  addi         a3, t5, 877
                  sra          a1, s5, t1
                  sltu         t3, a5, a4
                  add          s11, t5, a1
                  lui          gp, 530140
                  sra          a5, t2, a7
                  srl          s6, s8, s5
                  addi         a0, s1, 1775
                  addi         gp, tp, 1020
                  mulhsu       a6, s0, zero
                  addi         s1, zero, -1844
                  sltu         s2, t2, t5
                  mulhu        s1, a5, t2
                  add          s4, t6, s6
                  addi         s2, gp, -1607
                  slti         t6, s11, -255
                  addi         s6, t1, -1533
                  divu         tp, s7, s2
                  mul          t6, a5, a4
                  mulhsu       s6, zero, a1
                  or           s2, t2, s11
                  slli         s2, s3, 24
                  sll          a0, t4, gp
                  and          tp, s1, tp
                  mulh         a4, a1, a6
                  mulh         sp, s8, s6
                  auipc        s2, 491065
                  srai         s2, a2, 19
                  srl          a0, a7, a3
                  sltu         s9, a7, s9
                  xor          a2, s0, tp
                  auipc        s8, 1021946
                  div          a1, s9, s8
                  slli         a6, s8, 7
                  lui          t4, 812062
                  and          a3, t0, gp
                  srai         s6, s10, 2
                  nop
                  srli         s0, t0, 11
                  mulhsu       s7, s4, t5
                  sra          s1, s2, a2
                  xor          a6, sp, t2
                  srai         a4, a0, 18
                  ori          a3, a7, 685
                  andi         gp, a4, 117
                  slli         s6, a1, 31
                  mul          s2, a4, s9
                  andi         s1, a1, 1585
                  add          a1, a2, gp
                  divu         a3, a0, a2
                  mul          a0, s5, t1
                  xor          tp, t2, s5
                  slti         zero, zero, -1363
                  div          ra, a1, s6
                  xor          s6, s1, s0
                  nop
                  sltiu        a0, s11, -1079
                  addi         a3, ra, 404
                  slt          a7, t4, s0
                  nop
                  lui          a0, 332372
                  andi         gp, a6, -704
                  add          s9, t0, s4
                  addi         s6, a1, 1030
                  slli         s8, s1, 6
                  mul          a1, s11, s2
                  addi         s5, s0, -727
                  sll          s11, s11, a0
                  ori          a4, t6, -1495
                  mulhsu       s1, t3, a1
                  mulh         s5, s11, s0
                  srli         a3, s8, 4
                  divu         s4, t6, s7
                  ori          s7, s6, -1935
                  divu         t6, t5, s0
                  xor          t6, a4, a3
                  xori         a3, a6, -1141
                  andi         a2, sp, 1152
                  or           t0, a3, s4
                  add          t2, t1, t2
                  slli         s2, s8, 13
                  divu         t4, t5, t6
                  divu         a5, s7, s4
                  nop
                  sra          t4, ra, s11
                  remu         s2, gp, s3
                  and          a0, t4, a2
                  xor          t6, a2, s10
                  sub          s7, t1, t5
                  rem          s11, a4, s5
                  slt          t2, s6, s7
                  sltiu        a3, s11, -870
                  sub          a1, a7, a5
                  sub          s11, s2, t3
                  sra          s1, s4, s0
                  auipc        s7, 91171
                  srai         t6, s4, 3
                  sltiu        s11, s10, 504
                  mulhsu       a7, s8, s3
                  sra          t0, s3, s3
                  mulhu        s11, sp, t6
                  or           tp, sp, s5
                  nop
                  xor          tp, t4, t3
                  slt          s7, t1, a4
                  addi         a6, t5, -1836
                  xori         s2, a3, 1810
                  mulhu        gp, ra, s6
                  andi         s11, s11, -1901
                  ori          a4, s10, -1039
                  and          s8, a5, s7
                  mulhu        ra, s7, a2
                  sltu         sp, s6, s8
                  andi         s7, t3, -287
                  remu         a1, s5, tp
                  mulh         t0, sp, s6
                  auipc        t2, 338450
                  sltiu        ra, s3, 647
                  slli         a0, tp, 7
                  remu         s0, s1, a0
                  div          ra, a6, s5
                  nop
                  slti         s5, a4, 817
                  add          a2, t4, t1
                  mulhsu       a5, s10, t5
                  mul          t6, s4, t6
                  mulhsu       s7, zero, sp
                  srl          s4, a7, zero
                  slli         s6, s0, 19
                  or           s0, s7, s7
                  mulh         t1, a3, a2
                  and          a4, s5, t4
                  xor          s0, s7, s7
                  andi         a3, s4, -1360
                  div          t4, a1, s5
                  divu         s8, s7, a4
                  slli         a0, sp, 2
                  and          a7, tp, s7
                  addi         s11, a6, -235
                  mulhsu       s9, a0, a6
                  or           a3, s1, s7
                  mulhu        a1, a3, t1
                  slt          a1, t0, s5
                  and          t1, t2, t0
                  divu         s11, s1, a0
                  slt          zero, a0, a5
                  andi         ra, s3, -416
                  sltu         a4, a6, t3
                  xor          a3, a4, sp
                  sltiu        s11, a0, 1635
                  div          a4, a5, a5
                  ori          a0, t0, 883
                  ori          s8, s5, 1858
                  ori          s7, t6, 637
                  add          t6, s3, a1
                  ori          a4, t2, -801
                  srai         t0, a3, 25
                  sll          a1, s7, t3
                  mulhu        a6, s3, a7
                  mulhsu       a5, t1, t5
                  or           gp, a5, a5
                  srai         ra, s4, 1
                  addi         s11, t2, 451
                  and          t4, t6, s8
                  sltiu        t4, a0, -695
                  divu         gp, s4, t1
                  mulh         s9, t5, gp
                  mulh         ra, s1, t2
                  and          a5, a3, t6
                  sltiu        s1, t4, -280
                  sll          t6, s8, t4
                  ori          s2, s8, 309
                  nop
                  sub          a7, a2, s1
                  xor          t3, t2, a1
                  nop
                  slli         a6, t6, 20
                  slti         a2, t4, -126
                  mul          a4, s3, s2
                  slt          t3, s1, t4
                  nop
                  auipc        s9, 764034
                  mulhu        a0, t3, t6
                  or           gp, s11, t0
                  auipc        gp, 446353
                  slli         a2, s1, 27
                  remu         t1, zero, t1
                  mulhsu       a1, a5, tp
                  sll          a7, t3, t2
                  srai         s1, s7, 29
                  xor          a6, t5, s1
                  mulhsu       s6, s5, t4
                  sub          t2, s9, zero
                  div          t4, tp, t2
                  mulhsu       s11, ra, a3
                  andi         a5, a3, -1991
                  nop
                  rem          s1, tp, t2
                  srai         a5, ra, 21
                  divu         a6, s3, s7
                  xor          a7, a2, s3
                  sra          s6, t3, t4
                  or           s8, s10, gp
                  div          s1, a5, a5
                  mulhsu       gp, s2, t3
                  xor          s1, a2, s8
                  sll          a3, ra, zero
                  slti         a3, a3, -557
                  auipc        s6, 706196
                  and          ra, a0, s6
                  remu         s11, s0, s6
                  slli         s4, sp, 14
                  or           a7, a3, s0
                  mul          t3, sp, s0
                  mulhsu       a7, sp, tp
                  and          t3, s0, a5
                  sltiu        sp, s8, -1568
                  slti         a3, s4, 50
                  sub          a1, t3, a6
                  mul          a3, a4, t6
                  srl          a2, s5, s8
                  sub          s2, sp, a3
                  slt          t6, s0, s7
                  sltiu        a2, t4, -1343
                  lui          s5, 588555
                  xori         s0, a7, 953
                  slli         a5, s9, 27
                  sltu         a2, t6, s2
                  xori         sp, s9, 1275
                  srl          a6, t0, s8
                  lui          s6, 1045388
                  sra          s7, t2, s0
                  mulh         s9, s9, s2
                  ori          a1, a2, -299
                  srli         a1, a5, 14
                  ori          a6, a0, 200
                  xori         a2, t0, -661
                  sltiu        sp, ra, 489
                  sltu         s4, t6, s7
                  remu         zero, a0, zero
                  srai         a4, t3, 7
                  slli         s1, s4, 6
                  or           s8, gp, a2
                  and          s4, a7, s7
                  and          t6, s9, s5
                  slt          t0, s2, a2
                  slti         a3, s10, 1064
                  sltiu        a6, s1, -1316
                  xor          s0, a7, t0
                  sra          t6, sp, gp
                  ori          s6, a0, -7
                  remu         s8, gp, a0
                  addi         s5, a1, -1810
                  divu         t6, s5, a7
                  xor          s4, s4, tp
                  sll          s6, a4, a1
                  slti         s11, t1, -295
                  xori         a2, tp, -949
                  auipc        s7, 818665
                  slti         a0, sp, -924
                  sub          gp, sp, s11
                  mul          a7, s9, t6
                  add          a2, zero, s1
                  rem          gp, t3, tp
                  xor          t4, a5, a5
                  xori         t6, a4, -1123
                  addi         s8, gp, 619
                  auipc        s0, 545042
                  sll          s9, s9, s0
                  add          s6, a1, a0
                  mulhu        s1, s6, s4
                  remu         t4, t0, t4
                  srai         s11, gp, 13
                  lui          s6, 975508
                  ori          sp, s5, 1047
                  slti         ra, t3, 36
                  addi         a4, ra, 28
                  nop
                  xori         s4, s0, 902
                  srl          s2, s9, a7
                  srl          s0, t0, s8
                  slli         s9, t1, 19
                  slt          s8, a6, a3
                  xori         a7, sp, -1424
                  sll          s2, a1, ra
                  xor          a2, t1, s7
                  add          s4, ra, s1
                  srl          s2, s8, t0
                  mulhu        a0, s6, s6
                  div          t6, t3, s1
                  slti         zero, t2, 761
                  mulhu        t0, ra, a7
                  sltu         s1, t4, tp
                  andi         t1, t6, -1175
                  mulh         sp, s10, ra
                  add          sp, a5, a2
                  srli         a6, s7, 30
                  div          tp, a6, s9
                  slli         a7, t4, 25
                  divu         a6, a6, t0
                  mul          t3, s11, s5
                  srai         t4, ra, 26
                  srli         s2, s1, 27
                  mulh         a7, s8, t5
                  remu         t1, s1, s0
                  slli         s9, s10, 18
                  remu         s2, s6, ra
                  mulhu        gp, a5, s2
                  sltu         a3, tp, t1
                  lui          t1, 475699
                  div          s7, s1, a6
                  and          a5, t3, s3
                  xori         t4, s5, 1339
                  ori          t6, t5, -1383
                  auipc        t1, 187945
                  nop
                  slti         ra, tp, -358
                  divu         s7, a2, a0
                  xori         a5, a3, -155
                  divu         t0, tp, a3
                  lui          a7, 430184
                  sltu         s11, s0, t6
                  lui          a5, 611253
                  sltu         t0, s10, a6
                  lui          s4, 360328
                  add          gp, s9, t4
                  nop
                  slti         s2, a0, 757
                  xor          s6, s5, a2
                  slli         s0, t4, 28
                  rem          t0, sp, a3
                  div          t1, ra, a0
                  or           s7, t0, s11
                  andi         s7, t2, -582
                  srai         t3, s11, 11
                  sra          s11, s2, s0
                  slti         s0, t3, -1790
                  andi         s8, ra, 1417
                  lui          a3, 168149
                  and          t0, s10, tp
                  slti         s1, tp, -129
                  slt          s9, t3, s6
                  slti         t3, s4, 397
                  add          s9, s11, s2
                  auipc        s9, 465026
                  or           s2, s9, t3
                  remu         t6, a3, s1
                  sltu         a4, t2, s11
                  add          s9, s9, a0
                  slt          a4, a1, t3
                  lui          s0, 490121
                  remu         a0, gp, tp
                  ori          ra, s9, -1074
                  sub          a2, t4, s6
                  xor          a1, t6, s6
                  sll          s11, a7, s0
                  andi         a4, a3, 1751
                  nop
                  div          t2, s2, s2
                  slli         s8, a0, 20
                  xor          ra, s2, s7
                  slli         s8, a7, 13
                  add          t2, a0, t6
                  auipc        gp, 116269
                  srli         s11, a6, 31
                  add          s2, a2, a0
                  auipc        s1, 102262
                  remu         s4, s1, t0
                  or           s4, t4, s1
                  mul          t6, s8, s7
                  div          s5, a3, s2
                  slli         a3, s0, 22
                  sltiu        t4, s2, -1695
                  sltu         s7, s8, s8
                  remu         s2, s0, s7
                  sll          t4, a4, s11
                  sra          s7, tp, a5
                  sll          t0, s4, gp
                  sra          a5, t6, zero
                  slli         t0, t5, 3
                  xori         t1, s10, -1654
                  mulhsu       s2, t6, t0
                  mulhsu       a5, s2, zero
                  sra          t1, s1, tp
                  ori          s7, sp, 250
                  slti         tp, ra, 103
                  xori         s4, s11, -982
                  rem          s2, s4, ra
                  auipc        a7, 1024483
                  sll          s1, s8, t5
                  sll          t6, s8, s7
                  mulhsu       s4, s10, s9
                  sra          s0, a3, s5
                  ori          a2, a2, 216
                  nop
                  lui          a1, 481808
                  mulh         s5, t0, a6
                  sub          a2, s2, s1
                  mulh         s6, s3, s5
                  sra          s8, a1, s4
                  sra          a0, tp, t1
                  slti         a6, s4, -92
                  sll          s1, zero, t2
                  slti         t2, t2, -1401
                  srai         a3, gp, 18
                  and          s4, a3, s0
                  rem          a0, t4, s1
                  or           ra, ra, t4
                  sltiu        s7, a5, 873
                  remu         a6, s7, s10
                  xor          zero, s2, a7
                  mulhsu       s0, s2, sp
                  or           s6, a2, s4
                  sll          a1, s6, s10
                  srai         a2, a7, 3
                  rem          s7, a5, t6
                  divu         a0, a5, t6
                  mulhsu       s5, s5, t4
                  nop
                  sll          a1, s10, s11
                  divu         zero, a7, s9
                  xor          a4, a6, s4
                  xor          s11, a1, zero
                  srl          s7, t0, s8
                  mul          s8, s3, s9
                  mulhu        t1, t1, s5
                  slt          s9, s6, s2
                  add          a4, t6, s0
                  and          s2, ra, a5
                  and          a2, s4, sp
                  remu         s11, a6, s7
                  or           ra, t2, zero
                  div          a3, s6, a0
                  divu         t1, t0, s4
                  and          t3, a3, zero
                  lui          s7, 544577
                  mulh         s9, s1, a4
                  sltiu        s8, t4, -1708
                  sll          s8, a5, t2
                  srai         t0, s9, 20
                  addi         ra, t1, -1230
                  remu         t2, s5, s1
                  auipc        a5, 1000842
                  rem          s11, sp, t3
                  srli         a7, ra, 25
                  mul          a4, s4, s4
                  sltiu        a3, s10, 1368
                  slt          a6, sp, s8
                  mulhu        zero, s10, s4
                  ori          s1, sp, -1253
                  ori          a7, s10, -802
                  srli         zero, s8, 30
                  mulhu        zero, a4, s7
                  mulhsu       s6, a5, t0
                  srai         ra, a6, 5
                  srai         a2, t3, 2
                  lui          ra, 176555
                  sltu         a5, s3, a1
                  slli         s9, zero, 21
                  xor          a6, t2, s5
                  xori         t6, t2, 154
                  addi         s8, tp, -1649
                  srai         a5, a0, 16
                  srl          a2, s11, s1
                  auipc        t2, 206095
                  or           s11, a6, a0
                  sll          t1, s6, t3
                  xori         a4, ra, 725
                  sll          ra, s1, gp
                  remu         t1, a2, t3
                  sra          gp, t2, s7
                  xor          zero, a0, s0
                  mulhsu       a1, s4, s5
                  xori         s0, s3, -989
                  mul          a6, s0, s8
                  sll          a3, sp, tp
                  nop
                  add          t2, a2, t5
                  sltu         s6, s2, a4
                  slti         s11, a5, 928
                  mulhu        a6, s8, a0
                  slli         s1, s7, 29
                  srai         t0, s7, 13
                  ori          s8, t1, 34
                  sltiu        a2, a1, -2037
                  mulh         s11, t0, s5
                  srai         a2, s6, 17
                  nop
                  divu         a4, t2, a0
                  srli         gp, s3, 9
                  rem          a5, sp, t2
                  srl          s7, zero, s1
                  and          a2, t6, t6
                  rem          zero, t0, t5
                  srai         a0, t1, 31
                  sub          tp, t1, t0
                  mulhsu       t1, a1, s5
                  mulhu        s4, t0, a0
                  xori         s5, ra, -767
                  ori          s2, sp, 1932
                  lui          ra, 933495
                  mulh         s6, s6, gp
                  div          sp, s9, gp
                  and          a1, s1, s11
                  or           a0, s7, t4
                  mul          s9, a7, t1
                  sltiu        a2, a2, 365
                  slt          a2, a5, s7
                  lui          t2, 727166
                  add          t3, t0, t2
                  mulhsu       s0, a1, sp
                  xori         s6, t2, -1985
                  mulh         a0, sp, s2
                  mulh         s5, s11, t1
                  sll          s4, s6, a5
                  add          a1, a5, a3
                  ori          t6, t2, 1364
                  andi         t2, s6, 206
                  rem          a5, s2, a0
                  addi         t6, a0, -419
                  or           t4, s1, a5
                  xor          zero, a6, s5
                  rem          t6, s5, s6
                  mul          s7, s8, a2
                  and          s6, s4, s7
                  sub          s11, zero, s6
                  srl          gp, a6, s1
                  addi         s6, s10, 1688
                  lui          sp, 736049
                  mulhsu       s7, s4, s1
                  ori          a7, t6, 1874
                  xori         ra, a1, -647
                  slt          a5, t3, s10
                  xori         t0, a7, 1093
                  rem          a4, s9, a7
                  auipc        ra, 356272
                  srai         a3, ra, 20
                  and          t1, t6, s1
                  sub          t2, a3, sp
                  div          s11, t0, t0
                  rem          s0, s11, s4
                  add          a4, t0, a3
                  or           s8, s4, a4
                  sra          sp, ra, a4
                  and          a5, a1, t2
                  and          s5, t3, s4
                  srli         a6, a3, 22
                  or           s4, t2, s4
                  sltiu        a2, s3, 349
                  rem          a0, sp, a3
                  sra          a3, s11, s6
                  srai         a4, s2, 15
                  divu         a4, a1, t2
                  div          s11, sp, s4
                  slti         t1, t1, 1151
                  slti         a5, t4, 1221
                  ori          a5, gp, -508
                  sub          s11, a7, t3
                  srli         a4, t2, 4
                  sub          s4, a3, t4
                  sll          a4, s6, s4
                  srai         s7, t6, 4
                  slti         a1, t6, 1322
                  or           t4, a4, t2
                  div          s9, a2, a2
                  andi         a7, tp, 858
                  nop
                  sra          a0, t6, s7
                  addi         t6, s8, -1245
                  srl          a0, t2, t6
                  add          a1, t5, a5
                  rem          a6, s3, s11
                  sll          a3, t1, t3
                  xor          s6, a1, t3
                  mulh         tp, t5, t4
                  sltiu        s0, tp, -2044
                  sll          t0, s11, tp
                  or           s5, zero, s1
                  nop
                  sra          a4, s11, sp
                  mulhsu       zero, s3, zero
                  srli         s11, t2, 27
                  and          a1, t0, s4
                  addi         s5, a2, -1339
                  andi         a1, ra, -1632
                  slti         s8, s7, 29
                  sll          ra, sp, s7
                  sra          ra, t3, s4
                  srai         ra, s4, 5
                  srai         a4, a5, 15
                  rem          ra, a0, s7
                  divu         t1, s3, a7
                  xor          a2, t2, a7
                  divu         s8, t6, a3
                  srl          t6, s0, s8
                  srl          a4, t6, s3
                  add          a4, s10, s10
                  sltu         t0, s8, t1
                  remu         a3, t3, s10
                  and          zero, s1, a4
                  xori         t0, a3, -294
                  xor          tp, t2, a4
                  lui          gp, 746041
                  addi         s2, a4, 1662
                  or           t1, s9, s10
                  rem          t3, s3, s7
                  sra          a7, a5, a6
                  sltiu        s5, s4, -1075
                  mulhsu       s4, s3, s5
                  remu         sp, a4, t0
                  sra          a2, t3, a6
                  srai         gp, t4, 26
                  mulhsu       t3, a4, a7
                  auipc        t6, 502251
                  mulhsu       a4, a4, a5
                  nop
                  mulhu        a2, s2, tp
                  divu         t6, a2, s10
                  sltu         s6, tp, a1
                  sub          gp, t0, s4
                  srli         s8, gp, 0
                  mulhsu       s5, s8, a0
                  sltiu        s2, gp, -50
                  remu         t2, s2, t1
                  div          ra, s5, t0
                  and          a5, a1, s2
                  srli         s4, t2, 7
                  remu         a7, s2, tp
                  div          a5, t3, s0
                  andi         ra, s8, -102
                  andi         a4, ra, 816
                  xori         s6, a1, -1502
                  sltiu        gp, s6, 661
                  mul          s0, s6, a4
                  mul          s4, tp, ra
                  sltiu        sp, s0, -1218
                  mul          a2, zero, t1
                  auipc        a6, 442982
                  or           t0, s10, zero
                  slt          t1, t5, a1
                  sltiu        a2, s2, -702
                  sub          t0, s2, s9
                  and          a6, a4, a1
                  sra          s1, a0, a3
                  slli         a0, s6, 14
                  auipc        gp, 738300
                  divu         a2, s2, s3
                  sll          s9, a0, s9
                  nop
                  xori         gp, a6, -1617
                  srai         s6, s1, 26
                  xor          a0, a2, a4
                  addi         a3, s3, 187
                  slti         t3, t3, -536
                  sll          s11, sp, t3
                  xor          sp, a3, a6
                  divu         ra, s10, s0
                  div          s11, tp, gp
                  mul          t6, s0, a2
                  srli         a2, t6, 23
                  remu         gp, s6, sp
                  sub          tp, sp, s2
                  or           s2, t6, t4
                  srai         s11, s0, 0
                  and          s7, s9, a6
                  sltiu        s1, s10, -343
                  auipc        a1, 358550
                  mul          s11, s3, t5
                  srai         s5, s1, 7
                  mulhu        s1, tp, s4
                  mul          s0, a6, tp
                  auipc        t0, 566322
                  lui          a1, 31752
                  andi         ra, s0, 1025
                  lui          s6, 822419
                  slti         t2, s2, 222
                  auipc        s11, 903549
                  sll          a7, t2, s1
                  addi         a1, s3, 937
                  sra          t4, t6, t5
                  sra          sp, t3, sp
                  mulhsu       s11, s10, zero
                  slt          s6, t5, t6
                  lui          a7, 400754
                  slli         a3, sp, 6
                  lui          t1, 956841
                  xori         a2, t3, 258
                  and          a6, a6, t3
                  andi         t2, s0, 899
                  srai         sp, s5, 31
                  div          t1, a5, s8
                  slli         zero, s4, 29
                  srli         t0, a2, 20
                  sll          gp, a1, s10
                  divu         t2, a5, a2
                  remu         s7, a5, s6
                  andi         s1, s4, -1821
                  mulh         t2, t5, t3
                  slt          a6, s2, s2
                  sltiu        s9, a5, 151
                  div          t1, t1, t5
                  or           s0, a1, t0
                  addi         t2, sp, 1432
                  or           s6, s4, a1
                  slt          t6, s8, t5
                  add          a5, s1, ra
                  mulhu        sp, a1, s0
                  divu         gp, s7, s0
                  nop
                  slt          gp, s4, a3
                  nop
                  div          a2, sp, a0
                  sltu         s8, a2, a5
                  mulh         s2, s2, zero
                  slt          t2, t1, t6
                  andi         a3, ra, 754
                  srli         s0, s0, 3
                  or           s2, a5, a4
                  sll          s9, a5, s10
                  sub          gp, sp, t6
                  and          a7, a6, t1
                  divu         a6, s3, t2
                  sra          ra, s1, a2
                  srli         t2, sp, 18
                  lui          gp, 878763
                  add          t3, s4, a1
                  mul          s2, t4, s8
                  sll          ra, gp, t4
                  slli         a5, s0, 12
                  mul          gp, t6, t4
                  rem          s0, s11, a6
                  slt          a5, s2, t4
                  sra          s4, a2, s4
                  slli         t6, t2, 25
                  ori          t2, a1, -1333
                  sll          a5, t2, s3
                  mulhsu       s8, s8, a2
                  add          s7, a2, t3
                  mulhsu       s11, ra, s8
                  mul          s6, a5, t1
                  xori         gp, s2, 816
                  ori          a2, s9, -260
                  mulh         t1, a5, s6
                  srl          a2, zero, sp
                  sra          s7, a1, s9
                  nop
                  mulhsu       s0, s10, s2
                  and          s5, s2, s4
                  remu         s7, ra, tp
                  mulhu        tp, t3, t3
                  sra          a6, t6, a6
                  sub          s2, s7, a2
                  nop
                  sltiu        s0, a2, -2036
                  mulh         t2, a2, tp
                  div          s4, t1, a4
                  remu         s0, s4, s7
                  addi         a1, gp, 1020
                  mulhsu       s2, a0, s11
                  lui          a5, 529093
                  mulhu        s6, a6, t3
                  sub          tp, tp, a2
                  add          t1, t3, t3
                  nop
                  andi         s0, t2, -612
                  mulh         a4, s9, s3
                  sub          a5, a3, ra
                  add          s5, s5, a0
                  srli         t3, t4, 27
                  xori         t6, s10, -670
                  lui          t4, 185315
                  mulh         zero, s0, a4
                  nop
                  mulhu        a4, s8, s11
                  remu         s9, a6, s1
                  srai         s8, t4, 15
                  mulhsu       s8, s3, ra
                  sra          s4, s5, a1
                  and          s7, t3, s5
                  add          s8, s1, t1
                  andi         t4, t2, -22
                  xori         ra, t2, 1541
                  xor          a5, a3, a4
                  div          a1, tp, t3
                  remu         s1, sp, s2
                  remu         gp, s7, s3
                  slt          s4, a6, s1
                  xori         t1, a5, -1889
                  slt          a4, s6, a3
                  lui          t3, 436748
                  mulhsu       s4, t5, s8
                  sltiu        a0, ra, -698
                  add          s11, s2, s1
                  srl          tp, s6, ra
                  srli         tp, gp, 4
                  mulhu        s0, s3, s9
                  xori         a6, gp, -1549
                  slti         s1, a2, 1506
                  slti         s11, s11, -254
                  sra          a0, zero, gp
                  div          t3, t1, t4
                  sra          zero, a4, s7
                  lui          s9, 315731
                  div          a0, s2, s0
                  slti         a3, s9, -1559
                  addi         s11, s7, -1041
                  xor          s2, s4, s5
                  rem          a7, s6, s9
                  and          t4, t6, s9
                  srai         s2, s5, 27
                  sra          s2, s0, s7
                  sub          s2, s2, t3
                  andi         ra, t6, -1274
                  sll          a7, s5, s2
                  sltu         a0, t3, a3
                  lui          a5, 694059
                  or           s0, a5, s5
                  sll          t3, s5, s5
                  xori         s4, s0, 1531
                  div          s11, a1, s11
                  xori         a1, t1, -1373
                  mul          s8, t1, s9
                  and          sp, t3, ra
                  sra          a6, s3, s3
                  or           a1, s5, a7
                  slti         s4, a1, -1527
                  andi         s1, s0, 1125
                  sltiu        s2, sp, -972
                  sltiu        s5, sp, 1046
                  ori          s2, s11, -1531
                  addi         a4, zero, 1297
                  slli         t2, sp, 17
                  or           t6, s5, s3
                  auipc        s0, 540965
                  mulh         a6, a1, t2
                  mulhu        t3, s4, s8
                  mulhu        s7, s6, s9
                  srli         s2, tp, 5
                  mul          a6, t6, a4
                  slli         t1, a6, 31
                  divu         a3, t2, t4
                  div          a5, a0, s0
                  rem          a7, s3, s8
                  mulhsu       a5, t1, ra
                  div          s2, gp, t6
                  sll          t4, a1, s6
                  slli         s6, zero, 13
                  add          s0, s0, a0
                  or           a3, t0, a0
                  nop
                  sltu         s11, s1, a4
                  srai         s11, s5, 12
                  divu         a0, a7, t1
                  srai         ra, s8, 2
                  andi         a1, a4, 232
                  srl          t0, zero, t6
                  remu         s7, a4, t5
                  and          s2, a0, s10
                  sra          s4, t5, tp
                  divu         t6, t2, a6
                  sltiu        a0, s8, 339
                  xori         t4, zero, -1407
                  divu         s8, t1, a2
                  or           s7, s5, s6
                  mul          t4, sp, s8
                  srli         t2, s10, 12
                  addi         tp, t3, -199
                  slt          a6, s1, a1
                  xor          a2, s9, t5
                  xor          s0, gp, t0
                  ori          a3, t5, 1587
                  ori          s8, s2, -672
                  auipc        sp, 417837
                  lui          a2, 486532
                  lui          sp, 869221
                  rem          a6, ra, a7
                  andi         s11, a5, 534
                  mulh         s8, s2, t0
                  sub          s2, s9, s6
                  sub          t4, a0, gp
                  add          a7, zero, a3
                  addi         s11, s10, 92
                  andi         t3, t0, -1453
                  sll          t6, t5, t6
                  addi         a2, t0, -827
                  mulh         t3, a1, s11
                  slti         a5, sp, -1035
                  sll          s0, s7, a5
                  or           s11, s8, sp
                  divu         s11, a1, s9
                  srl          s6, a3, tp
                  and          a7, s7, s1
                  andi         t3, s5, -1911
                  srli         t6, a5, 5
                  srli         s6, a0, 7
                  sra          sp, tp, a1
                  xori         gp, sp, -1576
                  mulhsu       s6, a0, a6
                  mulhu        gp, a5, s2
                  sub          s2, s10, s7
                  srai         s7, ra, 22
                  mul          a6, s4, s5
                  div          sp, a0, t3
                  add          a6, t3, s0
                  ori          a3, t4, -387
                  srli         s5, s9, 24
                  slt          s11, t1, zero
                  sltu         s2, s2, s0
                  add          t2, a7, a3
                  mul          a4, ra, a6
                  div          t4, s3, s9
                  mul          a7, a0, s0
                  and          t0, s5, a6
                  addi         a5, a5, 812
                  lui          s2, 34374
                  addi         a3, s5, -253
                  divu         t4, a1, s5
                  ori          t2, s0, 990
                  andi         sp, tp, -1472
                  sub          t3, a3, s10
                  rem          a3, s10, t0
                  slti         s11, t3, 1308
                  add          a2, t3, gp
                  sub          s9, t5, t3
                  slt          a3, a6, s6
                  rem          s5, s7, a2
                  sll          t1, s0, s6
                  addi         ra, t3, -1402
                  xor          a3, s8, ra
                  auipc        a7, 385640
                  sub          a1, s11, s11
                  slli         gp, a1, 25
                  slli         ra, s5, 3
                  slt          s8, a3, s4
                  mul          a1, s0, tp
                  mul          a1, s6, s5
                  lui          s2, 874573
                  srl          gp, s11, s0
                  xori         a0, t2, -1720
                  lui          a0, 167487
                  sltiu        t6, t0, -1049
                  andi         a4, sp, 1942
                  nop
                  add          a7, s5, a7
                  ori          t4, s9, -1300
                  ori          gp, sp, 428
                  srai         t2, a5, 5
                  sll          s2, a7, s8
                  auipc        s1, 968997
                  srai         a4, tp, 15
                  mulh         s11, a3, a0
                  add          t1, s3, gp
                  rem          sp, zero, t1
                  ori          t4, s4, -383
                  auipc        a4, 729426
                  sra          s6, t3, t1
                  xori         t2, s6, 718
                  rem          s9, a1, t2
                  mul          s9, zero, tp
                  slti         a0, t0, 677
                  xori         t2, s4, -1187
                  xori         s11, s3, -519
                  mulh         t4, a7, s5
                  sra          t1, t5, t3
                  sll          s2, a2, a3
                  addi         a4, t2, 1131
                  divu         a4, t4, s7
                  andi         a7, s9, 1708
                  srl          a7, a1, s0
                  sltiu        sp, a2, -1475
                  sra          t0, a4, s6
                  add          s4, s11, a7
                  remu         s7, t0, a2
                  remu         gp, t5, t0
                  xor          s8, s10, sp
                  add          ra, ra, t2
                  srai         s0, t1, 2
                  mulhu        s8, s5, a2
                  mul          sp, a3, t6
                  sltu         a6, t5, t0
                  srl          gp, a6, zero
                  xori         a7, s10, -1910
                  andi         a0, gp, -172
                  rem          gp, s3, a4
                  xori         a5, zero, 1775
                  nop
                  mulhu        s1, s3, t3
                  ori          a6, s7, -1683
                  divu         a6, t1, t5
                  andi         t2, gp, -1664
                  xori         t1, a0, -481
                  mul          gp, s0, ra
                  srl          ra, sp, a5
                  sltiu        a0, ra, -1642
                  and          gp, s0, t6
                  slti         a4, s4, 1229
                  slli         t4, a5, 2
                  add          s8, t0, t6
                  sltiu        s2, t2, 1871
                  auipc        zero, 126
                  add          a6, a0, s11
                  slt          s4, a6, s5
                  auipc        s0, 346475
                  divu         t1, t6, tp
                  auipc        s0, 451773
                  sltiu        a4, s11, -484
                  slti         t1, zero, 1666
                  mulh         s7, a0, t2
                  andi         a5, s3, 176
                  mulhsu       t3, ra, a0
                  ori          s8, t3, -1025
                  sll          s11, a5, s6
                  sra          t1, t6, s8
                  ori          a1, s8, 1376
                  sra          t2, a6, s4
                  sltiu        a1, t0, 675
                  slt          tp, a3, s2
                  sub          a1, s4, a4
                  mulhu        a6, t5, s11
                  andi         ra, t3, -1476
                  sltiu        s2, s6, 1301
                  auipc        s2, 344594
                  slti         s11, t6, -1287
                  slti         s2, s7, 974
                  andi         s7, s9, 1436
                  xor          t6, s7, s11
                  srli         a1, a5, 9
                  srai         s2, s6, 30
                  nop
                  slt          t2, a3, a2
                  sltiu        s11, s4, -1304
                  slti         t4, t1, 1177
                  xor          gp, a3, s7
                  sll          a4, a2, t6
                  mulhsu       s8, a1, s6
                  andi         s4, tp, -657
                  slt          s2, s1, a2
                  ori          s2, s2, 897
                  sltiu        t4, a1, 942
                  addi         tp, s9, -1671
                  mulhu        t0, s9, s5
                  srli         s11, t2, 26
                  slli         a7, t3, 7
                  remu         s2, s8, a1
                  addi         a4, s9, -283
                  addi         sp, a7, 1607
                  or           s2, t4, a7
                  slt          s1, a5, a7
                  sltiu        t4, s4, -773
                  add          s5, s3, s1
                  rem          t2, s11, a0
                  nop
                  nop
                  and          t2, a1, s9
                  srai         a3, s0, 28
                  sltiu        s0, s0, -75
                  xor          t6, t6, tp
                  sltiu        t1, a1, 1484
                  slt          s4, a3, a1
                  mulhu        s6, s10, s10
                  slt          s7, tp, t6
                  srai         zero, tp, 20
                  slti         gp, a1, 1233
                  xori         s11, ra, -1501
                  slti         s4, a4, 998
                  mulhsu       gp, tp, s6
                  mulhsu       a7, t1, s3
                  or           t3, s2, zero
                  mulhu        a4, s8, a2
                  ori          s0, tp, 1138
                  nop
                  slt          a0, a5, a5
                  and          s4, t2, t6
                  mul          a4, a2, a2
                  divu         a3, s6, zero
                  mulhsu       a5, a4, s5
                  mulh         gp, t0, s9
                  mulhu        s1, a0, sp
                  mulhu        s8, s5, s1
                  xori         tp, s0, -869
                  add          a0, t3, s4
                  auipc        ra, 69704
                  srai         s2, t6, 19
                  sll          t3, a2, t2
                  nop
                  xori         zero, t3, 93
                  remu         a7, t0, sp
                  andi         a1, a2, 596
                  mul          t4, s10, s1
                  rem          s4, s10, a4
                  slti         t0, a1, 1208
                  or           a5, a7, s4
                  mulh         s6, t4, s10
                  div          ra, a0, s1
                  remu         t3, s4, s5
                  sltiu        t3, t6, 509
                  add          s1, t4, a6
                  sub          t1, a4, a7
                  ori          t1, a3, -1056
                  auipc        t6, 817553
                  add          t6, t4, s1
                  sll          sp, a3, a2
                  and          s9, gp, s6
                  lui          s6, 659092
                  slli         t2, a1, 8
                  mulhu        a0, tp, s2
                  auipc        a5, 1036867
                  mulhsu       a4, a0, a7
                  ori          s2, s0, 1291
                  div          a6, s10, ra
                  ori          s9, s0, 1046
                  srai         sp, t6, 1
                  auipc        t1, 310872
                  add          a4, s1, gp
                  srl          zero, t2, s4
                  xor          a0, s3, t3
                  xori         s9, s5, 884
                  mul          ra, t1, a2
                  sltu         s11, s11, s8
                  sra          s11, t4, a0
                  divu         gp, s10, a0
                  sltiu        t6, ra, -116
                  divu         gp, s0, t0
                  mulhsu       gp, s3, ra
                  xori         t3, gp, -1380
                  auipc        tp, 905991
                  xor          gp, s1, s9
                  and          a5, t2, t1
                  srli         t1, sp, 18
                  add          a3, s4, t0
                  rem          a3, t5, s7
                  or           s6, a5, gp
                  lui          a5, 403055
                  divu         gp, a2, tp
                  sra          a7, s11, s10
                  div          t4, t6, a1
                  sll          tp, t0, s10
                  srli         ra, gp, 25
                  lui          a7, 435598
                  addi         s0, s5, -1626
                  srl          a1, a0, a5
                  mulh         s8, s9, t4
                  divu         ra, s8, a7
                  lui          sp, 59699
                  slli         t1, s7, 8
                  slt          s11, s5, s1
                  slt          a6, s10, s8
                  divu         t4, s7, s5
                  andi         t0, t3, 1901
                  lui          t0, 925477
                  andi         s2, t5, 1777
                  andi         s7, s8, 100
                  srai         ra, a1, 2
                  rem          t3, s4, s5
                  sra          s6, s5, t0
                  sltiu        ra, t1, -475
                  div          a0, ra, a4
                  sltu         s6, t1, s1
                  div          t6, t4, tp
                  slti         a6, s3, -1482
                  auipc        s9, 123177
                  srl          s9, s10, s2
                  mulhu        s11, t4, s9
                  rem          s6, s9, t4
                  remu         s5, t6, tp
                  auipc        t3, 899650
                  add          a3, sp, s4
                  slt          s9, s6, s7
                  srai         t4, a6, 10
                  mul          s8, s2, ra
                  sll          t6, sp, tp
                  mulh         s9, gp, s4
                  and          s8, s10, s8
                  add          s5, t5, t4
                  sltiu        t0, t5, 281
                  nop
                  addi         s1, t0, 1719
                  or           t3, a5, s7
                  mulhsu       s11, s4, s3
                  srai         t3, s1, 4
                  mulhu        a4, s3, a3
                  andi         a7, a6, 323
                  andi         s11, t3, 1761
                  mulh         t3, sp, s4
                  nop
                  auipc        s8, 903739
                  sub          gp, t6, t0
                  addi         t2, t6, 1216
                  sltiu        ra, a1, 1295
                  div          t3, t3, s3
                  or           a5, t5, t2
                  divu         s2, s0, a5
                  div          a5, a1, zero
                  and          a6, s10, a5
                  xori         s8, t2, -579
                  srl          ra, s9, t4
                  divu         s9, t3, sp
                  ori          zero, t0, 136
                  nop
                  sltu         s6, a5, s3
                  div          zero, t0, sp
                  andi         tp, t4, -754
                  slli         t1, t6, 20
                  sub          sp, t5, s1
                  srai         sp, t3, 20
                  sra          s6, gp, s1
                  auipc        zero, 882413
                  slti         t4, t4, 1417
                  slli         s7, s7, 24
                  xor          s4, t5, t0
                  xor          a4, t2, zero
                  lui          a1, 148207
                  mulhsu       s2, sp, s4
                  srli         tp, a4, 18
                  sltiu        t2, t5, 497
                  slt          a1, s4, zero
                  and          s6, t3, sp
                  srai         s6, t0, 16
                  srli         sp, s7, 14
                  remu         s2, t5, a2
                  andi         zero, t6, 555
                  xor          s2, gp, ra
                  lui          gp, 765696
                  div          a5, s7, sp
                  andi         a3, t1, 314
                  xori         t3, a0, -1710
                  addi         s7, s0, 1522
                  addi         a0, s0, 448
                  divu         a6, ra, a3
                  srl          a5, gp, a1
                  xori         s11, s0, 1534
                  slti         t2, a5, -320
                  slli         a7, t3, 4
                  sltiu        gp, t1, -1947
                  sub          t4, tp, t5
                  addi         s7, ra, 1601
                  sltu         s6, s9, s8
                  srai         a7, ra, 19
                  andi         t0, s0, 1196
                  sll          s1, a1, t0
                  mulh         a0, a1, a1
                  slt          t3, s4, t4
                  xori         a7, s9, 1809
                  auipc        tp, 932367
                  ori          zero, s4, -198
                  or           a0, s3, t4
                  mulh         t3, ra, a0
                  div          s8, s5, tp
                  rem          t6, a3, a7
                  sll          t3, sp, a1
                  ori          a6, sp, -2028
                  sltu         a6, s7, s0
                  srli         ra, s4, 3
                  mulhsu       a3, s5, s6
                  sltu         s11, t4, t5
                  div          s2, sp, t1
                  srli         t4, s9, 11
                  sll          t0, t5, t2
                  mul          s2, a1, ra
                  lui          tp, 242277
                  remu         s1, t5, a6
                  sll          t0, ra, s2
                  ori          t3, s2, -762
                  mulhsu       s9, t1, a3
                  andi         gp, s7, 214
                  div          t3, s4, tp
                  srli         a2, t1, 4
                  add          a5, gp, t6
                  slti         s1, a7, 1683
                  srai         a3, t0, 21
                  auipc        sp, 679808
                  xori         a4, s9, 1575
                  srl          s2, s10, tp
                  ori          a2, a3, -1555
                  srli         s9, s8, 28
                  or           a3, s9, t1
                  andi         s8, s0, -1693
                  srai         a4, t6, 11
                  remu         a5, t1, a1
                  srl          s2, a6, s9
                  divu         gp, t2, s11
                  slli         zero, s5, 12
                  auipc        s8, 585096
                  srli         s9, tp, 15
                  or           a2, s5, s9
                  mul          s9, t6, a0
                  srli         a3, t0, 19
                  mulh         a1, s10, t2
                  or           t6, s4, s5
                  sltiu        s7, a5, -1948
                  srl          s4, a3, s1
                  mulhu        a5, t1, t3
                  mulh         sp, s0, a4
                  xori         t2, s9, 1280
                  srl          a4, s4, sp
                  addi         sp, s0, -1688
                  and          a7, a5, a4
                  sltu         a6, s6, sp
                  mul          gp, zero, a4
                  mul          a1, a0, t5
                  srli         s9, tp, 8
                  lui          t1, 727356
                  lui          t4, 696346
                  lui          t4, 531998
                  sltiu        a4, a4, 1967
                  rem          a7, t5, t5
                  div          tp, a7, s7
                  slt          sp, t5, a6
                  or           s5, t4, t6
                  mulh         a7, sp, t5
                  slli         a4, s2, 15
                  lui          t2, 33479
                  mulhu        s11, s11, a1
                  add          a1, a4, s4
                  and          s4, s9, s2
                  mulhu        s11, a4, ra
                  sra          t0, t5, s11
                  add          s4, gp, a0
                  sltu         s9, a2, t3
                  srl          a1, s9, t6
                  or           t0, s0, s2
                  slli         s8, t3, 5
                  sub          a5, a5, a7
                  srl          s1, a6, a1
                  srl          s6, s9, s7
                  mulh         a3, s11, s2
                  or           s4, s4, a1
                  auipc        gp, 321114
                  lui          a1, 158702
                  addi         t0, a3, -1323
                  sra          a5, t3, t5
                  mulhsu       a2, s7, a5
                  slti         s0, s3, 545
                  mul          a1, t4, s9
                  sltiu        a3, t2, 1984
                  mulhsu       s7, zero, s9
                  slti         s1, a0, 347
                  div          a6, s2, a7
                  sltiu        ra, t1, -199
                  slt          s9, a4, s1
                  mulhu        s9, a3, t1
                  slt          s7, a0, a4
                  sra          s8, a4, a1
                  slti         t1, a1, -608
                  sltiu        s0, a4, 1044
                  sra          a7, a3, s7
                  addi         s6, a3, -1957
                  slti         s11, s1, -248
                  addi         s6, ra, 1518
                  sltiu        s11, t5, -1752
                  srai         t3, a0, 7
                  xor          s9, zero, a2
                  srai         a3, s5, 18
                  remu         a6, tp, a7
                  slt          sp, zero, t6
                  sub          s2, s6, s7
                  mul          s11, s10, t1
                  mul          s11, ra, t4
                  xori         a2, t2, -165
                  sll          sp, s6, s2
                  mulh         a5, s1, a0
                  addi         t4, s0, 1884
                  mulhu        ra, a5, a1
                  sll          s11, ra, a0
                  xor          s11, t3, t6
                  ori          a3, t4, -1501
                  sll          a4, s11, s3
                  nop
                  mulhsu       gp, t4, a6
                  mulhu        s5, a2, a6
                  xori         a4, s6, 923
                  rem          s7, gp, s11
                  srl          t0, a5, s3
                  srl          a1, ra, a6
                  slli         s5, a0, 26
                  and          t4, s3, a0
                  srai         s11, s10, 17
                  div          a4, s1, zero
                  remu         s8, t4, s9
                  div          s8, t2, t1
                  add          zero, t6, t2
                  sltu         a6, t1, t6
                  auipc        a1, 649621
                  mulhu        t4, zero, s5
                  slt          s11, s3, a0
                  srl          s7, t0, t2
                  andi         s4, s6, 123
                  xor          zero, s4, a1
                  div          s1, a4, s3
                  sra          t4, t2, a3
                  slt          ra, s10, a1
                  sll          sp, t5, t4
                  srli         t4, s4, 7
                  mulhu        s8, s4, t1
                  slli         a7, a1, 1
                  sltiu        a6, a4, 957
                  sra          zero, a2, s3
                  srli         s2, s0, 7
                  nop
                  and          s7, s6, tp
                  mulhsu       a0, a1, a6
                  and          s11, s10, t6
                  sub          a6, s2, a0
                  slt          s8, a4, s6
                  mulhsu       tp, s8, tp
                  srli         s6, tp, 25
                  mulhsu       a5, s0, s8
                  mulh         s11, s7, t4
                  srl          a0, t4, ra
                  srli         sp, a7, 12
                  mulhu        a4, s6, s7
                  ori          ra, gp, 1669
                  mulh         s4, t6, t5
                  sra          a0, s11, s10
                  srl          tp, s1, s5
                  remu         a3, s8, a2
                  srli         a7, t5, 30
                  auipc        a7, 698441
                  nop
                  mulhsu       a4, a4, a4
                  sub          s9, s5, t3
                  ori          t4, t6, -442
                  sltiu        s0, s1, 378
                  sll          zero, t5, s11
                  addi         t4, sp, 1290
                  auipc        t2, 445152
                  xori         s8, s7, 1499
                  add          a6, s10, a0
                  rem          t2, s7, t1
                  nop
                  slt          t6, s4, a6
                  srli         s11, s4, 17
                  slti         s1, t1, -260
                  srli         tp, t0, 26
                  nop
                  mul          t0, s11, s10
                  or           gp, a2, s10
                  sra          ra, tp, t4
                  or           s0, a5, sp
                  divu         s9, gp, t2
                  srli         t3, s1, 2
                  sll          a7, s0, t1
                  xor          s7, s2, a0
                  mulhsu       gp, a1, s7
                  slli         s11, s0, 0
                  auipc        s0, 180169
                  srli         s4, t5, 13
                  div          tp, t6, t3
                  addi         s11, s3, 1704
                  and          s9, a5, a7
                  div          a5, s2, t0
                  xor          t4, a1, t2
                  srl          s9, t1, a0
                  mulhu        s9, gp, a7
                  srl          t0, s6, s3
                  remu         t3, t5, ra
                  lui          a7, 53341
                  div          gp, a4, tp
                  sltiu        s9, a6, 1409
                  div          s8, t5, t6
                  rem          s2, a6, s2
                  xori         t4, a3, -378
                  rem          t1, s6, t4
                  srl          ra, a2, t3
                  slli         s6, gp, 28
                  sltiu        a7, a7, -1879
                  srli         s4, t1, 28
                  and          s0, t6, t1
                  slli         s7, t4, 19
                  mulhu        t4, s1, tp
                  sub          a7, a1, s11
                  slti         a5, t3, -1470
                  mulh         a4, s1, s7
                  sltiu        s2, a2, 54
                  sltiu        s9, ra, 1031
                  xor          t4, t0, gp
                  sub          a5, ra, gp
                  or           a0, s0, s8
                  and          s9, t3, s8
                  andi         s1, s11, -1941
                  sltiu        s11, s11, -1338
                  srli         t6, t4, 20
                  or           s11, s11, t1
                  mulh         a6, t2, s7
                  slti         t2, t0, 1456
                  divu         s9, tp, s4
                  add          zero, s2, a0
                  or           s2, t0, t6
                  ori          t4, t6, 1561
                  sll          s2, ra, s5
                  divu         t4, a7, sp
                  ori          a5, t3, -26
                  or           s1, s3, a4
                  or           a0, t3, a5
                  sltu         s2, s11, zero
                  mulh         s7, s0, sp
                  mulhsu       a4, tp, t4
                  nop
                  ori          a5, t4, 942
                  sub          s2, a0, s8
                  div          s6, t4, a6
                  div          s7, s8, t6
                  divu         a7, tp, t3
                  mul          s8, a6, s5
                  slti         tp, t6, -1393
                  auipc        s0, 474850
                  xori         a7, a4, -452
                  mulh         s2, a0, s5
                  xor          zero, t6, s7
                  divu         s5, s2, tp
                  addi         t0, t3, -436
                  and          sp, a0, t1
                  mul          s2, s4, s4
                  lui          s8, 759866
                  rem          a7, ra, t4
                  mulhu        t0, s0, s9
                  slt          a3, t6, a5
                  mul          a0, s4, a7
                  addi         s2, a6, 1992
                  auipc        t4, 695029
                  nop
                  mulh         s11, s1, s9
                  slt          a0, t6, ra
                  slti         a1, a0, 105
                  xor          gp, t5, s1
                  ori          tp, a1, -846
                  lui          s4, 181073
                  nop
                  sra          t6, a5, a0
                  ori          a6, s3, -990
                  mulhsu       s9, a5, t1
                  mulh         s9, a5, s2
                  nop
                  auipc        ra, 664571
                  auipc        a5, 669162
                  slt          a4, a6, s10
                  remu         s6, t0, a3
                  ori          s2, a4, 1424
                  add          tp, a1, t2
                  srl          s5, t3, a5
                  ori          s0, tp, -1285
                  lui          a3, 306039
                  div          a5, a2, s10
                  divu         a6, a1, s2
                  rem          a1, s8, t4
                  sltiu        s9, t3, 221
                  sub          s11, s11, s11
                  mulh         a0, s5, a4
                  sub          t1, s11, a5
                  slt          a5, zero, s8
                  srli         t0, gp, 2
                  sub          a3, a7, a0
                  andi         t3, s9, -1553
                  xor          a7, ra, s3
                  andi         a7, a7, -1629
                  and          s4, s10, t1
                  add          ra, t5, s4
                  addi         a5, s11, 1679
                  auipc        s8, 688080
                  mulhsu       a2, a7, s0
                  nop
                  nop
                  mulhsu       s2, s10, a2
                  slli         ra, a2, 17
                  sltu         t1, t2, a5
                  srli         s7, a5, 22
                  sra          a6, s7, t3
                  sltiu        a2, s11, 1592
                  and          a4, zero, tp
                  ori          a3, s4, 514
                  mulhsu       a6, t5, t0
                  nop
                  xori         zero, s9, 1499
                  addi         ra, t4, 1813
                  xori         s8, t6, -1931
                  or           t2, a7, s8
                  rem          s7, s10, a7
                  srai         s8, s0, 23
                  nop
                  srai         s2, a6, 13
                  remu         t4, s10, s10
                  rem          ra, s5, a4
                  and          s11, s11, a6
                  slli         t0, s11, 26
                  sltu         tp, t4, s11
                  srli         ra, s10, 3
                  slli         t6, s3, 12
                  addi         ra, sp, 1371
                  srli         gp, a1, 7
                  nop
                  rem          t1, a5, s2
                  mul          s1, s5, s5
                  div          t0, t2, a0
                  sll          t2, a6, t0
                  xor          t2, s8, s10
                  add          a4, t3, s4
                  mulhsu       t4, s10, s5
                  sltiu        zero, a5, -1480
                  mul          a6, t2, a4
                  auipc        gp, 194872
                  nop
                  addi         s11, a1, -307
                  auipc        t2, 608520
                  div          a3, a1, a0
                  srl          zero, s1, s8
                  mulh         s2, a3, sp
                  addi         ra, t2, 2004
                  mulhsu       t6, a5, a1
                  slti         t4, a4, 847
                  xori         s1, t5, -888
                  sltiu        ra, t4, 57
                  div          s7, a3, a0
                  sltiu        t1, s2, -2019
                  sub          a6, t5, a2
                  srli         t6, sp, 1
                  xor          sp, zero, a0
                  sra          a5, t4, s8
                  slt          s4, s4, s8
                  sub          s0, s9, a7
                  and          a2, t2, sp
                  and          gp, s5, a2
                  and          t0, a4, a0
                  div          a7, s1, t2
                  sltiu        s2, s11, -145
                  mulhu        s11, a5, t4
                  xor          tp, t4, gp
                  add          t0, t0, s2
                  sltiu        s8, a2, 1873
                  mul          s2, a6, s5
                  lui          t0, 424870
                  srl          t3, a2, s10
                  divu         ra, s2, s9
                  slt          a7, s6, a2
                  auipc        a1, 240713
                  srai         s8, s5, 10
                  sltiu        s11, a0, -617
                  xori         a7, s8, 32
                  addi         a7, s6, -1876
                  ori          s5, a3, 548
                  rem          t6, s2, s2
                  srli         s6, s1, 23
                  srli         s7, gp, 15
                  sll          s8, s10, zero
                  sub          s7, t3, s9
                  or           t2, s3, tp
                  div          sp, s1, s8
                  sra          a2, a5, a6
                  xor          tp, s3, a7
                  sra          a7, s7, a1
                  sltiu        sp, a0, 1013
                  xori         t1, s1, -1254
                  slti         tp, t5, -618
                  mulhsu       s5, a3, a4
                  div          s5, s3, t6
                  sltiu        s8, t2, 592
                  or           s2, t2, s10
                  sub          a2, t4, t6
                  divu         sp, a3, t1
                  slt          a6, s3, a2
                  xor          s6, sp, s4
                  sltu         t1, a5, a4
                  and          s8, s9, t0
                  or           a1, s8, t6
                  srai         s5, t0, 20
                  sltu         s8, a5, s9
                  sll          t3, zero, s11
                  sltu         s8, a4, tp
                  div          ra, ra, s11
                  slti         a3, tp, 1873
                  nop
                  slt          s4, s1, s7
                  nop
                  srl          t3, s10, t0
                  ori          s1, a3, -597
                  sll          s0, a4, a3
                  mul          a7, s6, sp
                  mulh         a4, s10, a4
                  srai         gp, ra, 13
                  sltu         a2, a5, ra
                  or           t4, s0, t5
                  divu         tp, t3, a3
                  srai         s2, s0, 0
                  mul          t1, gp, s2
                  ori          a7, s5, -661
                  slti         s11, s8, -1098
                  addi         sp, t6, -71
                  sub          s2, t2, s0
                  srl          t3, s0, t1
                  mulhsu       t4, zero, a4
                  sltiu        s2, s2, -396
                  mulhu        s4, a7, t0
                  lui          gp, 743089
                  slti         ra, s2, -1634
                  addi         a2, t2, 1279
                  slt          t6, a3, gp
                  div          s6, zero, t2
                  and          t3, zero, a0
                  srl          gp, t3, a3
                  lui          s11, 544416
                  mulh         a5, s3, s9
                  mul          s4, t6, a2
                  add          a3, a2, a6
                  rem          a0, a4, tp
                  sll          s0, t6, s5
                  mulhsu       t6, t1, a4
                  mulhsu       gp, s10, t1
                  and          s9, s1, a5
                  sltu         sp, t0, s9
                  remu         gp, ra, s5
                  nop
                  sub          zero, s5, s3
                  sra          s6, a7, tp
                  slti         a0, gp, 555
                  nop
                  sub          s11, gp, t4
                  mulhsu       a4, a4, t5
                  slt          a0, s6, s4
                  sltiu        s8, t1, 375
                  srai         a6, a6, 4
                  sltiu        ra, a0, -1834
                  rem          s7, a2, s10
                  mulh         s4, s0, s11
                  xori         gp, s5, -1896
                  slti         s4, s4, 1137
                  nop
                  addi         s4, s6, -982
                  addi         s2, s5, 1324
                  mul          t6, s6, s11
                  divu         t0, t3, zero
                  mul          gp, t4, s8
                  divu         t6, t3, zero
                  mul          s1, zero, gp
                  slt          a7, s8, t4
                  xori         t1, tp, -1515
                  srli         a6, sp, 19
                  sll          a3, a3, sp
                  rem          ra, s11, s9
                  add          a7, tp, s2
                  add          t2, t0, t3
                  rem          a3, a1, s0
                  divu         t6, a2, s10
                  add          t4, a1, s6
                  add          t4, s11, t5
                  sltiu        t1, s9, -531
                  auipc        a1, 526708
                  nop
                  remu         t0, a4, t1
                  sra          s8, s3, sp
                  remu         s2, t0, a7
                  sra          t3, t6, a4
                  sltu         sp, s6, t0
                  nop
                  andi         s5, a0, 1003
                  slli         s4, a1, 16
                  sll          t0, s5, s1
                  or           a1, s7, s9
                  lui          t2, 468084
                  auipc        s0, 260167
                  remu         s6, s6, t1
                  andi         a1, tp, 556
                  srai         a1, t5, 3
                  divu         tp, gp, gp
                  auipc        s2, 735095
                  srl          s7, s2, s3
                  addi         s0, t0, 230
                  sltiu        sp, s5, -646
                  add          s5, a1, s3
                  sltiu        s2, a2, -266
                  mulhsu       a0, tp, t0
                  mulhsu       a1, a2, gp
                  sub          a0, t3, sp
                  add          gp, s5, sp
                  srl          t6, s7, sp
                  srl          tp, t3, a0
                  sll          t4, t2, tp
                  divu         a4, s5, t3
                  andi         s1, s1, -1464
                  mulh         a1, s5, t2
                  srli         s8, sp, 12
                  remu         s1, a5, s9
                  slli         s7, t6, 31
                  sltiu        s6, sp, -667
                  xori         a4, s6, -212
                  or           t1, t4, a5
                  srl          s6, s9, t1
                  ori          s9, a1, -1312
                  nop
                  mul          ra, t2, ra
                  or           s7, t2, a5
                  srli         a2, s9, 14
                  lui          s0, 820469
                  sll          a0, t3, t3
                  slli         a0, s2, 30
                  lui          a2, 953002
                  or           a0, s1, s3
                  sra          zero, s4, a3
                  sra          t3, a3, a3
                  remu         gp, s5, a6
                  slli         t0, s1, 6
                  srl          gp, tp, t0
                  addi         gp, a7, 1482
                  mulh         s11, a7, sp
                  xori         a4, s4, -147
                  sub          s7, t0, a5
                  xori         t2, s9, -494
                  or           t2, t3, s10
                  sra          tp, tp, s8
                  sub          s0, gp, t2
                  lui          t6, 337357
                  andi         t1, s9, 1819
                  div          s6, s0, t4
                  xori         s0, s8, 863
                  srai         t6, a1, 10
                  and          s1, a0, t1
                  mulh         a0, s2, s1
                  divu         s4, s2, a5
                  nop
                  sltiu        zero, a5, 228
                  slt          t1, ra, s5
                  mulh         sp, s2, s2
                  slli         a5, s2, 15
                  slt          a1, t1, zero
                  srl          s2, s11, t3
                  or           s2, gp, a4
                  slti         a4, a5, 503
                  mulh         t2, gp, ra
                  sub          s2, s7, a6
                  sltiu        a2, a7, 1627
                  mulhsu       s7, s9, s7
                  add          a5, t1, t6
                  mulhu        s2, s1, t3
                  mulhsu       a4, s4, t6
                  mulh         t2, ra, s3
                  slti         t6, zero, 1178
                  srai         t1, s3, 10
                  mulh         t3, s5, s11
                  sll          a3, t5, sp
                  div          t3, s3, t2
                  srai         zero, s2, 6
                  srli         a7, a6, 30
                  auipc        s11, 881867
                  slli         t3, a0, 0
                  xori         s5, a7, 1000
                  xor          s9, s3, s11
                  slli         t3, a3, 24
                  ori          t3, s8, 1103
                  sra          s4, t5, s9
                  addi         a1, a6, -1108
                  nop
                  lui          s0, 890737
                  addi         s11, s1, -1791
                  sltu         gp, s5, t0
                  auipc        s1, 771274
                  or           t2, s1, t3
                  slti         s0, s5, 1606
                  xori         s0, tp, 1917
                  sltiu        s8, s10, 61
                  auipc        s8, 377243
                  addi         s11, t4, 1769
                  rem          a5, s0, t3
                  srli         s6, ra, 20
                  mul          a0, sp, s8
                  and          tp, s9, s6
                  andi         ra, t0, 993
                  xor          s1, t1, a1
                  xor          a0, a6, t4
                  sll          t4, s11, s11
                  remu         s8, t3, t3
                  slti         ra, a3, -784
                  sra          a7, t3, t4
                  div          s2, s2, s8
                  srli         s2, tp, 12
                  addi         s4, s4, 1245
                  slti         a4, ra, 257
                  add          s2, t2, s10
                  mulh         a4, a6, s5
                  slt          t2, s2, zero
                  addi         s2, a2, 1778
                  mulhu        a5, s4, a4
                  mulh         s0, s2, ra
                  add          t0, s6, s5
                  sub          a6, tp, sp
                  remu         s0, t6, ra
                  mulhu        s7, t2, tp
                  mulhu        s4, s2, t2
                  slti         gp, s9, -1076
                  srli         ra, s5, 3
                  lui          s5, 630203
                  lui          a5, 996890
                  sub          a7, s3, t6
                  mulh         s2, zero, a0
                  nop
                  and          t6, zero, a2
                  mulhsu       s1, s11, t3
                  ori          zero, t4, 886
                  sltiu        t3, t6, 1827
                  nop
                  add          s7, a7, a4
                  sub          s0, a4, s9
                  add          s0, a0, tp
                  slli         s1, a0, 27
                  sltu         a4, t1, s10
                  mulhu        t1, t6, s7
                  mulh         t6, sp, s6
                  div          s6, a1, a3
                  rem          t6, gp, t2
                  or           s5, t6, a3
                  slt          s11, s1, s7
                  sll          gp, a7, t1
                  auipc        sp, 323717
                  ori          s2, s5, -1293
                  sltiu        a0, a1, 1737
                  remu         s0, s7, t3
                  mulh         t2, zero, a1
                  add          t2, s10, ra
                  and          t1, t0, s9
                  sub          s0, s0, s3
                  sltu         a0, t2, s5
                  add          ra, t4, t1
                  mulh         s0, s10, s7
                  remu         s2, a1, t4
                  srai         s7, s11, 1
                  sra          a7, t1, a4
                  auipc        t1, 838218
                  slti         s6, s10, -1059
                  slti         a6, s7, 741
                  mulh         t6, s4, sp
                  slt          s4, s10, a2
                  rem          s5, s5, s9
                  and          a4, t2, a5
                  lui          t2, 541521
                  auipc        s6, 655742
                  srli         a6, a6, 15
                  andi         a2, zero, -1556
                  srai         a3, s0, 10
                  xor          a7, t6, t5
                  slli         s0, a7, 22
                  auipc        s1, 632876
                  slt          s7, t3, a4
                  mulh         t0, gp, t1
                  ori          a3, a3, -34
                  sub          s8, a0, t5
                  ori          t0, a6, -1603
                  mulh         s11, s3, a5
                  sra          s1, s5, s7
                  ori          t2, sp, -393
                  mulh         a0, s9, gp
                  lui          s5, 809650
                  and          s8, t0, t6
                  add          zero, sp, a7
                  xori         s6, s4, -194
                  srai         s2, s7, 26
                  and          a0, s5, s8
                  remu         s2, a7, t5
                  lui          s4, 803064
                  sltu         t3, a7, sp
                  sll          a7, sp, s5
                  srl          tp, tp, sp
                  sll          s8, s4, sp
                  srai         s9, ra, 22
                  sra          a4, a2, t2
                  srai         t6, a6, 23
                  sll          s7, a6, t6
                  mulhu        a6, a5, s3
                  sll          t1, s6, a3
                  xori         a5, t4, -1681
                  mulhsu       a6, s11, a7
                  nop
                  mulhu        a1, s4, s2
                  div          s1, a2, s7
                  and          t6, s4, s0
                  sltu         gp, a0, a7
                  srai         s0, zero, 4
                  lui          t4, 535853
                  sra          s0, sp, a7
                  srli         s6, s3, 21
                  slt          a6, a7, s7
                  xori         a3, s7, 100
                  sra          s7, s10, a4
                  sll          gp, s7, a0
                  divu         s5, s7, s3
                  remu         ra, a3, tp
                  lui          t6, 597055
                  mulh         sp, t1, s8
                  addi         t6, sp, -348
                  sltiu        s2, t5, 1474
                  rem          t6, s3, s7
                  sub          s5, s3, s9
                  xori         sp, s10, -2004
                  remu         t3, a2, t0
                  nop
                  mulhu        s1, a2, ra
                  sltu         s9, s3, s8
                  and          zero, a2, s6
                  nop
                  rem          s2, tp, t5
                  or           s0, t5, t1
                  divu         s7, t6, gp
                  sra          tp, s8, tp
                  srli         t1, s3, 29
                  xori         a4, sp, 1597
                  srli         s2, s7, 15
                  srl          a3, a5, a7
                  nop
                  divu         t1, t1, t0
                  div          s9, a0, t6
                  sub          s6, a4, s11
                  andi         sp, s9, 994
                  sub          a4, s4, s1
                  srl          zero, gp, t5
                  mulhsu       s8, s10, a0
                  mulhsu       a4, ra, t6
                  xor          t0, s8, s11
                  auipc        s8, 15480
                  lui          t0, 801159
                  nop
                  lui          a6, 1027694
                  mulhu        s2, s0, s1
                  slli         a1, s5, 7
                  slti         zero, s10, 65
                  remu         ra, a3, s5
                  or           s11, a1, t4
                  remu         s11, t3, s5
                  remu         gp, a1, s2
                  sub          s8, s11, gp
                  addi         a4, a3, 1474
                  sra          s6, a7, s10
                  mul          a7, tp, a6
                  nop
                  remu         a2, s9, s1
                  or           s8, s1, s10
                  auipc        a1, 42210
                  slti         s7, a0, 50
                  sltiu        a0, t4, 642
                  and          s4, a4, s1
                  mulh         t0, s2, s1
                  div          zero, s7, ra
                  sltu         a3, s8, s9
                  sra          ra, a4, a1
                  andi         s1, s1, -746
                  srli         t2, ra, 21
                  slli         sp, a3, 12
                  add          a1, a6, sp
                  divu         s6, t4, t0
                  sll          a7, s3, t1
                  xor          s7, tp, t1
                  sll          s11, s1, s4
                  mulh         a1, s6, s8
                  ori          s9, t2, 1765
                  xor          ra, t1, sp
                  nop
                  sltu         ra, s10, a4
                  lui          t4, 610566
                  srli         t6, s0, 1
                  sltu         s9, s6, t4
                  sltiu        t2, zero, 1078
                  and          gp, t6, a1
                  andi         a7, s5, -2038
                  ori          a0, s0, 1646
                  srli         s9, zero, 17
                  div          t4, t1, ra
                  div          ra, s5, s3
                  srai         t4, s4, 19
                  srli         s6, t6, 17
                  sub          zero, s8, s7
                  sra          s9, s11, s1
                  mul          a6, t1, a4
                  andi         s5, s3, -1095
                  mulhsu       s6, s2, s6
                  sra          t3, s3, t3
                  nop
                  sub          t0, s2, s8
                  slli         zero, gp, 29
                  div          s8, s1, t6
                  div          t3, t5, t5
                  slli         t1, a1, 12
                  sltiu        s5, a0, 1276
                  mulhsu       s2, s11, t3
                  mulhu        t6, s8, t0
                  ori          s0, a6, -440
                  rem          s2, tp, s10
                  xor          t0, a6, gp
                  srai         t0, zero, 12
                  slt          t4, a7, s0
                  rem          t4, a3, t1
                  ori          a7, a3, -1951
                  srai         a6, t3, 14
                  sltu         s0, s2, zero
                  addi         a0, a0, -272
                  or           a5, zero, t1
                  srli         s9, a1, 13
                  sll          a5, a2, a1
                  rem          zero, t6, s7
                  mulhu        a4, s3, a3
                  slli         ra, s10, 0
                  sll          s0, a3, zero
                  srai         s0, gp, 22
                  mulhu        a1, s6, s0
                  xori         s8, s9, -258
                  andi         zero, s10, 1435
                  slti         t4, t2, -1159
                  xor          tp, a3, a3
                  lui          t1, 842288
                  slti         zero, t3, -1362
                  mulh         t2, a7, t0
                  sra          zero, t3, zero
                  sltiu        a0, t2, 201
                  xor          t0, s2, a5
                  sltiu        s6, t0, -1788
                  sltu         a3, s8, tp
                  lui          s6, 300998
                  sltu         s8, t6, a5
                  div          a7, s9, a2
                  nop
                  sltu         tp, t6, s3
                  slti         s8, s4, 182
                  srai         t2, s11, 18
                  lui          zero, 5443
                  sub          t0, s9, s7
                  mulh         a5, t0, s3
                  slti         a1, a5, -1471
                  addi         t3, a4, -272
                  srl          s7, t0, s1
                  mulhu        ra, a5, t6
                  nop
                  lui          s6, 863433
                  ori          t1, t0, -1273
                  andi         t6, t5, 1117
                  or           t1, a2, sp
                  nop
                  sltu         a7, a5, t3
                  andi         s7, s0, 1146
                  lui          a4, 900524
                  sub          t0, a5, t5
                  rem          s5, s7, t0
                  slti         t3, t3, 828
                  sltu         s7, gp, s5
                  rem          s6, s0, a6
                  sra          t2, s2, s9
                  lui          a0, 780124
                  mulhu        t4, a2, s5
                  mulhu        zero, s1, t2
                  sra          s0, s5, t6
                  divu         ra, t2, s4
                  sltu         t4, s9, s9
                  srl          a6, s2, a4
                  addi         s4, s7, 1632
                  or           t2, t6, t4
                  sltiu        s2, t6, -509
                  and          s4, t3, s5
                  or           s11, t2, s1
                  lui          t0, 836829
                  srli         s4, s10, 15
                  auipc        a2, 845055
                  slt          a5, t0, a6
                  mulhu        t3, s6, t0
                  addi         s2, a7, -841
                  or           s1, s11, a2
                  mulh         a0, s1, a5
                  and          t1, s8, ra
                  lui          s4, 612447
                  sltiu        s5, t1, -758
                  sltu         s5, t6, zero
                  sltiu        a7, t3, 392
                  sll          a7, s9, s3
                  mulhu        s4, zero, s11
                  add          t3, tp, t0
                  slt          ra, a5, s8
                  mulh         s7, a1, s11
                  andi         s8, a2, -760
                  slt          s5, s9, t2
                  slli         t3, s11, 29
                  remu         s4, zero, t4
                  xori         a6, s0, -956
                  mulhu        zero, t4, tp
                  mul          sp, a0, a4
                  srl          a6, a4, a4
                  add          s6, a0, s3
                  ori          s0, a3, -554
                  rem          a5, t3, a2
                  mulhu        s4, ra, s4
                  slli         t3, a1, 19
                  addi         a3, a0, 842
                  srl          ra, s1, s1
                  div          t4, s3, ra
                  slt          t2, gp, s8
                  add          s7, a0, a0
                  andi         s7, s1, 513
                  sra          a2, gp, a4
                  slt          a5, a5, a6
                  ori          s4, a4, 292
                  sltiu        s2, a4, 1542
                  rem          s4, s6, gp
                  srli         s2, a5, 29
                  or           a3, a1, t0
                  sub          s2, s8, t0
                  sra          a1, t3, t1
                  or           s5, s2, a7
                  rem          a4, zero, ra
                  or           s6, zero, ra
                  sltu         s2, a5, ra
                  andi         s9, a4, 531
                  xor          ra, a6, s10
                  addi         t6, s1, -562
                  ori          s5, a1, 670
                  rem          a5, t1, a3
                  divu         a4, t1, s0
                  srli         s11, a0, 27
                  srai         a4, tp, 0
                  sltiu        s8, gp, -1226
                  add          sp, s4, s4
                  slt          a0, gp, s8
                  lui          sp, 816566
                  sltu         gp, t6, a6
                  sll          a4, t2, a1
                  addi         t3, s2, 323
                  mulh         t1, t2, sp
                  sltiu        t4, s7, 1428
                  slt          s9, a5, t5
                  lui          a4, 916293
                  remu         ra, a5, s4
                  ori          t1, t4, 197
                  sll          s11, s10, a7
                  srli         s7, zero, 8
                  auipc        t6, 909684
                  mulh         a3, tp, tp
                  slli         s0, t0, 3
                  and          a5, t2, s3
                  sll          gp, zero, a3
                  and          s4, tp, sp
                  mulhsu       a0, t2, s9
                  add          s7, t2, s11
                  srli         t6, a4, 14
                  sltu         s0, s3, a6
                  sll          a5, a2, s5
                  mul          a7, t1, zero
                  andi         a2, t5, 1337
                  sltu         s6, a3, s11
                  xor          a5, s8, ra
                  ori          s6, t5, -1976
                  rem          a7, a7, s3
                  andi         s11, gp, -1967
                  rem          s0, s1, tp
                  mul          a7, a0, ra
                  mulhu        zero, a0, t0
                  srli         tp, t4, 31
                  mul          a3, s2, t2
                  ori          s9, s5, 65
                  srli         s2, t3, 25
                  sltiu        t2, a5, -1029
                  div          t3, s8, t5
                  addi         ra, s2, 762
                  rem          t3, a0, s5
                  andi         s0, t5, 669
                  mulhu        gp, t1, s10
                  sltu         t6, s2, s7
                  srai         t3, tp, 29
                  mul          a0, s1, a3
                  rem          s7, s11, s2
                  lui          a3, 952069
                  remu         sp, t0, s11
                  srl          s6, s8, s5
                  rem          s11, s2, t3
                  nop
                  nop
                  srai         s4, a1, 17
                  sub          a4, s8, a7
                  sra          t6, gp, zero
                  auipc        a2, 357187
                  and          s0, a6, a7
                  and          a5, s7, s10
                  srl          a5, t0, s1
                  mul          s7, s2, t4
                  addi         s9, s1, -876
                  div          t6, t3, t5
                  mulh         a3, s9, t1
                  sltiu        a5, t6, 104
                  div          a5, s7, s3
                  sltiu        a7, a1, 761
                  andi         a6, t0, -637
                  srli         gp, a4, 13
                  slt          a0, t6, s1
                  ori          s7, a1, -723
                  rem          sp, s0, ra
                  xori         ra, zero, -2013
                  sra          s0, t1, s4
                  slti         s0, ra, -1202
                  srai         t2, s8, 0
                  slti         s2, a4, -418
                  srl          s8, a3, s8
                  sltu         s8, t1, gp
                  srai         ra, s8, 0
                  mulhu        tp, s6, t2
                  auipc        t6, 945431
                  add          s7, t6, s3
                  srai         a7, s9, 6
                  sltu         s9, s2, a1
                  sltiu        s8, zero, -1796
                  and          s4, a0, s1
                  ori          t6, a6, -1855
                  nop
                  xor          ra, zero, t4
                  mulhu        a3, a7, tp
                  ori          t4, s1, 1647
                  and          t0, a6, s1
                  ori          gp, s2, 573
                  mulhsu       a5, t0, gp
                  sub          s2, t0, t2
                  slt          t3, a3, s2
                  ori          ra, t5, -1210
                  srli         s4, gp, 0
                  ori          tp, tp, 265
                  nop
                  lui          a3, 888577
                  slli         s5, t1, 17
                  add          a3, a7, s0
                  sltu         tp, s11, gp
                  div          s7, sp, t6
                  sub          a1, a6, a3
                  auipc        s6, 708344
                  lui          s6, 785045
                  mul          s11, s9, t6
                  sltiu        s2, t2, 214
                  sltiu        s7, zero, -619
                  divu         s9, s3, s0
                  remu         s6, s9, s3
                  rem          a6, a2, t0
                  mulhu        a5, s6, t2
                  addi         a7, a2, 1356
                  div          t6, s11, a7
                  xor          tp, t6, s9
                  div          t6, a7, s6
                  andi         s6, s7, 1070
                  sltiu        s5, a6, 697
                  or           a7, t6, a7
                  mulh         s9, t4, s4
                  srl          t4, t2, a6
                  srai         s1, sp, 18
                  lui          sp, 440359
                  auipc        t3, 828922
                  sra          a7, sp, t4
                  or           t1, s0, s0
                  sltiu        s7, s4, 177
                  srai         s0, gp, 26
                  auipc        s2, 704549
                  srl          a1, a4, a2
                  and          s5, s11, s2
                  or           s8, s5, gp
                  sra          s7, s1, a2
                  sltiu        a7, s9, -1270
                  auipc        t6, 78310
                  srli         s0, tp, 2
                  mulhsu       s6, t4, t1
                  and          s5, a4, s8
                  remu         a1, gp, s5
                  sltu         a2, t6, s2
                  remu         t2, s7, s7
                  and          s8, s11, sp
                  lui          t0, 124960
                  slli         t2, s5, 30
                  and          zero, s9, a2
                  sub          a1, tp, s7
                  add          s9, t3, s8
                  mulhu        s5, s1, s1
                  div          t0, a2, s11
                  andi         a0, s6, -795
                  sltiu        a4, a1, 249
                  slt          s1, s11, s9
                  nop
                  slli         s11, a0, 21
                  slti         s0, s4, -1690
                  sra          s4, s2, s0
                  addi         a0, a6, -1158
                  srai         s11, a1, 25
                  addi         a0, a2, 1325
                  mul          s6, s3, tp
                  sra          s8, a3, t4
                  mulhu        t6, s8, s2
                  divu         t6, tp, tp
                  sltiu        s1, s5, 387
                  mulhsu       s4, tp, zero
                  and          ra, s10, a5
                  sll          a6, a6, s6
                  remu         t0, a7, tp
                  and          t0, s3, t2
                  ori          tp, s0, 1199
                  slti         s0, s2, -1701
                  div          t2, s1, s4
                  remu         s7, t5, s5
                  sub          a0, t0, tp
                  mulh         ra, t2, a4
                  slt          t3, s7, a1
                  rem          t1, zero, s5
                  and          s8, t3, t3
                  div          s7, s10, s6
                  or           t3, s0, t1
                  mulhu        ra, a5, a7
                  nop
                  srl          s6, t6, t0
                  mulh         a0, s7, a7
                  add          t0, s5, ra
                  slt          s9, s5, s4
                  srl          t6, s5, a4
                  sltu         t3, s3, s4
                  sltiu        ra, s11, 156
                  andi         a3, zero, -1253
                  divu         s8, t4, a7
                  sub          t2, a3, a2
                  srli         ra, s5, 20
                  sra          zero, s11, a7
                  div          t3, t2, s8
                  ori          s11, t0, 1601
                  rem          s7, a4, a7
                  nop
                  div          ra, s4, gp
                  or           t4, s10, s1
                  auipc        zero, 820832
                  sll          t6, s9, t0
                  xori         s8, s5, -796
                  remu         tp, s10, s4
                  div          t6, t6, s10
                  rem          tp, a0, t4
                  sub          gp, sp, t0
                  andi         s0, a3, 1708
                  or           sp, sp, tp
                  or           t3, s5, t6
                  mulhsu       s7, gp, t6
                  srai         s1, a5, 4
                  slti         s6, s9, 641
                  addi         a7, s3, 1172
                  slli         s0, t4, 30
                  ori          t6, s7, -701
                  rem          a0, ra, t2
                  srai         a3, t1, 27
                  srai         a3, sp, 11
                  mulh         a2, gp, t2
                  or           t4, s4, s10
                  srli         s11, a3, 3
                  slt          a4, tp, s10
                  andi         a2, t3, -476
                  sltu         ra, t4, t5
                  add          zero, t0, s0
                  sltiu        s7, zero, -666
                  andi         s9, t4, 301
                  slt          t3, s4, tp
                  slli         a2, t1, 0
                  mulhsu       sp, t1, s4
                  sltiu        a7, zero, 697
                  mulhu        a5, s7, s7
                  or           sp, s2, t6
                  div          s11, gp, zero
                  sra          s4, s2, s3
                  nop
                  srai         sp, t5, 6
                  divu         t4, s2, t1
                  srli         s6, a6, 31
                  sltu         a0, a7, zero
                  add          zero, a2, s5
                  srli         a4, a0, 14
                  lui          s6, 41675
                  div          a1, zero, a3
                  mulhu        a1, a2, t1
                  sra          s4, a6, a4
                  auipc        t1, 161909
                  xori         a2, s9, 1713
                  addi         a4, t1, 887
                  srai         a2, s7, 5
                  srai         s1, s11, 12
                  xor          gp, s11, tp
                  srl          a0, s7, tp
                  sra          t6, gp, ra
                  mulhu        t6, t1, sp
                  sub          a4, a2, a4
                  sub          s8, a3, a2
                  and          zero, s9, s6
                  sltiu        t0, tp, 1278
                  addi         s8, gp, 214
                  xor          a1, s10, a7
                  and          a7, sp, a4
                  sltu         a1, a6, a6
                  sll          a5, s8, s10
                  addi         a1, ra, 345
                  mul          t6, a0, t2
                  sltiu        a0, a1, 1073
                  srl          a0, s11, a6
                  sra          a0, s9, a6
                  divu         a7, s10, s3
                  div          s2, a0, sp
                  slt          a5, gp, s10
                  rem          s11, a1, s9
                  srai         t2, s8, 0
                  mulhu        s8, s5, a2
                  slti         s4, a1, -119
                  mulhu        s1, s10, a6
                  div          tp, a5, s1
                  srai         s9, s11, 21
                  xori         a1, a1, -767
                  lui          t3, 876287
                  srai         t6, t5, 28
                  nop
                  rem          s11, s6, s6
                  lui          s1, 801282
                  xori         tp, a7, -274
                  divu         s6, tp, a0
                  sltiu        tp, s3, -210
                  and          a2, a5, a5
                  nop
                  nop
                  slli         a3, s3, 6
                  srl          a0, a4, a2
                  slti         a6, t4, 567
                  divu         t4, s11, a5
                  mulhsu       a7, s2, s6
                  and          s2, t6, s6
                  rem          t2, a7, s8
                  mulhsu       ra, s5, s6
                  slt          ra, t4, a6
                  sub          s6, ra, s11
                  sub          s6, s8, a4
                  srai         a6, a4, 10
                  and          a7, t2, s11
                  srl          s11, a0, a0
                  sub          t1, s7, s7
                  remu         t4, a5, a5
                  andi         gp, s8, 347
                  add          s0, a6, s0
                  srli         a1, s2, 5
                  and          a7, a2, t3
                  remu         t3, a3, a5
                  lui          gp, 874007
                  mul          gp, zero, s8
                  xori         gp, tp, 1648
                  sra          a7, t0, t5
                  mulh         t6, s11, s5
                  divu         s2, t0, s2
                  sll          s6, s5, s7
                  xori         s7, a0, -747
                  andi         s5, s0, -279
                  mulhu        s9, t5, s3
                  xor          s4, a1, t6
                  sll          s9, t0, s9
                  srai         a3, ra, 27
                  sltiu        sp, s5, 285
                  sltiu        s6, s9, -137
                  andi         s6, s4, -943
                  mul          s9, a0, s1
                  slt          a7, t5, a5
                  sub          s6, s0, s4
                  sltu         t4, a0, s4
                  slli         s4, s11, 18
                  divu         t1, s5, s5
                  div          t2, a4, s2
                  srli         t4, ra, 3
                  andi         zero, s6, -1478
                  mulhu        s2, t0, s7
                  remu         s11, t1, ra
                  remu         a7, s5, a7
                  sub          s9, t1, s4
                  sltu         t4, s9, t6
                  xor          a2, ra, a6
                  mul          a3, ra, a7
                  nop
                  andi         s7, sp, 651
                  srai         a4, t0, 10
                  nop
                  slt          t6, s3, s10
                  andi         a7, s7, 222
                  nop
                  slt          t3, s5, s11
                  srai         s8, tp, 24
                  sll          a4, t5, s2
                  slli         a1, s3, 7
                  srli         a2, t0, 13
                  srli         s4, t4, 11
                  mulhu        s5, s10, gp
                  xor          s7, t0, a5
                  slti         s6, t6, 982
                  andi         t6, s2, -812
                  div          s11, a3, s9
                  sltiu        sp, s10, 1799
                  nop
                  mulhu        s4, gp, s6
                  ori          t1, s1, -176
                  sltu         s4, s10, a5
                  addi         s11, s10, 1457
                  addi         s11, s0, 1107
                  lui          t6, 523824
                  or           t3, s7, a2
                  rem          a2, s11, a3
                  divu         s9, t3, s0
                  remu         zero, a1, t2
                  or           zero, s5, s9
                  div          s11, s5, a4
                  rem          s11, s9, s1
                  addi         a7, s2, 1991
                  xori         a3, s10, 1956
                  auipc        t2, 338045
                  slti         a4, a3, 1436
                  divu         s7, t2, t6
                  remu         a2, a7, a6
                  sub          tp, s9, a2
                  auipc        a1, 509458
                  slli         s6, s9, 15
                  mulh         a0, a1, s4
                  sltiu        s11, gp, -390
                  sltu         a1, s9, t1
                  sub          t2, ra, s11
                  xori         t1, t4, -251
                  divu         t1, ra, s3
                  add          a0, a4, s7
                  sll          s11, a2, a2
                  sub          a1, t3, t4
                  nop
                  auipc        t3, 354181
                  xor          t6, s1, s5
                  div          zero, ra, t5
                  div          s8, s11, tp
                  slli         a6, a3, 17
                  sltu         t1, t3, a5
                  sltu         a1, s6, t2
                  lui          a6, 491864
                  mulh         t2, t5, t6
                  divu         s11, s5, t2
                  mul          s8, tp, a5
                  mul          zero, sp, s6
                  nop
                  divu         s11, t0, gp
                  add          t6, zero, s10
                  andi         zero, s11, 439
                  nop
                  auipc        s9, 925146
                  nop
                  or           s8, s6, sp
                  andi         t2, s7, 1276
                  sltu         t3, a4, s0
                  xori         t0, t0, -1149
                  lui          a3, 594285
                  add          sp, ra, a4
                  addi         sp, s2, 413
                  rem          s1, a4, a7
                  mul          t1, t6, s7
                  addi         a7, s8, 1353
                  rem          s9, s7, t0
                  ori          a2, a5, 268
                  sub          s4, t4, s7
                  divu         a5, a0, sp
                  mulhu        s0, s1, tp
                  mulhsu       tp, t5, t2
                  lui          s6, 940406
                  sub          a1, t1, t1
                  addi         a3, t0, 371
                  srl          s11, s5, tp
                  mulhu        t0, s0, t3
                  or           tp, ra, s5
                  mulhu        t0, s9, a7
                  remu         a5, s10, s4
                  addi         t4, zero, 1347
                  srai         a4, tp, 8
                  rem          zero, s10, t4
                  ori          s6, t1, -575
                  sltiu        t3, a6, 531
                  mulhsu       s11, a4, a2
                  divu         s8, s8, ra
                  srl          s2, a7, s1
                  mulhu        gp, s5, t3
                  mul          a4, sp, s1
                  remu         t6, t3, zero
                  andi         gp, s0, -936
                  srl          s7, t0, a6
                  slt          tp, s11, t5
                  mul          tp, s3, zero
                  sra          a3, t1, a6
                  andi         gp, s8, -1086
                  div          t0, tp, a6
                  div          t3, a3, ra
                  slt          ra, a4, s0
                  mulhu        a3, s8, s3
                  and          a6, sp, s10
                  addi         s0, t2, -1216
                  sll          gp, s5, a7
                  or           t2, ra, s2
                  sltu         tp, tp, a6
                  mulh         s7, sp, s11
                  and          t6, s6, tp
                  sra          a3, s7, s2
                  srl          a0, a4, s5
                  sub          s5, a5, a1
                  auipc        gp, 344569
                  srai         tp, ra, 2
                  ori          t2, ra, -771
                  and          s2, s6, s7
                  div          a1, s5, t3
                  sltiu        ra, tp, 1389
                  sub          a2, s7, s8
                  srai         s2, t2, 8
                  rem          s11, s2, t2
                  slt          a2, a3, a0
                  addi         a7, sp, -1422
                  remu         a4, t2, gp
                  srai         a5, s4, 7
                  sub          t6, t4, a4
                  addi         zero, s10, 86
                  sltiu        t2, a7, 210
                  ori          gp, a0, 453
                  xori         t0, a3, -1432
                  or           a2, sp, a1
                  andi         a7, s10, 745
                  or           s2, sp, s11
                  add          a2, s9, ra
                  nop
                  lui          a1, 664096
                  slt          s6, s5, a3
                  auipc        s7, 100182
                  andi         a7, a5, -2039
                  and          t2, a4, a3
                  and          s8, s8, zero
                  mulhsu       t4, t6, s3
                  add          a2, a2, s1
                  srai         s8, a2, 2
                  mulhu        s11, s3, s6
                  remu         zero, a5, s10
                  srli         a4, s0, 20
                  sll          a6, t2, t3
                  auipc        a3, 967584
                  and          a0, ra, a3
                  sltu         s8, a2, t1
                  and          gp, s8, ra
                  divu         a3, a4, a6
                  slt          s6, a1, s9
                  remu         gp, t5, s10
                  mulh         s11, ra, t3
                  nop
                  srai         t6, a5, 19
                  sra          s2, s6, t3
                  sra          t2, s1, a1
                  slli         ra, sp, 12
                  lui          zero, 839862
                  mulh         s4, s9, t2
                  divu         t3, a3, a1
                  sltu         a5, s5, t3
                  sra          ra, a5, s6
                  mulhsu       a7, t0, tp
                  slli         s11, a4, 9
                  divu         s2, t2, tp
                  xor          zero, t1, a1
                  slti         s11, s5, 592
                  rem          a0, t5, s8
                  add          gp, a6, a2
                  srai         s6, s7, 20
                  remu         s4, s3, s3
                  slli         a3, a3, 7
                  sub          t6, s2, a7
                  mulhu        a2, s0, s1
                  rem          s11, a0, t3
                  remu         a7, t4, s0
                  sll          s7, a7, a7
                  slt          s9, s0, a2
                  mulh         t6, s6, sp
                  andi         t1, t4, -123
                  slti         a5, s4, -555
                  divu         tp, s5, t2
                  slt          s2, t4, a6
                  mulhsu       s5, t4, t3
                  andi         s2, t1, 346
                  sll          a7, a6, a2
                  slli         t2, sp, 11
                  or           s4, s0, s10
                  divu         t1, a1, ra
                  sltu         s2, t5, s3
                  divu         s8, t5, s4
                  ori          s4, a0, -2030
                  slt          gp, s2, t4
                  div          a2, a6, t5
                  mulh         a4, s4, a3
                  sll          s4, a4, s1
                  remu         t6, t2, s7
                  and          ra, s1, a5
                  xori         s2, t4, 1208
                  slt          a4, s11, tp
                  xor          gp, t0, t5
                  add          tp, a0, s10
                  srli         s6, t5, 19
                  mulhsu       ra, a0, t0
                  addi         s0, s9, -1993
                  srai         a3, s2, 4
                  rem          s2, t1, gp
                  srl          a5, s9, t3
                  nop
                  mulh         s2, s3, t6
                  or           t4, t0, a6
                  addi         sp, a4, -900
                  div          a4, t5, s5
                  auipc        t1, 185632
                  sltu         gp, sp, t2
                  srai         a4, s5, 27
                  xori         t4, a4, -484
                  ori          a3, s8, 1664
                  remu         ra, t1, t4
                  mulhsu       s5, a1, s8
                  mulhu        s8, a6, a7
                  rem          a5, s11, a7
                  srai         sp, gp, 14
                  add          a6, t2, s5
                  srai         s1, s11, 16
                  slt          t1, s8, s7
                  divu         s6, t4, s10
                  rem          s0, s7, gp
                  slli         a0, s0, 1
                  auipc        ra, 736481
                  xor          t2, a1, s0
                  sltiu        s8, a4, -430
                  sra          sp, a2, gp
                  slli         a5, a2, 3
                  or           s9, s9, tp
                  srli         sp, t5, 16
                  mulh         s4, s5, zero
                  mulhu        t4, s4, a7
                  srai         a0, a6, 4
                  ori          a5, s4, 1090
                  srli         s9, s10, 21
                  remu         t4, s6, sp
                  sll          a4, t0, s7
                  remu         t3, s6, a1
                  remu         tp, gp, t2
                  rem          s11, s6, t4
                  ori          t1, zero, 974
                  divu         t0, s4, t5
                  slt          a2, s6, t6
                  and          a7, a2, s6
                  nop
                  srl          t2, s11, zero
                  mulhsu       s2, s7, t0
                  nop
                  mulhu        a5, t5, a1
                  slt          s5, t0, s5
                  rem          s0, t4, s4
                  sltu         s4, s4, t0
                  sll          a0, s11, sp
                  auipc        t6, 794102
                  div          s6, a2, zero
                  srai         a3, t2, 27
                  srli         t1, s5, 12
                  mulhsu       s4, a7, s1
                  ori          s2, a0, -1914
                  divu         t0, t0, t5
                  or           t1, sp, t1
                  mulhu        s6, t4, s6
                  remu         s2, s8, ra
                  and          gp, a2, s9
                  xori         a5, s7, -574
                  slti         s0, zero, 990
                  slli         tp, a5, 19
                  and          s2, s3, a2
                  addi         a5, t5, -417
                  remu         s7, tp, t5
                  mulh         s0, tp, a1
                  ori          a7, a0, -1641
                  sub          t4, a6, zero
                  srl          a6, t4, s8
                  andi         s7, s0, 921
                  or           s2, a2, s1
                  srli         t6, t5, 6
                  and          s8, s0, zero
                  or           a4, t6, a4
                  nop
                  auipc        s5, 827899
                  rem          a6, a5, s0
                  divu         sp, s10, s1
                  lui          s4, 1037946
                  addi         a3, s2, -1656
                  mulhsu       ra, t2, t3
                  auipc        a0, 277806
                  ori          s8, s0, -70
                  mulhsu       a3, sp, t0
                  div          a7, zero, t2
                  slli         zero, t6, 1
                  slt          a7, t6, t5
                  add          s8, s0, s3
                  andi         t4, a4, -972
                  sra          a5, s6, s11
                  xor          t3, s0, a6
                  slti         ra, t4, -806
                  rem          a2, t6, s9
                  srai         sp, t0, 4
                  mulhu        s1, t2, t2
                  nop
                  or           a3, t4, s5
                  lui          t3, 832853
                  or           a0, a2, s5
                  add          a0, a0, t6
                  slti         t0, a0, -409
                  rem          a4, t1, s7
                  xori         a4, s2, -304
                  slt          a4, t0, t4
                  and          a5, s0, t3
                  nop
                  rem          a0, t2, a6
                  add          s9, s0, s8
                  ori          s11, sp, -347
                  sltu         sp, s4, t5
                  add          t4, t6, s9
                  nop
                  nop
                  addi         a0, zero, -936
                  and          a1, t3, a4
                  mulh         a3, a7, s9
                  slt          s8, a4, tp
                  slli         s7, a2, 27
                  rem          zero, s4, s9
                  srl          s7, s7, a0
                  and          a1, gp, s2
                  slli         a6, t4, 29
                  sltiu        a1, t4, 1131
                  slti         t4, s10, -127
                  auipc        t2, 581570
                  and          s11, s7, t0
                  sltu         a3, s9, a2
                  sub          s0, t0, a2
                  nop
                  mul          a0, a2, t0
                  mulh         a0, a4, s8
                  addi         a5, t1, -10
                  and          s1, a4, s1
                  mulh         s7, t3, t4
                  slti         ra, s7, 550
                  and          s7, a7, t4
                  divu         sp, sp, t6
                  andi         a1, s8, 1431
                  ori          a2, s4, -1435
                  mulhu        t3, s3, s7
                  srai         s4, s10, 30
                  divu         s5, s6, a2
                  srli         a3, t0, 3
                  divu         s7, a3, s3
                  andi         t4, s1, -1453
                  and          a1, t4, t0
                  mulhsu       tp, t2, t2
                  mulhu        t4, sp, t5
                  mul          s9, t1, tp
                  sll          s7, t6, a3
                  rem          zero, s11, t4
                  div          s6, s6, a1
                  srai         a4, ra, 19
                  xor          t3, s4, a5
                  rem          t1, a2, a2
                  div          t4, t1, s5
                  remu         a0, t0, ra
                  xor          a5, a5, t3
                  or           s6, a5, s4
                  sra          t1, gp, s8
                  srl          s8, a0, a6
                  div          t4, a5, zero
                  divu         t2, s10, s4
                  sra          t3, tp, s3
                  slli         t3, t5, 6
                  div          a7, s1, t0
                  mulhu        a5, s7, t0
                  srli         s2, a3, 1
                  rem          s7, t2, sp
                  slli         t1, zero, 15
                  addi         a5, s9, 956
                  mul          gp, s8, a0
                  sltu         ra, s2, t6
                  srli         t2, a7, 18
                  srai         a7, a5, 18
                  srai         t3, t6, 5
                  srli         s6, gp, 22
                  sub          t1, a0, s4
                  and          a7, t2, s5
                  nop
                  xori         t0, a7, -417
                  slt          a6, a2, t5
                  mulhsu       ra, s7, t6
                  addi         s1, s3, -1549
                  and          sp, t6, t1
                  divu         t4, s8, t0
                  srli         s1, zero, 5
                  div          a4, s3, t4
                  slt          ra, gp, sp
                  auipc        a7, 630998
                  mulhu        s4, s6, gp
                  xor          t4, tp, s2
                  xori         a0, a6, 579
                  add          gp, t1, sp
                  add          t3, a1, ra
                  srl          a5, a6, s7
                  auipc        a1, 275433
                  mulh         s2, s7, tp
                  srl          tp, zero, a7
                  auipc        tp, 161250
                  andi         s11, a4, -1002
                  slt          t2, s11, s2
                  div          a4, zero, t5
                  lui          t1, 225597
                  srai         s6, s6, 30
                  slti         a3, gp, -1337
                  addi         s1, a0, -1962
                  srai         tp, t1, 12
                  sub          t0, s2, s4
                  sra          zero, s11, sp
                  mulhu        s1, t1, s10
                  sll          s0, a6, sp
                  add          t4, tp, s6
                  div          s11, t1, a6
                  nop
                  rem          s0, gp, s6
                  xor          a5, t3, s9
                  addi         a2, zero, -1098
                  srl          a0, s6, zero
                  addi         s6, tp, -720
                  or           s6, s5, s11
                  mul          a1, a7, tp
                  remu         a6, s6, s5
                  srai         t3, a6, 29
                  lui          t2, 815219
                  mulh         s4, zero, a3
                  srl          t1, t3, tp
                  div          t2, a3, a1
                  sub          s9, t1, s5
                  lui          a2, 855515
                  slt          s6, s9, s10
                  andi         s2, s3, -1164
                  slti         a5, s9, -1052
                  slti         a4, a4, -543
                  remu         t1, t5, t1
                  sltu         s11, a5, s3
                  mulhsu       t1, a2, a1
                  mulhsu       t4, a0, tp
                  mulh         t3, t3, s9
                  andi         a6, tp, -1966
                  mulhsu       s1, s5, s11
                  sltiu        t6, t0, -1860
                  mul          t0, s1, t4
                  slt          s1, s7, t4
                  xor          zero, a5, s11
                  sub          t0, zero, a5
                  sltu         t3, s1, zero
                  addi         s2, s0, -1450
                  rem          s0, s9, a2
                  addi         tp, ra, 53
                  ori          s6, s9, 1381
                  and          s6, a5, t1
                  add          a7, t1, tp
                  sub          a7, ra, s1
                  or           t4, s3, s10
                  slli         a6, t0, 19
                  div          zero, s10, s7
                  or           a7, t6, s0
                  and          s8, s2, ra
                  srli         s7, s3, 16
                  srli         s6, a6, 3
                  sll          s11, a4, s11
                  rem          sp, sp, tp
                  lui          s2, 19132
                  srl          a1, t2, t5
                  andi         s1, s8, 202
                  mulhsu       t3, a5, t4
                  mul          a0, tp, s1
                  xori         s4, s3, -90
                  srai         ra, s9, 2
                  div          t3, s5, s4
                  addi         s2, s6, 1621
                  sltiu        a7, a6, 1547
                  auipc        s11, 858983
                  remu         a4, a0, a4
                  nop
                  divu         a6, sp, s9
                  sll          gp, ra, s11
                  mulhsu       s1, a3, t5
                  mulhsu       s0, s5, a4
                  sub          a6, t5, s9
                  div          t4, a5, s9
                  auipc        t3, 260719
                  sll          a7, s11, a6
                  slt          t4, t0, ra
                  sltu         s11, s1, s7
                  ori          gp, s4, -1868
                  mulh         gp, a4, t5
                  add          s8, a1, s0
                  mul          s0, t2, a6
                  mulh         s6, t3, s3
                  mul          a5, s0, s11
                  slli         t0, a4, 8
                  slti         a7, s6, -1066
                  nop
                  slti         t6, s4, 886
                  or           a5, s11, s6
                  srl          tp, s2, zero
                  xor          a6, a4, s2
                  slli         s8, t1, 19
                  remu         t4, s0, s5
                  or           s9, s2, a5
                  mul          s8, a5, s1
                  ori          t0, a5, -496
                  xor          sp, t2, a5
                  sltu         ra, s9, s10
                  ori          t4, s1, -2000
                  sll          s0, s2, s4
                  srli         s1, s10, 5
                  sltu         t0, t4, tp
                  xori         s9, s10, 1904
                  slti         s6, s5, 1527
                  srli         s5, a6, 20
                  ori          t2, s4, -137
                  sll          s6, t5, a5
                  remu         a3, s0, gp
                  divu         a0, tp, s9
                  sll          s5, s2, a4
                  srai         gp, tp, 24
                  add          s9, s0, s9
                  xori         t4, zero, 470
                  add          s4, a0, a2
                  sub          t6, t5, s10
                  or           zero, zero, zero
                  xor          sp, s2, s3
                  div          t6, s4, s3
                  slli         zero, sp, 23
                  mulh         t2, ra, s3
                  sub          a0, a6, s11
                  auipc        a3, 1007875
                  slli         s6, s7, 8
                  slt          s9, t1, t0
                  andi         s6, s10, 1361
                  divu         zero, t3, s3
                  srl          a6, ra, s1
                  addi         gp, t4, 1019
                  and          s7, ra, tp
                  slt          s0, s11, a6
                  sub          zero, a2, a0
                  srai         s7, s10, 28
                  mulhsu       a0, s4, s7
                  mul          s4, a7, s11
                  and          s6, s11, t3
                  andi         a0, tp, -395
                  slli         s1, a6, 16
                  srli         a0, ra, 10
                  mulhsu       s11, tp, t5
                  or           s0, a3, s5
                  div          a2, s6, a0
                  add          t4, s3, a4
                  rem          a0, gp, a7
                  mulh         zero, a2, t3
                  div          a1, t5, s1
                  ori          ra, zero, -1885
                  lui          s8, 197772
                  mulhu        a5, s1, s8
                  slti         tp, s1, 1300
                  div          gp, s1, s5
                  sltiu        s11, s8, 441
                  srli         t4, a1, 17
                  sub          a3, tp, a0
                  and          s2, a2, s3
                  mulhsu       t4, sp, t3
                  srl          gp, a6, sp
                  xor          a4, s7, a4
                  lui          a4, 747047
                  ori          s9, s11, -299
                  srli         s5, s6, 22
                  remu         t4, a1, a4
                  sra          s9, a0, a6
                  rem          t3, s7, sp
                  mulhsu       s5, gp, s2
                  srai         a2, s3, 20
                  auipc        a1, 477663
                  slti         a2, s1, 1670
                  remu         s4, a1, s10
                  ori          s11, t4, -285
                  sub          a4, a4, ra
                  addi         t1, s10, 821
                  rem          s0, t2, s3
                  rem          s9, t6, t0
                  srl          t0, sp, a2
                  sra          a3, t6, s2
                  xori         a4, s7, 1580
                  mulhu        t3, gp, t3
                  sltiu        sp, s7, -1147
                  sltu         t1, s7, a1
                  srli         s8, gp, 18
                  ori          s6, a6, -974
                  rem          t2, s11, ra
                  sltiu        t3, ra, 520
                  mul          s8, a6, a6
                  rem          s5, s5, s0
                  sub          s11, tp, a2
                  addi         s4, s3, -322
                  add          s11, t1, s2
                  sltiu        a7, t0, 1474
                  nop
                  sra          s2, s7, s8
                  srai         gp, t6, 6
                  addi         t4, s2, -1425
                  or           s8, t2, a0
                  slti         s2, s10, 872
                  andi         a6, tp, 1537
                  slt          s7, a4, s3
                  ori          s4, t2, -318
                  sra          s7, a0, tp
                  xor          t6, s7, s10
                  xor          t6, s10, sp
                  sll          a6, a6, t3
                  addi         s2, s5, -1471
                  and          a2, gp, a6
                  slt          a6, tp, t2
                  sltiu        ra, s7, 1127
                  rem          s9, s11, t0
                  slti         zero, s1, -620
                  xor          a7, tp, ra
                  sub          s8, s4, t1
                  slti         t4, t1, -1792
                  addi         s11, a3, -1403
                  rem          ra, s0, zero
                  sltiu        a6, sp, 2039
                  mulh         s4, t1, gp
                  rem          t4, t5, t0
                  srl          s6, a7, s5
                  ori          s5, a1, -933
                  addi         s2, a3, -69
                  slti         s5, a6, -98
                  xor          t2, a1, gp
                  remu         tp, t2, t0
                  andi         a0, s4, -1439
                  mulhsu       t2, a5, s1
                  remu         t4, s5, s4
                  slli         s6, t5, 29
                  or           t6, t6, a0
                  mulhsu       s2, s8, t0
                  sra          s9, a4, t2
                  sub          a5, a6, sp
                  remu         a7, a7, t1
                  or           t1, t4, a7
                  slli         s2, s0, 18
                  sub          a0, t5, s0
                  slt          t0, a3, s8
                  srai         a2, s1, 2
                  srl          s6, s4, t3
                  and          ra, s7, ra
                  or           t2, zero, s4
                  and          s8, t3, ra
                  addi         t4, s10, -978
                  div          t6, s11, t4
                  mulhu        s7, s8, s7
                  srl          s2, a3, t6
                  and          t1, t4, s1
                  slt          s11, s6, a4
                  mulhsu       s11, t2, a4
                  addi         s0, zero, -1422
                  srli         t6, t0, 1
                  rem          a2, zero, t3
                  lui          s1, 178828
                  sltiu        a6, s9, -1423
                  mulhsu       s5, tp, sp
                  nop
                  div          t3, s11, a3
                  add          a5, ra, s0
                  srl          s1, t1, sp
                  sra          t3, t0, t0
                  add          a3, t3, s1
                  remu         s0, t2, t6
                  xori         a6, t2, -239
                  srai         t2, a5, 7
                  slti         s8, s0, 1062
                  xor          t3, s8, t3
                  mul          a4, sp, t0
                  xor          a6, s1, a4
                  xori         t1, t2, -1154
                  mulhu        t6, a7, t5
                  sra          a6, zero, sp
                  srli         s1, t3, 9
                  ori          s0, t1, 1579
                  nop
                  divu         tp, s3, ra
                  sll          s9, a0, a3
                  remu         sp, s5, s3
                  slt          s5, t4, s6
                  divu         t0, s9, t4
                  div          tp, a1, s4
                  divu         gp, s4, s8
                  divu         a4, t2, s1
                  xori         zero, t6, 1655
                  lui          tp, 479847
                  mulhsu       ra, a6, t6
                  sub          gp, s10, a5
                  mulh         tp, s6, s7
                  slti         t4, s8, -1499
                  xor          a7, a6, s2
                  rem          a1, s7, sp
                  slli         s5, a6, 18
                  xori         t4, s8, 1331
                  remu         s0, s7, tp
                  add          tp, a1, s10
                  nop
                  sra          t0, s4, s1
                  and          s2, a5, a4
                  nop
                  srai         t3, a6, 6
                  remu         s11, s7, s4
                  divu         s11, s4, sp
                  sra          sp, a6, a7
                  mulhu        s0, t1, s1
                  mul          s0, t3, sp
                  sub          a5, gp, a7
                  addi         t6, s2, -329
                  slt          a0, tp, a6
                  xor          a3, a3, a5
                  mulhu        s9, t0, s10
                  srl          a1, zero, sp
                  slt          tp, tp, t3
                  slt          ra, s8, s7
                  xor          s5, s7, s11
                  srai         a7, s11, 12
                  mulh         ra, t1, s4
                  nop
                  mulh         t4, s7, sp
                  xor          s11, gp, s3
                  divu         a4, t6, a4
                  sra          gp, t5, s6
                  xor          gp, t4, t2
                  mul          gp, a6, t6
                  srai         t1, s6, 31
                  sll          a5, zero, t2
                  sub          s8, s7, t6
                  and          s5, t6, a7
                  sll          s6, s3, a6
                  add          a3, a1, a5
                  srl          t4, s0, zero
                  remu         tp, t2, a6
                  sub          sp, s0, sp
                  and          s7, s2, s3
                  rem          s11, t3, a2
                  xor          a7, a3, t5
                  sltu         a3, s9, s9
                  xor          s1, ra, s7
                  andi         t3, a3, 530
                  add          a1, ra, t5
                  add          s2, t2, s6
                  mulh         t6, s7, a3
                  mulhu        s8, t0, gp
                  mulhu        a3, s5, t2
                  sltiu        sp, a0, 56
                  xori         t1, s2, -474
                  ori          a4, a6, 782
                  and          s9, s1, s8
                  srai         sp, a0, 29
                  divu         a4, s5, s1
                  sra          t2, a2, a4
                  div          zero, s3, a3
                  lui          s11, 931751
                  add          a6, t3, a6
                  or           s0, a2, a7
                  ori          a7, s10, -1869
                  and          s5, a3, a3
                  sll          a1, a2, a3
                  addi         s1, a0, -1295
                  and          s1, a0, zero
                  divu         s2, s3, ra
                  mulhsu       t6, s7, s9
                  sltu         a2, t1, sp
                  srl          tp, a2, t4
                  andi         s11, zero, 142
                  slti         t6, a4, -1955
                  mulh         a4, s0, s5
                  or           s2, a3, s4
                  sltiu        a3, t2, 220
                  andi         t4, s0, -1667
                  sltu         a2, a1, s8
                  auipc        s2, 95929
                  auipc        a7, 431585
                  srai         sp, s2, 2
                  sub          s2, t1, t0
                  slt          t2, t6, t0
                  mulhsu       zero, t1, sp
                  xori         a3, s5, -5
                  div          s0, s6, t1
                  mulhsu       s0, sp, s5
                  nop
                  or           gp, a3, a7
                  mulhsu       sp, t2, tp
                  ori          s2, a4, -545
                  srai         s11, t3, 9
                  srai         s6, a7, 31
                  auipc        sp, 520099
                  div          t4, s1, a1
                  mulhsu       a0, s10, s7
                  mulh         t1, a0, ra
                  div          a1, s8, a6
                  sll          t1, s8, t1
                  mulh         t2, a0, s11
                  slli         s6, gp, 24
                  slt          t2, a7, t0
                  sltu         a5, zero, s9
                  sltiu        t1, s5, 1385
                  and          a1, a3, a4
                  rem          s2, a3, s0
                  mulh         s4, a2, s3
                  sltu         s4, a6, t1
                  and          s0, a7, tp
                  sra          a6, a3, s8
                  or           a2, gp, a4
                  slli         a4, t4, 18
                  ori          s7, s7, 1079
                  sll          zero, s6, s0
                  remu         gp, s7, t6
                  mulhu        tp, t1, a3
                  auipc        s11, 890958
                  sltu         sp, s11, gp
                  sltu         a4, ra, a3
                  add          a2, t1, s3
                  xor          a0, t0, s6
                  srai         t2, gp, 4
                  sll          t6, a1, s4
                  add          a3, a1, s10
                  sra          s9, zero, s6
                  mulhu        t3, s6, a6
                  slti         s11, a2, 19
                  and          a0, t1, s11
                  slli         t4, a6, 12
                  divu         t4, s7, s2
                  ori          t0, t5, 491
                  addi         t3, t0, 1902
                  remu         a7, s0, a4
                  sub          t2, gp, t2
                  remu         s5, t3, s3
                  remu         t1, zero, s7
                  mulh         s5, s8, s11
                  mulhsu       sp, s10, t1
                  rem          t3, a1, s7
                  addi         s6, s11, -525
                  mulh         s5, a2, s3
                  divu         s9, s4, sp
                  andi         s2, ra, 537
                  divu         a5, a4, tp
                  mulhu        t4, t0, s3
                  sll          sp, a1, gp
                  srai         a3, s9, 8
                  xor          s5, s6, t0
                  srli         gp, s9, 13
                  addi         s11, s4, 1028
                  sltiu        tp, s9, 938
                  srai         t3, a1, 24
                  andi         t3, a0, -451
                  mulh         a6, s8, s0
                  add          t1, a4, s9
                  div          a6, a5, s4
                  sra          a2, t6, t6
                  srli         gp, a5, 5
                  xori         s4, s9, -1945
                  mulhsu       a6, t0, t3
                  xor          t6, s2, s6
                  srl          t3, s3, a4
                  sltu         t6, a6, s2
                  rem          s8, s1, s2
                  mulh         gp, sp, t6
                  slt          s7, s1, s10
                  lui          gp, 1015667
                  slli         s7, s6, 8
                  srai         t3, a1, 27
                  sll          s2, a0, gp
                  sltu         s2, t0, t0
                  nop
                  xor          t6, a5, s3
                  sub          a3, s7, t3
                  andi         s9, s10, -644
                  div          s5, s4, s2
                  and          a4, zero, s6
                  slt          a2, zero, a4
                  sltiu        s11, a0, -730
                  sltu         a0, s9, ra
                  srai         t6, t1, 2
                  auipc        t4, 136859
                  addi         s7, s11, 1795
                  srli         s11, s1, 7
                  divu         ra, s6, a2
                  or           t6, s2, t5
                  div          a1, s6, a3
                  andi         t6, sp, -1186
                  mulhsu       a5, s7, s11
                  sub          t1, a0, s2
                  slti         t2, a5, 896
                  divu         s9, t1, t4
                  or           t4, ra, s9
                  lui          sp, 567108
                  mul          gp, s4, t6
                  and          s7, s4, t6
                  and          a0, t0, a1
                  srai         zero, a2, 12
                  srl          a5, s4, s10
                  srl          s2, sp, ra
                  divu         s1, tp, t6
                  mulh         s9, zero, tp
                  slt          tp, sp, t4
                  auipc        a4, 581992
                  slt          a4, gp, a7
                  or           a1, s2, s11
                  mulhu        a4, s1, sp
                  sra          s7, a2, a4
                  srli         s11, a4, 15
                  divu         gp, s1, t2
                  sltu         s7, s10, t6
                  or           s11, a3, t0
                  xori         t3, s9, 1980
                  lui          t3, 875744
                  rem          s0, s11, tp
                  ori          sp, gp, 996
                  xor          ra, s7, a1
                  auipc        t3, 732727
                  and          s7, gp, t6
                  sub          tp, t6, a6
                  sub          s11, s8, s2
                  slli         ra, zero, 16
                  mulh         a2, s1, a0
                  sltu         s11, ra, a1
                  nop
                  srl          s4, s6, a7
                  andi         a6, s11, -261
                  add          tp, sp, s2
                  xori         t0, a7, 1786
                  rem          t1, t5, ra
                  mulh         a0, t3, a5
                  mulh         s4, ra, a7
                  divu         s2, a0, a3
                  sra          a3, s4, s5
                  rem          a3, s5, s6
                  addi         a5, t5, -1670
                  slti         s7, t3, 1319
                  addi         zero, t3, 443
                  xori         a3, s5, -1510
                  mulhsu       a7, s3, a1
                  remu         a4, a1, s2
                  lui          a3, 322830
                  mulh         sp, ra, tp
                  andi         s9, a1, 404
                  rem          ra, s8, s7
                  sll          t3, s9, sp
                  slti         s9, a5, -1149
                  ori          gp, gp, 109
                  mulh         t4, t5, s6
                  rem          s2, ra, s8
                  sltu         sp, s0, s5
                  lui          tp, 288767
                  sltiu        tp, sp, -1565
                  divu         sp, t6, s10
                  addi         s7, s9, 1497
                  addi         t4, s8, 998
                  andi         s11, s10, -9
                  divu         t6, zero, s5
                  srli         gp, zero, 23
                  add          gp, t3, s5
                  srai         a7, a6, 13
                  slt          s0, zero, s8
                  remu         s1, a1, a4
                  nop
                  sra          a4, s2, s4
                  and          s11, s8, a1
                  sltiu        tp, t1, 1077
                  addi         sp, t1, -127
                  mul          s6, t0, s0
                  sll          t2, a0, t3
                  sltu         s5, t6, a2
                  srli         sp, s10, 0
                  auipc        s11, 377213
                  sub          s1, tp, a5
                  xori         ra, s6, 460
                  add          a6, a0, s8
                  slt          s4, s2, s1
                  sub          s1, a7, t4
                  divu         a7, a2, s4
                  sltu         s7, gp, s10
                  addi         s8, a3, 2019
                  divu         s9, sp, a6
                  mulh         t4, t2, t6
                  divu         s4, s5, s8
                  srl          t6, tp, a0
                  andi         t3, a0, -133
                  addi         sp, s9, -527
                  xori         a0, t0, 628
                  nop
                  nop
                  mulhsu       t0, a1, a3
                  slli         a2, a5, 21
                  div          s5, s7, t6
                  srai         s2, a6, 0
                  remu         a3, s6, s7
                  xori         s6, t0, -623
                  sra          tp, tp, s6
                  xori         s9, a6, 388
                  mul          a5, s6, t0
                  mulh         sp, t0, zero
                  sra          s2, t5, t6
                  ori          a6, t0, -1238
                  srli         s6, sp, 11
                  sra          s7, s9, a3
                  divu         s8, a4, a3
                  and          s2, s4, a2
                  addi         s6, t4, 1097
                  sltiu        t0, a0, -1116
                  sll          gp, t4, s11
                  sltu         s4, a0, sp
                  rem          s11, a2, s10
                  mulhu        s9, s9, s4
                  divu         a6, a6, tp
                  divu         s8, t1, t4
                  mul          t1, t5, t4
                  lui          s8, 836982
                  slt          a1, gp, a1
                  sra          a1, ra, t1
                  sub          a6, t2, t1
                  slli         s11, t3, 17
                  xor          s7, ra, a3
                  or           a1, t6, s4
                  mulhu        s2, a2, t3
                  div          s9, t5, s9
                  sltu         ra, a2, s7
                  mulhu        a3, s10, s0
                  sltiu        ra, s6, -1011
                  lui          s7, 263687
                  sltiu        zero, s5, 1129
                  slti         zero, s10, 2000
                  mulhsu       t4, s1, t3
                  mulhsu       a7, s5, t5
                  ori          a6, a7, 169
                  rem          a7, s1, t1
                  mulh         s8, t0, t0
                  slti         s9, s6, -1785
                  mulhu        t3, sp, a7
                  xor          s7, a0, s6
                  srli         zero, s7, 5
                  and          t3, t0, s10
                  slt          a0, sp, t4
                  mulhsu       a0, s4, s1
                  mulh         t1, s2, s8
                  mulhu        gp, gp, s11
                  sub          t0, t0, ra
                  slti         t3, t3, -935
                  slti         t6, s11, -1814
                  srl          s11, s5, t2
                  slt          s2, s7, a1
                  divu         gp, s6, gp
                  nop
                  sltiu        a5, s3, -346
                  divu         t2, gp, a2
                  add          zero, s0, t6
                  slti         a2, s2, -2011
                  sltiu        s4, t2, -158
                  divu         t6, t3, a3
                  sub          s8, s10, gp
                  nop
                  sltu         s7, s9, t6
                  nop
                  auipc        s1, 369029
                  sll          t2, s7, t5
                  mul          s4, t0, s7
                  mul          a6, a7, a7
                  auipc        a4, 1009925
                  slti         sp, a3, -1879
                  andi         s4, t1, -1394
                  sltu         sp, a6, t1
                  divu         zero, s0, s11
                  srai         s4, s9, 12
                  sub          a3, s9, s2
                  divu         s8, ra, t5
                  slt          s11, t4, a7
                  slli         s4, s5, 0
                  sub          s6, a3, t2
                  slli         s1, s3, 4
                  mulhsu       s11, ra, gp
                  mulhu        t2, s8, a1
                  slt          s1, t4, a7
                  andi         a3, s7, 1796
                  or           s2, a5, tp
                  lui          t0, 733193
                  div          a4, s1, s2
                  div          s2, t1, sp
                  xor          a1, sp, s11
                  mulhu        a7, s3, a0
                  srai         t1, a7, 24
                  sltu         t6, a3, a6
                  sll          zero, s4, t4
                  mulhsu       a7, s11, a3
                  auipc        a5, 358151
                  srl          s8, s8, a1
                  div          t1, t4, a1
                  sra          t3, a5, a7
                  xor          s11, sp, s6
                  div          t1, t1, t1
                  lui          t3, 710995
                  sltiu        s9, t4, 1981
                  sll          t2, s1, s0
                  slli         tp, a3, 5
                  sltiu        s11, a1, 140
                  xori         s7, s9, 1129
                  rem          t2, s1, a2
                  divu         tp, s8, t1
                  srli         s5, a2, 27
                  ori          s4, s1, 432
                  div          t4, t1, t0
                  or           a7, s1, tp
                  addi         a7, s7, 436
                  andi         sp, t3, -1174
                  divu         t4, a3, s8
                  or           s5, s11, ra
                  remu         s0, s4, s6
                  xori         s8, t1, 1252
                  and          t1, t1, a7
                  div          s5, s10, zero
                  auipc        t1, 135449
                  div          s2, s0, s10
                  slt          s6, gp, a6
                  sll          t1, s6, s9
                  srli         gp, s8, 22
                  srai         s6, a6, 20
                  sub          s4, s3, t5
                  mulhsu       s6, t4, s9
                  lui          s4, 1036429
                  lui          s7, 436295
                  mulhsu       tp, s11, s8
                  sra          s6, a7, s11
                  sll          a6, a2, s5
                  sll          a7, s6, a0
                  slt          sp, t4, s10
                  or           s1, a2, ra
                  or           s4, s7, s4
                  nop
                  ori          t2, s6, -750
                  xor          t6, t3, t3
                  slt          t0, s8, a6
                  mul          s11, t3, t0
                  slti         a7, s4, 1254
                  mulh         s7, t6, a2
                  slti         s9, a0, -1675
                  ori          t3, s6, -231
                  mul          s7, t0, a1
                  sub          sp, t3, t3
                  sltu         a3, a0, s4
                  divu         t3, t5, s11
                  nop
                  div          a5, s1, s10
                  srl          a5, a0, a0
                  mulh         t1, s3, a0
                  addi         s1, s2, 1459
                  add          tp, t0, t2
                  or           t0, s0, a7
                  rem          a1, s2, t2
                  and          a2, tp, a1
                  sll          s9, t3, s3
                  divu         s5, t5, s8
                  mulh         s11, s10, tp
                  slti         a4, s10, 1595
                  addi         s7, s9, 1970
                  divu         gp, s5, s3
                  srli         sp, a5, 9
                  sltu         a4, a1, s11
                  remu         a7, s1, a3
                  rem          a4, a5, ra
                  slt          t4, s10, a2
                  xori         s6, t4, 188
                  mulh         t3, s11, a6
                  sub          t2, t2, tp
                  div          t3, s8, s11
                  lui          a0, 310952
                  add          a2, t4, t3
                  andi         a3, s10, -1577
                  sub          a6, s2, s4
                  auipc        a6, 320068
                  divu         a2, t1, s3
                  andi         s0, a5, -909
                  or           tp, ra, s10
                  mul          s11, t4, s9
                  rem          t1, s0, t6
                  srl          t2, a1, s8
                  xor          s6, a7, s8
                  xor          a3, s6, s1
                  lui          ra, 208070
                  remu         s0, a5, s9
                  sltiu        a4, s2, 785
                  mulhsu       t4, s5, s0
                  div          t0, t0, a6
                  ori          t6, s10, 1037
                  slt          a6, t3, s7
                  ori          s8, t5, 206
                  ori          a1, a7, -1479
                  sub          a7, a7, t4
                  add          sp, s0, t0
                  mulh         s0, s1, s9
                  and          a2, zero, s8
                  or           s6, s0, t2
                  nop
                  nop
                  sra          s8, s2, s5
                  div          s5, t6, ra
                  slt          s1, s1, a4
                  rem          tp, s1, s11
                  nop
                  srai         a4, s6, 6
                  lui          s0, 468661
                  add          a6, tp, a4
                  mulh         s11, s6, ra
                  sltiu        t6, s4, 660
                  srai         a1, t2, 15
                  and          t4, a5, s2
                  slt          t6, sp, t5
                  addi         s2, a3, 1718
                  mulh         a4, s4, t5
                  srl          a4, t0, s10
                  and          t6, s9, a3
                  nop
                  sub          gp, s9, s10
                  srl          s5, t4, sp
                  ori          a1, s5, -140
                  mulhsu       a2, a3, t5
                  mul          t6, tp, a1
                  srl          t2, a0, s7
                  sll          s2, a5, t2
                  srl          s11, t1, t1
                  mul          t4, a6, s2
                  mul          a7, a4, zero
                  sltu         s8, s10, s0
                  mul          t6, s5, a0
                  sltiu        s6, s2, 1506
                  andi         a0, s8, 1376
                  slt          a6, s2, s4
                  nop
                  sltu         a0, t3, s2
                  addi         a0, t4, 2017
                  lui          gp, 278679
                  sltiu        s0, sp, 685
                  andi         t3, s3, -2038
                  addi         s8, s4, 1166
                  and          a6, zero, gp
                  mulhu        t3, t3, a1
                  lui          t2, 132650
                  auipc        t4, 391512
                  slti         s11, t3, 3
                  and          a3, s5, t3
                  divu         a0, s1, a3
                  sltiu        t6, a1, 580
                  remu         s0, a6, t3
                  sub          t2, zero, a1
                  andi         s0, a3, -477
                  sltiu        a2, t5, -564
                  sub          a7, a5, t0
                  divu         a4, s4, tp
                  sub          t0, s7, s0
                  and          t1, tp, s11
                  slli         ra, t3, 16
                  andi         a6, s11, 320
                  slti         s5, a1, 1143
                  div          s6, s7, s3
                  rem          a0, ra, s0
                  mulhu        ra, a2, t1
                  srli         t6, a3, 31
                  mulhu        s2, s3, t1
                  srli         a7, sp, 20
                  sra          s5, a0, s1
                  mulh         zero, ra, s1
                  remu         a5, t4, s9
                  slli         t6, s8, 16
                  sll          t2, s9, a2
                  sltu         a6, sp, s4
                  sra          ra, a4, s9
                  mulhsu       a3, a7, s9
                  divu         sp, s1, a5
                  sltu         s4, ra, a2
                  slti         s6, s7, -1424
                  andi         t2, ra, 1710
                  nop
                  mulhsu       a3, s7, t4
                  divu         a0, s9, s9
                  add          gp, t5, s11
                  mul          s7, t5, a4
                  mulh         s9, s4, a1
                  slli         s9, a2, 16
                  remu         t3, s8, s7
                  mulh         s11, a7, t0
                  sltiu        a0, ra, -962
                  xor          sp, tp, s2
                  slti         a0, s8, 1856
                  srli         s6, t6, 18
                  lui          s2, 850623
                  sra          s4, s11, s3
                  mulhsu       zero, s4, a6
                  xori         s2, a0, -1787
                  mulh         s1, s1, gp
                  nop
                  srl          s8, s2, s10
                  and          a3, gp, s10
                  remu         zero, a5, tp
                  add          s11, s4, t3
                  divu         t3, a6, s5
                  auipc        s0, 241622
                  andi         s2, a5, 53
                  mulhu        s8, zero, a0
                  slt          tp, s1, t2
                  auipc        s6, 15583
                  sll          a7, s11, s9
                  ori          t0, s10, 308
                  sll          s6, tp, a7
                  xor          a3, a7, t2
                  ori          s1, a0, 1683
                  mulhu        a7, a2, t0
                  sltu         s7, a3, t5
                  srli         a3, t6, 6
                  auipc        t2, 1010270
                  and          gp, t4, a0
                  mulh         t0, t5, t5
                  mul          s0, s2, s3
                  srl          a6, t4, s5
                  mulh         s7, gp, a5
                  sltiu        gp, s5, -13
                  and          s8, s10, zero
                  sltiu        a5, sp, -1670
                  add          a3, gp, t6
                  nop
                  rem          tp, a6, s8
                  srai         a1, s11, 21
                  slt          s9, s0, s3
                  sub          s6, a7, s5
                  sltiu        t6, t6, 413
                  mulh         t1, s5, ra
                  sltu         a7, s5, a1
                  sub          s1, sp, t1
                  xor          tp, a1, s10
                  remu         a6, a6, t3
                  sra          tp, a1, t3
                  ori          a4, zero, -723
                  xori         a0, a0, -2047
                  sub          s9, t0, t4
                  add          s2, s4, t0
                  rem          t6, gp, a3
                  addi         t4, t6, 471
                  srl          gp, sp, a6
                  srai         a2, gp, 9
                  srl          t2, s1, s6
                  lui          s2, 194860
                  mul          t3, a6, zero
                  srli         t0, a1, 25
                  auipc        a2, 189057
                  mulhu        a3, a5, s2
                  remu         ra, t1, a7
                  ori          a2, s4, -1377
                  addi         s8, tp, -1193
                  sra          s5, t4, s3
                  mulh         s6, s6, a3
                  xori         t4, s0, 1205
                  auipc        a2, 494431
                  mulhsu       a4, s7, t6
                  srl          s2, s9, a1
                  xor          a7, gp, a1
                  slli         gp, s7, 31
                  add          s4, s1, s1
                  srai         a1, t5, 15
                  divu         zero, s2, zero
                  add          t3, s0, s11
                  slti         a4, a3, -1726
                  sltu         a3, a3, s3
                  div          s1, a4, s4
                  slli         t0, a1, 21
                  srai         t1, s5, 16
                  nop
                  slli         t6, a5, 3
                  slt          a4, t3, t5
                  addi         tp, s8, -1481
                  xor          a5, sp, sp
                  mulhu        zero, a5, a6
                  divu         t1, t1, t0
                  mulhsu       ra, s1, s9
                  xor          s0, s5, s0
                  add          s4, s5, sp
                  srl          ra, t5, s2
                  rem          a7, s11, s9
                  and          t2, ra, s10
                  or           a3, zero, a1
                  slt          s6, s10, sp
                  slt          s2, a3, a4
                  addi         t1, s8, -1811
                  rem          a4, a3, s0
                  sll          a1, s8, s1
                  divu         s9, s6, a5
                  slli         s11, t0, 27
                  sub          a7, s0, zero
                  and          t2, t5, a0
                  remu         a0, s9, a7
                  add          s0, a4, a4
                  auipc        gp, 555778
                  sll          a2, s8, a4
                  rem          t3, s5, s4
                  ori          s9, a3, 349
                  sub          gp, zero, t1
                  srli         s11, s0, 15
                  xori         s8, a2, -44
                  slt          s1, s11, t1
                  xori         t4, s10, 2003
                  sltu         s5, s2, sp
                  rem          a4, s7, t0
                  slti         a5, t5, 381
                  slli         ra, t4, 8
                  mulhsu       gp, a4, s5
                  slti         a0, t5, -1732
                  div          a1, s3, s10
                  rem          a1, zero, t3
                  xor          t1, gp, t1
                  nop
                  slt          a1, t6, zero
                  div          t1, a6, t4
                  ori          a6, a1, -2028
                  lui          a1, 394302
                  and          s1, t5, s5
                  sra          a1, zero, s6
                  srl          s11, s0, t0
                  remu         t6, t5, s4
                  sub          tp, a3, a3
                  slli         a1, s11, 26
                  srai         a2, sp, 29
                  sltu         s2, t1, s8
                  mul          a6, a4, s3
                  sra          s0, a1, a3
                  sltu         a4, t6, s2
                  andi         a3, s7, -24
                  xori         tp, s9, -1193
                  andi         s1, tp, 1900
                  and          t3, s7, t6
                  or           s5, a2, s4
                  ori          s2, a0, -135
                  sltu         ra, a5, gp
                  xori         t0, ra, -655
                  sub          a6, s6, t0
                  slli         s0, a7, 19
                  remu         t3, s6, t4
                  mulh         s1, gp, a5
                  srli         t0, t4, 18
                  mulhu        s11, s3, t1
                  srli         t4, sp, 14
                  mulh         gp, a3, t6
                  addi         gp, a0, 208
                  andi         s0, gp, -820
                  slli         s2, s3, 24
                  add          s4, t6, t2
                  slli         a6, s3, 0
                  divu         s8, t6, s5
                  srli         s0, s8, 27
                  rem          s8, a7, t0
                  rem          a7, t6, sp
                  slli         t6, a7, 25
                  srai         t4, s10, 26
                  srai         a7, a3, 3
                  slli         sp, s6, 7
                  sll          a3, a7, a0
                  slti         a4, a1, -102
                  or           t4, a2, a1
                  slt          t0, s8, t1
                  sub          ra, s6, t0
                  sub          s1, a2, s5
                  addi         s5, s0, -1968
                  and          a6, s2, t6
                  nop
                  lui          gp, 364379
                  sll          t0, t1, t2
                  and          a5, a6, s0
                  slti         s2, a4, -1173
                  mulh         a1, t5, s10
                  add          gp, t3, t4
                  sra          gp, s9, t2
                  and          t6, tp, sp
                  slti         a0, s6, 911
                  srai         gp, s2, 26
                  divu         s5, ra, s6
                  slt          a3, a0, gp
                  andi         a6, s2, 688
                  add          t4, s6, s11
                  div          tp, s7, s9
                  slti         a4, t6, 1686
                  divu         s8, s3, s9
                  and          t1, zero, s9
                  andi         sp, s9, -1486
                  sra          t1, a0, s2
                  or           gp, s2, a0
                  andi         a4, s3, 1632
                  slti         s2, t1, 978
                  remu         s4, t4, a5
                  sltiu        zero, t2, -39
                  sltu         a4, a6, a2
                  div          t1, s7, t2
                  sltu         sp, s7, t1
                  sra          sp, gp, t2
                  srli         s0, zero, 23
                  sll          s2, s10, s7
                  div          tp, a4, t1
                  sub          s1, a0, a7
                  mul          t4, s7, t1
                  andi         a6, s5, 1582
                  mulhsu       ra, zero, s7
                  sub          s8, t0, a4
                  mul          s6, t3, tp
                  sltu         s8, sp, s3
                  add          s9, tp, t2
                  div          t4, s7, s10
                  sra          a2, t0, a6
                  addi         s8, sp, 1805
                  or           zero, t5, a1
                  andi         ra, t4, 150
                  srl          s9, a3, t2
                  sltiu        gp, a7, -1060
                  sra          sp, a0, s2
                  sltiu        s4, a0, 1863
                  nop
                  rem          s4, t2, a4
                  sll          t0, s7, s5
                  add          s5, a6, t5
                  auipc        zero, 957386
                  nop
                  xori         t4, a6, 210
                  srai         s2, a0, 24
                  rem          t4, s1, gp
                  xor          s5, t0, s1
                  mulhu        t6, t1, sp
                  ori          a4, a4, 1534
                  xor          a7, s6, s3
                  srai         t1, s1, 24
                  sltiu        s2, a7, 1127
                  sltu         s5, a5, tp
                  slti         a2, a3, 1972
                  srli         a6, a1, 9
                  slli         a6, s5, 23
                  sra          s0, a6, t6
                  add          s9, s11, s2
                  ori          gp, gp, 1861
                  sll          t3, s9, ra
                  xori         s7, a0, -1806
                  slti         a0, tp, -1297
                  addi         ra, s2, -2029
                  mulhu        t6, t5, s10
                  mulh         a7, t4, s8
                  slli         a7, t4, 2
                  sub          t4, a7, a7
                  and          s0, s5, a5
                  xori         t3, tp, -1108
                  andi         s9, s4, 1942
                  sll          s8, a5, s9
                  mulh         sp, sp, t0
                  xori         s4, s2, 1964
                  srl          t0, sp, s0
                  andi         s11, s2, 1051
                  mulh         s11, t0, s3
                  sub          ra, a0, gp
                  mul          t2, a5, s0
                  xori         t6, s9, 231
                  remu         a7, t4, s10
                  andi         a7, s0, -2047
                  slt          s1, ra, s3
                  auipc        t2, 172479
                  srli         s6, s5, 28
                  mulh         t0, tp, t5
                  sltiu        s11, t6, -1205
                  sltu         t0, s9, a4
                  slt          s0, s9, s2
                  xor          s6, s5, ra
                  slli         s11, s3, 11
                  sra          s6, s5, t5
                  slti         a0, ra, -554
                  srli         t6, t0, 12
                  slti         t3, a4, -1876
                  lui          s11, 693794
                  or           s7, s8, s6
                  remu         s5, s0, t5
                  srl          a6, t5, sp
                  srai         s6, t5, 17
                  lui          s5, 715247
                  add          gp, t1, s1
                  xori         s1, a4, -238
                  nop
                  sltu         t1, zero, tp
                  slti         s6, a0, -1236
                  sub          a6, s10, a1
                  slti         s8, s3, 954
                  rem          a7, a2, sp
                  xor          tp, a7, s10
                  divu         s9, s6, s8
                  sltu         t4, a7, ra
                  and          t6, a4, s5
                  rem          a2, tp, s9
                  and          ra, a4, zero
                  sra          a1, t6, a6
                  divu         zero, t1, t1
                  ori          s0, a5, -1677
                  slli         a3, t5, 29
                  srl          t1, a0, a2
                  slt          a6, tp, s6
                  or           a6, a6, a2
                  slti         t6, t6, -180
                  andi         t6, a1, -839
                  or           a6, s11, t3
                  rem          sp, a2, a3
                  divu         a5, a0, a2
                  mulhu        s7, s7, s1
                  add          a7, t0, s1
                  rem          s2, a3, zero
                  mulh         s1, s9, a4
                  mulhu        s7, sp, s5
                  xori         s6, a7, 435
                  and          t1, t1, t6
                  slt          a3, a5, s11
                  and          ra, s2, gp
                  xor          s7, gp, zero
                  slti         a4, s0, 962
                  srl          s6, s9, s5
                  sll          gp, tp, a5
                  sub          s5, t5, tp
                  andi         sp, a7, -124
                  srai         t4, s4, 15
                  addi         a6, a2, -1316
                  addi         s4, zero, 695
                  slli         a1, a2, 7
                  remu         a0, t1, ra
                  nop
                  srl          t6, gp, t1
                  mulhsu       ra, s2, s3
                  or           s1, ra, t6
                  sub          tp, t4, s0
                  slt          s1, a4, t4
                  sltiu        t0, s5, 2046
                  rem          t2, a3, gp
                  add          a4, a4, gp
                  divu         s11, s11, s4
                  mulhu        tp, t1, a1
                  and          t4, a1, sp
                  mul          a6, t3, t6
                  addi         t2, ra, -1633
                  sltu         s1, s9, ra
                  and          s8, s2, a1
                  sltiu        s2, tp, 1439
                  div          tp, t6, s7
                  srai         a7, a7, 2
                  mulhu        gp, s4, s6
                  addi         a7, a7, 1040
                  sll          t6, sp, s6
                  mulh         t4, s5, t5
                  srl          zero, s7, s8
                  nop
                  auipc        t3, 915826
                  remu         s8, gp, s6
                  nop
                  slli         s5, zero, 12
                  slti         s6, a6, 1686
                  srai         s2, a4, 1
                  mul          a2, s10, s9
                  div          t6, zero, a3
                  auipc        t0, 257441
                  sltu         a5, a0, a7
                  sltu         t1, s3, sp
                  andi         s2, a7, -575
                  srai         s1, a5, 10
                  remu         s7, a4, s10
                  auipc        a2, 723323
                  nop
                  auipc        t4, 680812
                  srai         a3, s4, 9
                  add          t3, s6, t0
                  sltu         t6, s5, t2
                  ori          ra, a0, -685
                  and          a3, zero, s7
                  srli         s11, s10, 29
                  xori         t1, t4, -1695
                  srl          s1, sp, s4
                  nop
                  nop
                  andi         s9, gp, -567
                  mulhu        s11, tp, t5
                  mul          s0, s6, s3
                  sub          t1, a0, zero
                  sra          gp, t2, s10
                  mulhsu       a2, ra, t1
                  sra          sp, s7, s1
                  remu         t4, sp, s6
                  sub          s8, ra, sp
                  lui          t1, 921124
                  nop
                  slli         ra, gp, 12
                  add          s6, s0, t4
                  mulhu        s5, s5, sp
                  addi         a0, a5, -1993
                  mul          a7, a1, a5
                  or           a3, a1, s5
                  xor          a1, s11, s3
                  mulhsu       s7, s11, s8
                  lui          t6, 1012878
                  slti         sp, s0, 1720
                  mulhu        a4, s6, a5
                  andi         s6, s6, 1948
                  sll          t1, ra, s8
                  slli         a4, t5, 22
                  nop
                  andi         t1, t2, 923
                  divu         s7, a1, t2
                  sub          s4, t1, a1
                  xor          s0, t2, a4
                  or           t0, a2, t6
                  xori         s7, s8, 606
                  divu         a5, s11, a5
                  andi         s11, s6, -207
                  mul          a3, a2, a7
                  sll          a3, a0, s0
                  mulhu        t3, t5, s8
                  remu         s5, a2, s1
                  sll          t4, sp, s2
                  div          s6, s1, a3
                  auipc        s5, 205162
                  ori          a4, a0, -1562
                  and          gp, a3, ra
                  sra          a5, a7, t6
                  mul          s8, t3, s10
                  mul          t6, s0, a4
                  srli         tp, t3, 2
                  sltu         a6, t3, a0
                  addi         s8, s5, -397
                  rem          s2, a4, t3
                  andi         a0, a7, -917
                  add          tp, sp, s5
                  mul          s1, t2, a1
                  mulhsu       s11, a6, s6
                  sra          s11, t1, s11
                  srli         t2, a6, 7
                  sra          t1, a1, s4
                  or           a5, s10, gp
                  divu         zero, t4, s8
                  sltiu        s0, s11, 1029
                  add          s2, ra, sp
                  ori          a5, s9, -257
                  srl          a2, a3, a7
                  remu         t6, t1, zero
                  mul          a2, tp, t0
                  andi         a7, s1, 1871
                  srli         a0, a1, 18
                  srl          a0, a0, a7
                  sltu         a6, s5, t4
                  and          t0, s9, t0
                  mulh         t2, ra, gp
                  mulh         zero, a0, t5
                  mulhu        s8, a6, s4
                  mulhsu       s7, s4, s2
                  slti         s7, s7, -944
                  divu         a3, zero, zero
                  remu         a7, zero, a5
                  div          a7, s7, a1
                  div          a1, a3, a5
                  xor          zero, t5, s9
                  sra          s2, s11, a2
                  mulhsu       s5, s8, a3
                  and          s8, tp, a2
                  remu         a2, t2, t5
                  srli         s11, s5, 6
                  remu         s5, a1, s6
                  sra          zero, s11, a6
                  mulhsu       s2, zero, a6
                  sltiu        tp, s7, -218
                  lui          a7, 249181
                  andi         zero, sp, 2001
                  add          s1, s8, s10
                  lui          s9, 24458
                  addi         a3, s7, 954
                  and          s11, a3, t1
                  remu         a6, s7, a2
                  sra          s6, a4, a0
                  or           s2, s1, t4
                  and          t4, a3, t2
                  div          t3, t4, zero
                  remu         a0, s8, tp
                  remu         s11, a2, zero
                  nop
                  addi         a4, ra, -257
                  ori          sp, a3, 1870
                  sub          t6, s9, a1
                  sub          s6, a7, a5
                  remu         a6, a7, t0
                  xor          s8, t2, t4
                  mul          s6, a4, a6
                  slti         a4, a6, 747
                  slt          a3, t5, a5
                  slti         s11, t5, 764
                  mulh         gp, t3, t4
                  sltu         a0, t6, t1
                  andi         gp, t5, 1466
                  mulh         s0, a0, s9
                  sra          t1, s7, s3
                  xor          a0, s2, a3
                  mulh         a6, t3, t1
                  nop
                  div          t4, t3, t2
                  slli         t6, a6, 24
                  sltu         tp, s11, a3
                  div          s4, t5, a0
                  remu         s2, a1, tp
                  slt          t2, t3, gp
                  srl          s4, t1, s7
                  srl          s0, s7, gp
                  sub          a0, s4, s0
                  addi         t3, t4, -385
                  xori         a2, s8, 766
                  auipc        s7, 32538
                  srl          a0, a0, tp
                  srl          s8, a2, sp
                  divu         s2, a6, t2
                  sra          a0, a1, s5
                  slti         s4, a4, 1666
                  mul          t6, s8, a0
                  andi         sp, a0, 1990
                  ori          s7, s6, 799
                  mulhu        sp, s10, a7
                  xori         a6, sp, 246
                  xor          tp, a6, t4
                  sltu         a0, s0, a6
                  or           t1, zero, a2
                  addi         sp, s9, -397
                  mulhsu       t3, t0, a6
                  andi         t0, s4, -602
                  rem          s4, a0, a6
                  sll          s9, t6, t4
                  mulhu        t6, s9, a6
                  remu         a1, s9, t3
                  mulhsu       t3, t2, s8
                  divu         a0, s4, a5
                  slti         tp, s8, 434
                  slli         a6, s4, 30
                  srl          gp, t6, s5
                  auipc        a6, 45269
                  ori          sp, a4, -193
                  and          a4, t0, a7
                  srai         t2, a0, 5
                  ori          t0, t5, -562
                  nop
                  slt          s4, t6, a3
                  and          t1, s8, s9
                  add          s7, s3, t3
                  div          t3, s10, s8
                  sra          a2, s10, s11
                  mulh         t3, a5, t5
                  or           t4, t3, s1
                  slli         ra, a6, 7
                  sub          zero, sp, a4
                  addi         s2, s5, 1881
                  add          t0, s11, s7
                  divu         t4, s6, a7
                  mul          a0, a2, a7
                  lui          sp, 879669
                  and          t4, a1, s4
                  srli         a7, a0, 13
                  ori          a1, t6, 379
                  slt          s5, ra, gp
                  mulhu        s11, a1, s5
                  sltiu        s2, ra, -567
                  div          a2, t1, s2
                  mulhu        s7, s0, a2
                  srli         a3, s1, 24
                  slti         a6, s11, 1842
                  addi         a7, tp, -327
                  slt          sp, sp, s10
                  lui          t2, 400281
                  slli         a7, a7, 6
                  srai         t6, a6, 12
                  sltiu        t2, t0, 1291
                  mul          s2, t2, s7
                  xor          s9, s11, s9
                  mulhsu       a1, t0, s8
                  or           t2, zero, ra
                  div          a7, sp, s6
                  sltiu        s6, a1, -1502
                  divu         a4, a3, s9
                  slli         s11, s1, 26
                  divu         gp, sp, a0
                  div          gp, s6, s7
                  rem          a7, a1, gp
                  auipc        s0, 658730
                  or           zero, gp, zero
                  sltiu        ra, s4, 1598
                  mulh         a3, t5, a1
                  nop
                  xori         t3, a5, 1464
                  slli         s11, s7, 6
                  remu         s6, a3, s2
                  xor          s4, gp, s1
                  mulhu        t4, tp, s0
                  mulh         a3, t3, ra
                  remu         s2, s6, s9
                  ori          s9, a7, -776
                  mulh         s11, s1, a2
                  andi         s7, ra, 1088
                  srli         s4, t6, 2
                  auipc        a4, 792894
                  slti         ra, s4, 264
                  slti         s8, s0, -663
                  sltu         a2, s5, s2
                  slli         s0, t6, 25
                  divu         a5, a5, t6
                  mul          a4, a2, t6
                  lui          a6, 954863
                  div          s5, a6, s9
                  xori         t3, ra, -1860
                  sll          t3, s10, s7
                  sra          s6, s8, a2
                  mulh         s8, t5, s10
                  auipc        s7, 959222
                  auipc        s5, 600500
                  divu         t6, a5, t3
                  or           s11, a0, t3
                  slti         s11, a2, -1223
                  sub          s11, t4, t2
                  divu         sp, s2, zero
                  sub          zero, a1, tp
                  ori          t2, tp, -1154
                  sub          t3, t0, a0
                  nop
                  srli         s5, s9, 25
                  andi         t1, t6, 1647
                  rem          a0, s3, a6
                  nop
                  srai         s8, t2, 9
                  add          s0, zero, t1
                  srli         t0, s4, 30
                  srl          a0, s3, a4
                  addi         a1, s6, 387
                  sll          s4, t6, s7
                  srl          zero, a2, s1
                  sltu         zero, t3, s7
                  andi         tp, t2, 1715
                  mul          s0, s6, s9
                  sll          s1, t0, s1
                  sltu         t3, s4, a6
                  srai         ra, a3, 5
                  ori          t2, t6, 1800
                  srai         s11, a4, 28
                  divu         a5, s5, sp
                  lui          t2, 659158
                  andi         t2, s7, 266
                  and          zero, ra, a0
                  auipc        zero, 403162
                  mulh         zero, a0, a0
                  and          t3, a1, a1
                  divu         a3, s1, a0
                  rem          s7, t0, a6
                  nop
                  xor          t6, s3, s1
                  add          t6, a6, t0
                  lui          a6, 850460
                  addi         a0, tp, -1493
                  sll          a3, s5, sp
                  nop
                  sltu         t3, a6, a3
                  sra          sp, t6, t5
                  mulhsu       zero, t5, a7
                  auipc        s5, 112340
                  nop
                  lui          a5, 967648
                  sub          s5, t3, s4
                  slti         t1, s9, -466
                  or           t1, t2, s2
                  or           a0, gp, t1
                  slti         s2, s1, 878
                  sll          ra, ra, a6
                  srl          t6, t4, s1
                  slti         s5, t3, 119
                  slti         s5, s6, -2029
                  mulh         a1, a3, s7
                  srai         a3, ra, 9
                  divu         s8, s4, gp
                  nop
                  srli         s2, a4, 6
                  ori          s11, a3, 77
                  divu         s1, s9, s4
                  or           s4, a3, a3
                  mulh         s11, a3, t3
                  xori         gp, a3, -1899
                  sltu         s0, s3, zero
                  remu         a0, t2, t2
                  divu         s11, s1, a2
                  sra          a3, a2, gp
                  mulhsu       a2, s1, s3
                  divu         a3, ra, t0
                  mulh         s11, s8, s8
                  mul          t1, s10, s6
                  nop
                  auipc        t1, 94584
                  rem          s6, a6, t6
                  divu         s11, a2, t5
                  lui          s0, 77557
                  xori         sp, sp, 542
                  sra          t2, sp, t6
                  mulhsu       a0, t1, ra
                  slli         t6, a7, 10
                  srli         s6, a6, 8
                  slli         a5, s7, 3
                  xori         s11, a1, -1121
                  sltiu        t1, s9, 436
                  mulhsu       a2, a3, a1
                  nop
                  slti         a7, t4, 695
                  mulhu        zero, s1, t3
                  slt          s2, s4, a7
                  addi         a0, s7, -118
                  sll          gp, a7, t3
                  divu         s5, s3, ra
                  mulh         s1, zero, s7
                  and          s0, s0, s0
                  lui          a1, 64590
                  sltiu        s2, a2, 162
                  slli         zero, s0, 18
                  sra          s6, t5, a6
                  remu         a7, t6, t5
                  srai         s2, s11, 16
                  mul          t1, a0, s10
                  srai         a3, a1, 26
                  mulhu        a3, s2, a6
                  or           s1, zero, a0
                  nop
                  nop
                  andi         s1, s7, 1767
                  mul          a4, gp, s11
                  sltiu        ra, tp, 100
                  addi         t3, a3, 1047
                  addi         a3, a5, 1063
                  mulhsu       s6, s11, sp
                  ori          t6, a4, -287
                  andi         a1, a5, 1240
                  srai         sp, a7, 10
                  remu         s6, s10, s7
                  srli         t2, s10, 12
                  andi         s2, t3, -1777
                  slti         ra, gp, -1636
                  andi         sp, t3, 1243
                  remu         s7, t3, a2
                  slti         t2, a5, -1043
                  xori         tp, s5, -225
                  and          a1, s0, s3
                  srl          a6, s4, t1
                  or           s8, a1, a3
                  slt          s2, t0, s7
                  srai         t3, tp, 21
                  mulhsu       ra, s5, s11
                  mulhsu       a1, t3, a2
                  xori         t3, s8, -198
                  slli         a1, zero, 18
                  sltiu        a4, t1, 793
                  srl          tp, tp, ra
                  and          a4, t0, s1
                  add          t0, a4, t6
                  srli         s4, s7, 1
                  mulhu        ra, s8, s7
                  andi         s11, a3, -6
                  sltu         t3, gp, t5
                  divu         s0, a5, s10
                  mulhsu       sp, s4, s1
                  slti         s2, s11, -857
                  mulhu        gp, t4, ra
                  or           a0, t5, s11
                  rem          s8, t5, t4
                  nop
                  slli         t3, t5, 11
                  sub          s5, s7, t2
                  slt          s2, sp, s6
                  slti         t1, s6, 280
                  andi         s2, t4, 171
                  sll          t4, t6, s10
                  sll          a4, s9, a3
                  remu         s2, t3, s4
                  xor          a6, a1, s8
                  sltu         a2, a4, a2
                  mulhsu       t0, s10, sp
                  and          a0, t3, s2
                  ori          s8, a2, 1681
                  divu         sp, t1, a3
                  sra          a0, gp, t5
                  and          t1, s11, s5
                  andi         a5, t4, -1170
                  remu         s8, s9, s9
                  sll          a7, a4, s9
                  and          a5, t0, a3
                  mulh         ra, sp, s6
                  xor          tp, sp, t1
                  slt          t6, s5, ra
                  xori         s8, a2, 1667
                  slt          s2, s11, t5
                  andi         t3, s4, 1978
                  addi         t1, a1, 1765
                  sll          a3, zero, s2
                  ori          s11, tp, -910
                  slli         s8, a4, 29
                  addi         s5, s0, -1862
                  srl          t3, zero, t5
                  mul          s0, t4, gp
                  sra          s1, t0, s11
                  srli         t2, a6, 10
                  mul          sp, t0, ra
                  xori         a3, a7, 199
                  add          s0, s3, s6
                  sltu         a5, sp, a7
                  addi         t3, t0, 1781
                  ori          s11, t6, -1013
                  xori         t0, s10, 635
                  srl          gp, s5, a0
                  lui          a7, 647285
                  auipc        s2, 281498
                  andi         t1, t1, -197
                  mul          s5, s7, s3
                  auipc        s11, 206300
                  sra          s2, a1, s11
                  add          s11, gp, a7
                  srai         a0, s0, 7
                  xori         a4, zero, -1547
                  mulhu        a1, s6, gp
                  divu         t3, s6, a7
                  nop
                  div          s0, s4, s1
                  mulhu        a2, t3, a4
                  addi         s5, a1, -779
                  lui          a4, 694195
                  auipc        zero, 1027867
                  and          s5, s10, s9
                  sltu         s11, s8, s8
                  xor          t6, t3, a4
                  div          t1, t6, s3
                  or           a0, t6, a1
                  remu         t6, s3, s4
                  xori         gp, s4, -1035
                  xor          a4, s9, s1
                  mulhsu       a6, sp, gp
                  xor          a7, a2, a6
                  mulhsu       a2, a7, zero
                  slti         a2, a6, 21
                  sltu         t4, t4, t5
                  remu         a3, a2, tp
                  sll          a6, s0, s10
                  xori         t0, a5, -1643
                  nop
                  nop
                  remu         s9, s11, s1
                  mulhu        s0, t4, a6
                  ori          s0, s10, 1734
                  or           a7, a6, ra
                  andi         s2, a6, -1653
                  nop
                  div          s2, sp, zero
                  slti         tp, s0, 225
                  mulh         t3, s2, s8
                  mulhsu       t0, tp, s7
                  ori          a7, s2, -1061
                  rem          a1, gp, ra
                  slt          a3, gp, s6
                  andi         a6, s11, -1184
                  sltu         tp, t0, a6
                  sub          ra, s9, s8
                  mulhu        s5, s10, t6
                  auipc        a2, 1041221
                  div          ra, t2, t5
                  sltiu        s4, a5, 321
                  srli         s2, a6, 3
                  sra          sp, t2, ra
                  or           ra, a6, s8
                  nop
                  sub          gp, t2, gp
                  slti         s2, a0, -89
                  slt          a0, t3, sp
                  sltiu        s7, s8, 458
                  slti         s6, sp, -336
                  srl          s5, s11, s3
                  slt          t2, sp, t1
                  or           gp, t1, a1
                  rem          t6, a6, s10
                  sltiu        s1, a6, -844
                  lui          s7, 597158
                  lui          zero, 524620
                  mul          a0, tp, a1
                  xori         t6, s10, -1012
                  sub          t1, t4, s8
                  mulhu        s11, s6, a5
                  divu         a6, s9, zero
                  rem          t2, s0, zero
                  divu         t6, t6, s7
                  sltu         s9, a4, zero
                  addi         a1, s2, 1301
                  mulh         t2, s8, a6
                  nop
                  divu         a5, t5, s7
                  sra          t3, t2, tp
                  mulh         a4, t1, a4
                  div          s4, s10, t2
                  mul          sp, a2, t2
                  sll          a1, a0, a1
                  mulhu        t1, s6, zero
                  srli         t6, a2, 3
                  nop
                  lui          s7, 168134
                  xori         s0, a0, -1474
                  slti         ra, a4, 1797
                  addi         s1, a1, -198
                  srli         zero, a5, 31
                  xor          gp, sp, t0
                  srl          s6, a5, s9
                  sra          a1, s6, zero
                  divu         a0, s5, tp
                  sll          sp, s3, a3
                  sll          ra, t1, s6
                  xori         t0, ra, 140
                  srli         t3, s5, 20
                  sra          s2, s2, t4
                  nop
                  xor          s1, zero, t1
                  srl          s5, sp, a6
                  sra          a4, t4, s3
                  auipc        t0, 174840
                  sra          ra, a3, a0
                  srli         ra, t6, 0
                  nop
                  div          s4, t4, s9
                  sll          s5, gp, a0
                  slti         s8, a7, 207
                  slt          a6, t1, a1
                  srl          ra, s5, sp
                  ori          s9, s0, -1330
                  auipc        s2, 813393
                  mulhu        s8, s3, t3
                  addi         s7, zero, -524
                  mulhu        s9, a2, a7
                  rem          t6, t2, s4
                  xor          gp, t6, t0
                  sll          s8, t6, a7
                  sll          t3, s9, t4
                  addi         gp, t1, -599
                  sll          s11, ra, sp
                  add          s11, a1, a7
                  ori          t6, t1, -399
                  slli         a2, s7, 14
                  mulhsu       gp, t1, t4
                  lui          s9, 11165
                  xori         s5, a4, 1808
                  sll          a4, s7, a0
                  addi         s2, ra, 1088
                  sltiu        a5, ra, 1814
                  add          a3, a7, sp
                  add          s8, s4, s3
                  nop
                  ori          s11, s2, 1786
                  xori         s1, tp, -323
                  auipc        zero, 365350
                  slli         ra, a6, 9
                  lui          gp, 882664
                  add          s11, s9, s3
                  sll          a5, a4, s7
                  srai         a6, t4, 8
                  sra          s6, a4, s9
                  mulhu        t1, sp, s2
                  rem          a2, s10, s3
                  ori          a1, t5, -1662
                  mulh         a4, s5, a1
                  sltiu        t1, tp, -660
                  sltiu        sp, s10, -1506
                  remu         a7, t5, gp
                  slti         tp, sp, -614
                  divu         a0, a0, s7
                  sub          sp, s4, gp
                  sltiu        a7, s11, -574
                  srli         a4, s3, 23
                  mul          s11, s3, a5
                  or           a1, a4, s0
                  or           a3, t2, t0
                  and          s11, s0, s4
                  andi         t4, s5, 852
                  xor          t6, tp, s1
                  sll          t3, a3, t6
                  slt          t2, a0, a4
                  auipc        a2, 955278
                  srl          t6, s1, tp
                  div          s7, s10, t4
                  sltu         a2, s4, s9
                  ori          s0, zero, -259
                  srli         s4, s8, 21
                  slli         sp, t1, 29
                  sub          a4, t4, t1
                  mulhsu       t4, t0, s11
                  xori         s1, tp, 747
                  ori          a5, s7, 392
                  sltu         a3, s11, a4
                  ori          t2, gp, -1326
                  slti         a4, s1, 1904
                  mulh         ra, gp, s6
                  sll          t6, s3, a0
                  lui          a7, 863771
                  add          sp, s2, tp
                  sltiu        s7, sp, -1732
                  mulhu        a6, t0, a6
                  sub          t0, a4, a6
                  lui          s6, 951197
                  addi         a7, s2, 769
                  auipc        s6, 126358
                  addi         tp, s9, -766
                  addi         s9, t6, 1298
                  mulhu        a4, ra, s11
                  slti         t3, sp, 896
                  rem          s2, s9, s0
                  xor          t3, tp, a6
                  ori          s8, tp, -1688
                  srl          s6, s1, s1
                  srai         s4, t0, 20
                  mulhsu       s2, t3, s3
                  slli         a7, s9, 12
                  srai         a7, t6, 3
                  srai         a5, a2, 30
                  divu         a2, t1, a2
                  add          sp, s6, t3
                  sra          a0, gp, a4
                  andi         s4, t6, -261
                  andi         gp, gp, -1911
                  lui          a5, 314964
                  nop
                  mul          s2, t3, a1
                  sub          t1, t2, s8
                  or           a3, s3, a5
                  divu         sp, s10, s7
                  sub          s11, tp, s6
                  slti         t2, a0, -2048
                  srl          s7, t6, s4
                  sra          t4, s9, t0
                  sltiu        a2, tp, 1102
                  slti         sp, s4, 513
                  rem          s9, s4, zero
                  sltiu        t3, s5, 1584
                  lui          s0, 46081
                  slt          tp, t4, t3
                  div          ra, a5, s7
                  divu         s2, s1, s3
                  sra          tp, t0, a7
                  mulhu        a0, sp, a2
                  and          s2, s6, s6
                  slli         t2, s2, 17
                  or           s11, tp, t0
                  srl          a4, s0, s5
                  srl          t2, a6, sp
                  slli         zero, ra, 7
                  add          tp, a2, s10
                  lui          s11, 1027562
                  addi         a7, a6, -1175
                  srl          a3, t5, a7
                  add          t6, a1, t2
                  slti         s7, a5, -182
                  divu         s4, s6, t4
                  xori         s5, s10, 1367
                  slti         a2, s2, 1119
                  sltiu        tp, s4, 984
                  xor          t4, a5, s8
                  slt          a3, a7, t1
                  ori          ra, s10, -1295
                  rem          s11, s6, s5
                  slli         a0, a5, 12
                  sra          t2, s1, a3
                  sub          t0, t2, s11
                  mulh         ra, a7, s1
                  div          t4, s4, t4
                  mul          a6, s8, tp
                  srai         t3, t3, 23
                  and          t3, a0, a4
                  sub          gp, t3, s6
                  andi         a1, s6, -230
                  divu         a0, s7, a0
                  sltiu        tp, s5, -1750
                  slli         a3, a1, 6
                  remu         zero, a5, a1
                  xor          a0, zero, a2
                  ori          gp, s2, 609
                  nop
                  ori          a7, a0, -271
                  rem          s0, t0, s8
                  nop
                  mul          t2, a1, sp
                  sltiu        sp, s0, -2039
                  srl          zero, s9, a6
                  slt          a3, s3, ra
                  add          a4, s11, t0
                  remu         s8, a4, a7
                  mulhu        s0, s6, t6
                  sll          s1, s6, a5
                  slli         a4, t4, 20
                  sltu         ra, s8, tp
                  sra          a4, t2, s3
                  addi         a1, s1, -1126
                  lui          s8, 436181
                  ori          t2, s6, 1510
                  mulh         s6, s6, s3
                  sra          s7, a7, s2
                  sll          zero, s5, s10
                  auipc        s1, 233661
                  rem          sp, a3, zero
                  auipc        s11, 609287
                  sltu         s5, t0, a2
                  xori         zero, s0, 1946
                  srli         tp, s9, 3
                  div          a3, s5, gp
                  remu         s11, a6, s11
                  srli         s11, a0, 15
                  xor          gp, tp, t1
                  ori          sp, a5, -1394
                  lui          s8, 258226
                  sra          a0, a2, s7
                  and          s7, s2, sp
                  rem          s2, t3, a2
                  remu         a0, a0, t2
                  nop
                  lui          a5, 483369
                  lui          s6, 1040382
                  mulhsu       a0, a5, zero
                  div          s2, t5, sp
                  sltiu        ra, t4, -456
                  srli         a2, a1, 2
                  srli         t4, a0, 16
                  lui          a6, 404389
                  slli         a3, ra, 28
                  mulhu        t3, s7, a4
                  mulhu        a3, s3, t4
                  slt          t3, a2, a5
                  remu         zero, s5, t6
                  mul          a2, s3, sp
                  div          t4, t1, a1
                  auipc        s9, 750517
                  mulh         a4, ra, a0
                  sltiu        s11, t6, 414
                  srli         t3, s3, 24
                  sll          a5, s10, s11
                  slli         tp, a0, 12
                  rem          s4, s6, tp
                  sltiu        s0, s6, 1863
                  or           a4, t5, a3
                  srli         t6, s4, 5
                  mulh         t6, gp, s5
                  sra          s11, ra, a7
                  sub          s1, s3, s1
                  div          tp, s6, zero
                  div          a7, s9, a4
                  srl          ra, s7, s1
                  ori          a5, t4, -1520
                  mulh         s7, a1, zero
                  add          t0, a6, a4
                  xori         t2, s2, 289
                  sra          t3, s10, s1
                  or           t6, s11, sp
                  mulhu        t4, t6, gp
                  lui          t2, 708159
                  slt          t6, gp, a2
                  and          a5, a5, s9
                  slti         tp, s8, 1399
                  andi         tp, t3, 931
                  sll          a2, s0, t2
                  srai         ra, a6, 11
                  divu         s0, t0, tp
                  mul          a1, a2, ra
                  sub          s2, a6, a6
                  lui          t6, 158999
                  or           sp, a5, sp
                  rem          gp, s2, s9
                  add          s8, a2, zero
                  srai         s7, a0, 5
                  sltiu        a6, a6, -1616
                  ori          a7, a3, -1618
                  sub          a3, t5, sp
                  sra          s5, gp, a7
                  sll          s7, t3, gp
                  or           t3, s7, tp
                  srl          t3, s1, gp
                  slti         t3, ra, -421
                  slt          sp, a0, a6
                  nop
                  addi         t2, t0, 278
                  remu         s8, a0, t0
                  lui          t0, 848097
                  slli         s9, t3, 22
                  ori          t0, a3, 1371
                  sra          sp, s10, a3
                  and          a6, a4, tp
                  divu         s11, t6, tp
                  srl          tp, a7, s7
                  xor          t0, t5, gp
                  andi         t4, tp, -769
                  xori         s8, a6, 310
                  sub          a5, a4, tp
                  div          t0, zero, a3
                  addi         gp, a4, -908
                  remu         zero, a6, a4
                  slti         s4, a3, 1547
                  mulh         s6, gp, tp
                  nop
                  mul          s6, a0, s7
                  sltu         a2, s8, s11
                  slli         s7, sp, 27
                  or           a4, a3, s6
                  and          t4, a2, s8
                  xor          a0, s9, s11
                  add          t0, s10, t0
                  or           a1, s6, s5
                  xor          t0, s9, s4
                  mulhsu       sp, s5, s8
                  xor          s6, t6, s6
                  ori          s7, sp, 67
                  srai         s8, t3, 10
                  ori          s9, s2, -190
                  mulhsu       gp, a2, t4
                  auipc        a3, 74748
                  auipc        a4, 689106
                  sltiu        zero, a5, -1964
                  sll          sp, t4, t4
                  slt          a0, t6, t1
                  srai         sp, ra, 7
                  divu         s7, s1, t1
                  nop
                  add          a5, gp, s5
                  addi         s11, s3, -1965
                  and          sp, a5, s1
                  mulhsu       s5, zero, s6
                  sra          s11, s5, gp
                  sub          gp, t4, s2
                  auipc        t1, 43776
                  div          a1, s2, s7
                  nop
                  rem          s0, s10, a4
                  sub          s5, t0, t1
                  andi         s9, ra, -1417
                  nop
                  and          s6, a4, t4
                  sltiu        s0, zero, -528
                  and          t4, t5, a5
                  mul          a0, sp, gp
                  andi         a5, t5, 555
                  auipc        t3, 785651
                  andi         gp, a2, 295
                  xor          s4, gp, zero
                  sub          a0, s6, s5
                  or           s6, a6, s0
                  remu         t0, a3, a1
                  srl          s7, sp, t4
                  divu         s11, tp, s1
                  sltu         a4, s6, a5
                  sltiu        a7, s8, -518
                  mulhsu       s7, a2, a4
                  nop
                  xori         s4, s0, 371
                  divu         s8, t4, s1
                  ori          sp, s0, -762
                  mulhsu       s2, s1, s7
                  ori          s0, s9, 1642
                  srli         t6, t6, 23
                  srli         s5, s10, 29
                  sltu         s2, a3, a4
                  auipc        s11, 603968
                  sltiu        s2, t0, -1032
                  sltu         s1, a1, ra
                  sltu         t3, sp, s3
                  sll          s2, a7, s0
                  mul          a2, a6, s2
                  lui          t0, 117972
                  srai         s6, zero, 10
                  nop
                  ori          zero, s10, 1130
                  xori         s7, a2, 810
                  nop
                  add          s7, t1, t1
                  srli         s6, s6, 8
                  auipc        ra, 166267
                  div          a6, s2, t0
                  ori          t0, tp, 169
                  ori          s8, a1, -934
                  slti         s7, s6, 1665
                  or           s2, t1, t1
                  divu         ra, t1, s11
                  slli         s0, a3, 6
                  mulhu        a5, s3, t5
                  srli         a0, s1, 23
                  xori         a3, zero, 1160
                  xori         t0, s2, -1014
                  sltiu        a2, sp, -1261
                  auipc        a6, 691737
                  srai         s7, s4, 22
                  slli         t3, s6, 2
                  xor          s1, s4, tp
                  nop
                  andi         s1, t2, -1658
                  xor          t2, s2, tp
                  divu         a7, s6, s9
                  slti         s9, s6, -1391
                  mulh         s8, a4, s5
                  add          t0, s11, t0
                  div          a0, t6, t5
                  xori         a0, s0, -1706
                  mulhsu       s6, s10, ra
                  auipc        s9, 871119
                  add          a5, a4, zero
                  mulhsu       a0, s9, a3
                  divu         sp, s0, a3
                  div          gp, s8, zero
                  sub          a2, s3, t3
                  sub          s6, s4, t1
                  andi         t3, ra, -1954
                  sra          s11, s0, s11
                  slt          s2, s0, t0
                  addi         a5, s0, 544
                  sltiu        ra, t0, 275
                  slli         tp, ra, 14
                  sltiu        t0, t2, 880
                  add          a4, a0, s10
                  mulhu        a1, a1, s6
                  div          s5, zero, t6
                  xori         s0, sp, 2036
                  rem          a4, t4, a4
                  srli         t1, a7, 6
                  sltiu        s1, s0, 1315
                  nop
                  mulhu        a0, s0, a0
                  sltu         t6, s0, s8
                  nop
                  sll          zero, t4, tp
                  sll          t0, a1, a2
                  srli         zero, s4, 30
                  slti         s9, s0, 1372
                  lui          s2, 128588
                  rem          a7, t2, s10
                  addi         s8, a1, 1425
                  lui          a7, 380759
                  xor          a4, t4, t4
                  and          s6, s7, a0
                  slti         a6, gp, 1554
                  and          s6, s9, s3
                  add          t4, t0, s1
                  remu         s7, ra, t4
                  nop
                  mulh         a0, t5, s5
                  srli         t2, s5, 2
                  slti         s0, s0, 1684
                  rem          s4, s4, s5
                  xor          t3, a6, t0
                  srli         sp, a0, 3
                  addi         t2, a3, 669
                  or           a7, a2, s8
                  sub          s7, s7, t2
                  andi         t6, s1, -1697
                  xori         s1, s2, -1495
                  ori          s11, a7, -707
                  and          a1, s5, a2
                  slt          s7, s11, s5
                  xor          a3, ra, s4
                  sub          s5, zero, s6
                  and          s6, a3, a6
                  ori          a5, s1, -1771
                  sll          s8, a1, s9
                  slli         s11, s2, 7
                  andi         t1, zero, -736
                  remu         a1, a4, a6
                  divu         s9, s2, zero
                  div          tp, a5, a3
                  ori          t4, s0, 1958
                  mul          ra, t1, s8
                  sub          gp, a1, t2
                  srli         t2, s7, 26
                  sll          t0, s11, ra
                  remu         a1, s10, t2
                  andi         gp, s7, -536
                  mulhsu       s1, a3, a1
                  and          a4, s1, t4
                  nop
                  slli         t1, a5, 24
                  slti         gp, s7, 1655
                  sra          a3, s6, s8
                  slt          a5, s1, s2
                  and          s2, t4, a6
                  srli         s1, tp, 13
                  ori          s5, s4, 322
                  rem          ra, a6, tp
                  div          s2, gp, sp
                  sra          a7, a0, s6
                  xori         s6, tp, 1756
                  ori          a3, t0, -766
                  or           a1, s5, a5
                  mulhu        s4, s0, a4
                  lui          t6, 381724
                  sltu         s6, t1, a4
                  and          a4, s5, sp
                  slli         t2, t1, 4
                  andi         ra, s10, -331
                  slt          s5, s8, t3
                  srl          zero, a7, a7
                  and          s5, t2, t0
                  mul          a6, t1, s9
                  mulh         tp, a5, a6
                  slti         a0, a4, -1935
                  sltiu        t4, a4, 47
                  sub          tp, s3, t3
                  or           s2, gp, s7
                  sra          s11, s8, tp
                  srli         s5, s3, 27
                  remu         t2, a5, s1
                  nop
                  xori         a2, a1, -515
                  auipc        sp, 472158
                  mulh         s2, gp, a3
                  sra          sp, s7, s11
                  ori          s9, t3, -253
                  add          s2, tp, s3
                  ori          t4, t6, -2029
                  xori         a7, a7, -1316
                  mul          a1, s9, t1
                  mulh         t0, a2, a6
                  slti         gp, tp, 976
                  srli         gp, gp, 13
                  divu         s5, t4, a7
                  nop
                  mulhsu       a3, a5, a4
                  or           s11, a0, t1
                  or           a6, a1, zero
                  sra          sp, t0, s11
                  or           s1, s9, t1
                  xor          t1, s0, t0
                  remu         s8, s4, gp
                  nop
                  add          a7, a0, a0
                  slt          t4, ra, s10
                  nop
                  auipc        a6, 670573
                  srli         t3, tp, 13
                  mulh         a0, t6, a6
                  xor          t0, ra, a0
                  add          s7, t1, t0
                  slli         a5, s1, 20
                  slt          t0, t3, s6
                  nop
                  sltiu        a1, t0, -1393
                  and          zero, tp, s2
                  sltu         t1, gp, s10
                  sub          ra, s9, a7
                  mulhsu       a6, s7, s6
                  or           s5, t1, t5
                  lui          s11, 92077
                  mulhu        s11, t5, a2
                  remu         a3, s7, gp
                  rem          s0, a0, a6
                  add          t4, s1, s5
                  addi         t4, t5, 519
                  slli         t4, sp, 0
                  mulhsu       t2, s8, zero
                  mulhu        zero, s8, t0
                  slli         s8, t6, 12
                  srai         sp, zero, 11
                  srl          sp, t6, a1
                  nop
                  sra          a1, s5, s6
                  lui          t4, 606202
                  or           a7, a0, s10
                  slti         a4, t3, 910
                  and          tp, t2, s7
                  and          a6, a2, ra
                  mulhu        t4, a7, s8
                  sub          s11, s7, a2
                  andi         a3, s10, -1923
                  xor          a2, a2, a0
                  srai         a2, a6, 2
                  addi         t6, a0, 783
                  lui          s7, 666626
                  mulh         s6, t2, s8
                  slti         s0, t4, 1493
                  lui          zero, 1048107
                  slli         s2, t4, 6
                  lui          s7, 694498
                  slti         ra, zero, -1603
                  add          tp, t2, a2
                  srai         sp, s10, 22
                  andi         a2, zero, 1105
                  andi         tp, s11, 1951
                  sll          s11, a6, ra
                  div          t3, a3, ra
                  or           t6, t3, t0
                  srai         s0, s5, 26
                  xori         gp, s4, 1186
                  srai         s7, a7, 29
                  and          s8, a1, s1
                  slli         a3, s3, 31
                  ori          s4, ra, -1458
                  andi         sp, ra, 459
                  slli         s11, a7, 24
                  xor          s2, s5, s2
                  sltu         gp, zero, t1
                  add          s0, s9, t6
                  mulhu        s11, t3, a1
                  remu         tp, s6, a6
                  addi         s2, t6, -1335
                  mulh         s4, t4, t5
                  srl          s7, t1, s2
                  and          s0, a3, s6
                  slt          s6, t4, t0
                  xor          s11, s10, a3
                  sltiu        t6, s8, 1925
                  lui          s8, 318000
                  add          a5, a5, t0
                  or           s9, t6, t5
                  or           t6, s6, s10
                  addi         s11, sp, -1869
                  slt          s2, t5, tp
                  mulhsu       zero, gp, a5
                  andi         a4, s11, 1377
                  xor          t1, a2, t4
                  srli         s1, a2, 15
                  sll          t6, s9, tp
                  nop
                  sltu         s1, s7, t5
                  nop
                  sra          a6, sp, s11
                  slli         s2, t2, 10
                  slt          ra, a6, s0
                  sra          sp, ra, s4
                  sltu         tp, s11, s4
                  addi         s4, t0, 2041
                  mulhsu       s2, s11, a6
                  slt          s1, a4, t6
                  sltiu        a3, s4, -1210
                  slli         s9, t2, 22
                  srli         a4, s6, 11
                  add          tp, tp, s10
                  remu         t2, s9, a6
                  mulh         sp, a3, s4
                  auipc        a4, 986294
                  and          s4, a3, t1
                  auipc        s11, 553676
                  sltiu        a0, s7, 1569
                  rem          s1, ra, a5
                  add          zero, t3, s9
                  rem          t6, s6, zero
                  sub          s7, zero, ra
                  ori          tp, s2, 1185
                  slt          s11, s4, s0
                  slli         s11, a0, 9
                  ori          t0, a5, 106
                  slti         t4, s7, 1161
                  sltu         s6, s3, a4
                  sra          s6, t2, a3
                  mulhu        s8, s2, t4
                  and          s0, t2, s5
                  sltiu        t6, s2, 1213
                  sltiu        s9, ra, 518
                  remu         a7, t2, zero
                  divu         ra, s4, t1
                  sltu         s1, s2, a4
                  mulh         t6, t5, s3
                  sra          a0, a6, t5
                  xori         s7, s11, 658
                  addi         t0, s8, -881
                  andi         a7, s10, -877
                  slli         s4, tp, 2
                  slli         a7, s9, 13
                  mul          s7, tp, s5
                  nop
                  xor          s7, t6, ra
                  lui          sp, 489622
                  addi         s1, s8, -1355
                  sub          s2, a5, t6
                  mulh         a1, t5, a5
                  srl          t4, zero, s4
                  sltiu        s11, tp, -813
                  srai         gp, s4, 25
                  xori         a1, s3, -892
                  nop
                  slli         a3, s1, 11
                  srl          s5, a7, tp
                  divu         a0, s3, s0
                  slti         t2, s1, 404
                  xori         s2, a7, 2019
                  srl          s11, a2, sp
                  addi         a6, s1, 629
                  addi         s4, s1, -408
                  srli         s2, s3, 30
                  rem          s2, t5, t6
                  add          t1, s3, t3
                  andi         s7, s1, -798
                  xor          s6, s10, t2
                  mulhsu       s11, a7, s5
                  remu         a2, t0, a6
                  mul          t3, t6, s2
                  add          a6, s3, sp
                  slli         s9, a3, 2
                  add          t2, a7, s0
                  mulhsu       s2, a2, s7
                  and          s2, s7, s6
                  sltu         a1, s10, a6
                  rem          t4, t0, t6
                  mulh         t1, tp, a7
                  slt          zero, t0, s5
                  addi         s5, zero, -1129
                  srli         a5, s9, 15
                  slt          s11, ra, s3
                  sub          s2, a2, s7
                  xori         s11, zero, -642
                  add          s7, a2, tp
                  and          a6, s2, sp
                  ori          s11, s9, 1766
                  add          a7, s9, ra
                  add          a2, s5, s6
                  nop
                  lui          gp, 330243
                  andi         s4, a5, -144
                  slt          a6, a6, gp
                  andi         s2, t0, -1594
                  or           t4, s7, a0
                  sltu         s9, sp, s11
                  slli         s6, sp, 5
                  mulhsu       a3, t0, a0
                  slti         a6, s6, -1456
                  sra          a3, a7, a2
                  sub          tp, ra, a7
                  addi         s7, a0, 1205
                  sub          tp, s11, gp
                  sltiu        sp, a1, 1247
                  divu         a3, s4, t4
                  slli         t0, a2, 7
                  and          gp, s0, s10
                  srai         s6, t6, 26
                  remu         s9, gp, a4
                  andi         s0, a5, -1355
                  xor          s0, s2, s5
                  sltiu        tp, a5, -1997
                  or           a6, s8, t4
                  nop
                  mulhsu       s0, zero, zero
                  xori         s1, s3, 353
                  div          s2, t5, t4
                  srai         s9, t3, 16
                  mul          s8, s6, s8
                  slli         s0, t2, 22
                  slti         s11, a2, -61
                  mulhu        s11, s4, t1
                  remu         s7, s2, s1
                  srli         a3, t0, 8
                  sll          s8, t2, t4
                  ori          t3, s10, -94
                  xori         a2, a0, -1921
                  mul          sp, s6, a4
                  auipc        zero, 484735
                  slt          a3, s5, s8
                  addi         a0, s9, 1105
                  mulh         s7, s2, a5
                  ori          s4, s2, -1280
                  auipc        t6, 416797
                  mul          s9, zero, a1
                  xor          t4, s9, s3
                  div          s11, zero, t3
                  slt          zero, gp, s1
                  and          s9, s11, t3
                  divu         a7, s3, a2
                  xori         t2, ra, 1307
                  xori         a6, s7, 394
                  lui          a3, 558079
                  div          s4, zero, zero
                  srl          s9, s4, a4
                  slt          ra, ra, s5
                  and          a5, s7, s0
                  sll          s6, t1, a3
                  nop
                  div          zero, a5, a6
                  mul          t6, zero, t5
                  or           t4, a4, s8
                  lui          s0, 574690
                  sra          s1, s9, a1
                  sra          t0, a0, a3
                  addi         t3, sp, -282
                  mulh         a1, s7, a3
                  mulhsu       s5, gp, s11
                  mul          a5, a3, a7
                  andi         s9, s5, 508
                  srli         s6, s10, 10
                  mulhsu       ra, ra, a7
                  mulhsu       gp, a1, t6
                  slli         t3, t6, 1
                  or           s5, a4, s11
                  xori         a5, s10, -992
                  mulhsu       a2, t3, a3
                  slti         s2, a6, -1843
                  and          s7, s11, t0
                  sra          s11, s3, s8
                  sub          a1, s5, zero
                  andi         t2, t0, -1469
                  slt          a6, gp, a3
                  or           s11, gp, a7
                  sltiu        a5, a7, -1404
                  srl          a7, s9, t2
                  srai         a7, t5, 22
                  add          a1, s0, a6
                  mulhu        t6, a0, a5
                  slti         t1, s9, 750
                  rem          s7, s6, a7
                  sll          t6, gp, t6
                  and          t1, s9, t5
                  add          t1, a3, t2
                  auipc        t0, 187991
                  sltiu        zero, a0, 943
                  srl          s1, a4, gp
                  sra          a5, s0, a2
                  srli         s11, ra, 25
                  sub          gp, s6, s2
                  sra          gp, t0, s10
                  nop
                  and          a6, s2, t4
                  remu         a5, s5, a4
                  remu         t0, t2, a1
                  nop
                  divu         a7, s1, a1
                  nop
                  sub          zero, t1, s11
                  rem          a7, s7, t5
                  srl          s9, s10, t0
                  mul          t6, a4, a5
                  slt          t1, gp, s5
                  srli         gp, s8, 7
                  andi         gp, ra, 958
                  remu         a0, s7, s7
                  sltu         t6, s2, sp
                  srai         gp, a0, 23
                  sll          s1, tp, a7
                  nop
                  lui          s6, 954302
                  remu         t3, ra, t4
                  remu         gp, s0, t5
                  slli         a1, s2, 13
                  xori         s5, t2, -448
                  sll          t0, tp, a5
                  slti         a3, s1, 1594
                  slt          s2, a7, a6
                  slt          s7, a5, s2
                  divu         s4, s3, s6
                  srli         t4, sp, 28
                  mulhsu       s8, t6, s2
                  div          s4, t4, a7
                  sub          tp, s9, a1
                  remu         s0, ra, t4
                  sll          t1, a2, s4
                  div          s6, ra, s11
                  and          s7, s9, s7
                  divu         gp, a4, s4
                  divu         t4, s9, t3
                  ori          tp, a5, 537
                  mul          t1, a7, s11
                  srl          t1, s5, s5
                  sltiu        s9, a0, -1299
                  mul          s5, s10, a1
                  add          t2, a6, t3
                  xori         t1, gp, -1871
                  divu         s1, a2, a3
                  sltiu        s8, zero, -1617
                  nop
                  srl          a6, a2, tp
                  srl          zero, gp, gp
                  addi         s6, s3, 788
                  xor          a4, a0, t4
                  xor          a7, gp, t0
                  sltiu        t6, zero, -648
                  xor          tp, s0, s10
                  slt          s2, s2, a6
                  sltu         s7, t2, s7
                  sll          t6, s4, t5
                  sll          t6, a7, t0
                  ori          s6, t0, 1732
                  sltu         a6, tp, t6
                  slli         s4, gp, 20
                  add          a1, a3, s3
                  sll          tp, zero, s8
                  sltiu        ra, a6, 463
                  ori          s7, t2, -1165
                  div          s11, a7, a6
                  mulhsu       t2, s4, a2
                  sra          s2, s2, s10
                  sltu         t4, a1, s8
                  srli         a0, a4, 19
                  xori         a4, a6, -809
                  mul          s6, s0, s3
                  remu         s5, a7, s0
                  div          t6, a0, s6
                  remu         s11, a5, s6
                  rem          a1, s3, t1
                  slt          t4, s6, a4
                  mulh         t6, s0, s3
                  divu         s8, s6, a5
                  xori         gp, t2, 1468
                  and          ra, a4, a7
                  divu         s6, t1, t2
                  rem          s9, a0, zero
                  slt          s5, a2, a5
                  slli         s11, t3, 29
                  and          a7, s2, a6
                  div          t6, t2, s0
                  mul          t0, s9, sp
                  slli         s1, s2, 3
                  addi         zero, s1, 276
                  srai         a2, s3, 22
                  mulhu        a5, s0, a1
                  slt          a4, tp, a3
                  andi         s8, s11, 1105
                  andi         sp, s0, -999
                  mulhu        a1, a0, s6
                  div          t6, a4, a7
                  remu         s4, a0, a3
                  lui          s11, 657747
                  mul          s6, t4, s3
                  rem          a7, t3, s6
                  or           s1, s0, t0
                  slli         a3, a6, 21
                  rem          a0, t6, s11
                  auipc        sp, 219355
                  add          t2, a7, t6
                  mulhsu       s4, s7, sp
                  divu         a7, s0, s1
                  slt          s5, s5, a0
                  xor          sp, t6, a3
                  xor          s4, a3, s10
                  divu         s7, a3, a3
                  or           ra, tp, a3
                  xori         t3, s7, 1187
                  srl          sp, a0, a6
                  xor          t2, a0, t2
                  xor          s2, s7, s10
                  mul          t1, a4, a7
                  ori          ra, a3, -649
                  srai         a4, t4, 18
                  slti         s6, t0, -171
                  auipc        s9, 551129
                  mulhu        t3, zero, s5
                  divu         s7, s5, s0
                  auipc        s1, 367320
                  mulh         t4, s1, sp
                  slti         s1, a3, 2035
                  sltiu        t4, a5, 1684
                  xor          s8, zero, s6
                  mul          t2, s8, zero
                  andi         s5, s7, 357
                  srai         a7, s3, 24
                  sltu         sp, sp, zero
                  sra          t1, s8, a3
                  sltiu        s7, s4, 295
                  add          gp, a1, gp
                  srai         t3, s9, 19
                  andi         t0, t5, -1293
                  mulhu        a4, a1, s8
                  sltiu        a6, gp, -1406
                  andi         ra, s9, 1610
                  mul          s6, s0, s11
                  rem          s9, s0, a3
                  addi         ra, sp, -481
                  rem          s11, t5, a0
                  andi         tp, a7, 1987
                  auipc        s4, 868143
                  xor          t2, s3, t2
                  lui          a5, 751280
                  sltu         s7, s10, a0
                  auipc        s8, 744971
                  or           t3, a1, s0
                  rem          t3, ra, t6
                  or           s7, a3, a2
                  sll          a0, t4, a3
                  nop
                  or           a3, s8, a3
                  sub          zero, ra, s10
                  remu         t0, t6, a2
                  sltu         t2, gp, a1
                  or           tp, s10, s0
                  srai         s5, sp, 23
                  div          s9, t3, a7
                  xor          a2, a4, t0
                  slli         t3, t3, 4
                  add          s0, s10, s2
                  slli         s11, a0, 15
                  sll          s1, t5, s8
                  srai         a1, t3, 18
                  srli         s5, s6, 27
                  andi         a6, a6, 449
                  sll          a3, t3, t2
                  mulhsu       t1, s2, s8
                  auipc        s8, 963226
                  lui          s2, 430670
                  xori         a2, zero, -615
                  sltu         t4, a3, s3
                  mulhu        s5, t6, s7
                  div          s9, s8, a7
                  srai         s11, a4, 1
                  remu         s2, s4, tp
                  andi         t1, s2, 2003
                  slli         t2, sp, 8
                  mul          s4, s10, t0
                  andi         s2, t3, -1470
                  slli         a1, s10, 25
                  auipc        s7, 520967
                  addi         s7, t4, 1356
                  mul          t1, ra, ra
                  xor          a0, s6, t6
                  andi         s6, t5, 6
                  sll          sp, s11, s7
                  sra          a7, s10, a7
                  mul          zero, s3, zero
                  sltiu        t1, s0, -1399
                  ori          s7, a7, 1369
                  srli         a3, t5, 24
                  la x26, test_done
                  jalr x0, x26, 0
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
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x30, x30, -4
                  sw  x19, (x30)
                  add x19, x30, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x30, x19, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x22, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x22, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x22, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x22, x18, ecall_handler
                  li x18, 0x1
                  beq x22, x18, instr_fault_handler
                  li x18, 0x5
                  beq x22, x18, load_fault_handler
                  li x18, 0x7
                  beq x22, x18, store_fault_handler
                  li x18, 0xc
                  beq x22, x18, pt_fault_handler
                  li x18, 0xd
                  beq x22, x18, pt_fault_handler
                  li x18, 0xf
                  beq x22, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

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
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x19, x30, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x30, x19, zero
                  lw  x19, (x30)
                  addi x30, x30, 4
                  mret

load_fault_handler:
                  add x19, x30, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x30, x19, zero
                  lw  x19, (x30)
                  addi x30, x30, 4
                  mret

store_fault_handler:
                  add x19, x30, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x30, x19, zero
                  lw  x19, (x30)
                  addi x30, x30, 4
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x19, x30, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x30, x19, zero
                  lw  x19, (x30)
                  addi x30, x30, 4
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x19, x30, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x30, x19, zero
                  lw  x19, (x30)
                  addi x30, x30, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x19, x30, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x30, x19, zero
                  lw  x19, (x30)
                  addi x30, x30, 4
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
