.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x7, 0x40001104
                  csrw 0x301, x7
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  li x7, 0x0
                  csrw 0x304, x7 # MIE
                  mret
init:             
                  li x0, 0xf7e97d6f
                  li x1, 0x8
                  li x2, 0x7
                  li x3, 0x80000000
                  li x4, 0xf
                  li x5, 0x5fa98fcf
                  li x6, 0x0
                  li x7, 0xfb1c6c36
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x76f331e
                  li x11, 0xf4c79829
                  li x12, 0xa
                  li x13, 0x9
                  li x15, 0x0
                  li x17, 0x2
                  li x18, 0xb0c4e471
                  li x19, 0x1f4a2f4e
                  li x20, 0x80000000
                  li x21, 0xff7323fe
                  li x22, 0xf0f7ce61
                  li x23, 0xf61983ac
                  li x24, 0xa
                  li x25, 0xf47fa328
                  li x26, 0x80000000
                  li x27, 0x7
                  li x28, 0x9
                  li x29, 0x81970413
                  li x30, 0xa4f7714
                  li x31, 0xb
                  la x16, user_stack_end
main:             remu         tp, s9, a1
                  mulhsu       s1, t6, s3
                  mulhsu       a5, sp, s3
                  sra          a1, sp, t5
                  sll          s4, s2, a2
                  or           s8, a2, s11
                  srl          s3, ra, s11
                  nop
                  slt          a2, s0, zero
                  sltu         t0, s5, a3
                  mulh         a3, t1, a6
                  srl          s10, s0, a2
                  slt          a2, s5, a7
                  xor          s2, gp, t5
                  auipc        zero, 908942
                  sub          a3, tp, t1
                  remu         t1, s0, sp
                  mulhsu       s9, s2, s3
                  xori         a0, t1, -1315
                  andi         s5, tp, -2
                  mul          s9, s3, sp
                  nop
                  sltu         t2, s4, a3
                  slti         s0, a5, 282
                  srl          tp, ra, s8
                  mul          s6, s0, s6
                  remu         s10, s4, s3
                  nop
                  or           a2, s8, t4
                  xor          t6, sp, t0
                  sll          s3, ra, s6
                  sltiu        gp, t6, -61
                  divu         s6, zero, gp
                  or           t2, t5, s8
                  remu         t0, a6, a3
                  nop
                  slli         s6, s7, 23
                  divu         s7, t5, t1
                  or           a7, a3, a4
                  sltu         t6, tp, ra
                  sltiu        zero, a2, 173
                  mul          t6, s1, a1
                  and          s2, a2, t6
                  auipc        t3, 213420
                  sltiu        s7, s6, -156
                  srai         s10, s11, 31
                  or           s7, t3, s8
                  divu         t6, t6, zero
                  slli         t0, sp, 22
                  divu         s2, sp, s7
                  sll          s3, s11, t0
                  slli         s0, t5, 25
                  rem          a2, sp, t4
                  addi         sp, s8, 687
                  srl          s2, ra, s7
                  srai         s5, t0, 15
                  divu         a1, s3, a4
                  and          s5, a5, a0
                  slt          a5, a2, a2
                  xor          s10, s8, t6
                  or           s10, s11, a3
                  rem          s10, t5, s5
                  slli         a1, a0, 14
                  div          t6, s10, s6
                  srl          t6, s11, a3
                  auipc        s4, 397443
                  sltiu        a7, t0, -1002
                  mulhu        zero, t6, t4
                  xor          a3, zero, t1
                  sra          s6, s3, s11
                  auipc        t2, 15327
                  or           t0, gp, zero
                  srai         s10, s0, 18
                  auipc        s9, 835035
                  andi         s9, s2, 613
                  sltu         t6, t5, a7
                  remu         s0, s10, t3
                  sltiu        t0, s9, -1750
                  add          t6, a3, t0
                  xor          t3, t0, s4
                  lui          a5, 837862
                  mul          s3, gp, t6
                  rem          s8, s1, a3
                  and          s6, s0, tp
                  auipc        s9, 618143
                  auipc        a5, 774395
                  remu         s3, s0, t6
                  sltu         s1, s6, a7
                  xori         s1, t0, -1897
                  rem          a1, s1, s9
                  sltiu        t3, a6, 272
                  srai         ra, tp, 24
                  nop
                  div          t6, t6, a7
                  add          s10, s11, a6
                  srli         a2, t6, 19
                  xori         t0, s6, -1891
                  lui          t1, 207909
                  div          gp, tp, s1
                  lui          a3, 792448
                  addi         tp, s1, 100
                  add          t1, tp, a7
                  add          a7, a1, s3
                  andi         s6, zero, 300
                  sltu         s9, sp, a7
                  ori          s8, a2, -1326
                  rem          t1, t1, t2
                  mul          t1, s9, s0
                  srli         t2, zero, 27
                  or           t1, s7, a7
                  sra          s3, s9, ra
                  slti         s10, a5, -447
                  rem          s9, s2, a2
                  srai         t4, t4, 3
                  mulhsu       s5, t0, a7
                  slt          t6, t2, t3
                  slti         s7, s10, 1397
                  ori          s5, s1, 1958
                  sll          s1, ra, sp
                  divu         t0, ra, zero
                  sub          a0, s3, a2
                  and          s3, s6, a7
                  mul          t0, t6, s1
                  divu         s1, gp, a3
                  addi         s2, gp, -1146
                  sra          s6, a1, t2
                  mulhu        t0, sp, s4
                  xori         zero, t0, -502
                  srli         s10, a3, 16
                  slli         tp, t4, 10
                  mulhsu       t3, s10, a7
                  xori         s1, ra, -787
                  auipc        t3, 1014095
                  ori          a0, sp, 636
                  sltiu        a1, t3, -1843
                  sub          s10, t6, a6
                  lui          a1, 759317
                  add          s6, s9, gp
                  sll          s9, gp, s6
                  divu         s9, s10, t5
                  sub          t0, ra, s10
                  slti         sp, a2, 727
                  add          s4, a7, s9
                  and          s1, s2, s3
                  lui          t5, 860681
                  mulh         ra, s0, t6
                  xor          s2, a6, s8
                  sub          s10, s9, s11
                  slti         s9, a4, 1769
                  lui          t5, 732080
                  srl          s3, s2, s7
                  mulhsu       s6, s3, a5
                  mulhsu       t3, sp, zero
                  slt          t6, a5, s5
                  mulhsu       t5, s5, s11
                  rem          a0, t6, s0
                  ori          gp, t1, 1178
                  mulhu        a1, s4, a5
                  div          s0, s10, t2
                  xor          s0, s2, s0
                  and          s5, s9, a7
                  remu         s9, ra, a1
                  mulh         gp, tp, a3
                  nop
                  sra          sp, s9, s2
                  sra          s10, t5, t3
                  slti         t5, gp, -48
                  slti         s4, t2, -870
                  rem          s3, s8, s1
                  and          gp, t0, s0
                  sra          s4, s5, s4
                  mul          s3, s6, a0
                  srl          sp, a6, tp
                  remu         a3, a0, s0
                  srl          s4, t3, a6
                  slt          ra, a2, t4
                  divu         s9, s4, t6
                  auipc        a7, 53483
                  add          t0, s0, s11
                  divu         a3, a3, t0
                  mulhu        a7, gp, a5
                  add          s3, sp, a7
                  nop
                  srli         s3, tp, 27
                  srl          s8, t1, ra
                  remu         s2, s6, a3
                  mulhsu       t4, zero, s11
                  auipc        s3, 374859
                  sra          s9, t6, t3
                  auipc        a2, 695221
                  andi         s9, s8, 221
                  slt          s3, s10, s11
                  sra          sp, t1, s7
                  sltu         s8, s5, t0
                  or           s4, s9, t0
                  addi         a0, a7, 1423
                  divu         sp, a0, zero
                  div          s3, a7, a2
                  srai         s10, t1, 20
                  sra          s5, t2, t3
                  slt          sp, s7, a4
                  mul          s5, a5, s10
                  slli         s10, s8, 24
                  and          a5, tp, a1
                  sub          s2, s3, zero
                  sub          a2, gp, a4
                  divu         a2, a7, t5
                  div          a7, t4, a5
                  sltiu        s2, t2, 359
                  sltu         a7, sp, a7
                  remu         a5, s10, t2
                  mulhu        t5, s11, zero
                  and          t6, t0, a0
                  rem          zero, a6, s10
                  sub          s0, s3, s11
                  auipc        t1, 549793
                  mulhu        s10, s8, a0
                  sltiu        s2, t0, 1849
                  and          t6, s3, a6
                  rem          t1, t0, a6
                  div          t1, t2, s8
                  div          s4, t6, s10
                  srai         zero, s9, 0
                  or           s10, s1, s6
                  and          gp, t0, a6
                  rem          s5, s7, s0
                  andi         ra, s5, -683
                  or           a5, a2, a0
                  xori         t2, s7, 1339
                  xori         t5, zero, -1213
                  add          s7, a3, s1
                  slti         a0, s2, 836
                  addi         gp, gp, 500
                  mul          s5, s8, a6
                  slli         a3, s7, 7
                  remu         a2, s9, a7
                  add          zero, sp, s6
                  remu         t5, s5, a0
                  sltu         t2, a3, a2
                  sra          t4, t1, t2
                  srai         s8, t0, 19
                  slti         t3, sp, 761
                  srli         t5, s6, 29
                  mulhu        t5, s0, zero
                  and          t0, a2, a1
                  xor          s10, s4, tp
                  remu         t3, s3, t1
                  ori          s7, ra, 1207
                  slti         sp, s0, -869
                  srli         zero, s1, 24
                  mulh         t2, t6, t1
                  andi         t1, sp, -66
                  sll          s1, tp, t5
                  sll          gp, a5, t1
                  sltiu        ra, s0, 50
                  sub          t6, s10, a2
                  srl          zero, a2, a1
                  srli         t2, t6, 1
                  sra          s5, sp, t5
                  ori          ra, a5, -2023
                  remu         s1, t0, s5
                  mulhsu       s2, s1, s2
                  mul          t5, t2, a6
                  lui          s3, 62756
                  rem          t3, s7, s3
                  div          s3, s11, s11
                  or           s7, s0, a3
                  mulhu        s5, ra, s5
                  ori          s2, s10, 868
                  xor          s10, s10, tp
                  auipc        sp, 403866
                  divu         t4, a3, s8
                  mul          s0, a1, a1
                  srai         a3, t2, 2
                  mulhsu       s5, a3, s4
                  nop
                  sub          s7, s11, s9
                  mulh         s10, sp, a3
                  or           t1, t6, a2
                  or           s1, t4, t1
                  divu         s6, s9, t4
                  xori         a1, a1, 1089
                  auipc        a1, 307008
                  mulhu        s0, s11, s11
                  mulh         a1, ra, t2
                  auipc        zero, 615871
                  srli         s5, a7, 6
                  div          s10, gp, s5
                  srl          s8, ra, t6
                  mulh         zero, t6, zero
                  xori         s10, s0, 1587
                  addi         a7, a2, -734
                  mulhsu       a3, s5, t0
                  slt          a2, s3, a0
                  srl          s8, ra, s0
                  srli         s9, s8, 24
                  srl          s3, s0, gp
                  or           sp, s4, a1
                  auipc        a5, 414545
                  srl          s2, t1, a0
                  div          s2, s9, t0
                  divu         s2, s1, t2
                  andi         a2, s9, -1338
                  remu         zero, ra, t3
                  sltu         s6, a1, t4
                  mulh         s5, s4, s0
                  andi         s8, s5, -1832
                  lui          s6, 557688
                  srai         s10, t2, 21
                  mulh         t2, a7, s10
                  mul          s4, s9, a3
                  div          s7, t1, tp
                  srl          a3, s9, t2
                  remu         s2, s6, a7
                  mulh         s3, tp, ra
                  or           t5, a2, t3
                  mulhsu       s7, s9, a6
                  xor          sp, a3, s3
                  sltiu        a0, zero, 990
                  ori          s3, t6, 1103
                  sub          t1, a4, s2
                  slti         zero, a6, -420
                  remu         t5, a1, s8
                  srai         s8, s9, 30
                  srli         s3, s9, 18
                  sll          s2, s2, a5
                  sub          t1, s5, a0
                  slli         sp, t1, 25
                  auipc        a2, 214535
                  mulhu        a2, s1, s6
                  mulh         t5, s10, t6
                  srli         a1, s2, 15
                  auipc        a3, 180905
                  nop
                  auipc        t3, 692754
                  mulh         t4, t4, tp
                  mulh         a2, gp, s2
                  rem          s4, t0, t6
                  addi         s4, a1, 1827
                  ori          t1, sp, 1141
                  mulhu        s3, s1, tp
                  mulhu        tp, t5, s8
                  sltu         s2, t3, s4
                  div          a1, s11, s10
                  sra          t5, a4, a1
                  sra          a1, s11, zero
                  divu         s10, t0, s8
                  mul          s6, s9, zero
                  divu         a3, tp, s2
                  srli         s4, a1, 23
                  addi         t3, sp, -1715
                  lui          t5, 499114
                  slt          gp, s0, t4
                  sra          s8, s7, a4
                  sra          s8, a0, s5
                  lui          a0, 123120
                  srli         s4, t3, 14
                  srli         zero, ra, 9
                  ori          a2, s10, 1414
                  nop
                  auipc        t2, 1014038
                  auipc        t3, 22312
                  xor          a1, a1, ra
                  ori          s10, t0, 42
                  mulhu        s2, a6, gp
                  srli         s8, a7, 8
                  srl          s5, s9, a3
                  lui          s5, 278448
                  srli         t5, gp, 8
                  srl          a0, t1, s6
                  add          zero, a6, a6
                  and          t1, s6, s0
                  srai         t3, gp, 31
                  mulhu        a1, a0, s8
                  sltu         s3, a5, s1
                  lui          a3, 421846
                  nop
                  andi         a7, a7, -128
                  sub          zero, s0, a3
                  slli         sp, s7, 19
                  mul          t1, a2, s6
                  slt          t6, a5, t0
                  mulhsu       s9, s5, t4
                  rem          sp, s7, s3
                  or           s4, a5, t6
                  sltiu        s10, a5, 1116
                  srai         t6, s1, 30
                  sra          s8, a4, s2
                  srai         a7, s4, 29
                  or           a2, a2, a7
                  srli         s5, a2, 0
                  srai         s9, sp, 29
                  xori         s4, s8, -1304
                  and          t0, s1, gp
                  or           s9, a0, s9
                  divu         a5, t0, a1
                  mulhsu       zero, s2, a1
                  srli         t3, s6, 12
                  lui          s3, 897641
                  mul          a5, s5, t0
                  rem          a2, t0, s11
                  lui          s7, 835221
                  or           a0, s10, s8
                  sll          t4, t1, a5
                  slli         t2, t2, 17
                  sub          a1, t5, a3
                  sltiu        s4, s1, 811
                  div          a5, a2, sp
                  divu         a2, t4, s2
                  srl          s8, t3, s6
                  remu         zero, s4, s11
                  sra          s5, s10, a2
                  slli         t5, a6, 31
                  sltu         t2, tp, gp
                  sub          ra, s7, a0
                  xori         s2, a6, 1425
                  addi         s10, t3, -249
                  divu         a0, s6, tp
                  sltiu        a1, tp, 291
                  slti         s3, a7, -853
                  divu         s0, s0, s8
                  rem          t5, s2, t3
                  srli         s7, s10, 27
                  xori         s2, gp, -348
                  lui          t5, 545814
                  mulhu        t3, s3, s5
                  add          a7, s0, a4
                  sltu         s3, s7, t4
                  remu         s2, sp, t3
                  sub          gp, a7, zero
                  xor          s2, s0, s4
                  divu         a7, gp, s2
                  rem          s6, t5, t0
                  sltu         s8, s9, s9
                  mul          a2, s2, a2
                  add          t2, s2, s10
                  mulhu        a7, s4, a2
                  sltiu        t5, a7, 92
                  auipc        s5, 703032
                  lui          s2, 975353
                  xori         s0, ra, 210
                  mulhsu       a7, s3, s3
                  ori          t6, s0, -1941
                  div          t5, a2, t5
                  xor          s8, s6, t1
                  sra          t0, t2, t4
                  sll          t1, s2, zero
                  sub          s2, t6, s7
                  mulh         s5, t2, ra
                  sub          gp, t3, s1
                  sltu         s5, a6, a0
                  xori         a7, s11, -2030
                  slti         a3, a5, -159
                  remu         a7, s2, s7
                  mulh         a1, t3, t1
                  mulhu        t4, s1, s6
                  mulhu        s8, s5, s9
                  xor          t1, s2, s5
                  sub          a0, gp, zero
                  sll          s6, a0, gp
                  xor          ra, s1, s0
                  mulhu        s5, s8, s8
                  div          s7, gp, t0
                  mulh         t0, s0, a7
                  srl          a0, s3, t4
                  auipc        s6, 976789
                  divu         a3, a0, t4
                  or           s0, a6, sp
                  mulhsu       t6, a3, t5
                  sra          s2, ra, a7
                  mulhsu       a5, a7, s5
                  rem          a0, a1, gp
                  xor          tp, tp, s11
                  srli         zero, s9, 9
                  sltiu        t4, t2, 384
                  mulhsu       s2, s2, s0
                  mulh         ra, tp, a7
                  slli         s10, sp, 4
                  divu         s2, t3, s1
                  xori         s1, gp, 448
                  slti         t1, s9, 1934
                  auipc        a0, 168468
                  sub          s1, a7, t0
                  auipc        s10, 340673
                  srai         s5, s1, 9
                  sra          a3, tp, a4
                  slt          a2, t0, a7
                  mulh         a0, s3, zero
                  mulhu        t1, a4, a5
                  sub          zero, s11, t4
                  lui          a5, 846817
                  sra          a5, s9, a1
                  sll          a7, sp, a0
                  div          t5, s8, t3
                  and          a5, a4, a3
                  slli         a0, t4, 22
                  slti         a5, t2, -610
                  xori         a2, ra, 1237
                  mul          s4, s10, a5
                  addi         s3, a6, -803
                  xor          s8, s7, s4
                  auipc        s1, 575826
                  slli         s3, s10, 2
                  andi         t2, s10, 1371
                  sltu         a2, zero, a6
                  rem          s2, s0, t5
                  sltiu        t0, t0, -2013
                  mulh         s4, sp, a5
                  srl          s3, s8, t0
                  remu         s4, s7, t6
                  sltu         zero, s8, t5
                  slt          t5, s11, a1
                  and          a0, tp, s6
                  srai         s4, a7, 1
                  ori          t6, a2, -157
                  and          s4, a3, tp
                  auipc        t3, 7730
                  mulhsu       s7, a5, gp
                  lui          t3, 884787
                  sra          t5, tp, t5
                  srai         t6, s9, 8
                  add          a5, zero, s4
                  nop
                  add          s5, t4, a6
                  sra          a2, t1, ra
                  srl          zero, a1, t0
                  nop
                  sub          a1, s3, t0
                  srl          s0, t5, t3
                  xor          ra, a4, s0
                  or           s0, a5, t6
                  slti         t1, t4, 755
                  sll          s1, s0, a2
                  sll          s1, t1, s10
                  addi         t3, s2, 415
                  nop
                  div          s10, s7, a6
                  srai         t6, s10, 14
                  div          s10, s10, a3
                  ori          s0, s5, -761
                  nop
                  andi         s1, s10, 211
                  srai         a0, t1, 18
                  divu         t5, t3, t5
                  sra          s1, s10, s4
                  mulhsu       t6, t4, s10
                  remu         s0, t2, s1
                  srli         t4, t1, 12
                  auipc        s4, 457348
                  slt          a3, a1, s5
                  slt          s9, s1, s10
                  sltu         s6, a5, t3
                  add          a5, s6, s1
                  srai         tp, t4, 2
                  remu         s5, a0, ra
                  mulhsu       a7, s1, s7
                  slti         tp, a4, -1761
                  mulhsu       s9, s3, a2
                  mul          s4, ra, s3
                  xori         a5, ra, 531
                  xor          t2, t0, t2
                  xor          t4, t6, s9
                  mul          a7, s4, ra
                  srl          a1, s3, s3
                  srli         s4, s0, 14
                  slt          t3, zero, zero
                  andi         t6, s8, 1363
                  or           ra, tp, s11
                  slti         a1, tp, 917
                  andi         gp, s7, -1781
                  slli         sp, s8, 5
                  mulhsu       s3, a4, t6
                  sltu         s3, s11, s2
                  mulh         ra, t1, s11
                  srli         s1, t3, 24
                  auipc        a3, 459887
                  nop
                  xor          a7, a7, t0
                  sub          s10, s5, a4
                  slti         s2, a1, 260
                  or           t4, zero, s8
                  sltiu        s8, s5, -1613
                  or           a7, zero, s5
                  or           s9, s2, s6
                  mul          s7, s7, tp
                  addi         s1, t0, 1080
                  slt          a5, t3, s9
                  remu         a5, s5, t2
                  mulhsu       ra, a5, s8
                  lui          ra, 632187
                  remu         t0, zero, s1
                  mulhu        t0, s11, a0
                  sub          t6, s3, gp
                  ori          s1, a3, 193
                  div          a0, gp, s2
                  srai         a0, s0, 0
                  slli         ra, t5, 20
                  sltiu        s4, a1, -374
                  andi         s6, t2, 865
                  srl          s6, t2, a7
                  mul          s8, t2, a1
                  sra          s6, a7, a6
                  divu         s2, s9, s3
                  slt          t0, s6, ra
                  srai         tp, s6, 19
                  mulhu        zero, s1, s6
                  remu         a7, s3, ra
                  remu         a7, s6, sp
                  mulh         s4, s5, zero
                  addi         zero, s5, -1906
                  xor          s4, s7, t4
                  andi         s1, s5, -113
                  div          t2, s11, s8
                  and          sp, t5, a0
                  mul          s4, s7, gp
                  addi         sp, s10, -764
                  remu         zero, s4, s9
                  and          zero, a3, s4
                  div          s3, a1, s4
                  remu         s7, a2, a6
                  rem          s1, s10, s2
                  xori         t2, tp, 85
                  auipc        s9, 739035
                  mulhsu       gp, a7, s10
                  sltu         t4, a6, a4
                  mulh         zero, s4, s5
                  add          t1, a0, s5
                  sll          s10, s6, s4
                  lui          t2, 160168
                  sra          a7, a3, ra
                  xori         zero, s5, -1485
                  srli         a7, a3, 22
                  andi         t5, zero, -1421
                  lui          a7, 108243
                  slti         t1, a3, 1195
                  srl          s6, s6, t3
                  add          s4, t0, s5
                  auipc        s9, 21176
                  srli         a0, t6, 3
                  xor          s4, s9, sp
                  sll          s0, s7, s9
                  slti         t3, s3, -99
                  remu         a2, a6, s10
                  divu         t2, a0, a2
                  sltiu        tp, s4, 139
                  addi         s9, ra, -180
                  nop
                  ori          s8, t0, 179
                  nop
                  sll          s4, s8, ra
                  and          ra, gp, s3
                  addi         a0, a3, -56
                  auipc        zero, 304724
                  rem          t2, s5, t6
                  sltiu        s9, t0, -300
                  addi         t0, s7, 268
                  sub          s1, s1, t4
                  rem          s4, s8, t4
                  mulhu        s0, zero, a4
                  slli         s4, zero, 17
                  slti         a1, t4, -937
                  srai         t6, t5, 6
                  sltiu        s4, s2, -1632
                  sltu         s10, zero, t2
                  rem          s3, s10, a3
                  srli         s3, s2, 28
                  ori          s5, t1, -430
                  sll          a7, a4, a7
                  div          ra, a5, t6
                  mulhsu       gp, t1, t4
                  slti         s8, a2, -156
                  andi         s8, s10, 1130
                  remu         s4, s0, t2
                  mulh         t6, zero, t6
                  mul          a1, s9, t4
                  rem          a1, t5, t4
                  sra          s4, s6, sp
                  xori         ra, s8, 969
                  add          a2, s10, sp
                  sll          s10, s0, a3
                  srl          s0, t1, s3
                  divu         ra, s3, s6
                  divu         s9, a4, s0
                  auipc        t4, 376900
                  andi         a2, s2, 326
                  mulh         t6, s3, s6
                  and          a3, a0, gp
                  slt          a5, s0, s5
                  and          s5, t0, sp
                  xori         s2, tp, 1378
                  ori          gp, ra, 1566
                  srli         t0, t4, 21
                  slt          zero, a4, t1
                  and          t2, a7, s6
                  or           s2, a4, s11
                  sltu         t2, s3, t0
                  xor          a7, t0, a7
                  srai         sp, a7, 0
                  srl          s2, s10, t6
                  ori          s6, s7, 244
                  srai         a3, a4, 6
                  rem          a7, ra, a2
                  nop
                  and          s2, s0, a3
                  slt          t3, a1, a0
                  div          a5, a6, t3
                  auipc        s5, 574003
                  div          s1, sp, s6
                  divu         a1, a5, s0
                  remu         t6, s0, a1
                  and          tp, zero, s10
                  sll          s5, t5, s0
                  div          s10, s1, s4
                  srl          t5, t2, t0
                  rem          s10, t0, s8
                  sra          t6, s3, s2
                  xor          a1, s9, tp
                  srli         a0, s6, 14
                  remu         a5, a7, a6
                  rem          s9, a3, sp
                  mul          zero, zero, s9
                  slti         t6, s7, 1204
                  lui          s5, 868606
                  slti         tp, a1, -262
                  addi         a2, s4, 567
                  sltiu        sp, s8, 227
                  ori          a0, a2, 1645
                  xor          s10, a1, s3
                  srl          s8, t0, a7
                  srl          s10, s6, s6
                  mul          s7, a2, t2
                  and          s8, gp, s2
                  mulhu        t6, ra, s3
                  div          s2, t1, s1
                  srl          zero, s10, s7
                  divu         s7, t2, sp
                  div          t1, t2, a0
                  divu         a1, a5, gp
                  srli         t0, s11, 26
                  div          s2, a7, s4
                  srl          a1, a2, t5
                  or           s7, s3, a1
                  mulhu        a0, s9, a5
                  srli         a5, s3, 24
                  addi         tp, t3, 466
                  sltiu        t5, a4, 1749
                  sll          t3, s2, s0
                  rem          zero, s10, a6
                  mulhsu       a5, t5, zero
                  sltiu        gp, s5, 2002
                  mulhsu       t5, t4, s6
                  mulhu        zero, s9, s4
                  rem          t2, s9, a1
                  auipc        t6, 919230
                  srli         s2, s11, 12
                  remu         t1, s0, s8
                  rem          s5, zero, s3
                  rem          s5, a1, s2
                  sltiu        s2, t0, 57
                  or           s2, s9, t3
                  or           t2, ra, t1
                  lui          t2, 201328
                  sll          s9, s7, t5
                  lui          a1, 397355
                  and          a2, t4, a0
                  andi         a1, s8, 38
                  add          zero, s3, gp
                  div          gp, t2, tp
                  mulhsu       s2, s2, s0
                  ori          s10, s11, -810
                  mulh         t4, t0, s10
                  srl          s5, t0, s3
                  andi         s2, a7, 759
                  slti         t3, a3, 1232
                  slti         s7, s9, 1667
                  slti         s10, s7, -2019
                  lui          a5, 137682
                  sub          sp, s0, s1
                  mulhu        t6, a7, s3
                  srli         a5, a0, 11
                  sra          a2, a4, a2
                  sltu         t0, s6, a5
                  sltu         zero, t2, gp
                  lui          zero, 560968
                  rem          a1, s10, s11
                  rem          a1, t1, s1
                  slt          tp, t1, s10
                  or           a1, tp, s0
                  mulhu        s2, a3, s1
                  mulh         s1, gp, sp
                  ori          a2, s9, -1750
                  sll          t1, s2, s8
                  and          s7, gp, s4
                  xori         s6, gp, -126
                  slt          a0, gp, t2
                  mulhu        a0, a4, s2
                  mulhsu       s4, a3, a6
                  addi         a1, t1, -42
                  mulhsu       tp, t6, a4
                  divu         a7, s0, t6
                  div          s4, t5, s3
                  slt          a1, s5, s5
                  or           a5, s8, t5
                  add          a2, s3, s6
                  srl          t2, s8, a1
                  divu         s0, gp, a1
                  div          s10, zero, t5
                  add          s5, s8, s9
                  auipc        t5, 410875
                  lui          s0, 793816
                  nop
                  and          a0, s7, s11
                  ori          t5, t3, -1228
                  or           s2, s4, sp
                  lui          s8, 440384
                  add          ra, s3, s10
                  sra          s10, t2, s4
                  rem          a5, t5, a3
                  mul          s1, a3, s1
                  add          s9, s10, s8
                  nop
                  and          sp, a0, t4
                  mul          t6, s5, ra
                  mulhsu       a2, zero, s10
                  mulhu        s4, zero, s10
                  sra          s7, a5, t1
                  slti         gp, ra, -390
                  sub          t4, t6, a5
                  srli         t5, sp, 14
                  xori         t3, a5, 520
                  andi         a5, a5, 495
                  remu         s10, s3, s6
                  srai         a0, s7, 15
                  srli         s8, t4, 25
                  addi         s5, a2, 379
                  mulhsu       a7, s8, s5
                  slt          t0, t0, t0
                  rem          s2, a7, a4
                  slt          gp, ra, s7
                  xori         t2, sp, 1389
                  mulhsu       ra, s7, t4
                  div          tp, s0, tp
                  divu         s8, t6, t6
                  add          t2, s8, s1
                  lui          sp, 182274
                  mulhu        a3, a3, t1
                  xor          s0, tp, t0
                  rem          t2, t4, s4
                  ori          t2, s9, -1872
                  xori         t5, s2, -970
                  xori         s5, a0, -1606
                  div          t3, tp, t3
                  divu         s4, a3, a6
                  mulh         a5, s1, s6
                  addi         s8, t6, 466
                  addi         s7, s5, 1881
                  srl          t0, s5, s6
                  rem          gp, s2, s7
                  lui          t0, 65834
                  auipc        sp, 606880
                  xori         a1, s0, -1603
                  srai         t6, a4, 18
                  ori          ra, a7, 921
                  sltiu        s9, s1, 585
                  sltu         t3, s3, gp
                  divu         a1, s3, s2
                  xori         s10, t0, -289
                  mul          t2, a1, ra
                  rem          s7, s4, s6
                  and          s5, a7, s9
                  xori         a5, sp, -12
                  sltu         tp, ra, t2
                  slli         t1, s11, 5
                  remu         s7, zero, t2
                  lui          s10, 287868
                  ori          t5, t2, -846
                  srl          ra, s9, s9
                  andi         a3, s0, -1020
                  andi         s1, tp, -1640
                  srl          tp, s1, s10
                  lui          s0, 619047
                  slli         s4, t6, 10
                  ori          gp, ra, -1527
                  auipc        s3, 463232
                  sra          t4, a1, t5
                  xor          a1, s11, zero
                  divu         t4, a4, t5
                  xori         s8, a5, 1366
                  auipc        a3, 945896
                  addi         t4, ra, -1990
                  sub          ra, tp, s4
                  remu         s2, a1, a5
                  xor          s1, t0, a7
                  srl          sp, s0, s10
                  mulh         a7, zero, ra
                  ori          a5, s5, 595
                  or           a2, s2, a7
                  slt          s3, s1, t1
                  divu         ra, s9, t4
                  nop
                  mulhu        a3, s8, s3
                  srl          zero, gp, s2
                  lui          s8, 431875
                  slti         s2, s0, -24
                  srl          s0, s1, a1
                  sra          t2, tp, s7
                  rem          ra, s6, a5
                  sra          s3, tp, s1
                  mulh         s2, a1, s0
                  xori         s10, sp, 317
                  ori          sp, t3, -495
                  srli         a7, s0, 29
                  addi         t1, t6, 893
                  xori         s2, t1, -1357
                  sra          s0, s4, s6
                  rem          gp, s1, tp
                  auipc        sp, 241211
                  mulhsu       s2, t1, s11
                  div          a1, s6, s9
                  mul          t5, s10, zero
                  sub          s7, s4, a0
                  remu         a3, gp, t6
                  sltu         s3, zero, t3
                  sltiu        t1, a4, 195
                  srl          t6, t1, t1
                  srai         t6, a6, 22
                  mulhsu       t5, a5, s7
                  div          s6, s8, s3
                  andi         ra, a5, 1888
                  add          s4, a2, s5
                  add          a3, zero, s1
                  srli         s0, a1, 28
                  or           s4, a0, gp
                  mul          s9, tp, s6
                  slli         t1, a3, 19
                  andi         a7, t6, -391
                  auipc        sp, 232896
                  srai         t3, t5, 15
                  add          a1, a3, a5
                  and          t1, t5, s8
                  auipc        s4, 893629
                  srli         s9, t3, 9
                  remu         t0, t3, s4
                  xori         a0, s8, -360
                  srl          tp, s7, s11
                  mulh         t2, s11, tp
                  div          a1, a5, t5
                  add          a3, t5, ra
                  remu         s6, s3, t3
                  auipc        a2, 658065
                  mul          s8, t4, a4
                  sltiu        sp, a6, -708
                  sra          s6, s6, a6
                  divu         a2, a0, a6
                  srli         s1, s2, 6
                  nop
                  sltiu        s9, s0, -699
                  remu         s8, s7, s6
                  and          gp, a1, a7
                  srai         s10, s4, 23
                  div          tp, a5, s0
                  remu         ra, s9, t0
                  slt          s5, gp, s9
                  mulhu        s9, t6, gp
                  div          a1, s8, a4
                  divu         s2, s5, t2
                  divu         tp, s3, a1
                  remu         t3, t0, t6
                  or           s8, t5, t2
                  divu         s6, a6, a7
                  srl          t5, ra, t6
                  rem          s2, s4, t0
                  sra          s3, t2, s0
                  sll          gp, s6, s3
                  srl          s9, t6, t5
                  mulhu        s10, a3, s6
                  divu         a1, a7, gp
                  sltu         t2, s0, s1
                  slt          t5, ra, zero
                  sub          zero, s7, t1
                  srai         a5, a6, 14
                  or           s4, t1, t0
                  nop
                  add          a0, a3, tp
                  mulhsu       s9, s3, a5
                  lui          ra, 372093
                  ori          s1, zero, 1707
                  lui          a2, 784778
                  divu         t3, s9, a5
                  srl          a2, t2, s8
                  srai         t2, s7, 30
                  sll          s4, t1, t4
                  rem          a2, s4, t2
                  xori         s4, s1, 465
                  lui          t6, 374603
                  lui          t3, 408895
                  xori         a1, t2, -164
                  xori         s10, s0, -169
                  sub          t4, sp, s6
                  lui          s10, 345778
                  mul          s0, a4, s3
                  sra          t2, a6, a0
                  srai         t5, s9, 23
                  mulhsu       t6, t6, s3
                  sra          s5, s2, a6
                  ori          sp, t4, -1653
                  lui          t1, 164322
                  addi         s9, a0, 1804
                  sll          t6, t0, a0
                  remu         gp, a6, s0
                  add          a5, s5, zero
                  lui          s2, 608008
                  srl          a2, a3, tp
                  slt          t0, a5, a4
                  remu         tp, t1, t5
                  mul          sp, s11, s10
                  sra          t5, s0, t3
                  sltu         a2, tp, s4
                  nop
                  div          t4, s11, t2
                  srli         gp, a1, 0
                  mulh         a3, s5, s10
                  srl          t5, s9, a3
                  andi         s0, s11, 1386
                  sltiu        s8, a0, -1077
                  sltu         s8, gp, a4
                  remu         t4, gp, s10
                  srl          s10, a7, a4
                  sltiu        s9, s11, -1754
                  andi         tp, t1, 1138
                  andi         t5, zero, 698
                  slti         t5, t6, -1621
                  xor          a0, t2, sp
                  ori          t4, s8, 1641
                  mulh         a1, s3, a2
                  addi         a2, a0, 880
                  mulhu        a1, s4, t1
                  auipc        a5, 469424
                  addi         a1, t5, -1401
                  andi         ra, t5, -978
                  xori         ra, a6, 987
                  xori         a2, sp, -1158
                  auipc        s4, 836783
                  andi         s7, s9, -1002
                  add          s7, a5, s2
                  mulh         s10, a1, a3
                  nop
                  rem          zero, zero, s6
                  auipc        t4, 755776
                  divu         s3, sp, s5
                  xori         s3, s11, 1715
                  mulhsu       s4, s3, a0
                  mulhu        s1, s1, t4
                  sltiu        a5, s11, 344
                  divu         a3, a4, s5
                  srai         s8, t6, 30
                  srai         s7, s8, 15
                  slt          a3, s10, t2
                  mulhu        s0, t6, zero
                  rem          t6, s2, t4
                  sltiu        s8, t5, -1183
                  sltiu        zero, s8, -1747
                  lui          t4, 753584
                  remu         sp, s9, s9
                  andi         s10, zero, 934
                  add          a7, zero, s3
                  ori          a7, zero, 356
                  xor          zero, t4, s2
                  and          s8, sp, a7
                  remu         t1, s11, t3
                  nop
                  slli         tp, s9, 20
                  srli         t6, s3, 30
                  srli         s8, a0, 9
                  sll          tp, s8, s10
                  add          s9, ra, t3
                  slti         t5, s6, 43
                  auipc        t4, 946226
                  andi         zero, a0, 36
                  srai         s10, ra, 27
                  slti         gp, t2, 1814
                  slli         t6, s0, 6
                  mul          s7, a4, a0
                  slt          t6, s9, s6
                  divu         tp, s10, a1
                  div          tp, zero, a2
                  add          a7, s7, a4
                  div          s3, gp, a2
                  auipc        t5, 249097
                  ori          sp, gp, -1355
                  xor          a3, a7, t6
                  mulh         s9, s11, t1
                  sra          s10, t0, s10
                  addi         t6, t5, -18
                  sll          s7, a0, t1
                  lui          a2, 657002
                  sra          a3, s11, s3
                  nop
                  divu         a5, a3, t3
                  remu         a3, t2, t5
                  lui          ra, 141349
                  add          gp, s10, s4
                  sltu         t5, a2, zero
                  auipc        s4, 886280
                  nop
                  rem          tp, s5, s1
                  srli         a2, s2, 20
                  remu         s8, s10, s9
                  slli         t6, s3, 30
                  lui          a2, 353031
                  sltiu        t2, s2, -1492
                  divu         t1, s7, a6
                  auipc        s4, 62184
                  rem          s2, t2, a0
                  xor          s8, a0, s2
                  and          s9, s8, tp
                  sra          a5, t0, a4
                  xor          a2, s10, a3
                  and          a3, a4, s10
                  rem          s3, t5, a3
                  add          s4, s5, s4
                  lui          a5, 631849
                  sra          sp, a4, s1
                  andi         a2, t2, -1346
                  srli         t3, a3, 2
                  srai         t4, s11, 15
                  slti         t3, tp, 333
                  slli         tp, a6, 16
                  srl          a1, s7, a5
                  remu         ra, a6, a7
                  srai         ra, s3, 27
                  mulhu        t5, t2, a1
                  sltu         a0, s5, t4
                  sub          ra, tp, a6
                  slli         s5, t3, 1
                  and          t3, s1, a3
                  rem          sp, a3, ra
                  sltu         a2, s11, a5
                  slti         a0, t1, -261
                  and          t0, s1, a6
                  andi         s1, s8, -935
                  sub          t5, t0, a6
                  sltu         s7, zero, s0
                  remu         s3, ra, t1
                  xori         s4, s0, -216
                  sltu         t2, a3, t0
                  slli         s7, zero, 22
                  slli         a0, tp, 30
                  remu         a2, s4, a2
                  xori         t1, t0, -555
                  srli         s0, t0, 15
                  slli         t5, a4, 26
                  xori         zero, s11, 1447
                  sra          s5, tp, s5
                  srl          s9, t2, a2
                  lui          s9, 963245
                  ori          s5, a3, -1982
                  mulhu        zero, a3, t1
                  slti         a1, s4, -1773
                  srai         s4, a4, 25
                  xor          a1, a5, t1
                  sll          a1, t6, a5
                  sub          s0, s4, a4
                  sltiu        s0, t1, -1555
                  slti         s4, s9, -840
                  auipc        t0, 262055
                  slti         zero, a7, -1107
                  addi         t1, ra, -1204
                  lui          a2, 885736
                  mulhsu       t4, t2, ra
                  srl          s5, s3, t5
                  mulhu        t1, t4, s4
                  slt          s7, s11, t6
                  remu         s0, s3, s0
                  srai         s9, t1, 26
                  nop
                  remu         s5, a7, s0
                  srli         t6, s1, 19
                  xor          s8, a4, s4
                  lui          t5, 334039
                  divu         s5, a5, t4
                  or           s7, s10, a4
                  mul          t1, ra, s3
                  remu         s2, t4, s9
                  nop
                  lui          t5, 397117
                  slti         s2, sp, 1395
                  and          a5, t0, a3
                  auipc        s1, 54571
                  slti         s4, a0, -1849
                  mulhsu       a7, a4, a5
                  srl          s3, t2, t6
                  add          gp, a7, s4
                  srai         ra, t2, 22
                  and          s4, a6, t6
                  addi         s8, t1, 1144
                  slli         zero, t0, 20
                  srl          t0, a6, tp
                  div          s8, t4, gp
                  addi         s5, s11, 1339
                  auipc        s9, 738051
                  sub          a0, a5, ra
                  sra          s1, s2, tp
                  xori         s9, t2, -387
                  nop
                  srl          s5, s8, s1
                  add          s6, s2, s0
                  divu         t1, a7, s6
                  ori          t5, a0, 1977
                  slli         a1, s0, 4
                  xor          a1, a1, a0
                  srli         a5, s5, 1
                  srai         a0, t3, 13
                  sub          t1, a6, s6
                  and          t4, s0, s3
                  mulhu        t0, t1, a6
                  srli         a5, s6, 26
                  remu         a2, a3, a2
                  sub          s4, a3, a4
                  srai         s6, a1, 30
                  divu         a5, s6, a3
                  mulhu        s2, s4, t6
                  sltu         zero, t6, s1
                  rem          s7, a5, s5
                  srl          a2, s11, a7
                  sll          t1, a4, a6
                  auipc        tp, 13328
                  slli         gp, t4, 25
                  xor          gp, s4, ra
                  xori         s5, t4, 421
                  nop
                  xor          t0, sp, a6
                  mulh         a3, s0, s5
                  div          s6, s3, a0
                  slli         a2, s7, 5
                  ori          t2, s4, 448
                  remu         t2, t2, a4
                  sltu         tp, t6, t1
                  xor          a3, s0, a6
                  xor          gp, s10, s1
                  div          s10, a4, sp
                  nop
                  sll          t5, s4, a4
                  sra          s1, sp, s5
                  mulhsu       a7, a0, t0
                  slt          s6, a2, t1
                  xori         s6, zero, -1636
                  and          ra, t5, s2
                  slt          s3, s1, s9
                  divu         t2, s1, a7
                  sll          t6, tp, s6
                  and          a7, s11, s5
                  mulhsu       sp, t5, s0
                  or           tp, a2, s3
                  andi         s8, s3, -1022
                  div          t4, a4, t5
                  andi         t4, s8, -1816
                  lui          s10, 195237
                  mulh         a1, t4, t6
                  nop
                  srai         s2, a4, 30
                  srai         t3, s1, 2
                  add          s2, t3, a7
                  xor          s6, s10, t1
                  sll          a1, a5, ra
                  sltiu        s5, a4, -496
                  mulh         s4, s5, a2
                  mulhsu       zero, s0, s0
                  lui          s6, 418655
                  addi         a1, a0, -228
                  mulhu        t3, t5, a0
                  sll          s10, gp, a2
                  slti         sp, s10, 713
                  slt          s2, a2, t6
                  srli         a5, a1, 26
                  srai         a2, s3, 13
                  mulhu        s10, a3, a3
                  or           ra, s0, s3
                  and          s8, t4, a1
                  srli         s7, s5, 7
                  slt          ra, t3, s10
                  slt          a3, s7, t5
                  remu         s9, a2, s4
                  mul          zero, s11, a2
                  rem          s4, zero, s9
                  srl          s3, a2, s7
                  srai         sp, t4, 1
                  xori         s9, ra, -1829
                  remu         s6, s9, s3
                  mulhsu       t4, gp, tp
                  divu         a0, a5, a2
                  rem          a5, sp, s9
                  slli         sp, a5, 20
                  sll          s7, s9, a3
                  remu         a5, s9, s8
                  div          s10, tp, a2
                  srl          s0, s5, t5
                  sltu         a7, a2, s1
                  slt          a2, s11, a2
                  auipc        gp, 571431
                  nop
                  auipc        s1, 5254
                  rem          t1, t2, t2
                  mul          s9, t1, a3
                  remu         s10, t5, zero
                  xor          s2, zero, a5
                  srai         s4, zero, 27
                  sra          tp, a1, t6
                  add          s4, t4, t5
                  xor          zero, s7, s4
                  xori         ra, a5, -417
                  xori         s0, a6, 1103
                  mulhu        s2, a3, s5
                  div          s8, s6, a7
                  srli         t5, gp, 7
                  mulhu        a2, sp, s2
                  mulh         a1, s0, s3
                  srli         t0, s10, 5
                  auipc        a0, 349216
                  mulhsu       s4, s6, s2
                  divu         s8, t2, a0
                  mulh         s7, t3, ra
                  slli         t5, a1, 6
                  slti         zero, a5, -673
                  srl          s3, t2, t5
                  srli         s6, tp, 19
                  add          a3, s1, zero
                  mulh         a2, a5, s1
                  sll          s5, s1, a5
                  srl          s4, ra, t0
                  xor          a7, t6, t5
                  ori          a0, s0, -1657
                  sub          t6, a2, s1
                  sra          s4, a3, t5
                  srli         a7, gp, 3
                  sra          a1, t0, sp
                  or           a0, s10, t2
                  add          a5, tp, t5
                  sltiu        s4, tp, -1780
                  and          t3, s11, s6
                  sub          s9, s2, a7
                  srai         s6, gp, 5
                  srli         t2, a0, 18
                  mulh         t6, gp, a2
                  andi         zero, tp, -172
                  or           s10, a0, t0
                  srl          s10, a4, s11
                  add          a1, gp, t0
                  mul          s3, a7, s5
                  slli         s10, a4, 7
                  divu         a0, s9, s8
                  slli         s2, s5, 11
                  sub          tp, s8, a2
                  sltiu        sp, t4, -651
                  sub          s9, s6, s3
                  lui          s0, 866156
                  sub          s5, a1, t1
                  ori          s5, ra, 627
                  divu         ra, a4, t3
                  srli         a3, s4, 7
                  srl          a0, t0, s2
                  rem          tp, a1, a3
                  sltiu        s10, s1, 170
                  sltiu        tp, a5, -1515
                  sra          t6, a1, s0
                  addi         t5, a4, 659
                  sltiu        a0, a0, -925
                  rem          a2, zero, s5
                  mulhsu       ra, t4, t5
                  sra          sp, t0, s1
                  divu         s7, t6, a0
                  add          a2, t5, s0
                  mul          s7, t1, t5
                  xori         a0, gp, 1688
                  addi         s3, s0, 1334
                  addi         s10, t1, -648
                  add          t3, s9, a3
                  srl          sp, a3, t6
                  divu         zero, t4, a7
                  add          t4, t3, a2
                  xori         zero, gp, 824
                  rem          t6, s7, s4
                  add          t4, a4, gp
                  sltu         t5, tp, t2
                  and          a2, a6, s11
                  slt          s9, gp, a4
                  mulh         tp, t3, a6
                  rem          s4, t0, ra
                  sltiu        s1, s5, 431
                  mulhu        t6, s10, a0
                  addi         sp, s0, 255
                  srai         a7, zero, 19
                  slt          s8, s10, s11
                  add          s5, sp, s1
                  srai         a1, t5, 3
                  mulhsu       a7, t1, t2
                  andi         s2, t3, -2034
                  sltu         s9, zero, s5
                  sra          s4, t5, t5
                  mulhu        zero, a4, t0
                  slti         s4, t4, 1316
                  mulh         s9, t2, sp
                  auipc        a7, 860706
                  and          zero, a0, ra
                  xori         s8, zero, 1130
                  sltiu        s0, zero, -894
                  sra          a5, a3, t2
                  auipc        a7, 203061
                  div          t5, a0, gp
                  xori         a2, s6, 1455
                  xori         gp, s0, -1315
                  divu         s7, s8, s5
                  add          a7, s7, a0
                  mulh         s6, s9, s10
                  ori          a1, t5, 498
                  sltiu        s10, s6, -1803
                  srai         t5, t4, 20
                  slt          s2, t3, s10
                  mul          s7, t1, ra
                  sltu         t2, tp, t2
                  nop
                  nop
                  xor          s7, a7, s3
                  mulhu        a0, t4, tp
                  sltiu        s10, sp, 1782
                  srli         s4, s11, 17
                  ori          s0, s5, -1485
                  addi         s8, a3, -561
                  or           a5, a5, s11
                  divu         s0, s2, sp
                  and          sp, s8, a6
                  mulh         s9, gp, s8
                  add          s2, t5, a3
                  sub          a3, s8, s1
                  nop
                  mulhsu       t2, zero, t5
                  ori          t3, s0, 1995
                  xor          ra, s2, t5
                  srli         s4, a4, 1
                  rem          t2, a2, a1
                  sub          gp, a3, s10
                  auipc        ra, 949907
                  mulhsu       s6, gp, s4
                  mulhsu       ra, sp, s1
                  add          s8, t6, s5
                  sra          ra, ra, s11
                  sltu         s9, a0, sp
                  and          zero, s7, tp
                  sra          sp, ra, s10
                  rem          t2, s7, t6
                  mulhsu       a1, s0, a1
                  srl          t3, a3, s10
                  xor          a0, s6, s7
                  and          t3, s7, sp
                  or           zero, t6, t3
                  nop
                  slli         t1, a0, 30
                  mul          s10, t3, t6
                  sltu         a0, s0, tp
                  ori          t0, s4, -489
                  slli         t5, zero, 30
                  divu         t4, a2, s3
                  slti         zero, s5, -831
                  div          s0, t5, s7
                  lui          t1, 277033
                  mulh         a3, sp, s2
                  rem          s2, t6, s5
                  add          s8, s10, s9
                  nop
                  xor          s8, s1, s3
                  remu         a3, s5, s2
                  xor          s3, s1, sp
                  lui          a2, 512987
                  remu         a3, t3, a3
                  xor          s6, s0, a4
                  slti         s5, t3, -816
                  mulh         s10, s9, a7
                  mulhu        ra, a3, t5
                  sub          a0, a0, a1
                  divu         tp, s10, s3
                  nop
                  slti         s0, ra, 2040
                  auipc        gp, 376852
                  slti         t3, s1, -708
                  mul          t2, s9, s7
                  slti         t2, s9, 515
                  xori         s1, s9, 1226
                  slt          s6, t6, s4
                  or           sp, a6, tp
                  xori         a5, s11, 707
                  xor          a0, s7, t2
                  divu         s2, s9, a2
                  or           t6, t5, a1
                  mulh         t1, s7, t0
                  lui          s3, 341840
                  andi         sp, t6, 232
                  srl          t5, s1, zero
                  xori         t6, s3, -909
                  sltiu        s7, t4, -308
                  add          s10, a2, ra
                  sltu         sp, s1, t6
                  sltu         s3, t6, t4
                  addi         s4, t6, 1639
                  sub          ra, sp, a1
                  add          a3, s9, s0
                  sub          a1, s2, a4
                  sll          s9, t2, gp
                  slli         s8, s6, 13
                  sub          s8, s8, a2
                  auipc        s5, 501995
                  srli         sp, t2, 25
                  divu         a0, s9, gp
                  srli         s3, s5, 0
                  srli         t4, s3, 29
                  mulh         t0, s8, ra
                  or           tp, tp, a4
                  slt          t6, s2, s6
                  srai         gp, a4, 26
                  sll          s2, t3, a3
                  xori         t6, a2, -1962
                  mulhsu       s4, s10, s8
                  sll          t3, s7, ra
                  or           a7, t4, s5
                  srai         t6, a4, 8
                  divu         a2, t3, s4
                  ori          a3, s2, 1254
                  slti         a1, s10, -560
                  mulhu        a2, gp, s10
                  andi         t2, s9, -1940
                  srl          t2, t6, a7
                  mul          a7, s1, gp
                  sub          a7, a2, s0
                  sll          t0, s1, s6
                  slt          a2, s1, s11
                  ori          s7, s9, -1366
                  srai         s4, s6, 9
                  nop
                  xori         a7, a5, 53
                  andi         s7, tp, -509
                  div          t6, t1, s10
                  rem          s2, s9, s1
                  sll          t2, s3, a3
                  lui          s0, 729441
                  sltiu        t2, s1, -2030
                  rem          ra, sp, s6
                  xori         a3, t6, 939
                  srl          t2, a4, t5
                  divu         tp, a5, ra
                  mulhsu       a1, s6, a5
                  divu         a0, t5, t0
                  mul          s5, s0, a6
                  sll          t5, a6, s8
                  or           s7, a3, s3
                  rem          s6, s10, s9
                  mulh         a2, s1, a5
                  slti         ra, s6, -246
                  mulhsu       s3, t3, s0
                  sltiu        s5, s5, -1308
                  ori          a1, a2, -2002
                  sll          a0, t2, ra
                  xor          gp, a6, t6
                  nop
                  mulh         t1, t4, a2
                  sra          t0, s0, s0
                  ori          s4, s5, 1415
                  and          a7, s7, s1
                  srl          s3, s1, s2
                  sltiu        a0, sp, -1610
                  ori          s8, t6, -334
                  xor          s2, s10, tp
                  ori          s8, t2, 1932
                  divu         s4, a0, s2
                  mulhu        s2, t4, s6
                  slli         s5, t4, 4
                  srli         zero, t4, 10
                  mulh         s9, s7, a6
                  remu         s2, t3, tp
                  remu         sp, s9, s1
                  div          t1, a7, t1
                  xori         a5, s2, -166
                  nop
                  srli         a7, a5, 7
                  auipc        ra, 343672
                  srai         s9, s9, 31
                  addi         s8, t3, -1967
                  slt          s1, sp, s8
                  andi         s4, a6, 1582
                  slli         s5, s11, 20
                  divu         t4, s0, t5
                  xori         s7, s6, -1602
                  xori         t4, ra, 102
                  nop
                  srai         tp, tp, 3
                  sll          s3, a1, s2
                  xori         s2, s2, -521
                  rem          s8, ra, t0
                  sra          a1, s6, a2
                  mul          t6, s8, s8
                  addi         a0, tp, -1049
                  slt          s0, zero, gp
                  sub          s7, zero, s8
                  mulhsu       gp, a3, gp
                  ori          gp, s10, -1457
                  remu         s6, s11, sp
                  nop
                  or           a1, a0, sp
                  xori         s0, s1, -616
                  divu         a7, s5, t1
                  or           a2, s3, s3
                  srl          a5, s6, sp
                  srl          s5, t0, a7
                  div          s1, a2, t0
                  mul          s8, a0, t1
                  ori          s3, a1, 474
                  and          a7, t1, sp
                  mulhsu       zero, t6, sp
                  xor          a7, a7, s2
                  xori         s4, s7, -1783
                  remu         s4, a1, s0
                  sltu         s1, s0, t5
                  or           t4, s6, a2
                  ori          gp, s8, 1260
                  remu         s3, s7, s7
                  slti         t6, t6, -1172
                  xori         s3, s10, 903
                  mulh         zero, a6, a0
                  slt          t6, gp, sp
                  auipc        t2, 406193
                  sra          t6, ra, t6
                  and          a5, s11, s1
                  nop
                  mulhsu       ra, a4, s4
                  xor          a5, a7, sp
                  div          s0, s1, a0
                  auipc        a1, 842809
                  ori          a3, t1, -1206
                  addi         t0, t3, 471
                  mulhsu       t4, a7, s9
                  addi         s2, zero, 1923
                  mulhsu       t5, s2, sp
                  slt          s2, a6, s9
                  rem          s0, a6, t4
                  xori         zero, a3, 836
                  div          s1, a6, t3
                  ori          a3, a4, -857
                  add          t5, a5, sp
                  slt          t1, a7, s0
                  mulhsu       sp, s8, s8
                  srli         t1, a4, 1
                  srl          tp, gp, s10
                  xori         sp, t3, 1056
                  xori         a2, a6, 1804
                  slt          s3, s7, a3
                  ori          gp, sp, 854
                  mulhu        s5, gp, s0
                  and          s8, s6, t0
                  rem          t1, s10, s6
                  xori         t6, t3, -134
                  add          a1, t3, t6
                  remu         s6, s11, t4
                  andi         tp, a6, 1670
                  sltiu        s10, a6, -1367
                  sll          s3, s9, s2
                  slt          gp, a3, t1
                  auipc        s0, 66239
                  mul          a1, s4, t1
                  mulh         a1, s11, zero
                  srai         gp, a1, 20
                  srl          s0, t1, t3
                  sltu         s8, a1, a1
                  sltu         a0, t0, s6
                  sltiu        s4, gp, 1880
                  slti         s2, s9, 2027
                  xor          t1, s10, s8
                  srai         t6, a2, 14
                  sltu         a7, t3, s3
                  andi         t2, gp, -103
                  sra          t0, s7, s3
                  ori          t0, t4, -426
                  add          s0, s10, t2
                  auipc        t6, 299184
                  mulhu        s2, a4, tp
                  sra          tp, t3, t6
                  mul          s7, t4, a3
                  rem          sp, zero, s4
                  mul          t5, ra, a4
                  sll          a1, a0, s8
                  srl          s10, s8, s7
                  srl          s9, t6, sp
                  div          zero, s6, s6
                  sll          s8, t1, t4
                  sub          a5, s1, a7
                  add          zero, a5, s0
                  slli         s5, s8, 10
                  remu         ra, t5, t6
                  sltu         s8, s8, gp
                  mulhsu       a5, tp, s0
                  mulh         t2, t2, ra
                  sub          a2, s2, t4
                  divu         s1, a2, t2
                  and          s5, a7, a4
                  sub          a2, tp, s6
                  and          s3, s2, gp
                  mulh         s0, s5, zero
                  rem          s10, s6, a2
                  andi         s7, ra, -1571
                  mulhu        s8, t3, s3
                  slli         ra, s3, 25
                  mul          t1, t5, t6
                  sra          a5, t4, a3
                  xor          t2, ra, s10
                  mulhsu       t4, gp, a7
                  auipc        s4, 838221
                  ori          a7, a2, -444
                  lui          s2, 204431
                  sltu         s0, ra, a6
                  add          t1, t5, a2
                  xori         s6, a6, -1529
                  nop
                  sub          s1, t6, sp
                  mulhu        s9, t1, s4
                  slt          s9, tp, a2
                  sltiu        a0, s8, -495
                  andi         s4, a4, 526
                  xori         s9, t5, 266
                  sltu         s6, ra, t3
                  rem          a0, s9, a1
                  mul          t2, a7, t0
                  sltiu        a2, s10, 982
                  ori          s8, t3, 803
                  div          s6, gp, ra
                  mulh         a0, s5, t4
                  sltu         t5, zero, s5
                  xori         t6, tp, 235
                  slli         a7, a7, 18
                  srl          ra, s9, sp
                  add          s2, s8, s6
                  slti         s9, s0, -722
                  mul          ra, zero, a5
                  or           a1, t0, ra
                  and          gp, s10, a3
                  ori          s1, s6, -462
                  add          s1, s8, s8
                  divu         s3, a6, a5
                  mulhsu       t1, s2, zero
                  mulhsu       a2, zero, t4
                  div          a2, t4, zero
                  mulhsu       t5, sp, s2
                  mul          a1, t4, s5
                  add          sp, t0, a4
                  srli         a2, s5, 18
                  ori          a7, s9, -151
                  srl          s7, zero, sp
                  srl          s7, s6, a4
                  mulh         t3, ra, a3
                  sra          t1, tp, s10
                  slt          a2, s1, a6
                  addi         s1, a3, -1466
                  lui          s7, 572913
                  srl          a1, gp, s10
                  divu         t5, zero, s2
                  srai         a7, s9, 13
                  mulhsu       a0, a2, t1
                  auipc        s0, 361261
                  srl          a7, tp, zero
                  srai         a3, a7, 8
                  mulhu        s9, t2, s2
                  slti         a7, tp, 11
                  srl          ra, t0, t5
                  xor          a0, s9, a7
                  mulh         s2, ra, ra
                  mul          t4, ra, s11
                  remu         a5, a2, s5
                  andi         a3, s1, 670
                  slt          sp, t3, s3
                  mulh         t5, s0, sp
                  slli         gp, a4, 2
                  sub          s0, sp, gp
                  ori          s1, s8, 172
                  div          s9, a1, s8
                  srai         gp, s8, 20
                  addi         s7, s7, 1731
                  sltu         s4, zero, t0
                  srl          s1, a4, s11
                  rem          ra, s7, t2
                  xori         t6, s5, 646
                  xor          s6, s9, t5
                  slti         s2, s6, -906
                  divu         t3, t2, zero
                  and          ra, s8, a1
                  srli         t3, t0, 6
                  sub          t2, s2, a5
                  slli         t4, t0, 22
                  auipc        a7, 123524
                  add          s6, s9, s6
                  srli         a0, s4, 25
                  ori          tp, zero, -1493
                  andi         s7, s7, -897
                  mulh         tp, s6, s8
                  sll          t5, zero, t4
                  mulh         gp, zero, s1
                  mul          sp, s9, s5
                  mulhsu       s3, gp, gp
                  andi         t0, a0, 1939
                  ori          gp, a3, -1910
                  ori          s0, tp, 1982
                  or           s9, s2, zero
                  srli         s7, s2, 11
                  mulhu        s2, a5, tp
                  remu         a0, a7, t0
                  sltu         t0, s5, t5
                  lui          s8, 362185
                  mulh         t5, s8, t5
                  mulh         t6, s10, s1
                  slli         s1, ra, 21
                  auipc        ra, 952752
                  mulhsu       t1, t2, t5
                  mulh         t6, a2, t4
                  srl          t6, s9, s11
                  srli         s8, a3, 31
                  mulhu        a3, t1, t0
                  auipc        t3, 443911
                  lui          s8, 755522
                  sub          zero, t5, s6
                  mulhu        s0, a5, s6
                  ori          s2, t4, 1442
                  slti         s9, s10, -1926
                  sub          gp, s4, s2
                  slt          s1, t4, t3
                  sltiu        zero, t0, -1595
                  and          a1, tp, t2
                  srli         t4, a5, 13
                  xori         s9, s1, 1143
                  slli         s7, t5, 8
                  remu         s4, t3, s8
                  andi         t4, t4, -1986
                  sub          s3, zero, a6
                  andi         a7, a2, -1469
                  div          a0, a3, t1
                  mulhu        a2, zero, s6
                  addi         ra, s10, 191
                  div          s9, ra, a5
                  sub          s8, a4, s2
                  and          t3, ra, s8
                  mul          a3, zero, a0
                  and          s2, s9, s3
                  slti         t2, s0, -1717
                  lui          s2, 997724
                  div          a2, s11, t3
                  div          s9, s4, gp
                  srli         s6, s0, 13
                  or           t6, s0, t0
                  slti         t2, s10, 1908
                  div          a1, t3, a7
                  add          ra, s7, t5
                  divu         sp, t5, t0
                  and          a3, gp, t5
                  ori          t4, a7, 670
                  xor          a0, t2, s11
                  srli         s4, t2, 29
                  slt          t4, a7, a5
                  or           s10, a5, s9
                  ori          a1, sp, -1324
                  mulhu        s7, t1, t1
                  mul          t4, t5, a7
                  sra          s8, s8, s1
                  add          s9, zero, s4
                  auipc        s2, 178763
                  sra          s0, a6, s10
                  mul          t4, t3, a5
                  sra          t4, t5, a0
                  lui          tp, 291827
                  sra          s6, tp, t3
                  sltiu        ra, s9, -1979
                  mulhu        s7, s4, s4
                  nop
                  or           a7, s5, t0
                  div          s7, s3, s4
                  nop
                  sltu         t0, a5, s3
                  remu         s4, t3, ra
                  mul          zero, s3, s9
                  lui          a7, 498497
                  srl          a5, sp, t2
                  addi         tp, s5, 1682
                  add          a3, t6, t6
                  mulh         s0, a7, zero
                  xor          s4, s8, a0
                  mulhu        a7, t0, a4
                  nop
                  mul          s8, s5, s4
                  mulh         a2, s8, s8
                  ori          t1, gp, -960
                  xor          zero, s7, s4
                  sll          gp, t3, t2
                  sltu         s3, a3, s2
                  auipc        s10, 611419
                  xori         zero, s5, -1799
                  srli         s1, t2, 2
                  sltiu        a7, s7, 659
                  lui          a0, 123957
                  and          s0, t5, t1
                  addi         a0, s4, 700
                  div          a5, s3, s10
                  ori          s0, s0, -712
                  div          ra, s2, a3
                  slt          t1, zero, t5
                  srli         t3, s9, 13
                  lui          t6, 971710
                  rem          s1, a1, a0
                  auipc        a7, 289425
                  sra          a7, s11, a5
                  xor          s2, s5, zero
                  xor          s2, zero, t4
                  divu         s6, a5, gp
                  srli         a0, t2, 26
                  rem          s2, s5, ra
                  xor          a1, t2, s4
                  sra          s10, a4, t2
                  ori          a7, s9, -1147
                  div          t4, a1, a1
                  div          a3, a3, gp
                  and          a7, t4, s4
                  addi         s6, s1, -1087
                  slli         s9, zero, 26
                  sra          ra, s10, s3
                  slli         s10, a1, 23
                  xori         t4, s4, -1069
                  sltu         a7, sp, t1
                  xori         s9, t6, 1366
                  xori         t5, s2, 1262
                  mulh         a1, sp, ra
                  or           a0, s2, sp
                  ori          a1, s11, 1233
                  slt          gp, s2, a2
                  addi         t6, a0, -1097
                  slli         s3, a4, 8
                  slti         a2, a7, 256
                  slti         t4, s3, 713
                  div          t5, a5, s4
                  lui          t0, 63770
                  sra          t1, s11, a7
                  addi         s9, a3, -1140
                  srai         t1, t1, 12
                  slt          a2, t5, t2
                  andi         t4, s10, -1182
                  sub          ra, zero, a7
                  nop
                  lui          t6, 137843
                  divu         s10, s3, a7
                  div          a7, s9, t3
                  nop
                  rem          a1, zero, a7
                  sltiu        a2, a0, -1742
                  and          s5, t5, s9
                  ori          a5, s9, -318
                  rem          s1, s5, s4
                  mulh         s8, t4, s9
                  mul          s5, a3, t3
                  mulh         t1, s3, s10
                  mulhsu       t5, s8, t1
                  divu         s2, s4, ra
                  addi         t2, gp, 686
                  mulh         s0, s4, t4
                  xori         s1, tp, -866
                  addi         s2, tp, 1595
                  ori          a7, s1, -1084
                  sra          s8, t0, ra
                  andi         s8, s7, -1841
                  add          s8, s0, a3
                  lui          a2, 249757
                  slli         tp, s6, 24
                  srl          s0, s9, a5
                  mulh         t4, a3, s9
                  sll          s0, a2, a1
                  divu         s4, a1, zero
                  sub          gp, s0, gp
                  div          s10, t4, s9
                  sltiu        t0, s2, -1058
                  slti         t4, t6, -359
                  andi         s0, a1, -1457
                  srli         s0, a5, 24
                  srli         a7, s6, 3
                  sltu         s10, s10, s4
                  slt          a5, t0, s6
                  sltiu        a2, a4, 1804
                  sltu         a3, t6, tp
                  add          s7, sp, tp
                  slli         a2, ra, 17
                  slli         s6, ra, 22
                  auipc        s4, 383277
                  and          a0, a0, s7
                  ori          a2, s0, -1470
                  sra          t4, s4, s6
                  sll          a3, tp, t3
                  nop
                  sltiu        a2, s8, 779
                  addi         t4, s8, 1486
                  rem          a5, s5, t1
                  auipc        a5, 286070
                  addi         t3, s9, 968
                  slt          a1, a4, a7
                  divu         t6, s5, t4
                  slli         a2, t2, 20
                  lui          s7, 1018481
                  remu         gp, s8, s4
                  div          a1, t2, t3
                  sub          t6, s11, zero
                  add          s2, a7, zero
                  slti         a0, t3, 719
                  slli         s9, t4, 28
                  add          t2, s10, s8
                  srl          a1, a5, s6
                  slt          tp, a4, s4
                  xor          gp, s1, s0
                  or           s6, t5, a6
                  mulhsu       a2, s3, t2
                  or           s7, a5, s1
                  divu         a5, t4, t3
                  sll          a3, ra, t1
                  remu         gp, s3, a7
                  sub          a5, t6, s4
                  mulhu        t1, a4, t2
                  slli         t5, a0, 15
                  and          s0, a3, s5
                  mulh         s3, s2, s6
                  andi         a3, s0, 133
                  xori         s1, s10, -1065
                  slt          s6, a1, s0
                  sll          a7, s7, t6
                  sll          t3, s11, gp
                  ori          gp, s10, -1259
                  mulhu        s0, a5, s9
                  remu         s10, t1, s8
                  mulh         s2, t4, s8
                  mulh         a5, s0, a4
                  divu         a7, a5, s2
                  srli         s1, t5, 28
                  lui          gp, 369139
                  rem          s9, s7, s4
                  auipc        t4, 378468
                  rem          t1, s10, ra
                  mulhsu       t4, t2, t5
                  addi         a1, t6, -460
                  or           a5, s2, s11
                  remu         s4, a6, tp
                  sra          gp, t6, s9
                  mulh         a7, s2, a5
                  xori         t2, s10, -978
                  ori          a5, a5, 1770
                  divu         s2, s6, a0
                  div          s6, s5, s1
                  xor          gp, t3, a0
                  srai         s7, s5, 4
                  sll          s10, sp, a3
                  and          a1, t5, s6
                  slli         a5, s10, 24
                  ori          a2, gp, 1450
                  slt          s3, s5, tp
                  xori         s5, a0, 688
                  div          s7, s8, a0
                  rem          s3, s0, zero
                  auipc        t1, 885113
                  sltiu        s6, s4, 726
                  srli         s4, a1, 20
                  srl          s2, s2, s11
                  sltiu        s6, s11, -1035
                  xor          a7, s3, s6
                  sll          zero, t4, s9
                  slt          s1, s2, s8
                  or           s4, t6, tp
                  sub          t6, tp, s6
                  divu         a2, s1, s4
                  slli         s2, s4, 5
                  mulh         s4, s0, t0
                  sub          a1, t2, s0
                  mulhsu       s0, gp, a7
                  slli         s3, zero, 1
                  auipc        ra, 1029452
                  div          ra, ra, tp
                  remu         s6, t4, a1
                  mul          a0, sp, s4
                  or           zero, s8, a3
                  mul          s9, t3, s10
                  div          t1, t6, t4
                  andi         s2, s9, -1376
                  sltu         a3, ra, s8
                  slti         s10, a3, 1029
                  div          t4, a7, s6
                  divu         a1, zero, a3
                  remu         tp, s11, s1
                  xori         s1, a3, -982
                  sltiu        a2, a1, 1559
                  lui          s2, 918084
                  mulhsu       a1, sp, s4
                  sub          s1, a5, a6
                  sltu         a1, s9, s1
                  slt          s8, a7, t6
                  and          a1, s1, a6
                  andi         s3, zero, -1423
                  xori         s3, s10, 1812
                  andi         gp, a4, 1041
                  slli         a7, t1, 21
                  lui          t5, 112638
                  slli         s0, s10, 9
                  rem          sp, s7, s10
                  add          a5, a2, s8
                  slli         s8, gp, 4
                  auipc        t1, 95320
                  div          s0, zero, s5
                  mulhsu       s6, t6, t3
                  slt          t0, s11, t5
                  sll          t4, a2, a0
                  rem          s7, t0, s11
                  xori         t4, a0, -1068
                  srli         s5, s11, 28
                  sltiu        a2, gp, -1760
                  slli         s7, s11, 27
                  slli         s6, t4, 13
                  sub          gp, t6, s9
                  slti         s4, a3, 777
                  slli         s8, s3, 0
                  srl          a7, a6, t0
                  or           s2, tp, t0
                  mulhu        tp, t1, s5
                  slti         a7, t3, -491
                  xor          t5, a5, a7
                  ori          s0, gp, 421
                  srai         s10, zero, 6
                  nop
                  and          zero, s0, a1
                  remu         t6, zero, a5
                  sltiu        gp, a5, -1815
                  slti         t6, s1, -787
                  mulh         a3, s9, sp
                  mulhsu       a7, a5, tp
                  auipc        t1, 747237
                  srl          a1, s1, a0
                  remu         s7, s4, a0
                  remu         s1, s9, ra
                  mulhu        s7, s4, s6
                  sra          gp, ra, t4
                  or           s7, t1, s7
                  ori          a7, s1, -1171
                  sub          a0, t5, s11
                  xor          zero, s1, s1
                  mulhsu       s3, gp, s7
                  sll          s1, s5, s8
                  andi         a0, a6, -436
                  divu         s4, s0, s2
                  sll          zero, s6, a6
                  sll          t4, t5, t0
                  div          ra, s0, tp
                  lui          a2, 487436
                  slti         s6, a1, -1904
                  auipc        s4, 611397
                  auipc        a5, 430819
                  sll          t0, a7, s1
                  rem          s1, t1, gp
                  sltiu        a5, s4, -2030
                  xor          t2, t4, t3
                  mulhu        a7, sp, a3
                  auipc        t5, 393210
                  sll          gp, a0, a3
                  sub          a7, sp, t0
                  xor          s4, s8, s2
                  xor          a7, tp, a4
                  sll          s2, t3, t4
                  srai         t3, a5, 1
                  or           gp, s6, s1
                  addi         a0, sp, -1988
                  divu         a7, a1, a6
                  srl          s5, s9, sp
                  mulhu        sp, a3, t6
                  xori         s6, a0, -800
                  srli         tp, a2, 26
                  addi         s0, t4, -1343
                  srai         a7, s8, 21
                  sll          s0, s11, ra
                  xori         a3, s0, -1467
                  andi         t3, a2, 1563
                  srl          s4, s6, s7
                  sll          a1, s7, t5
                  andi         a0, t3, -1758
                  sra          t0, s11, s9
                  remu         t0, s1, s5
                  div          s5, a6, s7
                  sltu         ra, a5, s5
                  nop
                  sltu         s6, a7, s4
                  slti         s3, a1, -788
                  sltiu        s2, s9, -247
                  sltu         s8, a6, a0
                  auipc        t0, 296228
                  sll          t1, t1, tp
                  lui          tp, 1039608
                  nop
                  slt          s3, s4, s7
                  divu         t0, a3, s7
                  xor          s3, ra, a3
                  div          a2, a1, s0
                  sltu         t5, s8, s5
                  add          t4, s11, ra
                  srai         sp, a0, 5
                  auipc        s4, 86877
                  divu         s6, a3, s4
                  srli         s7, t3, 30
                  add          a0, t1, s11
                  mulhu        a5, a7, a6
                  remu         s4, s7, a7
                  addi         zero, s1, -421
                  nop
                  mulhsu       a7, s0, t3
                  div          t0, tp, s1
                  slt          s1, t1, s1
                  mulhsu       s10, t2, sp
                  div          a7, s9, s8
                  sra          s8, s2, a4
                  srai         tp, t2, 9
                  sltu         ra, zero, s10
                  mulh         s1, s10, sp
                  sll          s10, s0, t4
                  sltu         t2, s4, t2
                  slli         a5, s3, 18
                  sub          a0, s3, t2
                  add          a5, gp, s11
                  addi         sp, a2, -151
                  mul          gp, s10, t1
                  auipc        s4, 3967
                  sltu         s4, ra, s3
                  mulh         s10, ra, a5
                  xor          a7, a7, s1
                  rem          t6, s10, s5
                  sub          a1, s7, gp
                  slli         s0, s10, 11
                  addi         sp, a6, 356
                  nop
                  slli         s9, a2, 25
                  auipc        s2, 274495
                  slli         a7, ra, 2
                  sll          a5, a2, s0
                  addi         ra, s2, 1370
                  mul          s2, a0, tp
                  srai         gp, t0, 11
                  sub          t0, sp, s6
                  divu         a0, a5, s5
                  mul          s1, s6, s10
                  lui          t3, 534285
                  mulhsu       s7, t4, s10
                  and          t3, t4, s4
                  remu         a5, s7, ra
                  sll          a5, t3, sp
                  mulh         gp, a1, a5
                  remu         sp, t1, s10
                  slti         t3, tp, -1733
                  mulhu        tp, s5, s8
                  slli         s9, s2, 1
                  srl          a3, s1, t4
                  addi         s2, s0, 1812
                  xori         t4, a1, -1822
                  srai         s0, t2, 25
                  mulhsu       s7, a5, t0
                  slli         t2, a1, 18
                  sll          t5, s2, a5
                  mulhu        t1, s8, a3
                  sltiu        a2, s4, 625
                  sltiu        a0, t2, -1151
                  addi         s8, a2, -860
                  mul          t3, a5, a2
                  srli         t4, zero, 17
                  auipc        zero, 1014589
                  slt          zero, s4, s3
                  sltiu        a0, t4, -1267
                  rem          s7, s0, t1
                  remu         a0, zero, a7
                  lui          tp, 740256
                  xori         a7, t2, 1495
                  srl          a2, s4, zero
                  add          a5, t1, a5
                  mulhu        a3, t6, s7
                  sltu         s0, t0, a1
                  sll          a1, s2, a3
                  xori         gp, zero, -315
                  lui          a0, 949730
                  xori         a5, zero, -284
                  add          s1, sp, t3
                  sltiu        t6, a5, 363
                  slli         s10, s3, 26
                  or           t3, s9, zero
                  srai         a1, tp, 30
                  sub          sp, a5, t0
                  sub          t6, s3, a0
                  or           t4, s0, ra
                  srai         a1, t2, 8
                  and          t2, a7, a7
                  mul          s0, a6, t6
                  mulh         t6, s7, t1
                  slli         t0, t1, 29
                  or           s0, a3, a5
                  srai         s5, a6, 23
                  divu         t4, a6, sp
                  sub          t1, t4, t4
                  mul          s6, s9, zero
                  slt          s8, a4, t6
                  lui          gp, 829725
                  sll          a3, s3, s2
                  sltiu        ra, s7, -726
                  div          a2, s4, sp
                  rem          ra, a5, t3
                  sra          a5, a1, a5
                  mulhu        t0, a0, t4
                  remu         s9, a0, t0
                  srai         s4, t2, 24
                  remu         sp, t2, s5
                  xor          t0, a2, s0
                  slt          tp, sp, s6
                  xor          s4, t2, t5
                  add          s4, s10, s1
                  sltu         t3, t3, a4
                  auipc        a3, 579074
                  lui          s9, 851901
                  srl          sp, a6, t3
                  div          s2, sp, s7
                  srl          t6, t0, s2
                  auipc        gp, 49039
                  mulhsu       s1, t2, s4
                  mulh         s2, s10, t4
                  srli         s1, t5, 20
                  slti         a1, s0, -1696
                  sra          sp, a0, s3
                  xori         s8, s4, -427
                  remu         a3, t0, s4
                  mulhsu       t6, a1, a1
                  lui          s10, 462610
                  div          s8, t3, a7
                  srai         a3, a5, 9
                  slli         s9, a3, 2
                  sltu         zero, gp, tp
                  or           a7, s7, t1
                  sub          s9, s4, t1
                  sll          t0, t6, s0
                  rem          a0, a1, sp
                  andi         t1, s4, 29
                  mulhu        t2, s7, a1
                  srli         ra, s0, 28
                  mulh         s1, t0, s10
                  and          a1, s7, tp
                  sltu         t1, s11, s1
                  or           s3, s2, s7
                  mulhsu       s4, a5, s8
                  mul          s5, t2, zero
                  srai         s9, s8, 3
                  sra          t0, a6, a7
                  addi         s3, s11, -1188
                  divu         zero, a0, s7
                  add          s7, s2, t5
                  srl          s1, t4, a3
                  mulh         s2, a7, gp
                  nop
                  sltu         t6, s6, s10
                  addi         a7, s6, 1618
                  nop
                  xor          s0, tp, t1
                  xor          zero, s6, zero
                  sll          s9, a4, a5
                  mulhsu       a7, s4, t5
                  srli         a7, s6, 22
                  rem          a3, s6, s9
                  slti         s6, a4, 1132
                  auipc        s10, 414182
                  ori          s5, a1, 439
                  lui          s8, 996317
                  srai         a5, a2, 27
                  mulhu        s2, a5, t1
                  and          s3, ra, a0
                  xori         a3, sp, -931
                  sll          s5, s5, s10
                  xor          s8, s11, a5
                  slt          s2, t1, a2
                  slti         zero, t5, -1443
                  sra          s6, t1, s9
                  srl          a1, a5, s1
                  srli         t4, gp, 18
                  rem          s4, zero, s11
                  sub          a7, gp, a0
                  sll          a5, s1, s0
                  slt          t0, t6, t2
                  nop
                  slt          a5, t2, t5
                  andi         s5, s10, -1765
                  sra          s8, a3, s8
                  sltiu        t4, s7, 1217
                  lui          s8, 220657
                  andi         s5, t3, -152
                  divu         t6, s8, a3
                  addi         s2, s9, 1070
                  andi         sp, sp, 899
                  mulhu        s0, t3, s6
                  andi         zero, s6, 446
                  sltiu        s4, a1, 1095
                  srli         zero, t4, 6
                  andi         t2, t4, -803
                  xori         a5, a1, -53
                  auipc        a3, 574065
                  lui          gp, 265148
                  sltiu        sp, s0, -1953
                  divu         s4, t3, a5
                  mul          t0, sp, t1
                  ori          t1, t3, -894
                  addi         t3, a0, 1781
                  mulhsu       s5, zero, t3
                  sll          a1, s6, a5
                  rem          tp, s3, a1
                  lui          s6, 511046
                  lui          ra, 26300
                  srli         s6, ra, 9
                  slli         s10, t6, 12
                  srl          a0, s2, zero
                  and          tp, a5, s5
                  mulh         t6, a5, t1
                  srl          s5, a5, a4
                  lui          s5, 60553
                  add          s2, s11, s8
                  lui          s3, 396396
                  mulh         a1, s1, tp
                  or           ra, s10, a7
                  or           s6, s0, a7
                  or           a2, s9, s0
                  sll          a2, s7, s11
                  sra          s1, gp, s4
                  slt          t1, s11, a4
                  divu         s4, s6, a2
                  addi         sp, a2, 1763
                  sll          t3, t3, t3
                  divu         sp, a3, a7
                  slt          t5, sp, s4
                  sll          s10, gp, s4
                  sltiu        a5, t1, -382
                  remu         gp, tp, t0
                  ori          s6, s7, 617
                  sub          sp, s0, a6
                  or           a2, s6, t1
                  slt          s0, a3, s4
                  sll          a3, s7, s2
                  auipc        gp, 329347
                  sll          zero, t2, s1
                  andi         ra, s0, 1706
                  and          s1, s11, t4
                  slli         a7, sp, 5
                  xori         gp, s11, 1321
                  lui          t2, 353011
                  slt          s7, s2, a6
                  slt          s4, a1, a4
                  xor          t3, zero, a7
                  sub          a1, tp, s4
                  and          t4, s11, zero
                  andi         ra, s9, -1474
                  add          s3, a1, t1
                  sub          s4, a1, ra
                  srai         gp, t6, 3
                  sra          s5, gp, t4
                  slli         a1, a6, 8
                  mulh         s6, t0, a2
                  sub          a5, a1, s7
                  slli         a5, a3, 17
                  andi         s1, a6, 456
                  slt          t6, t4, a0
                  sra          s10, t1, tp
                  lui          t5, 1031582
                  ori          s2, s10, 190
                  or           s2, a3, t3
                  srai         t2, s4, 30
                  remu         t5, t6, s0
                  div          s9, tp, zero
                  auipc        t4, 938066
                  lui          t3, 973295
                  mulhu        s7, s11, a2
                  or           s6, s1, s3
                  slti         t5, a2, -589
                  div          s5, t0, gp
                  or           t4, s0, t4
                  ori          s9, a5, 1360
                  andi         t5, a4, -1116
                  andi         s6, s10, -1474
                  mulhu        s2, t5, s3
                  sub          s0, s1, t5
                  xori         t6, s9, 427
                  mulhu        s1, t3, s6
                  srai         t0, a2, 11
                  nop
                  mulh         t3, t2, t6
                  mulhu        t3, t3, tp
                  mul          a0, t1, t4
                  sltu         s2, s4, t2
                  div          s2, s9, s10
                  srl          a7, a5, s9
                  auipc        a3, 941610
                  sltiu        tp, a4, -200
                  sll          s10, a7, s1
                  addi         t5, a3, 1828
                  or           a7, s7, tp
                  mulhu        a2, sp, s0
                  xor          a5, s10, s7
                  slti         t6, s9, 211
                  nop
                  sltu         ra, t0, ra
                  add          sp, t6, s6
                  rem          s7, a6, a1
                  auipc        zero, 1004317
                  slti         gp, s6, -2
                  mulh         a3, s10, s5
                  slt          gp, t3, s5
                  mulhu        a2, t3, s7
                  sra          a0, tp, a2
                  slti         a5, s2, -1876
                  sll          s2, ra, t1
                  xor          s4, a3, a3
                  slti         zero, s6, 1922
                  or           t5, s11, s7
                  rem          a3, t1, zero
                  mulhsu       s0, s1, t0
                  sub          s9, zero, s6
                  mulhsu       t4, t3, a6
                  xori         t1, a7, -1368
                  div          s3, t1, s10
                  rem          s10, s1, s5
                  sltu         s1, s8, s1
                  srli         t1, s8, 24
                  rem          zero, s9, s7
                  div          t0, s8, s2
                  srai         tp, a0, 28
                  srli         a3, gp, 30
                  srai         a0, a4, 7
                  div          a2, a4, sp
                  auipc        t5, 568519
                  slli         a7, a3, 8
                  sub          a5, a2, s2
                  and          zero, zero, s11
                  div          t5, s6, s11
                  div          s3, a6, s10
                  remu         t6, zero, a3
                  sub          s2, t1, t2
                  xori         tp, s7, 1686
                  slt          a3, s0, s6
                  andi         a2, s11, -1087
                  xori         t3, t0, -156
                  ori          s0, a7, -1743
                  xor          s6, s0, s7
                  rem          s2, ra, zero
                  mulh         s10, s1, t5
                  sra          zero, a1, s11
                  sra          s2, a2, s11
                  sll          a7, a2, a1
                  slti         s1, s3, -1718
                  srai         t2, s3, 17
                  slti         t5, s8, 1410
                  xori         s9, s11, 600
                  srli         tp, t4, 18
                  srli         a7, s2, 14
                  nop
                  nop
                  mulhu        ra, gp, s3
                  rem          s2, ra, s0
                  remu         gp, t6, ra
                  slli         gp, t1, 14
                  sll          t4, a0, t0
                  slt          a1, s1, a0
                  sll          a2, t6, ra
                  mulhu        s7, a7, t2
                  addi         gp, t3, 1670
                  sub          s6, a5, s6
                  srai         s8, a0, 15
                  auipc        s5, 800316
                  slti         gp, t5, -664
                  add          t6, s8, s10
                  remu         a2, t4, t1
                  or           a0, s3, a5
                  andi         a5, s1, -97
                  sra          s2, t3, a6
                  sltiu        a1, zero, 338
                  ori          zero, s9, 806
                  sll          a7, ra, s4
                  sra          s1, sp, s8
                  and          gp, sp, ra
                  lui          s6, 40621
                  slli         s8, a0, 12
                  srl          s8, t5, a2
                  mulh         t0, a7, a3
                  add          tp, s0, a0
                  sltiu        sp, t1, 1269
                  mul          a0, gp, a1
                  mulhu        a3, s1, a6
                  nop
                  mul          zero, a3, s4
                  auipc        a3, 698521
                  xori         t4, t1, -1478
                  mulhsu       gp, a6, s8
                  divu         a7, s10, s10
                  mulhu        s10, a6, tp
                  mulhsu       zero, s5, s6
                  sltu         s5, t4, gp
                  rem          a3, t6, t1
                  div          zero, s1, s6
                  auipc        s8, 280414
                  slt          s1, s10, s10
                  remu         s10, t1, t6
                  rem          t4, a1, a3
                  add          s2, t1, s4
                  xori         a5, t0, 1041
                  div          a1, s9, t2
                  and          a2, zero, s2
                  srli         t6, a4, 26
                  rem          t0, s5, a0
                  slt          a7, zero, s10
                  addi         s5, s0, 66
                  srai         gp, s0, 24
                  srl          t4, tp, a1
                  slt          t6, s6, a7
                  xor          s4, a1, s3
                  remu         a1, s1, t0
                  addi         a0, s4, 447
                  mulh         s5, t1, s1
                  nop
                  srai         s0, t2, 29
                  srli         s3, s4, 10
                  remu         t5, t2, t5
                  srl          a0, s7, s11
                  sll          s5, a6, t4
                  addi         t6, s2, 214
                  sub          t0, t0, s2
                  divu         t3, t3, s7
                  srli         t2, a7, 28
                  slti         s5, s10, -1227
                  mulhu        t3, s7, t0
                  srli         a3, s7, 0
                  slt          tp, gp, s4
                  srli         gp, t4, 14
                  add          ra, t1, t4
                  auipc        s4, 521692
                  mulh         t4, t1, s4
                  xor          s9, t2, s11
                  lui          t6, 375749
                  sll          s8, a6, t3
                  srl          zero, s11, t3
                  xor          t6, s11, s10
                  sra          a7, t1, gp
                  and          t5, zero, a0
                  slti         s9, a0, 1473
                  mul          gp, s11, s8
                  addi         s7, s9, 908
                  sub          t1, s8, a0
                  divu         gp, sp, zero
                  xor          a7, s1, t6
                  sub          t2, s7, s3
                  rem          gp, sp, t4
                  and          sp, s2, s8
                  mulhsu       s9, t0, s7
                  nop
                  nop
                  mulh         gp, t3, s8
                  slt          t1, a5, t3
                  and          t6, a4, s7
                  or           t4, s6, s3
                  mulhsu       t4, s0, s3
                  mulhsu       t2, t1, s3
                  sltu         s1, t5, zero
                  srl          s3, gp, s8
                  srai         s10, s6, 22
                  srl          s3, a6, s8
                  lui          s3, 943649
                  mulh         ra, tp, a7
                  rem          s10, t2, a5
                  addi         s2, zero, 459
                  div          a3, s10, a4
                  srli         t1, s6, 11
                  remu         s10, a7, t2
                  mulh         t5, t5, a7
                  slli         t2, t3, 21
                  addi         s7, t1, -1232
                  slli         s6, sp, 16
                  divu         s2, s2, s1
                  and          a2, a2, s1
                  mul          s4, zero, t6
                  add          gp, t6, a7
                  add          t3, s0, s9
                  sltiu        t2, a4, -442
                  addi         s3, s11, 1072
                  or           s6, s11, t5
                  sub          s3, s0, s11
                  xori         s8, a3, 189
                  divu         s8, s7, t2
                  div          s10, s4, t5
                  sltu         zero, s1, s1
                  div          a2, gp, s9
                  and          t1, a2, s2
                  srai         s9, a5, 16
                  auipc        t5, 191288
                  lui          s4, 759661
                  auipc        s5, 37218
                  mul          t1, t0, a1
                  auipc        tp, 861675
                  srl          t6, zero, t6
                  slti         s7, s2, 648
                  divu         t4, s11, s4
                  slt          s7, t4, t3
                  lui          a2, 992849
                  mulhsu       s3, t1, s5
                  sub          s10, a5, a3
                  andi         a2, s1, 102
                  ori          s10, zero, 1519
                  sltiu        t4, a7, 1979
                  or           a5, a7, s2
                  nop
                  and          s4, t4, a7
                  or           a1, a2, gp
                  slti         a3, s8, -1720
                  slti         zero, a4, -109
                  sltu         s5, a0, a1
                  sll          s7, t2, a1
                  srli         a3, ra, 21
                  sltiu        a7, t0, 759
                  add          t1, a4, a6
                  sra          s4, s1, s1
                  remu         s10, s0, a5
                  remu         a2, t4, a2
                  slli         zero, a4, 15
                  addi         t3, ra, 1341
                  or           a1, t5, a1
                  rem          s9, s6, s9
                  xor          a2, s4, s4
                  srli         tp, gp, 9
                  remu         s3, s1, a0
                  remu         s8, t2, tp
                  mulh         s6, t3, t4
                  andi         a7, ra, -1552
                  nop
                  srli         a7, s3, 12
                  remu         s8, s10, s3
                  sltiu        s2, a6, 129
                  mulhu        tp, tp, s8
                  ori          s3, t4, 858
                  div          a2, sp, a1
                  sll          s2, gp, t6
                  nop
                  div          s10, s3, a0
                  ori          s6, s9, 1433
                  divu         gp, s1, t2
                  sra          s3, t3, a5
                  xori         t4, t4, -283
                  slt          s0, s2, s4
                  lui          a2, 69583
                  slti         t0, s2, 47
                  srl          a5, sp, s2
                  and          s9, a0, t0
                  mul          s3, gp, s8
                  mulhu        s10, s6, s6
                  sra          t4, s10, s1
                  xor          a3, s7, a3
                  xori         s8, s3, -512
                  sub          t5, s9, s0
                  lui          s7, 883973
                  divu         t6, t0, a5
                  mulh         a0, t1, a4
                  mul          zero, a0, s3
                  sll          t6, t5, s5
                  slli         zero, a7, 25
                  rem          s2, a6, s0
                  srai         t6, s3, 29
                  div          a2, t1, a7
                  srai         a5, t6, 23
                  ori          t0, s9, -1526
                  or           s10, a1, a1
                  srl          a1, a5, t5
                  sltiu        s2, s8, 924
                  lui          s7, 481189
                  mulh         s2, s7, zero
                  srai         ra, gp, 5
                  lui          a2, 545703
                  slli         a0, s6, 7
                  slli         s1, s1, 2
                  nop
                  ori          t6, s6, 430
                  addi         s6, s0, 434
                  andi         t3, a0, 289
                  mulh         tp, t3, t4
                  xori         sp, s10, 1395
                  sll          t3, s1, ra
                  auipc        t1, 541873
                  divu         s4, s4, s2
                  div          s9, gp, t1
                  remu         a2, s4, s3
                  slli         zero, t4, 13
                  andi         s3, a7, 702
                  andi         s9, t3, 522
                  rem          a1, s5, a3
                  addi         a0, a5, -330
                  remu         t0, s8, s5
                  add          gp, zero, s8
                  ori          gp, s1, 914
                  slli         s6, s6, 10
                  srli         zero, a7, 17
                  divu         s10, t6, ra
                  and          s2, a5, a5
                  sub          a3, s7, a6
                  or           t1, t3, s6
                  lui          ra, 516409
                  div          s1, a6, t2
                  mul          s6, s5, zero
                  sltu         s7, gp, s3
                  sub          a5, ra, s10
                  rem          gp, s2, t6
                  lui          s2, 5035
                  sltu         a2, gp, s5
                  xor          s0, ra, s2
                  mul          t1, s5, s3
                  add          s2, sp, s9
                  slli         s0, a2, 12
                  slli         gp, a5, 28
                  sltu         s6, t2, sp
                  mul          s1, s7, t5
                  xor          s8, s6, t0
                  slt          t6, tp, s1
                  andi         s10, s8, -1493
                  xor          zero, t4, t2
                  srai         s4, t0, 13
                  xori         a3, t3, 498
                  slt          s3, s4, s2
                  xori         a1, s8, 540
                  ori          a7, s9, -1527
                  nop
                  rem          t5, a5, a7
                  remu         s8, s4, s0
                  ori          s6, tp, 1992
                  slt          s1, s4, s7
                  sll          s2, t6, a5
                  rem          tp, t6, a0
                  addi         a7, a5, -1320
                  slti         s5, s10, 1384
                  nop
                  nop
                  sub          a1, s3, t3
                  mulhu        a5, t2, t6
                  srl          sp, a3, a3
                  mul          s5, s1, gp
                  or           zero, zero, t0
                  sra          a1, a3, s0
                  sra          sp, s5, t0
                  nop
                  div          a7, a5, a7
                  or           t0, a6, t5
                  sub          ra, s2, sp
                  sltu         s8, s8, t4
                  mulh         ra, a5, t5
                  ori          tp, s0, -151
                  mulhu        zero, s2, a1
                  sub          s3, s3, t2
                  srl          s5, s6, s7
                  lui          a7, 377466
                  srli         ra, s8, 6
                  slli         a2, t3, 10
                  srai         s8, ra, 1
                  ori          t0, t3, 823
                  mul          t1, a4, sp
                  rem          a1, s3, s8
                  addi         s9, tp, 443
                  and          sp, zero, tp
                  sltu         a3, tp, s11
                  mulhu        zero, a5, s6
                  slt          t0, a7, t5
                  nop
                  srli         a1, a4, 0
                  srai         s6, t4, 12
                  mulh         t0, a4, s6
                  sub          t3, s9, s2
                  rem          s9, a0, t1
                  sra          s3, t6, s1
                  divu         s9, t6, s3
                  mulhsu       gp, s6, ra
                  andi         t0, sp, 673
                  slt          s7, s8, a6
                  nop
                  slti         s6, s3, 1913
                  nop
                  add          tp, t1, a1
                  addi         s5, a3, 140
                  rem          s3, s2, s4
                  mulhsu       zero, s7, a0
                  slli         a0, s0, 29
                  sltu         s9, a7, s5
                  addi         s8, t0, 724
                  xor          s0, a1, tp
                  rem          zero, sp, tp
                  slti         s0, tp, -1895
                  mulh         s8, a5, t5
                  ori          s5, t5, 679
                  xor          s2, gp, s0
                  sra          t5, zero, a6
                  xori         s6, tp, -1119
                  ori          t1, zero, 739
                  mulhsu       t0, s2, s8
                  srl          gp, t2, s11
                  add          s3, s8, ra
                  xor          a2, a0, s6
                  slt          t1, s11, s5
                  rem          ra, a3, s4
                  andi         a3, sp, -1056
                  lui          tp, 208845
                  sll          s7, s0, s2
                  nop
                  andi         s3, t6, 580
                  xori         s3, t5, 1148
                  sra          t6, s1, t0
                  mul          s1, t0, s0
                  xor          s8, s8, ra
                  and          s6, zero, s3
                  addi         s1, t6, 1430
                  andi         t4, a1, -51
                  mulh         t6, t2, t3
                  sra          a3, a2, s5
                  and          t6, t0, a2
                  andi         zero, sp, 1220
                  add          a2, a7, s11
                  lui          t0, 473980
                  ori          s6, s10, 557
                  rem          s10, tp, t4
                  sra          t5, tp, s1
                  rem          s8, gp, s8
                  srai         t4, gp, 10
                  nop
                  ori          s6, a5, -1820
                  lui          t6, 102937
                  lui          s5, 460845
                  slli         s10, gp, 31
                  auipc        s1, 188856
                  slti         s6, s4, -27
                  srai         s4, a1, 24
                  nop
                  slli         tp, t5, 5
                  mulh         a1, t1, tp
                  remu         t4, t4, s5
                  rem          s10, s4, s1
                  ori          a0, tp, 1186
                  slli         t0, s3, 30
                  sub          t0, a1, sp
                  addi         t2, a3, -957
                  and          a0, s6, t4
                  nop
                  srai         tp, s6, 29
                  sll          t4, t4, s11
                  sll          t1, s9, s8
                  srai         sp, a7, 24
                  mulh         s3, a3, a1
                  xori         tp, s8, 1292
                  slti         a5, a2, -1988
                  ori          tp, t4, -667
                  mulh         zero, s3, t2
                  srl          s7, s3, ra
                  sll          t3, a6, a1
                  rem          ra, s2, s8
                  ori          gp, t6, 360
                  mulhu        a1, t2, zero
                  slti         a5, s8, 1724
                  sra          gp, t2, s7
                  sltu         s10, a7, sp
                  div          s10, s6, a2
                  and          s7, s4, s4
                  div          tp, s8, s0
                  auipc        gp, 279463
                  lui          s3, 302170
                  rem          t3, zero, s4
                  slt          a1, s1, s4
                  srai         t2, s5, 12
                  sll          t3, t3, s10
                  div          ra, s5, s10
                  add          s5, a0, s1
                  slli         t6, t6, 23
                  srai         s5, s8, 28
                  add          s9, t2, s0
                  addi         t1, t4, 689
                  mul          t1, s6, s9
                  rem          a3, s7, tp
                  mulhsu       t3, a1, t4
                  xori         s1, tp, -1947
                  auipc        s6, 20718
                  lui          zero, 215251
                  sltu         s10, t4, a3
                  or           t1, s7, s1
                  sltiu        gp, s5, -648
                  ori          a3, s7, -256
                  slli         a1, a3, 31
                  or           s2, s8, s0
                  slli         t5, a5, 26
                  xor          t2, s1, ra
                  sll          t6, s4, s7
                  sll          a7, sp, a0
                  sub          a2, t5, t4
                  remu         t5, s5, s3
                  ori          t2, a7, -1049
                  srli         a5, tp, 13
                  slti         t6, zero, 1603
                  slti         a7, gp, -1357
                  mulh         s1, gp, t0
                  xori         t4, tp, -100
                  xor          s8, s11, t2
                  sltu         a7, s1, tp
                  slli         zero, gp, 11
                  rem          s7, s2, t6
                  xor          s3, s11, a0
                  divu         a3, s6, t6
                  srl          ra, t4, s11
                  rem          a1, s5, a2
                  add          t0, gp, t1
                  add          s10, t5, s10
                  mulhu        a5, s5, s3
                  mul          a1, ra, s2
                  auipc        s0, 969020
                  xor          a2, t1, s6
                  xor          a3, s2, a5
                  sub          t0, s3, t4
                  sll          s1, s7, s6
                  and          a0, a4, t6
                  sll          a2, s7, s1
                  ori          t3, s3, 1983
                  mulhsu       sp, a5, sp
                  sltu         a1, s0, a1
                  sltiu        s4, a5, -893
                  sll          t1, s7, a7
                  mul          t5, a5, tp
                  slli         t0, t2, 25
                  remu         t0, s9, t1
                  div          a3, s8, s11
                  sll          t6, s5, s1
                  sll          s10, a2, a2
                  divu         s6, s5, s7
                  or           t0, gp, s9
                  sltiu        s2, s0, 1965
                  ori          zero, s8, 1199
                  mulh         a1, a2, s6
                  mulh         s1, s0, s9
                  divu         s5, s8, t0
                  lui          t4, 506701
                  srli         s9, zero, 16
                  sll          zero, s1, a3
                  sub          s4, sp, sp
                  srai         s6, a1, 23
                  addi         sp, sp, -160
                  or           s5, a1, s0
                  sll          a2, tp, gp
                  slli         a7, t3, 15
                  or           zero, s3, s11
                  auipc        t1, 773724
                  slt          s7, s8, a1
                  div          t4, s7, t1
                  addi         a1, sp, -1304
                  add          t0, a6, s10
                  or           s0, a2, a7
                  rem          tp, t5, t2
                  xor          a1, a5, gp
                  sll          s2, a5, s5
                  divu         s2, s5, s8
                  auipc        a2, 153735
                  mulh         s4, t1, s3
                  auipc        s10, 642304
                  ori          t3, a7, -1541
                  slti         sp, a5, -1711
                  mulh         a5, a2, s3
                  ori          a5, s11, -568
                  remu         a0, t3, gp
                  auipc        a5, 23842
                  remu         s6, s1, a3
                  or           t6, a5, s2
                  sub          s4, t2, t1
                  slt          s4, s5, s4
                  remu         s6, t5, s10
                  sub          s3, s11, t0
                  nop
                  ori          s5, a4, 888
                  andi         s2, t6, 1838
                  lui          s9, 322962
                  auipc        s9, 619522
                  rem          t1, a6, a0
                  slt          s9, gp, s11
                  slti         a0, s11, -289
                  addi         t6, s7, -569
                  srli         t1, ra, 28
                  slti         s10, s5, -479
                  sll          gp, a0, t4
                  or           a7, gp, s4
                  xori         s0, s4, -1897
                  slti         t3, a0, -1254
                  ori          a1, t6, 323
                  xor          s10, t0, s7
                  xor          a2, a7, a6
                  and          s2, t5, t1
                  sub          t6, a6, s4
                  sll          t5, t6, s10
                  sll          a3, s4, a1
                  or           tp, s4, s11
                  slli         s2, s8, 10
                  slli         s2, a2, 10
                  andi         a5, s2, 1579
                  srai         t1, gp, 18
                  srl          t6, s9, t5
                  add          a2, t1, a7
                  sub          a5, s5, a1
                  auipc        t2, 888614
                  mulhu        s5, s0, t4
                  or           t4, zero, ra
                  and          s10, a7, a5
                  srli         a3, a7, 11
                  sll          s2, zero, s5
                  ori          s2, s8, 228
                  nop
                  auipc        tp, 263440
                  xori         s1, a1, -174
                  slti         t2, a4, -1741
                  slli         s8, a4, 5
                  or           t3, a4, s4
                  sll          s5, t2, a1
                  mulhu        s4, s4, t0
                  and          sp, a1, s9
                  auipc        s10, 731890
                  add          sp, s7, s1
                  sub          a7, s3, a6
                  slt          t1, a7, tp
                  or           s6, s4, t5
                  sltu         a0, t3, s1
                  mulhu        s9, t0, a0
                  sltu         a1, s9, t2
                  remu         s2, t4, a6
                  divu         s8, s0, sp
                  sltu         gp, s3, s9
                  or           sp, a7, s9
                  rem          s10, t5, a2
                  mulhsu       a2, s9, s4
                  or           a0, t0, a3
                  xori         t2, s5, -649
                  slli         s6, s3, 16
                  remu         s6, s0, t2
                  sub          zero, sp, s11
                  slt          a2, a0, a5
                  sub          s4, t3, gp
                  sltiu        a7, s7, -1736
                  sra          s6, sp, s2
                  auipc        t1, 152205
                  srl          t1, t5, s2
                  mul          zero, s4, ra
                  mulh         a3, zero, t4
                  mulhu        s6, tp, t5
                  div          gp, s1, s8
                  xor          t1, t2, a2
                  srl          s9, a6, s3
                  sub          zero, t1, s10
                  remu         s2, tp, s8
                  sltu         zero, s11, a6
                  slt          s4, ra, a6
                  sltiu        s3, s6, -1283
                  sra          a5, gp, t4
                  add          t1, tp, t1
                  rem          a2, t6, a2
                  xori         zero, a0, -1472
                  addi         sp, t1, -267
                  div          s8, s10, a0
                  mulhsu       t1, t6, s7
                  mul          t2, s6, s1
                  or           t3, a0, t3
                  addi         s5, s1, 816
                  nop
                  ori          s0, s7, 1983
                  sltiu        s0, zero, -328
                  mulh         a0, a7, s4
                  addi         a0, s11, 841
                  nop
                  xor          s4, a2, s8
                  slt          a2, s0, t0
                  srli         s9, a3, 11
                  auipc        zero, 977917
                  nop
                  slli         a2, ra, 10
                  divu         t0, s5, s3
                  slti         s6, t6, -1455
                  srl          ra, s3, t2
                  slli         a1, t3, 10
                  srai         a7, tp, 24
                  sll          t3, s8, t4
                  ori          s8, s6, 1015
                  rem          a3, a4, s8
                  andi         t0, s11, 854
                  ori          s10, ra, -541
                  sltu         a0, s3, a0
                  mulhu        s3, t0, s1
                  sltu         s1, t6, a3
                  divu         tp, s9, s4
                  add          a2, a6, t6
                  sra          s8, a3, s1
                  sub          tp, tp, a6
                  or           t1, t1, a0
                  remu         t2, t6, t6
                  mul          s2, s9, s11
                  andi         t0, s3, 203
                  slti         sp, sp, 1229
                  ori          s3, t6, -1754
                  sub          a5, s5, s5
                  sll          a5, a3, a4
                  sub          s10, t2, zero
                  remu         zero, t1, s0
                  rem          t0, s5, a1
                  nop
                  mulhu        s9, s4, s1
                  slt          s7, t0, s2
                  ori          t5, sp, -335
                  xor          t3, a1, t3
                  and          zero, s5, t3
                  srl          t2, zero, a3
                  addi         t4, sp, 795
                  or           s4, s10, t2
                  divu         s4, t5, a5
                  or           s9, t2, a1
                  ori          a5, sp, 268
                  nop
                  sra          a2, s7, t4
                  sra          gp, t1, s9
                  rem          t5, s11, sp
                  ori          gp, ra, -1904
                  sll          a5, s6, a2
                  xori         a1, ra, 507
                  sll          t0, t3, sp
                  auipc        s6, 825146
                  xori         t1, a2, 1878
                  andi         a3, ra, 1419
                  nop
                  andi         s10, t5, 1257
                  auipc        a1, 84095
                  sltiu        zero, tp, -1687
                  divu         t3, s10, a7
                  sltu         s3, zero, t3
                  slti         s3, s9, -1884
                  sra          s10, a2, zero
                  add          a5, t3, a4
                  sltiu        s0, s8, -1485
                  addi         a5, a7, -483
                  srl          s7, t2, t0
                  sltiu        s3, a7, -317
                  div          tp, s5, s3
                  mulhu        s10, s11, s2
                  rem          a7, a2, t1
                  mulhsu       s10, s11, s7
                  srai         sp, a3, 5
                  and          tp, s11, a5
                  sra          s0, t5, s7
                  rem          sp, a4, t6
                  xor          s1, gp, a4
                  srl          s7, s5, t6
                  slti         s5, s11, -1389
                  xor          t6, s8, gp
                  rem          a5, a5, zero
                  and          s4, a6, t2
                  divu         s9, a3, s11
                  sll          s4, s0, s4
                  sltiu        t2, gp, -1850
                  srai         tp, zero, 13
                  auipc        t3, 964629
                  srli         a3, sp, 6
                  mulh         tp, tp, ra
                  mulh         s7, ra, s8
                  slti         s1, t2, 1510
                  srli         ra, s2, 1
                  auipc        a2, 757353
                  sltu         t5, s1, s6
                  xor          sp, s3, t6
                  add          s9, t5, sp
                  srli         a5, s8, 28
                  slt          t5, s7, t4
                  divu         s10, s0, a6
                  addi         a7, gp, 1797
                  lui          zero, 893752
                  add          s0, t0, s11
                  addi         s2, s10, -1481
                  srli         s4, s8, 11
                  andi         a0, s2, -340
                  rem          t5, t3, t5
                  xor          s0, gp, t0
                  nop
                  mul          s9, t6, s5
                  srl          s1, s1, gp
                  srl          s1, a3, a1
                  srai         t5, sp, 0
                  lui          s1, 879841
                  mul          a0, s6, a3
                  mulhu        a2, s8, a6
                  lui          t2, 405438
                  sltiu        ra, t4, -1191
                  nop
                  and          a2, s4, s1
                  or           t3, a5, sp
                  srai         s10, t5, 26
                  ori          s6, ra, -1746
                  andi         t1, t5, -1158
                  nop
                  slti         a2, t2, -58
                  sub          a7, zero, a2
                  andi         t6, sp, -448
                  slli         zero, s6, 1
                  and          s10, a7, s5
                  sltu         s0, t6, t5
                  srl          s3, t5, t1
                  xor          s7, a4, sp
                  sll          a1, t1, a2
                  sll          s1, s6, s3
                  addi         a0, s3, 1066
                  or           s1, t4, sp
                  slti         s8, s11, 352
                  lui          s1, 717083
                  nop
                  andi         s5, a4, -475
                  srai         t0, s9, 5
                  remu         s4, t1, zero
                  sra          s3, zero, tp
                  divu         t0, t6, a0
                  rem          s8, a7, s5
                  rem          gp, t1, t3
                  auipc        tp, 807569
                  xori         s8, t6, 1816
                  andi         s9, a0, 479
                  addi         t6, s0, -945
                  xori         t2, t5, 130
                  div          tp, a0, s1
                  sltu         t1, sp, a2
                  slt          ra, s0, t0
                  mulh         s5, s4, t2
                  sltu         s9, zero, t2
                  sll          gp, a2, s1
                  xori         sp, s8, -451
                  div          s2, t1, t3
                  xori         s10, tp, 1263
                  srli         ra, s0, 8
                  sltiu        gp, t3, 598
                  srli         tp, ra, 25
                  mulhsu       s6, t2, a0
                  mulhsu       t0, a0, s9
                  slli         s2, s10, 23
                  mul          sp, a3, tp
                  lui          t0, 404078
                  ori          s4, s11, 2010
                  div          s5, a7, t4
                  divu         a2, a1, t1
                  auipc        a0, 778039
                  srli         t6, s1, 21
                  slli         t1, s8, 4
                  sll          sp, a4, zero
                  sub          s10, a5, gp
                  xori         t6, a2, -1201
                  sub          t5, s5, s9
                  sltiu        a0, a3, -516
                  srli         s6, a2, 24
                  slti         s5, ra, 1808
                  slt          a2, tp, a0
                  remu         s2, t6, a0
                  remu         gp, a0, a3
                  xor          a5, s11, s8
                  rem          sp, s4, a6
                  andi         a2, t1, -3
                  slli         a3, zero, 0
                  ori          a7, s1, -1954
                  mulhsu       s3, s9, s0
                  xori         s1, a7, -1280
                  rem          s2, s7, s0
                  srai         ra, s11, 0
                  mulhu        a1, a1, t2
                  or           s4, a5, s7
                  xor          t5, a0, gp
                  mul          t3, t2, s1
                  rem          a7, t1, s7
                  slt          s8, t0, t5
                  srli         t0, a1, 25
                  rem          s9, a2, t0
                  srl          s4, s9, t6
                  xor          a7, a5, zero
                  sll          a2, s2, s5
                  slli         s3, gp, 28
                  mul          s9, s0, s0
                  auipc        a2, 902641
                  nop
                  slt          t2, tp, a6
                  divu         s10, zero, t5
                  sltiu        s2, t4, -667
                  srli         t6, s3, 26
                  rem          s8, a7, s1
                  xor          s6, tp, s1
                  slt          t2, s1, t1
                  sltiu        s4, t5, 1650
                  sra          s9, s9, ra
                  xor          t6, s3, s10
                  sll          ra, ra, s9
                  add          s3, s2, a7
                  or           t6, s0, s11
                  srai         t3, a7, 26
                  rem          s5, a5, s4
                  sll          tp, s3, s2
                  srli         s9, s0, 24
                  mulhu        t2, t4, s2
                  sra          sp, t2, s11
                  addi         s0, tp, -633
                  sltu         a2, s9, a2
                  andi         s1, s1, 1548
                  andi         s4, s5, -169
                  xori         tp, ra, 1925
                  sra          t6, a7, a2
                  srl          a5, s11, s11
                  srl          s7, ra, a4
                  add          t4, t3, a7
                  sll          t1, s2, s11
                  slti         s3, zero, -2
                  and          s9, t2, s11
                  andi         t5, s8, 1466
                  mulhu        s3, gp, t3
                  mul          s9, s3, s10
                  slti         s7, s3, 699
                  rem          t2, tp, a6
                  auipc        t6, 901700
                  remu         t6, t2, s8
                  div          s6, a5, t2
                  ori          gp, t3, 1720
                  srai         s10, s9, 17
                  srl          s10, ra, t1
                  sltiu        t5, s1, 702
                  mulh         s4, s5, a4
                  sltu         zero, s9, t5
                  ori          t4, gp, 607
                  sltiu        ra, s0, -522
                  mulh         a3, a6, t5
                  xori         a2, sp, -431
                  or           t1, s3, a1
                  auipc        ra, 705475
                  or           t0, t5, a4
                  lui          t1, 429280
                  ori          s2, gp, -718
                  lui          a1, 1025575
                  slt          t3, a2, gp
                  srl          t0, s2, s9
                  addi         ra, s9, -1032
                  remu         s2, s1, t2
                  divu         t2, zero, s2
                  or           s3, a5, s0
                  add          t3, s0, s0
                  auipc        gp, 839554
                  mul          a7, s5, s0
                  addi         s2, tp, 548
                  srai         a1, s0, 18
                  slti         a2, t4, -2040
                  sltu         s5, t3, a7
                  sltu         t2, t5, s7
                  xori         a5, a6, -231
                  or           s7, s0, a0
                  and          a3, t1, s11
                  div          s5, s0, t2
                  slli         a3, tp, 12
                  addi         gp, s3, 2
                  xor          s1, sp, t5
                  lui          a0, 238390
                  mulhsu       a0, t2, zero
                  auipc        s3, 363441
                  or           ra, a7, t2
                  mulh         t5, a4, a1
                  mulhu        s7, t4, a6
                  mul          t5, zero, a6
                  mulhsu       zero, s0, t5
                  slt          t1, t6, a2
                  srai         tp, s11, 19
                  lui          s8, 286895
                  sll          s4, s9, s3
                  mul          ra, t6, ra
                  slt          s8, t5, s4
                  srli         t3, zero, 16
                  sub          t5, s11, a5
                  sll          t1, s3, a4
                  mulhsu       s2, a2, a2
                  slti         s9, s1, 1571
                  mul          s10, a5, s1
                  xor          a3, s4, s11
                  slti         t5, ra, 1728
                  sll          t2, a2, a0
                  rem          s10, sp, s3
                  sltiu        s1, t0, -36
                  mulh         s5, a0, t1
                  xori         s5, a2, 662
                  rem          zero, t4, ra
                  and          s10, zero, a5
                  addi         t5, t0, 1815
                  sll          t5, a4, a1
                  nop
                  sltiu        ra, s6, -504
                  add          s1, t4, s1
                  lui          s2, 692611
                  mulhu        s10, s6, t2
                  mul          a2, ra, t5
                  remu         a7, tp, tp
                  sub          tp, a6, zero
                  divu         a5, s6, t0
                  srai         s10, a4, 15
                  or           a7, t3, s9
                  add          a1, a6, zero
                  slli         ra, a2, 17
                  srai         s1, t5, 27
                  srai         s3, t0, 16
                  slt          s4, s6, t2
                  xor          sp, s11, s9
                  nop
                  slli         sp, t5, 7
                  sll          a5, a5, s2
                  xori         sp, s2, -1903
                  srl          s7, a3, t1
                  auipc        s3, 380151
                  lui          t3, 29107
                  srl          s0, s3, tp
                  srl          t1, zero, s6
                  and          s3, a6, t2
                  ori          t3, s3, -233
                  xor          t4, t3, s8
                  mul          t5, s11, t5
                  mulhu        s0, a6, tp
                  sll          gp, t1, a7
                  slli         s3, t0, 20
                  slti         a0, zero, -290
                  slli         sp, t6, 0
                  divu         s1, t6, t2
                  ori          zero, a7, -503
                  nop
                  mulhu        sp, s9, s9
                  srai         t4, gp, 21
                  remu         a5, t4, a3
                  sub          tp, s1, t3
                  addi         a0, a2, -1581
                  mulhu        s8, zero, zero
                  slti         t2, a1, 717
                  mul          t4, a6, gp
                  auipc        t0, 65355
                  xori         s10, s5, -271
                  or           sp, t0, s4
                  nop
                  nop
                  mulhsu       t5, gp, s3
                  lui          s9, 552163
                  addi         t0, t5, 1574
                  andi         gp, zero, -1082
                  srai         t6, t3, 0
                  div          s8, ra, tp
                  div          a1, t1, t1
                  srl          gp, a3, a5
                  slt          s8, s3, s4
                  remu         a0, s8, a5
                  and          s9, t4, t6
                  xor          t0, tp, a2
                  or           s0, a0, t6
                  lui          t4, 705456
                  mulh         t0, t5, t1
                  lui          s2, 691268
                  srli         s3, s3, 23
                  rem          s3, t5, tp
                  xor          t3, ra, t2
                  mul          s8, s8, t0
                  or           t5, s7, gp
                  mulh         s10, gp, a6
                  nop
                  srl          t5, a1, a6
                  mul          s2, tp, a2
                  mulhu        t3, t0, s11
                  or           a2, s1, a7
                  xori         a0, s6, -686
                  mul          s0, s0, s5
                  sll          s7, s1, s7
                  sub          ra, a2, s0
                  sltiu        s5, t0, 640
                  mulhsu       a2, s2, a0
                  sltiu        a2, s5, -1962
                  ori          a1, s8, -1781
                  srli         a3, t3, 21
                  or           a7, s11, s1
                  slti         s2, s10, -1869
                  srai         s8, s7, 26
                  slt          s0, s6, a4
                  sltu         a2, s9, s3
                  slt          s0, s5, sp
                  and          s10, s4, s3
                  slti         t2, s2, 837
                  div          t3, a4, a1
                  addi         s2, s0, 114
                  lui          gp, 929036
                  mulhsu       tp, t5, s1
                  mulh         s4, s11, a5
                  mulh         t0, t3, s2
                  andi         a7, s6, -250
                  or           a3, a1, s2
                  srl          s7, s0, ra
                  slli         t0, s3, 3
                  or           a2, ra, s1
                  mulhsu       t4, gp, a2
                  srai         t6, zero, 20
                  srl          s3, s10, s11
                  sltiu        t6, a6, -1661
                  sll          a2, ra, tp
                  sll          a3, a4, ra
                  slli         t1, s3, 3
                  sltiu        s2, s9, -1592
                  or           t0, a5, t3
                  ori          s8, sp, -1882
                  andi         s2, s2, -1866
                  remu         s8, t3, a1
                  or           a2, s11, t1
                  sltiu        s9, a2, -68
                  divu         a5, t5, a1
                  mulhu        sp, t4, t5
                  lui          s1, 118768
                  slt          a5, s9, s5
                  slt          s6, s6, t5
                  mul          a7, s10, a3
                  sll          s3, s7, s3
                  nop
                  sra          s0, s0, t0
                  add          s2, s2, t6
                  srl          zero, zero, s10
                  remu         t0, a6, s10
                  sub          s6, sp, t5
                  srai         zero, sp, 14
                  add          tp, s8, a2
                  slt          s7, s11, sp
                  rem          s8, a7, a6
                  srl          a7, s4, a5
                  rem          a2, t6, sp
                  auipc        ra, 141893
                  mulhu        t1, t4, a6
                  mulh         a1, s5, sp
                  sltu         a2, t2, a2
                  div          s6, tp, t2
                  xori         s5, s1, -864
                  sra          t6, s2, s9
                  srl          a7, s9, s2
                  xor          t6, t4, s10
                  rem          s4, s10, sp
                  slt          s9, t0, a1
                  slli         zero, a6, 16
                  sra          t0, zero, tp
                  auipc        t2, 861174
                  divu         s8, s2, zero
                  add          a2, t2, s5
                  div          s2, s2, a1
                  add          s6, s4, a3
                  remu         s3, t4, tp
                  mulhsu       t1, s0, t4
                  auipc        a2, 685890
                  remu         a0, a5, a7
                  addi         t0, s0, -1919
                  mulhsu       a5, a0, a2
                  mulhsu       s8, t0, a6
                  mulhsu       t4, s8, t4
                  lui          t4, 288825
                  div          t0, a2, t5
                  mul          s8, t5, a2
                  xori         a5, gp, -1363
                  or           s8, a4, s10
                  mul          a5, t0, s11
                  srai         t4, t1, 25
                  or           a7, s4, s3
                  nop
                  add          a2, s8, t5
                  auipc        a1, 316570
                  slt          t4, a1, s0
                  div          ra, ra, t4
                  and          t1, s4, s2
                  sub          a1, s1, s5
                  nop
                  sra          a0, gp, t3
                  divu         s1, sp, s6
                  remu         a0, a3, a7
                  andi         s1, s9, -1106
                  sltiu        t3, s7, 776
                  sltiu        ra, t3, 1283
                  srli         s10, t2, 16
                  add          s6, zero, s5
                  xor          s1, a1, s2
                  mulhu        a2, a6, s11
                  and          s1, zero, s1
                  sra          a7, s10, a0
                  slli         a5, gp, 29
                  div          a1, s0, s1
                  sltiu        t3, s2, 371
                  sltu         s0, a5, a1
                  add          s10, a6, zero
                  add          s2, s11, sp
                  slt          t1, s7, tp
                  slt          s9, t5, a1
                  sra          s3, tp, a5
                  slt          t2, a1, t1
                  nop
                  andi         s7, s6, 1189
                  and          a3, t6, t3
                  ori          s1, s2, 1480
                  div          t1, t0, gp
                  mul          a5, s8, s8
                  sltu         s7, ra, t0
                  remu         t5, a7, a3
                  srl          a7, t2, a5
                  sltu         s4, a3, s1
                  divu         a2, s2, t6
                  rem          a7, s4, t5
                  ori          a2, sp, 238
                  srl          a3, t4, t0
                  srl          s7, t0, s4
                  srai         t3, s6, 22
                  lui          zero, 837468
                  divu         a0, t2, a2
                  sub          t6, tp, a2
                  mul          s6, zero, a1
                  remu         t6, t4, s11
                  sltu         a1, a7, tp
                  slt          zero, a4, a1
                  sub          tp, a1, zero
                  slt          s9, sp, t2
                  sltu         a1, zero, a7
                  sra          tp, s10, s1
                  mulhsu       t5, s9, t0
                  nop
                  nop
                  divu         s8, ra, s2
                  xori         a7, s0, 429
                  mulhsu       s3, s6, t0
                  mulhu        s5, s4, a7
                  srai         t5, ra, 4
                  mul          t5, t0, s2
                  remu         ra, s0, a3
                  nop
                  xor          a7, t6, t2
                  auipc        s8, 109530
                  sltiu        s2, s10, -1634
                  auipc        t2, 606592
                  sltu         s6, s5, s0
                  add          a5, a3, t6
                  sltu         a7, s11, s9
                  andi         t5, s1, -1831
                  xori         s5, a0, -499
                  lui          s9, 731086
                  mul          ra, t0, a6
                  add          a0, t5, sp
                  sltiu        gp, t0, 104
                  sltu         a2, a4, t6
                  sltu         gp, ra, s7
                  slt          t2, s7, t3
                  xor          zero, a1, a2
                  xori         ra, a5, -2005
                  remu         s1, s7, gp
                  divu         t6, t5, a6
                  addi         a7, a2, -365
                  sll          zero, t3, s9
                  ori          s2, t6, 1829
                  srl          s6, t5, t3
                  sll          zero, s11, s0
                  mulhsu       s8, zero, s11
                  sra          t2, a4, s0
                  andi         t6, s0, 751
                  rem          s2, t6, a3
                  auipc        a1, 531102
                  mulh         s7, ra, s6
                  slti         a2, a2, -1019
                  ori          s9, s6, -681
                  srai         s4, s9, 6
                  mulhsu       ra, t2, s11
                  srli         a5, s10, 5
                  slli         t1, s0, 21
                  slt          a1, t0, t0
                  mul          ra, t2, s4
                  srl          a0, a6, t3
                  slli         gp, zero, 30
                  sll          a0, t6, a6
                  mulhsu       s6, s4, s2
                  sra          a3, a5, a0
                  addi         s5, s2, -1383
                  divu         t4, s8, s4
                  sltiu        a0, s8, -945
                  or           t5, a0, t5
                  xor          t6, s1, a1
                  lui          s5, 22671
                  slli         t4, a2, 0
                  and          s9, s0, s1
                  xor          gp, s0, s6
                  auipc        ra, 826813
                  add          a1, t3, s7
                  xori         t6, a2, -1969
                  slli         tp, s7, 27
                  divu         zero, t0, t4
                  slt          zero, a5, sp
                  rem          s8, a7, a1
                  srli         t3, s4, 5
                  xori         t3, a7, -381
                  ori          t3, s11, -1090
                  andi         t6, ra, 1991
                  sltiu        sp, s3, 836
                  mulhu        a2, t1, t1
                  xori         a5, a0, 1099
                  sra          s5, t4, s8
                  sltiu        s10, ra, 1016
                  sltu         t1, t0, s0
                  add          t5, ra, gp
                  srai         a5, s7, 20
                  mul          s8, a1, s7
                  slti         s8, a6, -130
                  and          s9, s0, s1
                  add          a7, s2, a0
                  mul          zero, s10, a3
                  lui          a5, 921749
                  sub          t5, a5, t1
                  sltiu        t3, t4, 286
                  divu         s0, s1, sp
                  mulhsu       zero, s0, t3
                  auipc        ra, 48671
                  sltiu        t1, t2, -431
                  mulhu        s9, ra, t6
                  srl          s0, s6, t2
                  and          sp, t2, t6
                  rem          s1, s7, s6
                  auipc        a3, 942027
                  mulhu        t4, s9, t3
                  xori         t1, t0, 312
                  andi         s0, a7, -272
                  srl          t4, a1, a7
                  xor          a2, t4, a2
                  sltu         gp, a4, s8
                  mulhu        s10, a2, s2
                  slli         a2, t0, 21
                  or           s9, ra, s6
                  mulh         a5, s10, a1
                  mulhu        s3, s11, s8
                  div          a1, a4, a0
                  sltiu        t4, a0, -373
                  sra          ra, a2, a2
                  divu         s1, s11, s3
                  lui          t4, 909635
                  slli         s5, gp, 24
                  div          t6, t2, s2
                  sub          t4, s9, a0
                  mulhsu       a3, ra, a3
                  mulhu        t0, s11, a3
                  sltu         t2, a3, sp
                  mulh         s8, t6, a5
                  lui          s10, 354471
                  slti         a7, a1, -1335
                  mulhu        a1, s7, a4
                  or           s5, a4, t3
                  slt          gp, t1, t5
                  sll          sp, gp, s3
                  auipc        a0, 489172
                  and          s9, s11, zero
                  or           ra, tp, s8
                  sra          s5, ra, s0
                  sltiu        a2, a7, -1616
                  addi         sp, s10, 951
                  slt          t3, a0, a1
                  lui          t2, 104687
                  div          zero, s0, t3
                  nop
                  sltu         s10, t1, t0
                  sltu         s0, s9, gp
                  ori          t4, s11, -96
                  or           sp, ra, s2
                  mulhu        a3, a5, t0
                  nop
                  slti         a7, ra, -128
                  sltiu        t3, s4, 1603
                  mulhu        t6, t1, s6
                  nop
                  srai         s6, t6, 26
                  nop
                  andi         sp, s4, -948
                  ori          s2, s7, -1973
                  auipc        s4, 251949
                  addi         s5, s2, 411
                  srl          t1, s8, s2
                  remu         s3, t4, zero
                  slli         t1, t5, 15
                  divu         t0, s3, a2
                  auipc        ra, 418093
                  rem          a2, gp, a0
                  andi         t3, s9, -614
                  mulhu        t4, s8, s2
                  remu         a0, gp, s2
                  sltiu        t3, s8, -782
                  xori         s9, s3, 2024
                  or           t6, a7, s11
                  divu         t5, s11, a3
                  lui          a2, 956477
                  divu         tp, a2, zero
                  nop
                  add          s4, s3, tp
                  sltu         s7, t3, a0
                  mulhsu       tp, s4, a6
                  sltiu        t6, s1, 1528
                  srai         a1, a4, 13
                  srl          t1, a7, s1
                  divu         t3, tp, s5
                  divu         s5, a1, s1
                  mulhsu       s1, s5, a3
                  lui          a1, 30076
                  mulhsu       ra, a2, tp
                  srli         a3, ra, 7
                  andi         zero, sp, 140
                  rem          a5, s9, t6
                  mulhsu       gp, t4, a5
                  slli         t5, tp, 25
                  addi         t2, a0, -602
                  slt          gp, a1, s5
                  slli         s6, s4, 28
                  auipc        s10, 152670
                  auipc        s6, 704708
                  sra          a5, s8, a2
                  sltiu        s6, s2, -1188
                  slt          s9, s6, s0
                  mulhsu       s5, s9, s6
                  add          s8, s7, tp
                  rem          a5, t2, a6
                  mulh         zero, s1, t6
                  sub          a2, t1, gp
                  ori          tp, s9, 1646
                  sltu         t6, a6, s0
                  auipc        a5, 370172
                  or           s0, t4, s4
                  remu         a7, s11, a1
                  xor          t1, s0, a6
                  div          t3, s0, a3
                  sra          s4, s0, s2
                  srli         a2, zero, 24
                  remu         a5, a5, s6
                  auipc        s10, 1006191
                  sll          t1, s4, s9
                  slli         s3, a7, 26
                  nop
                  sub          s2, gp, a7
                  sll          s4, s10, zero
                  xori         t5, t6, -1163
                  andi         t5, t6, -873
                  sltu         s0, gp, t1
                  sltiu        s8, tp, -1161
                  xori         t4, s3, 309
                  and          s4, s8, s1
                  slti         a1, s4, -142
                  mulhu        s2, a4, t2
                  mulhsu       ra, s0, s2
                  divu         a0, t0, gp
                  andi         a7, t2, -1012
                  sll          gp, s4, s2
                  nop
                  xor          sp, s4, a2
                  ori          t1, s10, -1851
                  ori          gp, s5, 2009
                  lui          s0, 359551
                  mulhu        t6, a5, a0
                  mulh         a1, s10, a5
                  xor          t4, a5, s1
                  div          s10, t3, s9
                  xori         t0, zero, -183
                  mulh         gp, zero, s4
                  sub          s10, s10, a0
                  srli         s7, s7, 7
                  sltiu        s3, s10, 377
                  slt          s5, ra, a1
                  nop
                  xor          a1, a6, t3
                  sltu         s10, s2, ra
                  slt          s3, t2, s10
                  xori         a7, s8, 337
                  sltu         gp, s1, a5
                  slti         tp, t4, -1184
                  auipc        s4, 621780
                  and          t0, a7, s9
                  andi         s7, a6, 292
                  and          t2, s0, ra
                  nop
                  sra          a1, s6, t5
                  addi         s6, zero, -636
                  slti         s7, gp, 224
                  ori          s4, t2, -390
                  srl          s6, a6, s6
                  mulhsu       a2, s5, a0
                  sltiu        t2, s2, -984
                  ori          s8, t0, 1813
                  mul          s6, gp, t6
                  or           s8, a4, s11
                  xori         s10, a7, -1589
                  sll          a1, t1, a2
                  sltiu        s7, s11, -435
                  addi         s3, t0, 918
                  nop
                  mul          s4, a0, a3
                  slt          t3, s10, s4
                  lui          s5, 520312
                  add          s0, s11, s4
                  and          t4, s9, s10
                  srai         s6, t1, 25
                  andi         t5, t5, -961
                  slt          s4, gp, a3
                  or           a2, a1, zero
                  mul          s2, gp, s5
                  srl          a0, t1, t1
                  divu         t1, t0, s8
                  xori         a3, t3, -1971
                  sra          s0, s11, t3
                  or           s4, a2, t0
                  mulhsu       s6, tp, sp
                  or           a7, s8, a0
                  sll          s8, s3, t6
                  mulh         a7, a1, t2
                  lui          a3, 508276
                  slt          s2, t4, s2
                  lui          zero, 543114
                  sub          a2, t6, tp
                  addi         s1, ra, 2004
                  slt          t4, s1, a5
                  auipc        t1, 649619
                  lui          a1, 92877
                  xor          s7, a0, s11
                  auipc        t4, 551748
                  add          s1, s2, s5
                  srl          a5, t4, t1
                  slli         t3, tp, 28
                  srl          sp, tp, s4
                  or           t4, ra, t6
                  ori          a5, a3, -1878
                  auipc        a3, 43385
                  sub          s1, t2, s3
                  srai         a1, a4, 17
                  rem          a7, s0, a7
                  divu         s2, s0, ra
                  div          ra, a3, s2
                  div          s0, a6, t6
                  mulh         gp, a4, s6
                  sub          a5, s1, a0
                  xor          t0, s3, t1
                  mulhu        a0, a6, s9
                  mul          gp, s0, a5
                  srl          a5, s11, t4
                  sll          s2, t3, t6
                  and          a5, a1, s9
                  sltu         a1, s8, s4
                  sub          a5, a0, s11
                  andi         a0, t1, -1045
                  or           t5, a2, s8
                  slli         tp, tp, 28
                  divu         s10, a5, a2
                  mulhsu       gp, a2, a7
                  lui          s4, 524165
                  xor          a5, s1, tp
                  slt          t4, s5, a1
                  mulhsu       s3, t3, s1
                  div          ra, zero, tp
                  mul          t5, tp, s6
                  and          s4, s2, t1
                  sub          s6, s3, zero
                  remu         t6, s10, t3
                  slti         t0, a1, 1908
                  add          s6, gp, a7
                  srl          zero, t1, tp
                  srai         a1, zero, 28
                  sub          gp, s11, s0
                  remu         t5, s9, s2
                  sll          s9, s1, s7
                  sub          sp, s11, s1
                  or           s1, zero, a1
                  nop
                  and          s3, a4, s5
                  slti         s7, a4, -302
                  slt          t3, a5, a2
                  mul          t0, a2, a6
                  lui          zero, 515797
                  div          s4, a1, a4
                  sltu         s2, t0, ra
                  add          a5, a1, s0
                  divu         t0, s4, t3
                  add          s4, a3, tp
                  sltu         s3, zero, a7
                  lui          s4, 232582
                  or           a5, t3, s3
                  mulhsu       t6, s3, s0
                  nop
                  srai         a7, zero, 9
                  auipc        a0, 45169
                  divu         s2, t1, a3
                  srl          s7, t1, s9
                  sll          a2, ra, s9
                  ori          a5, ra, -1753
                  xori         a7, zero, -822
                  srai         t1, t5, 27
                  mulh         zero, s2, s8
                  srai         s4, s0, 16
                  xori         ra, a5, 326
                  add          a1, a7, s5
                  mulhu        s2, t4, s8
                  slli         zero, a6, 25
                  mul          t5, gp, t6
                  xori         s5, t3, 1512
                  xor          t3, s4, a1
                  slti         t6, a0, -1881
                  remu         a2, a7, s3
                  ori          s0, tp, 447
                  xor          gp, s8, t2
                  sll          s8, s2, ra
                  sll          s0, s11, sp
                  rem          a5, s10, a5
                  mul          t5, t3, s9
                  addi         a7, gp, 1472
                  sll          tp, t1, t6
                  slli         t5, sp, 15
                  slli         t0, t1, 1
                  sltiu        t6, sp, 512
                  mulh         a2, a0, t0
                  rem          s0, s2, t1
                  sltiu        a5, s4, 724
                  rem          t5, a4, t0
                  or           t2, s0, s1
                  add          t4, s7, t4
                  sra          s6, sp, s6
                  sltiu        s6, a2, -619
                  sltiu        a7, sp, -492
                  and          s5, s3, s0
                  slti         a2, s9, -612
                  sub          t1, s10, a7
                  mulh         a7, a3, s8
                  addi         s8, tp, -2034
                  srli         s10, gp, 2
                  addi         a1, t0, 1966
                  sub          s0, s8, s10
                  srl          t5, gp, a2
                  nop
                  xori         ra, s5, -131
                  andi         t6, s7, 311
                  and          s0, a6, a7
                  and          sp, tp, zero
                  remu         s1, a5, s3
                  sll          t4, s7, s5
                  auipc        zero, 67644
                  auipc        s9, 133616
                  or           s8, s1, tp
                  mulhsu       s3, t6, a6
                  auipc        t6, 708454
                  mul          t1, t2, s10
                  addi         t1, s9, 1228
                  divu         s0, t6, t5
                  rem          s8, t1, s8
                  slt          s2, t0, t4
                  mulhu        t5, s2, s9
                  slli         s2, s10, 17
                  andi         s5, s4, -648
                  nop
                  remu         sp, a4, t6
                  sltiu        s4, s6, 1378
                  xor          s8, s3, a1
                  sll          tp, s4, tp
                  addi         zero, s4, -48
                  slti         a0, t6, -1936
                  addi         s9, s5, 296
                  xor          s9, sp, t6
                  sub          a7, t2, s6
                  srai         a0, s10, 20
                  sltu         a3, s10, s7
                  and          ra, gp, a3
                  xori         a1, t4, -271
                  sub          a2, t1, t5
                  add          t2, s0, a5
                  auipc        s8, 290807
                  or           s2, sp, s8
                  ori          s10, sp, 318
                  auipc        s7, 436547
                  xor          s7, a0, s1
                  nop
                  div          ra, a4, s3
                  auipc        t2, 772198
                  nop
                  sltiu        a7, tp, -133
                  divu         a7, zero, zero
                  sra          s4, s1, a6
                  mulh         a7, ra, tp
                  mulhu        t6, s5, s10
                  mulhsu       s4, a2, a7
                  srli         zero, t2, 27
                  sra          a2, a2, t6
                  mulhu        a0, gp, sp
                  srli         sp, ra, 9
                  rem          s8, t3, s7
                  slt          s2, s2, t1
                  mulhsu       t2, t6, t3
                  nop
                  or           a7, t1, t5
                  rem          s0, t6, a5
                  lui          s5, 684017
                  divu         t3, a5, t5
                  mulh         s1, s0, t0
                  remu         ra, ra, t0
                  sll          a7, s3, s0
                  auipc        s8, 609377
                  slt          s10, s3, t0
                  andi         s9, sp, -868
                  mul          t5, a4, a1
                  or           gp, a6, t3
                  sra          zero, s7, a2
                  sra          zero, tp, t5
                  mulhsu       t6, sp, s4
                  mulhsu       ra, a2, a3
                  or           s10, s7, a1
                  mulh         t6, s3, tp
                  sra          a1, s0, sp
                  nop
                  rem          t4, tp, s1
                  divu         s8, s8, s8
                  slt          s0, s3, s10
                  xor          s10, a0, t2
                  or           s8, t1, t5
                  sltu         a1, s6, s9
                  sra          t2, s4, a1
                  auipc        s0, 709532
                  srl          a7, a2, s2
                  mulhu        a2, a1, s6
                  andi         gp, s3, 1192
                  lui          s9, 285940
                  rem          s1, a2, t5
                  sll          t6, zero, s4
                  auipc        s0, 540618
                  sll          s8, s0, tp
                  mulh         s9, t4, a5
                  slli         s7, ra, 8
                  sltiu        s2, t2, -1348
                  mulhsu       s10, s11, s10
                  mulhu        tp, t3, a5
                  sltu         t3, t4, s9
                  nop
                  sltu         t1, sp, zero
                  ori          s2, a5, 1387
                  sltu         sp, a6, a2
                  or           t0, t1, s3
                  addi         t2, s10, 602
                  addi         t2, ra, 2038
                  remu         s9, s6, s11
                  srai         s4, t0, 0
                  slt          a7, s1, t6
                  slt          s7, a7, t1
                  sra          a5, s0, s5
                  sltiu        s8, a3, -952
                  srli         s2, s11, 1
                  nop
                  sub          s9, tp, a4
                  auipc        t0, 982757
                  srl          ra, ra, a1
                  mul          s4, a2, t1
                  lui          a0, 523308
                  lui          s9, 125156
                  ori          s6, t5, -1708
                  sltiu        s6, a1, 1567
                  mul          a5, s8, s9
                  mulh         a1, a3, sp
                  slli         a7, s5, 3
                  rem          s6, t3, s4
                  slli         s6, s4, 31
                  or           t4, a6, s3
                  rem          t4, a0, s8
                  mulhu        ra, s9, s10
                  or           a3, ra, s3
                  div          t0, s10, s0
                  mulh         a3, a6, gp
                  div          a7, t0, s9
                  sltu         gp, a7, s8
                  add          t4, s7, s2
                  slt          t4, sp, s8
                  srl          s3, s7, t3
                  rem          tp, t0, a0
                  slli         t2, a4, 10
                  mulhu        s5, a5, t2
                  xor          a2, s8, s6
                  slt          s2, s10, a0
                  lui          s2, 411959
                  xor          s7, t0, a3
                  slli         s2, s0, 2
                  or           t1, sp, a3
                  add          s5, t4, s2
                  srai         tp, t1, 18
                  nop
                  andi         a2, sp, 1450
                  sll          a2, s9, a5
                  slt          t3, s7, t6
                  lui          t0, 262527
                  srai         a1, s1, 13
                  srl          a2, t2, s2
                  or           t0, s5, t5
                  slli         a3, a7, 20
                  mulh         a1, s10, s4
                  lui          ra, 345687
                  rem          a0, s4, zero
                  nop
                  srli         t3, a5, 4
                  andi         a5, s8, -754
                  srai         a2, zero, 10
                  div          t5, a7, t5
                  addi         a7, t1, 1090
                  sll          s0, a3, s1
                  addi         s9, a6, -1719
                  mul          gp, gp, tp
                  mulhu        a0, s4, a6
                  and          s0, a0, s1
                  mulh         t2, a4, t0
                  addi         sp, s11, 1893
                  mul          t3, a1, a4
                  sub          s10, s2, s7
                  slti         s10, s8, -1112
                  or           t2, a2, a6
                  slli         a5, tp, 16
                  sltu         s10, t5, s2
                  srli         ra, s0, 20
                  addi         s1, s1, -172
                  srl          s6, s6, s1
                  srli         s10, t1, 29
                  srai         s9, s6, 3
                  nop
                  add          s2, t1, s10
                  add          s8, gp, s7
                  auipc        t1, 920905
                  mul          s4, s11, t6
                  sltu         s6, a6, s7
                  addi         s8, a7, 942
                  and          t4, a7, a6
                  mulh         t2, a3, t2
                  divu         sp, t0, ra
                  and          s1, s11, tp
                  mulhsu       t6, t6, t5
                  andi         s10, t6, -1491
                  add          s5, zero, a2
                  xori         s2, s0, 670
                  srl          a0, s4, t1
                  nop
                  slli         a0, t3, 21
                  slli         s6, a0, 12
                  sub          t6, gp, ra
                  addi         t6, tp, 1374
                  and          a3, s3, gp
                  remu         t2, s1, a1
                  xori         s5, t1, 956
                  andi         s10, s9, 1581
                  div          s5, a0, t2
                  or           s2, t6, a1
                  ori          a7, s4, 1096
                  sub          t1, sp, s11
                  xori         a2, t3, -1089
                  andi         a3, zero, 927
                  srai         s1, s11, 16
                  remu         s9, a7, s5
                  slti         s9, t5, 286
                  add          s9, s10, t6
                  auipc        t6, 84948
                  sra          t6, a1, t0
                  slli         a7, t0, 17
                  slti         t2, s5, -672
                  srl          s6, s9, t6
                  or           a3, t2, t6
                  addi         ra, a4, 1903
                  rem          s3, t1, s10
                  sltiu        zero, t3, 579
                  srl          s8, s0, a4
                  ori          s3, gp, 1583
                  rem          s10, s10, sp
                  auipc        s3, 601672
                  ori          sp, t5, -1189
                  nop
                  sub          zero, s11, t3
                  slti         s0, t6, 2030
                  sra          t3, s10, gp
                  add          a5, s5, tp
                  srli         s9, t4, 17
                  slt          t2, s8, s6
                  remu         s3, s11, s5
                  sra          t5, a4, a2
                  add          a0, a5, t1
                  sub          s7, t1, a1
                  sltu         s3, t4, a3
                  slt          a0, t4, t1
                  lui          s6, 127160
                  slti         t1, s10, 933
                  xori         zero, t0, 1985
                  sltu         s1, t4, t0
                  slt          a0, a1, t3
                  xor          t4, t5, a3
                  add          t4, t1, s2
                  and          t5, a3, a0
                  remu         t6, a0, a6
                  xori         t0, ra, -1391
                  mulhu        s8, sp, s6
                  lui          s2, 294651
                  slti         t5, a1, -932
                  addi         s10, s11, 1165
                  sltu         s1, s2, s7
                  div          s7, zero, t1
                  xor          sp, a2, s2
                  sra          sp, t6, a0
                  mulhsu       s9, zero, sp
                  mulh         s2, s10, a3
                  auipc        t5, 180877
                  sltu         t4, s3, s0
                  slli         sp, s10, 6
                  ori          a3, s8, -1264
                  nop
                  slti         t1, a6, 1800
                  sra          sp, s11, a2
                  divu         s8, a1, s10
                  sll          a1, s6, a5
                  slli         a2, s8, 23
                  xori         t0, t0, 1986
                  and          s9, a4, a7
                  xori         sp, a7, -877
                  sub          gp, sp, s1
                  sub          t2, s7, s11
                  mulhu        a2, sp, tp
                  rem          t4, a0, s5
                  sra          a5, a3, tp
                  nop
                  mulh         s10, s9, s8
                  sltu         s5, s3, sp
                  sll          t2, s4, s7
                  nop
                  add          s3, s6, a6
                  mul          zero, a2, t4
                  srl          s8, s6, tp
                  div          a5, s10, tp
                  srli         a3, s1, 29
                  addi         t1, t5, -1103
                  divu         t5, zero, s6
                  slli         a7, s9, 15
                  mulhsu       s0, ra, a0
                  mulhsu       s3, s9, a2
                  andi         ra, s1, 1210
                  mulh         a2, a2, t2
                  ori          s5, s0, 573
                  srli         s6, a5, 0
                  srai         s9, s1, 6
                  sltiu        s9, s0, -741
                  rem          s5, s0, t2
                  remu         s10, ra, t4
                  nop
                  srli         a7, s4, 10
                  divu         s6, s11, a5
                  xori         t0, s9, -1925
                  auipc        t4, 759993
                  srli         s6, a2, 9
                  xor          s8, t1, s0
                  srl          t4, sp, a2
                  xor          s5, tp, t4
                  divu         s2, a5, t1
                  xori         sp, tp, 1877
                  sltiu        a7, t0, -1929
                  div          a7, t2, s3
                  srl          s9, zero, s8
                  xori         sp, t3, 166
                  slt          a0, s8, t5
                  xor          s1, s5, s7
                  lui          s4, 543493
                  or           t1, s0, s10
                  mulhsu       s10, s6, s0
                  slti         s6, a6, -606
                  sll          a1, s0, a5
                  mulh         zero, gp, s6
                  mulh         t1, s1, s8
                  sub          a5, a6, a5
                  ori          t1, a4, 2011
                  xor          s10, s6, a3
                  add          zero, t2, t4
                  divu         s0, t0, a3
                  lui          a5, 354636
                  srai         s0, a3, 31
                  mulhsu       a7, s4, t3
                  xor          t4, t2, gp
                  xor          t4, s3, t6
                  rem          a3, a5, t4
                  and          s4, s3, t3
                  addi         s4, sp, 1171
                  mul          t3, s6, s1
                  andi         t2, gp, -345
                  or           a5, t2, gp
                  lui          t3, 643109
                  ori          gp, s3, 1893
                  srl          tp, t2, s2
                  add          t0, t1, a2
                  mulh         s7, zero, s2
                  mul          sp, s10, s1
                  mulh         s4, s1, s10
                  auipc        t1, 122877
                  srl          s0, s10, s3
                  div          t6, s0, t3
                  andi         s5, s7, -918
                  slt          s8, a3, s10
                  mulhu        gp, s9, s6
                  slti         a1, s0, -822
                  ori          s2, s11, 579
                  sltiu        s6, a6, 126
                  lui          a2, 645792
                  remu         t0, t3, s11
                  lui          sp, 951407
                  srai         s4, a7, 2
                  or           s6, a7, t2
                  nop
                  slti         t1, t5, -513
                  srli         s0, s1, 26
                  lui          s10, 467405
                  ori          t5, t6, 1200
                  ori          s10, a4, -195
                  srl          zero, s7, s10
                  srai         a1, zero, 29
                  mulhu        t0, t0, s1
                  or           t3, s0, s1
                  mulhsu       s2, t0, t4
                  sra          s10, s6, s9
                  srl          a2, s0, zero
                  addi         a1, t6, -637
                  ori          s3, a7, 1076
                  ori          a5, a0, -1449
                  divu         s10, s6, a5
                  ori          s4, a2, -1320
                  srai         s0, a6, 12
                  or           tp, s1, s2
                  srl          t5, s10, s11
                  srli         s2, s5, 16
                  mulhu        s0, s11, s7
                  or           a1, s0, t0
                  andi         a7, s0, -754
                  sub          zero, a0, a0
                  sra          s2, a6, sp
                  sltu         a3, t1, s5
                  ori          a3, s5, 1823
                  srai         s1, a4, 21
                  srli         t4, a2, 17
                  remu         s8, s7, a0
                  mulhu        s2, a5, s9
                  slt          gp, s1, s6
                  slti         tp, zero, 402
                  mul          s1, s11, t4
                  xor          s1, a0, s10
                  slli         tp, gp, 15
                  xor          a1, s4, s6
                  srl          a2, a5, a3
                  ori          s5, t5, 1362
                  srli         tp, ra, 25
                  nop
                  remu         tp, a0, a7
                  sltu         s4, s7, s11
                  add          a7, s2, s3
                  mulh         s10, s6, sp
                  xori         s9, s11, -1487
                  slli         t5, t4, 24
                  xor          s8, s6, tp
                  srl          s9, s1, a1
                  srai         s6, s1, 18
                  xor          t0, tp, t5
                  srl          s5, a2, s8
                  srl          t2, a5, a7
                  slli         a2, ra, 7
                  div          s6, a7, t5
                  or           t2, a5, t4
                  slli         a3, s11, 28
                  nop
                  srli         s4, a3, 25
                  lui          s4, 107185
                  remu         a2, t2, s5
                  mul          s1, tp, tp
                  divu         zero, t1, a5
                  auipc        a7, 104748
                  mul          a0, s0, t3
                  ori          t4, s1, 581
                  sltu         a2, t2, zero
                  and          s8, t0, a6
                  sll          a1, tp, t2
                  sltu         t1, t2, a4
                  xor          ra, s3, zero
                  sltu         t1, a1, a7
                  addi         s3, a7, -781
                  remu         s10, t4, a7
                  or           sp, s0, s10
                  lui          sp, 692051
                  mulhu        gp, s11, zero
                  sll          t2, s3, t6
                  xor          s8, t5, sp
                  or           s2, a7, s6
                  sll          t1, s1, t4
                  slti         s5, s0, 139
                  auipc        t5, 1030374
                  and          ra, a4, s8
                  lui          s1, 850008
                  addi         a1, s4, -954
                  mulhu        s4, s2, t1
                  lui          a5, 798113
                  xori         ra, t2, 1759
                  add          a0, s5, t1
                  addi         s4, s6, -1373
                  add          tp, zero, a6
                  sltu         ra, s2, s2
                  or           s9, s2, s1
                  mulh         sp, s0, gp
                  or           t5, a4, s11
                  sll          s0, a1, s5
                  srl          ra, a2, s1
                  div          s8, s6, zero
                  sltiu        t5, s1, 294
                  and          a1, zero, a4
                  slt          t0, s10, gp
                  and          tp, a2, a3
                  ori          s0, a4, -1312
                  mulhsu       t2, a5, tp
                  mulhu        s2, t5, s10
                  and          s7, a0, a3
                  or           a0, t2, a3
                  ori          a0, a7, 60
                  lui          t4, 912320
                  sltu         t2, s11, zero
                  srl          t4, a7, s6
                  ori          a7, s8, 590
                  and          s9, t5, s4
                  mulhu        s2, a6, s7
                  auipc        t3, 292200
                  srl          gp, s1, a2
                  andi         t1, s9, -1968
                  srl          a0, t1, gp
                  srl          s8, s11, a0
                  sltiu        s10, a0, 1171
                  slti         s4, a3, -410
                  xori         s6, a2, 1552
                  xor          a1, a6, a2
                  slli         ra, tp, 24
                  slt          a3, a7, s2
                  xor          s6, tp, a2
                  andi         t6, s1, 44
                  sub          s4, s2, s0
                  mulh         t5, gp, s4
                  remu         s3, a5, t5
                  srl          a3, s10, gp
                  or           s10, a6, s9
                  sub          s5, s2, t5
                  nop
                  sltiu        sp, s4, -900
                  xori         a7, sp, 150
                  rem          a3, a3, sp
                  sltu         s9, s6, a4
                  ori          t3, s8, 1460
                  div          tp, ra, sp
                  div          s4, s7, t4
                  mulhsu       t6, t3, a3
                  srl          a0, s0, a1
                  divu         sp, a7, zero
                  addi         a5, s5, 647
                  xori         sp, a7, 178
                  remu         s2, t6, a2
                  andi         a1, s7, 1302
                  nop
                  nop
                  and          a3, s6, a2
                  slt          a1, a7, a5
                  mul          s4, a1, s4
                  auipc        s2, 141540
                  slt          a1, a1, s11
                  addi         a0, s2, 1930
                  mul          zero, s10, s11
                  sra          tp, s1, sp
                  srl          s3, a3, s2
                  rem          ra, a4, s2
                  slt          s4, t3, a7
                  ori          a5, ra, -865
                  slti         s0, a0, 1579
                  srl          t3, a5, s8
                  mul          t4, s0, a2
                  auipc        s0, 218031
                  andi         a5, s1, -896
                  sll          s8, s4, a4
                  rem          a3, s4, t5
                  remu         s4, t0, a2
                  sub          s1, t6, a7
                  lui          t6, 293001
                  sll          s4, s7, t0
                  sltu         t4, tp, s4
                  lui          s10, 229147
                  nop
                  sll          s9, a3, a3
                  and          a2, a0, s10
                  xor          s7, a2, s4
                  slli         t2, s7, 5
                  srl          t3, zero, s11
                  mulhsu       s10, t1, zero
                  sltu         a7, gp, s1
                  div          t1, t0, s4
                  add          a0, s11, s1
                  mul          tp, gp, t5
                  or           a0, s5, s0
                  srl          t1, ra, s5
                  lui          zero, 342051
                  srli         a3, s1, 22
                  srl          t2, a5, ra
                  auipc        s7, 398608
                  andi         t4, tp, -504
                  lui          s3, 628823
                  rem          sp, a0, ra
                  sra          a1, s5, s11
                  add          a0, t4, a2
                  divu         a0, a7, a7
                  slt          t6, s8, s7
                  mulhsu       sp, tp, tp
                  addi         s7, a2, -1928
                  sltiu        tp, a7, -800
                  slti         s2, s4, 1357
                  xori         s7, a2, -1469
                  mul          s8, a5, a2
                  srai         a1, s8, 31
                  ori          a1, a1, -658
                  xor          zero, tp, zero
                  slli         a2, zero, 4
                  nop
                  div          a7, s9, a0
                  srai         s7, s4, 26
                  sltiu        ra, tp, 1658
                  srli         a0, t0, 6
                  or           s9, s1, s2
                  or           a2, s3, a0
                  sra          a7, t5, t6
                  add          a7, zero, s10
                  auipc        s3, 559887
                  andi         s0, s2, -1692
                  xori         t3, s10, -696
                  remu         s1, a4, gp
                  srli         a5, sp, 20
                  rem          gp, t2, t6
                  mulhu        s9, s1, gp
                  ori          s8, t3, 243
                  auipc        t2, 320811
                  mulhu        t1, t1, s11
                  sll          gp, a1, a0
                  sltu         t0, s1, s2
                  and          t4, gp, a7
                  slt          tp, gp, a0
                  div          s6, t1, a3
                  mulhsu       zero, zero, s6
                  sub          s3, s1, t5
                  xori         s2, t0, 811
                  addi         t2, s0, 280
                  addi         s0, s11, -325
                  auipc        t1, 825962
                  sub          a2, sp, s4
                  auipc        t2, 296508
                  remu         a1, a1, t3
                  addi         a0, t2, -1657
                  mulhsu       t0, t3, a6
                  mulh         a2, s11, a5
                  srai         a1, t1, 16
                  sra          ra, t3, a2
                  mulhu        t4, s9, s9
                  and          t6, s10, sp
                  xori         s7, s1, -166
                  slti         t4, t0, -33
                  slti         s3, t2, -1455
                  ori          t3, s10, 1143
                  sll          s2, t4, t0
                  slli         t1, s0, 31
                  srl          sp, a7, s0
                  xori         s1, zero, 1933
                  slt          s9, zero, a4
                  sltiu        t1, t5, -805
                  sltu         s3, t3, s2
                  xor          s4, t4, a5
                  add          a5, s10, s4
                  addi         s3, t0, -618
                  auipc        t6, 512297
                  div          a0, a6, a3
                  remu         a1, gp, t5
                  mulhu        s9, a3, gp
                  remu         a2, t5, a7
                  sltu         s3, t1, a3
                  slti         a5, s2, 216
                  auipc        a7, 927717
                  andi         a5, t2, -1122
                  and          t4, t1, zero
                  sll          s3, s1, s1
                  mulhsu       s9, s1, s7
                  and          t1, a6, t5
                  mulh         t1, tp, s4
                  slt          t0, s7, a7
                  mulh         ra, a2, t0
                  xor          a1, s4, a4
                  auipc        sp, 1002844
                  slti         s5, t2, -471
                  sra          t3, s10, t0
                  srai         s10, s8, 18
                  mulhu        a0, s1, s2
                  mulh         s3, a1, s3
                  mulh         a5, s7, s5
                  srl          gp, a6, t3
                  add          a1, t0, t6
                  xori         s8, s0, -1276
                  srai         t6, a6, 25
                  divu         a5, tp, s5
                  auipc        s9, 643971
                  sltiu        t4, s7, -1590
                  divu         t0, s0, a7
                  mulhsu       s0, s3, s11
                  divu         sp, tp, gp
                  auipc        t1, 756267
                  slt          s0, zero, tp
                  xor          a5, ra, zero
                  auipc        t2, 466647
                  srli         s4, t0, 28
                  sub          t2, s1, t5
                  div          s10, a6, t2
                  mul          t4, s10, s7
                  mul          s3, gp, a0
                  slli         s10, s5, 31
                  sll          s10, a7, t4
                  div          a0, s5, s10
                  addi         t4, gp, 1072
                  mulhu        ra, t5, gp
                  auipc        s10, 78092
                  mulhsu       zero, s11, gp
                  slti         s10, a5, 1981
                  nop
                  xori         t4, a7, 147
                  andi         a1, s2, -770
                  mulhu        s4, t0, a1
                  rem          a1, zero, a5
                  sltu         t1, t5, t6
                  srl          s2, a0, a2
                  or           s0, a4, zero
                  mulhsu       s8, a0, t4
                  remu         t2, a3, s6
                  sub          sp, t3, s6
                  nop
                  ori          s0, a2, -169
                  add          t3, s1, t3
                  sll          gp, a1, ra
                  or           t5, a1, t4
                  sll          a2, t6, t1
                  sltiu        sp, s1, 526
                  lui          t5, 421188
                  xor          a5, s5, a7
                  sra          t2, a2, t6
                  add          s4, s9, s7
                  add          t5, zero, t2
                  addi         s3, zero, 1586
                  srli         a0, s2, 28
                  mulh         a1, s7, t1
                  add          zero, s0, tp
                  lui          a2, 41390
                  or           a2, s0, s9
                  srai         a0, s5, 3
                  sltiu        t6, s3, -781
                  sra          s4, s5, s4
                  mulhu        a5, t2, t2
                  remu         a7, s2, s9
                  div          s3, a3, s4
                  slli         tp, sp, 2
                  sltu         t5, s4, t6
                  slt          a1, a5, a1
                  divu         s10, s8, t3
                  mulh         t6, s3, t0
                  lui          ra, 917068
                  xori         s0, s4, -471
                  and          s9, a3, t3
                  ori          sp, s8, -374
                  srl          t2, s1, s5
                  sltiu        t2, s9, 1290
                  xor          t6, t1, t0
                  mulhsu       t2, t6, s11
                  srl          tp, a7, s8
                  andi         gp, zero, -1179
                  mulh         t3, s3, s0
                  srli         gp, t2, 16
                  mul          t1, a5, a1
                  remu         t2, t1, t1
                  mulhu        s5, a0, s3
                  mulhu        s9, s7, tp
                  slli         s2, a6, 7
                  lui          t6, 32557
                  lui          gp, 36638
                  sll          gp, a7, s9
                  sub          s6, a2, a1
                  slti         t2, s6, 1019
                  slli         t5, a4, 15
                  sltu         s4, a7, t4
                  mul          t2, s1, s3
                  andi         s2, t5, 653
                  mul          zero, tp, t6
                  div          t6, a3, s6
                  sltu         s9, a0, t0
                  sub          ra, t0, a7
                  ori          a1, tp, 207
                  remu         a1, tp, t3
                  divu         t6, s3, t1
                  mulh         s3, s5, a5
                  mulh         ra, s4, t1
                  auipc        t6, 196055
                  slti         s5, s6, -826
                  or           t2, s0, a6
                  mul          t6, s9, s2
                  slt          s4, s11, s8
                  srli         s1, t6, 11
                  remu         s3, s2, s0
                  slti         s2, s2, 1634
                  div          zero, s7, s2
                  xor          t1, s5, t0
                  srli         s3, t6, 3
                  ori          t6, a4, -1445
                  sll          s8, a1, gp
                  xori         s10, s5, 1501
                  srli         a1, a7, 16
                  divu         sp, s10, a0
                  or           zero, tp, t5
                  xori         s6, a6, -1931
                  xor          tp, zero, t3
                  nop
                  srai         s6, s9, 22
                  xori         a0, t0, -711
                  div          s6, s5, a3
                  auipc        a2, 222500
                  mulhu        s7, a6, t3
                  srai         gp, a7, 26
                  mulhsu       a0, zero, sp
                  auipc        a0, 497404
                  xori         t2, ra, -1710
                  auipc        s10, 881873
                  sltiu        t1, s5, -917
                  xori         t4, s9, -903
                  andi         tp, a0, -1650
                  div          s5, ra, s5
                  srl          s4, s10, zero
                  sltu         s4, t6, s11
                  divu         tp, s0, s10
                  div          tp, s2, a3
                  xori         t3, t5, 1397
                  sltiu        t3, s0, 633
                  sltiu        a3, tp, 1321
                  slli         s8, a4, 20
                  srli         s9, s2, 1
                  lui          s6, 311218
                  srli         zero, t0, 4
                  srli         s1, t1, 2
                  or           s4, a1, t2
                  or           s9, s9, t5
                  mulh         s4, s9, a5
                  sltiu        a0, t4, -1889
                  sub          t3, s9, s4
                  slti         a1, s7, -1662
                  or           zero, sp, s0
                  or           tp, s5, t1
                  sra          t6, t1, tp
                  mul          s6, s3, a3
                  auipc        s6, 377508
                  slti         tp, s7, -1130
                  divu         s1, s1, a1
                  remu         t4, a4, ra
                  sltiu        a3, s10, -422
                  sll          tp, tp, t1
                  add          t5, s6, a0
                  srl          s1, s10, s5
                  lui          t3, 178602
                  lui          ra, 1028459
                  mulhu        t6, t5, s4
                  rem          a5, ra, a5
                  add          t0, s0, a6
                  addi         t3, sp, -865
                  andi         s0, s0, -1450
                  nop
                  divu         s0, tp, t1
                  slt          s3, s4, sp
                  sra          s6, t5, s4
                  slli         t1, s4, 12
                  mulhu        s5, a5, t0
                  mulhsu       a3, sp, s0
                  divu         t0, t0, t2
                  srai         s2, t0, 14
                  mulh         s6, a0, gp
                  remu         s9, a4, a3
                  rem          s5, s7, s11
                  mulhsu       a3, zero, s11
                  lui          s4, 546409
                  sltu         s6, t6, s9
                  remu         s7, t4, s2
                  ori          s10, s10, 599
                  and          sp, s2, t0
                  sltiu        zero, s9, -1213
                  sltu         s7, t4, a5
                  srli         t3, s5, 18
                  xor          s7, gp, s4
                  mulhsu       a5, s6, s6
                  sll          t6, t4, ra
                  auipc        t6, 585307
                  srai         a7, gp, 13
                  divu         t6, s0, t4
                  sltu         a2, t2, t0
                  xori         s8, s0, 155
                  xori         s6, a7, 1780
                  rem          s2, t0, a5
                  mul          t0, t5, t3
                  div          s0, a7, ra
                  slt          s2, s11, gp
                  mulhsu       s2, t4, a3
                  slt          t5, s8, t2
                  and          ra, tp, s11
                  xor          a3, t1, s11
                  divu         t2, t5, s1
                  xori         s7, t2, 1522
                  divu         t5, s0, t3
                  andi         s5, a2, -1205
                  sll          a1, a0, a4
                  lui          t1, 643929
                  sub          s1, ra, s9
                  sltiu        sp, s4, -118
                  lui          a2, 658399
                  xori         t4, gp, 1032
                  sub          s1, t0, a7
                  sub          t2, t2, t2
                  and          sp, s3, a6
                  and          a0, t3, t4
                  srl          s7, a1, t2
                  slti         a1, s9, 54
                  or           ra, tp, s7
                  slli         zero, s0, 11
                  nop
                  sra          t6, s11, a0
                  or           s8, t5, t1
                  srli         a7, sp, 17
                  remu         s6, a5, a7
                  or           gp, tp, gp
                  xori         s1, s4, 1525
                  sltu         t5, a6, s8
                  slli         a1, a1, 1
                  sra          t1, zero, s1
                  mulhsu       a3, t2, tp
                  and          ra, a1, t0
                  srli         a7, tp, 0
                  lui          a1, 78954
                  sub          ra, a3, a6
                  xori         t3, tp, -725
                  nop
                  div          s5, s8, s11
                  srli         a3, s8, 6
                  srl          s6, s2, t1
                  or           a7, a7, t0
                  srai         a5, t3, 11
                  sub          a2, t4, t5
                  remu         s10, t2, a0
                  sltiu        t1, s3, -1825
                  remu         a2, a7, s0
                  nop
                  mulh         t6, s11, a5
                  mul          ra, s6, zero
                  sltiu        t1, a6, 4
                  slli         s2, ra, 25
                  sltiu        s8, s6, 1767
                  or           s8, a7, s2
                  remu         t1, t5, s2
                  xori         s0, a3, 173
                  or           a0, t6, s3
                  lui          s9, 737690
                  divu         ra, s10, t0
                  mulhu        s1, t3, t0
                  mulhu        a7, a1, t5
                  sltiu        a7, a1, -1496
                  add          s4, a7, sp
                  sltiu        t6, a6, -1213
                  addi         s6, a5, -1798
                  remu         tp, s10, s3
                  sub          s6, a2, a7
                  slt          t4, s3, s10
                  nop
                  mulhsu       a5, t5, sp
                  mul          a5, t5, zero
                  xori         a7, t2, -6
                  sltiu        t0, sp, 131
                  mul          sp, t4, s2
                  divu         t3, a6, t1
                  sltu         s0, s2, ra
                  andi         t1, s11, -173
                  mulhsu       a3, s10, s8
                  mul          s0, t2, s5
                  sra          t5, tp, s4
                  sltu         a2, t0, sp
                  slt          zero, a2, s8
                  divu         ra, t1, ra
                  srl          a0, a7, s2
                  sltu         s1, t2, s11
                  xor          t4, t6, t4
                  sltu         gp, a7, a7
                  mulhu        t6, t4, a2
                  andi         s7, s9, -480
                  lui          a3, 576618
                  auipc        a2, 40783
                  xor          t5, s4, tp
                  andi         t6, s11, -1067
                  ori          a5, s7, -651
                  auipc        tp, 304715
                  xor          s4, s3, ra
                  xor          gp, zero, s6
                  add          t4, s0, s8
                  xori         s1, a0, 1751
                  slt          tp, s8, sp
                  xor          a1, t4, t6
                  xor          gp, gp, gp
                  addi         t6, tp, 1245
                  slti         a1, sp, -9
                  divu         zero, s3, sp
                  xor          s3, a4, t0
                  or           a2, a1, s8
                  div          s6, t2, t3
                  slti         sp, s8, -1990
                  mulhsu       t6, sp, s10
                  add          t1, s5, t2
                  sll          s10, s8, s1
                  rem          s2, s10, s7
                  divu         a5, s7, s1
                  slti         t6, gp, 1916
                  remu         a2, zero, gp
                  rem          s4, t3, tp
                  nop
                  srli         a1, s11, 26
                  srl          zero, tp, s11
                  and          s2, tp, s2
                  remu         ra, t0, s9
                  slti         t0, a7, 1654
                  sll          s7, s2, t4
                  auipc        a7, 270186
                  nop
                  xor          a5, t3, t6
                  srl          s0, s2, a6
                  andi         a0, a7, 1738
                  mulh         tp, a6, a4
                  slli         a0, tp, 3
                  sll          t3, a6, sp
                  srl          s8, t1, a5
                  sra          ra, t1, t5
                  mulh         a7, a7, s5
                  slli         zero, a7, 13
                  rem          a5, s1, ra
                  xor          s4, s3, t4
                  and          s0, a7, ra
                  lui          tp, 178182
                  remu         t0, s7, gp
                  and          t0, s4, tp
                  andi         t1, a1, 1420
                  sltiu        a0, s10, 2023
                  divu         t5, a0, t6
                  ori          s8, a3, -1621
                  xor          a3, s9, s9
                  addi         a7, a2, -530
                  mulh         tp, s11, t4
                  xori         a5, a1, 975
                  srai         s9, sp, 0
                  slli         a7, a6, 20
                  remu         t1, t4, t5
                  ori          s1, t6, 1693
                  srai         t1, a4, 7
                  slti         t4, tp, 433
                  auipc        s9, 28133
                  auipc        t0, 12923
                  mulhu        t3, s1, s4
                  sll          s3, s0, t1
                  divu         a2, t4, s6
                  sll          s4, a6, s4
                  sll          ra, gp, s9
                  remu         a1, a1, s8
                  sltu         s9, s1, s2
                  nop
                  divu         tp, zero, s1
                  slli         s4, s2, 24
                  slli         s9, s8, 5
                  mulhsu       a1, zero, a1
                  add          t6, a2, t0
                  srli         gp, s9, 24
                  mulhsu       s10, s1, a3
                  and          ra, gp, a6
                  slli         zero, t5, 23
                  mulhu        s1, t5, s3
                  sltu         a2, t3, t3
                  mulhu        t0, gp, t0
                  nop
                  slli         s1, s6, 17
                  sub          s4, a3, zero
                  xori         t6, s10, -703
                  remu         t6, t0, s8
                  sltu         a2, sp, t1
                  srai         sp, s4, 4
                  xor          s8, s2, zero
                  slli         s4, s10, 21
                  sra          zero, a6, a6
                  andi         zero, a5, 1116
                  srli         t3, t2, 20
                  sltu         sp, t3, sp
                  xor          t6, t4, s6
                  ori          t1, s11, -1054
                  slt          ra, s6, a2
                  slti         s5, a3, 206
                  slti         t6, a7, 837
                  srli         a7, t2, 10
                  sll          zero, t1, t3
                  xori         zero, a1, 1217
                  sub          t4, a0, s1
                  lui          s5, 533112
                  slli         zero, t1, 30
                  mulhu        s2, tp, ra
                  xor          s10, s8, s8
                  mul          a7, s2, a6
                  auipc        s0, 901942
                  add          a7, s11, ra
                  or           s9, a5, s5
                  slli         a1, a3, 13
                  andi         t0, a6, 785
                  slt          tp, a6, ra
                  sra          s0, a7, s11
                  mul          t4, zero, s7
                  addi         t3, s7, 1687
                  ori          zero, t3, -393
                  rem          s9, s5, s3
                  rem          t1, t6, t5
                  sub          t5, a3, sp
                  mulhu        ra, s6, t1
                  sltu         t6, s11, zero
                  mulh         a0, a1, a4
                  srli         a1, a7, 4
                  mulhsu       s6, a7, s6
                  mul          t6, t4, a4
                  mulhu        s1, s1, t0
                  mul          s4, a5, a4
                  mul          s2, s7, t4
                  divu         s5, a7, t0
                  addi         s9, a1, -1273
                  sltu         sp, s3, s8
                  sll          t2, gp, s5
                  slli         s2, s1, 23
                  srl          s4, t3, s8
                  xor          s4, t6, s6
                  addi         s2, a4, -64
                  srai         a2, s7, 0
                  add          t5, s5, s6
                  sra          s0, s3, a1
                  remu         s1, s1, sp
                  xor          t6, sp, t4
                  or           t4, ra, tp
                  slti         tp, a6, -1211
                  or           a7, s0, a7
                  nop
                  slt          a7, s7, a4
                  addi         a0, s1, 1595
                  divu         s10, sp, a2
                  sltiu        s9, a2, 17
                  sra          t2, s10, s10
                  srl          t4, gp, a4
                  slli         a0, s8, 23
                  srai         s10, s8, 25
                  xor          t6, t5, a5
                  xor          tp, a0, ra
                  lui          s2, 835877
                  sra          tp, gp, s4
                  nop
                  mulhu        t6, t0, s3
                  or           a3, s7, s3
                  andi         a3, t6, 1645
                  slti         gp, ra, -1641
                  mulhu        t3, a1, s1
                  remu         t5, a1, a3
                  divu         s8, sp, a6
                  add          s6, tp, s1
                  add          s10, t1, a1
                  sll          a2, t5, a0
                  addi         s0, a1, 89
                  andi         s8, t4, 85
                  auipc        a7, 619471
                  slt          s10, a2, a6
                  mul          t3, a7, s4
                  mulh         a0, s11, a3
                  sll          s3, s0, t1
                  nop
                  div          t3, t1, s9
                  divu         s2, s0, a3
                  mulh         t2, t5, a0
                  sltiu        s5, s0, 216
                  mulhsu       s2, s9, ra
                  lui          t5, 481688
                  srli         t2, a3, 31
                  div          s2, a4, t1
                  slt          t1, a0, t3
                  sltu         a0, t1, ra
                  sub          t3, a2, s9
                  add          t3, t5, s10
                  mul          a0, a0, a4
                  xori         a2, s9, 1759
                  slli         s6, t5, 26
                  add          s7, s1, s6
                  xori         t0, sp, -1766
                  addi         t6, a1, -1112
                  sra          s4, zero, ra
                  nop
                  srl          s2, a7, s1
                  div          a1, s6, s3
                  add          sp, a4, ra
                  sll          tp, zero, a7
                  remu         s1, t4, sp
                  slli         gp, s10, 12
                  mul          s2, s1, t1
                  slti         s7, a3, -1421
                  or           a2, s10, gp
                  srli         ra, tp, 24
                  lui          t6, 971892
                  addi         zero, s7, -229
                  slti         s10, ra, -719
                  srli         s10, a3, 30
                  mul          s8, zero, t0
                  ori          a2, a2, -1848
                  mulh         s9, s10, s1
                  remu         s0, s2, t4
                  srai         t2, a3, 12
                  xor          t2, a6, a1
                  sltu         s7, sp, s0
                  slt          a7, s3, s6
                  sra          s6, s7, s0
                  rem          s1, a2, s10
                  mulh         sp, t6, a5
                  ori          s3, s10, -1039
                  add          a5, s1, t6
                  add          a1, s4, a2
                  slli         t4, a3, 7
                  sra          s10, gp, ra
                  add          a7, s9, t2
                  ori          tp, a2, 1439
                  nop
                  add          a0, s11, t4
                  remu         sp, t6, a4
                  sltu         gp, zero, s4
                  sll          s6, s8, a3
                  sra          t1, a0, gp
                  srai         t3, t3, 18
                  sll          a0, t4, tp
                  slli         ra, gp, 22
                  xori         t1, t6, -659
                  xori         zero, a5, -439
                  sll          t0, s1, t3
                  and          s9, a1, tp
                  mul          s3, s9, t4
                  xor          s2, a0, s7
                  mul          s2, a5, a0
                  mulhu        tp, a5, a5
                  or           a7, t1, a2
                  mulhsu       sp, a4, zero
                  slt          a7, a7, a0
                  addi         a3, t0, 275
                  sub          a5, t1, t0
                  srl          gp, s5, t2
                  sltu         t2, t0, sp
                  rem          s9, s8, t4
                  or           s3, s11, t6
                  mulhsu       a2, a3, a1
                  addi         tp, tp, -1679
                  divu         ra, ra, t2
                  mulh         gp, t6, a6
                  auipc        t6, 479380
                  mulhu        s10, s9, t1
                  mulhu        s0, t6, t4
                  mulhsu       a2, s2, s2
                  mul          s7, s9, s9
                  slli         s9, s2, 5
                  mulh         a5, t1, zero
                  slli         sp, t3, 30
                  srl          t3, gp, s2
                  sll          a7, t4, a4
                  auipc        s8, 218331
                  mulh         a1, s7, ra
                  xori         t0, t0, -888
                  xori         t3, t1, -1977
                  addi         t6, a3, 1827
                  sltiu        s8, t1, -1607
                  srli         gp, s3, 12
                  xori         t5, a7, 1790
                  and          s7, s0, gp
                  remu         a3, t4, a2
                  remu         sp, a2, s11
                  sltiu        s2, sp, -1996
                  or           t1, gp, t6
                  div          zero, t2, sp
                  divu         s0, t3, sp
                  slli         a5, a1, 13
                  nop
                  add          s4, t6, a7
                  auipc        s9, 778557
                  andi         sp, s3, 23
                  rem          zero, a6, s10
                  lui          s4, 993255
                  lui          s10, 78135
                  sltiu        a2, tp, 1614
                  auipc        s10, 220781
                  mul          s7, s5, s2
                  or           a3, tp, t1
                  sll          a0, s4, t1
                  add          a3, a5, s5
                  sltu         s9, t1, sp
                  and          t5, a2, gp
                  sra          gp, t3, s0
                  remu         s4, t2, s7
                  nop
                  srli         ra, tp, 12
                  and          t0, a3, s2
                  addi         s8, a2, 1207
                  srl          ra, a7, t4
                  xori         s0, s9, -82
                  xori         s4, t2, -625
                  addi         a5, s10, 857
                  mulhsu       ra, a5, a3
                  sll          t3, a0, ra
                  srl          s8, gp, a0
                  add          a1, a1, s10
                  ori          t0, s6, 1382
                  sra          t0, zero, t0
                  auipc        s10, 747501
                  lui          s2, 1008534
                  mulhu        s4, t6, a1
                  srli         s5, s5, 11
                  mulhsu       t5, s2, a6
                  remu         a0, s4, s6
                  slti         a3, t2, -1298
                  add          s1, t4, sp
                  mulh         t4, zero, s5
                  sltiu        a2, t6, -1560
                  slt          t5, t6, s2
                  auipc        gp, 652757
                  and          s8, sp, a1
                  srli         s0, s2, 31
                  nop
                  and          s5, a5, gp
                  mulhsu       s10, a5, s2
                  mulhsu       t2, s2, t4
                  mulhu        t2, a1, s4
                  auipc        a7, 695488
                  remu         t2, a0, s5
                  auipc        s3, 227206
                  andi         a3, s4, -1412
                  slli         a2, a3, 16
                  and          a2, a3, a1
                  sll          tp, s10, s4
                  sra          a0, a1, a7
                  rem          s9, a6, t2
                  ori          s9, t1, -753
                  addi         s4, a0, 1390
                  xori         sp, s9, 1596
                  sll          a5, t6, s6
                  sltu         t1, a6, sp
                  rem          t4, gp, s11
                  xori         zero, s2, -796
                  slt          ra, a7, t3
                  lui          t5, 908981
                  mul          zero, s11, gp
                  slli         s2, s4, 11
                  remu         t4, s9, t3
                  slli         t4, gp, 31
                  sub          a5, s3, t2
                  mulh         a3, s3, sp
                  addi         t2, t4, 181
                  add          s1, s8, a2
                  or           zero, s10, t3
                  srl          s5, a6, t4
                  add          s2, t1, s3
                  srai         a3, s11, 29
                  srli         s4, t0, 7
                  slti         s7, s10, 799
                  mulhu        s7, s6, t1
                  srl          a1, s1, s4
                  or           s6, t1, s11
                  andi         ra, t4, -395
                  add          s5, tp, s7
                  sltu         s5, s4, a4
                  lui          s2, 532703
                  srli         t4, s2, 18
                  srai         t1, a5, 16
                  nop
                  srli         a3, t5, 21
                  srli         sp, a4, 9
                  sltiu        s0, s5, 1605
                  mulhu        t0, t1, a0
                  srl          tp, t1, a0
                  srai         s7, a4, 21
                  ori          a7, zero, 1155
                  slti         t6, t0, -943
                  slli         t0, s3, 2
                  mulhu        a0, t6, zero
                  sra          s1, a0, a4
                  slti         s9, a4, -239
                  slt          sp, s2, s0
                  andi         s9, s11, 1421
                  remu         s0, s6, t5
                  add          zero, s0, a4
                  divu         s0, zero, t5
                  slli         sp, s8, 19
                  xori         t1, s6, -325
                  slti         s9, tp, -1063
                  ori          t2, a1, 514
                  mulh         t1, s9, s0
                  remu         s0, s10, a2
                  divu         s0, t0, s9
                  slli         s10, a0, 1
                  add          s0, s5, s11
                  andi         a5, a3, 1732
                  add          a1, sp, a7
                  sltu         a7, s3, tp
                  sltiu        a0, s5, 1261
                  div          a2, t3, s11
                  nop
                  andi         a2, a3, 379
                  sll          a5, s0, s2
                  rem          a0, s1, a4
                  slti         s2, t2, 97
                  mulhsu       t1, a0, t6
                  slt          tp, tp, zero
                  or           s9, s4, a5
                  mulhsu       sp, s3, s5
                  and          s8, a1, t5
                  mul          t3, s4, t4
                  or           a0, t2, a5
                  rem          s10, s2, gp
                  rem          s1, a2, t5
                  sll          t1, a0, t0
                  addi         s0, a5, 77
                  srl          s6, t5, s10
                  sra          gp, s0, t2
                  mul          a7, sp, zero
                  sltu         t5, a1, gp
                  remu         a5, s10, s1
                  or           s3, s3, s4
                  addi         s9, s7, -662
                  sra          s3, s8, t5
                  auipc        t1, 801503
                  sll          s2, t6, s5
                  slt          s4, t5, t4
                  mulhu        s8, s4, s9
                  add          t2, t5, s3
                  mul          t1, a0, t2
                  srai         s2, a3, 6
                  add          s6, ra, a5
                  remu         ra, a4, s10
                  add          a7, a5, a2
                  sltu         s7, a1, s8
                  divu         s2, gp, t5
                  srli         a1, gp, 21
                  lui          s8, 1028591
                  div          s9, t2, zero
                  add          s3, t2, s4
                  sra          t3, s5, sp
                  rem          tp, s6, t3
                  slli         a0, s10, 24
                  mul          t6, s7, a0
                  auipc        t6, 854902
                  and          t5, a5, tp
                  nop
                  auipc        s8, 671225
                  or           s0, s7, a6
                  sll          a7, t2, s4
                  div          s6, s0, a5
                  div          t4, s4, zero
                  slli         tp, sp, 22
                  or           s9, s5, a3
                  addi         a7, s1, 1905
                  add          t5, s9, s0
                  rem          s2, tp, s10
                  ori          s6, a1, -1299
                  addi         a5, s9, 1883
                  divu         zero, a0, s2
                  slt          t2, s5, ra
                  slt          a7, a7, s8
                  add          t3, s1, ra
                  xor          s10, s7, a5
                  ori          s10, t4, 487
                  mulh         tp, a2, s0
                  mulh         t0, s2, t6
                  xori         s4, s8, 747
                  or           t0, t0, a3
                  srli         t3, t2, 10
                  srai         t2, t3, 10
                  slli         a7, a3, 2
                  sra          zero, s6, a2
                  auipc        s10, 833931
                  slti         a7, t1, -1591
                  xori         s7, gp, 1541
                  srli         s8, a1, 24
                  ori          s5, s8, -1305
                  xor          a3, tp, s8
                  or           t6, s6, sp
                  slti         t0, s7, 152
                  xor          t6, s4, tp
                  add          zero, s10, a2
                  lui          gp, 197230
                  mul          a5, a5, a7
                  sra          sp, t3, tp
                  mulhsu       a3, s9, t3
                  sltiu        sp, t4, -349
                  sra          s4, a2, sp
                  xori         t3, s8, -349
                  lui          t5, 1018573
                  slt          t0, s9, t5
                  mulh         gp, s10, ra
                  ori          a3, gp, 115
                  sltiu        t0, t6, 575
                  mulhu        tp, t1, a5
                  xori         a5, s6, 761
                  remu         s4, t1, s4
                  slli         a3, gp, 25
                  srl          t5, zero, a4
                  or           a2, a3, t2
                  xor          t3, s0, t2
                  andi         s2, tp, 1898
                  sub          tp, tp, sp
                  and          s10, sp, s3
                  srli         s0, s0, 8
                  xor          t6, a3, a5
                  add          t5, t1, gp
                  ori          s3, s2, 741
                  andi         s5, a0, -1954
                  srai         a1, s5, 20
                  mul          s7, s0, a4
                  div          gp, t6, s2
                  add          s10, a0, t0
                  nop
                  sll          sp, s11, s10
                  auipc        t1, 136365
                  mulh         s6, zero, s1
                  andi         a2, a0, 1483
                  mulhsu       ra, sp, s8
                  rem          t3, s0, t0
                  sra          t0, s4, t5
                  slt          t4, a1, ra
                  mulhsu       t4, s1, t5
                  mul          zero, s9, s2
                  add          a0, a7, t4
                  rem          a0, s3, s5
                  sub          s4, s8, t1
                  add          s10, a0, a6
                  auipc        t5, 289683
                  sltu         a0, t3, a6
                  remu         t5, a7, a3
                  divu         a3, s3, zero
                  lui          a1, 683559
                  ori          a0, a1, 327
                  mul          a5, ra, a2
                  rem          t2, s6, s5
                  divu         a5, s10, s4
                  andi         a5, s5, 1761
                  sltiu        t4, s1, -1995
                  add          t6, s7, s2
                  sll          sp, zero, s10
                  divu         a5, a0, s6
                  rem          s2, t3, s1
                  divu         ra, t2, s0
                  andi         s1, t0, 2037
                  srai         t6, s2, 14
                  sltu         s2, t0, s8
                  remu         tp, s2, t5
                  lui          sp, 829483
                  srli         gp, a1, 2
                  auipc        s2, 554200
                  xori         tp, s2, 317
                  ori          a7, s7, -1214
                  xor          s2, s0, a5
                  sltu         a0, ra, gp
                  and          a5, s2, ra
                  or           tp, a5, tp
                  remu         s1, a3, a5
                  srl          s0, s4, t4
                  slt          t4, a2, t1
                  nop
                  sub          s8, t0, s10
                  add          s10, s7, tp
                  mulhsu       s0, tp, a6
                  srl          t5, s8, tp
                  sra          s4, s3, t5
                  srli         s5, t4, 2
                  srli         t0, tp, 23
                  ori          s4, zero, 1215
                  slli         s7, s0, 11
                  sltu         ra, t2, a4
                  auipc        s3, 312236
                  mulh         t4, s3, t5
                  slt          ra, a7, s6
                  auipc        s2, 984774
                  mul          s6, a7, a1
                  andi         t5, gp, 1927
                  divu         s7, a0, s1
                  or           ra, s8, s0
                  ori          t3, s9, 784
                  srli         s9, ra, 17
                  add          t6, s5, s11
                  srai         t2, gp, 31
                  auipc        s9, 579144
                  sltu         s4, s1, a4
                  mul          s5, t3, a5
                  sra          a5, t4, s8
                  srai         a2, a6, 15
                  slli         a7, s1, 24
                  andi         t1, s7, 310
                  srli         t1, s4, 14
                  div          s3, zero, t4
                  slti         s4, s10, -1292
                  or           s5, t1, s6
                  remu         t5, a1, a5
                  xor          a7, s2, a5
                  div          s3, s5, s8
                  addi         a2, t1, -465
                  ori          a2, a1, 673
                  or           t3, t3, s1
                  remu         s2, t5, t4
                  srli         a0, gp, 12
                  slt          s1, t3, a5
                  addi         s8, s8, -32
                  sltu         ra, s0, s1
                  mul          s7, s5, ra
                  lui          s4, 1010986
                  slli         s10, t2, 13
                  sltiu        s1, sp, -79
                  andi         s4, zero, 502
                  sll          t4, a2, s5
                  sub          s4, a0, a2
                  remu         s0, ra, a6
                  mul          s10, s5, zero
                  div          s4, t3, t4
                  add          a1, t2, a2
                  sll          s5, s3, tp
                  remu         a5, s6, ra
                  andi         ra, zero, -410
                  xor          sp, a6, gp
                  srai         a7, t0, 16
                  sll          zero, a2, t1
                  add          t6, s1, s9
                  xori         t2, t2, 1747
                  mulhu        a7, t5, tp
                  and          t3, ra, a7
                  rem          t2, ra, s0
                  divu         s9, t4, sp
                  addi         s5, s5, -26
                  sra          t5, a2, tp
                  mulhu        t2, s2, gp
                  andi         s2, a1, 1621
                  xor          t6, s0, a3
                  divu         s6, a0, a2
                  lui          s9, 118678
                  mulhu        t3, a4, t6
                  mulhu        a3, t4, a4
                  xori         s3, a5, -260
                  remu         s6, t4, s2
                  srai         s9, s10, 24
                  divu         s2, a3, zero
                  sll          t2, t5, a4
                  xor          s6, a0, tp
                  sub          gp, a3, a4
                  andi         t4, s1, -1070
                  lui          s7, 1021347
                  slti         t6, a2, -1421
                  sltiu        t4, s7, 1900
                  mulh         a5, s1, t1
                  div          t3, a0, s4
                  auipc        gp, 590548
                  slli         t5, t5, 8
                  or           s1, ra, s5
                  mulh         t6, t3, a0
                  mul          t5, s11, t5
                  div          t2, s0, s10
                  ori          t1, a7, 808
                  ori          s0, a5, -721
                  div          a2, s6, t4
                  xor          zero, t1, s0
                  nop
                  sltu         s10, s3, s9
                  addi         s7, a2, 1420
                  xori         tp, a1, -1440
                  sltiu        t3, ra, 1479
                  div          s3, sp, zero
                  srli         a0, tp, 17
                  mulhsu       t6, t4, ra
                  addi         s8, t5, 214
                  slt          s1, t4, t6
                  or           s1, s9, gp
                  xor          s2, s1, t0
                  slti         s6, a4, 1529
                  slli         t3, t4, 19
                  srl          s6, gp, a0
                  sub          a2, s3, a7
                  srli         ra, gp, 13
                  remu         s2, s0, t0
                  sltiu        sp, t0, 1149
                  addi         a7, s1, -803
                  remu         t5, t6, t6
                  mulhsu       a7, t1, t3
                  srl          s2, a4, a1
                  lui          a3, 409221
                  divu         sp, s6, a7
                  slti         t5, a1, 783
                  slli         t5, s0, 0
                  slti         ra, s8, -1474
                  and          s1, ra, a4
                  addi         t1, s3, -1860
                  auipc        a2, 995440
                  addi         a1, t3, 1967
                  and          t6, zero, a4
                  or           s3, s8, s9
                  mulhsu       s0, t0, a1
                  remu         sp, t0, s4
                  sll          t2, a4, s11
                  srl          ra, t2, t6
                  rem          s5, t5, tp
                  slt          t3, t6, s7
                  lui          a1, 983739
                  and          t0, s0, a5
                  lui          a0, 472758
                  slt          t6, s7, sp
                  or           s7, s0, s0
                  div          t5, s6, a3
                  slt          a1, s2, a2
                  or           s4, zero, s9
                  mulh         t2, s9, t6
                  mulhsu       s4, a0, s0
                  addi         t5, s9, -1290
                  ori          s10, sp, -1517
                  remu         a7, s6, a2
                  slt          tp, t0, s2
                  sltiu        a5, t4, 450
                  srl          s2, a2, s2
                  auipc        a7, 257572
                  srl          zero, sp, tp
                  or           ra, a5, a1
                  srl          s1, a7, s6
                  sltu         s3, t3, t4
                  addi         s10, s11, -679
                  sltiu        a5, s8, 1193
                  xori         s6, s1, -722
                  or           a7, s5, tp
                  andi         s3, zero, -509
                  addi         ra, t4, -788
                  andi         s4, t0, 290
                  ori          s1, ra, -505
                  xor          s0, s8, s2
                  srai         t6, t0, 25
                  lui          t6, 92304
                  ori          t0, a0, -1115
                  divu         sp, s2, s5
                  mulh         s8, s2, ra
                  srai         gp, s3, 24
                  srai         s9, a2, 0
                  mulh         t3, tp, a4
                  sub          t6, s11, s4
                  srl          t3, a0, a0
                  ori          a0, t1, 1790
                  rem          tp, ra, t1
                  sra          s8, a0, tp
                  rem          a5, a2, t2
                  ori          a0, a3, 1405
                  xor          sp, zero, t3
                  or           zero, a2, a2
                  sltiu        sp, s5, -1341
                  auipc        s7, 189661
                  add          s2, s10, s4
                  slti         a7, a3, 242
                  addi         s6, tp, -1345
                  sltu         s1, a7, s1
                  srai         a3, s11, 19
                  sra          s2, a6, a6
                  div          ra, t2, t4
                  sub          gp, a6, t5
                  and          a7, a0, a6
                  mulhsu       a7, t4, s11
                  sra          a3, s2, t0
                  nop
                  sll          s3, a5, s7
                  mulhsu       a2, a7, ra
                  andi         a1, s3, 1140
                  xori         a2, t6, 1898
                  ori          s7, s6, -1620
                  add          s4, a4, s10
                  auipc        s0, 931122
                  lui          t6, 505339
                  auipc        s3, 556919
                  sltu         s0, a2, t3
                  mulhu        t6, s7, s3
                  or           tp, zero, s9
                  or           t4, t3, a7
                  mulhu        s3, s3, a7
                  div          s0, t4, s5
                  mul          t3, s11, t1
                  slt          gp, t4, t2
                  sra          s7, s7, sp
                  srai         s6, a4, 28
                  div          t6, t2, s8
                  srli         s2, tp, 8
                  addi         ra, tp, 589
                  slt          t2, s0, t6
                  div          a0, a4, t5
                  or           t5, a0, sp
                  sll          ra, s3, t0
                  addi         t4, ra, 1383
                  xori         a7, s2, 1808
                  lui          s10, 803376
                  divu         s9, s10, s5
                  sub          s5, s4, s4
                  srli         s5, ra, 11
                  srli         s0, a7, 10
                  xor          s6, sp, s9
                  div          a3, t1, s8
                  remu         a3, a4, a3
                  mul          s3, s2, t1
                  or           s4, a7, t0
                  srli         s9, gp, 30
                  div          s9, s10, t3
                  auipc        t6, 279899
                  or           tp, gp, s10
                  sltu         gp, s2, t4
                  remu         t3, a6, a5
                  sltiu        s6, t5, 377
                  slti         s7, a7, -655
                  sll          s8, s2, t2
                  divu         s1, s6, s9
                  andi         s6, a0, -2001
                  sll          gp, s11, s4
                  mul          s7, ra, a4
                  xori         t6, tp, 323
                  mulh         ra, s0, a4
                  nop
                  sub          t6, t6, zero
                  srl          s4, t0, t1
                  mul          s8, tp, ra
                  sra          sp, a7, t5
                  sll          t3, t6, s2
                  slli         s5, a3, 21
                  and          t6, s8, s8
                  andi         a1, a6, 598
                  rem          s3, t1, s8
                  slt          s6, s2, zero
                  ori          sp, zero, 1755
                  slti         a3, s9, 938
                  and          s4, zero, a4
                  xori         s3, gp, -787
                  addi         a7, s0, -434
                  srai         s0, a3, 30
                  and          t6, s1, t6
                  lui          t2, 443426
                  mul          a1, a7, s4
                  addi         t2, t0, -1754
                  div          a2, t3, a0
                  auipc        s6, 775367
                  ori          ra, s6, 396
                  div          a2, s9, t3
                  srli         a3, t1, 27
                  sub          ra, t1, gp
                  xori         s5, a3, -1111
                  or           tp, a5, zero
                  srl          s0, a1, s11
                  ori          tp, tp, -110
                  srl          s3, s1, s3
                  rem          ra, s4, zero
                  add          t1, s5, s6
                  srai         s0, a4, 28
                  mul          s7, a2, s1
                  auipc        s10, 200254
                  sra          a7, a3, a1
                  rem          t3, a0, a0
                  and          a7, a0, s1
                  and          s1, zero, s3
                  div          t1, t6, ra
                  remu         s7, t3, s11
                  mul          t1, sp, t3
                  rem          s10, gp, s9
                  addi         s10, a3, 626
                  sub          s8, t0, t6
                  nop
                  mul          t1, t5, a7
                  mulh         t2, a0, a3
                  sra          s8, s11, s11
                  mulhsu       t5, s1, s5
                  auipc        s10, 309467
                  slt          s5, a6, t5
                  remu         sp, s4, s7
                  sltu         t2, zero, t3
                  mul          s0, s4, a7
                  auipc        a5, 478154
                  srl          s9, a4, s4
                  mul          t3, s10, a5
                  lui          s8, 108373
                  sltiu        t0, a1, -943
                  auipc        t5, 479090
                  sra          a1, t4, s0
                  remu         zero, t4, s11
                  addi         t4, gp, -1641
                  mulh         a2, t1, a4
                  lui          t5, 509730
                  xori         t0, zero, -1204
                  mulh         sp, a2, t2
                  or           a2, s11, sp
                  srl          t0, t5, t2
                  nop
                  or           s10, s11, s7
                  sltu         a1, s4, s3
                  xor          a5, s10, gp
                  xori         ra, s0, 1763
                  slti         a7, gp, -561
                  xor          t2, s1, s0
                  add          a5, t4, s9
                  sub          gp, a1, s4
                  mul          s10, s6, s7
                  sll          t3, t0, a0
                  slti         s3, s0, -809
                  slli         a3, t4, 10
                  slti         s0, s9, 984
                  slt          s3, a3, t2
                  mul          sp, a1, a5
                  sll          a0, t6, t4
                  rem          s4, tp, s7
                  andi         s5, t2, -676
                  slt          t0, s3, s10
                  add          s0, t3, a1
                  div          s1, s0, a3
                  mulhsu       s9, t0, t2
                  sll          a2, t4, a4
                  sub          a0, s9, t6
                  sub          a0, a2, t1
                  srai         t2, s8, 14
                  slti         zero, t2, 1968
                  sra          a1, gp, a7
                  ori          t6, s4, 454
                  slt          t1, gp, sp
                  xor          s0, s11, t0
                  mulhsu       t5, a1, a6
                  sra          t6, s6, s5
                  srli         s1, a1, 0
                  rem          t0, s5, t5
                  andi         sp, a3, 1403
                  slli         a5, s11, 22
                  xori         s2, a1, 1498
                  sll          tp, a6, t2
                  mulhu        a3, s4, a7
                  or           a3, a1, a2
                  div          t2, s9, zero
                  and          a0, t1, t1
                  addi         a0, zero, 942
                  or           a1, t0, s6
                  auipc        t0, 52349
                  and          gp, s10, a6
                  slti         s9, s9, -38
                  addi         s4, a6, -1619
                  srl          a0, t4, gp
                  mulh         s9, t2, s7
                  slt          a7, t6, a4
                  mul          t3, a1, t5
                  sll          a7, a5, a7
                  slli         sp, t0, 27
                  xori         a3, sp, -1943
                  sll          a1, t3, zero
                  remu         a7, a7, a4
                  lui          s4, 114542
                  sltiu        tp, s10, 1722
                  andi         s2, tp, 177
                  mul          s8, s8, tp
                  andi         a0, s6, -1807
                  srai         t3, t3, 2
                  mulhu        s2, ra, s5
                  add          ra, s6, t2
                  sltu         t1, a6, s9
                  nop
                  sub          a7, gp, s1
                  add          t3, s0, a5
                  sub          t0, s1, s0
                  andi         t6, s2, -949
                  nop
                  and          gp, s10, tp
                  addi         gp, s11, -2014
                  sll          s3, s4, a2
                  srl          t3, t3, s11
                  andi         t0, t4, -355
                  slt          a7, ra, t0
                  remu         sp, s4, a4
                  mul          t3, zero, ra
                  xori         s5, s0, 1816
                  nop
                  slt          tp, s2, a0
                  sll          t1, s11, s5
                  nop
                  mul          a2, s11, a6
                  or           a5, s2, t4
                  sltiu        s2, gp, 1730
                  rem          s2, s5, a5
                  xor          s5, a1, tp
                  mulhsu       t1, t3, a2
                  slli         a0, s1, 18
                  andi         s4, a4, -695
                  sltu         ra, a0, ra
                  remu         s10, s11, a1
                  or           s8, s7, t1
                  mulhu        a5, zero, s5
                  sra          s6, t2, t4
                  sll          s4, a4, s3
                  slli         zero, s2, 12
                  mul          ra, zero, s4
                  slli         sp, s0, 0
                  srai         s2, s5, 5
                  mulh         s8, tp, s3
                  srli         a0, t1, 2
                  and          s2, s1, t4
                  sll          t2, a6, gp
                  srai         a1, a6, 28
                  ori          sp, t6, 157
                  mul          t2, s8, ra
                  srli         gp, a3, 3
                  auipc        t5, 348959
                  slli         a7, gp, 6
                  sub          s0, t0, zero
                  sltu         s1, t6, t3
                  remu         a7, s0, a6
                  sll          s3, ra, s3
                  sub          t5, s2, a2
                  sll          t2, a4, t1
                  div          zero, zero, s2
                  addi         s2, s5, 864
                  and          t3, s8, t6
                  slti         ra, s6, -747
                  sltu         s8, a4, s7
                  nop
                  mulhsu       t1, s8, t1
                  mul          t0, tp, a3
                  sra          a0, zero, s8
                  xori         t4, a6, -553
                  xor          t1, a3, s4
                  sub          s3, t4, t2
                  nop
                  add          gp, t6, s4
                  remu         t2, s11, a1
                  xori         t2, s10, 1207
                  sltiu        a5, s7, -169
                  srl          t2, s6, a4
                  sltu         s4, gp, t1
                  auipc        a5, 988409
                  ori          gp, t6, 1869
                  nop
                  sltu         gp, t0, a6
                  sub          a5, s9, t6
                  auipc        s7, 25677
                  slli         tp, tp, 19
                  addi         t4, s0, -1333
                  ori          sp, s2, 1553
                  mulh         zero, a2, t6
                  remu         s6, t2, s11
                  addi         t6, t1, 1292
                  srli         gp, s4, 24
                  divu         a5, t3, s5
                  ori          s6, ra, 1092
                  mul          a7, a4, s6
                  div          t0, a2, s5
                  slti         a1, s4, -342
                  slti         sp, s5, -1491
                  sll          s5, s11, ra
                  auipc        s8, 34088
                  xor          a5, a4, a3
                  srai         t4, t2, 11
                  mulhsu       s1, t4, a2
                  mulh         s3, t0, t6
                  sub          s2, t4, t1
                  sltiu        gp, t4, -1065
                  auipc        s5, 108904
                  sltiu        s4, s10, 664
                  nop
                  or           t4, s5, a7
                  or           tp, ra, s11
                  slti         zero, zero, -489
                  slli         s1, a1, 17
                  srai         s10, a1, 5
                  add          s8, a7, s11
                  div          s4, a1, s8
                  sltiu        s2, s7, -77
                  slt          s2, a3, a2
                  sub          s7, tp, s3
                  ori          s0, t1, -923
                  sra          t1, t5, s11
                  slti         t5, a0, 894
                  lui          t2, 349323
                  nop
                  sll          s7, tp, s8
                  ori          s6, s4, -1130
                  addi         a5, a0, -180
                  addi         s3, t0, 282
                  slti         s6, t4, -1496
                  and          s1, a2, t3
                  slti         s6, s4, -403
                  xori         t3, t5, 302
                  sltu         tp, s9, s5
                  nop
                  addi         s2, s5, 1837
                  remu         a3, s5, t2
                  sltu         a2, ra, s4
                  remu         t4, t6, tp
                  auipc        a1, 1044051
                  auipc        ra, 750141
                  slt          t5, a7, t6
                  div          sp, s2, s10
                  srl          t3, s3, tp
                  or           a0, s3, t5
                  xor          a0, sp, t2
                  sra          t1, s5, a2
                  srli         a1, sp, 19
                  lui          zero, 60668
                  and          t1, t2, t0
                  sub          t3, s11, t5
                  or           t3, s3, s7
                  mul          t5, a5, a6
                  slt          tp, t3, gp
                  addi         s0, t6, -1727
                  remu         t0, a5, s0
                  slti         gp, s0, 457
                  xor          a3, t1, s3
                  slt          s7, s10, s5
                  slti         t4, ra, -1647
                  mulh         t3, a4, s7
                  slt          s10, a5, a1
                  sltiu        t6, s7, -1180
                  rem          s10, s1, t2
                  sltiu        a5, s9, -1449
                  sra          s5, s10, s7
                  mulhu        a3, a5, t3
                  mulh         s9, t1, s8
                  sra          tp, t1, t3
                  or           ra, a1, t0
                  mulh         a1, a7, t3
                  xori         t4, s8, 1777
                  mul          s4, t5, ra
                  mul          a1, a7, ra
                  remu         zero, t1, s7
                  remu         a7, t5, a7
                  addi         s9, s3, -1748
                  xori         t2, s2, 1310
                  srl          t5, t6, a1
                  and          s4, a5, t1
                  xori         s1, t2, -2007
                  xor          t1, sp, a0
                  slt          a0, t3, t0
                  nop
                  auipc        s1, 740065
                  sra          s2, a1, a4
                  or           s5, a6, t1
                  mulhsu       s5, a0, t1
                  remu         a3, ra, s11
                  slt          s3, a5, s5
                  sltiu        s8, t5, 1747
                  mulh         t0, s2, sp
                  remu         sp, a5, a1
                  sltiu        a0, t6, 1768
                  or           t0, sp, s8
                  auipc        tp, 500598
                  and          s0, s11, s3
                  slti         s6, s0, -1395
                  remu         a2, s1, a3
                  mul          a2, zero, s2
                  sll          gp, s0, s10
                  xor          zero, s9, s8
                  or           t2, s2, s9
                  sltiu        s3, a4, -1829
                  addi         s9, t4, -320
                  srl          t6, s1, s2
                  auipc        s3, 94160
                  remu         s8, a4, ra
                  sltu         s4, a0, s1
                  auipc        s1, 194551
                  nop
                  nop
                  slt          t2, s11, s6
                  div          a2, s4, s9
                  slt          s10, t6, zero
                  or           t6, s3, t0
                  mulhu        s3, t0, t0
                  ori          s4, t0, 2007
                  srli         t6, a3, 18
                  lui          t6, 561145
                  slti         zero, s6, -194
                  divu         s0, s4, gp
                  or           s7, t2, tp
                  slt          ra, s5, sp
                  srli         a2, s8, 1
                  mulhu        gp, s7, sp
                  auipc        t1, 402361
                  remu         tp, ra, t2
                  slli         s6, s8, 24
                  xor          a2, a7, t3
                  addi         t1, t4, 966
                  sltiu        s0, s11, 636
                  mulhsu       t0, s8, s7
                  slli         s8, s8, 19
                  slti         zero, sp, -367
                  slt          s5, ra, s6
                  sltiu        a7, t5, 209
                  sll          t0, a6, tp
                  sra          s0, s1, s2
                  sra          s9, s10, s6
                  sltiu        ra, a0, 1909
                  and          t6, tp, gp
                  mul          s4, s1, a7
                  lui          s7, 67056
                  divu         a2, s9, s9
                  srai         t2, a0, 7
                  xori         a7, s8, 1236
                  sra          a3, a1, a7
                  mulh         t1, a3, s0
                  ori          t2, s8, 800
                  srli         s8, s7, 15
                  andi         gp, s5, 480
                  sltiu        a1, s5, -1797
                  srl          t5, s9, t3
                  ori          s3, s11, -1696
                  srai         t2, s9, 11
                  srl          s10, s5, a3
                  addi         a2, sp, -1909
                  slli         gp, a7, 15
                  xori         s4, zero, -446
                  ori          s4, tp, 1033
                  rem          a2, t3, a3
                  addi         a1, a6, 934
                  slti         s2, a5, -1099
                  addi         a2, a0, 2039
                  lui          gp, 633370
                  sra          s4, t1, t4
                  srl          s3, sp, s5
                  mulh         s7, s4, s0
                  slti         s5, s9, -562
                  lui          a1, 989424
                  srai         t2, ra, 23
                  remu         zero, a4, s11
                  andi         t0, s9, 2014
                  or           t1, t2, gp
                  sltu         s4, t2, t0
                  sltu         s1, a3, a2
                  mulhsu       s5, ra, s0
                  sltiu        s4, t3, 794
                  and          tp, a7, sp
                  auipc        sp, 986691
                  remu         gp, a2, zero
                  mul          a1, s10, s3
                  mulhsu       t6, s10, tp
                  add          t6, s5, s2
                  or           s0, s9, t6
                  mulhsu       s8, s10, s2
                  auipc        a0, 83835
                  slt          a7, t0, tp
                  xori         s5, a7, 1275
                  slt          s7, t6, s2
                  srl          a2, t2, tp
                  andi         s7, s3, 1322
                  lui          ra, 888638
                  ori          t1, tp, 1225
                  mulh         a2, gp, t3
                  sub          t1, t4, s2
                  auipc        a7, 453765
                  sltiu        gp, s1, -1139
                  mulhsu       s6, s4, a0
                  sub          s10, t4, t5
                  ori          t5, s1, 668
                  or           s3, s0, t2
                  sltiu        t6, t6, -436
                  srai         a2, a6, 8
                  srli         a7, a0, 4
                  lui          tp, 813527
                  lui          t1, 974613
                  srai         t2, t6, 25
                  slti         s8, t0, -1423
                  rem          a3, s8, tp
                  addi         a5, a2, -274
                  slli         gp, t6, 15
                  mulh         a2, t4, a2
                  nop
                  addi         s0, s2, -934
                  xor          a7, s9, zero
                  sub          s7, a7, t4
                  xori         gp, s6, -1357
                  rem          gp, s1, t5
                  xor          s6, s2, s3
                  slt          t1, a5, ra
                  sltiu        gp, a4, 1800
                  sltiu        a0, s7, 1949
                  xor          s4, s10, sp
                  div          s2, s5, t0
                  sltu         s4, s9, s1
                  slli         t6, s3, 18
                  mulhsu       ra, t1, zero
                  mulhsu       t5, t1, t0
                  xor          s0, t3, s7
                  auipc        zero, 135453
                  sll          ra, sp, s6
                  mul          t0, a4, s6
                  auipc        s9, 244731
                  slti         a3, s5, -419
                  mulhu        t1, t0, a5
                  ori          s9, t1, 2021
                  lui          s1, 294304
                  div          zero, sp, zero
                  div          t3, a5, s9
                  div          t3, s8, s9
                  srai         a2, t5, 26
                  addi         s8, a7, 1744
                  ori          a1, s7, -1204
                  nop
                  xori         a7, a4, -916
                  rem          a5, ra, gp
                  lui          tp, 794921
                  sll          ra, a0, zero
                  or           a1, s9, t2
                  srli         s2, ra, 3
                  mulhsu       s3, t5, s5
                  addi         s2, t1, -1533
                  or           s9, s7, t6
                  xor          a0, a6, s5
                  slli         s7, s5, 10
                  andi         s8, t2, -1902
                  xor          s8, s3, s9
                  addi         a0, s10, -44
                  mul          s8, a4, a7
                  div          gp, a4, t2
                  slli         s10, s6, 8
                  nop
                  mulhsu       t1, t6, t0
                  sub          a3, t4, a3
                  divu         t4, s6, s6
                  srli         gp, s0, 13
                  andi         t1, a0, 24
                  div          s8, tp, s1
                  mulhu        s5, sp, a0
                  mulhsu       a2, t0, s8
                  andi         s8, t5, 1443
                  sltiu        t3, s6, 1587
                  slt          ra, a6, zero
                  or           s3, ra, s10
                  addi         zero, t2, -1578
                  slt          s8, tp, t3
                  div          a1, s9, s7
                  auipc        s5, 730662
                  ori          s2, t2, 341
                  srli         s10, s2, 27
                  srai         s9, ra, 0
                  lui          s2, 174568
                  addi         s3, a0, 1554
                  remu         a7, s1, a4
                  xori         tp, zero, 728
                  div          s7, a6, t4
                  nop
                  sltu         t5, a4, a1
                  sll          s9, t2, a2
                  srli         sp, s10, 27
                  or           sp, s0, s9
                  mulhsu       s1, zero, tp
                  mul          t2, sp, t3
                  lui          s6, 251932
                  sub          t5, t0, s2
                  divu         a7, t5, gp
                  andi         s4, a5, -838
                  srl          s5, s5, s4
                  sltu         a2, s11, t3
                  auipc        s2, 433045
                  sltiu        s8, a6, 1567
                  rem          s9, tp, t0
                  remu         s2, zero, tp
                  mul          s1, s8, zero
                  srli         ra, t3, 17
                  sra          s7, s9, s1
                  divu         t6, s3, a6
                  lui          a3, 992127
                  or           a0, a6, s5
                  divu         s2, ra, s3
                  mulh         sp, a2, a0
                  or           t1, s8, a1
                  div          s1, a6, a6
                  mulh         gp, s3, s9
                  xor          t4, a0, ra
                  sltiu        s7, a7, -1177
                  mulhu        a2, s4, s4
                  sltu         a7, t1, s5
                  mulh         t3, a6, a0
                  mulhu        sp, s6, a3
                  addi         a1, sp, 41
                  mulhsu       a0, s1, t6
                  sra          t2, s2, a5
                  ori          s9, a0, 1520
                  sub          s9, gp, t6
                  divu         t2, a0, t1
                  or           s3, t6, t5
                  ori          a0, a4, -1879
                  mul          s8, s4, t5
                  rem          a5, a4, a0
                  xor          t6, a5, a2
                  nop
                  sra          t6, ra, a5
                  mul          sp, a3, sp
                  sltiu        zero, s2, 1197
                  xori         t4, s4, 1140
                  rem          zero, t5, s10
                  and          s10, a1, s11
                  nop
                  mulh         tp, s5, gp
                  and          s4, sp, ra
                  mul          t5, a1, t6
                  slti         s10, a1, 591
                  div          a5, s6, t0
                  sltu         zero, s4, s9
                  and          t3, s7, t2
                  sll          zero, a2, t4
                  or           a0, s2, s6
                  nop
                  and          a7, s9, gp
                  mulhsu       s6, t3, t4
                  or           t2, t6, s4
                  or           t0, s10, gp
                  and          s2, gp, s11
                  srli         s1, a0, 8
                  sltu         t5, a7, a3
                  xori         a2, s6, 52
                  or           t3, t0, gp
                  srai         t4, s6, 5
                  srli         s7, t4, 10
                  slli         a3, s5, 2
                  ori          s8, s6, -1477
                  sra          a5, s10, s7
                  add          t2, s10, s3
                  sll          t0, s10, s6
                  nop
                  sltiu        tp, s9, -726
                  mulh         s8, a7, t1
                  sll          tp, s8, t5
                  mulhsu       s5, s2, s10
                  nop
                  sub          s3, s4, a1
                  div          a0, s9, t0
                  srai         a1, s6, 19
                  divu         t0, t5, s2
                  srli         s10, tp, 24
                  srli         s3, s3, 9
                  auipc        s2, 471907
                  ori          s6, t2, 1902
                  slt          s10, t5, t3
                  nop
                  sltiu        s2, s4, 571
                  mul          s10, t2, t6
                  add          a7, s1, a4
                  xori         s8, a2, -820
                  or           a5, a6, s3
                  and          s4, t6, a6
                  sub          tp, s1, a0
                  slti         t3, t5, 429
                  andi         t2, s0, -237
                  div          s9, gp, s10
                  mulh         t6, t3, sp
                  slti         t0, s11, 14
                  mul          a0, s5, zero
                  xori         t1, gp, -1192
                  add          a5, t0, a0
                  remu         s2, a3, a0
                  srli         ra, gp, 26
                  xori         s3, tp, 27
                  mulhsu       a3, t3, s6
                  sub          a3, a7, s8
                  slli         t4, a1, 8
                  lui          a7, 556028
                  sltiu        a2, t5, -287
                  mul          a7, s9, a4
                  nop
                  auipc        zero, 981042
                  andi         s7, s6, -60
                  sra          s6, s9, a3
                  sra          t3, s6, a6
                  mulhu        ra, s11, t2
                  ori          t2, tp, 1280
                  remu         a5, zero, a3
                  sltiu        s10, s7, -631
                  slti         s3, s7, -254
                  ori          s1, t0, -1363
                  slli         a3, s7, 18
                  sll          a3, s1, s8
                  or           a5, s7, s6
                  sub          a7, s1, s4
                  slti         a0, t3, 273
                  divu         t6, t1, a4
                  slti         sp, s10, -36
                  add          t2, tp, s9
                  srli         s1, tp, 5
                  add          t2, s7, a6
                  srai         ra, a3, 9
                  mulhu        gp, tp, zero
                  ori          t0, s0, -1664
                  slti         s8, s9, -1276
                  slti         tp, a5, 2010
                  xor          t5, ra, t1
                  nop
                  xori         s3, t0, 428
                  mul          a3, t0, s10
                  rem          s6, t0, s1
                  mulh         s2, a2, a0
                  rem          a5, s4, s1
                  and          s2, t2, s9
                  remu         t1, s8, a1
                  div          t2, gp, t1
                  slli         zero, ra, 26
                  and          s5, s2, t3
                  mul          s1, s10, gp
                  mulh         t0, s6, s3
                  mulhu        gp, a4, s1
                  sll          s4, a1, t2
                  ori          t5, t6, -2004
                  add          s2, s11, s0
                  or           t0, a1, t1
                  add          s10, s10, a6
                  andi         ra, a7, -105
                  addi         t1, s8, 564
                  lui          t1, 356229
                  andi         s0, t3, 1285
                  xor          ra, t6, t6
                  sub          t2, t4, zero
                  slti         a1, s2, 1456
                  andi         s6, s1, -1129
                  slti         t0, a3, 1775
                  addi         s2, t1, -1279
                  add          s9, s6, t1
                  slti         s9, s8, -1846
                  add          a7, a4, t4
                  divu         t1, s3, s7
                  and          t3, a0, s8
                  mul          t6, a7, s2
                  srl          s5, a0, t0
                  srl          zero, s1, s7
                  mulhu        s5, a0, s3
                  mulh         t2, s10, s7
                  mul          a3, a7, s1
                  lui          s5, 368496
                  xori         s1, a3, 939
                  mulh         s9, t6, a2
                  auipc        s10, 695038
                  slli         a1, s6, 1
                  mulhsu       s5, s8, t3
                  sll          tp, tp, a5
                  sra          s1, zero, a0
                  sub          t2, a7, s10
                  lui          zero, 189817
                  mul          s0, a2, s8
                  xor          s1, s8, s6
                  srai         tp, t3, 22
                  or           s8, s6, tp
                  sll          s9, t0, s2
                  mulhsu       a1, t2, a5
                  mulhu        t0, s5, t1
                  auipc        a5, 292520
                  sub          a0, a7, t5
                  addi         s7, s8, -160
                  nop
                  or           t4, s8, ra
                  ori          zero, a5, 1277
                  addi         gp, t3, -1828
                  remu         s2, t5, t0
                  sra          ra, a2, s6
                  remu         s9, a2, t6
                  remu         t2, s9, s6
                  xori         t0, t2, 1242
                  sub          t2, ra, s3
                  sub          t6, s8, s9
                  auipc        a2, 440451
                  slt          s9, t1, s10
                  srli         t1, t0, 23
                  mulhu        t0, s1, a7
                  lui          s6, 993174
                  rem          t3, t3, s4
                  mulhsu       ra, s4, s11
                  mulh         s5, a5, s4
                  srai         t4, s10, 6
                  srl          zero, a7, zero
                  or           t6, a4, s11
                  addi         t5, ra, -1806
                  slt          a3, s6, t3
                  sltu         s0, s5, a2
                  srl          ra, gp, s5
                  sll          s2, s5, t5
                  andi         t4, t0, 729
                  slt          s10, t1, sp
                  addi         s9, tp, 221
                  slli         t1, sp, 28
                  nop
                  srai         a0, s1, 13
                  or           s6, sp, t5
                  srai         t3, a4, 15
                  sltiu        s4, a0, 29
                  div          t6, t4, gp
                  div          a5, zero, t1
                  nop
                  divu         s7, s8, s4
                  xori         s10, s11, 613
                  and          t3, s9, s6
                  slt          zero, t1, s6
                  slli         s7, a2, 4
                  nop
                  div          s6, a2, sp
                  xori         s3, s1, 1631
                  lui          a3, 188389
                  remu         s9, a6, s6
                  sra          s4, t6, s8
                  mul          t1, t2, sp
                  mul          s9, s11, a3
                  srl          ra, s5, s2
                  add          gp, s0, a3
                  sltiu        a1, s0, 2036
                  lui          tp, 233182
                  srai         t0, t5, 31
                  mulh         t5, s5, s8
                  slt          a1, s10, s7
                  mulhsu       s9, a0, t6
                  slt          s3, tp, zero
                  remu         s6, a0, s11
                  sub          s6, s11, s7
                  andi         ra, s10, 1358
                  mulhsu       t6, t3, zero
                  ori          gp, zero, 1082
                  nop
                  rem          s7, a4, s3
                  div          a0, a0, t2
                  srai         zero, a6, 3
                  and          a2, s0, s9
                  or           s2, a4, s3
                  sub          t3, s4, tp
                  auipc        a3, 255031
                  slti         zero, a6, -1787
                  sra          a2, s6, s2
                  slti         ra, s0, 1315
                  mulh         s8, t0, tp
                  slti         a2, sp, 995
                  sltiu        t5, s3, 240
                  mulhsu       t4, s11, t5
                  lui          s5, 914206
                  slli         s4, t6, 30
                  mul          s9, s11, t1
                  sltu         s2, s7, a1
                  xor          s5, s9, s1
                  auipc        gp, 363442
                  xor          s0, a7, s9
                  srl          sp, a7, a2
                  mulh         ra, t5, t5
                  sll          sp, t3, t0
                  sra          t5, a5, a4
                  mulhu        s5, s3, s1
                  xori         a1, s0, 1860
                  addi         sp, s1, 1336
                  or           t5, a0, a2
                  or           t1, a4, a3
                  sltiu        a7, a4, -1267
                  remu         sp, ra, a7
                  and          t5, t4, s8
                  sra          s1, zero, s4
                  sll          zero, s0, t1
                  lui          zero, 434959
                  mulhsu       s7, ra, sp
                  nop
                  auipc        zero, 875
                  sltiu        a3, t0, -920
                  or           a2, t3, a0
                  ori          s6, gp, -1010
                  ori          sp, a3, 276
                  rem          s6, zero, a6
                  sltu         t2, s10, a3
                  div          t2, s4, a1
                  auipc        ra, 278523
                  and          s3, ra, s3
                  sub          t1, s3, a2
                  remu         t4, ra, a5
                  nop
                  sll          tp, tp, s9
                  sub          t5, a1, gp
                  mulh         a7, s2, s0
                  sub          a2, s0, s2
                  lui          a0, 11563
                  slli         a1, tp, 26
                  div          t1, s2, a6
                  mulh         a7, t0, t1
                  auipc        gp, 897607
                  and          s9, ra, s10
                  lui          s10, 62191
                  xor          s2, s3, s6
                  rem          tp, gp, s10
                  sra          t5, s0, a1
                  sub          a3, a6, s11
                  lui          a5, 751088
                  div          t3, s10, t2
                  lui          s2, 493238
                  sll          s8, t0, t2
                  slli         s10, t2, 16
                  sltu         a3, s3, a2
                  divu         s2, s5, zero
                  and          s0, t1, a2
                  slli         s4, a7, 20
                  andi         s4, t3, -1893
                  and          s5, s7, a6
                  sub          s3, s3, t5
                  slti         s5, s8, -1466
                  auipc        t3, 731466
                  rem          s4, a6, t4
                  add          s0, sp, a3
                  div          a7, s3, t6
                  sub          sp, s5, a3
                  or           gp, s1, a2
                  xor          a3, zero, ra
                  xor          t4, s0, a5
                  srli         a0, a4, 4
                  remu         zero, t4, s7
                  xori         t5, s3, -1213
                  xor          s7, sp, s4
                  srai         sp, t6, 10
                  sltu         t6, a3, a0
                  slli         t3, sp, 6
                  xori         s0, s2, -1074
                  remu         zero, s7, t2
                  add          s0, t5, a4
                  sra          s2, a5, t1
                  auipc        t0, 603514
                  or           s0, t2, s2
                  slti         a0, s2, -1255
                  sub          t3, s7, a7
                  addi         t5, s0, -373
                  auipc        gp, 367739
                  xor          t6, s8, s1
                  srli         s10, s11, 7
                  and          a7, tp, t0
                  divu         a5, s8, s9
                  and          s5, a1, tp
                  mul          sp, a1, s7
                  andi         s6, gp, -1159
                  sra          s4, zero, a3
                  xori         s3, s8, -810
                  remu         sp, s0, s9
                  slli         t6, a4, 3
                  rem          s9, a6, t6
                  divu         s5, s10, s3
                  mulhu        t0, s9, a1
                  sltu         s7, s5, ra
                  div          a3, s0, a6
                  mulh         gp, t3, s6
                  sub          a1, s0, s3
                  lui          t1, 188536
                  slli         tp, s11, 8
                  sra          s6, a0, a7
                  mulhsu       t6, a3, s10
                  sltu         s2, a0, t2
                  and          s3, t1, s2
                  srai         t1, s7, 14
                  srl          a2, s4, t0
                  lui          s7, 341736
                  sltu         t0, s11, t6
                  xor          t4, s9, t1
                  mulhsu       t3, t2, t0
                  srl          gp, a6, t2
                  slli         s10, a5, 3
                  addi         t0, s8, -155
                  slt          a0, t2, a4
                  sub          a2, tp, zero
                  andi         s9, a3, -1307
                  sll          t6, s2, t5
                  sub          a1, a6, s0
                  mulh         s1, a7, ra
                  add          t0, a2, s3
                  lui          a3, 214999
                  mul          t6, sp, s6
                  remu         ra, s4, a6
                  divu         a0, t3, a4
                  sub          t5, tp, a4
                  div          s7, s6, ra
                  div          ra, s4, s6
                  slti         a3, s7, 1771
                  nop
                  xor          t2, gp, a6
                  srai         zero, s8, 24
                  ori          s8, s6, 1790
                  nop
                  sltu         s4, t3, s4
                  srli         t1, s11, 3
                  slt          zero, s6, gp
                  nop
                  slli         s7, tp, 4
                  mul          t5, s0, t2
                  or           s4, a1, s1
                  mulhu        s1, ra, a5
                  mulhsu       s1, a7, s5
                  addi         zero, a7, 103
                  xori         t5, t1, -1927
                  rem          sp, sp, s10
                  sltiu        a5, a1, 1521
                  mul          s0, t6, s5
                  mulh         s9, s11, s10
                  ori          t6, a1, -1162
                  andi         a5, t1, -382
                  mulhu        s6, tp, a5
                  slt          a5, a6, a4
                  slti         s10, a7, -528
                  and          ra, a3, a1
                  remu         a1, gp, s5
                  andi         s0, s4, -49
                  srl          s10, s10, s9
                  add          s7, a3, s7
                  rem          a3, a2, s5
                  add          s2, a6, s1
                  sltu         s5, s7, gp
                  srli         t0, t1, 11
                  nop
                  addi         tp, s11, -1264
                  lui          t4, 656739
                  sltiu        t5, t4, 1133
                  srl          s1, gp, s0
                  sub          s1, s7, s0
                  lui          a1, 797461
                  or           s6, t5, a7
                  nop
                  srl          gp, s7, a0
                  srai         a1, sp, 1
                  xor          s0, ra, s9
                  or           zero, a7, s8
                  slt          s2, a3, zero
                  slti         t4, t2, -1879
                  srl          t1, a7, t1
                  ori          s0, s10, -641
                  lui          a2, 911962
                  div          s0, t4, sp
                  add          s8, t4, s10
                  div          t0, s4, s10
                  srai         s0, t6, 25
                  mulhu        s1, s3, s8
                  add          s9, s10, a3
                  sub          s6, t4, t1
                  rem          ra, s11, a5
                  mul          t1, s2, s8
                  and          t6, ra, s3
                  and          a3, ra, s3
                  sub          s10, s10, s4
                  mulh         ra, a4, a4
                  slt          t1, s9, s5
                  and          t3, a3, s3
                  lui          s7, 875160
                  add          s8, t5, s8
                  andi         s5, a2, 1776
                  divu         sp, t3, s8
                  sll          sp, t1, s11
                  xor          t1, t6, zero
                  slti         a2, t6, -479
                  and          t2, a1, ra
                  rem          a5, s6, t6
                  and          s10, a4, s2
                  nop
                  sub          t3, tp, gp
                  rem          s1, s2, ra
                  or           s7, s8, t1
                  rem          t1, s7, a7
                  rem          s4, sp, a6
                  slli         t1, zero, 8
                  sub          t6, ra, s4
                  andi         t1, s5, -798
                  srai         s9, s3, 29
                  nop
                  sll          t1, gp, s9
                  rem          s6, t5, a6
                  mul          t3, a3, a7
                  div          s9, t1, s4
                  slt          s6, gp, t0
                  xori         t4, a3, 1422
                  add          a0, a5, t5
                  rem          t3, s8, a5
                  mulhu        a3, a2, t0
                  srl          t6, a0, s6
                  srli         a5, s10, 14
                  mulh         s10, s3, t0
                  srai         s10, s0, 11
                  slt          zero, a3, a7
                  xori         t5, ra, 301
                  slli         s1, s5, 9
                  auipc        s3, 482037
                  slti         s8, gp, -41
                  or           t5, a6, s0
                  or           t1, a0, s0
                  mulhu        s3, a5, s3
                  sltiu        a0, s6, 1682
                  sltu         t6, t0, s0
                  xori         a0, zero, 492
                  andi         t4, a6, 974
                  srai         s8, a0, 16
                  lui          t0, 168909
                  addi         a0, s2, 1314
                  andi         ra, ra, -793
                  and          s0, s10, s8
                  rem          s9, tp, tp
                  lui          s5, 487472
                  xori         s3, zero, 578
                  andi         t6, s5, 541
                  ori          s8, t5, 794
                  slti         t6, ra, 1994
                  and          t3, t1, s9
                  sltiu        t1, s11, 323
                  divu         t1, t4, s6
                  slt          s2, s1, t5
                  remu         t2, s5, s3
                  srli         s2, t6, 25
                  sll          s10, s9, s8
                  sub          tp, t1, s11
                  or           s5, s11, a1
                  srai         t3, a5, 19
                  remu         s6, a1, gp
                  mulh         a0, s11, s11
                  slli         s10, s7, 29
                  ori          s1, t0, -1182
                  mulhu        sp, s0, a0
                  add          a7, t0, a4
                  srl          t5, s2, t2
                  mulhsu       ra, t1, s10
                  addi         t4, t2, 325
                  auipc        tp, 1039155
                  rem          s2, t1, gp
                  sra          s0, t6, t1
                  nop
                  andi         s8, a0, 1067
                  lui          a5, 312701
                  nop
                  ori          s2, s1, -392
                  div          s6, s5, a3
                  sub          s9, gp, sp
                  srai         t3, s6, 8
                  addi         a3, a5, 1417
                  and          a2, a2, s7
                  remu         a5, t3, s11
                  sra          sp, a2, t0
                  xor          s10, s0, t2
                  add          t1, t4, sp
                  andi         s8, a5, -1893
                  slti         s10, zero, 1290
                  srai         a5, a2, 11
                  ori          t6, s9, -1015
                  xori         ra, s11, -666
                  andi         zero, t5, -787
                  and          t1, s3, s0
                  divu         t0, s11, a3
                  div          a1, s11, a1
                  xori         s4, s11, -456
                  mul          t0, s5, sp
                  mulhu        t5, t1, s0
                  sra          t1, t3, ra
                  ori          zero, s0, 581
                  sub          a1, a7, s8
                  ori          s10, t3, -24
                  sltu         s4, a0, a5
                  lui          s5, 863463
                  remu         s4, s9, t0
                  andi         s9, a5, -1321
                  srli         t6, s3, 29
                  auipc        a3, 1045905
                  slti         s4, s3, 1703
                  srai         s8, gp, 19
                  mulh         a7, t3, s9
                  auipc        t3, 363435
                  mulhsu       t1, t0, t5
                  rem          s3, sp, t0
                  lui          a7, 438665
                  remu         a1, a1, s8
                  mulh         s6, ra, a5
                  sltiu        sp, t5, -1632
                  mulhu        gp, t6, t0
                  remu         a5, s1, s5
                  rem          a1, t3, gp
                  ori          t3, a5, -1446
                  remu         a2, s1, a6
                  div          s10, t6, s2
                  mul          s6, s9, a7
                  sll          a3, t3, sp
                  nop
                  auipc        a7, 677945
                  srl          s0, a6, s10
                  or           a7, a2, s9
                  mul          a0, gp, t4
                  and          t5, gp, t4
                  xori         s9, t5, 1890
                  mulhu        s5, a6, t0
                  slli         t2, a7, 19
                  mul          ra, t4, s8
                  nop
                  slti         a7, t0, -1760
                  mulhsu       t5, sp, s10
                  nop
                  div          t0, zero, a0
                  sra          s7, s4, t2
                  add          s8, t0, s0
                  sra          t2, a7, s8
                  slti         s10, s9, -407
                  auipc        t1, 898461
                  andi         t0, a1, 1354
                  sll          a7, s9, s3
                  rem          s5, zero, tp
                  srai         s3, a0, 14
                  srai         s6, t1, 2
                  lui          s5, 191479
                  srl          t6, t0, a5
                  sltu         s2, tp, a5
                  remu         s7, s11, gp
                  sra          s6, s0, s6
                  rem          s6, a4, a2
                  mulhu        a3, s8, t2
                  lui          a1, 183952
                  add          t1, s11, t3
                  ori          s3, s2, 642
                  mulhsu       s0, s4, s1
                  slt          s3, t2, a1
                  remu         s0, s2, s2
                  nop
                  sub          t0, a1, s10
                  mulhsu       tp, a3, a0
                  ori          gp, a5, -623
                  rem          s3, s3, s7
                  auipc        t3, 523317
                  div          ra, s4, t0
                  xori         ra, s1, 1384
                  sra          ra, t0, t5
                  slti         s3, tp, 1705
                  mulh         s3, ra, zero
                  sll          t6, s4, s7
                  auipc        a2, 1036984
                  ori          a3, t2, 1647
                  or           t4, a3, t0
                  xor          t1, a6, a7
                  xor          t6, s4, t1
                  addi         s8, s7, -1034
                  sub          s3, t6, s1
                  srl          t3, a4, ra
                  and          s8, s10, sp
                  div          s9, a3, tp
                  sub          s3, t5, a1
                  nop
                  xori         s9, s10, 1669
                  slti         ra, s1, -1633
                  slti         s3, gp, 1054
                  slt          s10, s7, s10
                  auipc        s3, 415507
                  andi         s9, a3, -1532
                  nop
                  nop
                  sltiu        a7, s0, -640
                  srli         t5, t2, 7
                  ori          s9, a0, 579
                  slti         t5, a5, 718
                  sll          t4, a2, a2
                  sub          t6, t5, s1
                  srl          s10, t0, s3
                  sra          zero, a3, a7
                  addi         a7, sp, -1259
                  and          a7, t2, a5
                  mul          a3, a7, s2
                  div          a3, s10, s7
                  rem          a1, sp, t3
                  slli         a0, tp, 28
                  nop
                  mulhu        t5, tp, a6
                  slli         s0, sp, 15
                  lui          t2, 110435
                  ori          a1, s11, 1954
                  sltiu        a7, sp, 1497
                  rem          gp, a3, sp
                  slti         tp, s0, 421
                  nop
                  slt          a1, s3, sp
                  xor          zero, sp, s4
                  slli         s4, t3, 9
                  lui          a2, 452349
                  divu         a2, s2, a6
                  sll          zero, s5, sp
                  andi         a0, a4, 698
                  mulhsu       s5, s9, s7
                  slt          t6, t2, s10
                  add          a5, t6, s3
                  remu         a7, tp, s8
                  xor          t4, s7, a7
                  mulhsu       a1, sp, a6
                  nop
                  srl          a7, s7, tp
                  srai         s9, tp, 0
                  slt          gp, sp, s0
                  addi         s7, t5, -1199
                  mulhsu       s10, tp, s5
                  slt          s0, a5, t6
                  add          gp, t4, s6
                  auipc        a5, 85489
                  slt          s0, a2, t5
                  ori          s5, t0, 1732
                  ori          t2, a3, -1219
                  xor          s3, s9, ra
                  andi         zero, a1, 1708
                  lui          a7, 288183
                  remu         zero, zero, a3
                  srli         s5, ra, 22
                  sltiu        a1, t2, 684
                  sra          t2, s6, ra
                  remu         s6, s8, a5
                  srai         t0, a4, 27
                  nop
                  auipc        s0, 631574
                  sltu         s0, a3, gp
                  sltu         zero, s3, a7
                  mulhu        t4, t6, s0
                  div          tp, s4, tp
                  ori          a2, s2, -492
                  slli         a7, gp, 25
                  sub          gp, s9, s5
                  auipc        tp, 1004867
                  slti         tp, a2, 994
                  ori          a2, ra, 535
                  sltiu        s8, tp, -2015
                  slt          tp, t0, s1
                  srai         t0, a0, 28
                  div          s10, s5, t2
                  or           a2, a1, t1
                  slti         tp, s9, -1456
                  mulhu        s8, ra, t2
                  remu         a0, s9, s3
                  auipc        s6, 203558
                  mulhsu       t2, zero, zero
                  addi         zero, t3, -1355
                  srli         a3, s0, 19
                  slti         zero, s11, 395
                  mulhu        a7, s0, s3
                  mulh         tp, gp, s11
                  divu         t1, s3, s7
                  slti         s6, a6, 818
                  srai         t3, a7, 6
                  mul          zero, a1, zero
                  xor          tp, s2, t1
                  srai         t0, s4, 13
                  sll          s1, t6, s10
                  sll          t4, t6, a7
                  ori          s0, tp, 905
                  slli         sp, s6, 6
                  srl          t3, a5, tp
                  remu         tp, a4, s4
                  srli         t5, t3, 11
                  mulh         t3, zero, gp
                  addi         s6, s11, 1691
                  lui          t2, 272791
                  srli         zero, a5, 6
                  mulhu        t2, s10, s4
                  lui          s9, 530824
                  xori         t4, s5, -328
                  div          s3, a4, s1
                  div          a0, t3, s8
                  srai         s5, tp, 26
                  rem          ra, s3, tp
                  div          a5, s6, a7
                  xori         t2, t3, -198
                  ori          s10, s1, -1446
                  xori         s2, t4, -1437
                  addi         s1, s7, -285
                  or           ra, a3, s6
                  and          s10, a1, a2
                  slli         zero, s4, 8
                  addi         t1, t4, -287
                  divu         a7, s5, t2
                  lui          s10, 266981
                  sll          t5, s2, s11
                  slli         zero, t0, 18
                  sltiu        a1, a6, 1108
                  slli         s2, s4, 6
                  addi         a5, gp, -1671
                  sub          s1, t3, s10
                  lui          t6, 813393
                  sra          zero, a5, s8
                  lui          a7, 518812
                  and          s3, s9, t1
                  mulhu        s1, a0, a7
                  xor          s0, zero, s7
                  mul          t4, a6, a5
                  srl          sp, a3, s1
                  srai         gp, s6, 24
                  addi         s2, s6, -436
                  slt          s10, t2, tp
                  rem          ra, s6, tp
                  srai         s1, s5, 16
                  remu         s10, s4, a4
                  addi         a5, t1, -1965
                  sltiu        s6, t1, -658
                  or           gp, a0, a2
                  andi         a2, s0, 993
                  sltiu        s5, a7, -506
                  mulhsu       a1, t5, s8
                  sltiu        t2, s9, 1666
                  srl          sp, t6, s3
                  srli         t5, gp, 28
                  sltu         sp, a5, a2
                  srl          a5, ra, a5
                  rem          s10, s0, s4
                  andi         s10, s9, -361
                  slti         s10, t3, 1349
                  nop
                  sub          t5, sp, s5
                  sra          zero, t0, t2
                  add          a2, a1, t5
                  slti         t6, zero, 1828
                  slli         a7, s7, 16
                  mulhsu       t4, s0, a6
                  sub          gp, s10, s4
                  addi         s9, zero, -1716
                  srai         a2, s9, 24
                  addi         gp, a4, 1089
                  mul          s9, a0, t2
                  lui          t1, 599233
                  sub          ra, s3, t3
                  srl          a7, a3, s7
                  sra          s4, s7, zero
                  mulhsu       sp, tp, s4
                  remu         s6, s1, s7
                  div          t6, s8, a5
                  sltiu        t1, t4, -1610
                  srl          t5, s8, s4
                  sub          a0, s8, t3
                  div          a1, s6, gp
                  sltu         t6, s9, a1
                  andi         t4, a3, -1397
                  slti         s9, t2, 218
                  slti         s6, t3, 381
                  auipc        t6, 62435
                  sll          a2, a1, s11
                  sra          sp, s9, s9
                  add          t3, a6, t4
                  div          tp, t2, tp
                  divu         s0, t0, s4
                  mulhsu       t5, t0, ra
                  remu         a1, t3, s11
                  sll          sp, a0, a4
                  andi         t0, t4, -1903
                  addi         ra, s9, 132
                  slli         sp, t2, 3
                  sltu         t0, t1, s2
                  div          s6, t4, a7
                  add          ra, t0, t6
                  sub          sp, a5, sp
                  sll          t5, a3, t4
                  slli         a5, gp, 18
                  mulh         s9, s11, s4
                  divu         t5, ra, t4
                  div          s8, s6, ra
                  mulh         t5, t0, s3
                  mul          t5, s6, s6
                  ori          s8, zero, -1141
                  srli         s10, t1, 23
                  lui          a0, 739192
                  rem          tp, s4, a1
                  ori          zero, s3, -750
                  xor          s1, a3, s6
                  sltu         t2, s6, t1
                  srai         s10, a0, 12
                  ori          s0, sp, 1680
                  mul          a0, t1, tp
                  mulhu        t5, s6, a0
                  remu         s8, t4, a7
                  slti         s10, a4, 1175
                  srai         a5, s2, 2
                  nop
                  slli         t2, a4, 24
                  slti         t6, s11, 865
                  div          sp, s6, t4
                  mulhu        t0, t4, s9
                  sltu         ra, ra, a1
                  slt          a3, a0, tp
                  remu         a2, gp, t4
                  mul          s3, a2, s3
                  srli         s10, s10, 6
                  sltiu        s10, s5, 1804
                  srai         s3, t1, 26
                  slti         t5, ra, 235
                  mulhu        t4, s5, a6
                  div          t5, s8, s5
                  sll          a7, a6, t4
                  mul          a1, a1, sp
                  auipc        t0, 256988
                  mul          s7, a5, t4
                  sltiu        gp, s11, 490
                  add          a1, t5, t0
                  sltu         a2, t3, s3
                  srai         s1, a6, 28
                  addi         s0, t4, -1377
                  mulhu        a0, s1, s6
                  mulhu        s2, a3, s5
                  div          a1, t2, t5
                  mulhsu       s8, t3, zero
                  xor          s5, a7, s9
                  rem          t6, s2, sp
                  div          s9, s2, gp
                  divu         t4, a6, s11
                  auipc        sp, 737799
                  rem          t0, t3, gp
                  mul          s3, t5, t6
                  xori         s6, s9, 1607
                  xor          t6, a7, s10
                  div          sp, s5, a1
                  sltu         t6, t1, zero
                  andi         ra, a5, 1530
                  sll          t3, t1, a0
                  divu         s3, s4, a2
                  sra          s10, a3, gp
                  srli         s8, s3, 8
                  ori          zero, ra, 1022
                  sub          ra, tp, t5
                  mul          a2, a4, a2
                  srl          s7, a3, zero
                  mul          s5, t4, s9
                  rem          t0, s9, a6
                  mulhsu       t0, a6, ra
                  mulh         t6, a7, a7
                  xor          s6, a2, zero
                  addi         t2, t4, -1477
                  xor          s7, s9, s0
                  add          a0, t1, a0
                  mul          s0, t6, s4
                  mulhsu       s1, s3, t1
                  srl          t6, s1, s4
                  auipc        a2, 214058
                  andi         a5, ra, 861
                  div          gp, ra, sp
                  mulhsu       t0, s5, a0
                  srai         s2, a1, 9
                  add          a0, s4, a0
                  srli         a7, t6, 15
                  srai         gp, s6, 30
                  andi         s4, ra, -613
                  slli         s1, s7, 23
                  ori          t4, t3, -1991
                  add          a3, s2, zero
                  srl          t0, a5, s1
                  sltu         s8, s8, s6
                  xor          s4, a6, t5
                  slli         a0, t0, 18
                  sub          zero, s11, zero
                  or           a5, s4, s10
                  divu         s4, zero, s9
                  rem          t4, t4, ra
                  sltu         s0, t0, s2
                  auipc        s5, 31481
                  srl          a2, s0, t4
                  sra          s4, a7, t2
                  xor          s8, t2, s8
                  and          a2, s11, s0
                  remu         s10, zero, s2
                  remu         s9, t3, s5
                  addi         t3, sp, 260
                  slti         t3, s6, 1664
                  and          tp, t6, s7
                  srl          gp, s6, a4
                  lui          t6, 653288
                  remu         s0, sp, s5
                  or           s1, s6, s9
                  and          s1, s6, t3
                  xori         t5, s6, 1889
                  mulh         a1, s4, s2
                  sra          s6, t3, s9
                  slti         t2, s3, -97
                  add          s3, s7, t4
                  remu         t1, a6, t6
                  div          a0, t5, a7
                  andi         zero, t2, -1531
                  lui          s6, 891975
                  rem          a2, a3, a4
                  srai         s6, t2, 28
                  lui          s4, 544554
                  sll          s8, t2, sp
                  sltiu        s5, a7, 591
                  andi         a1, s11, -818
                  xori         a5, s3, 1968
                  slt          s10, s4, a4
                  addi         s4, t1, -469
                  mulhu        zero, t0, a2
                  slt          s0, gp, s2
                  add          s6, tp, a4
                  rem          s9, s6, a1
                  remu         s0, t1, ra
                  slt          s9, s6, t4
                  slli         s0, s4, 25
                  add          a2, a3, s4
                  lui          ra, 178040
                  slti         a1, t6, -1744
                  rem          s4, a4, a2
                  lui          t4, 641764
                  div          a2, s4, s3
                  slti         s2, t3, -328
                  mul          gp, a6, s3
                  srl          s8, s2, s2
                  slli         t5, t3, 29
                  addi         a3, t5, 57
                  srli         s6, a1, 11
                  srli         gp, s3, 14
                  mulhu        t6, a0, s11
                  divu         t3, a1, a5
                  or           a0, sp, t3
                  andi         s1, t0, -483
                  rem          a2, tp, s3
                  addi         tp, s1, 1526
                  auipc        s3, 101831
                  srl          ra, s5, a4
                  srl          s3, sp, s11
                  srli         t2, t1, 4
                  addi         t3, s3, 1569
                  remu         t4, t5, s7
                  mulhsu       s2, t5, a3
                  rem          t4, s5, t0
                  rem          gp, tp, s0
                  sra          s9, t5, t6
                  srl          s9, sp, a6
                  mulhsu       s3, t5, tp
                  slti         s0, s4, -1382
                  add          a2, t0, t3
                  xori         t5, a2, 142
                  div          ra, a6, a6
                  mulh         s4, s2, t5
                  mulhu        t3, a3, t2
                  xor          s4, zero, a7
                  slt          ra, a4, t2
                  auipc        s9, 877034
                  divu         a3, s3, a2
                  xori         a7, a3, -202
                  sltu         s1, zero, a5
                  slt          t3, a3, s5
                  mulhsu       s2, s1, tp
                  mulh         t5, s1, zero
                  xori         sp, s3, 284
                  addi         tp, s0, 214
                  auipc        ra, 926678
                  srli         t6, s1, 29
                  mulhu        s6, a7, sp
                  add          s8, s4, zero
                  sll          t5, zero, s6
                  srai         s6, a3, 4
                  add          t6, ra, t4
                  auipc        s8, 798204
                  srai         t0, s11, 16
                  sltu         t5, t3, a1
                  addi         s1, sp, 1415
                  div          t3, zero, t5
                  div          t5, s8, s7
                  mul          s4, s11, s9
                  ori          a3, t0, 1879
                  xori         t1, s3, -706
                  rem          zero, s2, s7
                  slli         s10, a7, 1
                  sll          s9, s0, a4
                  mulh         t6, s4, a7
                  srai         t1, s2, 0
                  mulhsu       s0, s8, a3
                  add          s3, tp, s8
                  auipc        sp, 984549
                  divu         t3, t5, t3
                  nop
                  sltiu        s4, tp, 1657
                  auipc        s1, 514581
                  sra          a3, t2, a4
                  div          s10, a1, s8
                  mulh         t5, t1, a7
                  nop
                  auipc        zero, 449441
                  xori         s4, s7, 27
                  srai         s4, s10, 8
                  remu         s3, a2, s7
                  andi         a5, a2, 1836
                  div          s5, a5, t1
                  sll          s1, zero, s1
                  srl          s10, a3, a0
                  sltu         a0, s1, gp
                  srli         gp, a4, 18
                  addi         t0, s7, 508
                  srl          a3, t6, t0
                  divu         s6, s5, s1
                  srli         zero, t6, 11
                  div          s8, t4, t1
                  andi         a7, t2, 399
                  srai         a5, t5, 16
                  mulhu        t4, t5, sp
                  nop
                  sltu         zero, s9, gp
                  slti         s2, zero, -1632
                  sub          a2, s7, s6
                  mul          a7, s5, a6
                  mul          s5, t1, tp
                  xori         s0, a3, -703
                  mulh         s1, sp, a5
                  nop
                  nop
                  lui          a7, 483762
                  add          s2, t1, s0
                  slti         a5, a6, 908
                  mulh         t0, gp, s10
                  sltu         t4, gp, s6
                  mulh         s8, t5, s5
                  slti         a3, t4, 2006
                  add          sp, a4, s0
                  mulhu        s1, sp, a1
                  div          ra, ra, zero
                  srai         a7, s11, 1
                  srl          ra, s9, s3
                  mulhu        s9, t5, t1
                  xor          s2, t1, a1
                  add          t2, t2, s4
                  xor          sp, s2, t0
                  sll          ra, s7, s6
                  srli         t6, tp, 11
                  mulh         a1, a0, t1
                  slti         t6, t2, -717
                  and          s10, ra, ra
                  auipc        s2, 710395
                  slti         t2, a1, 1001
                  addi         t5, s7, 497
                  auipc        t5, 897170
                  slli         s0, s9, 20
                  xori         s1, a3, 2015
                  xori         a2, a7, -67
                  srli         t1, a7, 0
                  auipc        a0, 211062
                  slt          sp, a3, s0
                  sltu         t2, gp, t0
                  remu         ra, a4, a4
                  xori         ra, ra, 1451
                  mulhsu       a3, a6, s10
                  auipc        s7, 116244
                  or           s1, s3, a5
                  and          s10, a0, t3
                  rem          s10, ra, a2
                  sll          a2, s4, s9
                  lui          t6, 963414
                  and          sp, s10, t5
                  slt          s4, t6, t0
                  mulhsu       a2, t0, s2
                  mulh         s4, s7, t2
                  mul          t5, a1, zero
                  nop
                  sltu         t3, s5, t3
                  sltiu        t5, t0, -1219
                  xori         a5, t3, -1100
                  mulh         s6, sp, a6
                  addi         sp, t5, 921
                  sra          a5, s0, s1
                  xori         a3, t5, 43
                  sltu         a3, s3, t3
                  addi         s9, t3, -437
                  srli         s2, a1, 19
                  sltu         s2, t0, t5
                  div          t6, a2, gp
                  slli         sp, a5, 17
                  divu         s4, a1, t3
                  mul          t2, gp, a3
                  div          a2, s3, a3
                  slli         zero, s2, 20
                  mulh         a5, s9, s0
                  and          s7, s10, s8
                  add          s2, t1, s9
                  srai         t3, gp, 6
                  mul          a0, a5, t2
                  slli         t1, t5, 11
                  and          tp, s3, a4
                  div          s7, t1, t2
                  srai         t2, t5, 30
                  srl          a5, gp, s0
                  mulh         s0, s8, a5
                  nop
                  lui          t0, 275472
                  add          gp, a5, a4
                  andi         t3, s5, 1699
                  mulhsu       zero, s8, t3
                  remu         s3, a3, s1
                  xori         a3, a7, 1748
                  sra          s6, t1, gp
                  or           a5, s10, t3
                  mulh         s4, t4, sp
                  srai         s2, a3, 1
                  and          a2, s11, a4
                  divu         a5, t3, a0
                  mul          s3, s3, s9
                  div          s4, t3, t2
                  divu         gp, a7, tp
                  sub          s8, t3, a0
                  or           s7, t6, tp
                  mulhu        a2, s2, t6
                  add          t1, s10, tp
                  divu         t4, s11, zero
                  mulhsu       a7, t3, ra
                  mulhu        t3, a6, ra
                  sltiu        s7, a6, -1521
                  xori         t6, s8, -194
                  mulhu        a2, t1, s3
                  xori         zero, s0, -675
                  or           a1, a0, s0
                  sltiu        s1, s4, 1190
                  and          a3, zero, gp
                  slt          t2, a2, a6
                  nop
                  slli         s9, a6, 6
                  sltiu        a1, a1, 1839
                  slt          s5, s8, s7
                  sltu         t1, gp, a6
                  add          t0, s11, s5
                  slti         t4, t1, 1477
                  srli         zero, gp, 23
                  ori          s3, s2, 424
                  remu         a5, a3, a0
                  add          s4, a5, s10
                  lui          s3, 552214
                  mulh         s2, s3, t0
                  rem          t1, ra, s11
                  srli         t2, t6, 2
                  sltu         a0, a3, s6
                  sub          t1, a7, s6
                  remu         a1, t2, t3
                  sltiu        t0, zero, -1252
                  nop
                  ori          s5, s7, -1225
                  sll          s5, zero, ra
                  divu         s9, s2, s10
                  divu         s9, a4, gp
                  mulhu        tp, s8, s7
                  auipc        s0, 191689
                  srli         s10, s10, 9
                  lui          t2, 14913
                  ori          t0, s0, 1063
                  lui          t3, 36601
                  divu         s0, s1, s1
                  divu         s9, t0, a3
                  rem          s5, zero, s4
                  div          t3, t5, a6
                  sub          a5, a7, s2
                  or           s8, gp, t2
                  sltu         a3, gp, s5
                  andi         s6, t6, 1565
                  lui          t5, 566371
                  auipc        zero, 1032879
                  ori          s4, a0, -740
                  mulhu        a7, tp, tp
                  mulhu        s4, s1, gp
                  mulhsu       a1, a4, ra
                  div          a2, t1, zero
                  mulh         t2, s1, a5
                  sltu         a1, s3, s6
                  addi         s10, a7, 1658
                  mulhsu       s1, a6, s5
                  or           tp, t2, s0
                  or           t2, s11, s11
                  or           s1, s8, s9
                  mulhu        s3, a7, s7
                  srl          tp, t0, t1
                  mulh         a0, s5, s8
                  mulh         sp, t1, s9
                  andi         t4, s6, -1516
                  divu         t2, tp, sp
                  sll          t3, s9, s4
                  divu         sp, s4, a6
                  nop
                  srl          a0, s8, a2
                  or           s4, s11, t1
                  sub          t6, a7, s4
                  slli         s6, t0, 26
                  srl          s8, tp, t0
                  slli         a2, s3, 15
                  remu         s0, t0, s2
                  and          a2, t5, ra
                  auipc        s8, 66717
                  sltu         a5, a6, s8
                  slli         s8, s4, 11
                  mulh         a3, s6, a0
                  xori         s5, a6, 927
                  slli         t4, a0, 19
                  sltiu        t3, t4, 566
                  xori         s8, a2, -868
                  sltu         s2, a7, s1
                  xori         t1, s6, 1038
                  nop
                  rem          s6, s0, a3
                  ori          a0, a2, -502
                  slli         a5, s6, 12
                  or           s10, t0, s4
                  or           sp, a7, a7
                  rem          t6, t0, tp
                  ori          s4, t5, -1364
                  andi         s5, t4, -1788
                  slti         s0, a1, -822
                  and          a5, ra, t4
                  srli         s10, gp, 10
                  add          s5, s7, s6
                  mulhu        s9, ra, gp
                  auipc        a0, 692759
                  mulh         t4, t3, s4
                  sub          t3, a3, zero
                  div          s5, a1, a0
                  sltiu        t5, a0, -1300
                  srli         s1, a0, 24
                  lui          ra, 755089
                  srai         tp, t0, 30
                  mulhu        ra, a6, s4
                  rem          s4, t6, s3
                  mulhsu       s10, s11, a1
                  remu         t5, a6, ra
                  xor          t5, t4, s2
                  sltiu        a7, a5, 884
                  sll          sp, s3, a6
                  sra          s10, a3, ra
                  andi         ra, s6, -348
                  sll          s0, a6, s0
                  srli         a5, gp, 3
                  mulhu        s1, sp, tp
                  auipc        a7, 77605
                  andi         t6, t6, 534
                  mulhu        tp, a4, t5
                  sltiu        s7, zero, 973
                  div          s5, zero, a6
                  sltu         t2, tp, a4
                  divu         tp, s7, a6
                  ori          t4, s6, 527
                  ori          a5, a6, 596
                  lui          a3, 337737
                  rem          sp, s5, tp
                  remu         sp, s7, s8
                  remu         ra, s4, s3
                  sltiu        s4, a7, -128
                  mulhsu       t6, s0, tp
                  sra          gp, t2, t1
                  srli         t0, t3, 24
                  sra          s5, s9, t0
                  mul          t4, s11, sp
                  mulhsu       tp, gp, a3
                  mulhu        a2, s8, s5
                  nop
                  srl          ra, s6, ra
                  remu         ra, ra, a6
                  srli         t1, s10, 31
                  mulhu        s1, t5, sp
                  add          s6, t5, t2
                  auipc        s10, 478086
                  srl          s7, ra, s6
                  mulhu        t5, sp, a7
                  slt          a2, t0, t2
                  slti         t6, a6, -686
                  add          zero, zero, s11
                  sltiu        s6, s2, -947
                  srli         s7, zero, 1
                  div          s9, a3, s2
                  addi         s10, t4, -103
                  xor          t4, s11, sp
                  sub          t6, a4, s10
                  div          t1, t0, s8
                  nop
                  add          s1, a6, a3
                  auipc        tp, 226237
                  srai         zero, t5, 1
                  sub          a3, sp, t3
                  slt          a1, s9, a0
                  rem          a7, a0, tp
                  sltu         s10, a2, ra
                  divu         s10, t4, gp
                  sltu         s3, s10, tp
                  auipc        t5, 373994
                  srli         a3, s7, 18
                  mulh         s8, a0, s1
                  mulhsu       t2, s11, t1
                  or           t5, s1, sp
                  add          t3, s0, s3
                  sll          a7, s8, gp
                  auipc        s1, 524332
                  sub          a2, s7, t1
                  xor          s4, t6, a6
                  srl          s10, t5, a2
                  ori          gp, s6, 1791
                  divu         sp, s7, a7
                  divu         a5, s5, gp
                  ori          tp, t5, -443
                  srai         a5, s0, 0
                  xor          t0, s0, s9
                  divu         zero, tp, gp
                  sub          a3, s9, a1
                  mulh         s10, s5, sp
                  or           gp, s7, t2
                  add          a1, a6, s8
                  mulhsu       t1, t3, sp
                  srai         t6, sp, 8
                  remu         a5, a6, a4
                  slti         a3, t3, -239
                  sltu         tp, t1, s11
                  xor          t5, a0, t0
                  nop
                  sltu         a0, t5, t0
                  remu         s2, s8, a4
                  div          a2, gp, a0
                  or           t0, t3, t3
                  sll          t1, s8, a3
                  ori          s8, a5, -1905
                  srli         a0, a1, 17
                  xori         a0, t4, 670
                  slli         s4, t2, 3
                  sra          a7, t3, a7
                  xor          a7, s5, s6
                  xori         s9, s5, 834
                  div          a3, s3, gp
                  divu         s8, a6, t1
                  or           a0, a7, t2
                  auipc        s4, 945236
                  mul          s1, s9, a0
                  addi         zero, a7, -1081
                  mulhsu       gp, a5, a4
                  srai         a7, s2, 15
                  sub          a3, zero, s11
                  divu         s3, s5, t1
                  sub          ra, s10, a6
                  sll          s4, t3, ra
                  mul          s8, t2, t0
                  lui          s0, 968683
                  div          sp, zero, a1
                  xor          a1, s10, a5
                  slt          a2, s9, a7
                  slt          zero, a3, s6
                  srli         s2, t1, 12
                  sub          t6, s0, s2
                  nop
                  add          a5, t1, s3
                  andi         s2, s6, 388
                  add          s10, s2, a1
                  mul          t2, a4, s11
                  sltu         s10, t1, a0
                  sll          s6, tp, t1
                  nop
                  ori          t2, a6, -1692
                  or           s4, sp, s1
                  sltiu        s4, a5, 494
                  nop
                  srli         t5, a7, 8
                  sltu         s9, t4, t6
                  mulh         a2, a6, a0
                  lui          s8, 437139
                  sub          s7, a0, zero
                  slti         t1, tp, -409
                  srli         s3, a5, 4
                  mulhsu       gp, s3, s4
                  nop
                  sltiu        t5, t1, -1667
                  xor          t0, a1, s11
                  andi         s2, s8, 740
                  or           a0, a3, a7
                  srl          t0, s3, t2
                  or           ra, t0, s10
                  add          t5, s3, zero
                  slt          t5, t1, s3
                  mul          a2, a6, a1
                  xor          a0, gp, s0
                  sltiu        a7, s3, -1874
                  addi         s4, s11, 1224
                  remu         a0, a0, tp
                  srli         s2, a6, 10
                  sll          s8, t3, s9
                  and          sp, a1, zero
                  sll          tp, a6, a5
                  remu         s4, s11, s1
                  andi         sp, s6, -1679
                  sltiu        a5, a3, 756
                  sra          ra, s8, a3
                  rem          t3, s10, zero
                  sll          tp, s3, s0
                  remu         a3, a5, s0
                  divu         zero, ra, t2
                  rem          a7, a1, t5
                  mulhu        s8, t3, t0
                  addi         s4, s3, -250
                  add          ra, s9, gp
                  add          s6, s6, t6
                  remu         a3, s1, t0
                  mulhsu       t5, a6, zero
                  xori         s8, a3, -1842
                  slti         a7, a1, 1031
                  div          s5, t0, s1
                  srai         s3, a6, 28
                  mulh         t6, s9, s5
                  sra          s2, s3, s8
                  mul          s1, s6, t4
                  mul          sp, a2, a6
                  auipc        s8, 90761
                  mulh         gp, t4, s10
                  add          s8, s2, t0
                  slt          t3, a2, s3
                  remu         s3, s5, s2
                  divu         gp, s5, t4
                  remu         s7, s2, s10
                  remu         t5, ra, zero
                  lui          s4, 185332
                  div          a1, s10, t0
                  sll          s6, a3, ra
                  xori         a7, a0, -1311
                  slti         s7, zero, -539
                  slli         a1, t5, 5
                  srl          s2, s9, s10
                  mulhsu       a0, a4, s5
                  mul          t6, tp, tp
                  andi         t4, a7, 1707
                  sll          s4, a0, s5
                  lui          a3, 455561
                  add          t1, a3, s4
                  divu         a0, s5, s2
                  addi         a0, s10, -1727
                  or           t2, t5, t0
                  sub          t2, s11, s6
                  andi         a2, t2, 143
                  andi         s10, s2, 431
                  lui          s9, 1026532
                  remu         a3, s5, s0
                  srl          gp, t3, a3
                  sltiu        t0, t5, -565
                  div          gp, s8, s10
                  srai         s9, a3, 15
                  sltu         s4, s8, s2
                  remu         s5, t4, zero
                  remu         a1, a5, s2
                  mul          zero, s9, ra
                  auipc        s4, 250914
                  mulh         s7, t2, t3
                  sub          a0, s3, s7
                  ori          s1, a4, 1803
                  rem          t5, s10, s11
                  srl          a7, s9, t6
                  rem          a2, a1, s9
                  sltu         s6, s10, a1
                  mulh         s4, zero, a0
                  nop
                  mulh         sp, s1, t3
                  srl          t1, a6, t4
                  ori          s3, t3, -81
                  xor          t6, zero, a0
                  lui          s9, 1011433
                  xori         t6, a6, -1187
                  andi         t1, gp, -1485
                  auipc        a0, 634265
                  and          a3, a2, s7
                  remu         t3, t2, s1
                  mulh         t1, t6, sp
                  sltiu        a3, s8, -619
                  sltiu        s9, a3, -1614
                  slti         a2, s4, 1691
                  mul          a1, a0, s3
                  add          a3, a4, s3
                  mulhu        s6, s8, s10
                  lui          sp, 351114
                  xori         t3, t4, -604
                  sltiu        t4, s10, -1515
                  xori         gp, sp, 697
                  slt          a2, gp, a2
                  div          t1, s10, gp
                  sra          a1, a7, t2
                  and          a1, a6, ra
                  srl          t4, s6, t2
                  rem          a0, s2, t4
                  xor          s9, s10, s4
                  or           s1, s10, gp
                  srli         a0, t5, 26
                  mul          a3, s7, a1
                  addi         t0, s4, -1112
                  addi         s0, a1, -696
                  addi         t0, s4, -954
                  xor          s0, s1, t6
                  lui          s10, 870965
                  sub          t2, ra, s0
                  sra          s10, s9, s7
                  mulh         ra, a0, t1
                  mulhu        sp, a3, a4
                  addi         s10, s2, 1056
                  mulhu        t3, a7, a4
                  slti         t4, t6, -1538
                  slt          t1, s5, s0
                  addi         s10, s3, -30
                  xori         ra, t3, -1230
                  ori          s2, s9, 1352
                  remu         t4, s8, s7
                  sll          s4, t1, a1
                  andi         s5, t6, 165
                  auipc        s3, 133394
                  slt          t5, s10, s7
                  mulh         a0, t6, a6
                  lui          a0, 421273
                  remu         a3, a5, s7
                  rem          t6, s8, gp
                  lui          t0, 41024
                  add          s7, ra, a2
                  lui          t1, 773349
                  nop
                  slli         sp, s4, 5
                  sra          gp, a6, s7
                  div          tp, a7, a4
                  slli         s0, s7, 10
                  div          t2, t5, a1
                  slli         s9, s2, 24
                  remu         a5, t3, ra
                  and          s9, t2, a4
                  xor          a5, t4, s2
                  div          s3, a3, s6
                  slti         a3, t3, 659
                  sra          s3, a7, ra
                  sra          ra, a6, t2
                  srl          zero, s5, s4
                  slt          ra, zero, a4
                  sra          s1, s1, a5
                  srli         t1, s3, 19
                  sll          zero, a5, s6
                  sll          zero, s10, s9
                  mulhu        a7, a3, t0
                  srli         t2, a6, 16
                  mulhsu       s9, s8, s1
                  sltiu        s2, a4, 1122
                  mul          a7, ra, s5
                  add          zero, s8, s4
                  lui          s1, 261667
                  nop
                  rem          a0, s10, a6
                  sltiu        tp, s9, 1898
                  sub          t5, s10, t1
                  slt          s7, t2, zero
                  ori          tp, a7, 1155
                  nop
                  slti         a2, t2, 1481
                  ori          s7, tp, -762
                  lui          a3, 165700
                  mulhsu       t4, s11, tp
                  auipc        t1, 260812
                  mulh         s0, s4, a5
                  sll          s5, s0, s10
                  remu         t1, a6, a5
                  mulhu        t1, a1, t2
                  slli         t4, ra, 19
                  nop
                  and          s0, s1, tp
                  sltu         s6, ra, a1
                  mulh         t2, zero, s3
                  lui          tp, 347703
                  mulhsu       s2, gp, s9
                  ori          sp, s7, -1830
                  xor          sp, a0, tp
                  addi         s7, s11, 400
                  xor          ra, a7, zero
                  sltu         t5, s6, a2
                  lui          t6, 221975
                  slti         sp, s8, 1455
                  andi         s4, a2, -789
                  sltiu        t1, sp, 797
                  add          tp, s2, a1
                  sra          t3, a2, s11
                  xori         s3, a5, 1390
                  mulhsu       ra, sp, a1
                  add          t0, s6, t1
                  and          s1, s6, a6
                  xor          s4, s10, t0
                  lui          t5, 661233
                  slt          t0, t3, s2
                  add          s9, s1, a1
                  addi         gp, s6, -1927
                  xori         s7, gp, -1140
                  ori          s4, s11, -1454
                  auipc        ra, 398785
                  auipc        t6, 942828
                  xor          s5, s0, a5
                  mulhu        gp, gp, s7
                  mulh         zero, a6, a0
                  sltiu        s2, t6, 1483
                  remu         s6, gp, t4
                  srli         tp, a5, 3
                  sll          zero, s1, t4
                  nop
                  mulhsu       t3, s6, s6
                  srli         s5, tp, 28
                  andi         ra, t6, 1525
                  div          t3, s3, t2
                  div          a0, zero, t5
                  srl          s7, a5, t1
                  andi         gp, gp, 1999
                  auipc        a3, 826871
                  auipc        s8, 419853
                  rem          zero, zero, a7
                  mul          t0, t4, t5
                  mulhu        s8, t4, gp
                  addi         s1, s4, -1087
                  xor          a0, t5, a3
                  sra          s2, t5, s1
                  mulhsu       t1, s7, a7
                  remu         s10, s6, a3
                  sub          s3, s8, s0
                  srl          s8, s1, a6
                  or           gp, a7, a0
                  ori          t1, s9, -920
                  mul          s9, t3, ra
                  addi         s6, s8, 1918
                  xor          gp, s9, t1
                  slli         s2, t1, 12
                  divu         s1, s1, a7
                  ori          s8, t6, -1232
                  add          s9, s6, s6
                  srai         t1, a5, 29
                  mul          t5, a6, t2
                  sra          sp, t5, s2
                  srai         s3, a4, 2
                  sltiu        zero, s2, 1809
                  mul          a0, zero, gp
                  mulh         t4, a4, s11
                  mulhsu       s2, a0, a4
                  srl          s2, s3, t1
                  sra          s1, s8, ra
                  add          a0, sp, tp
                  nop
                  sra          a5, s2, tp
                  sra          s9, s11, t1
                  mulhu        sp, s2, tp
                  andi         tp, t3, -1617
                  mulhsu       zero, s6, t4
                  remu         s2, a7, s11
                  div          s3, t2, s3
                  mul          s4, a5, s3
                  lui          s1, 121485
                  add          t5, s0, a5
                  add          a5, t0, s5
                  or           s8, s8, s11
                  mulh         s0, s10, t5
                  slt          t6, a1, s11
                  lui          s9, 66453
                  remu         a3, s1, t1
                  slt          s3, s10, s10
                  auipc        t6, 843936
                  xor          a0, s1, zero
                  addi         a7, t4, 451
                  mul          s1, sp, a4
                  srai         a2, s11, 12
                  lui          tp, 420699
                  mulhu        t4, t1, t6
                  srli         t0, a3, 18
                  divu         a2, ra, ra
                  mulhsu       s7, ra, a4
                  nop
                  divu         a2, s2, s7
                  sll          s0, t3, t5
                  xori         t1, sp, -58
                  xor          t0, s4, t3
                  rem          t6, a7, t1
                  div          s2, a3, s11
                  xor          s4, t5, tp
                  slli         s2, t0, 5
                  sll          tp, s1, t0
                  lui          zero, 530637
                  srai         s2, t6, 2
                  sltiu        a7, s5, 356
                  nop
                  nop
                  sltu         s10, ra, a3
                  andi         a3, a1, 1579
                  andi         s0, s9, 248
                  sll          a3, tp, s11
                  and          a1, t2, s1
                  sra          s4, zero, a6
                  lui          s2, 570413
                  srai         t5, a2, 26
                  lui          t5, 727036
                  addi         t0, tp, 1103
                  sltu         s9, t3, s0
                  div          tp, t4, a0
                  lui          s8, 341001
                  srai         t6, ra, 30
                  add          s7, s6, s6
                  mul          t3, t4, s9
                  mulhu        s6, ra, a4
                  sltiu        a7, s11, -1655
                  addi         s3, a4, -944
                  addi         s8, a3, -1064
                  or           t3, sp, sp
                  slli         a3, s9, 2
                  mulhsu       a1, t6, t3
                  sltiu        a2, a6, 382
                  remu         s0, a3, a4
                  lui          s10, 1042370
                  sub          s4, s7, a6
                  xori         tp, a1, -631
                  addi         s10, s8, -793
                  slli         s4, a0, 25
                  srai         t1, a2, 21
                  sra          a0, s1, a0
                  and          a5, s5, a0
                  slt          t0, t2, s5
                  addi         t5, a3, 717
                  sll          sp, s2, ra
                  and          s2, a0, ra
                  xor          t0, s1, gp
                  mulhsu       s8, t4, a3
                  mul          s10, tp, zero
                  andi         s9, t4, 1608
                  sra          t5, t2, s1
                  nop
                  lui          a2, 568223
                  ori          t4, s11, 1594
                  or           s5, t5, tp
                  xori         zero, t0, 1485
                  sltiu        tp, t2, 36
                  sltiu        zero, tp, -1042
                  mulhu        s2, s9, s4
                  mulhu        s2, t6, ra
                  add          s1, a5, s11
                  rem          a1, t4, a0
                  or           a2, s8, t3
                  rem          sp, zero, zero
                  sra          gp, s9, gp
                  remu         t4, s2, a3
                  div          a0, a6, a6
                  ori          s1, t3, 1285
                  sll          s8, tp, s8
                  srai         s9, s5, 8
                  auipc        t5, 730199
                  or           a2, gp, s11
                  xori         a0, s7, -429
                  sub          ra, s1, s10
                  mulhu        s10, t4, t1
                  add          a3, a3, a4
                  xori         a3, s1, 273
                  ori          a1, s8, -1898
                  slt          s7, s9, a7
                  sub          t1, s1, zero
                  lui          s4, 450204
                  lui          t6, 728004
                  srai         s2, s1, 10
                  mulh         t0, a2, a0
                  mul          sp, s7, a6
                  mulh         s3, a2, a4
                  auipc        ra, 186957
                  divu         s3, s0, t5
                  sub          s7, s5, a2
                  rem          t6, t2, s1
                  mulhsu       a0, ra, s3
                  lui          a1, 296008
                  sub          t6, t4, s8
                  andi         a2, s6, 1057
                  sltiu        t4, s11, 1549
                  slt          a7, t3, s10
                  slti         s4, s1, -5
                  mul          s1, s7, s6
                  divu         s0, sp, s11
                  slti         s1, t1, 632
                  div          s0, a2, zero
                  remu         a7, gp, sp
                  rem          zero, t4, tp
                  mulh         a1, s10, ra
                  or           t4, s9, s4
                  mulh         s4, zero, s2
                  add          s0, t1, s4
                  sltiu        s7, t1, 1059
                  or           tp, a4, t1
                  and          a3, a1, a6
                  srl          gp, t1, t6
                  mulh         s0, a4, s11
                  sll          a1, s10, gp
                  divu         a2, t3, s7
                  nop
                  addi         t1, s1, 957
                  sub          t0, ra, a2
                  rem          s0, a2, s11
                  mulh         t4, s10, s11
                  slt          t5, gp, a0
                  slli         s7, zero, 1
                  srai         s4, t6, 4
                  xor          s3, t3, t0
                  srli         s2, a4, 24
                  sltiu        s4, t6, -1398
                  or           s1, a1, s1
                  sll          a3, s7, s6
                  add          s5, s6, s3
                  addi         a7, t2, 11
                  ori          a3, s3, 760
                  srli         t0, a3, 1
                  xor          t4, tp, s7
                  sltu         s5, s5, a2
                  rem          t4, s11, t0
                  xor          t4, t5, gp
                  mulhsu       s9, s1, t6
                  and          sp, sp, a3
                  ori          s6, a2, 1069
                  srai         s9, s3, 18
                  slt          t5, s2, s6
                  srli         a2, a2, 12
                  mulhu        s1, a0, a4
                  slli         gp, a0, 15
                  nop
                  mulh         t4, tp, t0
                  slti         t1, s7, -1878
                  xor          a0, s10, a4
                  srl          t5, s3, zero
                  lui          a7, 1033489
                  ori          tp, a1, -1827
                  srli         s3, t3, 18
                  sra          s5, s5, s4
                  mulhsu       s8, zero, s11
                  div          zero, s1, a3
                  sub          a0, t3, a0
                  mulhsu       s4, ra, gp
                  slli         s1, a4, 12
                  sra          s10, s5, a6
                  auipc        a0, 460268
                  div          gp, t2, a2
                  addi         s7, s6, -790
                  mul          t1, a6, s6
                  sll          t3, s1, s7
                  divu         zero, s11, gp
                  addi         s5, t5, 1998
                  slt          t2, sp, s1
                  and          a5, a3, a7
                  andi         tp, a4, 209
                  sra          t1, a3, s10
                  sub          s10, s4, s0
                  addi         s5, s11, -718
                  sltiu        a5, s4, 756
                  addi         s5, s4, 1083
                  xor          zero, a4, t1
                  srai         t0, a1, 4
                  andi         t1, a5, -29
                  sra          sp, zero, a1
                  addi         t3, a0, -566
                  add          s8, t0, t1
                  divu         t3, a0, t4
                  srai         t0, s7, 4
                  xori         s6, s9, -1948
                  auipc        s2, 100846
                  sra          a1, s4, a0
                  mulhsu       s8, t3, t3
                  ori          t5, a5, -1957
                  andi         s10, a1, -798
                  remu         sp, t0, t6
                  slt          t2, a5, a5
                  lui          t2, 847770
                  srl          zero, tp, a3
                  mulhu        t1, s1, a0
                  mul          s0, t2, t4
                  mulh         s10, a3, sp
                  sll          t1, t4, t1
                  ori          a0, a2, 1527
                  sra          a2, s4, gp
                  sltiu        t5, s2, -1297
                  divu         t1, zero, t3
                  remu         ra, a3, s6
                  add          s9, s8, zero
                  lui          t0, 238412
                  lui          t3, 710851
                  srai         gp, a0, 13
                  slti         t0, s6, 374
                  remu         t6, s3, ra
                  slli         a1, zero, 9
                  srai         s4, t6, 20
                  sltu         s2, ra, s7
                  srai         sp, s6, 7
                  lui          t1, 394213
                  nop
                  slt          s5, s10, t4
                  xori         t3, t4, 1137
                  xor          s4, t5, s7
                  add          s10, s0, t6
                  sltiu        t6, t2, 922
                  slt          gp, a7, a5
                  mulh         s5, gp, ra
                  mulh         t3, zero, a0
                  divu         s4, a1, a3
                  sltu         a1, t1, s4
                  xor          ra, t6, s3
                  slt          zero, s4, t5
                  slt          t2, sp, ra
                  sltiu        s3, gp, -1355
                  or           a1, s4, gp
                  xor          a5, a4, s6
                  mulhsu       s4, a6, gp
                  lui          a1, 278730
                  sra          s1, gp, s4
                  srai         s1, s7, 20
                  slli         t5, t2, 0
                  xori         t1, s3, -1465
                  sltu         gp, t3, s3
                  mulhsu       s10, s8, s11
                  divu         a0, s8, s0
                  slt          a0, t6, s0
                  div          s10, gp, a2
                  slt          t4, s4, t2
                  lui          s8, 372860
                  remu         a3, t2, gp
                  srl          a3, a1, zero
                  div          tp, a3, sp
                  xor          a7, tp, t6
                  nop
                  slti         sp, s9, 1344
                  mulh         t1, sp, t3
                  or           t1, t0, t1
                  auipc        a1, 254456
                  xori         s9, s2, -1145
                  mulhsu       t5, sp, s7
                  srl          s4, s7, a6
                  mulhu        t2, s1, s5
                  sll          t0, ra, t3
                  ori          tp, tp, 1113
                  xor          a0, s8, s3
                  srli         a7, s4, 30
                  sra          s6, ra, t3
                  xori         a0, s8, 271
                  or           s1, t2, s5
                  slti         t1, s0, -1676
                  mulh         zero, s3, a3
                  sub          gp, t3, t4
                  srl          a0, s4, s5
                  xor          s4, s6, a7
                  mul          s8, sp, s8
                  and          s1, s11, gp
                  divu         tp, s5, t4
                  add          a5, a1, s11
                  mul          s1, s8, tp
                  slti         s4, a4, -2017
                  or           a7, s9, s11
                  mulh         s0, t5, s10
                  sltu         ra, s8, a4
                  addi         a0, t3, 450
                  mul          s0, t5, s8
                  ori          t0, s2, 1899
                  mul          a7, a3, ra
                  sltiu        t6, s11, -1293
                  mulh         a1, a4, t4
                  sra          gp, s7, t6
                  mulhsu       a3, s1, tp
                  srl          gp, a5, sp
                  lui          a5, 834216
                  ori          s8, s3, 295
                  srl          a3, s5, t0
                  divu         s1, s7, s6
                  div          a3, s9, gp
                  srai         t6, zero, 18
                  mulhsu       s1, t1, t1
                  mulhsu       zero, t6, s1
                  xori         s10, t6, 1646
                  add          s3, a2, a0
                  xor          t0, s7, ra
                  sub          a2, sp, s5
                  or           t3, t0, a5
                  sra          s6, t0, a5
                  lui          a3, 412545
                  xori         ra, a1, 862
                  mulhsu       s10, s11, s1
                  add          s9, s9, a7
                  nop
                  mulh         a2, s3, t0
                  mulhu        s4, ra, t3
                  srl          ra, gp, t6
                  slti         s10, s7, 278
                  srai         t0, t1, 15
                  remu         t5, a7, s6
                  sltu         a3, s1, gp
                  xori         s2, a7, 1919
                  divu         a7, t1, zero
                  sra          t1, s6, s11
                  sltiu        t4, s8, 529
                  remu         s0, t4, s10
                  mulhsu       s0, a7, s3
                  sltiu        t3, t1, 96
                  auipc        t0, 379715
                  sltu         s3, a5, a5
                  addi         s2, t3, -1126
                  mulhsu       t1, t4, t0
                  mulh         s10, s11, t1
                  add          a0, s1, s9
                  div          s0, s9, t2
                  rem          s5, t5, s3
                  lui          s8, 70997
                  sltu         a0, t3, a6
                  sub          s2, t3, s6
                  auipc        t0, 1007762
                  sll          s2, ra, a5
                  slti         s4, a2, -834
                  sll          s0, a2, s6
                  add          s10, t0, t6
                  nop
                  add          s7, s7, s2
                  srai         t1, t1, 20
                  remu         a7, a6, gp
                  mul          t0, s4, a0
                  nop
                  xori         s10, s10, -1451
                  sll          ra, s2, s2
                  slti         a5, t0, 1565
                  xori         s2, a1, 837
                  andi         s1, a3, 455
                  rem          a3, a0, t6
                  add          a1, s9, a3
                  or           t6, a0, t3
                  nop
                  andi         t2, a2, 1086
                  ori          a7, a0, 1291
                  ori          a1, a7, -1040
                  rem          t5, s7, s2
                  mulhu        s1, s11, s5
                  remu         s0, t6, tp
                  rem          s1, t2, a3
                  mulhsu       s0, a6, s10
                  slli         t5, t2, 3
                  ori          s7, s2, 765
                  divu         s10, s2, ra
                  lui          t4, 773072
                  and          s8, a4, t2
                  mul          gp, tp, s3
                  remu         s7, s0, t6
                  sra          t5, a0, t1
                  div          a1, s5, s8
                  ori          s8, s7, -1904
                  sll          s10, ra, t0
                  add          a1, sp, t3
                  lui          a1, 591010
                  srai         t6, t0, 1
                  lui          t4, 861086
                  sltu         t6, s11, t3
                  mulhu        a2, zero, gp
                  mulhsu       a7, a1, a0
                  or           t1, gp, t5
                  lui          s4, 987463
                  mulhsu       a0, a4, gp
                  andi         s4, tp, -1776
                  mul          s10, a1, s8
                  nop
                  divu         a0, s9, a3
                  divu         s7, s5, a5
                  mulhu        a7, a1, s10
                  auipc        s9, 81205
                  auipc        t5, 659346
                  sub          a2, t3, a7
                  mulhsu       ra, s1, t0
                  srli         s9, t5, 19
                  lui          t2, 4548
                  add          s0, t4, a1
                  mulhsu       t6, sp, t1
                  sra          a0, s10, t6
                  lui          t1, 518399
                  divu         s7, a2, s3
                  rem          t0, gp, s3
                  mulhu        a3, t0, t1
                  srli         a2, s3, 30
                  mulhu        t1, t1, s2
                  remu         t1, s10, t3
                  remu         a0, a0, s3
                  sltiu        tp, s6, -81
                  srai         s9, t0, 22
                  mulhsu       s4, t4, s8
                  sra          ra, t2, s11
                  add          a2, t6, a0
                  srl          s2, t3, t2
                  sll          s0, a4, s7
                  auipc        s4, 630267
                  andi         zero, t6, 1187
                  auipc        t1, 802794
                  remu         t6, a4, a0
                  xor          t3, t3, s2
                  andi         tp, s4, 1593
                  sll          a3, sp, t5
                  div          t6, gp, s5
                  slt          s8, a2, a7
                  sltu         t6, s11, s3
                  auipc        tp, 648469
                  mulh         a1, zero, zero
                  add          s2, t4, zero
                  mulhsu       s8, s5, sp
                  or           t0, s0, s3
                  addi         zero, a0, -920
                  srli         a0, s8, 9
                  srai         s3, a4, 19
                  xori         a1, a2, 1599
                  rem          t2, a5, a5
                  divu         s10, s9, sp
                  srai         a7, a7, 15
                  xori         s3, a2, -1240
                  sltu         s5, a5, zero
                  mulhsu       a5, t4, a3
                  srai         s4, s8, 16
                  mulh         ra, a3, a6
                  div          s4, ra, t6
                  xori         s2, s1, 1959
                  slli         s6, t5, 19
                  rem          t5, a0, s0
                  srl          s7, t3, t4
                  rem          ra, t6, t4
                  mulh         t6, gp, t4
                  mulh         t1, t1, a7
                  div          t0, t5, a4
                  divu         s0, a6, a0
                  srli         gp, s10, 26
                  mulhsu       s7, s3, t1
                  sll          t1, a6, t2
                  mul          sp, a2, s4
                  remu         a0, s6, s6
                  lui          a1, 28289
                  add          a5, s6, a5
                  div          t3, s1, s5
                  slt          t4, a5, tp
                  mul          s7, a7, t6
                  slli         t6, a2, 3
                  srai         a3, s4, 7
                  nop
                  nop
                  add          s10, gp, sp
                  mulh         a0, s6, t6
                  nop
                  srai         t2, a5, 14
                  srai         a3, t5, 13
                  add          s10, s3, s11
                  or           t3, s1, gp
                  sub          t6, a0, a4
                  srl          s2, t5, t2
                  srl          t3, s8, ra
                  sltu         t5, ra, gp
                  srli         t1, s1, 30
                  slt          t4, s4, s0
                  divu         a7, s2, t6
                  slti         t2, t2, -447
                  divu         a1, t6, s11
                  slt          t0, t5, t4
                  divu         t5, t5, t1
                  rem          t3, a1, s1
                  ori          a2, s9, -232
                  mulhu        ra, t4, a2
                  addi         s10, ra, -1317
                  and          t3, t4, s9
                  sra          a7, s3, t3
                  srai         a5, t6, 23
                  addi         t2, t3, -790
                  ori          zero, s6, -1432
                  remu         s10, a3, gp
                  add          s8, s1, s0
                  srli         s9, s11, 28
                  auipc        t3, 907912
                  sltu         t0, a2, gp
                  lui          a2, 552173
                  srli         a1, s10, 6
                  srai         t5, s8, 21
                  mulh         s8, gp, gp
                  srli         t1, a7, 3
                  div          t3, s6, s5
                  xor          s0, a6, t3
                  slli         a1, s1, 24
                  sra          s7, t6, a0
                  mul          t2, t1, t0
                  div          a0, t6, s3
                  slti         s4, t4, 592
                  auipc        a2, 445616
                  sltiu        t5, gp, 1358
                  mulh         s3, s5, a3
                  mulhu        a1, a3, sp
                  nop
                  addi         t4, a5, -530
                  srli         a5, a5, 9
                  xori         t6, s10, 885
                  srli         t4, s4, 8
                  addi         s2, s11, -223
                  slti         t1, a2, 1932
                  auipc        t0, 807926
                  srl          a7, s4, s9
                  auipc        tp, 209415
                  and          s4, s2, s4
                  mul          s9, t6, s9
                  nop
                  sll          t5, s4, a3
                  slt          s7, t6, a6
                  mul          a3, s10, s7
                  div          a3, s4, s1
                  slli         zero, zero, 8
                  andi         t4, sp, -170
                  add          a2, t1, s11
                  slli         gp, s0, 17
                  divu         t0, s1, s0
                  nop
                  or           s0, a6, s6
                  sltiu        t1, s11, -263
                  rem          t4, t0, s3
                  sltiu        tp, s4, 1493
                  sltu         s4, s10, s10
                  lui          s2, 549142
                  xor          a5, a1, gp
                  or           a5, a7, s11
                  xori         zero, t4, -1560
                  add          s4, a2, t0
                  sltiu        zero, s11, -149
                  mul          s1, s7, a3
                  sll          t5, s10, s9
                  srl          sp, s10, a3
                  srai         sp, ra, 26
                  andi         s9, s5, 307
                  div          a1, s9, a4
                  lui          s1, 312155
                  mul          sp, a2, s6
                  lui          s8, 272287
                  sltu         t6, s11, s10
                  slti         t0, s3, -767
                  srli         a3, a3, 9
                  slti         s9, t0, 1642
                  sra          a2, gp, a1
                  sub          ra, a4, s2
                  remu         sp, s6, a2
                  nop
                  srai         s4, sp, 11
                  sll          t3, t3, t6
                  and          s0, s3, t1
                  remu         s7, t3, t6
                  addi         gp, sp, 1725
                  sltu         s10, s7, a0
                  srl          a7, s2, t1
                  auipc        a7, 220073
                  div          a1, t3, a7
                  divu         s7, gp, a4
                  sltiu        zero, a3, 1776
                  ori          s8, a7, 20
                  srl          s2, a0, a7
                  sltiu        a3, s6, -957
                  mulh         t2, sp, t4
                  sll          a7, t0, sp
                  rem          s4, a5, s8
                  addi         sp, a5, 1427
                  auipc        t6, 514031
                  srli         gp, a3, 5
                  nop
                  sra          s8, a7, s4
                  sltu         a0, a4, t0
                  ori          s5, s5, -785
                  sltu         a2, s3, a0
                  srl          t5, s7, s10
                  slli         a2, s6, 31
                  ori          s4, tp, -1491
                  nop
                  mulhsu       s5, t2, s9
                  srai         t2, t2, 24
                  add          t1, s6, a3
                  srli         t0, s1, 2
                  divu         t5, a3, t0
                  xori         t4, s3, 214
                  addi         t1, t4, -921
                  slt          s10, s7, t2
                  sra          t0, s8, t6
                  mulhu        ra, s4, a6
                  rem          gp, tp, t6
                  sll          zero, s3, t1
                  rem          t6, tp, a2
                  mulhsu       a2, s4, t5
                  sll          s8, ra, s7
                  rem          zero, a6, zero
                  lui          t4, 708029
                  divu         s10, s8, t0
                  slli         tp, a1, 13
                  xori         a1, a2, 1032
                  slti         a0, s10, 109
                  mulh         gp, s8, s10
                  srai         t3, a5, 2
                  sll          a1, tp, s8
                  sub          s6, s5, t2
                  mulh         tp, t6, a7
                  srl          a7, t3, gp
                  mul          zero, s11, t3
                  sltiu        t1, t3, -275
                  ori          s0, a4, 282
                  sra          tp, s10, s7
                  andi         a7, ra, 1896
                  divu         zero, gp, s0
                  sll          t5, a5, t3
                  mulhsu       gp, s7, t6
                  add          s8, a6, t4
                  remu         t6, a1, a1
                  mulhsu       a0, sp, s6
                  xori         s9, a1, -256
                  mulhu        a2, a2, s6
                  xori         t4, a5, -206
                  divu         a2, s0, s10
                  sltu         t0, s7, t3
                  divu         a1, sp, t5
                  lui          t5, 601459
                  lui          a5, 105683
                  srl          s1, s2, s5
                  sub          gp, a7, s1
                  slt          t3, ra, t3
                  andi         t5, s7, 1825
                  mul          s0, t2, s9
                  div          a2, s1, a0
                  mulhu        s9, s6, a4
                  addi         s3, a2, -1111
                  and          a3, t5, t6
                  add          a3, t2, gp
                  addi         tp, a7, -1422
                  mulhsu       s9, t3, s11
                  sra          a2, t5, s11
                  rem          t6, s1, a0
                  rem          s0, gp, a1
                  add          t2, s3, s9
                  add          a7, t6, zero
                  xori         t1, s8, -545
                  sll          a0, t2, s9
                  add          a0, a1, a6
                  slli         s5, a2, 19
                  slt          t5, tp, a0
                  xori         s9, s6, -1851
                  rem          tp, s2, t0
                  slt          a3, s9, a5
                  or           a1, a7, a5
                  sltu         t5, t1, tp
                  mul          t0, s7, a6
                  add          s3, a7, s1
                  auipc        a5, 1032
                  ori          s4, s2, -620
                  lui          s1, 663269
                  sll          s7, a4, t3
                  auipc        a1, 973757
                  xor          t2, a6, s5
                  srl          s7, gp, s2
                  slli         s2, s8, 19
                  mulh         s6, s0, s3
                  andi         s1, s9, 956
                  sub          t3, zero, t6
                  slli         a0, t3, 19
                  div          s4, ra, t0
                  or           s2, zero, s4
                  slli         a0, s9, 3
                  mulhsu       s2, s11, s0
                  auipc        zero, 780481
                  sll          gp, s7, tp
                  mulhsu       gp, a4, s0
                  sra          s9, zero, a2
                  srli         zero, s4, 23
                  add          t2, s1, a4
                  slt          a2, s11, t3
                  xori         s9, t3, 565
                  andi         s5, s4, -1410
                  slli         a2, zero, 19
                  nop
                  or           ra, a1, s9
                  ori          s5, s3, 954
                  andi         tp, s9, -1705
                  auipc        t6, 931090
                  mul          a3, s10, t4
                  andi         t5, a7, 1519
                  srli         s10, t4, 26
                  sll          t4, t0, s4
                  mulh         zero, t2, ra
                  and          s4, s6, zero
                  srai         s6, t0, 20
                  remu         t1, t4, s7
                  slt          t0, s1, sp
                  mul          s6, s10, s9
                  lui          s9, 972433
                  auipc        s10, 86044
                  slti         t6, s7, -94
                  mulhu        t1, a5, s6
                  sll          t6, a6, s9
                  srl          a1, a6, a7
                  div          t0, a4, a2
                  mulh         s8, t2, a5
                  slti         s2, s4, 229
                  add          t3, s11, s1
                  sll          s2, gp, t3
                  mulh         a3, zero, s4
                  sra          t1, s1, sp
                  srai         ra, s11, 21
                  mulhu        a3, s1, a1
                  mul          s6, s3, s6
                  srli         t6, sp, 7
                  sll          s8, t3, s2
                  remu         s7, s9, a4
                  add          t2, s0, a1
                  sll          t2, s2, s7
                  remu         a5, s2, t1
                  srli         sp, s4, 30
                  srli         s10, a4, 30
                  xori         a5, a6, -257
                  sll          s10, zero, t1
                  or           s2, s3, s0
                  lui          a7, 350761
                  sltu         tp, a3, tp
                  sltiu        sp, zero, -1059
                  xor          t1, s7, s8
                  add          a7, t2, s11
                  rem          a1, ra, t0
                  mulhsu       ra, s10, s10
                  mulh         a2, zero, s2
                  srai         a2, s4, 1
                  rem          zero, t6, tp
                  add          s6, gp, s9
                  sltiu        a0, zero, 152
                  divu         tp, s10, zero
                  slti         a7, s11, -1777
                  mulh         s10, ra, zero
                  rem          t3, t4, s7
                  srai         a3, gp, 31
                  rem          t4, s5, a4
                  mul          a1, s6, a4
                  slli         s10, t1, 8
                  divu         s10, s1, a4
                  sra          s10, s10, a2
                  srai         zero, sp, 14
                  divu         s10, s5, t3
                  xori         s4, s10, 1607
                  mul          s9, t2, s4
                  add          s0, t6, a5
                  sltiu        s7, s6, 1236
                  div          s10, t6, tp
                  xori         s0, s7, 1768
                  andi         a7, gp, -1429
                  srli         s10, t0, 15
                  sll          s2, s0, s4
                  div          t4, sp, s11
                  add          ra, ra, gp
                  mulh         s1, s5, a0
                  sltiu        t2, a2, 491
                  remu         s9, a7, gp
                  remu         s2, a3, a3
                  nop
                  sra          ra, t1, t1
                  srli         s5, s10, 11
                  sll          s10, a0, ra
                  slti         ra, s5, 1370
                  mul          ra, s5, sp
                  ori          gp, a6, 841
                  sltu         s7, s2, gp
                  addi         s8, t5, 2012
                  xori         ra, t5, 1274
                  sra          s9, t0, zero
                  mulhu        s6, t3, s1
                  sra          a0, gp, s6
                  remu         t3, gp, a2
                  slli         ra, s5, 27
                  remu         sp, a0, s3
                  add          t4, s9, s1
                  sll          t0, a6, s4
                  lui          s0, 702345
                  add          t5, t5, s7
                  divu         a7, s5, a3
                  slti         t6, t0, -1558
                  divu         t1, a5, sp
                  sra          s6, a6, a2
                  srai         gp, s4, 26
                  and          s3, tp, s2
                  mulhsu       t0, t2, a4
                  slt          a1, a0, s1
                  nop
                  and          s0, s2, a7
                  srai         t6, t3, 9
                  auipc        a5, 507673
                  slli         s5, a1, 11
                  and          t3, a6, tp
                  mulh         t1, s11, t4
                  mul          s8, s9, a1
                  and          t2, t2, t6
                  srl          s5, s10, a4
                  mulh         s0, s10, t6
                  mulhu        zero, s2, s3
                  slt          a3, s2, s0
                  remu         t6, a5, t1
                  nop
                  mulhu        s6, s3, s7
                  add          tp, tp, t4
                  slti         a2, t2, -295
                  sltu         a2, ra, t6
                  slli         s2, a3, 8
                  add          sp, a5, s4
                  sltiu        t0, t6, 664
                  div          s6, s1, s4
                  or           t2, s9, t2
                  rem          s3, s5, a4
                  sra          s1, t3, a7
                  div          a3, ra, s0
                  slt          a7, s1, a3
                  srai         s4, s4, 2
                  nop
                  mul          a1, zero, s11
                  ori          t2, s3, -1890
                  nop
                  div          s7, t0, t3
                  ori          t6, a0, -690
                  xor          s4, s4, ra
                  nop
                  auipc        s6, 554928
                  lui          s1, 922473
                  add          a0, s11, a7
                  slli         s9, a1, 25
                  lui          t3, 914906
                  ori          s2, s11, 585
                  sll          zero, a3, a6
                  rem          a7, a6, sp
                  sltu         tp, s2, a7
                  sub          a7, a0, a2
                  mulhsu       a1, t4, s11
                  lui          s3, 734847
                  mulhsu       a0, t5, sp
                  andi         s0, s5, 1409
                  mulhsu       a2, a4, a2
                  xori         a2, sp, -43
                  divu         a2, ra, t0
                  rem          s4, s7, a5
                  addi         s8, t0, 797
                  mul          s6, sp, s10
                  slti         a2, gp, 937
                  srl          gp, s11, s4
                  sll          s9, s8, t1
                  mul          t1, t0, a3
                  auipc        s6, 247599
                  xori         s2, s6, -992
                  sll          a2, s8, a0
                  ori          ra, t6, -852
                  nop
                  mulhsu       s0, sp, a3
                  or           a7, t2, s11
                  srl          s0, a4, t1
                  xori         s1, s7, -2026
                  sltiu        s1, s7, 47
                  sll          t2, a6, s2
                  mulhu        a1, s1, a1
                  div          s10, a5, a4
                  andi         s8, a7, -1044
                  add          a0, t1, s1
                  mulh         s9, tp, s5
                  addi         s7, t4, -662
                  sra          a7, s6, s1
                  slli         tp, t1, 2
                  srai         tp, t2, 7
                  mulh         a2, gp, a4
                  sltiu        a1, s2, 93
                  auipc        t5, 339508
                  srl          t2, s5, s9
                  xori         s0, s0, -1674
                  sltiu        s2, sp, 846
                  mul          s1, tp, t3
                  nop
                  ori          s2, ra, 426
                  ori          t5, s7, 1928
                  auipc        sp, 471830
                  div          s7, t3, s8
                  remu         a7, t4, t0
                  mulhu        s4, a6, a7
                  mulhu        s2, s6, s11
                  slli         t2, t6, 12
                  div          t4, t2, s10
                  lui          ra, 466811
                  andi         t0, gp, -966
                  remu         ra, s2, s1
                  mulh         t6, t3, s4
                  mulhu        gp, ra, t4
                  mul          t3, t1, zero
                  mulhsu       s2, t6, s4
                  add          t6, a7, t6
                  lui          s4, 992942
                  lui          t3, 732066
                  andi         t4, tp, 2030
                  xor          s3, a0, a6
                  xori         t3, a0, -1023
                  rem          gp, s3, a4
                  div          sp, t5, ra
                  rem          tp, a0, ra
                  sra          t3, a0, s8
                  divu         t2, a6, s6
                  sra          s4, t6, t1
                  and          s3, s1, zero
                  sub          s0, s2, s6
                  sll          a5, s10, s2
                  xor          s10, s7, tp
                  slti         s8, s3, 465
                  slti         ra, a4, 1226
                  nop
                  sra          s0, a5, s11
                  add          t1, t4, t5
                  xor          t1, t5, a5
                  sltiu        s2, tp, 1002
                  sub          s2, s9, a1
                  srli         tp, s2, 9
                  slti         a2, a5, 325
                  sll          gp, s11, t0
                  slt          sp, t6, s1
                  srai         t5, ra, 28
                  auipc        a1, 898451
                  slt          s5, a6, sp
                  slti         s7, s7, 1738
                  srai         s10, s11, 29
                  mul          s3, t3, a6
                  add          s0, s5, s6
                  srai         a0, a2, 22
                  add          s10, zero, s11
                  mulh         s10, t0, s0
                  mul          t0, s7, a6
                  remu         s6, s4, t0
                  xor          gp, t1, a3
                  auipc        a3, 358985
                  xori         t2, s0, -1109
                  slti         a7, t5, -827
                  slt          sp, t4, t6
                  sltu         a3, t5, tp
                  divu         t1, tp, a7
                  slti         s2, t4, 749
                  slti         t1, a1, 1292
                  srli         s7, s5, 3
                  slli         t2, t4, 8
                  srai         s9, s8, 14
                  remu         gp, a6, tp
                  sub          sp, s11, tp
                  srl          s5, ra, s5
                  auipc        s7, 868753
                  or           a3, t3, a0
                  div          a5, t2, a0
                  sub          s6, s4, s8
                  ori          a5, zero, 746
                  sra          a7, s10, s4
                  rem          s7, t5, gp
                  xor          a1, s0, s0
                  rem          s3, s7, t5
                  and          s9, s7, s10
                  lui          t5, 963463
                  divu         zero, zero, t4
                  srai         s1, t5, 29
                  addi         a3, a2, -622
                  slti         a2, gp, 1252
                  add          sp, a1, a6
                  or           s2, s6, s2
                  mulh         a1, s8, s8
                  slt          s1, s2, a4
                  ori          s1, s11, -567
                  srli         s6, s8, 26
                  and          s9, s0, a2
                  auipc        sp, 788151
                  lui          t1, 92263
                  andi         a1, t4, -296
                  div          tp, s4, a7
                  srli         s2, s3, 6
                  srl          a5, s10, a2
                  sub          s4, a2, s3
                  rem          a5, sp, a7
                  xori         t6, a2, -647
                  ori          gp, s11, 1355
                  remu         zero, a4, a0
                  rem          s9, s7, s7
                  sra          s8, s4, a6
                  and          s10, s6, a1
                  sub          t3, s5, zero
                  mulh         a0, t5, t1
                  mulh         t2, a1, t4
                  sra          t3, s9, s4
                  divu         tp, s6, s3
                  and          t6, s11, s1
                  slt          gp, t6, s5
                  divu         tp, s2, s5
                  rem          s9, t3, a2
                  andi         s9, t3, -1438
                  lui          s4, 724578
                  slt          s5, t2, a1
                  sltu         t6, s1, s4
                  srl          gp, gp, zero
                  srli         t2, s4, 18
                  slti         t5, tp, -1172
                  sll          a0, t2, s10
                  mulhu        s2, a7, a2
                  slti         s10, s7, 603
                  rem          s1, ra, s9
                  mulh         a0, s7, s10
                  srl          s8, a6, s4
                  auipc        t6, 969149
                  add          t3, s9, t4
                  srl          s6, s3, a1
                  or           t2, a2, a1
                  lui          s4, 491192
                  slti         a7, t1, 758
                  slti         s7, s11, 1654
                  srai         a0, a6, 2
                  slt          s3, s9, a0
                  srai         a7, s2, 8
                  and          sp, s8, a6
                  ori          gp, gp, 1164
                  slti         s10, a0, -1989
                  remu         s5, s1, sp
                  mulhu        s9, t6, s8
                  andi         s1, a0, 431
                  divu         a2, s1, s3
                  auipc        s2, 352892
                  ori          t5, a1, 1504
                  sub          t0, s8, s4
                  mulh         gp, s0, a7
                  xori         a1, a3, 1513
                  mulh         s4, t1, s0
                  sll          s8, t1, s5
                  mulhsu       s5, s10, t0
                  sub          s0, a3, s11
                  lui          t0, 863741
                  srl          t5, a5, s5
                  sltiu        a5, s11, -1684
                  remu         a1, a1, s2
                  slli         zero, a2, 3
                  lui          t1, 202542
                  rem          t5, gp, s5
                  mulh         s10, s7, s11
                  or           s5, a6, s6
                  mulhu        s10, s1, zero
                  srai         t4, t1, 8
                  divu         a1, a0, tp
                  ori          a7, t0, 1370
                  andi         t5, a4, 1485
                  slt          s4, a5, s7
                  mul          a0, s5, s6
                  sltu         s3, s0, a3
                  and          s6, a2, s4
                  add          gp, sp, a6
                  slti         a3, s2, 568
                  sll          s6, s1, t5
                  rem          a0, s4, a2
                  mulhu        sp, a5, s2
                  srli         s10, a5, 10
                  div          t5, t5, s2
                  nop
                  nop
                  rem          a1, s9, s10
                  sltiu        s3, s10, -1002
                  divu         a1, t6, s4
                  srai         s6, t0, 8
                  addi         s1, sp, -1633
                  sra          s2, t4, gp
                  sltiu        s0, a0, -1152
                  remu         a3, a4, s0
                  mul          s4, s9, s10
                  addi         a2, a5, -285
                  andi         ra, s4, 1020
                  rem          s3, t2, s0
                  sltu         t6, t4, s5
                  slti         t4, s4, -348
                  mulh         s1, t4, t2
                  lui          t3, 279714
                  div          gp, zero, t2
                  sub          tp, s2, tp
                  slti         s2, s0, -301
                  mul          s3, a0, s5
                  auipc        a3, 11885
                  sll          t5, a1, a0
                  sltiu        s2, a7, -50
                  mulh         tp, t2, s6
                  and          a0, s5, zero
                  slli         sp, a0, 19
                  andi         t6, gp, 795
                  and          s0, t6, t2
                  sltiu        tp, t3, -389
                  mulhu        s5, sp, t6
                  ori          a2, a7, 953
                  rem          s0, t1, s2
                  rem          t3, zero, tp
                  divu         gp, a4, s7
                  div          a5, a2, t1
                  sltiu        s1, a6, 255
                  andi         gp, t5, -954
                  mulh         s8, s7, s10
                  sra          a1, a0, t6
                  xori         s5, t5, -1006
                  auipc        s2, 425649
                  sll          a0, a2, a6
                  srli         s0, a1, 28
                  sub          t6, a6, ra
                  sltiu        s6, t3, -258
                  srai         s0, tp, 15
                  sll          t2, a2, tp
                  sub          a2, t5, t3
                  addi         t2, a7, 327
                  mul          t2, t4, t1
                  ori          t2, gp, 1162
                  div          a2, gp, a0
                  sltu         s5, a2, s8
                  auipc        s1, 353030
                  srai         a5, t4, 7
                  sub          t3, s11, t0
                  xor          tp, t0, a4
                  xori         t4, s5, -378
                  sltiu        a2, t1, -602
                  srai         gp, tp, 21
                  sub          s10, s8, t4
                  sll          t0, s9, t6
                  xor          a3, t5, s1
                  div          s5, a5, a6
                  lui          a1, 356091
                  slli         t2, t0, 30
                  slti         a0, s9, -2016
                  sltiu        zero, tp, 28
                  sltiu        a2, tp, -1642
                  srl          zero, s2, tp
                  nop
                  slt          a5, t4, s1
                  ori          a1, t1, 106
                  lui          a0, 285269
                  andi         sp, a7, 381
                  sub          t2, a5, t0
                  remu         a1, s8, s8
                  auipc        a3, 602804
                  mulhsu       a7, s5, sp
                  srai         t2, a4, 4
                  slt          a1, s8, s10
                  sltiu        s4, t2, 408
                  sub          a1, s3, s9
                  remu         a5, s8, a5
                  sltu         a3, zero, s6
                  lui          s10, 839379
                  div          t6, t1, sp
                  auipc        s6, 824215
                  sll          t1, a0, s0
                  rem          a5, s5, t1
                  auipc        s10, 1040434
                  sub          t3, t1, t4
                  sra          s6, s11, s9
                  sll          gp, s7, t5
                  andi         t2, s5, -809
                  nop
                  andi         a3, s10, 240
                  sra          tp, s8, a4
                  nop
                  srl          a7, a5, sp
                  slti         zero, s4, -1931
                  srl          s5, s5, a2
                  srli         a1, t6, 10
                  rem          t1, a1, sp
                  remu         t5, s2, gp
                  addi         s1, a7, 1962
                  slti         s3, a4, 1856
                  andi         s5, s3, -960
                  srli         t4, a7, 1
                  mulhsu       s5, s7, s6
                  auipc        t0, 282568
                  ori          t6, s5, 250
                  mulh         t4, a3, a4
                  add          zero, zero, a5
                  xori         t0, tp, -376
                  srli         s2, sp, 23
                  div          a7, s8, s8
                  add          ra, t3, s4
                  ori          s7, a7, -716
                  xor          s2, t4, t2
                  mulhsu       s6, s11, s6
                  sra          t2, s10, t2
                  sll          t4, a1, s11
                  addi         s4, t5, 1612
                  slti         a3, gp, -1049
                  add          a1, s1, a0
                  auipc        s9, 925060
                  srai         s1, t0, 9
                  lui          s5, 316727
                  mulhu        s8, a7, a5
                  divu         s5, s8, a5
                  andi         tp, t5, 1675
                  ori          s7, t5, -1577
                  slti         t4, s9, -905
                  sltiu        a5, tp, -790
                  auipc        s6, 143070
                  srli         a1, tp, 31
                  sltiu        s9, gp, -1764
                  or           s7, s10, t2
                  auipc        s1, 58829
                  divu         tp, a0, a6
                  sltiu        s3, a5, 1726
                  xori         s4, a2, -1466
                  mul          t0, s7, s1
                  mulh         a5, s6, ra
                  mulhu        t3, t2, s2
                  mulhsu       a1, t4, tp
                  sll          t0, t1, ra
                  slli         a0, s0, 22
                  ori          s0, t6, -772
                  srli         a2, a3, 9
                  slti         s7, t0, -723
                  or           s0, gp, sp
                  ori          s3, t3, -93
                  mul          s8, t3, s7
                  sll          t5, a6, a4
                  addi         s10, zero, 709
                  and          a2, t0, a2
                  rem          s3, s3, t2
                  mulh         t0, tp, a1
                  mulh         a3, t2, a4
                  and          tp, a6, a0
                  slli         t6, s8, 29
                  slti         zero, s7, -1644
                  mulhsu       t0, s0, s11
                  div          s4, t6, a6
                  ori          a7, a3, 639
                  divu         t0, a6, s8
                  sra          s9, a3, t2
                  divu         ra, s2, s0
                  sub          t0, zero, s5
                  srai         sp, s6, 21
                  srli         t6, a1, 26
                  slli         a5, t4, 10
                  divu         s1, a4, a5
                  srai         sp, t3, 27
                  sub          s9, ra, s0
                  or           a7, s5, a6
                  mul          a3, s6, t2
                  addi         tp, a0, 1959
                  xori         s7, t3, -1857
                  srai         s2, t5, 15
                  sll          ra, t0, a3
                  xori         a1, t4, -463
                  lui          t4, 452536
                  sub          s3, gp, s9
                  addi         sp, t6, 1700
                  divu         t5, t4, s6
                  xor          s6, tp, a4
                  slti         s7, s0, 557
                  xor          t1, s11, t3
                  srai         a1, s2, 23
                  slti         s0, s5, -1793
                  mulhsu       s3, s5, s0
                  slt          s0, a6, s1
                  xori         a2, a5, 622
                  auipc        t4, 144591
                  slt          t4, s11, s4
                  add          a3, a5, t4
                  ori          s5, s10, -1115
                  div          s1, a1, a0
                  andi         s2, a0, -421
                  mulhu        a3, sp, s10
                  sltu         a7, gp, a0
                  slti         a7, s0, 1845
                  sub          a2, s0, t3
                  mulhsu       s1, s4, t6
                  mulhsu       t5, s1, s6
                  auipc        t5, 215530
                  sltiu        s5, s5, -1268
                  sltu         s9, s9, s8
                  srli         s2, zero, 20
                  slti         zero, a0, 438
                  slti         t0, t1, -1136
                  divu         s8, tp, s9
                  andi         a5, sp, -1075
                  sll          ra, s10, s2
                  add          a2, t5, s6
                  lui          a1, 102681
                  sltu         s8, gp, t4
                  lui          a7, 811555
                  and          s10, s10, s2
                  addi         s7, s1, -891
                  sub          s5, s8, s2
                  and          s1, t4, s7
                  srai         t4, zero, 28
                  divu         t2, s11, s10
                  mulhsu       s8, sp, t6
                  srai         a5, sp, 23
                  rem          t3, s9, ra
                  ori          s1, ra, -2026
                  srai         a3, t1, 7
                  sltiu        t5, s1, 987
                  ori          t3, gp, -1434
                  or           t0, a5, gp
                  add          a0, a2, t2
                  slti         a7, s1, -2035
                  divu         zero, s3, a0
                  mulh         t5, t1, a5
                  sll          t6, s5, s10
                  srli         s0, a5, 1
                  sltu         zero, s3, t0
                  divu         zero, gp, s4
                  slti         a2, tp, 170
                  slti         t1, a1, 1396
                  sra          a3, s11, t0
                  add          s7, s0, s3
                  or           s7, t2, a4
                  srli         s2, t4, 20
                  rem          a7, s9, a0
                  srl          s3, a5, s6
                  sra          s1, a7, t1
                  slt          s1, t0, t5
                  add          t1, a7, ra
                  auipc        s9, 228354
                  mul          s3, s1, s4
                  auipc        a2, 253305
                  ori          zero, s2, 1935
                  sltu         a1, a1, gp
                  mulhsu       s2, s10, t2
                  sltiu        s1, ra, 722
                  ori          s1, s8, 1305
                  srli         a1, s6, 17
                  sub          s10, t3, t2
                  auipc        t6, 170977
                  or           a3, s6, s8
                  srli         s2, gp, 8
                  sltiu        a1, tp, -1544
                  mul          s1, a1, a4
                  remu         t3, a3, a0
                  sra          s7, t0, sp
                  sub          t6, s0, a5
                  sub          a1, t3, a7
                  div          a3, sp, a7
                  sub          s2, tp, t1
                  nop
                  slt          zero, t0, s2
                  andi         ra, s3, 970
                  srl          s8, s7, s7
                  slli         s5, s10, 24
                  sltiu        a5, t0, 1425
                  addi         t5, s0, -123
                  sub          s8, s1, tp
                  div          s2, t2, sp
                  or           s3, t0, a0
                  slli         s7, t4, 18
                  nop
                  addi         zero, s10, -1036
                  or           a5, a1, s8
                  sltu         sp, s2, a1
                  srli         s6, sp, 10
                  sll          t6, s3, t5
                  and          a5, a2, s8
                  srai         a0, s11, 4
                  mulhu        s3, s4, a2
                  mulhu        t0, s3, s5
                  xor          gp, s7, s8
                  auipc        s10, 214017
                  mul          a0, a7, a7
                  lui          s3, 861972
                  auipc        a2, 686764
                  remu         t6, s3, a7
                  slt          s4, sp, sp
                  auipc        sp, 189312
                  mul          s3, a7, s8
                  xori         s3, s6, 1652
                  mulh         a2, a1, s2
                  sra          s0, t0, t0
                  add          a1, a5, t3
                  slli         a7, a6, 14
                  srl          t5, s8, s7
                  xori         t6, sp, 528
                  andi         ra, s9, -1631
                  lui          ra, 552588
                  sub          a2, a2, a1
                  sltu         a0, zero, t6
                  srli         zero, a0, 24
                  and          sp, s6, t6
                  sll          t2, a5, s8
                  xori         s9, s3, 1135
                  slli         s5, tp, 12
                  andi         a7, s3, 1849
                  mulhu        a3, s6, t6
                  xori         a1, t1, 168
                  or           gp, t4, zero
                  auipc        gp, 975457
                  mul          s2, s6, s2
                  and          ra, s9, zero
                  slti         gp, a5, -987
                  srai         s2, a2, 30
                  mul          t4, a4, s3
                  sra          a2, zero, t0
                  ori          s2, sp, 2000
                  or           s4, a5, s8
                  xori         a3, sp, -1988
                  xor          a2, t3, t0
                  nop
                  ori          t3, s5, -1088
                  xor          s8, zero, s11
                  slti         s3, a7, 639
                  auipc        t5, 510285
                  srai         a2, s5, 23
                  mul          s4, sp, a1
                  mulhu        s1, sp, a1
                  sltiu        s6, t3, -1006
                  sra          s6, t1, sp
                  sra          a7, a4, s3
                  srli         s1, s2, 13
                  mulhu        t5, a1, s6
                  sltiu        sp, t5, -1364
                  sub          s1, t2, tp
                  auipc        a3, 746794
                  slli         s7, a4, 10
                  mulh         a2, a6, s3
                  sltu         gp, s1, zero
                  xori         gp, t1, -1784
                  or           t0, a5, t0
                  nop
                  lui          s2, 356661
                  sltiu        s3, t0, 1019
                  addi         s7, sp, 757
                  nop
                  slli         s2, tp, 25
                  add          s8, t6, t3
                  divu         sp, s2, a6
                  divu         t2, s2, s10
                  sltiu        ra, t0, 1394
                  remu         s4, s10, a4
                  sltu         s9, s1, t4
                  mulhsu       a3, zero, s10
                  srl          a2, s4, ra
                  auipc        s5, 529178
                  sltiu        t0, t2, -382
                  ori          s7, t6, -1189
                  lui          t5, 596027
                  mulhu        s10, ra, t2
                  slti         s9, a7, 523
                  slli         a7, a4, 16
                  sra          s0, s7, a2
                  andi         t2, s11, -56
                  mulhsu       s0, tp, s7
                  mulhsu       a1, a4, ra
                  xori         s4, a0, -781
                  addi         s1, a1, 539
                  ori          t3, s0, 575
                  slti         s8, s4, 1078
                  slli         s10, s0, 8
                  divu         s0, a0, s0
                  or           s6, s2, s2
                  nop
                  mulh         s7, s3, a0
                  remu         a7, a6, s10
                  slti         s0, t1, 1906
                  sll          t6, s1, gp
                  nop
                  remu         tp, t1, t2
                  srl          t5, s10, s10
                  mulhu        s3, gp, t5
                  xor          s10, t1, s1
                  nop
                  xor          a5, t1, s4
                  add          s5, s8, s10
                  auipc        s4, 94057
                  slli         a1, t0, 19
                  div          t3, sp, s1
                  nop
                  slti         s3, s4, -772
                  slt          s6, s6, s9
                  mulhsu       t6, gp, t5
                  sub          a5, s5, sp
                  sltu         sp, sp, a7
                  rem          s8, t5, t2
                  xori         a2, t2, 530
                  slt          t5, t3, s7
                  sub          a3, t4, a1
                  slt          s4, t4, a7
                  xor          t0, tp, t6
                  lui          a2, 819467
                  slti         a5, tp, 1362
                  slti         gp, a2, -1638
                  andi         t5, s7, 1140
                  andi         s8, gp, -1943
                  ori          t3, a7, -1458
                  srl          s2, t6, s0
                  or           a2, a2, ra
                  srl          s3, s3, sp
                  lui          a3, 414063
                  or           ra, s6, s3
                  sll          t1, t4, a7
                  nop
                  sltu         s8, s0, s5
                  auipc        s5, 258841
                  srli         a5, a5, 12
                  or           s3, s6, t3
                  div          s1, s6, s6
                  sltu         t5, a7, s3
                  sub          s6, t5, s6
                  lui          a0, 684087
                  or           s1, a6, s10
                  nop
                  ori          a7, a6, -641
                  xor          tp, s7, zero
                  xori         t2, t0, -828
                  or           a1, s7, zero
                  sub          t6, s7, s3
                  slt          a1, s7, s11
                  srli         t0, s2, 7
                  addi         s8, t4, 438
                  rem          sp, t4, s3
                  sll          t1, a1, t4
                  xor          gp, sp, gp
                  sra          a7, s10, a4
                  mulhu        t5, t2, t1
                  xori         s6, t3, 996
                  and          s5, t4, s6
                  slt          a3, ra, zero
                  mulhsu       s5, s6, a6
                  add          s8, t4, t1
                  mulh         t4, t5, t2
                  sltu         t0, t4, s2
                  xor          s0, t0, a3
                  srl          a7, a7, a0
                  sltiu        a3, ra, 1661
                  nop
                  or           s6, s10, s0
                  sll          t0, t6, a3
                  mulh         t4, zero, s4
                  sltu         a7, a0, a1
                  mulh         tp, t6, s0
                  sltu         a5, s0, t5
                  xori         s0, s3, 480
                  ori          s1, a6, -858
                  or           t6, a6, s8
                  or           s0, s7, t2
                  remu         t6, s11, t2
                  srli         s6, s8, 15
                  auipc        s6, 790266
                  lui          s8, 30015
                  addi         a5, a5, 527
                  slt          gp, t6, tp
                  addi         s1, s4, -1221
                  remu         s2, s5, a4
                  or           t6, s11, a3
                  srai         s0, a0, 23
                  srai         t2, t5, 31
                  sll          s3, s4, sp
                  xori         s5, sp, 1744
                  xor          s3, tp, a4
                  mulhsu       s5, s6, a0
                  add          t5, t2, s6
                  mulh         t2, s1, s4
                  xor          s5, zero, s9
                  or           s7, t1, a5
                  sltiu        t5, s0, -190
                  mulhu        ra, t1, s2
                  ori          s1, t1, -788
                  andi         t4, s10, 1496
                  ori          s7, a7, -363
                  sra          a1, s7, a6
                  sltiu        s9, a7, 1287
                  slli         t3, a6, 6
                  srl          s1, s8, ra
                  srli         t6, gp, 14
                  srli         ra, t3, 7
                  addi         t5, s9, 2003
                  sltiu        a0, zero, -1493
                  remu         tp, t4, s11
                  mulh         a1, s7, s8
                  divu         a7, s7, ra
                  andi         t6, t3, -590
                  sltu         s5, s7, s7
                  div          s8, a6, s8
                  xori         a5, t0, -2040
                  addi         a1, s11, 997
                  slti         s3, t4, 874
                  auipc        s5, 697369
                  addi         s6, t0, 332
                  mulhu        a2, s9, sp
                  sra          s4, tp, s4
                  ori          ra, gp, -2001
                  xori         a1, sp, -1477
                  or           s2, a3, a7
                  and          a1, gp, gp
                  mulhsu       tp, tp, a6
                  mulh         sp, s3, t0
                  slt          t5, s10, tp
                  sub          ra, a0, s11
                  slti         t1, t0, -1150
                  sub          a3, ra, a4
                  divu         a3, a0, a4
                  and          a2, t6, a7
                  andi         s10, gp, -315
                  sra          t4, t0, a1
                  slti         a2, s2, 335
                  xor          s1, s8, a0
                  slti         zero, a0, -437
                  or           t1, t3, s4
                  mul          s5, t4, ra
                  or           gp, t3, a5
                  slti         t2, ra, -742
                  srli         tp, sp, 8
                  rem          a2, a6, a0
                  or           s2, t0, a6
                  mul          gp, t5, s10
                  nop
                  slt          s1, s4, s2
                  andi         a1, s5, -1807
                  mul          a2, t6, t4
                  srli         gp, a0, 19
                  sra          a3, s2, s4
                  mul          a0, s7, zero
                  sll          s9, a0, sp
                  srl          a3, zero, s2
                  nop
                  xor          zero, s6, a0
                  slti         s7, a3, -1730
                  nop
                  ori          s1, s10, 2019
                  divu         a2, t6, t4
                  mulh         t4, t2, t6
                  or           s1, sp, s7
                  srli         s9, a7, 30
                  mul          s3, sp, sp
                  mul          s9, t0, s9
                  sll          s6, ra, t2
                  sltiu        a1, a5, 729
                  ori          t2, t4, -908
                  sltu         tp, s8, t4
                  sub          zero, a7, t4
                  remu         a1, a4, t0
                  xori         a2, gp, 1202
                  divu         s10, s4, a7
                  or           s2, t4, t0
                  sll          a1, t0, sp
                  slli         a5, s7, 27
                  xori         s3, s8, 817
                  ori          s4, t3, 1701
                  sltiu        s3, a6, 1057
                  srli         s0, ra, 4
                  nop
                  auipc        a2, 769976
                  sltu         t1, a7, s11
                  remu         t6, s4, ra
                  remu         s9, t3, tp
                  sra          s0, a6, ra
                  mulhu        t0, zero, a5
                  divu         a2, s4, t1
                  add          t5, a4, a4
                  andi         sp, s3, -2044
                  or           a7, s4, a6
                  srli         a1, s9, 6
                  xori         t1, a5, 902
                  sll          gp, t1, t6
                  slt          t5, t1, gp
                  xori         zero, t2, -1225
                  slli         s0, a1, 14
                  slti         a5, a1, -78
                  or           t1, s8, a0
                  sltiu        s10, tp, 1499
                  mul          a2, gp, s7
                  sll          s3, s4, a0
                  andi         t3, s7, 1853
                  slli         sp, t6, 26
                  mul          ra, a7, ra
                  div          t5, t3, s9
                  andi         t5, t6, -446
                  mul          s2, a7, s0
                  sub          gp, a4, t5
                  ori          s6, s3, -2029
                  sltu         s3, s10, t2
                  add          a0, s11, s4
                  and          s0, s3, sp
                  ori          s10, t0, 535
                  mulhsu       a0, t2, s6
                  srl          s8, s5, t0
                  addi         s9, t5, -847
                  sub          s7, s9, a5
                  rem          gp, s8, s11
                  srai         sp, s2, 27
                  xori         t6, s5, -1168
                  auipc        t1, 176714
                  srli         a5, a5, 31
                  srai         s9, t3, 20
                  remu         s7, a5, a2
                  slti         zero, a0, -784
                  mul          s1, s7, s5
                  sub          s3, a3, s2
                  rem          sp, a2, a5
                  divu         tp, s8, s0
                  xori         tp, a5, 420
                  mul          ra, t5, t2
                  mulhu        a0, ra, a7
                  mulhu        a7, s10, s10
                  slti         s5, a2, 944
                  srli         s10, s2, 24
                  and          t5, s0, t2
                  mulh         gp, a5, zero
                  srai         s9, s6, 31
                  mulh         s5, t3, s9
                  srai         s10, s7, 29
                  sra          a1, s1, s5
                  addi         a3, s2, 777
                  and          tp, t2, a3
                  xor          tp, s0, a1
                  addi         a0, s11, 165
                  slti         t2, gp, 1947
                  sub          a7, s10, s9
                  lui          s9, 408444
                  mulh         t6, ra, t0
                  slli         a7, a2, 3
                  mul          a1, ra, a6
                  nop
                  slli         s0, t1, 18
                  mul          a2, a6, t3
                  andi         a5, gp, -147
                  addi         t5, s0, 501
                  mulhu        a5, a4, s5
                  sra          a0, s6, t2
                  sltiu        s2, s0, -861
                  add          a0, s2, s11
                  addi         s9, s6, 474
                  sub          s8, s4, ra
                  mulhsu       s4, t4, a0
                  sltiu        sp, t1, -1797
                  srl          zero, t5, a1
                  sll          s1, a6, a7
                  sub          s9, s6, a3
                  xor          a5, ra, a4
                  srai         s8, t4, 28
                  slt          s6, a0, t3
                  lui          t2, 22833
                  mulhsu       t1, t3, t6
                  xori         t6, a3, -1770
                  mulh         s5, a7, ra
                  slti         t6, s6, -442
                  slli         t0, t6, 25
                  andi         s2, a7, 993
                  srl          zero, a7, s5
                  ori          s2, t5, -2013
                  srli         a2, t3, 3
                  mulhsu       a1, sp, a7
                  slli         s3, s7, 11
                  slli         tp, t1, 22
                  nop
                  remu         tp, s6, s4
                  slli         gp, s9, 7
                  rem          s3, a3, t5
                  auipc        t4, 668579
                  lui          a3, 882169
                  lui          sp, 356159
                  xor          a2, s5, ra
                  add          tp, s7, gp
                  srai         gp, gp, 11
                  add          t2, a6, s6
                  mulh         s2, gp, gp
                  rem          a3, a5, a5
                  sltu         s8, s5, t2
                  nop
                  and          s7, s8, a3
                  andi         a1, a4, 1659
                  rem          t1, t1, a0
                  sub          a1, s9, s0
                  la x27, test_done
                  jalr x0, x27, 0
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
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  addi x14, x14, -4
                  sw  x16, (x14)
                  add x16, x14, zero
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
                  add x14, x16, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x7, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x7, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x7, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x7, x8, ecall_handler
                  li x8, 0x1
                  beq x7, x8, instr_fault_handler
                  li x8, 0x5
                  beq x7, x8, load_fault_handler
                  li x8, 0x7
                  beq x7, x8, store_fault_handler
                  li x8, 0xc
                  beq x7, x8, pt_fault_handler
                  li x8, 0xd
                  beq x7, x8, pt_fault_handler
                  li x8, 0xf
                  beq x7, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x16, x14, zero
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
                  add x14, x16, zero
                  lw  x16, (x14)
                  addi x14, x14, 4
                  mret

load_fault_handler:
                  add x16, x14, zero
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
                  add x14, x16, zero
                  lw  x16, (x14)
                  addi x14, x14, 4
                  mret

store_fault_handler:
                  add x16, x14, zero
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
                  add x14, x16, zero
                  lw  x16, (x14)
                  addi x14, x14, 4
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x16, x14, zero
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
                  add x14, x16, zero
                  lw  x16, (x14)
                  addi x14, x14, 4
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x16, x14, zero
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
                  add x14, x16, zero
                  lw  x16, (x14)
                  addi x14, x14, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x16, x14, zero
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
                  add x14, x16, zero
                  lw  x16, (x14)
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
