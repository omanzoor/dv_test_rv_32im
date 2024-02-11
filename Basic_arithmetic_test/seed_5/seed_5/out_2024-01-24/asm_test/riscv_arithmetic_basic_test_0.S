.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x22, 0x40001104
                  csrw 0x301, x22
kernel_sp:        
                  la x20, kernel_stack_end

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
                  li x0, 0x2d02036a
                  li x1, 0xd
                  li x2, 0x80000000
                  li x3, 0x153cc33a
                  li x4, 0x80000000
                  li x6, 0x0
                  li x7, 0xc5b1b29b
                  li x8, 0xc511f49a
                  li x9, 0x0
                  li x10, 0x347ae778
                  li x11, 0x80000000
                  li x12, 0x6eef81ed
                  li x13, 0xbf197a8e
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xa
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x21, 0x2710575e
                  li x22, 0x80000000
                  li x23, 0x5
                  li x24, 0x80000000
                  li x25, 0xfcdd1259
                  li x26, 0x680a51e0
                  li x27, 0x0
                  li x28, 0xa01d7450
                  li x29, 0x0
                  li x30, 0xfb0aadd6
                  li x31, 0x0
                  la x5, user_stack_end
main:             srli         s7, s8, 5
                  auipc        t6, 277054
                  sltu         a6, t0, a5
                  andi         a5, tp, -1631
                  srai         s11, s10, 8
                  auipc        s11, 731862
                  mul          s7, a5, s4
                  or           a1, s4, t1
                  ori          a7, zero, 682
                  or           a7, s3, s0
                  lui          s1, 294304
                  or           sp, s9, s4
                  mulhu        ra, t4, a6
                  sub          gp, s1, t3
                  xori         gp, a4, -32
                  sra          s7, a1, s6
                  mulh         a5, s10, a7
                  mulhsu       a2, sp, s5
                  andi         a4, s5, 807
                  srl          s9, a6, t5
                  sltu         t1, ra, a1
                  sll          s2, t3, s5
                  mulhu        a7, a6, t0
                  andi         tp, s6, 1959
                  rem          t3, t0, s5
                  srli         a2, a3, 31
                  mulhu        s2, gp, s11
                  slli         a2, s0, 23
                  slt          a1, a0, s10
                  nop
                  mulhu        a4, s11, t3
                  mulh         s8, a6, sp
                  slt          gp, s7, s1
                  add          t3, a2, s1
                  mul          sp, sp, s0
                  mulh         a2, t1, gp
                  mulh         s3, s2, tp
                  srai         s2, s3, 13
                  div          s10, s5, zero
                  lui          s11, 936922
                  ori          t1, a4, 999
                  sra          tp, s11, a2
                  xori         s5, t2, 110
                  xori         s8, t1, -1924
                  xori         t3, a7, -1064
                  xor          a1, a3, s4
                  lui          s8, 629022
                  auipc        a5, 336912
                  rem          a7, s10, s5
                  add          s0, gp, t2
                  nop
                  srl          s9, s2, t6
                  mulh         s5, ra, ra
                  rem          a2, t5, a7
                  ori          t2, t3, 608
                  mulhsu       s9, zero, s2
                  ori          s8, ra, 981
                  andi         s5, a3, -1833
                  andi         s6, s11, -622
                  mul          s0, t1, a3
                  ori          a6, a6, 1929
                  sra          t3, s1, a3
                  sra          tp, zero, a3
                  srl          s0, s2, t4
                  mul          s3, a7, tp
                  or           s3, s10, s10
                  mulh         s0, s0, s8
                  rem          s2, s1, s5
                  remu         s8, s8, a4
                  sltiu        a6, s1, -668
                  mulh         a6, ra, gp
                  or           a7, s11, t0
                  sra          s8, t2, s5
                  srli         t1, ra, 7
                  andi         tp, a3, 1883
                  divu         s0, s1, a5
                  sll          s11, s7, s10
                  mulhsu       gp, s3, a4
                  addi         t2, a1, 609
                  slli         t3, s3, 25
                  addi         s10, t1, 1960
                  xor          a2, s4, a4
                  slti         a0, tp, 812
                  andi         sp, a3, -1938
                  slti         ra, s3, 107
                  auipc        s11, 501430
                  or           s0, t3, t0
                  slt          s7, gp, a4
                  mul          t3, s7, a2
                  srl          ra, a4, a0
                  slt          a4, s4, t5
                  ori          zero, a1, 1211
                  ori          a5, a7, -1820
                  srl          a7, s8, s6
                  sltu         zero, a0, a4
                  mul          gp, ra, a1
                  divu         t3, zero, ra
                  sll          s7, s11, s9
                  slli         s3, a5, 9
                  mulhu        t3, t6, s2
                  sub          a0, s4, t6
                  ori          a7, sp, -136
                  xori         t2, zero, -1693
                  andi         s8, s1, 312
                  auipc        zero, 334831
                  slli         s5, s10, 11
                  sra          a7, tp, s3
                  sub          s9, s4, t6
                  and          s5, a4, s4
                  sll          a2, sp, s8
                  sltiu        a4, a1, -668
                  add          s2, sp, s4
                  auipc        t4, 60621
                  remu         t3, a1, t2
                  sub          a5, s3, sp
                  mulhsu       t5, t2, a5
                  sra          s9, s4, t5
                  div          s0, t4, s7
                  sll          s5, t0, t0
                  ori          s11, a7, 1628
                  xor          gp, s10, s5
                  mulhu        s11, sp, s5
                  lui          s1, 863294
                  sub          s11, a6, a1
                  nop
                  and          t2, a2, a7
                  slli         t3, t3, 21
                  xori         t6, s5, 1745
                  add          s10, t2, gp
                  srai         s5, a2, 3
                  slt          a5, t1, a4
                  mulhu        gp, s4, s4
                  addi         s6, t6, 304
                  srai         s6, a7, 0
                  xor          s10, zero, s7
                  divu         t6, t5, s4
                  add          s3, tp, s9
                  mulhu        a7, a5, tp
                  slli         a6, s8, 2
                  mulhu        s11, s3, s4
                  add          t3, t4, s3
                  mulhu        t2, zero, a6
                  sltiu        s9, tp, -1857
                  and          a5, s3, sp
                  sltu         s8, zero, gp
                  lui          gp, 621962
                  andi         zero, t2, -1841
                  srai         a4, ra, 11
                  lui          s6, 831080
                  andi         zero, s0, -872
                  srai         gp, t0, 26
                  xor          s1, a0, t5
                  slli         s11, t3, 19
                  sltu         t4, a6, a3
                  srai         t4, s3, 31
                  auipc        s1, 267305
                  ori          s8, gp, -836
                  slt          tp, t3, s10
                  sll          ra, t3, a0
                  auipc        a2, 606121
                  lui          t5, 139806
                  sltiu        t5, t1, -2020
                  slti         a7, t0, 546
                  srli         s0, sp, 19
                  slli         tp, s1, 20
                  add          t4, s11, s11
                  div          gp, t1, s2
                  sll          s5, s8, s9
                  slt          s2, s0, s2
                  slt          t6, t1, a4
                  ori          s11, zero, -762
                  sltu         a0, s11, s8
                  mulhsu       t5, s0, t4
                  andi         zero, a6, -924
                  mulhu        ra, a1, a5
                  slli         a1, s9, 13
                  xori         a0, s6, 420
                  lui          s8, 398305
                  sltu         s5, a2, s11
                  srl          t4, sp, a6
                  sltiu        gp, a0, -723
                  ori          s6, a0, 227
                  lui          s7, 705504
                  addi         sp, s10, -585
                  divu         s1, s9, t4
                  ori          t2, s8, 1831
                  mul          a4, s9, zero
                  sltiu        a6, zero, -1450
                  sra          t4, s8, s1
                  add          t3, tp, s5
                  divu         s5, a4, a2
                  addi         gp, s6, 253
                  divu         gp, s6, s10
                  addi         gp, a5, -1922
                  mul          s6, s11, s0
                  divu         s0, s4, a5
                  auipc        s8, 1042410
                  nop
                  xor          tp, s9, s2
                  mulh         a0, a6, a1
                  slt          t3, s9, s2
                  xori         sp, tp, 1010
                  sll          a4, a7, t0
                  nop
                  xor          t5, t3, s6
                  sltu         t2, a2, t3
                  xori         s9, t4, -1840
                  srai         a1, t3, 9
                  sub          t1, s0, t1
                  xori         a0, t3, 1830
                  ori          tp, s1, 1127
                  mulhsu       a2, a4, zero
                  srl          s8, t1, zero
                  srli         tp, a2, 5
                  srl          sp, ra, a2
                  xor          a6, t1, s4
                  sra          a6, s6, a5
                  ori          a0, t3, 1653
                  mulhsu       t1, t2, a4
                  mulhsu       sp, s2, s5
                  remu         a6, s10, zero
                  slli         zero, tp, 25
                  mulh         s8, a1, s0
                  remu         t6, a3, zero
                  div          s7, a5, ra
                  auipc        s5, 289883
                  and          a5, t6, t2
                  rem          t6, a5, a1
                  div          t6, a2, t2
                  slt          s11, t3, t1
                  mulhsu       tp, t4, s2
                  slli         t1, s5, 22
                  mulh         s1, s10, a7
                  sltiu        t2, ra, 424
                  add          ra, s0, s3
                  ori          a0, a3, 1509
                  srl          s2, t3, s1
                  remu         t1, s8, t1
                  sltu         a7, a3, s9
                  sll          s10, ra, t0
                  remu         a7, a0, s7
                  lui          a6, 247699
                  mulhu        t2, s9, a1
                  and          t3, s0, t2
                  andi         s0, t3, 32
                  sltiu        a4, t5, 989
                  remu         a1, a4, ra
                  srai         s5, t2, 3
                  andi         a0, s0, 139
                  slt          ra, t4, t5
                  and          s6, a7, s4
                  mulhu        a0, a1, a6
                  divu         a6, t1, t1
                  lui          gp, 1033237
                  addi         s7, s0, 1098
                  slli         a7, a6, 0
                  slti         s2, t2, -1709
                  add          zero, s1, t3
                  mulh         s0, t1, a6
                  ori          sp, s0, 1303
                  mulhu        s8, a5, s1
                  sub          a0, a1, a2
                  rem          t6, t1, a1
                  mulhu        a0, s6, a0
                  ori          t2, a4, 1597
                  and          s8, t3, s11
                  sltiu        s7, a5, -1161
                  xori         t4, t2, -569
                  sltu         s6, t1, s7
                  auipc        s10, 294366
                  mulhsu       ra, s10, sp
                  sltiu        s9, t4, 661
                  slli         a4, s4, 11
                  xor          a2, s6, s4
                  or           s9, a1, s0
                  srai         s8, a0, 17
                  rem          a6, a6, t0
                  auipc        zero, 484997
                  divu         s7, s0, s6
                  auipc        zero, 235045
                  mulh         s6, t5, s11
                  addi         a5, a0, 1630
                  mulhsu       a5, s3, a3
                  srl          t3, s7, a7
                  slti         tp, gp, -1082
                  sub          s9, a5, t6
                  addi         gp, ra, 357
                  sltiu        a1, s4, -1151
                  srl          s8, tp, s3
                  mul          sp, zero, tp
                  nop
                  mulhu        sp, s8, a1
                  andi         a0, t1, 436
                  mulhu        ra, s5, a4
                  mul          ra, a4, s2
                  slt          s9, gp, t2
                  addi         t4, a3, 1406
                  mulhu        s8, a3, a7
                  andi         a1, a2, -1507
                  mul          s9, s9, s2
                  sra          s11, s11, s6
                  mulhsu       s1, s1, s5
                  slli         s8, gp, 14
                  sra          s3, tp, a1
                  divu         a7, s5, a2
                  ori          s3, a2, 606
                  sltiu        t6, t1, 1199
                  srli         a7, a2, 23
                  mulhsu       t5, tp, s5
                  remu         zero, a2, s10
                  sltiu        a4, s6, 764
                  ori          s9, ra, 857
                  xori         s0, a5, 362
                  mulhu        s7, tp, t1
                  remu         s2, t4, t5
                  srl          s11, ra, t1
                  slt          s9, sp, a4
                  sltiu        s11, a7, 716
                  addi         s2, t1, -871
                  divu         s5, a5, sp
                  divu         a1, a1, s0
                  and          a0, s3, s8
                  div          a4, s6, s4
                  rem          tp, s6, s5
                  and          ra, s3, tp
                  sll          t1, t6, gp
                  srl          a2, t2, s9
                  rem          s5, tp, a2
                  slt          s8, s8, t2
                  sltu         s3, a4, a0
                  srli         s5, a5, 10
                  xori         a2, a1, 691
                  srl          ra, s8, a5
                  addi         s1, a6, 97
                  sltiu        s6, s9, -1922
                  addi         s7, t2, -134
                  auipc        a0, 87324
                  or           a5, s10, a3
                  slt          s10, a4, t2
                  xori         gp, tp, -1200
                  auipc        s10, 484438
                  add          a1, s3, t1
                  ori          s3, s6, -1227
                  sra          ra, s4, t2
                  srai         t3, zero, 24
                  nop
                  srai         a0, a0, 0
                  xori         ra, a7, -366
                  divu         s8, t4, tp
                  xori         s0, s0, 1500
                  remu         s1, s4, sp
                  srl          zero, tp, s11
                  lui          t1, 733853
                  mul          t4, t1, s9
                  xor          t5, s2, a2
                  andi         a0, t5, -804
                  add          a7, ra, s11
                  div          s2, s6, sp
                  sra          s9, s10, s5
                  srai         t4, a1, 22
                  xori         zero, t1, -1671
                  srl          s5, t0, t0
                  mulhsu       a4, tp, t3
                  ori          s3, s11, 151
                  xori         a2, zero, 889
                  ori          s10, a6, -1212
                  sra          a5, s11, a4
                  mulhsu       a1, tp, s7
                  rem          gp, a5, tp
                  sub          t3, ra, t3
                  sltiu        t6, a5, -977
                  slt          t2, ra, a6
                  xori         s2, gp, -105
                  sra          a7, zero, t4
                  sra          a2, ra, a5
                  rem          a6, t3, s8
                  div          a5, t1, a4
                  div          a7, s3, s5
                  or           s1, a3, t1
                  remu         s5, gp, s11
                  lui          ra, 1023465
                  div          s7, tp, t6
                  mulhsu       a4, t1, s2
                  mulhsu       s0, t3, ra
                  or           s10, s11, a5
                  addi         gp, t6, -411
                  andi         s8, a2, 611
                  remu         a5, a3, zero
                  ori          t1, t1, -1798
                  ori          s9, t5, 106
                  slli         a6, a0, 7
                  addi         t1, s7, -1807
                  ori          s1, a5, 921
                  slti         tp, a1, 1875
                  sltiu        ra, a0, 540
                  sub          t3, tp, s7
                  sra          s6, a0, a0
                  sltu         a5, tp, s6
                  sub          tp, s10, s10
                  or           s0, s8, a0
                  sll          a4, s2, a4
                  slt          t3, t0, s0
                  remu         a5, a5, s8
                  sltiu        s0, s7, -1666
                  div          tp, s4, t1
                  and          s10, s4, s4
                  rem          a2, tp, t3
                  sub          s7, t0, t0
                  srl          s6, s9, s3
                  mulhu        a4, s5, t4
                  sra          a0, s7, t0
                  addi         t2, s0, -1291
                  remu         t2, s3, a3
                  div          s5, s2, t6
                  nop
                  auipc        a1, 544269
                  or           s0, s4, a1
                  srai         ra, a6, 10
                  srli         t5, t0, 8
                  sll          s6, a1, sp
                  divu         s8, s11, a3
                  nop
                  auipc        t4, 660816
                  nop
                  divu         t3, ra, a4
                  sltiu        s1, s5, 1698
                  andi         s9, a1, -1843
                  sltu         tp, zero, tp
                  mulh         t2, s1, t4
                  mulhsu       gp, a7, t4
                  rem          a0, sp, a0
                  sll          s1, a4, s3
                  xor          s3, a1, a1
                  remu         ra, s4, a4
                  slt          s5, s1, s7
                  divu         a4, t4, a7
                  rem          a7, tp, s11
                  div          s1, s3, s3
                  mulh         t2, s6, t1
                  sltiu        s9, sp, -1754
                  auipc        s0, 442071
                  xor          s1, s8, s8
                  slt          ra, t2, s2
                  div          s10, a7, s9
                  sra          s1, s4, s3
                  sltiu        a1, s7, -219
                  rem          sp, tp, s8
                  sltiu        ra, s8, -804
                  mulh         a0, tp, t3
                  or           s6, a3, ra
                  srli         t6, s11, 0
                  sltu         a1, s8, gp
                  nop
                  and          a4, a6, a0
                  divu         s7, s10, a2
                  slti         s7, s11, 301
                  sltiu        s6, t0, -1381
                  slli         gp, a0, 4
                  rem          t3, s10, a0
                  mulhsu       a0, s11, s6
                  and          t6, s7, t5
                  and          sp, t5, s9
                  or           zero, a5, s0
                  sltu         t1, a2, a7
                  mulh         a2, s1, t6
                  sltu         s5, s3, tp
                  add          s2, a6, a7
                  srai         tp, a7, 29
                  rem          s10, t1, t0
                  auipc        ra, 655495
                  sll          s2, a5, a0
                  auipc        s5, 774557
                  mul          t3, a4, t1
                  or           s5, t5, s0
                  addi         a4, a5, 136
                  slti         a4, gp, -579
                  xori         s1, t5, -1334
                  sll          a2, a1, s11
                  sltu         s3, s7, ra
                  or           s8, s11, s10
                  remu         gp, t0, s7
                  sltiu        s9, a0, 21
                  slli         a4, a2, 29
                  srl          t3, tp, t0
                  remu         s5, t1, s8
                  srl          a7, t2, a1
                  slti         s1, s5, 332
                  div          s0, s11, gp
                  ori          t4, s5, -648
                  andi         t4, t1, 1884
                  divu         a4, t3, sp
                  add          a1, t2, zero
                  sll          a2, t2, sp
                  andi         s7, t2, -1598
                  nop
                  and          s6, a7, gp
                  ori          s7, a5, -953
                  or           s5, a4, zero
                  auipc        t2, 159448
                  divu         a5, t5, a3
                  sub          t3, t2, a6
                  mulhu        s8, gp, t1
                  sub          t2, a0, sp
                  mulhu        gp, t0, a1
                  mulhsu       t6, a5, s11
                  slti         s6, ra, 531
                  divu         gp, s11, t3
                  auipc        s9, 920304
                  mul          sp, a1, sp
                  ori          s3, s4, 2035
                  srli         a2, t1, 11
                  sltiu        s11, s2, -1921
                  sll          sp, t2, a5
                  add          tp, s9, t5
                  srai         s6, a7, 2
                  div          a2, a4, s7
                  or           a7, a2, a3
                  slt          sp, a5, t5
                  srli         sp, a6, 24
                  mulhsu       tp, a3, s3
                  sll          s9, a1, t5
                  xori         a1, t0, 2035
                  slli         ra, t5, 18
                  mulhu        a5, s9, t5
                  div          s11, t2, s9
                  sra          s2, a5, s10
                  auipc        s0, 772708
                  sltiu        tp, s6, -212
                  or           t1, s2, a5
                  mulhu        a4, s8, s4
                  slli         s5, s0, 14
                  add          a5, s6, gp
                  mulh         t5, s1, tp
                  xori         a6, s1, -545
                  or           s10, s11, ra
                  sra          s9, a1, t6
                  mulh         s8, s4, t6
                  auipc        t6, 906767
                  xori         t4, t2, -1169
                  srl          a7, zero, t4
                  sll          s10, a7, a3
                  mulh         s5, gp, a7
                  xor          s10, s1, a7
                  sra          tp, s0, s6
                  auipc        t2, 886638
                  auipc        t3, 422364
                  sra          s5, s10, t3
                  sll          s0, a3, sp
                  nop
                  remu         s5, a5, t1
                  sll          s8, s9, s5
                  srli         s8, a7, 31
                  div          s5, sp, s2
                  auipc        a7, 276178
                  xori         a7, t3, 956
                  remu         t1, t1, a6
                  slt          zero, a5, s4
                  sra          s8, s3, t0
                  srl          gp, t3, a3
                  lui          s2, 670690
                  and          t2, a3, t3
                  and          s6, tp, s6
                  xor          s9, s9, sp
                  mulhu        a2, s10, sp
                  remu         s3, s9, a6
                  remu         s0, ra, s4
                  sub          s6, t5, s11
                  slli         s11, t4, 14
                  rem          s3, a6, a1
                  srai         t3, t6, 31
                  or           t3, s8, gp
                  ori          a1, gp, -1469
                  sll          s1, a2, a2
                  addi         tp, a7, 1680
                  slt          s9, a1, s2
                  lui          a1, 520057
                  sra          s9, a4, t4
                  mulh         a6, a1, t4
                  lui          s5, 114703
                  slt          s5, s1, s0
                  xor          s2, t2, a4
                  auipc        zero, 259616
                  auipc        s9, 772446
                  sltiu        t4, a7, -1175
                  remu         s2, s6, t2
                  slti         a5, tp, -854
                  ori          t2, t1, -1452
                  xor          t3, s10, t0
                  div          s7, s1, s4
                  srli         s9, a3, 9
                  auipc        gp, 77878
                  div          a2, a4, tp
                  div          s0, a3, s6
                  slt          a4, t0, a1
                  div          s9, a5, s7
                  mulh         s6, a6, t4
                  xori         s5, s3, -124
                  srli         s0, t3, 9
                  sltu         sp, t2, gp
                  sll          sp, a7, s5
                  mulhsu       s8, zero, t0
                  mulhu        a6, tp, a4
                  mulhsu       a0, s5, t6
                  div          a1, s0, ra
                  srai         s9, s8, 24
                  addi         a5, s8, 755
                  or           s11, t6, s3
                  mulhsu       s6, s7, s2
                  and          s8, s8, s4
                  srai         gp, t1, 0
                  and          a0, sp, s6
                  srai         t6, a0, 3
                  mul          a5, sp, tp
                  mulhsu       s1, tp, sp
                  xori         s0, a1, -37
                  srai         a5, s9, 21
                  add          s6, a5, t2
                  or           sp, s7, t3
                  rem          t3, a1, s5
                  div          s5, a5, t5
                  srai         tp, zero, 13
                  lui          a4, 424489
                  mul          s5, s6, s2
                  div          a2, a4, t3
                  mul          s7, s9, s2
                  mulhsu       t2, a7, a6
                  auipc        a0, 999306
                  mulhu        t5, t3, s3
                  srl          t2, a1, a2
                  srl          s1, s2, sp
                  ori          s7, t6, 1941
                  and          s2, sp, t3
                  or           tp, s1, s11
                  mulhu        s5, ra, s6
                  rem          s10, t3, s1
                  or           s5, s5, a4
                  add          a1, tp, tp
                  ori          t4, s9, 2032
                  auipc        a5, 879639
                  auipc        a0, 819339
                  and          t2, t0, a4
                  xori         t1, t1, -1463
                  rem          a7, s1, sp
                  remu         s6, a3, a3
                  andi         ra, gp, -611
                  ori          s11, t3, 1493
                  or           s6, sp, s2
                  xor          sp, a5, t5
                  remu         tp, s10, s5
                  sub          s6, t6, s5
                  srl          zero, t2, t6
                  lui          a2, 74898
                  xor          t2, a4, t0
                  addi         zero, zero, -313
                  sll          t1, tp, a1
                  divu         s7, t6, s8
                  ori          ra, s7, -317
                  nop
                  divu         a5, s6, t1
                  srai         zero, s4, 16
                  ori          a2, sp, 1470
                  sltu         a2, s8, s11
                  ori          a1, s3, -1438
                  slti         t1, s1, 1497
                  divu         s7, s11, s6
                  srai         t5, s0, 22
                  mulh         t4, s2, t1
                  auipc        a0, 852430
                  mulhu        s8, sp, s11
                  srli         t1, a3, 9
                  or           a2, a2, gp
                  divu         a5, t1, a2
                  mulhsu       t1, s9, a6
                  auipc        s3, 379997
                  sltu         s3, a4, a0
                  xor          t2, t2, a4
                  sll          s1, s3, s10
                  sltu         a1, tp, s2
                  srl          a6, t1, s1
                  divu         ra, s1, sp
                  slli         a6, s5, 28
                  divu         s6, t6, a6
                  div          s0, t6, t0
                  mulh         t5, a5, ra
                  sub          s9, t2, s3
                  slli         t1, s2, 0
                  mulh         tp, s6, s6
                  slti         t2, s0, 814
                  sub          s2, a7, s9
                  srl          a2, sp, t2
                  srl          s10, a7, a7
                  divu         sp, ra, s0
                  srai         s2, s7, 12
                  sll          t6, s10, t2
                  add          gp, tp, s2
                  srl          zero, a0, s11
                  slli         sp, a2, 21
                  sltu         sp, s0, a0
                  remu         s2, ra, s3
                  srai         sp, s9, 16
                  and          t1, a4, a2
                  sltiu        zero, s4, 1503
                  remu         s9, s9, a2
                  add          s1, a2, gp
                  sltiu        sp, s4, 1734
                  srl          gp, t4, gp
                  lui          sp, 357319
                  andi         s6, t1, -1125
                  sltiu        s3, gp, -163
                  srli         s8, s3, 28
                  sra          s9, t3, a0
                  sub          t4, a5, s4
                  slt          a0, s7, gp
                  rem          a1, s9, ra
                  nop
                  divu         ra, a2, s2
                  slt          a2, tp, a3
                  mul          a0, zero, a3
                  slli         t1, a6, 4
                  mul          a0, t6, t0
                  srai         a1, s3, 14
                  rem          t5, tp, a5
                  mul          tp, s8, a7
                  div          s3, sp, gp
                  or           s3, s8, t2
                  slti         t5, s9, -1770
                  and          s2, a3, sp
                  slt          sp, s10, t1
                  mulhu        t3, a2, sp
                  srai         s2, s9, 2
                  sra          a5, t2, t0
                  sra          tp, a0, a1
                  sltu         a0, s1, s8
                  srai         s3, a1, 25
                  mul          a0, zero, s9
                  srai         ra, s1, 2
                  slti         tp, s5, 376
                  auipc        a4, 150778
                  mul          s0, s10, a7
                  or           s9, t0, tp
                  div          tp, a7, t0
                  auipc        sp, 156173
                  ori          t5, s7, -352
                  addi         s9, s9, -2024
                  sub          t2, a3, t5
                  mul          zero, s3, s3
                  div          s6, s4, zero
                  mulh         s5, a3, s7
                  add          s1, t1, s4
                  div          gp, t1, tp
                  sra          ra, s8, tp
                  sltu         s5, s10, a0
                  add          a7, s2, s6
                  sll          t2, a4, s5
                  xori         t3, t5, 1673
                  mulhsu       a2, s6, a4
                  mulhu        t1, gp, s1
                  addi         s2, a5, -1304
                  slti         a1, t4, -1333
                  or           a2, s9, a2
                  and          s5, s9, sp
                  srli         t4, a7, 27
                  nop
                  slti         t6, s9, 576
                  srl          s3, s9, t4
                  mulhsu       t2, a6, s9
                  mulhu        t2, ra, gp
                  sub          s9, t2, s2
                  slli         ra, s10, 22
                  andi         a6, a7, -63
                  rem          a5, a3, t6
                  lui          t2, 95834
                  sub          a0, a6, sp
                  xori         gp, s4, 1413
                  mulhsu       s6, s1, s1
                  xor          ra, s3, t4
                  sra          s8, a5, s9
                  sltiu        s1, sp, -171
                  add          s10, s6, t3
                  mul          a2, a1, s10
                  mulhu        a0, zero, s0
                  ori          s9, gp, -1755
                  xor          s11, a0, a4
                  lui          gp, 866990
                  auipc        gp, 321251
                  addi         s8, t4, -796
                  sll          ra, s7, s10
                  slt          sp, s7, ra
                  or           s11, t5, s7
                  sltiu        a0, tp, 1420
                  sltu         zero, a7, t1
                  rem          s0, s9, a2
                  slti         t2, a0, 33
                  div          s1, s10, s4
                  sltu         t6, s2, s4
                  srli         ra, t2, 6
                  slt          t1, a0, a2
                  addi         a7, zero, -294
                  and          t6, s6, t3
                  add          ra, t3, s3
                  divu         s11, s9, t1
                  nop
                  xori         a4, s4, -492
                  nop
                  remu         a2, zero, a3
                  srai         a6, s8, 10
                  mul          gp, a2, a3
                  rem          t3, t3, s5
                  andi         s1, s1, 1452
                  sltu         s0, s3, s1
                  add          a0, s4, zero
                  mul          a2, s5, s6
                  addi         a5, s5, 413
                  mulh         s6, t0, s0
                  nop
                  mulh         a0, t6, s3
                  xor          t5, a6, t6
                  sub          ra, tp, s8
                  xor          s10, s2, zero
                  rem          s0, s2, sp
                  addi         a0, s4, 97
                  srl          a2, a4, a3
                  and          s5, a7, a0
                  mulh         s8, s3, s3
                  andi         t3, sp, -726
                  srli         s6, s8, 15
                  sltu         t4, a4, t6
                  lui          a4, 618438
                  div          s6, a3, s11
                  xor          s3, s10, s3
                  srli         s0, s3, 6
                  srai         t5, s7, 9
                  divu         tp, s11, tp
                  sra          tp, zero, a6
                  addi         gp, s10, -1810
                  xori         s8, t4, -474
                  andi         a2, t3, 1588
                  slti         s5, s4, -154
                  div          a5, s3, s1
                  or           s10, t2, s2
                  rem          a6, a1, a6
                  add          s0, s4, a0
                  div          t1, gp, s7
                  sltiu        t4, s2, -1620
                  ori          s1, tp, 1091
                  add          s5, s2, a4
                  slli         s3, a5, 30
                  sltiu        s7, s1, 1289
                  div          ra, sp, s6
                  andi         tp, t2, -34
                  divu         tp, a6, s9
                  sll          s6, s7, t6
                  mulh         t6, s9, s5
                  sltu         s9, t3, a3
                  nop
                  and          a2, tp, s4
                  slti         a2, a6, 698
                  srai         t1, sp, 27
                  slti         s11, s3, -2041
                  add          ra, a0, a5
                  div          s8, s2, a3
                  mulhsu       a7, t5, ra
                  lui          s9, 398838
                  mulh         a5, a2, a4
                  or           tp, s9, s2
                  xori         a2, s5, -27
                  slli         zero, sp, 24
                  div          s2, gp, s7
                  slt          a2, ra, tp
                  sll          a1, a1, t6
                  srli         t3, t4, 20
                  xor          a6, ra, s5
                  mulhu        s0, a6, t6
                  rem          s6, gp, ra
                  nop
                  sltu         a1, a2, s9
                  nop
                  sra          s1, a7, a1
                  mulhsu       s10, s0, a0
                  divu         s8, s0, s2
                  slt          t6, s11, t2
                  div          a7, s8, gp
                  lui          a2, 366947
                  lui          t5, 10098
                  slti         s0, t5, 2041
                  srli         tp, s7, 14
                  mulh         s3, a2, a6
                  mulhsu       s5, t0, s3
                  slti         s1, s0, -154
                  srli         s5, t6, 22
                  mul          s0, s9, t5
                  sltiu        t2, t0, 1093
                  srli         t2, sp, 27
                  slt          s5, s9, a7
                  srl          a6, t5, tp
                  srli         a5, a7, 27
                  ori          a1, tp, -1848
                  and          a0, sp, s3
                  add          t1, t0, a6
                  div          s10, s3, s10
                  divu         s10, t5, s9
                  divu         s11, s10, t2
                  srai         a1, a7, 0
                  sll          s0, s9, s4
                  mulh         s6, a6, s6
                  mulhu        ra, a7, s10
                  mulhsu       t2, a5, a0
                  sll          t4, a5, s7
                  mulh         sp, s5, t1
                  sltu         a6, zero, a2
                  srai         t6, ra, 3
                  sra          tp, ra, s5
                  srli         t4, t2, 29
                  sll          a5, gp, gp
                  sub          s2, s9, s8
                  xori         s1, zero, 2000
                  sll          zero, t6, a5
                  ori          a2, t1, 134
                  srl          t5, zero, a0
                  mulh         sp, a7, a0
                  rem          s10, a0, a7
                  lui          a6, 626329
                  ori          a2, a2, -1048
                  sll          a0, s5, a4
                  remu         gp, s9, s0
                  srai         ra, t0, 6
                  auipc        a2, 222841
                  add          s0, a6, s10
                  divu         a7, s3, t0
                  sltu         a4, t4, s4
                  mulhsu       s11, zero, t5
                  srl          tp, t5, s0
                  sltiu        a4, a1, -662
                  xori         t2, tp, -1287
                  srli         sp, t3, 8
                  andi         s7, s8, -700
                  divu         a2, a4, s7
                  mulhsu       t6, t6, s4
                  sltu         a1, s4, a2
                  mulhu        s10, s5, a1
                  mulh         a2, s10, s8
                  sltiu        zero, t1, -1082
                  xor          a7, s1, a4
                  sub          a5, s8, a2
                  ori          s2, t6, -328
                  auipc        s8, 981060
                  mul          s9, tp, s11
                  addi         s9, a5, 550
                  remu         a5, t4, zero
                  sltu         s5, a5, ra
                  rem          t2, a3, t6
                  srli         tp, sp, 30
                  srl          gp, t1, s3
                  and          a0, s9, a2
                  add          a0, a6, a7
                  divu         t6, s0, t0
                  nop
                  and          t5, a4, s8
                  mulhsu       t2, t2, s11
                  mulh         s10, t6, ra
                  add          t6, a1, a1
                  slti         s10, tp, -1385
                  remu         s8, s10, s6
                  slt          s5, sp, s11
                  srl          s6, a1, s6
                  mulhsu       s11, s4, t3
                  mulh         gp, s3, s8
                  slt          a4, s0, s1
                  mulh         s1, s0, t0
                  slli         s5, s6, 14
                  lui          t3, 878634
                  xor          a6, t2, s2
                  mulh         t4, t0, t3
                  auipc        a1, 235884
                  srai         zero, s1, 12
                  mulh         s0, s10, a2
                  mulhu        a5, zero, t2
                  lui          a6, 792654
                  xor          s10, a5, s1
                  slt          t1, a3, t2
                  slli         s6, s2, 21
                  mulhu        s7, a4, t4
                  srl          s1, s6, s2
                  slt          a7, s11, t5
                  or           t4, s9, s7
                  sll          s2, s2, s11
                  srli         s6, a5, 9
                  mulh         s0, s6, s8
                  slti         t3, ra, 1994
                  mul          s2, a0, s5
                  mulhu        s1, zero, tp
                  mulhu        s5, s1, s6
                  rem          s8, zero, a2
                  xor          s1, t3, a2
                  and          s1, s6, t4
                  remu         s9, t3, s5
                  div          s3, tp, t4
                  or           t1, zero, t1
                  xor          s9, a7, tp
                  lui          tp, 1028137
                  xori         s0, tp, 1665
                  mulhsu       t4, tp, s3
                  srai         s10, s6, 4
                  srl          tp, s7, a5
                  srli         sp, s2, 24
                  div          a0, s7, ra
                  lui          s3, 5784
                  remu         tp, s1, a3
                  or           a5, a2, s4
                  remu         s7, a7, sp
                  rem          s7, zero, a6
                  div          s5, s5, t3
                  remu         a7, t5, a3
                  ori          zero, t2, 1766
                  srli         a1, s9, 15
                  srli         s1, a0, 19
                  sra          s10, a7, a3
                  srli         t2, s2, 22
                  sll          s5, a5, t6
                  mulhsu       a4, a4, s8
                  srl          tp, tp, t0
                  srai         tp, t4, 20
                  mulhu        s0, s6, t5
                  addi         a5, a1, -1136
                  sltu         s10, a1, s3
                  auipc        s11, 287037
                  sltiu        s8, tp, -70
                  and          t5, t4, tp
                  nop
                  srai         s10, tp, 24
                  andi         s0, s11, 542
                  mul          s2, s3, a4
                  lui          t2, 498586
                  srl          s6, a2, t4
                  remu         a6, s6, s11
                  nop
                  lui          zero, 739027
                  mulhsu       s1, a4, sp
                  slti         sp, s6, 1580
                  slti         s8, t0, -1758
                  divu         a1, s2, t0
                  remu         a6, ra, a1
                  sltu         a7, a0, t5
                  slli         s5, zero, 8
                  srli         s5, t0, 5
                  div          s0, s11, s4
                  slti         a0, s2, -1863
                  divu         s8, s1, s0
                  srai         gp, a3, 6
                  xori         t6, t2, 656
                  srl          a0, s0, a0
                  slt          s6, t6, t5
                  ori          t4, s11, -1268
                  mul          t5, t5, t3
                  add          a6, tp, a4
                  mul          a2, s0, t3
                  mulhsu       s3, a6, s8
                  nop
                  rem          a7, t4, a1
                  add          a4, t0, a4
                  or           a0, ra, a3
                  mul          sp, s1, s6
                  srl          a5, s10, s7
                  remu         t3, zero, gp
                  auipc        a4, 355537
                  lui          s10, 633639
                  mulh         s11, s3, a6
                  xor          a5, s7, s3
                  mulhsu       t3, sp, s5
                  and          s1, s2, gp
                  mulhu        s9, t4, s0
                  slt          ra, s10, s8
                  remu         s0, zero, t2
                  ori          a2, t0, -298
                  andi         s7, s5, -434
                  mul          gp, ra, a0
                  remu         zero, t2, s9
                  andi         a2, ra, 301
                  lui          a0, 458959
                  srai         t3, s2, 4
                  mulh         t2, s4, t5
                  slt          s2, t3, s8
                  srli         zero, t0, 28
                  xori         s9, a1, -1588
                  div          s9, s6, s3
                  srli         t5, zero, 31
                  sub          s7, t4, s10
                  addi         t2, s3, -1076
                  srai         s11, s10, 20
                  divu         t6, s10, s0
                  div          s7, a4, s4
                  and          s1, a3, a5
                  srli         s9, a7, 10
                  div          zero, a5, gp
                  sltiu        t4, a7, -1380
                  sub          t5, t1, a4
                  sra          t6, s2, t4
                  and          s8, a6, a1
                  nop
                  sra          a6, s5, s8
                  slti         t4, a1, -184
                  remu         s9, a1, s6
                  srai         s0, s11, 8
                  mul          sp, s4, t5
                  div          t3, a4, t2
                  xor          zero, t5, s8
                  andi         a4, t6, 495
                  andi         s11, t2, -179
                  slti         t4, t1, 1932
                  xori         s11, zero, -2022
                  andi         a7, t2, 113
                  nop
                  rem          zero, s2, s7
                  xori         t6, s9, 1168
                  sll          s3, s5, a6
                  srai         tp, s3, 22
                  lui          ra, 496780
                  or           t3, t0, s3
                  xori         s0, tp, -10
                  sll          s1, s4, s4
                  nop
                  or           t3, t2, t2
                  sll          s11, a2, sp
                  auipc        s7, 839556
                  auipc        t1, 420398
                  slli         t5, a4, 21
                  slli         a0, s2, 30
                  auipc        s7, 548970
                  divu         a6, t5, s9
                  srai         tp, s0, 3
                  rem          s11, gp, s10
                  slli         a7, t1, 28
                  slti         s6, a5, 412
                  srl          tp, s4, t3
                  sra          a0, a3, s6
                  rem          sp, a6, gp
                  mulhsu       gp, s6, a3
                  sra          a2, t5, a6
                  divu         tp, s4, ra
                  srl          t2, t5, s9
                  lui          a0, 695719
                  mul          sp, t0, s2
                  addi         s6, s11, 328
                  divu         s10, t6, t2
                  srai         a2, s8, 28
                  remu         s3, a5, t0
                  slli         s7, t5, 9
                  slli         a4, a3, 28
                  remu         s2, a6, a7
                  or           t4, a6, s2
                  slt          s8, a0, s5
                  slt          a2, s11, t6
                  xor          sp, tp, a7
                  add          s6, s6, s5
                  xori         tp, s2, -1895
                  mul          tp, t1, t0
                  rem          zero, t1, s11
                  slti         a7, s11, -1241
                  divu         s9, s7, s2
                  sub          zero, t1, a2
                  sub          s3, a4, t0
                  sltiu        t4, a4, -1251
                  xor          a1, s8, s1
                  sra          s7, a2, a7
                  mulhsu       a1, s4, gp
                  remu         s7, s6, s3
                  srli         t1, t1, 25
                  xori         t6, a2, -651
                  mulh         t4, s6, s0
                  ori          a2, zero, 685
                  andi         a5, a3, -1284
                  andi         s8, s11, 63
                  sltu         t4, a5, sp
                  rem          a2, s1, t4
                  andi         sp, s9, -158
                  sll          a6, s4, s9
                  div          a4, sp, t5
                  mulhu        s0, a7, a1
                  xor          t3, t1, s10
                  slli         a6, s0, 23
                  add          a5, a3, t1
                  sra          s9, t6, a7
                  mulh         s9, s8, a3
                  mulhu        s8, a7, a0
                  nop
                  slti         a7, t5, -416
                  sub          s2, t0, s6
                  lui          s9, 853019
                  addi         s8, s4, 1319
                  sltu         a0, ra, s5
                  or           t2, s4, s10
                  slt          ra, ra, t2
                  divu         s1, s2, a2
                  lui          s7, 318854
                  xor          a4, t0, a4
                  lui          s5, 286009
                  srai         a5, s3, 29
                  xori         s10, t5, 1096
                  mulh         gp, s3, t2
                  remu         tp, a0, a1
                  sra          s6, t1, s2
                  mulhu        t5, s4, a1
                  div          a1, s6, s1
                  ori          s11, a1, -1978
                  remu         s9, tp, s7
                  ori          ra, tp, 689
                  lui          ra, 245722
                  xori         s9, a2, 1352
                  sltu         zero, s3, a7
                  slt          s11, s0, a6
                  ori          a1, s8, -1452
                  srai         a0, a1, 16
                  sra          t6, s10, a7
                  addi         zero, s5, 72
                  sltu         a5, t1, s11
                  mulhsu       a6, t2, a5
                  slt          s2, s3, sp
                  rem          t1, s8, t3
                  sra          a0, a3, s4
                  remu         a7, a3, t4
                  sub          s5, a3, a5
                  xor          s5, s0, a6
                  sll          t4, t0, s7
                  xori         t5, s7, -1164
                  rem          gp, s11, a0
                  and          s1, a1, t4
                  slt          ra, a4, a0
                  sll          s3, a0, gp
                  remu         a2, a2, s6
                  sltu         a5, t5, s4
                  and          tp, s7, s0
                  sra          t1, a5, tp
                  sll          a6, t0, gp
                  addi         sp, a6, -1882
                  auipc        s1, 692578
                  add          t6, s1, s4
                  mulhu        s6, s6, a3
                  ori          s0, a0, -867
                  xor          tp, gp, gp
                  add          ra, a4, zero
                  rem          a7, t4, t3
                  mul          s9, a1, gp
                  remu         a6, t5, t4
                  ori          t1, s1, 338
                  xori         a5, t2, 1636
                  xori         a2, s11, -463
                  srai         s8, zero, 7
                  sra          s9, s7, t5
                  srl          s6, s1, gp
                  sll          t6, s0, s9
                  srai         t1, t4, 4
                  ori          s11, a5, -45
                  sltu         s3, ra, t0
                  mul          s5, s5, s3
                  slti         a5, ra, -1387
                  mulhsu       a0, a5, t1
                  slli         tp, s6, 23
                  mulhu        a6, t5, sp
                  sltu         s9, a1, gp
                  mulhu        s6, tp, s9
                  rem          sp, s3, ra
                  nop
                  addi         s9, a3, -776
                  and          a5, a4, a4
                  mulhsu       s2, s5, sp
                  sltu         s7, s9, a7
                  slti         a0, s8, 1215
                  and          a6, t0, t0
                  slli         tp, tp, 0
                  nop
                  ori          gp, t5, -848
                  addi         t5, t3, -1044
                  and          s2, zero, s5
                  nop
                  divu         s9, s8, a7
                  sll          gp, s8, a0
                  ori          a7, s5, -1428
                  srai         sp, sp, 30
                  and          s6, s6, s8
                  slti         gp, t5, 1052
                  auipc        s5, 204148
                  sub          s0, tp, a1
                  xor          s3, t4, s5
                  mulhsu       s5, s10, a5
                  auipc        a7, 107402
                  ori          tp, gp, 271
                  remu         s8, a5, a7
                  mulhsu       s11, t3, s6
                  divu         s11, sp, s0
                  slti         tp, a7, 556
                  or           tp, a2, t3
                  mulhu        s0, s5, a1
                  sltiu        a6, s2, -873
                  slt          s7, t2, a4
                  nop
                  slli         s11, a5, 28
                  srl          s3, gp, s1
                  sll          t2, zero, a1
                  nop
                  rem          a2, s8, s3
                  mul          a5, a0, a3
                  sll          a4, a3, gp
                  nop
                  sra          t6, s8, zero
                  sub          s6, zero, s2
                  addi         s9, s0, -642
                  srli         a0, t5, 2
                  slti         a1, sp, 616
                  xori         s2, gp, -1066
                  sub          s8, s2, s7
                  slt          a0, a7, t1
                  mulhu        a5, s10, t1
                  auipc        s10, 683736
                  xor          s10, t3, a0
                  slti         s6, s11, 1678
                  srli         t6, s6, 6
                  lui          a2, 74418
                  srl          gp, gp, a0
                  srl          gp, t6, t1
                  addi         a6, a0, -1985
                  sub          s10, t3, t2
                  div          a1, s11, t4
                  sltiu        s10, t1, 745
                  or           a1, s2, t0
                  slti         a1, zero, 561
                  sltiu        s1, s10, -1646
                  mul          sp, s10, s5
                  xor          a7, t1, s3
                  xor          a0, s5, a4
                  div          s1, t3, t5
                  mulhu        t4, t2, a2
                  sltu         a0, s9, s5
                  srai         s8, s2, 16
                  slli         s1, t5, 3
                  auipc        t2, 963111
                  sltu         a7, s2, a4
                  slli         s9, s6, 0
                  sub          t1, s5, tp
                  xor          s3, s9, gp
                  lui          s3, 965344
                  mulhsu       t3, t3, s3
                  div          a0, s4, t2
                  ori          gp, ra, 80
                  slti         a7, t2, -709
                  sltu         s1, tp, gp
                  auipc        t1, 916710
                  or           t2, a5, a0
                  div          t3, gp, zero
                  sltu         t5, t5, a0
                  and          s8, s6, a2
                  sll          a0, ra, t5
                  divu         a4, s6, tp
                  divu         t2, a6, a5
                  srli         a7, s1, 10
                  sltu         a0, a6, a5
                  rem          s7, s11, s1
                  mul          t6, s11, a2
                  remu         s11, a1, gp
                  auipc        s5, 256715
                  sll          t2, a3, a7
                  or           s10, s8, a2
                  div          a5, s9, a7
                  slt          zero, t6, s3
                  mul          gp, t2, s10
                  add          s5, gp, s4
                  andi         s10, a3, 912
                  slti         a0, a0, -837
                  or           s9, a1, s4
                  srli         t6, a5, 29
                  and          t6, a0, gp
                  slli         s9, a5, 19
                  slti         t5, a0, -484
                  mulh         s3, gp, t5
                  sltiu        a0, s11, 785
                  srai         a6, a7, 23
                  divu         s1, tp, s10
                  sltiu        a0, ra, -1947
                  sltu         t6, t3, s7
                  sltu         t6, s6, a4
                  auipc        t2, 1034501
                  rem          s1, t4, s7
                  ori          t4, s7, 43
                  mulh         t3, a6, t2
                  div          a2, a3, s1
                  or           zero, a5, s10
                  xor          a6, a1, a6
                  sll          s5, s7, t6
                  ori          s8, t3, 901
                  sltiu        s5, t3, -1121
                  ori          s1, a1, 897
                  sub          t6, s1, s2
                  andi         s7, s7, 725
                  sub          gp, s10, s1
                  sltiu        a2, a7, 715
                  sra          t6, s6, t1
                  sub          t2, zero, a6
                  mulh         s8, tp, s3
                  or           zero, a2, s5
                  sltu         tp, a1, t3
                  lui          s11, 721588
                  ori          t2, a1, 587
                  slti         t1, a2, 1164
                  addi         a0, a2, -810
                  lui          t5, 427493
                  mulhsu       tp, t5, a3
                  and          tp, a4, a7
                  mulhu        a1, tp, t1
                  sltu         gp, s4, a4
                  sub          a0, s2, ra
                  xori         a1, a4, -670
                  mulhsu       s1, ra, t5
                  add          a1, a3, s9
                  sll          s11, a2, a3
                  lui          t3, 469871
                  sll          s6, gp, a5
                  mulhu        s10, t3, a3
                  andi         t2, s2, 1955
                  sll          s1, t1, s3
                  xor          gp, sp, s2
                  mul          t1, a2, s9
                  sra          t6, zero, a0
                  and          a5, s2, s7
                  xor          s6, a0, t0
                  sra          s3, s5, s7
                  lui          a2, 855618
                  ori          tp, t4, -299
                  divu         a7, s7, t6
                  sub          s7, zero, s10
                  xori         s7, t6, 834
                  auipc        a6, 182616
                  sub          a0, a1, s7
                  slt          sp, s1, t1
                  ori          s1, tp, 73
                  div          a2, s8, s11
                  mul          t1, a5, s11
                  sltu         s6, zero, a7
                  sltiu        a5, a2, -117
                  slti         tp, s9, 1173
                  lui          t4, 1003686
                  auipc        s11, 865298
                  sra          t3, a0, a3
                  mulh         s5, s11, t6
                  mul          s7, sp, a4
                  srai         a5, a2, 8
                  div          s5, zero, a0
                  mulhu        gp, a1, a0
                  auipc        s6, 858609
                  auipc        tp, 577341
                  sub          ra, s10, s3
                  add          a4, tp, a4
                  or           a2, sp, s10
                  rem          s3, s0, s3
                  div          t3, t1, t1
                  slt          t3, s4, s3
                  addi         s9, a6, -1710
                  andi         a0, a3, -645
                  srli         a1, tp, 23
                  div          s9, t0, s9
                  nop
                  slt          a1, t4, zero
                  sub          s0, sp, t5
                  and          a4, t0, a3
                  slti         s11, s5, -572
                  sll          s5, s6, sp
                  and          s9, s0, zero
                  or           s5, s4, s9
                  ori          t1, s10, -621
                  remu         tp, s5, s8
                  div          s3, tp, a5
                  or           a2, a5, a2
                  sltiu        a6, t2, 184
                  nop
                  sra          gp, t0, a1
                  and          t4, s0, s2
                  xori         a6, s4, -199
                  slti         t4, s10, 1236
                  slti         s8, t2, 1769
                  mulhsu       tp, s5, t3
                  srli         s6, gp, 6
                  xori         s1, a5, -1823
                  slti         t6, s8, 695
                  divu         s1, a0, s7
                  nop
                  xori         t1, a6, 1702
                  and          s8, s6, t4
                  sll          s0, t3, a2
                  sll          a2, gp, sp
                  rem          s3, t2, t0
                  sra          a6, zero, s4
                  mul          gp, a5, s11
                  rem          t3, a2, a6
                  xor          s10, s9, s6
                  xori         ra, s4, -109
                  slli         s7, sp, 0
                  rem          t5, a2, s6
                  srai         t2, s5, 12
                  lui          s0, 718003
                  divu         ra, sp, gp
                  xor          t4, tp, s9
                  srai         s11, a6, 5
                  xori         s8, a3, 1355
                  mulhsu       sp, t0, t0
                  sltu         ra, t1, t4
                  sra          t5, a3, t0
                  xor          ra, a6, gp
                  andi         s6, t0, 1893
                  sltu         s2, s5, tp
                  srai         s9, s3, 28
                  sll          zero, a6, s8
                  rem          a5, t6, t4
                  and          a0, s11, s8
                  srai         s2, zero, 6
                  ori          zero, a0, 481
                  srli         a6, gp, 16
                  slli         s1, s6, 9
                  rem          t5, a2, s2
                  nop
                  divu         zero, a7, s9
                  lui          t2, 398536
                  remu         a1, t2, a7
                  rem          s1, s7, a2
                  ori          s3, a1, -480
                  addi         t1, s10, -1332
                  mulhsu       s1, zero, s8
                  sltiu        s8, s8, -173
                  slti         s11, s7, -1479
                  remu         t2, a5, zero
                  div          s3, s6, a7
                  srai         s11, s5, 0
                  xori         a5, a1, -1652
                  divu         s10, sp, s10
                  and          sp, s4, s5
                  srl          s7, s8, s4
                  srli         t4, a5, 6
                  sub          tp, t1, s0
                  sll          gp, s3, a0
                  srl          s10, s11, zero
                  rem          a2, a4, a3
                  slli         s2, t1, 12
                  sra          zero, t3, a0
                  lui          zero, 372404
                  sll          s2, a3, s11
                  srli         a6, s4, 0
                  srai         a1, gp, 29
                  divu         a6, a3, a2
                  ori          s6, ra, -1104
                  remu         zero, a1, a3
                  slti         a7, ra, 1594
                  slt          t4, t4, s1
                  andi         ra, a2, -778
                  srai         a5, a7, 17
                  rem          a2, s5, t6
                  lui          t2, 76945
                  addi         zero, s2, -833
                  srl          a6, t2, t2
                  andi         sp, s2, 212
                  auipc        s0, 442271
                  lui          sp, 953510
                  auipc        ra, 754402
                  mulhsu       s0, a5, t3
                  slli         t2, s4, 8
                  slti         t3, t3, -1718
                  mul          s3, a1, s5
                  slti         t6, t0, 226
                  lui          tp, 463714
                  ori          t6, t3, 826
                  rem          zero, s8, s11
                  remu         a4, t5, s8
                  sra          t4, s10, s10
                  sra          s9, s10, ra
                  lui          s5, 103735
                  divu         t2, s1, gp
                  sra          t1, a7, s0
                  and          s5, s2, t6
                  lui          s8, 994041
                  mulhu        s0, s0, s4
                  sub          a1, s4, s1
                  div          tp, a5, s9
                  mulhsu       t5, t3, s3
                  divu         s10, s11, t1
                  andi         t4, s7, 108
                  auipc        s3, 980332
                  slti         s2, s6, 272
                  sltu         gp, ra, tp
                  mulhu        s1, t2, t0
                  nop
                  and          s6, s11, a5
                  nop
                  sltiu        s3, t1, 1400
                  mulh         s10, a5, a3
                  andi         a5, s6, 1358
                  sra          s8, t1, s1
                  xor          t5, s5, a3
                  and          t6, s2, s1
                  slli         s9, s1, 5
                  and          a5, a6, zero
                  divu         s0, tp, s1
                  slt          a2, a3, s8
                  slt          sp, a2, a4
                  sltiu        s10, t3, 173
                  divu         t6, s11, t1
                  xori         s10, a2, 1103
                  slt          s9, a7, t2
                  and          a6, s0, zero
                  sltiu        s9, a6, 927
                  sub          t1, t6, zero
                  sltu         a5, t5, a3
                  divu         a0, t1, s4
                  lui          s6, 867411
                  mulhsu       t6, sp, a7
                  sra          a7, t1, s0
                  add          s8, a7, s6
                  rem          s7, a4, s3
                  or           s11, s2, sp
                  add          t6, t2, s9
                  srai         s6, a7, 27
                  ori          s3, s6, 1647
                  xori         a5, s6, -1209
                  sltu         s5, t2, t3
                  srl          s9, s4, s3
                  srli         s2, t1, 5
                  ori          s7, t4, 75
                  divu         a1, zero, a6
                  lui          t4, 214067
                  mul          t1, s10, a6
                  srl          t4, sp, t1
                  nop
                  or           a4, s8, tp
                  divu         t2, s7, t4
                  add          a6, t5, t3
                  srl          tp, a1, s3
                  and          s3, a3, ra
                  ori          s1, s1, 192
                  xor          s7, t1, a5
                  nop
                  div          s5, s1, t0
                  sub          s11, a0, s4
                  or           ra, s5, t4
                  srl          t5, t1, a6
                  ori          s0, a1, 450
                  mulhu        s1, t0, s2
                  addi         s6, s8, 362
                  xori         s0, t4, -648
                  sra          a2, s6, t6
                  andi         s0, t3, 1188
                  mul          s6, a4, gp
                  andi         t1, t6, -357
                  slli         a6, a0, 24
                  slti         t4, s0, -716
                  addi         s3, s5, -880
                  and          tp, a0, ra
                  sltiu        s6, t2, 1238
                  slti         tp, a3, 841
                  or           s1, gp, a7
                  sub          s6, s8, s5
                  mul          a6, a2, gp
                  srl          tp, s1, s0
                  sub          s3, s1, s11
                  sltu         s6, t0, tp
                  mulhu        ra, a7, t4
                  and          s9, t5, a2
                  rem          s2, a4, zero
                  remu         sp, s0, t0
                  lui          a4, 137345
                  xori         s6, t6, 1046
                  mulhsu       s5, t6, a6
                  divu         s7, s2, s0
                  add          t3, t5, t3
                  mul          s5, sp, t6
                  sll          a1, s8, s6
                  mulhu        s10, s1, zero
                  andi         sp, s11, -167
                  slti         zero, t2, 923
                  ori          gp, t0, 1837
                  sub          t2, t3, s7
                  sltiu        t4, gp, 373
                  and          s6, s5, s2
                  sll          t4, s0, a1
                  srl          a7, s11, t1
                  xori         a6, s9, -955
                  ori          a0, s4, 1857
                  xori         t1, s3, 1957
                  ori          s10, s5, -688
                  div          a0, s7, s0
                  mulhu        tp, s2, s9
                  sra          a1, a4, t5
                  ori          a7, s9, 1237
                  sltu         s1, s10, a0
                  mulh         s1, a6, s5
                  and          sp, sp, a4
                  mulhu        a2, a1, a5
                  srai         t1, a4, 11
                  xori         a4, t0, -16
                  xor          sp, a5, s1
                  mulh         s6, a6, a4
                  divu         s0, s5, t5
                  sub          t4, gp, a7
                  add          zero, s9, s5
                  mulhu        zero, s4, t2
                  xor          s6, s0, s7
                  slli         tp, a7, 25
                  or           a5, a6, a4
                  srl          s9, s8, s8
                  ori          s3, a4, -1468
                  sra          s9, zero, s1
                  sub          t2, a6, sp
                  slti         t2, t0, -563
                  xor          a5, gp, s5
                  sra          ra, s8, t5
                  auipc        s10, 563814
                  srli         s0, a6, 9
                  xor          t5, tp, a7
                  xori         a2, s2, -2024
                  slti         t4, a4, -1484
                  xori         a4, s1, -171
                  srli         a5, t4, 25
                  sll          tp, t4, gp
                  sltu         s6, tp, s2
                  mulh         a5, s7, t0
                  nop
                  srli         gp, a7, 21
                  slli         s8, t4, 15
                  sll          s1, a1, s8
                  sub          s7, t3, sp
                  andi         t3, gp, -1316
                  slt          a2, t5, a2
                  sll          s6, s6, t4
                  add          a0, s10, a2
                  addi         zero, s1, -912
                  srl          s10, s1, a4
                  slti         s8, a0, 1425
                  ori          a4, s4, 1834
                  slli         s6, s10, 0
                  srl          s3, s10, zero
                  srli         t4, gp, 19
                  slt          sp, sp, s4
                  mulh         s8, ra, a1
                  and          s8, a4, s11
                  add          a5, a0, s1
                  mulhu        a1, a3, t5
                  nop
                  lui          s1, 131761
                  xori         t3, s3, -1937
                  and          a6, s0, s11
                  sltu         gp, t1, a0
                  sra          s8, t0, s3
                  ori          s11, a7, 1657
                  add          t3, t3, gp
                  or           tp, t6, t1
                  srli         t2, s7, 19
                  mulh         s8, t2, a6
                  sub          s3, a0, ra
                  sltiu        a1, s8, 1727
                  srl          a1, a5, ra
                  add          ra, s10, t2
                  rem          a7, zero, t3
                  auipc        t4, 1042606
                  nop
                  sltu         t4, t0, zero
                  mulhu        s5, s10, s11
                  or           t6, t3, t2
                  sub          s5, sp, s7
                  sub          t4, t4, s3
                  and          a1, t6, a1
                  addi         tp, gp, 1084
                  sltu         s10, a7, s9
                  mulh         s2, s0, s3
                  sll          s0, s7, sp
                  srli         a7, sp, 15
                  remu         a7, a1, tp
                  srai         a2, a3, 10
                  mulh         t5, s11, s11
                  remu         s1, s9, tp
                  xori         s2, t3, 1266
                  xor          gp, a5, t2
                  srl          t6, s3, s0
                  rem          s2, tp, a6
                  nop
                  rem          a0, s3, s11
                  mulh         s6, s0, zero
                  ori          sp, s5, -1681
                  xor          a7, s8, s9
                  xori         a4, a0, 1951
                  slt          s11, sp, a2
                  lui          s10, 132126
                  mulh         t2, a2, t1
                  sltiu        s8, t0, -7
                  ori          a2, tp, 1189
                  xor          s10, t2, t5
                  mulhu        s11, s1, s11
                  or           t1, s4, zero
                  srl          t3, s9, a7
                  slli         t6, s10, 27
                  rem          a5, t4, s4
                  mulh         a1, s11, s10
                  sltu         tp, t3, zero
                  remu         a0, a6, s4
                  slti         s7, s7, -1147
                  xori         s10, gp, -594
                  lui          t2, 395987
                  mulhsu       t5, sp, a6
                  sra          ra, s9, s9
                  sltiu        sp, a0, -482
                  div          gp, ra, s2
                  rem          a2, gp, s8
                  mul          s2, s0, a1
                  xor          s0, ra, t1
                  xor          a6, t2, s6
                  sra          s6, t1, sp
                  andi         tp, a2, 88
                  srai         zero, s0, 13
                  div          s3, zero, a5
                  slti         t2, ra, -753
                  nop
                  add          s1, t5, a5
                  div          t3, s4, s11
                  sub          a5, s6, s0
                  slli         s3, s2, 24
                  srl          s3, t2, s2
                  srai         s11, t4, 22
                  divu         t6, s2, s9
                  srli         t2, s11, 25
                  srai         s1, s3, 11
                  slt          ra, s6, a6
                  remu         s3, s4, t2
                  srl          t2, a2, a5
                  mulhsu       zero, a2, s6
                  sltu         sp, a5, ra
                  slli         a2, a1, 0
                  sll          s6, tp, zero
                  srl          tp, gp, s7
                  mulh         tp, t2, s1
                  divu         zero, s0, gp
                  xor          ra, t1, s2
                  slli         s5, s7, 6
                  srl          a1, tp, s7
                  mulh         a1, a4, a4
                  nop
                  xori         s3, s4, 1816
                  rem          a6, s2, a0
                  sll          t3, s2, gp
                  or           ra, s10, t1
                  rem          s5, s6, a7
                  xori         a2, tp, -370
                  mul          t2, a2, tp
                  xori         s6, s8, 1558
                  div          a4, s2, s5
                  xor          t1, a5, s1
                  slli         t4, t0, 26
                  slt          t4, t5, s8
                  div          s11, t3, t6
                  remu         gp, tp, s7
                  lui          sp, 55929
                  andi         t2, s2, 839
                  or           tp, s8, a4
                  mulh         s5, s2, s8
                  auipc        s11, 750288
                  mulhu        zero, a1, tp
                  xori         s2, t6, 1551
                  xor          a1, a2, ra
                  sll          s2, s9, t4
                  div          s7, a0, s7
                  add          ra, s8, t1
                  nop
                  sub          t4, zero, t1
                  ori          s5, a4, -310
                  or           a2, s0, s2
                  addi         t6, t2, -1786
                  xor          s2, s10, t1
                  andi         tp, t0, -1095
                  srai         a5, s2, 28
                  sub          t4, s2, zero
                  div          s0, t1, s2
                  ori          s0, s8, -174
                  rem          s10, sp, s7
                  srli         t1, s1, 30
                  nop
                  srl          s11, t2, sp
                  ori          a2, t5, -527
                  rem          s5, sp, tp
                  srli         t5, s1, 16
                  srl          a7, t2, s0
                  srli         tp, a3, 17
                  slt          sp, s7, gp
                  and          a0, s0, s8
                  divu         gp, s4, a7
                  andi         t5, s11, -391
                  slli         s2, a1, 25
                  srai         s10, a6, 9
                  andi         a2, zero, 1285
                  srl          s5, a5, s9
                  auipc        a4, 921311
                  xor          zero, s7, s7
                  or           sp, gp, a4
                  sltiu        t4, t2, 704
                  slti         a0, t2, -1284
                  srli         s6, t0, 12
                  srl          t5, a6, s0
                  srl          s7, gp, s3
                  mulh         a2, a0, a4
                  ori          t6, a0, 408
                  or           s1, s0, s10
                  lui          t3, 681822
                  mulhsu       a2, s2, s7
                  sub          a5, s8, s7
                  slti         t2, s7, -1034
                  sub          ra, t6, s4
                  slti         sp, gp, 1348
                  or           a1, s2, zero
                  sltu         a6, t1, a0
                  auipc        s0, 104605
                  addi         a6, t5, 1376
                  rem          tp, sp, gp
                  divu         a0, t2, a4
                  sltiu        t5, a6, -6
                  sltu         s10, a7, s11
                  srai         t2, t0, 10
                  ori          t3, t2, 64
                  srl          a1, tp, tp
                  andi         a2, t2, -70
                  srl          a4, t1, t2
                  add          t4, s7, s1
                  xor          s1, s3, t4
                  mulhsu       a7, s0, gp
                  and          a1, a7, a2
                  srl          t2, s11, zero
                  rem          zero, t5, sp
                  srli         zero, s10, 19
                  srl          a1, t4, s11
                  lui          a6, 1031801
                  add          a4, a0, a5
                  andi         ra, t5, 841
                  and          a5, s9, t6
                  srli         t6, t1, 28
                  sltiu        s6, s6, 343
                  addi         t5, a3, -1453
                  sra          s0, s5, sp
                  lui          t5, 597737
                  sltiu        t4, s4, -145
                  mul          a1, a5, t0
                  xor          t1, a4, ra
                  sltu         a5, s4, a7
                  xori         s0, gp, -1105
                  add          a5, gp, a0
                  slli         a5, sp, 5
                  sltu         s9, s10, t1
                  or           a2, s9, t6
                  nop
                  sltu         a4, s6, a6
                  mulh         a2, s1, s10
                  and          zero, a5, zero
                  divu         s1, t2, t2
                  srl          a4, s10, t4
                  sltu         t6, s11, s7
                  mul          s2, s0, t3
                  mul          ra, a3, a3
                  slli         sp, a7, 20
                  mulh         a4, s11, t0
                  add          t3, a3, a6
                  nop
                  nop
                  sltiu        s6, sp, 882
                  or           t2, t6, a7
                  andi         s5, a7, -90
                  addi         s0, t5, -629
                  srl          s9, s11, s6
                  rem          t5, s0, s2
                  or           a2, s2, s8
                  add          s1, s10, tp
                  srli         t2, a3, 10
                  add          t1, t6, ra
                  srli         zero, s4, 2
                  lui          t2, 364645
                  xori         ra, s2, 1161
                  ori          a6, s5, 1477
                  div          a6, s7, s1
                  sltiu        s5, t1, -1728
                  srl          s7, ra, a3
                  andi         s7, zero, -707
                  addi         ra, s1, 772
                  srl          t5, s8, t5
                  addi         a0, s2, -1006
                  mul          t3, gp, a7
                  auipc        t3, 782807
                  div          a6, a5, s10
                  sll          ra, t3, s1
                  rem          t6, a1, tp
                  auipc        t5, 116692
                  srai         a5, a2, 26
                  add          s9, t4, s8
                  sltiu        ra, t1, 1156
                  div          s2, gp, a6
                  ori          t6, s2, -1573
                  sra          a0, t4, t3
                  divu         a7, s9, gp
                  remu         s7, s0, t6
                  mulhu        s10, tp, s10
                  slti         s6, t1, 861
                  nop
                  slt          a4, a5, s7
                  slti         t2, t5, -689
                  sll          t2, t2, zero
                  sub          t6, a1, a5
                  srli         ra, ra, 26
                  sra          a6, gp, s2
                  addi         s0, s6, -228
                  srli         a6, t0, 31
                  srl          t1, t1, a5
                  srai         s10, a6, 27
                  ori          a2, a7, -371
                  srli         s10, a1, 14
                  sub          t3, s8, t5
                  rem          a6, a3, s11
                  slti         s7, a4, 865
                  slti         s6, a5, 981
                  auipc        zero, 926327
                  divu         t4, ra, gp
                  nop
                  sltu         s3, zero, gp
                  srli         a1, tp, 7
                  or           t2, t5, s4
                  srli         tp, a7, 19
                  divu         s8, a1, a6
                  remu         ra, ra, s0
                  add          zero, t2, zero
                  sltiu        s1, s6, -1205
                  sltiu        s2, a4, 381
                  srl          sp, s9, t3
                  xori         s0, t3, 123
                  addi         tp, sp, -245
                  and          t4, a3, s0
                  nop
                  xori         s8, s4, 887
                  divu         s0, t1, a0
                  andi         s0, t1, 428
                  slti         ra, s1, 53
                  xori         s1, a3, 169
                  rem          zero, gp, a6
                  remu         t6, ra, t4
                  mulhu        t4, s11, a3
                  divu         tp, s9, a1
                  addi         t6, s4, 1147
                  mulh         a4, s11, s4
                  or           s1, a4, s11
                  sltiu        s3, a1, 1976
                  srai         a2, t2, 15
                  slli         t1, t4, 28
                  slt          s0, s4, tp
                  sll          a6, s4, a2
                  slti         s5, t0, -52
                  slti         s3, a3, -707
                  slli         s7, t2, 22
                  slti         t4, a2, -83
                  div          s2, zero, a6
                  mul          s3, s4, a5
                  slt          a7, a4, t4
                  remu         s6, a6, s2
                  slti         a7, s7, 1261
                  mulhsu       gp, s7, a7
                  div          a0, sp, a0
                  auipc        s8, 564699
                  mulhu        s5, s8, s3
                  sub          tp, s3, t1
                  div          s1, tp, a3
                  auipc        a2, 362210
                  sltu         a7, t3, gp
                  slli         tp, s4, 17
                  slli         t3, t6, 13
                  rem          a4, s11, t6
                  sra          t2, s1, s8
                  mul          s0, a4, s4
                  mul          a4, t0, t5
                  andi         ra, t4, -1247
                  add          sp, a4, ra
                  slli         t4, ra, 17
                  mulhu        s10, t6, s2
                  sll          s2, a6, a5
                  sltiu        a0, s1, 1505
                  srl          a5, a7, t2
                  mul          ra, t4, t0
                  slti         a1, ra, 1190
                  sra          s0, zero, a1
                  mulhsu       t4, t4, s1
                  sub          tp, t3, gp
                  slli         s3, s3, 7
                  mulhsu       tp, t1, s9
                  andi         a2, a3, -98
                  srl          s6, a7, t5
                  sub          s11, sp, t3
                  xor          a4, t2, t4
                  addi         s11, t4, 1153
                  divu         s8, ra, s2
                  addi         tp, s10, 1450
                  sltiu        t1, a7, -987
                  xori         t2, t2, -1749
                  andi         s7, s2, -2015
                  slti         s11, t5, -1474
                  mul          tp, a7, t0
                  divu         a1, sp, s11
                  sltiu        ra, s9, 1187
                  slt          s6, zero, t3
                  auipc        a2, 745637
                  mulhsu       s8, sp, s1
                  or           a5, a1, s5
                  srli         s9, s8, 26
                  auipc        sp, 592430
                  sra          s2, s6, t0
                  ori          s8, a2, -1613
                  xori         s6, s10, -348
                  mulhu        a4, t3, s1
                  sra          s9, sp, t0
                  divu         a1, s5, a2
                  lui          t6, 503428
                  addi         tp, s4, -555
                  sltiu        t2, t4, 1082
                  mul          t4, a5, s3
                  slti         a6, a5, 1398
                  srai         a6, s7, 8
                  slt          s2, s5, a2
                  srai         s10, t5, 5
                  add          gp, s4, sp
                  addi         s2, a4, 1772
                  remu         t5, s6, t2
                  rem          s10, t6, t3
                  auipc        t6, 464559
                  slli         s2, tp, 26
                  nop
                  slli         s3, s7, 14
                  rem          t6, a7, t3
                  lui          s9, 606709
                  ori          t3, ra, -426
                  sll          s6, a2, gp
                  remu         s11, s7, a3
                  rem          s9, s2, s3
                  srli         gp, t2, 15
                  srai         s3, s0, 10
                  addi         s1, s11, -1653
                  mul          a2, sp, s8
                  xor          a6, a1, sp
                  add          a4, tp, s8
                  remu         s5, s2, s1
                  auipc        s10, 625637
                  ori          a6, s11, 122
                  srl          zero, a2, s1
                  add          a5, t3, sp
                  mulhsu       s11, t1, s1
                  sll          a7, s5, a2
                  mulh         a4, sp, s5
                  lui          t5, 111231
                  sub          a1, s3, t6
                  div          tp, s3, s0
                  srli         ra, zero, 4
                  xori         t2, s2, 104
                  slt          s11, s4, s10
                  sub          zero, a2, a4
                  divu         s7, zero, gp
                  srl          a4, t1, tp
                  mulhsu       a2, a7, s11
                  divu         a7, t0, s3
                  auipc        s10, 85622
                  sll          ra, a2, s4
                  addi         tp, s1, -1650
                  mulhu        t3, sp, a2
                  addi         t1, gp, 608
                  rem          a0, a6, t6
                  and          a5, s7, a1
                  mulh         t6, s2, a1
                  and          gp, a4, s6
                  mulh         t1, s10, a1
                  sll          sp, ra, a2
                  slt          s7, a3, t3
                  andi         t3, gp, 615
                  mulh         tp, t6, a0
                  remu         s7, s4, a2
                  or           s3, s11, s10
                  rem          t3, s2, s0
                  slli         zero, s10, 10
                  xori         ra, s8, 978
                  slti         tp, a1, -977
                  and          a2, zero, s9
                  remu         a7, s6, t6
                  and          a7, s4, a3
                  sra          s2, t1, s1
                  mulhu        t1, s6, s7
                  xor          s3, a6, t3
                  lui          s3, 990557
                  mulh         s1, a0, t4
                  slt          s7, tp, sp
                  mulhsu       zero, s6, s5
                  lui          t2, 117463
                  sltiu        tp, tp, 963
                  slli         t5, t3, 3
                  sltu         t5, t6, s0
                  slti         s3, t5, -1077
                  srli         s5, a0, 20
                  slli         a2, s0, 11
                  xor          a4, s10, t2
                  sra          a6, s4, a1
                  srai         a0, ra, 19
                  sltu         s6, a3, s10
                  xor          t1, s0, t0
                  div          s0, t1, t2
                  sra          s1, ra, t1
                  slt          t5, t2, s2
                  sll          s1, s0, s3
                  mul          s6, t2, tp
                  add          a4, t2, ra
                  addi         ra, t2, -761
                  slti         s3, s1, -1829
                  srli         sp, a1, 28
                  slt          t6, a0, ra
                  srli         s9, gp, 3
                  and          s8, t1, s4
                  slt          gp, s0, a3
                  div          s1, a0, a3
                  sub          sp, s4, s0
                  addi         a5, a1, 422
                  mulhu        t4, t1, a7
                  nop
                  rem          s2, a0, a1
                  srl          s6, s5, s10
                  sra          s5, s7, a6
                  andi         t2, t6, 1349
                  and          a5, t3, a5
                  sub          a6, a2, a6
                  xori         s7, a0, 462
                  srai         s0, t4, 5
                  slli         s6, s11, 3
                  slli         t3, zero, 21
                  mulhu        gp, t0, t4
                  mulhsu       s6, s1, a6
                  ori          a6, s1, 528
                  ori          a4, s1, 569
                  andi         s0, ra, -110
                  nop
                  mulh         t2, t1, s0
                  slli         t3, s11, 6
                  nop
                  div          sp, zero, t1
                  add          tp, tp, a3
                  add          s2, t0, s9
                  addi         s6, s3, -1160
                  andi         s11, a0, -767
                  mulhu        t3, a4, sp
                  mul          s0, s10, t5
                  divu         t6, t4, t1
                  mulhu        a7, a1, s1
                  rem          a1, s8, a1
                  slt          s6, s5, s1
                  srl          s5, a3, s11
                  sltu         ra, s9, s1
                  lui          a2, 576857
                  rem          t4, a6, s7
                  remu         s8, s4, t2
                  slli         t6, t1, 7
                  sltu         s6, t0, gp
                  sra          tp, t2, t3
                  or           a2, s10, t0
                  sub          a6, s8, s0
                  slli         s9, s3, 13
                  srl          ra, s3, t6
                  sub          s1, s10, t6
                  add          a7, a7, t5
                  div          s1, t2, s0
                  sltu         s0, t1, a7
                  and          t4, s7, s7
                  andi         a5, sp, 479
                  sub          t4, s1, t5
                  sll          a6, s2, a5
                  rem          gp, s9, a1
                  div          s2, a3, a1
                  mulhu        a0, s11, t3
                  nop
                  mulh         a2, t4, t4
                  ori          s2, a4, -1139
                  ori          a2, s1, 1909
                  sltu         a7, tp, sp
                  mul          s5, t2, a0
                  sltu         s8, t4, a5
                  ori          tp, a7, 1165
                  slti         s0, zero, -1508
                  sub          sp, t3, zero
                  nop
                  xor          t3, a2, s5
                  or           gp, s9, t0
                  sltiu        s10, s1, 828
                  lui          s3, 602894
                  mul          a6, t3, a0
                  lui          zero, 490882
                  or           ra, s3, a3
                  mul          a6, a0, t5
                  or           s7, a1, t0
                  sll          a2, a6, s10
                  slt          s5, s5, a7
                  addi         t1, s2, 1840
                  sub          t3, s7, zero
                  mulhsu       a6, gp, a0
                  ori          a2, s11, -1931
                  sltiu        tp, s9, 1904
                  lui          a0, 501474
                  slti         s1, tp, 1090
                  add          t2, s4, t0
                  and          tp, s0, sp
                  rem          a5, t6, a1
                  or           s7, t4, gp
                  slli         s6, s10, 0
                  sll          s0, a0, a5
                  auipc        t5, 245113
                  srl          a5, t1, tp
                  ori          s1, a4, 414
                  srli         ra, a2, 18
                  nop
                  sub          ra, zero, t1
                  sub          a1, s1, t2
                  srl          s1, s7, a1
                  slt          s6, t0, t0
                  srl          s9, s1, s10
                  rem          s6, gp, zero
                  mulhu        s8, a7, s8
                  srli         tp, s10, 16
                  and          a6, t0, s6
                  remu         s8, s5, s5
                  andi         s2, tp, -1146
                  auipc        t4, 960773
                  ori          a6, ra, 1940
                  sra          ra, tp, s10
                  add          s8, s11, t3
                  srl          t6, zero, s6
                  mulh         a4, s6, a6
                  auipc        s7, 319265
                  or           a5, s0, a6
                  lui          a7, 971580
                  sll          gp, a6, s8
                  and          t5, a1, zero
                  xori         s0, t0, 1185
                  sll          t6, t3, s11
                  auipc        s5, 720803
                  sltiu        s6, s0, 1439
                  slli         a7, s6, 15
                  andi         s5, s8, -949
                  mulhsu       zero, s3, s2
                  mulhu        t6, s1, a7
                  and          s10, a3, s5
                  remu         s2, ra, s5
                  slt          s1, gp, a4
                  srl          s0, t2, t6
                  sll          t4, t6, sp
                  sltiu        t6, s3, 22
                  mulhu        t4, s8, tp
                  nop
                  xori         t3, s1, 742
                  mulhsu       a6, a0, t3
                  lui          a5, 910506
                  xori         a6, a5, -334
                  div          s6, a2, s10
                  srl          sp, ra, t3
                  xor          zero, t4, t2
                  xori         s2, sp, -1543
                  add          s6, s8, a5
                  sub          a2, gp, ra
                  lui          t3, 888368
                  addi         s5, t6, -1003
                  andi         s9, t0, -156
                  srli         a0, a2, 19
                  addi         s9, gp, -1580
                  or           t3, a4, t5
                  and          s3, t6, s5
                  add          a2, a3, s3
                  slti         ra, a0, -1699
                  mulhu        a0, s1, t5
                  nop
                  or           a1, a2, s8
                  divu         s10, t0, t5
                  mulhsu       s7, s3, s5
                  xori         t6, a4, 1270
                  andi         ra, s8, 459
                  mul          t1, ra, s7
                  xor          a5, a0, gp
                  div          t4, s9, a3
                  nop
                  add          s8, s0, s9
                  sra          ra, a6, s1
                  srli         s10, s0, 24
                  srl          a4, s8, s4
                  lui          a0, 333245
                  andi         zero, a3, -1618
                  srli         tp, t0, 31
                  mulhu        sp, t2, t6
                  srl          s11, s5, s10
                  remu         s5, s0, a7
                  mul          s7, s4, t3
                  ori          tp, a4, -427
                  mulh         ra, s1, t5
                  mulhu        sp, a4, ra
                  mul          ra, t4, s11
                  sltu         t1, a5, zero
                  auipc        s0, 729943
                  sltiu        s1, s0, -1223
                  xor          s6, s9, a4
                  addi         s11, t6, 1597
                  andi         t4, t5, -1036
                  div          a5, a7, s7
                  srli         s6, t6, 25
                  srl          a6, t6, s3
                  sltu         s1, s9, t1
                  sltiu        s11, s0, 870
                  sltiu        s2, a5, 1453
                  addi         t2, s4, -1360
                  ori          s6, a4, 918
                  lui          s11, 137073
                  srli         t2, tp, 1
                  xori         a7, s1, 757
                  sub          t1, s9, s1
                  slli         t5, zero, 1
                  rem          t1, t0, a3
                  add          t5, s5, gp
                  mulhsu       t2, s1, t5
                  slli         t1, a1, 25
                  sra          t4, a4, t4
                  auipc        s1, 582848
                  divu         gp, ra, tp
                  slli         t6, s3, 13
                  xor          t6, s10, s6
                  sra          ra, s3, t4
                  slli         s7, a4, 20
                  divu         gp, s11, t5
                  and          a2, a5, s9
                  xor          zero, zero, a4
                  add          a6, s4, a7
                  slli         ra, s4, 15
                  mulhsu       t4, s1, a0
                  slti         a1, t5, 13
                  rem          tp, t2, s10
                  lui          gp, 1031180
                  ori          a0, s3, 512
                  mulhu        tp, a2, a3
                  lui          s2, 296692
                  and          sp, t1, t2
                  srli         a7, s9, 23
                  lui          s2, 340498
                  srl          s5, s6, s1
                  addi         a4, t4, -1704
                  div          gp, a5, t0
                  divu         s6, s11, a6
                  slli         a0, s9, 31
                  srl          t3, s10, s10
                  sltu         tp, zero, s5
                  sltu         s8, gp, t6
                  nop
                  sra          t2, zero, s0
                  and          ra, s0, s0
                  mul          s7, s10, t6
                  and          a6, s10, a6
                  nop
                  xori         a6, s0, 994
                  srli         t4, t0, 14
                  slli         s1, s11, 14
                  srli         t3, a7, 26
                  nop
                  or           s1, s9, s7
                  sub          s11, s1, zero
                  auipc        sp, 57118
                  rem          t3, s6, a5
                  xor          t6, s1, s10
                  sltiu        s8, tp, 104
                  srai         a6, t2, 14
                  sltiu        t3, zero, 208
                  ori          s3, s5, -768
                  or           s6, s1, a2
                  sltiu        a5, s11, -350
                  ori          s3, a7, 1077
                  remu         s11, t3, a3
                  srl          t3, t1, s10
                  andi         s10, t2, -1592
                  mul          t5, t4, t1
                  mulh         a1, s10, s9
                  sll          s11, a4, a2
                  slt          t2, a1, ra
                  addi         s11, t4, 47
                  slli         a6, s5, 15
                  slli         a2, t6, 3
                  addi         a2, a0, -448
                  andi         s3, s10, -744
                  srli         s9, ra, 19
                  andi         s2, zero, -139
                  sltu         s5, a1, sp
                  divu         s1, sp, s7
                  sltiu        a6, s1, 447
                  xor          a7, s9, t2
                  mul          s5, s1, s4
                  and          s8, s2, t3
                  sltu         t4, s10, s5
                  xori         t4, t2, -647
                  xor          t4, a3, a4
                  mul          s5, s10, ra
                  mulhu        s5, s0, tp
                  sltiu        a4, s2, 107
                  auipc        s11, 182434
                  slli         s5, s5, 24
                  div          s6, s5, t6
                  add          a5, t5, s2
                  mulhu        t3, sp, sp
                  divu         a2, sp, t1
                  sll          a0, a6, s6
                  mulhsu       s7, s9, tp
                  add          t3, gp, a4
                  add          tp, a4, t6
                  lui          ra, 313079
                  sltu         a2, s4, t5
                  srli         ra, s4, 15
                  nop
                  sltu         s2, t5, a3
                  sra          t2, t2, a3
                  or           gp, t5, s8
                  mulhsu       a2, a6, ra
                  add          a4, s5, s5
                  slli         s6, s1, 1
                  xor          s6, a6, s0
                  sltu         s6, s6, zero
                  remu         tp, s1, t5
                  slt          tp, t6, s0
                  srli         a6, s1, 10
                  addi         ra, t1, -1831
                  xori         t5, s6, 1311
                  sll          s0, a7, t1
                  srai         a1, s3, 16
                  andi         a2, t0, -185
                  add          zero, a2, s11
                  mulhu        a5, s3, s7
                  sll          s9, a2, zero
                  sub          tp, s8, gp
                  slt          a2, a6, s10
                  srl          s11, a6, t3
                  rem          s6, a7, s4
                  mulhsu       s6, t5, t0
                  mul          t6, t0, a7
                  slli         a0, sp, 14
                  divu         s5, t1, a6
                  addi         s0, gp, -504
                  sub          s1, s4, t1
                  nop
                  sra          s5, s2, s10
                  remu         t5, a2, a0
                  add          s7, t6, a7
                  mulhsu       sp, a2, s11
                  xori         ra, a7, 1886
                  mulhu        t3, zero, zero
                  add          s10, a3, ra
                  nop
                  sub          s5, gp, t4
                  mulhsu       ra, gp, s5
                  mulh         gp, s4, t1
                  auipc        s10, 428819
                  add          t3, t2, a6
                  sra          a4, s11, a3
                  slt          zero, a4, tp
                  slt          t4, s3, a6
                  ori          s0, s8, 826
                  srai         t1, t3, 2
                  auipc        a0, 722009
                  mul          s11, a6, s8
                  div          ra, a3, zero
                  sltu         t5, sp, a7
                  and          tp, s5, tp
                  or           gp, t0, t3
                  sltiu        tp, t3, 1908
                  nop
                  divu         a0, sp, s6
                  slt          t4, s4, s9
                  srl          t2, t4, s8
                  xori         zero, tp, -997
                  or           s1, t5, sp
                  remu         s8, t3, s7
                  auipc        s8, 137598
                  srl          a7, a0, t1
                  auipc        s2, 688890
                  sra          s0, t3, s8
                  auipc        s9, 526188
                  srai         s0, s6, 25
                  addi         a0, t2, -486
                  divu         s0, s11, s7
                  slt          s1, s4, a2
                  and          s5, s9, a5
                  or           gp, a4, a6
                  xor          a0, s6, s6
                  mulhsu       s0, t6, s6
                  nop
                  addi         a1, t4, -981
                  slt          a4, zero, t5
                  mulhsu       s5, s11, a4
                  mulhsu       s6, a2, a4
                  sra          a5, s9, s3
                  slli         t2, tp, 23
                  slti         zero, a7, 95
                  slti         s1, s6, 577
                  sra          s1, t4, a3
                  xor          s2, ra, s3
                  or           zero, s0, a2
                  auipc        t6, 572057
                  slli         a2, t0, 11
                  ori          t3, s10, 1095
                  mul          a2, ra, s7
                  add          a0, t4, tp
                  lui          a6, 819692
                  div          a5, a3, a2
                  sub          a0, a7, t3
                  mulh         a4, s5, t3
                  or           s2, a4, t4
                  add          sp, a3, a6
                  auipc        s2, 1005621
                  nop
                  mulhsu       s8, gp, t2
                  addi         a6, s1, 2043
                  rem          s6, s3, t0
                  sltiu        a7, a5, 1969
                  mulhsu       s3, a1, a2
                  xor          s1, t6, t1
                  xori         t4, tp, -204
                  srai         s10, s6, 20
                  andi         s2, s3, -1610
                  sub          ra, t5, s2
                  lui          s6, 156840
                  rem          t3, a1, sp
                  xor          s3, ra, t5
                  mulhsu       a7, t3, t6
                  or           t1, tp, s1
                  sltiu        t5, ra, -750
                  slli         t2, s3, 26
                  mulhsu       a0, a2, tp
                  add          t5, s10, s5
                  add          s5, s5, t1
                  mul          s6, a4, s8
                  slt          s6, s0, ra
                  xor          s0, s5, t1
                  addi         t5, tp, -326
                  remu         a7, a1, a5
                  addi         t5, a6, -1908
                  andi         s5, a5, 1285
                  and          tp, s6, t1
                  xor          t5, s9, tp
                  xori         zero, a1, 667
                  and          s10, a3, s11
                  mulh         s7, s11, a0
                  lui          s3, 821953
                  sra          s0, s4, a4
                  and          a5, a1, t0
                  rem          s2, t0, s6
                  mulhu        sp, s7, sp
                  xor          s3, s3, t4
                  slli         s8, a3, 17
                  xor          s1, s10, s8
                  slli         t5, a6, 17
                  slt          gp, s1, a7
                  sll          s3, t0, s10
                  or           s10, t2, s10
                  mulhsu       s2, a6, sp
                  xori         s8, sp, 500
                  mulh         s0, a3, s9
                  or           sp, s4, a4
                  mulh         a0, a3, zero
                  sub          s11, s5, s3
                  srl          t4, s2, s5
                  xor          s0, gp, s5
                  xori         t2, t3, -1881
                  mulhu        a5, tp, t6
                  div          s8, a7, a5
                  srli         t3, s2, 22
                  andi         s3, s8, 650
                  rem          s5, a4, a4
                  sltiu        t5, sp, 1711
                  sra          a5, t4, ra
                  or           s2, s5, ra
                  andi         a4, a5, 110
                  remu         a4, t2, a3
                  sll          s9, t6, t1
                  xor          a5, s0, a5
                  sltu         sp, s10, a2
                  srli         t3, a0, 15
                  srli         s1, s7, 12
                  sub          zero, t6, t3
                  div          zero, gp, t0
                  mulhu        tp, a2, a4
                  mulh         t1, s7, t1
                  lui          s3, 447959
                  slt          s1, sp, s10
                  nop
                  slt          s5, t1, s9
                  divu         t1, t0, a3
                  addi         s6, t4, 1255
                  mul          s6, sp, t5
                  srai         a6, s8, 15
                  mulhu        s3, s7, a4
                  or           a5, s5, s6
                  remu         t4, t3, t0
                  srli         s1, a2, 9
                  srl          s11, t0, s2
                  div          t4, s7, t6
                  slt          a0, s1, a4
                  mulhsu       s11, s6, a4
                  ori          a5, sp, 1901
                  xor          t6, a7, a0
                  mul          tp, a0, t6
                  slti         t5, a1, 1835
                  auipc        a7, 849014
                  andi         tp, a7, -1240
                  ori          s2, a7, -1262
                  sra          s2, s4, s8
                  remu         a0, a5, t5
                  add          gp, t3, zero
                  sll          t3, a1, s7
                  sub          zero, tp, a7
                  divu         a0, s6, t4
                  slli         s11, a2, 17
                  srai         t1, a2, 11
                  addi         t6, sp, 1619
                  srai         a6, t3, 5
                  srli         s2, t0, 10
                  mulhu        zero, s11, s10
                  divu         sp, a6, s5
                  srl          s7, t5, t5
                  div          s2, s9, ra
                  remu         s9, a2, a1
                  srl          t4, gp, tp
                  mulh         s10, s6, ra
                  auipc        s10, 850376
                  sltiu        s2, t5, -1432
                  divu         a6, a7, a1
                  nop
                  nop
                  sra          ra, t3, t1
                  andi         sp, zero, 874
                  addi         t3, t6, 818
                  mulhsu       s7, s8, tp
                  slli         s11, s9, 1
                  srli         s3, a7, 1
                  add          s0, t1, s5
                  xori         t6, s2, -105
                  mul          s3, a3, s5
                  sra          t4, s3, zero
                  sra          t5, tp, gp
                  xor          a0, s11, a5
                  ori          a6, t2, -1973
                  and          ra, a5, s3
                  lui          s5, 458984
                  mulh         s5, gp, t3
                  remu         t1, s9, t2
                  slt          sp, s4, a6
                  slti         s6, s3, -1549
                  mulhsu       s1, a3, a5
                  srai         a4, a0, 13
                  xor          s5, t5, s2
                  slt          a1, s0, s10
                  rem          a7, a4, s8
                  mulhu        s3, gp, s3
                  add          ra, a4, t4
                  mulhsu       a5, zero, t0
                  srli         a5, s3, 29
                  rem          t4, t5, a3
                  sltu         a2, t2, a6
                  sra          s10, s1, tp
                  divu         tp, s7, tp
                  auipc        a1, 63718
                  mul          a5, gp, a1
                  andi         a2, t6, 430
                  slti         t2, zero, 717
                  ori          t2, t4, 1175
                  add          s5, a1, a5
                  slli         a6, t1, 25
                  lui          t3, 502435
                  xori         tp, sp, 502
                  rem          s2, a3, a4
                  slt          s6, s4, t4
                  srai         a0, ra, 29
                  srl          t6, t4, s11
                  sltiu        t2, s8, -509
                  mulhsu       zero, sp, a5
                  addi         a7, a0, 271
                  slt          a2, s11, s8
                  mul          a0, a5, s2
                  mulh         t5, a4, a7
                  slti         a4, s1, 1008
                  sltiu        s1, a3, -203
                  add          s5, t1, s2
                  ori          a7, t6, 1678
                  sub          a6, t3, s11
                  sltiu        t3, t5, 1059
                  xori         s10, a0, -1145
                  or           a6, t2, sp
                  divu         a6, s0, a7
                  lui          a6, 954681
                  sltiu        s6, a7, -1797
                  xor          t1, s11, a1
                  slli         ra, a6, 18
                  srl          sp, t2, t2
                  nop
                  sltiu        zero, a6, 1747
                  xori         sp, zero, -447
                  rem          a0, t1, t3
                  slli         s10, a4, 11
                  srl          t5, s6, zero
                  or           s10, s6, s9
                  andi         tp, s10, 1120
                  xor          s2, t6, t4
                  mul          s7, t0, a3
                  xor          s3, s10, s2
                  nop
                  slli         s9, t6, 9
                  slt          t6, ra, gp
                  sra          s6, t3, s2
                  xori         zero, a3, -405
                  srli         ra, t4, 12
                  srai         t4, a2, 2
                  mulh         zero, a3, a6
                  sltiu        tp, a7, -1470
                  mulhu        a2, s11, s6
                  and          s2, a2, a0
                  lui          a6, 999703
                  srai         s2, t6, 24
                  auipc        tp, 591803
                  or           a1, a0, a6
                  sra          a0, s8, s2
                  ori          tp, a6, 1415
                  lui          a5, 102204
                  divu         ra, a4, sp
                  ori          a5, t1, -1963
                  and          s5, a0, s9
                  slt          a6, sp, s6
                  auipc        a7, 656027
                  srli         a0, ra, 12
                  slli         ra, sp, 23
                  srli         sp, s0, 23
                  addi         s5, a6, 1965
                  remu         t4, a0, a5
                  sub          s0, a7, s1
                  and          a7, a7, a6
                  lui          tp, 420714
                  mulh         a2, gp, t3
                  srli         s6, s7, 15
                  or           s7, a2, s6
                  mulhsu       a1, a0, t3
                  srli         t2, gp, 10
                  mulhsu       s6, t2, tp
                  div          tp, a0, s6
                  andi         zero, t1, 13
                  and          s9, gp, sp
                  addi         gp, a3, -1820
                  add          a7, t6, s10
                  divu         t2, s3, s1
                  div          s7, a7, a4
                  remu         tp, s4, t5
                  sltiu        s5, a4, 1228
                  xor          a5, a2, a2
                  sra          s6, t5, a4
                  slti         t5, t4, -1869
                  xor          a5, zero, gp
                  sub          s1, s3, tp
                  slt          a4, ra, s9
                  sll          ra, t6, t3
                  ori          t5, a3, 877
                  divu         sp, a0, s8
                  rem          sp, ra, s9
                  nop
                  and          a0, a1, t1
                  and          ra, a7, a1
                  divu         t6, t4, a2
                  rem          t3, s7, t3
                  slti         ra, s2, 1727
                  slt          a6, s6, s0
                  ori          t4, s11, -804
                  mulhu        zero, a7, s6
                  slli         gp, s0, 4
                  lui          sp, 407527
                  sll          t2, t1, tp
                  sltiu        s9, t2, 354
                  slt          s9, s0, a6
                  slti         s5, a4, 1116
                  sra          gp, a7, a0
                  addi         a7, s1, -1608
                  addi         s7, s6, 1182
                  sltu         t2, a4, s10
                  nop
                  ori          s2, t2, -1931
                  nop
                  srl          a0, t0, a4
                  sltiu        t6, s8, -1440
                  srl          s11, a0, s8
                  xori         zero, t3, -735
                  srl          s3, a5, t0
                  lui          sp, 19559
                  xor          tp, t0, t1
                  xori         a0, a1, -729
                  mulhsu       t4, t2, zero
                  mulhsu       t1, s11, t3
                  nop
                  rem          s1, t5, t2
                  slli         gp, a1, 17
                  add          t1, t3, s9
                  sll          s3, a4, s1
                  ori          a0, tp, 1956
                  add          sp, t5, a5
                  srai         t5, s8, 26
                  xor          s2, s5, t3
                  mulh         a0, a0, a4
                  rem          t5, t0, gp
                  xori         s1, s7, -1118
                  mulh         t3, t5, s1
                  xori         ra, s8, -310
                  mulhsu       s10, t6, sp
                  srai         sp, a5, 7
                  mul          a6, a2, s1
                  rem          s5, zero, a7
                  and          a6, t1, s2
                  mulh         a2, s3, t4
                  or           a0, s11, t2
                  sra          tp, s0, a0
                  nop
                  xori         t4, a5, 128
                  div          t2, t2, s5
                  sltu         a0, t2, s4
                  addi         s2, t6, -424
                  sub          s3, a0, t5
                  mulhsu       tp, s8, s2
                  lui          s11, 812298
                  slti         a7, t4, 1005
                  addi         a2, tp, 179
                  xor          t4, s4, a4
                  srli         a6, t6, 17
                  andi         s6, s5, 1560
                  lui          t4, 908786
                  xor          sp, a0, s2
                  sra          a1, a1, a3
                  sltu         zero, ra, s4
                  srl          s9, a5, s9
                  mulhsu       s3, s0, t3
                  srli         tp, s3, 25
                  mul          s6, t4, t5
                  mul          s0, s2, a6
                  mulh         gp, sp, a6
                  div          gp, ra, s9
                  srai         a7, s0, 0
                  xori         t5, s11, 1713
                  add          s5, s0, s2
                  srli         s11, s5, 27
                  and          sp, s0, s9
                  addi         gp, s8, 1922
                  slti         tp, t4, -912
                  xor          a1, a2, a4
                  slt          t3, s10, a1
                  xor          t6, t5, tp
                  and          s3, a5, a4
                  sltu         t3, a1, t1
                  mulh         s5, s1, a0
                  auipc        ra, 570427
                  or           s0, s8, gp
                  slli         s10, s2, 24
                  mul          s5, gp, tp
                  sll          a1, a7, zero
                  divu         t5, t2, a3
                  mulh         a4, s10, s7
                  or           sp, t6, sp
                  nop
                  srli         tp, a0, 13
                  and          s11, s2, ra
                  xor          s5, t2, zero
                  mulh         gp, s0, sp
                  slt          t5, s0, t1
                  and          t5, a6, ra
                  remu         a6, a7, sp
                  srl          t4, t0, s11
                  auipc        ra, 987641
                  remu         a4, a1, sp
                  xor          t2, t3, s7
                  mulhu        tp, tp, ra
                  xor          tp, a5, t4
                  slli         t2, s7, 28
                  nop
                  srai         gp, s4, 0
                  auipc        gp, 342743
                  mulh         ra, s2, s4
                  nop
                  mulh         s2, a4, s8
                  mulhsu       s9, s7, s1
                  sltu         s8, s7, t5
                  divu         s6, a0, a2
                  lui          s9, 80408
                  sub          s6, s3, t6
                  sra          a6, zero, zero
                  sra          a2, s2, a5
                  div          a6, gp, s11
                  sltiu        t3, s7, 464
                  or           ra, t6, a2
                  and          s5, a2, ra
                  rem          s8, s4, s4
                  xori         a5, s1, -37
                  sra          a2, s2, a6
                  mulhu        a4, t0, zero
                  mulh         s2, s1, s7
                  auipc        a0, 560224
                  srli         s2, gp, 11
                  xori         s0, s4, -912
                  slli         t6, t0, 7
                  srli         t2, s7, 18
                  mulhu        a5, a1, t4
                  auipc        a2, 721668
                  xori         t1, gp, 551
                  or           a6, gp, a7
                  mulhsu       s1, s0, s0
                  xori         t3, tp, 22
                  xor          t3, t2, s10
                  ori          s0, a6, 839
                  nop
                  add          t2, t2, a5
                  sltu         s3, t1, a3
                  div          a1, tp, gp
                  mulhu        t2, s4, ra
                  and          a4, s1, zero
                  remu         tp, a5, gp
                  mulhsu       t5, s6, s1
                  srai         s7, s3, 5
                  and          s5, s11, t5
                  xori         s1, s4, 779
                  srl          a1, zero, s10
                  remu         ra, a1, zero
                  sra          t3, s0, s11
                  divu         s2, tp, a6
                  sltu         a5, s6, a2
                  mulhu        t1, a4, t0
                  slli         gp, gp, 14
                  remu         s8, a1, a1
                  slli         t4, s5, 1
                  slti         a2, t4, 1381
                  srai         a4, s4, 22
                  addi         s5, s8, 724
                  srai         s11, s0, 12
                  slli         t4, gp, 21
                  remu         s0, ra, s10
                  andi         s0, t0, 780
                  rem          s8, ra, s7
                  srli         t6, s3, 21
                  xor          t6, t3, t6
                  sll          s10, t2, s5
                  mulhsu       s11, t1, s7
                  mulhu        ra, t2, a3
                  sub          t6, s7, t4
                  rem          s6, tp, a0
                  xor          s6, a2, t4
                  srai         t3, zero, 17
                  slti         t5, ra, 421
                  auipc        t1, 302602
                  rem          s8, s5, s10
                  div          sp, zero, s7
                  rem          s1, s1, s3
                  srli         s7, s5, 3
                  xor          s5, s10, tp
                  sll          s5, a2, s9
                  slt          s0, a6, tp
                  mulhu        a4, a2, a2
                  divu         s10, gp, gp
                  srli         s3, t0, 9
                  lui          s0, 226219
                  divu         tp, s3, s10
                  divu         s6, a2, t6
                  ori          t6, s11, 751
                  slti         s8, sp, -1149
                  div          a0, t4, ra
                  sub          t6, t2, s1
                  sub          s5, sp, sp
                  xori         zero, t2, 340
                  ori          t3, t1, 455
                  mulh         s9, zero, zero
                  sltu         t4, t0, a0
                  mulhu        t4, a1, s10
                  mulhu        t5, t4, a7
                  srl          s7, t0, s4
                  or           tp, gp, t3
                  sra          t1, a4, s11
                  div          s3, s2, t3
                  xori         s1, tp, 407
                  mul          ra, s10, a4
                  mulh         t6, s11, s3
                  sltu         s8, a2, s4
                  slli         gp, s9, 24
                  ori          tp, s0, -8
                  auipc        ra, 235285
                  remu         gp, sp, a7
                  mulhsu       t4, t3, a7
                  slli         ra, a3, 19
                  lui          ra, 317010
                  mulhsu       a4, a4, t0
                  div          s0, gp, a2
                  and          a6, t1, gp
                  srai         ra, t5, 7
                  xori         s10, a3, 783
                  srli         t2, t1, 26
                  srai         a0, s9, 0
                  lui          tp, 484462
                  rem          sp, s4, s4
                  slti         a5, t4, 255
                  srai         s9, s11, 4
                  ori          s2, s3, -1493
                  sra          s5, a6, a7
                  slti         s3, a5, 458
                  srli         a1, s7, 18
                  mul          t6, t5, a3
                  srl          s10, a6, s0
                  xor          s2, s4, a6
                  slt          a7, tp, t2
                  div          a1, a3, t1
                  slli         t4, t4, 1
                  sub          t4, tp, zero
                  addi         t5, t1, -423
                  xori         t6, tp, -1262
                  slt          t4, a6, s6
                  slti         s6, s2, 1583
                  sll          gp, s5, a7
                  srli         t2, t1, 9
                  srli         t4, s0, 21
                  srli         gp, a5, 25
                  ori          sp, a0, -1008
                  remu         a1, s4, t1
                  add          a6, a2, sp
                  mul          s6, a3, t2
                  or           a6, s4, gp
                  rem          s11, t6, s0
                  nop
                  srli         s3, tp, 24
                  mulhu        t2, a7, a3
                  remu         s7, a5, gp
                  mulhsu       a1, s1, s0
                  rem          a2, s2, zero
                  sra          a6, a1, s7
                  mulhsu       s1, t6, a0
                  sll          tp, a1, sp
                  divu         a1, s6, a6
                  ori          t3, s11, 1981
                  slli         t2, t6, 8
                  slti         a0, a1, -1178
                  or           a1, t5, a0
                  mulhu        s6, s4, s11
                  auipc        ra, 258301
                  sra          s6, s10, a5
                  mulhu        t5, gp, s4
                  divu         a1, sp, tp
                  slli         gp, s8, 5
                  divu         s6, gp, t6
                  mul          s8, s6, s3
                  divu         t6, a7, t5
                  slti         a0, a7, -1942
                  lui          s6, 858734
                  div          s8, zero, s7
                  sra          s1, s10, t4
                  and          s3, a7, t1
                  mulhsu       a5, a5, zero
                  srai         s3, a7, 8
                  ori          s10, a7, -1512
                  and          s5, s10, s7
                  sra          s1, a1, sp
                  sltu         a7, a6, t0
                  andi         s1, s1, -865
                  srli         t2, a0, 16
                  mul          s8, s11, a2
                  nop
                  sltiu        s10, a1, 515
                  mul          s9, s4, gp
                  sltu         sp, a7, a1
                  mul          a7, s5, a6
                  slli         s8, t0, 25
                  mul          t3, t3, s4
                  sub          s2, s11, zero
                  sra          s7, a2, s5
                  sltu         a4, t2, t2
                  slli         a6, s0, 21
                  addi         a6, s8, -955
                  xori         sp, t2, -787
                  add          t3, a3, a3
                  srl          sp, s8, a7
                  div          a1, a7, s5
                  divu         t3, s6, t1
                  sub          t5, a0, s10
                  srl          sp, a6, s7
                  remu         a1, sp, s1
                  srl          s6, s11, s11
                  srli         t1, a5, 13
                  lui          s3, 502449
                  lui          ra, 777760
                  slt          s9, s7, t5
                  srl          t5, s5, ra
                  sltiu        a7, s0, 322
                  mul          t4, t0, s11
                  slti         sp, ra, 554
                  rem          s7, a3, sp
                  mulh         t2, t4, s1
                  sltiu        sp, a5, 921
                  slt          ra, s7, a3
                  slt          t2, a2, a5
                  mulh         t1, s3, a3
                  or           t6, a7, sp
                  sub          sp, s5, t2
                  divu         t5, s4, s2
                  xori         s8, tp, 270
                  slt          s0, tp, a4
                  sra          ra, t4, a5
                  rem          s0, ra, t2
                  or           s6, s8, a2
                  mul          s6, a0, a2
                  sltu         sp, a0, zero
                  rem          s5, gp, s9
                  srl          a7, tp, s4
                  rem          s2, a2, t0
                  mulh         t5, a5, a7
                  slli         s6, t4, 7
                  andi         t3, a1, -1935
                  add          t6, gp, a1
                  sra          s1, s11, s7
                  mulhu        zero, a1, a3
                  or           t3, t5, gp
                  div          s5, s6, s10
                  ori          s6, t4, 1620
                  remu         t2, s1, a6
                  sltiu        s3, a2, 277
                  divu         t1, s1, s6
                  mulhsu       ra, a1, s9
                  srli         sp, s1, 4
                  add          s10, s1, gp
                  ori          a6, a1, -1270
                  slli         t4, t5, 7
                  add          s11, t5, s1
                  slli         s6, s11, 2
                  srli         a2, s0, 26
                  rem          t6, a6, a5
                  andi         s8, tp, -1244
                  rem          s9, gp, t2
                  xor          a5, t3, s2
                  mulhu        a1, s10, tp
                  remu         s11, s1, s11
                  div          s5, a6, t4
                  andi         s10, s0, -246
                  sra          a0, t1, s10
                  andi         s10, t1, -1821
                  addi         s10, s11, 1447
                  sltu         t3, a7, t4
                  and          s5, a2, t3
                  mulhu        tp, s7, a7
                  lui          a1, 60084
                  xori         s7, t4, 484
                  auipc        s1, 907399
                  mul          tp, s7, zero
                  remu         s7, a4, a6
                  sra          s7, t1, t4
                  rem          a1, gp, t4
                  mulhu        s7, t4, s2
                  srli         t3, s4, 12
                  sltu         t1, s1, s4
                  srl          zero, t2, a2
                  slli         a0, s10, 24
                  sub          ra, a1, t4
                  xor          ra, zero, a6
                  sra          t3, s1, t6
                  nop
                  sll          s0, s9, s3
                  rem          ra, a4, s5
                  divu         a6, s10, gp
                  add          gp, s5, tp
                  xor          a6, s8, a0
                  xori         tp, s4, 1050
                  sub          s11, s5, a5
                  srli         sp, a7, 17
                  srl          t4, sp, t0
                  mul          s7, a3, t2
                  xor          s5, a5, a3
                  sltu         s3, s1, a4
                  lui          t4, 258269
                  sltiu        s11, s3, 2014
                  rem          a1, s9, a7
                  srl          s10, s1, s11
                  rem          s5, s4, s0
                  xori         ra, t2, 603
                  sltu         tp, s11, a1
                  srl          s10, a0, s3
                  mulhsu       ra, s5, s7
                  div          a4, t3, s6
                  addi         a6, s11, 802
                  slli         s7, gp, 29
                  divu         a7, a1, s5
                  srli         t4, a5, 3
                  sltiu        s1, t2, 1312
                  ori          t1, t1, 909
                  divu         s7, a5, a4
                  add          s5, t0, s11
                  sltu         a7, s7, t6
                  and          s5, zero, a6
                  sub          tp, t5, gp
                  sltu         a4, a5, s11
                  andi         t2, s10, -1323
                  xor          s11, s9, t5
                  rem          a5, s9, s7
                  lui          t2, 643723
                  addi         s6, a5, 1174
                  ori          a5, s9, 2011
                  remu         a4, t1, a2
                  div          t3, t2, a4
                  sltiu        t2, a0, -890
                  xor          tp, s10, t6
                  xor          a0, s9, s6
                  sltu         s6, gp, t4
                  mulhu        s6, s8, t1
                  divu         s9, a1, a3
                  mulh         t6, gp, s9
                  andi         t5, t1, 1485
                  auipc        t4, 890358
                  andi         s8, s1, 684
                  and          s3, s5, s11
                  slti         tp, gp, 1513
                  ori          t3, sp, 898
                  sra          a6, s0, a3
                  xor          zero, zero, sp
                  sll          s7, t5, t4
                  divu         tp, s5, s9
                  nop
                  addi         t3, s1, 902
                  andi         t2, t6, -2007
                  slti         t6, t0, 1243
                  and          a1, s9, ra
                  and          s3, gp, s0
                  srli         t3, s2, 18
                  slti         s5, s11, 305
                  addi         zero, s11, -553
                  addi         a7, zero, -812
                  remu         a5, a6, gp
                  add          s2, zero, t5
                  mul          s11, a3, t3
                  srai         s10, t3, 10
                  auipc        a5, 100617
                  nop
                  andi         s2, t2, -1340
                  auipc        t3, 923431
                  slli         a4, t5, 13
                  sra          a6, a3, s0
                  and          gp, t2, zero
                  sltiu        t2, zero, -830
                  xor          a6, t2, s7
                  sra          s10, t5, s10
                  slti         s5, a0, -1448
                  srli         a7, s5, 17
                  srai         t3, s3, 19
                  nop
                  sltiu        t4, s8, -1799
                  sltu         sp, ra, a7
                  div          a7, t1, a7
                  mulhsu       t4, s4, t3
                  nop
                  srai         s6, s0, 18
                  andi         t2, tp, -1188
                  lui          s5, 44123
                  or           sp, s7, a5
                  sra          a5, s9, t0
                  auipc        s6, 703547
                  and          a0, a7, a5
                  mulh         s2, zero, a2
                  xor          s6, s5, s7
                  srai         s6, a0, 9
                  or           s9, a3, t1
                  andi         s8, s1, -1534
                  rem          s6, a4, t3
                  divu         sp, t4, a7
                  xori         a5, a5, -1270
                  mulhsu       a7, a7, s5
                  srai         s0, tp, 16
                  srli         s5, a3, 10
                  auipc        s10, 376844
                  add          s5, t6, s1
                  ori          a7, sp, 953
                  srl          s5, s7, s3
                  sltiu        t5, s1, 500
                  xor          a0, s6, sp
                  auipc        a1, 216603
                  xor          zero, tp, s9
                  srl          a7, t6, s3
                  srli         s9, s7, 20
                  div          a2, s4, s2
                  remu         a6, a6, zero
                  ori          s5, a1, -15
                  sra          zero, a6, s10
                  and          s1, a0, zero
                  lui          s11, 850513
                  add          sp, a4, gp
                  divu         a7, s9, t2
                  remu         s10, a3, a6
                  mul          a4, sp, a2
                  xori         s8, t0, -1160
                  remu         s6, t3, t6
                  sltiu        t3, s11, 1146
                  auipc        a0, 300228
                  remu         s1, gp, t3
                  sra          s2, a5, s2
                  add          a7, a0, s2
                  rem          a2, a7, s8
                  slli         s2, a3, 12
                  or           sp, s11, s7
                  srai         a4, t3, 20
                  sub          t3, t6, s4
                  sra          ra, a4, t3
                  andi         ra, sp, 828
                  sltu         s6, t1, s0
                  xor          t4, t6, s8
                  slti         s9, a1, -1578
                  add          a7, a6, s4
                  mul          ra, a2, s5
                  mul          gp, s6, s0
                  sub          s11, zero, gp
                  sra          a0, a0, a3
                  slt          s2, s1, zero
                  ori          t3, a2, 975
                  slli         s0, s0, 26
                  sub          tp, a2, t5
                  and          s11, t5, t0
                  addi         t3, s10, -1095
                  mul          s1, gp, s1
                  addi         a7, s6, -163
                  slt          a4, t6, ra
                  sltiu        a2, s3, -381
                  rem          s9, s5, s7
                  xor          t5, a7, ra
                  auipc        sp, 1016731
                  xori         s8, a7, 1061
                  sll          ra, zero, s3
                  slli         a7, t2, 16
                  mulh         ra, t6, t3
                  mul          s10, ra, a5
                  srl          t4, a0, s2
                  divu         a2, t5, s5
                  sub          s0, s7, gp
                  mul          s2, a7, zero
                  mulh         a6, a7, s10
                  auipc        a5, 912116
                  divu         a7, s2, a0
                  slli         t1, s2, 6
                  rem          t4, a1, s0
                  slli         s2, s10, 15
                  auipc        s10, 883265
                  srli         s8, s3, 19
                  xori         s10, t0, 346
                  and          t1, a0, t5
                  rem          s6, a5, s7
                  srai         a6, s7, 18
                  or           tp, s7, s0
                  divu         s3, s11, a2
                  mulhu        a4, s3, t5
                  sub          tp, s10, t3
                  rem          tp, t5, t4
                  mulhu        t1, a2, s3
                  nop
                  remu         a6, a2, s5
                  srli         a6, a7, 14
                  nop
                  sra          s8, zero, a7
                  rem          t1, t1, s0
                  and          s1, s10, t2
                  mulh         a1, a0, t3
                  auipc        a4, 927460
                  slli         s0, a1, 8
                  rem          a6, s7, t1
                  and          s5, s6, a2
                  add          s1, s4, s10
                  slt          a4, s1, s9
                  sub          a2, a2, s8
                  lui          t4, 704787
                  xor          ra, t2, t5
                  xori         s3, s3, -1792
                  and          s5, a0, s2
                  slti         tp, a3, 595
                  addi         s10, s3, 201
                  rem          t3, t1, s0
                  add          a7, s11, a2
                  mul          s6, tp, s10
                  srli         t6, a1, 25
                  slli         a2, s3, 8
                  lui          s5, 41480
                  xori         a1, a3, 1307
                  remu         s3, a4, ra
                  sltu         s5, t3, a4
                  slli         t2, s10, 8
                  srai         t5, tp, 29
                  xor          t1, a2, t3
                  slt          ra, a1, s10
                  div          a7, a7, t4
                  div          s9, zero, tp
                  and          s3, s6, s0
                  srli         tp, t0, 17
                  sltu         s5, t4, a3
                  mulhu        a6, t1, a4
                  sltu         s10, s6, a4
                  mul          ra, a6, a0
                  divu         s2, ra, a4
                  rem          s2, t0, s1
                  rem          s7, s1, s10
                  sltu         s3, s10, t4
                  lui          a1, 505159
                  div          sp, gp, s8
                  mulhsu       s2, a6, a4
                  srl          a2, s5, t3
                  mulhu        zero, s8, s0
                  remu         tp, a5, sp
                  or           a0, t6, t1
                  remu         a6, s10, a2
                  or           sp, a3, s3
                  srai         gp, a7, 0
                  slti         a4, s1, 1606
                  xor          t1, s4, s8
                  slt          s8, s11, t2
                  divu         a1, s2, s4
                  add          a0, a5, t1
                  srai         s11, s10, 13
                  rem          tp, a1, t6
                  addi         s1, ra, 1560
                  divu         t2, a7, s8
                  rem          t1, s5, s2
                  slti         sp, a1, 622
                  srai         t4, a4, 13
                  addi         s5, s3, 757
                  remu         t5, zero, s4
                  slli         t5, s9, 23
                  srl          tp, a5, a5
                  slli         t6, zero, 12
                  xori         a4, s1, -1043
                  sltiu        a0, t3, -1714
                  sra          s1, zero, a5
                  addi         s5, gp, -1758
                  ori          a4, t1, -1037
                  sra          sp, s11, s4
                  nop
                  srli         gp, t5, 1
                  sra          t3, t1, t3
                  xori         s7, a6, -1454
                  rem          s5, a1, a3
                  srli         t2, s5, 5
                  mulhu        t2, s5, zero
                  srl          tp, a4, a6
                  sltiu        s11, s8, -1441
                  xori         a6, a3, -1005
                  rem          s3, s3, s7
                  mulhsu       s10, a3, t4
                  auipc        s10, 155921
                  sltu         s3, ra, a2
                  remu         a4, s0, t5
                  auipc        t3, 131357
                  andi         zero, s9, 52
                  xori         s8, a3, -928
                  slt          s7, s1, t3
                  sltiu        s3, s8, 1362
                  add          s0, s0, a0
                  lui          t2, 835398
                  slti         t6, s5, -799
                  slt          gp, ra, s0
                  srli         s2, sp, 19
                  andi         t2, s0, -1162
                  andi         s6, a6, 476
                  sll          a2, t1, t3
                  and          gp, s3, s2
                  div          s2, tp, tp
                  div          s6, t0, s7
                  mulh         s2, s4, s4
                  addi         s10, a7, 138
                  mulhu        s8, s3, s0
                  sll          a7, zero, s10
                  rem          s1, s3, a6
                  ori          a0, s11, -854
                  or           t3, a5, s9
                  auipc        s7, 766899
                  ori          t5, s6, -1704
                  sltiu        sp, a0, 798
                  srl          t5, t2, s1
                  andi         ra, s0, -1608
                  and          s5, ra, t4
                  and          ra, t4, t4
                  auipc        s10, 790375
                  slli         s9, s1, 18
                  or           tp, s4, s5
                  nop
                  divu         s11, t3, a5
                  xor          s11, a5, t1
                  xor          ra, s7, a5
                  lui          s1, 377788
                  auipc        s1, 107426
                  slt          s1, a4, t2
                  sll          gp, t0, s0
                  sltiu        s2, a2, 254
                  div          t2, t6, a6
                  divu         s5, s9, s0
                  nop
                  slli         gp, t5, 27
                  slli         s11, s2, 26
                  lui          s7, 466937
                  sltu         s0, t6, a1
                  sll          s2, gp, a7
                  add          tp, s11, a1
                  ori          s10, ra, 1882
                  xori         s7, a2, 832
                  mul          s3, a2, a3
                  slti         a7, t6, -1989
                  xori         t1, sp, -1123
                  nop
                  and          a5, a3, a6
                  sltiu        a4, t5, -1992
                  nop
                  sltiu        ra, a4, 1512
                  divu         s2, a1, t6
                  sll          s5, t1, s9
                  andi         t6, s0, 730
                  srli         ra, a1, 10
                  divu         a6, s2, t4
                  addi         a5, s6, 604
                  sub          tp, s3, t4
                  ori          a5, s7, 702
                  nop
                  ori          t3, a2, -1980
                  ori          s9, t1, 651
                  sub          a7, s9, t0
                  srl          s3, s8, a1
                  sltu         s9, s1, s0
                  sra          t6, s9, t1
                  div          s3, ra, s9
                  addi         ra, a1, -1571
                  divu         s7, s8, t2
                  divu         a2, a5, t5
                  xor          s0, gp, s11
                  sra          a0, t5, a2
                  divu         a4, t3, t2
                  addi         a4, s2, -1679
                  mulhu        t2, s0, a5
                  sltiu        s8, sp, 505
                  andi         a2, s7, 204
                  sub          s2, s6, t4
                  mul          s11, s5, a5
                  sub          t6, s8, s6
                  or           t4, tp, s11
                  xor          s5, t0, a0
                  srai         s6, s1, 31
                  or           a1, a0, s8
                  slti         s6, ra, 1261
                  rem          gp, s9, s2
                  divu         s7, gp, a5
                  sltu         tp, s3, s11
                  mul          t2, zero, t2
                  mul          t4, a6, ra
                  sll          sp, a3, a3
                  slt          s11, a0, a3
                  xor          t3, t0, zero
                  slti         s10, a1, -811
                  or           t3, s0, t1
                  srl          s2, s7, t4
                  mulhu        s6, t3, s4
                  mulhu        s0, a2, t0
                  sra          s1, a4, t3
                  lui          t6, 119831
                  mul          s5, s2, t3
                  xor          tp, s0, sp
                  ori          t4, a6, -1347
                  srli         t4, gp, 30
                  or           t2, s10, sp
                  div          ra, t0, s5
                  slti         s0, a1, 474
                  slti         s3, t5, 1401
                  andi         a5, s2, 623
                  mulh         tp, a6, s7
                  mulh         s1, s6, a4
                  sltu         t4, tp, s3
                  rem          s11, t1, s4
                  srai         s3, a0, 16
                  mulh         s7, s8, t1
                  slli         t3, t4, 31
                  sll          s5, ra, a7
                  remu         t3, gp, tp
                  srai         s0, s0, 8
                  remu         s1, a7, s8
                  srai         a2, t1, 27
                  auipc        s8, 560661
                  rem          sp, t1, s9
                  andi         s1, a6, -158
                  mul          ra, gp, s3
                  xor          a4, t3, s4
                  srl          s9, s11, a6
                  sll          t5, t5, s2
                  andi         s3, s4, -702
                  mulh         sp, a1, a4
                  mulhsu       s11, t2, a6
                  remu         t4, s0, a4
                  slt          a4, t6, s4
                  auipc        t2, 851063
                  divu         s2, a7, s1
                  ori          zero, a4, -1181
                  addi         s6, s2, 1968
                  ori          t3, s6, -373
                  ori          t4, s9, 262
                  ori          s1, s2, -1449
                  slt          a7, a6, s2
                  srli         tp, a2, 28
                  rem          s2, s6, s6
                  srai         a2, t1, 23
                  srl          s1, s3, s10
                  mulhsu       a4, tp, gp
                  slti         t2, s4, 1845
                  ori          gp, s1, 1756
                  remu         s5, s2, s4
                  srli         t2, a3, 6
                  slli         sp, a5, 21
                  sltu         a5, t0, a2
                  slt          a1, s3, s7
                  div          a7, ra, t4
                  slli         s0, t4, 8
                  lui          s3, 649349
                  nop
                  divu         s8, a1, s7
                  mulh         a0, s11, t4
                  srli         s9, s0, 12
                  addi         s5, a6, 433
                  sltiu        t3, a7, -1966
                  add          t6, s11, s7
                  mul          t1, t0, t3
                  slli         a4, s9, 27
                  divu         a4, s2, s5
                  srl          gp, a6, a3
                  mulhu        s10, ra, s8
                  divu         s3, t2, t5
                  div          zero, ra, a3
                  srai         s7, s7, 14
                  sub          t3, t4, s3
                  auipc        s1, 47610
                  and          s2, s6, s8
                  mul          zero, s2, a4
                  slt          s3, s11, t0
                  add          s2, tp, t3
                  srai         a4, a2, 27
                  andi         tp, s1, 2031
                  remu         gp, a3, s11
                  xori         s0, s3, -1325
                  add          a6, t0, s9
                  or           t3, s3, a0
                  xor          s5, s10, a6
                  lui          s5, 617860
                  div          t2, a3, a0
                  lui          tp, 835613
                  addi         gp, ra, -389
                  lui          s3, 614932
                  sll          t5, s5, s9
                  lui          s3, 1024474
                  sltiu        a2, t2, 371
                  or           s8, t4, t3
                  or           t6, a0, s10
                  addi         zero, a1, -589
                  mulhsu       s5, t4, a4
                  rem          a5, a2, t3
                  divu         ra, s2, t3
                  slli         gp, tp, 5
                  srl          t2, s3, s6
                  sltu         a5, s9, s6
                  auipc        tp, 115354
                  sub          s0, gp, a3
                  nop
                  mul          s3, s1, s6
                  sub          s1, a5, sp
                  xor          s10, tp, a5
                  rem          a7, a6, s3
                  srai         s9, s1, 30
                  srai         a4, t0, 25
                  auipc        t5, 354615
                  mulhu        s9, a2, ra
                  remu         t5, s4, t1
                  sra          s11, a1, a0
                  slti         sp, s3, 1952
                  sll          s10, s8, s2
                  xori         s9, ra, 116
                  sltu         gp, s8, a1
                  add          a4, t3, s8
                  rem          s5, a7, s1
                  auipc        t2, 875048
                  sltu         s0, a5, s3
                  addi         a5, s1, -62
                  mulhsu       a5, s2, tp
                  slli         s5, a3, 7
                  srli         s9, s4, 20
                  mulhu        t3, t5, a6
                  sltu         a5, t1, s2
                  sll          s1, t6, s0
                  nop
                  xor          s5, t5, t6
                  remu         s8, ra, tp
                  addi         gp, s8, -1025
                  mulhu        tp, tp, sp
                  slti         sp, s9, -1591
                  slt          a6, t4, a3
                  slti         t4, a7, -1749
                  andi         s2, a4, -147
                  sll          a1, gp, tp
                  srli         s5, gp, 15
                  mul          a2, t3, t5
                  divu         s8, a2, t0
                  lui          s9, 982254
                  auipc        a6, 242374
                  sub          zero, s3, sp
                  divu         t3, a6, s10
                  mulh         a4, tp, s0
                  mulhu        ra, t6, ra
                  remu         s9, sp, zero
                  slt          s5, s4, t3
                  xori         a4, a1, -224
                  mulh         a1, s3, zero
                  xori         a7, t6, 1302
                  mulhsu       s3, a0, s4
                  slli         s11, s5, 22
                  sub          a5, s7, tp
                  ori          s5, a5, 690
                  mulh         s1, t3, s7
                  sltu         t5, a2, s3
                  srai         a0, s9, 20
                  auipc        s5, 139851
                  addi         s10, t0, -1649
                  slt          s11, a2, s6
                  mulhsu       a0, s9, s3
                  and          s2, t6, s8
                  mulhsu       s7, s10, t6
                  sub          t1, t5, a1
                  and          s5, t4, s9
                  sltu         s2, s10, t1
                  slt          zero, zero, s0
                  sra          t4, a2, gp
                  sll          s10, a5, t6
                  nop
                  ori          s7, t6, 1340
                  srli         t4, tp, 30
                  slti         a2, s9, -916
                  or           t1, s3, s4
                  ori          t3, s0, -611
                  andi         s0, s9, 1662
                  xor          a1, s1, a0
                  slt          a7, t0, s5
                  sra          t6, a0, s5
                  xori         tp, s7, -878
                  remu         zero, zero, s4
                  mulh         gp, t5, zero
                  remu         t3, t2, ra
                  sra          t4, s3, s10
                  srai         sp, s5, 13
                  remu         s11, a1, a5
                  slti         tp, ra, 491
                  lui          t3, 764934
                  srai         s6, s9, 13
                  slti         t2, a4, 1624
                  or           a6, t1, tp
                  sltiu        t6, s2, -1050
                  sub          a1, s9, ra
                  mulhu        s3, a4, t4
                  and          a7, t1, s11
                  div          s11, t0, t1
                  mulhu        s10, a3, s10
                  xor          s2, a6, s8
                  remu         s9, s6, a2
                  sra          t1, s5, a2
                  mulh         ra, zero, tp
                  slli         a5, s9, 29
                  mulhu        a5, s4, s6
                  slt          gp, t2, t6
                  mulhsu       a2, s2, s10
                  mul          sp, s10, s4
                  sltu         a2, t1, a5
                  sltiu        tp, t1, 1092
                  srl          a2, a6, s4
                  srli         zero, t4, 27
                  xor          a6, gp, a2
                  slli         a4, t2, 22
                  rem          a2, a4, a7
                  auipc        a0, 699521
                  sub          a6, s0, a5
                  sltiu        s6, s10, -904
                  sltu         ra, a4, a6
                  ori          s1, tp, -1304
                  sra          s7, t1, a1
                  mulh         tp, s11, sp
                  mul          s6, s0, s10
                  add          a1, a3, s11
                  or           t2, s9, s5
                  slli         gp, a7, 24
                  mulh         s7, t6, t0
                  ori          a5, sp, 1235
                  ori          t6, s4, 115
                  mulh         ra, t0, s4
                  sltiu        a4, s9, 2032
                  sra          s7, s11, s7
                  addi         t5, s6, -937
                  andi         t3, s0, -1268
                  div          s1, t5, s2
                  mulhsu       t2, a4, a6
                  sll          ra, s0, a4
                  ori          s11, a1, 1515
                  auipc        s9, 527602
                  xor          s6, t0, a4
                  srli         a2, s4, 28
                  slli         zero, zero, 31
                  sra          s0, s2, a1
                  and          ra, t5, a0
                  mulh         s8, s5, s5
                  mulhsu       s1, s3, s6
                  mul          a4, a6, t0
                  remu         t1, s5, a7
                  slli         s5, s1, 14
                  or           a5, t5, ra
                  addi         s1, gp, 1299
                  or           s2, a5, t5
                  sra          s5, t5, s6
                  rem          a6, a7, s11
                  divu         a2, zero, zero
                  srai         s7, s0, 25
                  auipc        t3, 992943
                  mulhu        ra, s1, s1
                  auipc        s1, 335685
                  mulhsu       s7, s9, t6
                  andi         t2, s7, -1847
                  srl          a6, t0, t4
                  remu         a6, s0, s11
                  slti         t1, t5, 1793
                  sltiu        zero, a0, 1757
                  slt          t4, s8, ra
                  sltiu        t1, s8, -1373
                  sltiu        s5, a5, -138
                  div          a7, t5, t5
                  slti         s2, s8, 1018
                  divu         a5, t6, s4
                  slti         s6, a4, 1122
                  xor          s6, t3, a7
                  slt          ra, t5, s0
                  xor          s7, s10, zero
                  slti         s3, t6, -965
                  auipc        s10, 350939
                  slli         t6, ra, 16
                  xor          a0, s10, a4
                  slt          a5, s11, a2
                  slt          s11, s5, tp
                  slti         tp, s4, -364
                  srli         s3, a0, 10
                  sltiu        s5, s1, -1907
                  remu         a0, t2, a2
                  auipc        a0, 493459
                  auipc        a6, 1127
                  slli         t2, s8, 18
                  mul          s9, s9, zero
                  divu         tp, s1, a4
                  divu         t2, a1, a5
                  auipc        a6, 1007344
                  srli         t2, a6, 2
                  slli         s2, s8, 0
                  sltu         s0, a3, zero
                  sub          s10, t3, tp
                  mulhu        a5, s5, t4
                  auipc        s0, 977994
                  xori         s11, t6, -1967
                  divu         a5, s8, s9
                  slti         s3, sp, -708
                  divu         t5, s2, s6
                  slti         a6, a5, -203
                  sltiu        s9, s6, 142
                  add          t6, s10, a5
                  remu         s1, a1, a7
                  auipc        s6, 563758
                  sra          s11, a1, t1
                  xor          a4, a4, a2
                  xor          sp, a3, a5
                  sltiu        a0, t3, -1970
                  sub          sp, t5, s0
                  sra          tp, t1, t0
                  divu         s6, t3, s9
                  auipc        s10, 378735
                  slt          sp, a2, a2
                  mul          t6, s0, t4
                  xori         gp, a1, -17
                  srl          s2, t6, s7
                  addi         s1, t5, 1929
                  andi         s2, s6, 291
                  sub          t2, a2, s0
                  remu         a5, a1, s10
                  sra          s6, s2, a2
                  lui          a4, 382605
                  mulhsu       tp, t5, t0
                  andi         s8, a5, -535
                  and          s8, t6, zero
                  rem          s7, zero, t1
                  div          a4, t4, t1
                  srli         sp, t3, 2
                  andi         sp, s11, -889
                  sll          t6, t2, a3
                  remu         s10, a1, s11
                  xori         zero, a3, -607
                  mulhsu       a0, s7, a4
                  slli         s11, s4, 15
                  slt          a4, t1, s3
                  sra          ra, a1, a5
                  add          s1, t4, s9
                  sra          s10, s8, t2
                  srai         t6, a7, 15
                  ori          s11, t4, 1830
                  ori          a2, s11, 1834
                  sub          a2, zero, a0
                  andi         s6, s2, 802
                  rem          s5, t1, a3
                  slli         a0, t4, 29
                  lui          s6, 405212
                  xor          a2, s3, s0
                  srl          s8, a1, a4
                  add          s9, tp, a2
                  srli         t3, s8, 21
                  or           t6, t2, ra
                  srai         s3, s1, 17
                  or           a4, s1, a1
                  sub          t3, t6, a1
                  auipc        s11, 930044
                  sub          s2, tp, a3
                  mulhsu       sp, t3, zero
                  rem          t1, t1, s6
                  sll          t2, t2, s2
                  slt          s6, a1, t3
                  ori          t2, a5, -1356
                  addi         s8, s7, -127
                  rem          a7, tp, a4
                  remu         a6, s8, s4
                  nop
                  mulh         a0, zero, s2
                  div          a5, t1, tp
                  remu         s5, s6, a0
                  mulhsu       tp, t4, a6
                  sltu         a5, s6, t3
                  mulhsu       t4, tp, a6
                  ori          s7, t5, -2014
                  xor          s1, s2, t6
                  slli         a1, t6, 18
                  xori         s11, zero, -1804
                  and          s8, a3, s4
                  sra          s8, s8, s1
                  and          a7, a5, s9
                  srl          a6, a5, s1
                  srl          ra, t6, a5
                  and          t1, s6, s10
                  lui          t4, 998330
                  slt          a7, a4, a1
                  andi         s1, a2, 2013
                  sub          gp, a3, gp
                  slt          a1, a0, s8
                  sll          s10, ra, a7
                  slti         a1, zero, 331
                  srai         a5, t4, 5
                  div          a0, t1, gp
                  xor          s2, a6, s6
                  lui          t6, 454778
                  and          sp, t5, t6
                  sub          a0, s0, a5
                  xori         ra, s3, 1835
                  divu         a7, s11, t0
                  xor          s3, s5, a2
                  mulhsu       ra, s4, t2
                  sll          s9, s3, a0
                  slt          s9, s4, s7
                  add          tp, a4, a4
                  addi         s9, a0, -1405
                  div          s11, a3, a7
                  slli         t5, a3, 12
                  srai         s7, a2, 27
                  addi         s2, t5, -1828
                  srai         s1, s7, 4
                  mulh         s3, a0, s8
                  rem          t5, s9, a5
                  sltu         s10, a0, a4
                  srli         t1, a5, 9
                  addi         a1, t3, -1625
                  sltiu        t3, t5, 2038
                  mulh         tp, a6, sp
                  divu         s7, a4, a0
                  slt          zero, a1, a3
                  mulhu        a0, a4, t3
                  sll          s2, s6, a6
                  sll          ra, a7, a1
                  sltu         t4, a4, s2
                  nop
                  auipc        t1, 86725
                  remu         t2, s8, sp
                  div          sp, a5, t4
                  div          s1, t4, t5
                  nop
                  remu         tp, s1, s8
                  add          s1, s5, a4
                  srai         s0, t6, 30
                  sll          t3, t4, s2
                  auipc        s11, 722093
                  and          a5, t3, t2
                  srai         a6, t0, 26
                  divu         gp, s5, s10
                  sra          s5, a7, ra
                  sub          a7, gp, sp
                  slt          a6, sp, a1
                  srl          zero, a4, t0
                  slli         s5, sp, 21
                  andi         s10, zero, 585
                  mulh         t3, a3, a0
                  mul          s8, s5, t3
                  mulh         s10, zero, zero
                  ori          s5, sp, 1165
                  and          t4, s11, a3
                  sra          t6, s4, s4
                  div          s3, s5, ra
                  nop
                  div          sp, t5, t4
                  nop
                  sub          t4, t2, t3
                  sltiu        tp, s11, -571
                  or           t2, s7, s8
                  addi         ra, s7, -1501
                  addi         s6, s8, 26
                  mulhu        a4, s3, a2
                  addi         s8, s8, 915
                  auipc        s6, 560181
                  srai         a1, s3, 22
                  slti         s7, t5, 362
                  slli         t6, t2, 2
                  ori          a0, t5, -146
                  mulh         a0, s4, gp
                  nop
                  div          s5, s9, s2
                  sltiu        t4, s0, -1302
                  nop
                  sltu         t3, s6, gp
                  mulhsu       a1, a4, s4
                  auipc        zero, 241363
                  srai         s7, s4, 18
                  srli         a1, a0, 4
                  sltiu        tp, s0, -1391
                  and          t6, a1, t2
                  slt          tp, s9, s6
                  andi         t4, s9, 1944
                  addi         a0, s7, -210
                  srai         s2, t4, 4
                  mulhu        t1, sp, tp
                  sltu         a2, t0, s7
                  auipc        s8, 584485
                  xor          s5, a3, gp
                  auipc        s2, 416604
                  divu         a1, s10, t5
                  rem          a6, s10, s6
                  sltiu        s7, a3, 14
                  andi         s2, a3, -1218
                  mulhsu       ra, zero, t4
                  divu         t2, a5, s10
                  slt          tp, sp, a4
                  sra          s1, t6, t0
                  add          s3, s10, sp
                  rem          t4, a0, t3
                  andi         t4, t6, -458
                  srai         a4, t2, 20
                  sltu         zero, s4, a3
                  srli         ra, s3, 17
                  or           a2, sp, s11
                  addi         t2, s8, -541
                  slti         s1, a5, -5
                  divu         gp, t2, s7
                  sltu         gp, a0, s10
                  auipc        t5, 677941
                  nop
                  sub          gp, s6, s0
                  sltiu        s8, s5, -1971
                  or           zero, t3, s6
                  andi         s5, a4, 1977
                  sll          a4, s9, s10
                  slli         zero, s4, 21
                  sra          gp, t5, s9
                  srl          a4, t5, s3
                  sltu         zero, gp, t1
                  andi         t3, s9, -749
                  auipc        s11, 493789
                  mulh         t6, tp, ra
                  sltiu        s11, t4, -236
                  srl          s8, s1, s3
                  mul          a4, s7, s7
                  xor          a4, s10, s0
                  slt          a5, ra, sp
                  mulh         ra, s10, tp
                  or           gp, a0, s6
                  and          a6, s9, s6
                  lui          t5, 340255
                  sltu         sp, a0, s6
                  divu         s6, sp, ra
                  mulhu        a5, gp, s0
                  mulh         a2, s5, a7
                  auipc        sp, 925671
                  addi         s1, sp, -1612
                  rem          s6, gp, s0
                  sltu         s11, s11, s3
                  mulhu        s3, s5, a0
                  slti         s11, s8, -159
                  ori          t5, ra, -1458
                  srli         s2, t5, 1
                  nop
                  srli         s9, ra, 13
                  addi         t3, s8, 1938
                  divu         s10, a4, s1
                  sra          a4, t1, a3
                  slli         s0, t5, 0
                  remu         s2, s0, a6
                  rem          s3, zero, t2
                  sub          t4, a6, zero
                  srai         s9, t0, 1
                  remu         t6, a6, a3
                  mulhu        t4, s2, gp
                  andi         s3, t4, 800
                  sra          t5, s11, t1
                  mulh         t6, a2, t3
                  slli         s2, s3, 27
                  rem          a0, a4, s8
                  mulhsu       tp, s5, tp
                  or           tp, a0, t2
                  mul          sp, s5, a3
                  mulh         a2, tp, s9
                  srl          a4, s10, a4
                  srli         t1, a6, 22
                  sra          s2, s3, a7
                  xori         a5, s10, -800
                  slti         s1, zero, 1910
                  addi         t4, s0, -280
                  srl          t1, s0, s1
                  remu         ra, t3, s8
                  xor          s7, s1, a2
                  and          a1, sp, a6
                  sub          a0, a3, s11
                  and          s9, a6, s8
                  lui          ra, 535774
                  slti         t3, t6, -254
                  lui          s5, 850960
                  and          a0, t6, sp
                  div          s2, t0, t5
                  mulhsu       gp, s2, t5
                  remu         s2, t6, ra
                  slli         s0, gp, 5
                  rem          a2, a0, s9
                  and          a7, t4, a0
                  srai         s1, t6, 29
                  sra          a7, ra, s0
                  addi         a2, t1, 1962
                  div          a4, a2, sp
                  nop
                  nop
                  mulh         s6, s2, sp
                  remu         zero, s2, sp
                  srl          a7, a4, a1
                  sub          s0, t2, t1
                  sltu         a0, zero, s9
                  srl          ra, s2, zero
                  lui          s9, 258516
                  srl          ra, s5, s10
                  or           s0, t3, s5
                  ori          zero, s0, -1918
                  mulh         s10, s5, t4
                  srli         a0, zero, 29
                  lui          t6, 900073
                  mulh         s5, t3, zero
                  ori          a6, t2, 2043
                  slt          s8, s7, s8
                  xori         t3, a5, 1961
                  sub          s1, a3, sp
                  or           s5, a6, s11
                  xori         t2, t0, 1273
                  lui          sp, 191590
                  srl          t5, s1, t5
                  srli         s2, a2, 15
                  xori         ra, s3, -1391
                  and          s8, ra, s11
                  mul          t5, s10, a1
                  srli         s1, t6, 29
                  ori          a0, t4, 491
                  mul          t4, t2, t4
                  sltiu        zero, gp, -176
                  or           t2, t6, s6
                  rem          a6, s3, t1
                  rem          s8, t3, s7
                  or           s3, s10, t2
                  rem          s9, s0, s0
                  sra          zero, s1, s4
                  lui          t3, 146071
                  ori          s3, s7, 1918
                  srli         s7, s7, 29
                  slli         a7, ra, 1
                  slti         s7, zero, -1495
                  lui          s7, 4447
                  sltiu        zero, t0, 1583
                  slli         tp, tp, 26
                  or           t3, s2, zero
                  srai         a6, a2, 23
                  divu         t1, s4, s6
                  nop
                  sub          a5, s0, a5
                  mulhu        t4, s1, a0
                  mulhsu       a5, t5, t1
                  mulhu        s5, t5, s1
                  auipc        a5, 73066
                  mulhsu       a6, t5, zero
                  add          s7, s9, a5
                  and          s7, a1, s9
                  sltu         t5, t4, sp
                  auipc        s0, 879192
                  ori          s6, s9, -927
                  auipc        s0, 700422
                  xori         a2, s2, -208
                  auipc        sp, 631667
                  sltu         s2, a1, s11
                  lui          a6, 468714
                  mulh         t2, t1, t6
                  slli         a6, s11, 22
                  add          a2, s0, a2
                  rem          t6, a3, s6
                  and          s3, ra, a2
                  sltiu        t6, t0, -1358
                  andi         s5, t0, -227
                  auipc        s11, 573787
                  srl          t3, s7, tp
                  and          a2, zero, t6
                  mulhsu       t6, gp, t6
                  remu         t4, s7, t4
                  remu         s5, s2, t5
                  srai         a7, s9, 13
                  mulhsu       a1, t5, t3
                  ori          t2, s4, -51
                  sltiu        t2, t6, -1914
                  addi         s10, s0, 1032
                  remu         ra, s2, a0
                  nop
                  slt          tp, s10, s6
                  div          a6, s10, s5
                  divu         s3, t5, t3
                  nop
                  mul          s10, s0, a2
                  slti         t5, s7, -1437
                  srai         a7, s3, 16
                  mulhsu       s0, s1, a7
                  remu         s11, a2, s11
                  srai         s1, t4, 11
                  ori          s11, a4, -771
                  slli         s10, t6, 20
                  addi         s1, t0, -462
                  sltu         a4, t1, s4
                  srai         a1, t0, 7
                  divu         s5, gp, a0
                  slti         a0, s3, -1957
                  nop
                  sltu         a6, gp, a1
                  addi         a7, s4, 851
                  and          a2, s10, t4
                  sll          ra, s0, s7
                  and          t6, a3, s10
                  ori          a5, t1, -933
                  lui          s2, 101246
                  andi         t3, a2, 633
                  sltu         s8, t2, a5
                  div          tp, s4, s8
                  xori         a1, ra, 319
                  andi         s5, a6, -661
                  slli         a1, t1, 24
                  divu         a6, s2, t6
                  mulhsu       zero, s3, a4
                  sltu         t3, t2, tp
                  mulhsu       a6, gp, s6
                  andi         s10, gp, 405
                  xori         tp, a0, -1866
                  mulh         a6, t0, t5
                  slli         tp, a7, 27
                  slti         s10, s4, -1832
                  addi         ra, a0, 1639
                  sltiu        a5, s11, 1902
                  or           t2, s3, s11
                  slti         t3, s7, 1290
                  slt          s3, t6, a1
                  divu         sp, a4, s0
                  slli         s3, s8, 18
                  auipc        s5, 1000757
                  srl          a5, s7, s1
                  srli         t2, a6, 21
                  or           s0, t1, a1
                  slli         s10, a5, 16
                  add          s2, t2, gp
                  addi         a0, a1, -729
                  mulh         s5, s0, zero
                  or           t3, a7, t5
                  mulh         s5, a2, s1
                  sll          s11, a3, t1
                  remu         t2, a1, s6
                  mulhsu       s9, a7, s10
                  remu         s0, a2, t5
                  srai         a5, zero, 28
                  div          a1, s6, t6
                  xori         t4, a2, -1209
                  sltiu        s10, s3, -163
                  divu         a5, a6, s8
                  sra          s7, s2, zero
                  xor          a4, t1, tp
                  mulhsu       s2, t5, ra
                  andi         s10, a6, 1029
                  srl          s9, zero, a6
                  div          t2, s3, gp
                  slt          zero, tp, s9
                  slt          s2, a5, s0
                  sra          s2, t1, s1
                  rem          a4, gp, s9
                  srli         s1, s1, 10
                  xor          s11, s10, s2
                  mulhsu       t5, a4, s3
                  srli         t1, t4, 15
                  mulh         t4, t5, a1
                  auipc        a1, 533722
                  slli         t2, s9, 17
                  or           a2, s6, a4
                  srl          s9, t0, tp
                  sll          s9, a4, s9
                  remu         ra, gp, tp
                  srl          tp, sp, s4
                  xori         s11, s2, 1327
                  lui          gp, 194837
                  srl          t3, tp, s7
                  srai         t5, ra, 1
                  mul          s5, a4, t4
                  mulhu        s11, t3, t1
                  rem          s8, a2, a2
                  mulh         s11, a1, t2
                  auipc        s2, 148783
                  rem          s6, a1, s9
                  mul          s7, s7, t1
                  slti         t2, a5, 1050
                  andi         a6, s3, -1761
                  sll          a7, gp, t5
                  slti         ra, gp, 524
                  nop
                  mul          t1, s0, s3
                  nop
                  andi         ra, ra, 1010
                  srai         s7, s0, 28
                  and          s6, t0, s0
                  xori         sp, a0, 1458
                  lui          gp, 25563
                  rem          a1, t2, t4
                  div          ra, a3, s0
                  remu         s9, t0, s0
                  xor          zero, s2, s3
                  mulhu        t1, s0, s3
                  srai         sp, a1, 25
                  srai         a2, s7, 7
                  mulhu        t5, s10, ra
                  andi         a7, s11, 189
                  xori         t5, a1, -577
                  and          t4, a3, gp
                  lui          t2, 684056
                  sltiu        a2, s1, 382
                  nop
                  mulhsu       s2, s6, s5
                  andi         s1, t2, -1163
                  and          s5, tp, s7
                  mulh         a4, s3, s11
                  ori          t5, s3, 210
                  mul          gp, t3, s4
                  sltiu        s10, s8, 1376
                  mulhsu       a1, a6, s3
                  mulhu        s8, ra, a2
                  mulhu        s9, a3, a4
                  srli         tp, zero, 0
                  slt          t3, s8, a5
                  lui          s3, 311225
                  mulh         t5, t1, t1
                  sltu         a1, s3, t1
                  lui          s7, 540918
                  mul          s6, s7, s0
                  lui          a0, 743777
                  xor          a1, s5, a6
                  slli         zero, s2, 8
                  auipc        s5, 402184
                  sltu         t2, s10, t6
                  div          s3, t1, s10
                  slt          sp, t1, sp
                  sra          s8, a7, t1
                  slti         a7, a6, 1722
                  nop
                  rem          s11, ra, a6
                  xori         a5, s11, 1890
                  div          zero, a5, a6
                  mulhsu       a0, t6, s4
                  mulhu        s9, t0, t1
                  mulh         s3, tp, t6
                  and          s3, s6, a7
                  sra          s10, s11, t6
                  sub          s5, t3, s11
                  or           t4, a0, a1
                  srai         t6, t6, 3
                  lui          sp, 807330
                  sltu         t1, s3, a2
                  div          a5, gp, t6
                  slli         a0, s3, 22
                  slti         t5, a7, -916
                  sra          s2, a2, a4
                  addi         sp, s3, -803
                  add          t4, a1, a1
                  sra          zero, s7, t1
                  andi         a5, s3, 556
                  add          s5, s10, a1
                  ori          s5, tp, -946
                  xori         gp, s3, 1516
                  mulhsu       sp, s9, a2
                  mulhsu       a2, s3, t2
                  slti         s0, t0, -1924
                  ori          s3, t0, -678
                  slti         s1, a2, 670
                  srli         t2, s5, 26
                  mulh         tp, s3, t3
                  mulhu        t2, s9, s3
                  sll          t3, sp, a7
                  auipc        s1, 515332
                  slt          s3, t5, t6
                  sub          s9, s9, a7
                  mulhu        s5, a4, s11
                  slli         t4, a4, 29
                  srl          s5, s9, s3
                  and          t2, t6, t4
                  ori          sp, s10, -276
                  lui          s1, 876852
                  ori          s0, a6, -726
                  remu         a4, t1, s1
                  remu         t2, s9, t0
                  nop
                  auipc        s6, 508248
                  sltu         ra, a4, zero
                  srl          gp, a2, s0
                  add          s0, s9, ra
                  mulh         ra, t2, s1
                  mul          t1, zero, sp
                  andi         t3, t0, -1075
                  or           t3, a7, s5
                  nop
                  xori         a2, t2, 271
                  mul          t2, t3, t6
                  srai         s3, s3, 21
                  mulh         gp, s1, s4
                  add          sp, s5, t5
                  srai         a6, s0, 13
                  sltiu        a0, t4, -1604
                  ori          s6, s7, 871
                  sub          t6, s11, a1
                  sra          s1, t5, sp
                  sltu         a5, t2, a5
                  addi         gp, gp, -1634
                  sltu         t1, s0, tp
                  ori          zero, zero, 1525
                  slti         a2, zero, -1270
                  srai         a6, t5, 23
                  rem          a5, s0, t5
                  auipc        gp, 701287
                  remu         s9, zero, a2
                  auipc        t2, 315034
                  mulhu        s11, s8, t3
                  sltu         t4, t6, t2
                  slti         s6, t2, 939
                  or           a7, s1, t6
                  srl          s11, ra, s1
                  mul          tp, a7, a6
                  sltiu        s8, s11, -377
                  slt          s1, s11, a0
                  mulh         s8, s3, s10
                  sll          s10, a0, s7
                  nop
                  srli         a5, t5, 16
                  addi         t5, t6, -1871
                  sra          a7, a0, s8
                  sra          t1, zero, t4
                  srli         s6, a4, 22
                  lui          a1, 94281
                  slli         a6, s11, 1
                  xori         s2, s1, -1902
                  sltiu        s8, a5, -304
                  and          t4, s0, t6
                  add          t2, a1, s1
                  srl          a5, t3, t3
                  mulh         s11, s4, t5
                  slti         s11, s0, -1213
                  srl          t5, t0, s11
                  sltiu        t5, t0, 1624
                  mulhsu       s8, a6, sp
                  nop
                  divu         s0, ra, s9
                  srai         t4, tp, 29
                  srl          t3, s5, a2
                  divu         a7, s9, t0
                  or           a6, s3, s6
                  nop
                  srl          t6, a0, s8
                  sltu         s1, tp, s2
                  or           s2, a6, s11
                  mulhu        s6, a7, s3
                  slt          s3, s4, s7
                  sltu         t4, t0, t4
                  mulhsu       s11, s5, a2
                  xori         a7, t0, -88
                  slti         a5, s1, 1007
                  nop
                  srl          s1, s8, a0
                  sra          sp, a6, s5
                  ori          s6, gp, -86
                  remu         a1, gp, a4
                  sra          s7, s2, s9
                  xor          tp, s4, s0
                  srl          t2, sp, a3
                  xori         tp, a6, 651
                  add          s8, t6, a1
                  and          s3, s7, a3
                  add          s9, t4, a2
                  div          s11, a2, t4
                  mulh         s6, ra, t2
                  slli         t5, s3, 20
                  mul          s5, t0, t1
                  nop
                  lui          a5, 42858
                  sltu         s3, s6, gp
                  mul          sp, a0, s11
                  srl          sp, ra, zero
                  slli         s2, a0, 25
                  slt          s11, s7, zero
                  mulhsu       s2, a7, ra
                  andi         t5, a1, -644
                  ori          a6, t3, -1397
                  mul          t6, s3, a7
                  xori         a5, t3, 440
                  ori          a4, s8, -853
                  srai         gp, s4, 21
                  mulh         tp, s5, s0
                  mul          a5, a6, s3
                  slt          a6, a2, a6
                  divu         a5, s8, t5
                  sltu         a2, s5, gp
                  slt          s2, s3, t3
                  mul          t4, s7, tp
                  mul          sp, t6, a5
                  add          a0, zero, s5
                  auipc        gp, 725087
                  addi         t4, t5, 720
                  div          tp, a5, s1
                  srai         a2, s0, 19
                  sltiu        s6, a7, -904
                  mulh         a7, s3, t4
                  srli         a1, s9, 19
                  lui          tp, 175741
                  lui          a6, 471643
                  slt          s10, s9, s11
                  xori         s7, tp, -618
                  srli         s0, a6, 24
                  rem          s11, s8, gp
                  slli         s9, s8, 21
                  ori          a5, sp, 201
                  lui          a4, 180680
                  xor          a4, s3, a7
                  mulhu        sp, t6, a0
                  slti         t2, a2, -141
                  andi         a1, t3, -163
                  nop
                  mul          s11, s4, a3
                  slti         s7, t2, -1295
                  mulhu        t4, t2, a6
                  mul          t1, ra, t6
                  add          t6, s8, s3
                  rem          t4, t1, t1
                  ori          s0, a3, 1869
                  and          s0, t2, sp
                  andi         t3, a5, 1130
                  rem          s6, s1, s11
                  sltu         t2, s1, a4
                  sltiu        s0, s1, -91
                  andi         s7, t0, 875
                  xori         t1, a1, -199
                  remu         ra, t4, t6
                  addi         s3, a2, -757
                  sltu         s7, t3, a7
                  slt          zero, a0, ra
                  xori         a0, s0, 1131
                  rem          ra, s5, t3
                  or           a5, a3, a6
                  add          zero, ra, tp
                  mulh         tp, zero, ra
                  or           s7, gp, s3
                  nop
                  sra          a6, s10, a2
                  nop
                  slti         a0, s4, -32
                  slli         t5, s7, 21
                  mulhsu       t3, t4, a6
                  divu         a0, s8, a7
                  nop
                  andi         a4, s10, 812
                  mulhu        s9, t6, tp
                  or           t2, a5, tp
                  sltiu        t4, a4, -1143
                  slt          s7, a7, a7
                  nop
                  sltu         s6, t5, s8
                  slli         t1, s11, 5
                  mulh         gp, s7, t1
                  slti         gp, t6, -1033
                  slli         s9, a6, 27
                  rem          s2, t1, s7
                  slli         a7, s9, 19
                  and          t4, s2, a5
                  addi         s3, t5, -1270
                  mulh         t2, zero, a7
                  divu         s6, a1, t2
                  and          s10, s0, t2
                  xori         s9, s7, 1692
                  div          s3, s10, t4
                  xor          t2, a3, a7
                  mul          t5, ra, t3
                  remu         tp, sp, a6
                  ori          a7, a4, -352
                  srli         a0, tp, 22
                  or           a1, t1, s11
                  sub          s3, s6, s5
                  mul          a7, sp, s0
                  xor          s5, t4, s9
                  sll          s6, s8, zero
                  andi         t3, s7, 461
                  sltu         t4, s5, a5
                  sub          zero, sp, t4
                  addi         sp, s1, 1943
                  mulh         tp, s9, s11
                  add          a0, t2, s5
                  rem          ra, s3, s7
                  and          a7, s3, a5
                  remu         s7, t3, s5
                  remu         zero, s7, ra
                  ori          a1, s6, -1336
                  mulhu        a0, a0, s2
                  sub          a6, a3, s1
                  div          sp, a4, t5
                  remu         a6, gp, sp
                  remu         gp, s10, s9
                  mulhu        s11, t5, t6
                  divu         s3, gp, a0
                  xori         gp, a6, 1354
                  srl          s8, s6, t1
                  divu         s11, a0, s11
                  addi         s10, t0, -1517
                  slli         t5, a5, 17
                  lui          a4, 610916
                  mulh         s9, a5, sp
                  mulhu        s10, s2, gp
                  sra          t1, t3, s4
                  lui          a2, 742056
                  div          s2, t6, sp
                  andi         s8, t4, 1540
                  slli         s10, s8, 14
                  xor          sp, s5, tp
                  slli         ra, s11, 31
                  rem          s11, t5, s0
                  slti         t5, a2, 1059
                  srai         t4, gp, 4
                  div          a4, a0, t3
                  auipc        s7, 123696
                  add          tp, t1, t4
                  slli         s0, a1, 12
                  sltu         gp, a7, t2
                  mulhsu       a0, ra, ra
                  auipc        a7, 46916
                  slti         sp, a5, 1693
                  mulhu        s7, t1, s4
                  or           t3, gp, t0
                  srai         s1, s5, 25
                  srli         s0, a0, 26
                  or           s5, t1, a1
                  or           gp, s0, s2
                  xori         s9, a2, 579
                  slti         a7, gp, -1784
                  and          s8, s0, a2
                  nop
                  or           a1, a7, gp
                  slti         t5, a5, 1589
                  srai         t5, tp, 11
                  slti         s11, a4, 1266
                  mulhu        s11, t3, t2
                  lui          a1, 473029
                  srli         sp, t5, 13
                  sll          zero, gp, a2
                  ori          s1, a0, -276
                  sltu         s1, a0, s4
                  sltu         t4, t0, a7
                  ori          tp, a0, -2004
                  slli         s11, a5, 20
                  remu         s6, tp, gp
                  mulh         s1, t1, t2
                  ori          t1, t2, -436
                  auipc        a6, 881014
                  xori         sp, a1, -1875
                  rem          gp, t1, a4
                  ori          a2, t2, 16
                  auipc        tp, 459168
                  xori         zero, a3, -1936
                  rem          t6, zero, s5
                  lui          s1, 387570
                  add          t4, s6, a4
                  mul          a5, a6, s3
                  nop
                  sub          gp, a4, a6
                  slt          t2, s3, sp
                  xor          tp, tp, a1
                  srai         a2, ra, 27
                  andi         a6, tp, -1336
                  or           a0, s9, t1
                  mulhsu       a4, s8, s1
                  srli         s8, t2, 7
                  sra          s11, s8, t3
                  lui          s9, 360775
                  andi         a7, s10, 1334
                  div          gp, s4, a2
                  mulhsu       t5, a4, s8
                  divu         gp, s4, s8
                  mulhsu       s9, s9, tp
                  srai         s3, t0, 28
                  andi         a4, t4, 700
                  nop
                  lui          s0, 791667
                  mulhu        a5, s4, gp
                  sltu         s1, s3, s2
                  and          t2, s9, s0
                  xori         s8, a7, 16
                  div          s2, a5, t3
                  auipc        a7, 411077
                  mul          t5, t2, a6
                  xori         a2, a6, 1935
                  mul          s8, t3, s11
                  mulh         t4, s7, t6
                  auipc        t6, 125754
                  rem          a6, s4, s8
                  mul          a6, a3, s3
                  mulhu        t6, s8, gp
                  slti         s1, t6, -1517
                  auipc        t1, 190568
                  slt          a0, s11, t1
                  mulhu        a1, s7, s11
                  or           zero, s7, t4
                  slli         zero, s0, 13
                  sub          s6, s2, s11
                  lui          a6, 290778
                  sltu         zero, s2, a7
                  sltiu        a6, s4, -1343
                  addi         ra, ra, -1317
                  remu         t2, zero, t4
                  slli         a5, t5, 29
                  xori         tp, s5, 1408
                  rem          a2, a2, s8
                  add          t3, a3, s1
                  div          a6, s5, a6
                  xor          s10, s2, a3
                  auipc        a5, 186175
                  divu         t6, s3, s6
                  and          s10, s8, t2
                  xori         a6, a0, 1357
                  sll          a5, a1, s7
                  sub          s2, s0, s3
                  sltiu        t4, t1, 1925
                  or           ra, ra, a7
                  sra          s6, s10, a5
                  slt          t1, sp, t5
                  sub          a6, sp, s0
                  sltiu        s10, a7, -1541
                  sltiu        a7, zero, 908
                  div          s9, t4, ra
                  xor          s7, s7, t3
                  add          a0, a5, a6
                  addi         s8, s4, 980
                  sll          t4, s0, ra
                  and          s9, ra, s0
                  nop
                  sra          ra, gp, s7
                  sub          t3, s11, tp
                  sltu         s9, a5, s7
                  slli         gp, a6, 16
                  lui          s8, 786978
                  auipc        t5, 726023
                  lui          s7, 789130
                  sra          s10, tp, t6
                  or           a2, s9, t5
                  sltiu        t3, zero, 341
                  sll          s8, t4, a5
                  slli         s10, a5, 14
                  auipc        s11, 61002
                  sub          s5, gp, gp
                  sll          a5, ra, t0
                  sub          s8, s10, s0
                  sltu         a6, sp, s10
                  sltu         s6, s1, s9
                  nop
                  auipc        s0, 478507
                  slt          t1, s0, s9
                  slt          a6, t3, t5
                  sltu         s2, s8, s0
                  sltiu        s3, a7, -1468
                  xori         s6, s7, -326
                  and          s11, gp, sp
                  slli         t2, s6, 16
                  andi         s6, s4, -1028
                  sltu         s6, a2, a1
                  add          s3, s1, s7
                  lui          s6, 877769
                  mul          tp, s7, gp
                  lui          t6, 602560
                  divu         s5, s2, zero
                  or           s6, zero, s6
                  div          s7, a4, a4
                  xor          a4, s5, s9
                  rem          s5, s2, a0
                  sll          t2, a7, s8
                  sra          a1, s1, s3
                  xori         s9, gp, 1836
                  lui          a7, 719679
                  remu         s1, s4, a4
                  lui          s10, 990802
                  auipc        t3, 354444
                  mulhsu       t3, s4, s5
                  xor          tp, a3, s5
                  sra          t2, tp, t4
                  auipc        s10, 52068
                  rem          a1, s9, s3
                  sltu         s5, s10, a1
                  auipc        s1, 832458
                  auipc        a7, 619070
                  mulh         ra, a4, sp
                  srl          a0, t1, s9
                  xor          a7, t0, a3
                  mulh         tp, t4, a2
                  xor          ra, s9, s4
                  slti         s7, s3, -927
                  slt          a2, s5, s0
                  srai         t5, t2, 15
                  sra          t5, s1, a3
                  mul          s1, a3, a3
                  slti         s7, a3, 1859
                  mulh         t1, s6, ra
                  add          s5, t2, t4
                  remu         t1, t3, s8
                  sll          tp, a2, s4
                  srl          ra, a3, t0
                  slt          s6, s5, a4
                  add          s3, s9, s8
                  lui          sp, 255320
                  srl          s10, s9, t4
                  slti         s9, sp, -1445
                  xor          ra, gp, a6
                  mul          t6, s5, s6
                  srai         a0, sp, 23
                  nop
                  add          t5, s2, a3
                  xori         s9, s7, -90
                  sub          a7, a1, a6
                  sra          a5, t5, zero
                  add          a0, sp, gp
                  add          a2, t3, s2
                  lui          s7, 62547
                  sub          t3, t5, s11
                  divu         a4, s11, t4
                  slt          s8, s7, sp
                  or           s1, s9, ra
                  and          gp, a0, sp
                  xori         tp, t6, -16
                  slli         ra, sp, 18
                  andi         t2, a5, -1258
                  srli         ra, a5, 9
                  auipc        s0, 1036784
                  mulhsu       gp, s3, a1
                  sra          s6, a7, s7
                  divu         s0, t2, t5
                  srai         a1, s2, 24
                  div          s5, t0, a1
                  srli         a0, gp, 7
                  addi         a4, t2, -1098
                  lui          s10, 274098
                  addi         t4, t4, -1598
                  slti         s2, s5, 2042
                  xori         a7, s3, 528
                  slt          a5, s5, s10
                  auipc        t6, 110694
                  ori          a0, s7, -1337
                  or           s5, t5, t2
                  addi         t5, s6, -743
                  lui          t1, 527750
                  srli         t1, t2, 9
                  addi         s6, s6, 1818
                  mulh         t6, s4, s6
                  sll          s10, s7, a6
                  remu         a4, s11, s9
                  auipc        s10, 819815
                  xor          zero, a2, a0
                  mul          a1, a1, s4
                  lui          s11, 765238
                  mulhu        a1, s11, a0
                  andi         a5, t6, 405
                  xori         a4, sp, -1704
                  sra          a5, s3, a3
                  div          s10, a3, s7
                  xori         a1, s6, 305
                  xor          a6, ra, a4
                  sra          s3, s0, s9
                  sltu         gp, t2, a6
                  sra          t4, tp, a1
                  and          a6, a6, s11
                  andi         s5, gp, -1978
                  add          a2, s9, t6
                  sltiu        a0, t6, 224
                  ori          t3, tp, -403
                  divu         t5, a4, t6
                  add          s10, t5, s7
                  xor          a0, a1, sp
                  srli         zero, a0, 6
                  srl          t4, s5, s11
                  or           t3, s9, s2
                  div          s1, a1, ra
                  srl          t5, t6, a2
                  mulh         t3, a1, s6
                  sltu         s1, a0, s1
                  slli         s3, t6, 11
                  mul          a0, tp, a3
                  sltu         t1, a6, s0
                  div          t3, s11, a7
                  slli         t2, t1, 18
                  mulhu        a4, a3, gp
                  sltiu        ra, t0, -322
                  add          s9, a6, a6
                  addi         t3, s5, -646
                  sub          t3, t2, t6
                  ori          t4, a1, -777
                  rem          s0, a1, t6
                  sltiu        gp, tp, 1276
                  sub          s1, s7, s8
                  mulhu        a6, s5, s3
                  remu         t4, gp, s3
                  divu         t4, t6, a3
                  srl          s2, a7, t3
                  auipc        s7, 992916
                  xori         s11, s2, -559
                  auipc        a0, 921477
                  nop
                  xori         s9, t6, -171
                  remu         s3, a7, s5
                  andi         zero, a3, 1105
                  and          s6, s7, t1
                  div          t4, zero, t5
                  andi         s1, t6, -1141
                  lui          a7, 1013754
                  remu         gp, s8, t3
                  sll          a2, s2, s10
                  sltu         tp, ra, s3
                  sll          s7, s0, a2
                  auipc        s1, 598080
                  srl          s7, t0, s5
                  div          s10, s9, a1
                  lui          t5, 765865
                  srli         t5, t0, 29
                  srai         t3, s11, 28
                  and          a4, t2, s2
                  rem          a1, s6, t4
                  srl          t6, s7, tp
                  slti         tp, zero, -1658
                  mulhu        t2, s6, t1
                  mul          tp, sp, s0
                  divu         tp, a7, gp
                  div          s10, s5, s3
                  lui          s10, 681288
                  add          ra, a7, s3
                  xor          s10, t3, t4
                  sll          a6, a7, s1
                  ori          s11, s3, -487
                  or           a5, t0, a1
                  mulhu        s5, s3, gp
                  mulhu        sp, s11, t5
                  mulhu        s8, t3, zero
                  add          s7, s1, a3
                  add          a1, s10, s2
                  sra          s0, ra, t0
                  lui          s2, 736276
                  rem          a5, t1, t4
                  sltiu        s5, t3, 451
                  slti         a4, a6, 98
                  nop
                  auipc        s1, 783694
                  andi         a7, s5, 1160
                  xor          s2, a3, tp
                  sra          s0, a1, a1
                  srai         s6, s2, 2
                  sra          s10, ra, ra
                  ori          s2, t0, 578
                  andi         a2, s5, -719
                  slt          gp, t0, s9
                  and          a5, a2, s10
                  lui          t6, 263478
                  andi         t3, t5, 198
                  sltiu        s0, t2, 163
                  and          zero, s7, a3
                  srl          a5, t5, a6
                  slti         t1, s11, 974
                  slt          tp, s6, gp
                  lui          s9, 881405
                  mulh         a0, a5, s9
                  remu         t6, t0, tp
                  sltiu        s5, a0, -852
                  xor          t4, a7, s8
                  auipc        a7, 239872
                  and          s8, a3, t1
                  srli         a6, a5, 29
                  or           s2, s11, tp
                  mulh         t5, ra, s0
                  sra          s10, s3, s4
                  addi         a7, a4, 1081
                  slli         a4, s3, 18
                  sltiu        tp, ra, 1353
                  slt          a2, t0, t0
                  mulh         s8, s4, s11
                  addi         a5, s0, -640
                  sll          t5, s8, s9
                  add          a2, a2, tp
                  srli         t2, s2, 26
                  div          a5, s9, s11
                  ori          t4, s0, 426
                  ori          s5, s1, -716
                  mulhsu       sp, s1, s5
                  slti         a6, ra, -1202
                  nop
                  sra          ra, a6, s1
                  addi         a0, t5, 1106
                  mulhu        s8, s0, s2
                  mul          a7, t1, s6
                  mul          sp, s11, ra
                  mulhsu       ra, s0, a5
                  sra          s7, s5, s9
                  srli         a7, s4, 11
                  nop
                  rem          zero, t0, s6
                  lui          a1, 423820
                  sltu         s0, a0, s10
                  divu         s5, t2, a6
                  sub          s0, s10, s11
                  sub          t4, a2, s11
                  or           tp, s5, tp
                  or           a4, s9, t6
                  slli         tp, s9, 7
                  sltu         gp, t4, ra
                  slti         t1, s7, -1518
                  slli         a2, t1, 4
                  add          a5, a5, s3
                  sub          a0, s0, s6
                  slt          s0, a5, t0
                  div          s1, sp, s2
                  auipc        s10, 665848
                  sra          s10, t6, s6
                  andi         zero, t0, -95
                  mulh         t2, a0, a2
                  mulhsu       a4, t3, s6
                  sub          s1, s10, s3
                  sra          tp, gp, s11
                  sltiu        s2, gp, -501
                  ori          sp, gp, 149
                  ori          t3, a6, 1160
                  slti         a1, a6, -1021
                  srl          a7, t6, s5
                  mulhsu       a0, s11, s9
                  mulhsu       t2, a7, gp
                  add          a5, s7, s10
                  xori         s1, a5, -1918
                  xori         a2, s10, 712
                  nop
                  rem          s2, a7, s1
                  andi         t2, t5, -314
                  xori         gp, t5, 647
                  remu         t4, tp, s0
                  slti         a4, s7, -1612
                  ori          s5, a1, 1934
                  and          a2, s0, a1
                  xori         s7, a3, 798
                  remu         s11, s10, s6
                  sub          t4, s7, gp
                  xor          t1, s3, s7
                  rem          s8, s10, s8
                  ori          s5, t5, 1835
                  add          ra, gp, a5
                  rem          s9, a2, s3
                  div          sp, t6, a4
                  mulhsu       zero, s0, s1
                  xor          a7, t4, t4
                  sll          s6, t3, tp
                  srli         a0, ra, 11
                  mulhu        s7, t5, s8
                  nop
                  rem          t1, s6, t2
                  divu         t2, s6, s9
                  mul          sp, tp, a2
                  slti         s10, s9, 790
                  sltiu        t6, s0, -415
                  srl          gp, t6, a6
                  lui          a6, 641006
                  sra          t3, t2, t6
                  rem          t2, s5, a6
                  sra          t1, s1, t6
                  slti         s8, a4, -1056
                  nop
                  mulhsu       s3, a0, t6
                  srai         s5, t1, 12
                  sub          s7, s9, s1
                  remu         a0, a5, a6
                  slli         s3, ra, 27
                  sltu         tp, a5, a0
                  divu         s9, sp, ra
                  add          sp, s9, a4
                  nop
                  sltiu        s7, a7, -1811
                  mulhsu       s7, t5, s5
                  or           tp, s1, gp
                  xor          tp, s2, s0
                  divu         s2, s11, s6
                  add          a6, s11, sp
                  mulhsu       s6, t3, s8
                  div          sp, s9, a1
                  mul          s5, s4, s1
                  mul          s9, s3, s6
                  add          tp, t1, s9
                  divu         a6, sp, a1
                  auipc        tp, 508386
                  lui          a2, 386294
                  srai         s1, s5, 26
                  addi         s8, a3, -2016
                  sub          a2, t6, t0
                  sub          a2, a3, s5
                  srl          s1, t1, s3
                  xori         a2, sp, 1619
                  slt          s11, sp, s10
                  mulh         s11, s2, s1
                  divu         s6, a5, a7
                  sra          a1, ra, a2
                  xori         a7, a0, 781
                  srli         t1, s1, 8
                  xor          s7, t0, a1
                  srai         t6, s8, 6
                  xori         t4, t1, 64
                  auipc        t3, 1027688
                  sltiu        a6, a6, -432
                  sll          s9, t2, s6
                  add          s8, s8, s9
                  sltiu        a1, s3, -100
                  srli         t3, s3, 5
                  sll          s2, s3, t1
                  div          s2, ra, a7
                  divu         t5, gp, t6
                  mul          t4, ra, tp
                  slt          s6, t3, a6
                  rem          a1, a5, a6
                  sltu         a2, t0, a5
                  ori          t3, sp, 717
                  mulhsu       ra, s5, s3
                  rem          zero, a7, t0
                  slti         s0, a2, 993
                  rem          s10, s8, a4
                  div          s9, sp, t6
                  mulh         a2, a0, a7
                  slt          s0, a4, a1
                  xor          a7, zero, gp
                  slti         t2, s5, 516
                  mulhu        zero, a6, a5
                  xor          a0, a2, a5
                  mulhsu       a6, t3, a5
                  sra          s11, s3, a5
                  srl          a4, t4, t0
                  slti         t2, t5, -1500
                  mulhsu       t6, s7, s8
                  ori          a5, a2, -1260
                  mul          tp, a6, s6
                  andi         s7, s2, 1727
                  mulhu        t3, a4, t2
                  nop
                  sltu         s2, s6, s11
                  lui          a1, 995916
                  xor          tp, ra, s11
                  xori         s6, s9, -1848
                  sra          gp, s3, s1
                  mul          s5, s0, s5
                  div          s10, a6, a5
                  mulhsu       gp, s1, s4
                  mulh         zero, t3, t0
                  mulh         s7, t0, a3
                  slti         a7, t5, 108
                  mulh         t5, a6, a2
                  divu         s6, t4, t6
                  sub          a4, t2, a2
                  srli         zero, t1, 20
                  sra          t5, s7, s11
                  sltu         t6, s6, s0
                  xor          s6, a2, t5
                  srli         s2, s3, 18
                  sltiu        s10, a1, 443
                  sltu         ra, a5, tp
                  auipc        t2, 767619
                  addi         a2, sp, 1502
                  and          a4, s11, a4
                  slti         s10, s11, 623
                  slti         s6, a5, -1209
                  mulhsu       s1, a5, s5
                  sltiu        a2, gp, -904
                  or           t2, ra, s11
                  nop
                  lui          a7, 730326
                  sra          a2, t6, zero
                  addi         s3, s11, -783
                  add          s2, ra, a0
                  xori         t6, t0, 32
                  nop
                  rem          s5, s11, a5
                  slti         zero, a1, 1268
                  or           t6, a6, t3
                  addi         zero, t6, -1466
                  sub          t4, s3, s10
                  srl          a7, sp, s4
                  mulh         s0, t2, a4
                  xor          a1, a0, a2
                  srli         ra, tp, 11
                  slt          t1, s9, s7
                  nop
                  sll          a6, ra, t6
                  remu         s5, s11, a3
                  sub          ra, s9, a5
                  remu         a4, s6, t4
                  lui          tp, 178079
                  srli         a6, t6, 0
                  slli         s0, t2, 18
                  auipc        s6, 105549
                  rem          t1, s7, s6
                  slt          t3, s4, s10
                  lui          a6, 773994
                  or           s2, a5, a1
                  and          t6, zero, t6
                  mulh         s5, t2, a7
                  slt          t6, a2, a0
                  div          s7, s11, a4
                  slt          s9, s3, t1
                  xor          t2, t1, s10
                  xori         a7, s7, -1398
                  sll          s1, s1, tp
                  ori          t5, s7, 1453
                  mulhsu       a7, s4, s8
                  and          tp, a1, a5
                  auipc        s1, 304558
                  mul          t3, a3, s10
                  mulh         s5, a3, t0
                  mulhu        s6, s7, s2
                  add          s3, a2, s3
                  srli         ra, s10, 24
                  remu         s6, sp, s6
                  add          s8, t5, t5
                  sra          s10, a3, s2
                  xor          a4, t4, s10
                  sub          ra, s3, s11
                  rem          s5, t6, t5
                  sra          s9, t6, s1
                  slli         a0, ra, 5
                  xori         a7, s9, 1727
                  lui          zero, 221784
                  rem          s0, s11, tp
                  xor          a7, zero, s3
                  srai         t2, a5, 31
                  sll          a2, t6, t5
                  xor          s3, gp, t6
                  sltu         s8, ra, a6
                  ori          s6, s5, -1339
                  mulhsu       s1, tp, gp
                  rem          a5, a3, t6
                  div          t3, t1, a7
                  srl          ra, s4, zero
                  nop
                  addi         zero, a0, -1175
                  srli         ra, a2, 25
                  andi         s0, a6, 868
                  srli         zero, ra, 24
                  slti         t3, s6, 1151
                  srli         a2, s11, 9
                  remu         tp, gp, t6
                  sll          t2, s1, s5
                  ori          t2, t0, 1057
                  srli         s10, a3, 9
                  srl          t4, tp, t3
                  mulhu        t2, s6, s3
                  rem          s10, s0, ra
                  srli         a4, zero, 24
                  srai         t1, a6, 14
                  addi         a7, s1, -1727
                  slt          t5, s0, a7
                  lui          s5, 558203
                  nop
                  ori          s0, a6, -1269
                  xor          t5, s5, sp
                  ori          gp, sp, 1847
                  remu         gp, sp, gp
                  slt          a1, t5, a2
                  slt          t1, a4, s8
                  sltu         tp, a0, a6
                  srli         a4, t0, 22
                  mulhsu       a6, s11, s8
                  srai         t6, zero, 15
                  mulh         s5, a7, s5
                  addi         zero, s3, -351
                  srl          t5, zero, zero
                  sra          t1, a1, a1
                  nop
                  and          a6, a7, t6
                  sll          s10, t1, a2
                  and          a2, s6, s7
                  lui          s2, 64693
                  sub          t6, s5, sp
                  rem          t6, s9, s7
                  srai         t2, s3, 22
                  and          tp, ra, a2
                  srai         t6, t3, 23
                  slti         s3, t1, -1249
                  nop
                  sub          t1, a6, s6
                  sll          ra, zero, t1
                  divu         tp, a3, s10
                  sll          a2, t2, s5
                  mulhsu       t1, sp, a4
                  slli         a4, a2, 15
                  add          a4, s4, a4
                  srli         gp, s4, 14
                  andi         a7, a6, -1808
                  andi         a0, a4, -133
                  sra          s5, t5, s10
                  lui          ra, 313725
                  andi         t2, tp, 592
                  xori         a4, a4, 1004
                  andi         s7, ra, -1825
                  sll          s9, s9, t3
                  mulhsu       s3, tp, a6
                  auipc        s7, 333874
                  auipc        t6, 1037630
                  div          s11, a3, s11
                  mulhu        s2, a4, t2
                  divu         t1, a7, a6
                  mulhu        t2, s4, s11
                  addi         tp, ra, 1856
                  slli         a1, a5, 7
                  ori          zero, s8, 308
                  or           a6, gp, s3
                  add          sp, s11, ra
                  xori         a5, s8, 505
                  slt          a5, s8, ra
                  srl          s5, s8, tp
                  remu         a6, gp, ra
                  div          s5, a0, t0
                  xor          a2, s2, a2
                  sub          tp, s2, s8
                  divu         s5, t3, s0
                  sra          a2, t1, a6
                  sltiu        s2, a4, -1821
                  remu         s7, s8, t3
                  slti         a0, ra, 1850
                  srl          t1, a0, s3
                  sll          a4, s4, tp
                  nop
                  and          ra, s11, a5
                  nop
                  slti         s5, a3, -2025
                  mulh         a7, t0, a0
                  div          a5, zero, a6
                  srli         s5, t5, 0
                  auipc        sp, 62537
                  xori         a6, s1, 236
                  slli         s5, s0, 15
                  sltiu        s3, t6, -1624
                  auipc        t3, 1000239
                  div          s8, ra, s3
                  sub          s8, gp, tp
                  mulhsu       s5, s0, a5
                  remu         zero, a2, s2
                  div          s9, s6, s0
                  mul          t2, a0, a0
                  srai         s10, s2, 7
                  lui          t1, 836737
                  mulhsu       s8, gp, s11
                  lui          a6, 79547
                  slli         s9, s5, 23
                  xori         s9, s10, 1301
                  sll          s6, ra, s2
                  sll          t3, a4, a6
                  mulhsu       s11, a3, a2
                  andi         a5, a5, 1373
                  auipc        s1, 282269
                  andi         t3, t6, -27
                  addi         s7, a6, -961
                  sra          s7, s5, a7
                  auipc        t4, 341191
                  addi         a7, s2, -1330
                  add          tp, zero, a3
                  andi         t4, s10, 1514
                  srai         a5, t4, 1
                  divu         zero, s6, a6
                  sltu         s5, a3, gp
                  ori          s5, t3, -737
                  slti         t4, t3, 382
                  sltu         a1, t4, a5
                  slti         s10, a4, -1745
                  mulhu        s6, a4, s8
                  nop
                  nop
                  remu         s7, s2, s5
                  divu         t4, a4, t1
                  and          a7, s5, s4
                  or           tp, t6, ra
                  xor          s5, t2, s7
                  lui          sp, 1013909
                  addi         s7, s2, -467
                  mulh         sp, s3, ra
                  rem          t1, s7, tp
                  div          s11, sp, t3
                  sltiu        gp, tp, -164
                  lui          a2, 1023419
                  lui          t5, 737586
                  ori          s0, t5, -1081
                  mulh         a7, t5, s4
                  sra          s3, a1, s4
                  nop
                  slli         s8, a1, 26
                  rem          ra, sp, a3
                  add          gp, t3, s4
                  sll          t1, gp, s1
                  mul          gp, a0, t1
                  rem          s11, a0, tp
                  srl          a7, t6, a5
                  remu         s8, t3, s5
                  sra          t4, a7, s2
                  srli         s1, a0, 1
                  div          t2, s3, sp
                  nop
                  mulhu        sp, s10, t4
                  sll          ra, a2, a0
                  divu         a0, a0, a3
                  divu         s1, s9, s1
                  ori          s1, t2, 1586
                  or           t4, s4, s4
                  lui          a2, 595628
                  ori          s5, s9, -551
                  lui          t1, 1047295
                  mul          t5, a3, s7
                  srl          s7, tp, ra
                  remu         t4, s6, zero
                  addi         gp, t1, -1456
                  mulhsu       a1, t0, a6
                  auipc        s1, 939260
                  slt          t2, s6, a0
                  add          t2, a7, ra
                  mulhu        s2, a1, gp
                  andi         sp, tp, -1810
                  ori          a6, a5, -995
                  nop
                  add          a4, a1, a6
                  srli         a4, sp, 22
                  rem          s7, t6, s6
                  xor          t4, s10, a7
                  lui          s10, 993289
                  div          s3, a1, s2
                  or           s9, sp, zero
                  mul          gp, t2, a6
                  sltiu        a1, t4, 311
                  xor          ra, t0, t5
                  srai         t3, s7, 29
                  andi         a6, s8, 737
                  rem          gp, a1, t1
                  sub          s6, s5, gp
                  auipc        a6, 442448
                  sltiu        sp, s2, 888
                  remu         s3, a7, s6
                  rem          s7, t2, t1
                  srl          tp, s3, a2
                  mulh         s2, s8, t5
                  slli         a7, t5, 6
                  andi         a2, a5, 394
                  sltiu        tp, s6, -1065
                  sltu         gp, ra, tp
                  srai         t6, ra, 16
                  add          s10, t5, t0
                  srai         s9, s4, 25
                  rem          s0, s5, t1
                  mulhsu       a6, t5, t0
                  srli         t3, a3, 18
                  div          sp, ra, t5
                  ori          s10, tp, -1548
                  mulh         a1, s8, s2
                  and          s3, t5, zero
                  sltiu        s6, a2, 123
                  or           s2, s10, a7
                  div          t5, t6, t4
                  or           s2, t0, s6
                  slti         t2, t6, -1391
                  add          s5, s10, s7
                  and          ra, t3, t1
                  nop
                  mulh         sp, ra, t5
                  srl          t5, s10, a6
                  rem          t5, s2, t2
                  srli         a0, a4, 9
                  remu         t6, t2, t2
                  xori         s3, a4, -856
                  xori         zero, a7, -836
                  auipc        a1, 307648
                  mulhsu       a5, a6, t6
                  sltu         s9, s11, s6
                  xori         t5, t1, 1847
                  lui          ra, 216818
                  andi         s2, s8, 779
                  or           t3, a0, t2
                  remu         a1, zero, a2
                  sub          t5, t1, s0
                  rem          a0, s1, t4
                  sltu         a0, t5, t3
                  addi         a1, s11, -1175
                  ori          a4, a5, 1487
                  srai         s6, t1, 19
                  srl          zero, t1, a4
                  srai         s7, s5, 12
                  mul          s2, s11, a7
                  add          s1, ra, a3
                  sub          a6, s6, s1
                  divu         a5, a1, a3
                  sub          s5, a0, a6
                  div          s9, a3, t0
                  sltu         s10, a3, gp
                  xor          a4, s3, t5
                  slt          gp, a0, gp
                  xori         s3, s8, 846
                  srl          a4, a7, gp
                  xor          a6, t1, t6
                  sll          s6, t0, a4
                  andi         tp, a3, -1306
                  sra          a6, gp, t5
                  add          s3, s10, gp
                  ori          t6, s2, 1614
                  mulh         a7, s0, a7
                  slti         tp, tp, 483
                  lui          sp, 54137
                  srli         s10, a1, 19
                  sltiu        t2, a7, 1002
                  add          s2, s9, a0
                  ori          ra, a3, 630
                  slli         sp, t1, 11
                  nop
                  auipc        a2, 245055
                  xor          s5, ra, s7
                  mulhu        t4, s1, s1
                  divu         s3, a4, t3
                  mulh         s2, s9, a0
                  mulh         a0, t6, s5
                  ori          t2, tp, 1642
                  sub          s0, s6, t3
                  srai         s1, t0, 8
                  divu         a2, sp, a5
                  auipc        s9, 378918
                  sll          t5, gp, gp
                  remu         t5, t6, s2
                  add          a0, s7, a0
                  and          tp, a0, t1
                  xori         a0, s8, 1620
                  mulhsu       a7, gp, t3
                  rem          s8, s6, s2
                  srli         s2, s10, 31
                  mulhsu       s10, t0, s0
                  add          gp, s10, a7
                  sll          zero, t3, a3
                  sltiu        a7, a0, -1824
                  slti         a4, ra, -692
                  sll          s1, t1, a4
                  sltu         t5, s3, a1
                  sub          a4, s2, s1
                  ori          s0, s11, 1482
                  sltu         t5, t2, s7
                  nop
                  slti         s9, a3, 794
                  slti         s8, s1, -655
                  xori         tp, s7, 831
                  divu         t6, s8, s2
                  sra          a1, a7, a5
                  sra          a5, ra, a4
                  slli         tp, s1, 26
                  slt          zero, s6, s2
                  srli         s0, t0, 18
                  or           zero, t4, t1
                  andi         a6, s11, 1397
                  add          s0, t2, s2
                  slli         s7, a3, 3
                  nop
                  andi         ra, a3, -957
                  remu         t6, t1, s0
                  auipc        s7, 687817
                  sll          t1, sp, tp
                  mul          t5, s6, ra
                  nop
                  sub          a0, a0, s10
                  slti         tp, zero, -1078
                  rem          t3, s8, a2
                  andi         a6, t5, -181
                  sltu         t1, s5, t4
                  slt          t1, s1, t4
                  div          s1, a0, ra
                  mulhu        t6, s2, a7
                  remu         s1, a0, zero
                  and          a2, s2, a0
                  remu         a4, s4, zero
                  nop
                  auipc        a5, 928958
                  mul          a4, t2, a7
                  sltu         a6, s10, ra
                  lui          s10, 436741
                  mulhsu       s5, a3, a3
                  srl          a7, s6, a2
                  slli         t3, tp, 23
                  sltu         a5, ra, a4
                  sltu         s1, t3, ra
                  ori          s0, zero, -1281
                  slti         s7, t1, 1377
                  xor          s7, ra, s8
                  and          tp, s7, s2
                  divu         s0, s1, zero
                  slti         tp, t6, -161
                  div          a1, t3, s1
                  srai         ra, t3, 16
                  sub          s9, t6, s10
                  div          s8, s3, s10
                  add          a2, gp, t1
                  divu         s3, s9, a2
                  xor          s0, a2, a7
                  auipc        tp, 626057
                  slt          s7, s5, a1
                  mul          ra, s8, zero
                  srai         t3, s9, 24
                  slli         a0, gp, 11
                  and          a0, a2, s7
                  srl          s9, s7, ra
                  divu         t3, s6, t4
                  sra          s2, a6, a1
                  sll          s10, gp, s3
                  lui          a7, 588236
                  slt          s0, s11, a2
                  sra          gp, t4, s11
                  srai         s7, sp, 30
                  addi         t4, s5, -1243
                  divu         gp, s4, s3
                  auipc        s9, 616551
                  srl          a1, s6, a4
                  sub          s6, t0, sp
                  add          zero, t3, s8
                  srli         a5, ra, 4
                  nop
                  mul          t2, s10, s7
                  nop
                  and          s10, s9, s0
                  mulh         s5, tp, s4
                  sll          a1, a2, a0
                  mulhsu       a0, s8, s5
                  slt          t4, a3, t0
                  mulhsu       ra, s4, a5
                  mul          s5, s6, s5
                  srl          s1, a4, s9
                  sll          a4, t0, a3
                  divu         t3, s4, s1
                  sltu         a5, a6, t0
                  or           a1, s4, s2
                  lui          sp, 645696
                  addi         ra, t2, -925
                  mulhu        sp, gp, t6
                  remu         s8, a1, gp
                  xor          s3, s4, s10
                  mulhu        s9, t3, s6
                  xori         zero, t0, -603
                  auipc        t1, 515846
                  slti         s11, s3, -1274
                  nop
                  mulhu        t3, s5, t3
                  ori          a1, s5, -1059
                  srl          s3, s6, s11
                  sll          sp, s3, s1
                  sub          zero, s0, a2
                  srli         s7, s6, 19
                  xori         t3, s0, 1318
                  sltiu        s9, gp, -1790
                  slti         s7, t5, 1543
                  srai         a0, zero, 24
                  divu         gp, a0, tp
                  add          t3, t4, a7
                  sltiu        tp, s3, -1253
                  nop
                  sll          tp, s5, t0
                  or           a4, t3, s6
                  mulhsu       a6, ra, s1
                  slti         s6, s5, 284
                  xor          t3, tp, a6
                  remu         s11, s9, s5
                  andi         s0, t2, 1166
                  srai         a5, s7, 0
                  or           s6, a6, s5
                  mulhu        s7, s9, s10
                  sltu         a1, a2, t5
                  auipc        a7, 919331
                  remu         s3, a3, tp
                  sll          ra, t2, a0
                  nop
                  andi         s7, s2, -364
                  slt          t5, s6, s8
                  auipc        a1, 217737
                  srli         ra, a3, 22
                  rem          sp, tp, a0
                  and          sp, s1, a2
                  remu         s2, tp, a3
                  mul          s2, sp, t5
                  remu         s3, s2, t6
                  sll          s0, tp, s4
                  mulhsu       t6, s11, t2
                  srli         s5, t2, 11
                  add          a4, s7, a5
                  sra          s9, s2, s9
                  xor          ra, a7, t3
                  and          s8, s2, s2
                  remu         a6, s4, s11
                  slt          s0, s10, t0
                  srli         t6, a7, 9
                  mulhsu       t5, a4, s2
                  or           t5, s11, ra
                  mulhsu       s11, t2, s8
                  lui          s3, 4262
                  srli         t3, s5, 18
                  slti         a2, a3, 1762
                  sub          s5, a7, t2
                  rem          gp, t6, s10
                  nop
                  srli         s11, s6, 20
                  auipc        tp, 881410
                  srl          s9, s4, gp
                  xor          s7, a5, tp
                  ori          s9, t0, -1383
                  or           s6, zero, a2
                  remu         a0, s10, a1
                  slt          a7, s3, s2
                  mul          s9, t3, s4
                  sra          s9, t5, a2
                  remu         s10, t5, s1
                  sub          t4, sp, t3
                  srai         t1, s3, 23
                  remu         t2, t2, a1
                  div          s2, a1, a1
                  lui          tp, 741900
                  add          t4, s6, s0
                  sltiu        tp, a6, 699
                  srl          a2, a0, s0
                  sltu         s3, s2, a1
                  rem          s1, t2, a7
                  andi         s5, tp, -1729
                  and          s5, zero, t1
                  lui          a2, 102128
                  slti         gp, tp, 1799
                  srli         a2, gp, 6
                  mulhu        s5, s0, t3
                  divu         a0, a5, t6
                  divu         t2, t3, s9
                  nop
                  sltu         s10, s1, s0
                  slli         a0, a5, 30
                  lui          s8, 461968
                  auipc        tp, 1034944
                  sub          a6, t5, a1
                  srl          s6, t2, sp
                  slli         a5, a0, 25
                  lui          s10, 1037822
                  sub          a5, tp, a2
                  lui          a1, 596617
                  auipc        sp, 115050
                  rem          s1, a4, t6
                  sll          a7, a2, a0
                  sra          gp, a5, s10
                  div          t1, s0, a4
                  mulhsu       s11, s10, s9
                  slli         s6, ra, 28
                  auipc        s5, 998126
                  ori          tp, t6, -730
                  add          s0, s7, a5
                  sra          s11, a0, tp
                  sub          gp, t4, a5
                  addi         s9, a2, -63
                  auipc        t3, 888919
                  ori          a1, tp, 1769
                  mulhsu       s5, gp, sp
                  slti         s10, s9, 153
                  srai         gp, s5, 7
                  xor          t3, t1, s1
                  addi         a1, sp, -1458
                  andi         t4, zero, -62
                  addi         s7, a4, 1323
                  mul          a5, s9, t4
                  xor          a2, s8, s6
                  mulh         s6, a5, tp
                  nop
                  srl          s11, s5, zero
                  remu         s5, s4, s0
                  sub          t5, zero, a3
                  nop
                  srli         s1, a7, 4
                  sltiu        t2, s7, 55
                  sra          a7, t6, sp
                  add          a0, a5, a5
                  sra          gp, s11, t2
                  addi         t2, a6, -36
                  mul          s0, a1, s9
                  ori          t4, s1, 1253
                  srli         a5, a6, 27
                  div          s2, a7, t3
                  xori         s9, s10, 906
                  slt          s2, a5, a1
                  sub          a4, s3, a3
                  remu         ra, s9, a3
                  mulhsu       s7, sp, t6
                  xori         t2, s2, -527
                  sltu         sp, a1, zero
                  sll          a0, t5, a4
                  remu         zero, t2, s3
                  and          a5, tp, t2
                  mulhu        s7, a5, s4
                  nop
                  sll          s0, s0, t0
                  nop
                  slli         ra, s5, 10
                  sll          s11, t4, s0
                  slti         a7, gp, -1334
                  xori         a5, s2, 25
                  div          s6, a5, ra
                  sll          tp, a0, sp
                  srl          s11, zero, sp
                  slt          s0, s1, s0
                  addi         s3, s6, 1066
                  sra          t2, t6, a1
                  sub          a5, t2, s4
                  srai         s6, t0, 12
                  slli         s1, s4, 10
                  addi         tp, s5, 178
                  nop
                  mulh         gp, a5, s1
                  sra          s3, s10, a4
                  sll          tp, zero, sp
                  or           t4, s8, tp
                  remu         t5, a4, a1
                  ori          t1, tp, -115
                  mulh         s3, s0, zero
                  andi         a0, s6, 372
                  rem          a4, s7, a4
                  slti         t5, a1, -665
                  srli         sp, t3, 28
                  slli         a1, s10, 6
                  lui          s7, 320628
                  sra          a7, s5, ra
                  mulhsu       t6, a3, s6
                  andi         t5, t5, 1463
                  slt          s9, s7, sp
                  addi         s7, t0, 873
                  slt          s1, s0, s3
                  sll          t2, t3, zero
                  auipc        sp, 994578
                  srl          s0, t0, s2
                  auipc        a4, 399014
                  mulhu        t2, sp, a5
                  slt          s8, t3, sp
                  mul          a7, s8, s7
                  lui          s7, 354701
                  andi         t4, zero, 72
                  mul          t2, s0, s4
                  slli         a6, zero, 12
                  sll          a7, t3, t3
                  add          s6, t1, a3
                  rem          s11, sp, a0
                  nop
                  sub          s8, t3, t0
                  addi         t6, t6, -695
                  nop
                  slt          zero, s0, s7
                  slli         t2, a7, 5
                  add          s11, t3, t0
                  srli         a6, s4, 23
                  mulhsu       t4, s11, a3
                  lui          a1, 878063
                  xor          s6, s9, tp
                  xor          t4, s9, s0
                  mul          a5, a5, ra
                  nop
                  and          tp, ra, a3
                  srl          gp, s8, a1
                  srai         a2, ra, 19
                  and          t3, s8, s8
                  add          s6, a3, a5
                  mul          t2, s3, s10
                  lui          s6, 339950
                  div          sp, a1, s8
                  sub          s7, sp, a1
                  slti         s9, a6, -1792
                  xor          s3, t5, s1
                  lui          t5, 475849
                  mulh         a6, a2, s3
                  mulhsu       zero, s8, zero
                  div          t4, t1, s6
                  srai         a7, t1, 9
                  sub          gp, a6, a3
                  srl          s1, ra, s5
                  sltiu        s7, sp, 184
                  mul          s7, gp, a0
                  remu         ra, s11, t5
                  addi         t1, s9, -1283
                  sub          tp, t5, s7
                  div          t2, a4, s5
                  sra          a6, t5, tp
                  nop
                  xori         a2, a3, 338
                  rem          tp, s1, t0
                  andi         s3, a6, -619
                  xor          t3, t2, s9
                  slli         tp, t2, 23
                  lui          tp, 992727
                  sltu         s6, ra, a6
                  sll          t6, a1, t2
                  rem          a1, ra, a6
                  slti         s1, a3, 864
                  slli         s1, s8, 2
                  rem          t2, t2, s1
                  mulhu        t6, s3, tp
                  auipc        tp, 630868
                  addi         a6, s2, -1893
                  rem          a1, s1, t6
                  mul          a2, s5, zero
                  mulhsu       s3, t4, s4
                  mulhsu       ra, a7, t3
                  srl          a6, s4, s9
                  lui          s0, 102161
                  remu         t2, ra, s11
                  or           s10, gp, s7
                  xor          gp, zero, t3
                  mulh         ra, gp, a0
                  or           zero, t3, s9
                  srli         t3, t2, 20
                  ori          sp, s9, -1410
                  xor          s10, a0, a7
                  slt          s0, a4, t2
                  srli         t4, s8, 19
                  div          a5, t6, zero
                  sub          s2, t5, s3
                  addi         s8, a0, 706
                  xori         ra, t0, 1013
                  sra          ra, t3, a6
                  xor          s1, gp, zero
                  mulhsu       t4, t5, s0
                  xor          s3, s3, sp
                  slti         s3, a0, -1955
                  mulh         s0, s3, zero
                  xori         s8, t5, 245
                  add          s10, t0, ra
                  divu         t5, tp, a7
                  mulhu        zero, a6, a5
                  mulhsu       s5, s6, a4
                  divu         t3, a5, t6
                  mulh         t4, a6, t0
                  add          s5, a7, t5
                  addi         s7, ra, 1460
                  and          a5, t1, t2
                  slti         gp, a3, -43
                  xori         a0, s1, 411
                  ori          s1, a1, 1327
                  sub          s8, s4, s10
                  sub          tp, gp, s1
                  sltiu        a5, gp, -1313
                  ori          s0, a6, 1823
                  slli         a7, ra, 15
                  sll          gp, s0, s9
                  andi         gp, a4, -122
                  sltiu        zero, s6, 2014
                  mul          s9, s1, a4
                  xor          t4, s10, s3
                  srli         a1, s8, 9
                  add          s10, s1, s9
                  sub          a7, gp, t6
                  div          a2, t4, s2
                  xori         t4, t3, 1585
                  and          s8, t5, t5
                  addi         t1, s7, -412
                  sub          a5, a3, ra
                  div          ra, s1, t3
                  sub          s9, s8, t4
                  xor          t3, s8, s5
                  srai         s6, s1, 14
                  add          t4, zero, t0
                  srai         s1, t1, 24
                  mul          a4, s3, s9
                  sra          t1, zero, a3
                  sub          tp, t0, t4
                  srli         a2, s6, 4
                  div          s2, s11, a5
                  slti         a1, t5, 1365
                  remu         gp, s11, s3
                  mul          s2, gp, s8
                  ori          t6, a6, 876
                  mul          s0, s5, t4
                  andi         a2, a5, -395
                  or           t6, t6, s3
                  rem          s6, tp, t3
                  sra          s2, ra, s11
                  sub          t3, s11, s4
                  srli         t6, a1, 9
                  mulhsu       t4, a6, sp
                  xor          s1, t1, a3
                  nop
                  or           s10, t4, tp
                  mulh         s10, t6, s6
                  srl          s1, s8, a4
                  or           s10, a7, a5
                  mul          s2, tp, t0
                  remu         a5, s8, sp
                  mul          s10, t3, s10
                  sll          s9, t4, s0
                  xori         ra, t2, -63
                  mulhsu       s7, t4, s10
                  srl          t2, s1, s4
                  mulhu        s6, a0, t2
                  andi         t3, s2, -945
                  mulhu        s7, t0, t6
                  slt          s11, t3, a0
                  srl          zero, gp, s9
                  sll          s1, a7, s4
                  divu         t3, s6, ra
                  srli         ra, t6, 6
                  srai         s6, a1, 12
                  sll          a6, a0, ra
                  slli         s10, s0, 24
                  remu         sp, s5, t0
                  rem          s8, a1, a1
                  nop
                  nop
                  andi         t2, ra, -1528
                  add          a5, ra, a2
                  divu         s2, a1, a7
                  srl          ra, s11, s6
                  xori         a6, a4, -817
                  remu         ra, t5, t6
                  srli         s9, sp, 17
                  andi         a2, tp, -873
                  sltiu        a2, t5, 1931
                  sub          s8, gp, zero
                  mulhsu       s6, t6, a7
                  add          s0, t0, t6
                  slti         t4, s8, -851
                  slti         gp, tp, -1132
                  and          t2, zero, t0
                  slt          a0, s4, a5
                  sltiu        s7, s7, -995
                  mul          s9, t1, t1
                  sltiu        zero, t5, -1948
                  mulhu        s6, a0, s2
                  sub          a6, sp, s6
                  addi         s3, s7, 545
                  sltu         t1, a3, s6
                  sltiu        s5, t0, -1336
                  or           a2, a0, s2
                  slti         t5, t6, -1004
                  rem          a6, s5, t0
                  mulhu        a5, a6, a7
                  mulhsu       t6, t3, zero
                  rem          a7, t6, t5
                  sll          t6, t1, t6
                  nop
                  xor          t4, gp, t5
                  sltu         a7, a4, a7
                  remu         a0, s9, s1
                  sll          s1, s7, zero
                  slli         s2, a5, 28
                  srai         a6, s8, 3
                  srl          t4, a6, t2
                  slt          t2, s7, a2
                  mulhsu       s8, t1, t5
                  divu         s1, t2, s1
                  remu         s9, a0, s8
                  slti         s0, t6, 696
                  mul          t4, s5, t3
                  or           s7, s10, a2
                  ori          s9, t5, -124
                  sra          ra, sp, s8
                  andi         a0, sp, 681
                  sltiu        s7, s3, -1344
                  and          t3, a6, s7
                  rem          s10, s6, s4
                  sub          ra, a4, s2
                  sra          s7, gp, a2
                  srl          s3, s3, s0
                  mulhu        t3, a6, zero
                  mulhsu       a7, t5, s1
                  lui          a0, 582404
                  sltiu        a7, t2, 1397
                  xor          a1, t0, s7
                  sub          s8, a0, s6
                  sra          s1, t1, s2
                  mul          a7, s10, t4
                  srai         t5, ra, 20
                  mulhu        sp, s9, a4
                  auipc        t3, 390383
                  lui          s0, 3764
                  ori          gp, s6, 1799
                  andi         s8, a7, 273
                  and          s1, s0, a6
                  mulhsu       s9, ra, s6
                  andi         a2, t3, -770
                  srl          a6, s8, a2
                  slti         t1, s9, -1644
                  and          t4, s8, s7
                  sub          s11, s9, a2
                  xori         s11, t2, -999
                  add          s9, tp, a4
                  rem          a2, t2, t5
                  xori         a4, s4, 995
                  sra          ra, s1, a5
                  mulh         s0, s1, s9
                  remu         a6, t1, t0
                  slti         tp, s1, 583
                  nop
                  srai         ra, s10, 2
                  sra          t1, tp, a5
                  auipc        ra, 107112
                  or           ra, a1, t5
                  lui          t3, 196401
                  sub          t5, s6, a1
                  mulhu        s6, t6, a0
                  rem          a0, a7, s0
                  sll          ra, s8, s7
                  sll          a2, s7, s7
                  mulhsu       a4, s2, s11
                  addi         s6, s9, 885
                  xori         tp, a2, -433
                  sltiu        t3, s3, -1845
                  sra          tp, s4, t3
                  addi         s6, t5, -921
                  xor          s7, t5, sp
                  add          t5, a3, gp
                  or           s2, s4, s0
                  or           tp, a2, s1
                  xor          s9, t2, sp
                  sub          a5, a0, a3
                  andi         gp, t6, -63
                  lui          s7, 697439
                  srli         t3, s6, 10
                  mulh         s5, s11, s4
                  mulh         s3, s5, s5
                  slti         s9, t3, -1419
                  srl          a6, s6, a7
                  sll          a7, a6, t0
                  srli         t6, a0, 8
                  add          a1, t1, s9
                  srl          a4, s10, t6
                  rem          a7, t4, a4
                  sll          tp, a6, t1
                  mulh         a2, t0, s8
                  addi         s9, t6, 1186
                  mulhu        s1, t2, zero
                  xor          a7, a3, s6
                  div          s1, s4, t6
                  div          s8, t2, s0
                  remu         t4, a7, a7
                  srai         s5, t1, 8
                  rem          s8, s10, a6
                  mulh         t3, s1, a3
                  add          gp, a2, s1
                  addi         a2, a2, 967
                  mul          s1, s0, t6
                  xor          s6, t1, s0
                  slli         a7, ra, 6
                  xor          t6, ra, a0
                  srl          t4, a6, s11
                  sltiu        a4, s7, -2016
                  rem          ra, s3, s6
                  mulhu        s1, s9, a5
                  div          s6, s5, ra
                  srl          a1, a6, a2
                  remu         s0, zero, s11
                  slt          t3, gp, a2
                  ori          t1, s11, -192
                  andi         s8, s10, 1099
                  sltu         s11, a4, s1
                  rem          a4, t4, t3
                  mul          gp, gp, a3
                  add          t1, a0, s5
                  sra          tp, t0, a2
                  sltu         tp, s6, t6
                  div          s8, a3, zero
                  andi         t3, zero, -1908
                  add          s5, a4, a3
                  xor          s2, a0, s8
                  add          zero, t6, ra
                  slli         a7, tp, 3
                  sltu         s2, t4, s1
                  or           a0, s1, s5
                  srl          s11, t2, s5
                  addi         tp, a1, -1510
                  xori         s1, s10, -77
                  xori         s1, a0, -145
                  nop
                  mulhsu       s3, t1, s4
                  srli         t4, a2, 6
                  sub          s11, s1, t6
                  mulhsu       s10, a0, t3
                  sltu         s7, s11, s8
                  mulhu        s10, s6, s8
                  lui          s9, 389820
                  slli         a7, s10, 16
                  srai         t2, ra, 26
                  auipc        a1, 42018
                  srl          a1, s0, t0
                  xori         s5, t5, -944
                  mulhu        a7, s4, t0
                  rem          a2, a1, a7
                  xor          t6, sp, a0
                  nop
                  mulhu        tp, zero, a5
                  mulhu        zero, a7, t1
                  andi         tp, a5, 1758
                  slli         s11, a4, 12
                  lui          s11, 544896
                  slli         tp, s10, 17
                  sltu         t5, sp, t1
                  srli         sp, s7, 5
                  mul          a2, a4, a5
                  xori         s5, t2, 840
                  srl          s6, a1, a0
                  or           s10, t0, s3
                  divu         ra, zero, s11
                  sll          s7, s9, t0
                  xori         s6, tp, -385
                  or           a0, t3, t4
                  mul          s3, t2, t1
                  and          a5, s4, s9
                  sll          t4, a2, t1
                  ori          a5, s1, 420
                  and          sp, t5, s4
                  srai         s0, t4, 12
                  xori         s6, s2, -460
                  sltu         s5, a7, t1
                  divu         s3, sp, s0
                  andi         t4, zero, 95
                  mulhsu       a4, a3, t6
                  slli         gp, s2, 30
                  mul          t4, s8, ra
                  add          s9, t0, s3
                  mulhu        a2, a3, s0
                  add          zero, s1, t5
                  nop
                  nop
                  addi         t6, a0, -621
                  mul          a5, s9, a1
                  addi         ra, t6, -1190
                  srli         s1, s3, 8
                  srai         a1, a5, 14
                  andi         t1, zero, -1338
                  sltiu        ra, t4, 1909
                  ori          a6, s1, -444
                  srli         a1, t6, 31
                  remu         t5, ra, t2
                  add          t4, tp, gp
                  div          t4, s0, s0
                  mul          tp, s10, s6
                  and          a5, t3, s8
                  sltu         tp, sp, t0
                  sltiu        gp, a5, -1260
                  ori          s5, a5, 1575
                  mulhu        s9, a7, t6
                  mul          s9, sp, t3
                  or           s0, a0, t4
                  sltu         t4, zero, s6
                  xori         s9, a2, -509
                  and          s8, ra, t1
                  lui          a6, 70427
                  and          tp, s7, a1
                  srai         s10, t1, 9
                  sltu         t4, a1, ra
                  sll          tp, t4, a1
                  mulhsu       t5, gp, a0
                  xor          a0, gp, s8
                  mulhu        s2, a4, gp
                  mulhu        a6, s11, gp
                  mul          t6, a1, s10
                  slt          s2, t4, s11
                  andi         s0, s3, 28
                  add          s11, t0, s9
                  slli         t4, s9, 23
                  mul          a5, gp, s2
                  sra          a1, s2, a2
                  andi         s1, a1, -690
                  slti         a6, s11, -763
                  or           s3, s7, a0
                  srli         s5, t6, 14
                  remu         t6, s3, a1
                  divu         s11, ra, s4
                  sltiu        a1, a1, -1331
                  nop
                  and          sp, s3, a4
                  andi         a6, gp, 525
                  lui          ra, 146254
                  or           a4, t0, a0
                  sub          t1, s8, s3
                  mul          s6, t0, s9
                  auipc        s6, 376662
                  mulh         t4, s6, a1
                  sub          a7, zero, s3
                  ori          a1, gp, -310
                  mulh         t5, t5, t6
                  sub          t5, t6, s9
                  and          s7, t3, s5
                  sll          t1, s8, tp
                  xori         s6, s9, 1871
                  add          s11, t2, t0
                  or           a5, a1, gp
                  srli         t2, a7, 6
                  div          a4, s1, a3
                  mul          s8, s7, s7
                  and          s8, s6, zero
                  sltiu        tp, t0, 1526
                  sltiu        s7, ra, -170
                  srl          a5, s0, t6
                  slt          t3, t2, t6
                  div          a0, s1, s1
                  andi         sp, a4, 1869
                  srli         s6, sp, 31
                  sltiu        t6, s0, -417
                  or           s6, tp, a4
                  sltu         s0, s5, a0
                  andi         zero, a7, -1878
                  lui          s1, 28512
                  xor          a7, s2, t0
                  or           s9, ra, a1
                  sll          tp, zero, s9
                  ori          s5, t4, -1030
                  mulhu        a2, t1, s2
                  xor          a7, s2, a7
                  sra          t6, a0, a5
                  auipc        s0, 998630
                  sltiu        ra, sp, 263
                  xor          a4, gp, a7
                  auipc        a0, 804408
                  srl          t6, s11, t0
                  rem          t3, s3, s6
                  mulh         s3, s7, a7
                  srai         s10, sp, 3
                  srl          zero, a5, s10
                  sltu         s2, a1, gp
                  andi         t3, a0, -1810
                  add          a0, s1, t2
                  srai         s8, tp, 31
                  auipc        t1, 308086
                  sltu         a4, a2, s7
                  srai         tp, a3, 24
                  slli         zero, a4, 9
                  mulh         s2, s11, a0
                  slt          s3, s2, s11
                  srai         s7, a0, 15
                  rem          a7, zero, s1
                  nop
                  sub          s9, t3, sp
                  srli         ra, t2, 29
                  xori         t4, s0, -818
                  nop
                  sltiu        a7, s1, -610
                  xori         tp, gp, -9
                  sra          gp, s0, s5
                  srai         s0, s9, 1
                  sub          a1, s3, tp
                  sub          t6, s4, a7
                  ori          s3, s5, -1924
                  and          s10, s5, a3
                  slli         a7, s4, 4
                  srai         t4, s0, 31
                  mulhsu       a1, s8, s6
                  or           s0, s7, a1
                  and          t3, gp, zero
                  sltu         a6, a3, t0
                  nop
                  slli         tp, s9, 21
                  and          t4, s0, t0
                  mulhsu       tp, t6, t4
                  ori          a0, t1, 390
                  rem          a4, a6, t5
                  mul          gp, a7, zero
                  ori          t4, s5, 352
                  srl          s10, t2, s7
                  mulhsu       a2, a6, s8
                  sra          s8, s4, a6
                  div          sp, s6, t5
                  and          s10, t1, t1
                  lui          t5, 862626
                  or           s6, s3, t6
                  sll          ra, t2, s9
                  slt          s10, s9, a7
                  sll          s10, t2, gp
                  sltiu        s7, t6, 2017
                  and          a5, a0, sp
                  mul          a1, s2, ra
                  srai         s9, tp, 20
                  xor          a7, s4, s4
                  mulhu        s6, ra, tp
                  sltu         s7, t5, t1
                  nop
                  sra          s9, a0, s5
                  or           t4, a5, a5
                  srli         ra, t5, 1
                  sub          s2, s4, a5
                  sll          tp, t6, s7
                  sltu         s9, t6, a1
                  div          s5, s7, s8
                  slt          t3, ra, s5
                  ori          s7, s8, 1934
                  sll          s10, s5, s1
                  ori          s2, a3, -963
                  sltiu        ra, sp, -1884
                  and          t1, t1, t4
                  srli         t6, a5, 17
                  lui          tp, 818016
                  slt          s5, zero, a6
                  sub          s0, a6, s4
                  div          a5, a3, s9
                  mulhsu       zero, s9, s0
                  srl          t2, t1, s5
                  div          sp, s2, a5
                  rem          t2, a0, s5
                  andi         s11, t4, 1658
                  div          zero, t6, s11
                  xor          t4, a0, t5
                  sll          zero, a1, s7
                  auipc        s0, 726538
                  xor          s8, a1, t6
                  slli         t6, tp, 11
                  xori         s1, gp, 865
                  slti         sp, a7, 277
                  and          gp, zero, t2
                  div          t6, a1, a3
                  srli         s3, a7, 15
                  sltiu        s11, s6, -216
                  divu         s7, a3, a0
                  sltiu        t4, s9, 779
                  slt          sp, s4, a6
                  xori         s0, sp, 1283
                  div          t3, a5, sp
                  slt          a5, t2, a7
                  mulhu        t1, a2, s7
                  nop
                  lui          s11, 569191
                  or           s6, s11, a3
                  mulh         s3, tp, s5
                  mulhu        t2, t6, t6
                  ori          gp, s5, 1626
                  mulhsu       s5, a7, a5
                  rem          s1, t1, s2
                  lui          s10, 823991
                  divu         s10, s2, t4
                  srl          s2, s10, t0
                  srai         a7, s1, 29
                  slti         t3, t0, -979
                  srl          t1, gp, a5
                  lui          s11, 306567
                  srai         t4, t3, 7
                  slti         a2, t0, -1323
                  rem          t1, s9, t5
                  xor          a0, a3, zero
                  srl          zero, a7, sp
                  andi         a6, s5, -717
                  srai         tp, t0, 27
                  mulhu        s6, s6, t0
                  sltiu        a2, zero, 750
                  and          s5, s11, s6
                  remu         a2, a3, t6
                  add          s1, a7, s5
                  rem          a6, s6, a4
                  xor          ra, a0, s6
                  rem          a5, t5, s6
                  and          a0, a1, s4
                  srai         a2, t6, 4
                  add          s11, s3, s0
                  slti         s6, t0, -265
                  xor          a7, t1, s7
                  ori          a0, a1, 1061
                  slt          a5, a3, s1
                  sll          t4, t1, sp
                  and          a7, t1, a4
                  sll          t1, a7, t2
                  mulhu        t2, t0, s4
                  xor          s5, s11, s4
                  remu         t4, s0, a5
                  slt          ra, s8, t3
                  lui          a1, 299653
                  mulh         a7, ra, t2
                  mulhu        s10, gp, a2
                  mulhsu       a7, sp, s6
                  xor          s8, a3, t1
                  sub          a4, sp, zero
                  or           t3, s3, s8
                  divu         a2, t2, t6
                  divu         t2, t4, t2
                  mulh         a2, s10, s5
                  rem          t4, gp, gp
                  addi         sp, a6, -1206
                  mulhu        s1, a5, tp
                  add          s6, t5, tp
                  xor          tp, tp, t5
                  divu         ra, a6, s2
                  sltu         ra, t0, a3
                  slti         a6, s10, -392
                  addi         a6, s10, -650
                  sub          a1, sp, t0
                  nop
                  mulhsu       t2, s7, a3
                  lui          tp, 62778
                  sltiu        t1, s1, -1001
                  slt          a4, gp, ra
                  slt          s6, s6, s10
                  and          t2, a3, t4
                  or           t4, s6, t6
                  rem          gp, t2, s9
                  xori         a5, a4, -683
                  mulhu        s3, t4, a2
                  mulh         t4, tp, a6
                  divu         s8, t0, tp
                  slt          a0, t2, s4
                  andi         a5, a3, -462
                  srl          s2, s1, t0
                  xor          a1, tp, t5
                  slti         t3, ra, 230
                  xori         t5, s8, 1695
                  slli         t3, s8, 22
                  andi         a0, t3, -1469
                  remu         a1, a5, t3
                  remu         a4, sp, a1
                  div          sp, a0, zero
                  sub          s2, a2, a6
                  sra          a6, a4, a7
                  lui          s8, 620710
                  addi         sp, t6, -1807
                  mulhsu       s5, t5, a3
                  srai         s5, tp, 20
                  sltiu        tp, s1, 1396
                  slt          s8, gp, a3
                  or           s2, a1, a3
                  and          zero, t4, zero
                  nop
                  div          t5, s9, s4
                  mulhu        t4, s1, gp
                  mulhsu       a7, a4, s4
                  sll          s10, sp, t2
                  lui          ra, 56196
                  remu         t5, s3, s4
                  sltiu        s8, s1, -1738
                  rem          zero, a5, t3
                  andi         s6, s3, -165
                  sltu         t5, t6, tp
                  srai         s7, t0, 16
                  div          gp, gp, s6
                  slt          s2, a6, s7
                  slt          a7, s11, a7
                  nop
                  slt          s0, s1, t6
                  slti         s8, gp, -879
                  addi         a6, s7, 1707
                  srli         s2, s6, 30
                  mulhu        s7, s6, tp
                  xori         s2, t2, -1021
                  mulhu        t6, tp, a5
                  div          t5, a1, a2
                  sltu         t3, a1, t3
                  sltu         t5, s11, t5
                  mulhsu       a1, s7, t3
                  sltiu        tp, sp, -1833
                  slli         s3, s8, 25
                  rem          s9, zero, s11
                  slli         a5, a5, 31
                  sltu         t2, s6, a2
                  divu         s5, t6, sp
                  mulh         gp, s4, s10
                  srl          ra, s7, ra
                  mulhu        t6, s7, s11
                  add          s8, s7, zero
                  nop
                  mulhsu       zero, s1, a3
                  sltu         s1, s0, s11
                  lui          a5, 265126
                  andi         s11, s1, 503
                  add          a2, s7, t0
                  nop
                  sub          s3, s8, s8
                  sltu         a7, s8, gp
                  remu         a7, s10, s5
                  add          s5, a6, s1
                  srai         a6, s9, 2
                  sltiu        s5, t6, 1954
                  xor          s10, s11, a3
                  nop
                  addi         a0, s5, 584
                  nop
                  srai         s8, t2, 12
                  mul          s2, s8, gp
                  or           t5, s1, s8
                  and          tp, s7, s9
                  sra          a7, t3, s2
                  srai         t2, s11, 16
                  mulhsu       s6, t6, zero
                  srl          a0, t4, s0
                  or           a0, zero, s3
                  sra          tp, s0, a2
                  sltu         s11, s4, tp
                  andi         sp, a5, -1769
                  sltu         a7, t2, a1
                  add          t2, a6, a7
                  mulhsu       t3, a5, s5
                  slli         s9, t0, 2
                  ori          a4, t1, -1459
                  sltu         s6, s4, s6
                  srli         zero, tp, 21
                  sub          a5, t4, a0
                  xori         a5, s5, 1244
                  lui          t1, 36516
                  srl          a1, a5, s4
                  nop
                  div          s2, a7, s10
                  auipc        s0, 52354
                  mulhsu       gp, s7, s2
                  auipc        sp, 707163
                  addi         a7, tp, 1127
                  sltiu        s3, a5, 1274
                  addi         t5, t5, -1398
                  slti         s6, s6, -1710
                  and          a5, t6, ra
                  divu         t2, gp, a3
                  sltiu        a0, a3, 1465
                  slt          t4, ra, s9
                  slt          ra, s8, a3
                  add          gp, a3, a3
                  sltu         s7, sp, s3
                  div          t6, s11, s7
                  addi         a2, s7, -1021
                  slt          a6, t3, sp
                  remu         s9, s4, a2
                  srli         s11, s4, 17
                  divu         a2, s3, a6
                  rem          t6, a4, a4
                  rem          t3, a3, a0
                  nop
                  or           t6, s0, sp
                  xor          zero, a3, t1
                  auipc        t5, 1031435
                  auipc        s7, 795008
                  srl          s10, a0, a3
                  srai         s0, a3, 6
                  remu         s10, s9, gp
                  mul          t3, s3, a1
                  rem          a6, a6, s5
                  srl          s8, a3, s5
                  mul          a1, sp, s4
                  sub          a0, s1, s6
                  mulhu        s9, a7, ra
                  nop
                  slti         a1, a4, -1601
                  sltu         t6, t2, s3
                  nop
                  mulhu        tp, t1, s9
                  and          s6, t4, t5
                  sll          t6, zero, t1
                  srai         t4, s4, 30
                  auipc        a1, 526571
                  or           s8, s5, t2
                  slti         s5, s4, 747
                  andi         t2, s4, -1956
                  srli         t3, zero, 17
                  rem          s5, s1, a7
                  lui          tp, 468618
                  srl          t6, s3, s1
                  rem          tp, t3, sp
                  srli         s7, t1, 0
                  mul          s5, t1, a4
                  sll          tp, t2, a1
                  slli         t1, a7, 10
                  nop
                  sltu         s5, a2, t3
                  xor          zero, a6, ra
                  add          a7, s7, a0
                  auipc        a4, 351175
                  mul          s5, zero, s10
                  sll          a6, a6, t6
                  srli         s8, s10, 12
                  sll          s6, s4, s10
                  slli         s11, t5, 31
                  divu         s2, a6, a1
                  sltu         t4, t1, s6
                  andi         t5, a1, 1788
                  sra          a0, zero, a4
                  sll          s9, s11, s2
                  mulhu        a1, s2, gp
                  remu         zero, s11, ra
                  srai         s8, s6, 3
                  slli         t5, s8, 2
                  mulhu        a4, s0, a7
                  slti         s8, s3, 1041
                  add          s11, t2, tp
                  sltiu        s0, t1, 36
                  mulh         a2, s2, a6
                  or           s5, t2, s9
                  div          s1, s9, s4
                  mul          s11, a0, a0
                  srai         ra, a1, 31
                  auipc        t4, 23549
                  remu         s11, a4, s0
                  divu         ra, t0, s4
                  srai         tp, a5, 29
                  mulh         a2, s11, s5
                  slt          a5, gp, a0
                  or           tp, t3, s6
                  nop
                  slt          s10, a5, t6
                  sltiu        a5, sp, -352
                  remu         s5, tp, s8
                  sub          s8, s4, t0
                  andi         t4, s5, -373
                  mulhu        tp, a6, a3
                  addi         zero, t1, -1822
                  mulh         zero, a2, a2
                  rem          s9, t5, s2
                  mulhu        a5, tp, sp
                  auipc        tp, 431418
                  mulhsu       s7, t6, a6
                  xor          s2, t1, gp
                  mulhsu       s5, s10, a7
                  srl          s8, t4, s5
                  or           a4, a5, s4
                  slti         s3, tp, -283
                  sll          s6, s0, a4
                  andi         t1, a5, -44
                  nop
                  sll          sp, s2, a2
                  xori         ra, s0, -2002
                  rem          s10, s7, a5
                  sra          s7, s1, s5
                  andi         sp, a0, -748
                  srl          a7, s5, a4
                  srai         t4, s7, 26
                  sltu         a4, a5, t5
                  or           a7, t4, s5
                  mulhsu       t3, tp, s10
                  mul          t6, s7, s0
                  remu         sp, s0, zero
                  div          a5, a6, t4
                  mulhsu       s6, s5, tp
                  srli         s5, s11, 27
                  rem          t3, a3, s9
                  nop
                  add          a6, s6, s2
                  sltiu        tp, s3, -447
                  slt          s11, t5, s4
                  mulh         a4, s8, s11
                  ori          a1, t0, -1160
                  xor          a2, a3, ra
                  srl          t3, s11, s6
                  srai         s10, a7, 21
                  xor          a5, sp, s10
                  sltu         t5, zero, t0
                  ori          t4, s7, -746
                  sll          a0, s2, zero
                  xori         a5, a6, 202
                  mulhsu       t4, gp, gp
                  addi         s11, s11, -1036
                  add          gp, a0, t1
                  div          t4, s7, s2
                  divu         s6, gp, t0
                  rem          zero, a2, s1
                  mul          a7, s3, a4
                  xori         t5, s0, -1153
                  add          s11, t2, s5
                  divu         a1, a2, s2
                  sub          zero, s10, a6
                  xori         t1, t6, -1240
                  and          gp, s6, a1
                  mulh         t6, gp, s9
                  nop
                  xor          s2, a6, s10
                  mulhsu       s6, t5, s3
                  xori         s2, t3, -1359
                  slli         s8, s0, 1
                  mul          tp, s8, a6
                  addi         s9, t4, 1379
                  sra          tp, a3, t4
                  nop
                  slli         t6, a1, 0
                  mulhu        ra, s9, zero
                  slt          s6, s11, gp
                  and          s3, s0, a6
                  lui          s0, 440126
                  srai         s6, a1, 21
                  and          t1, s11, s2
                  div          a6, t4, gp
                  mulhu        a2, tp, a6
                  xori         s9, a4, -1227
                  and          a2, s3, a6
                  srai         s1, s1, 8
                  mulhu        a7, s7, s11
                  remu         a2, tp, s5
                  div          s0, a1, a7
                  srl          s6, s8, s7
                  div          a7, s5, sp
                  xori         s1, s4, 1285
                  mulh         a4, ra, s10
                  auipc        s1, 827836
                  div          s10, t5, s3
                  mulh         t2, t4, a6
                  srl          s1, s9, s3
                  mulhu        s3, s9, s5
                  remu         tp, s10, a1
                  nop
                  div          gp, ra, s0
                  div          s0, s6, t5
                  srli         a7, a3, 24
                  xor          s8, s0, s0
                  addi         s6, sp, 1822
                  ori          gp, a2, -1770
                  add          a5, tp, gp
                  slli         s9, s11, 16
                  srli         a5, s11, 14
                  xor          a2, t6, s7
                  srli         s2, t3, 25
                  slli         a5, s7, 25
                  xor          s1, a7, a2
                  or           a4, s2, t5
                  lui          s10, 951775
                  sra          zero, s3, a7
                  sltu         a7, s1, s10
                  srai         s6, a2, 14
                  add          t2, s9, t1
                  xor          a7, s10, zero
                  divu         zero, s5, a6
                  srl          s5, t3, a3
                  xor          t6, a0, a7
                  mul          s1, s2, a1
                  slti         s9, t1, 1964
                  lui          a6, 212578
                  sltiu        s6, a1, 1944
                  divu         s1, s1, t5
                  sll          a4, s0, a1
                  ori          ra, tp, -1006
                  sltu         s1, tp, a7
                  mulhu        ra, zero, a4
                  div          t4, zero, s5
                  and          tp, zero, s8
                  and          a5, a5, a6
                  sub          zero, s7, a4
                  sltiu        s0, s3, -97
                  slti         ra, s1, -377
                  srl          a6, s3, a2
                  ori          s1, s4, 1810
                  sub          t2, s4, s1
                  slli         a2, t5, 30
                  addi         sp, s4, -1970
                  nop
                  srl          a1, tp, t5
                  auipc        t4, 838829
                  div          s5, t6, t6
                  sra          s7, s3, t4
                  or           s0, s1, s2
                  or           a5, s4, s2
                  slt          s11, s11, a6
                  sub          sp, t0, tp
                  sltiu        ra, a6, 1811
                  remu         s6, s9, a0
                  and          a6, t0, s9
                  div          s2, t6, sp
                  and          a2, s10, a2
                  sub          s10, t0, s4
                  div          tp, a6, a6
                  rem          s0, a6, s5
                  rem          zero, t6, t5
                  nop
                  or           s5, s4, s1
                  slt          a6, gp, s4
                  lui          s6, 803509
                  remu         t3, s0, gp
                  or           s10, s8, t6
                  mul          s8, t1, t1
                  lui          s7, 881057
                  div          tp, a0, a4
                  remu         s11, s9, s2
                  andi         s8, s3, -1597
                  mulhu        s7, s2, a0
                  sll          s6, s7, a1
                  xor          s0, a2, a7
                  sltiu        s0, t1, 644
                  mulhsu       s10, gp, tp
                  slti         s8, ra, 907
                  addi         t2, t0, -1306
                  sll          tp, s5, s1
                  or           sp, s11, a1
                  xor          t1, s0, t0
                  slti         s7, t5, 1313
                  mul          tp, s6, s5
                  srl          a5, t3, ra
                  sra          s11, s7, t0
                  sltu         a6, t3, t6
                  slt          s2, s9, a6
                  srl          a6, zero, sp
                  sll          s2, a4, zero
                  sltu         t1, tp, a2
                  slli         t3, a1, 13
                  sltu         s9, t4, s7
                  divu         s9, a4, s7
                  add          s2, a1, t2
                  slli         gp, ra, 4
                  auipc        s6, 134091
                  rem          sp, a5, tp
                  addi         zero, ra, -281
                  srai         t2, t1, 22
                  andi         s6, t1, 852
                  div          t2, a1, a0
                  mulhsu       a5, sp, s7
                  srl          s5, a6, zero
                  slt          sp, s11, s9
                  slli         s1, s4, 7
                  sub          tp, a3, s4
                  addi         t3, tp, -997
                  addi         gp, t4, 1716
                  add          s9, s5, s3
                  mul          a6, a5, s11
                  xori         t4, t2, -1677
                  mulhu        s0, s1, s2
                  nop
                  sltiu        sp, a1, 905
                  mulhu        s5, a3, s8
                  nop
                  sub          s3, t4, zero
                  slt          s5, t6, zero
                  auipc        s5, 167016
                  addi         ra, s1, -572
                  mulhsu       s2, s0, s11
                  remu         s11, t6, t0
                  auipc        s3, 1209
                  mulhsu       t4, s0, s0
                  srai         a4, s9, 16
                  xori         s0, s3, -1811
                  sub          a7, s0, s9
                  xori         ra, s9, 1599
                  nop
                  sltu         t1, t5, a0
                  slti         s7, a2, 613
                  remu         ra, t1, ra
                  and          s8, s9, s8
                  sltu         s3, s1, a0
                  remu         a7, a1, s5
                  xori         a5, sp, 1218
                  sra          s9, zero, sp
                  divu         zero, s10, s10
                  auipc        t5, 572716
                  srl          s0, t0, a0
                  slt          s5, a5, t3
                  slt          a4, s4, s3
                  sltu         a5, s7, a4
                  or           a2, t1, a1
                  sltiu        t1, s0, 610
                  srl          a2, s5, a7
                  andi         t6, tp, -662
                  lui          gp, 1030758
                  sltu         tp, t0, t0
                  sll          s11, t4, a7
                  and          t2, gp, a4
                  mulh         gp, t6, a4
                  or           s10, gp, sp
                  slti         s0, tp, -235
                  sltiu        sp, a7, -1034
                  mul          a4, zero, s7
                  addi         a0, a6, -1820
                  addi         a5, s0, 1476
                  sltiu        t4, s7, -1355
                  ori          s7, s2, 1342
                  mulh         sp, s2, a1
                  slt          a2, t4, a4
                  sltiu        s9, s8, 498
                  mulhu        t3, a6, a0
                  div          s0, tp, s4
                  srl          zero, s9, a1
                  slti         s2, a6, -371
                  rem          t4, s10, s4
                  sub          s7, s0, a2
                  sltiu        s8, s10, 1974
                  xori         a4, gp, 690
                  divu         s5, t5, s8
                  andi         s5, t2, 1528
                  srai         s6, s5, 25
                  add          gp, s0, t1
                  xor          s1, s3, s5
                  rem          a1, s3, tp
                  srai         s5, s9, 10
                  ori          tp, t0, -270
                  xori         a4, s3, -1832
                  sll          a6, ra, s9
                  mulhu        a5, t5, t3
                  sltu         t3, s10, s4
                  rem          t6, t3, a1
                  slti         t2, s10, 758
                  xor          a2, s3, s3
                  div          t1, s3, s4
                  slli         t4, s5, 4
                  sub          s6, t2, s8
                  divu         a6, a6, s5
                  slti         t2, a5, 1807
                  or           a5, t5, s3
                  addi         a5, t2, 282
                  remu         s11, sp, s10
                  and          s0, s3, s3
                  sub          tp, s3, a6
                  srai         t5, s10, 13
                  mulhu        zero, s5, t4
                  srl          t1, s2, s10
                  addi         s10, t5, 1331
                  or           s3, a6, a5
                  ori          a7, a7, -545
                  mul          a6, s6, t2
                  srli         s10, s9, 27
                  mulh         s10, a0, s10
                  srli         tp, t5, 11
                  add          t2, t5, s7
                  xor          a2, sp, a4
                  remu         zero, s7, zero
                  divu         a4, t1, s1
                  remu         s6, a6, s9
                  nop
                  and          a6, s3, a7
                  ori          s0, s10, 396
                  xori         a5, s8, -2039
                  mulhu        s3, t3, t4
                  slti         s0, s9, 1262
                  mul          t3, s5, a0
                  or           t3, t2, a4
                  div          t5, s1, a6
                  slt          t4, s2, s6
                  srl          s10, s6, a5
                  slti         a7, s1, 1573
                  remu         t2, t4, s5
                  auipc        s11, 153844
                  slti         s11, s0, -138
                  sltiu        a6, s9, 1293
                  andi         s0, s3, 1910
                  and          s5, zero, s3
                  lui          a5, 109141
                  xori         s9, s4, -1735
                  srli         a6, gp, 1
                  lui          a6, 440780
                  sra          s9, a1, s8
                  nop
                  slli         s9, a2, 31
                  sub          t4, t0, t2
                  lui          a1, 772950
                  slt          a1, s6, s1
                  add          a4, t0, a0
                  srai         t4, a7, 25
                  slti         a1, a7, -1846
                  addi         a6, s11, 889
                  sub          a6, a4, s1
                  div          s2, a4, a3
                  slt          t6, zero, t6
                  ori          a1, a0, 1920
                  mulhu        a2, t5, s11
                  mulh         a1, a1, tp
                  divu         s11, tp, t1
                  mul          s8, t5, s10
                  lui          a5, 143951
                  rem          t6, a4, a3
                  remu         s10, s7, ra
                  xori         zero, a5, -914
                  lui          s5, 741181
                  remu         s0, a4, s6
                  andi         s7, a2, -1976
                  slti         s7, s7, 3
                  andi         a1, a1, 1368
                  divu         s9, a6, a1
                  slli         s1, gp, 12
                  mul          s3, t5, s0
                  slt          a5, t6, tp
                  remu         s6, a7, t5
                  nop
                  mulhsu       s6, a2, zero
                  slli         t1, s7, 5
                  mulhsu       s6, sp, s3
                  sll          s5, ra, s9
                  mul          t2, a2, ra
                  auipc        s10, 123041
                  slt          t4, s9, t1
                  div          s0, s2, s7
                  and          s8, t2, s2
                  srai         s3, a2, 21
                  andi         s3, s4, -580
                  srli         t1, ra, 18
                  xor          s1, zero, t6
                  or           s5, s1, a7
                  divu         t5, s4, a3
                  srli         s7, t4, 22
                  slli         s5, a0, 26
                  auipc        ra, 508787
                  mul          t2, s6, t2
                  sltiu        s1, sp, 2027
                  mul          t3, s3, s6
                  divu         a5, s9, a1
                  remu         t2, a5, t6
                  xor          s7, s4, s7
                  slli         s9, a1, 22
                  and          t4, s9, s6
                  srai         t4, a2, 14
                  sub          t1, zero, s7
                  sll          s6, a7, t5
                  andi         t1, s2, 1819
                  rem          s1, t5, t6
                  srl          gp, a6, t4
                  xor          a4, tp, sp
                  mulhsu       s10, s5, ra
                  rem          a7, ra, s8
                  addi         tp, a6, 603
                  auipc        s0, 994439
                  div          s5, t2, s9
                  sll          sp, t6, s1
                  mulhu        s5, t0, s4
                  lui          a2, 274965
                  rem          tp, zero, s11
                  srli         a0, a4, 15
                  mulh         t3, a7, t2
                  auipc        tp, 768624
                  sub          s11, a5, a6
                  or           a6, s6, s3
                  mulh         t6, t5, t5
                  mulhsu       a6, s9, s7
                  or           s11, a2, s1
                  srl          t3, s11, t4
                  or           t2, t1, s7
                  mulhu        s9, s4, a7
                  lui          t3, 642298
                  mul          ra, s8, sp
                  and          a5, t4, s6
                  sra          t5, s2, s7
                  srli         s5, t0, 9
                  mul          s7, zero, s6
                  sra          a7, t3, t2
                  add          t2, s6, s2
                  sltu         t3, a3, a1
                  slli         a6, s5, 30
                  add          tp, t5, s7
                  add          sp, s5, a4
                  or           t5, a0, a3
                  slli         s6, t5, 11
                  mulhsu       a4, t1, a7
                  addi         s7, s1, -1558
                  mulhsu       t6, gp, s6
                  mulhsu       ra, s11, s0
                  srai         t6, a7, 22
                  xor          a1, a6, a0
                  mulh         a7, s11, a7
                  nop
                  sra          t1, s7, ra
                  add          ra, s2, s9
                  xori         sp, a4, 1792
                  sltu         s3, t3, a7
                  srl          s8, t2, s6
                  divu         tp, t6, s5
                  sll          a2, s2, s4
                  auipc        t6, 983104
                  sub          t6, s10, t4
                  xori         s6, t3, 1257
                  ori          s5, s5, -678
                  slli         a2, s3, 0
                  sra          s7, s1, a7
                  xor          a7, t1, a7
                  and          tp, s11, t6
                  ori          s5, a6, 1627
                  srai         s10, s10, 12
                  mulh         t2, a4, t6
                  and          a6, t1, gp
                  auipc        a0, 317481
                  mulhu        tp, s0, s11
                  srl          s10, a1, s11
                  mulh         s1, s1, t3
                  or           s5, s11, s3
                  mulhu        s5, a2, s9
                  divu         a5, ra, s2
                  divu         a0, a5, s1
                  andi         gp, a4, -871
                  sltiu        t4, t6, 835
                  mul          a6, a4, a0
                  divu         a4, gp, s8
                  andi         ra, s10, 581
                  sltiu        s6, tp, -2045
                  sltu         s1, s1, s10
                  lui          a7, 335929
                  mul          t6, gp, s10
                  mulhu        t2, a0, s3
                  sra          s7, a3, s8
                  add          zero, s11, sp
                  and          zero, tp, t6
                  remu         t2, a1, gp
                  sltu         a4, s6, a0
                  slt          s8, t5, t0
                  mul          s1, a6, a7
                  sub          s9, t3, a1
                  xor          t6, t3, s2
                  lui          gp, 283231
                  nop
                  addi         a2, s5, -1320
                  rem          s7, t2, t6
                  mul          t3, t2, s7
                  srli         gp, a7, 21
                  sra          t3, t1, s3
                  mulhsu       s1, s3, s4
                  or           t2, t5, s9
                  remu         s0, a1, s7
                  addi         s8, a2, -909
                  remu         a4, sp, t4
                  div          s6, t0, s9
                  xori         a1, s2, -735
                  slli         a7, sp, 17
                  rem          s1, s10, s5
                  mul          t3, a0, tp
                  add          t1, t5, s1
                  slti         t6, t5, 293
                  srai         s11, tp, 30
                  srli         t4, s11, 18
                  and          a0, s7, t6
                  xori         gp, a3, -1311
                  lui          tp, 456376
                  mulhu        a7, s4, s6
                  xor          a4, s10, a2
                  sltu         s2, s11, s0
                  xori         t5, a0, -195
                  slli         a0, t1, 28
                  mulhsu       s10, s11, a3
                  add          t1, a0, a5
                  remu         s9, s1, t6
                  rem          s6, s3, s11
                  sltiu        gp, a5, 1116
                  rem          s11, s11, t2
                  xor          a1, gp, s4
                  sub          s8, a4, t5
                  rem          ra, t2, a6
                  ori          tp, t5, 325
                  mulh         a6, s5, a3
                  auipc        s7, 9264
                  sltu         s0, tp, s8
                  or           s11, s9, a5
                  sll          t2, t2, s2
                  nop
                  and          s7, t3, s1
                  xor          s3, t5, s0
                  nop
                  sltiu        s10, s7, -1902
                  mulhsu       t4, s5, s4
                  slli         tp, a1, 11
                  lui          a5, 189759
                  slli         s9, s5, 7
                  mul          t1, t5, s3
                  ori          s8, a0, -1422
                  xori         a0, a5, 56
                  sltiu        s9, zero, 425
                  mulhsu       s0, s11, sp
                  rem          s2, s2, t2
                  mul          s0, s3, s7
                  lui          a7, 452746
                  srai         s10, t5, 29
                  nop
                  mul          s2, s0, t3
                  slt          t3, s7, tp
                  srli         tp, a6, 14
                  mulhsu       a2, t2, s8
                  xori         tp, a0, -512
                  srai         a2, t3, 26
                  div          t5, t2, zero
                  addi         s5, ra, -1970
                  sub          s11, t0, ra
                  sra          a6, a6, a5
                  or           a2, t1, t1
                  addi         a6, zero, -347
                  srli         tp, t5, 24
                  auipc        a1, 995724
                  xor          s7, gp, gp
                  slti         tp, s2, 1714
                  addi         s6, a4, -497
                  div          s7, s1, a4
                  andi         s2, s8, -972
                  andi         s10, tp, 1764
                  andi         a6, a7, 636
                  xori         s8, s9, -2025
                  ori          t1, gp, -1289
                  mulhsu       s5, s4, t6
                  mulhu        t4, s9, sp
                  divu         s3, a3, t1
                  srai         s6, s6, 14
                  srli         a2, t1, 6
                  srai         ra, s7, 21
                  sra          ra, s2, t4
                  slt          s10, tp, zero
                  sra          s11, s10, a1
                  ori          gp, s9, 1610
                  xori         s3, s1, 1007
                  rem          t2, s7, sp
                  slt          s0, s9, a4
                  slti         t5, s4, 554
                  slti         a6, s6, -617
                  sltiu        s3, ra, 1042
                  sltu         a0, t1, s11
                  mul          t3, a5, tp
                  slt          sp, t2, t3
                  sltiu        s8, s3, -1250
                  sltiu        a2, s1, -547
                  andi         t2, a3, -1355
                  divu         t6, ra, s7
                  slt          t2, t5, a2
                  mulhsu       s10, s11, s3
                  mul          a4, s3, s6
                  lui          sp, 22474
                  and          s1, s5, a4
                  sra          tp, s2, s4
                  sltiu        zero, a4, -1700
                  nop
                  ori          t5, s3, -405
                  xori         s3, a6, 227
                  and          sp, a2, s2
                  rem          s8, s2, t3
                  mulh         a4, s3, s3
                  or           a2, a0, s3
                  sltiu        s5, t6, -1950
                  xori         s0, a3, 603
                  andi         s1, s6, -1839
                  xor          s5, t0, s3
                  rem          t1, s0, s1
                  ori          a2, t3, 1860
                  ori          s11, s2, 93
                  rem          a2, t2, s0
                  ori          s7, s7, 1735
                  divu         t5, t1, s11
                  sra          t3, a1, s4
                  andi         a7, t6, -1275
                  sltu         tp, s8, t2
                  sltiu        s6, s9, -128
                  remu         s11, ra, s10
                  srli         s1, a4, 5
                  xor          t1, s8, t5
                  srai         a5, t2, 6
                  andi         t3, s7, -1422
                  slli         zero, s8, 1
                  mulhsu       sp, s5, t0
                  add          s3, s4, t6
                  xori         a0, t6, 405
                  slli         tp, t5, 31
                  remu         t6, t1, a2
                  srl          zero, a6, s7
                  slti         a6, tp, 996
                  sltu         s1, s4, s3
                  andi         tp, s11, -1400
                  srl          t2, s1, a4
                  srli         a4, s4, 17
                  divu         t6, tp, s3
                  sub          a6, s7, s11
                  ori          s11, s2, 299
                  srli         tp, a4, 8
                  mulhu        s2, t3, t5
                  and          a4, s7, t0
                  mulh         s10, s10, a2
                  mulhu        t6, t1, ra
                  xor          s5, a2, a4
                  add          a0, a7, s7
                  sltiu        a5, a2, -819
                  sra          a7, s6, a4
                  add          t3, s6, a4
                  mulh         s6, a3, zero
                  sub          tp, ra, s3
                  srai         tp, a2, 28
                  lui          t3, 69948
                  srai         tp, t3, 2
                  rem          gp, t5, t5
                  mul          s7, s3, sp
                  addi         t4, t0, 1974
                  remu         s6, s8, s10
                  ori          s8, a2, -1929
                  auipc        sp, 75180
                  div          s8, s10, t2
                  or           t6, t1, s4
                  ori          zero, zero, -410
                  slli         a4, tp, 14
                  and          t2, t4, s0
                  nop
                  sra          a7, a0, a6
                  slli         ra, a7, 7
                  sll          s9, zero, sp
                  auipc        ra, 722812
                  rem          tp, s2, a5
                  nop
                  sra          s1, a1, ra
                  rem          t3, t2, s3
                  ori          t4, gp, 633
                  mul          s6, zero, a1
                  add          t3, s10, s8
                  rem          s6, t1, a2
                  lui          s6, 642343
                  lui          a4, 566757
                  sub          a6, s6, a0
                  auipc        sp, 14433
                  rem          a1, tp, s8
                  slli         ra, tp, 18
                  sltu         s8, a3, t6
                  or           ra, s7, s0
                  add          a2, a6, a2
                  lui          t2, 443777
                  mulh         ra, a6, s4
                  xori         s11, a6, -705
                  or           s10, s10, s1
                  and          s9, s11, s10
                  andi         s5, t5, -605
                  sltiu        t5, s6, -1825
                  rem          gp, s5, ra
                  mul          a4, a2, a2
                  divu         s5, t3, s5
                  sltiu        a2, s9, 243
                  or           s1, s0, a2
                  lui          a4, 164399
                  add          a0, t0, a3
                  ori          t2, s6, -41
                  and          s2, t5, s7
                  srl          s3, s4, s1
                  and          t2, s2, sp
                  xori         s5, t1, 413
                  slt          a6, s9, a5
                  sltu         t5, s9, gp
                  remu         t4, s2, a4
                  sub          zero, s7, sp
                  rem          s10, t5, t2
                  srai         s0, t2, 30
                  nop
                  and          s9, a5, s10
                  sltu         s9, t4, t1
                  or           t4, a3, s9
                  sltu         t2, zero, s7
                  mulhu        s2, a2, t5
                  rem          zero, a7, s7
                  addi         s5, t3, -1245
                  srai         t1, t6, 27
                  and          s7, a2, s1
                  mulh         a2, a1, s6
                  or           t4, a1, s6
                  srai         gp, t1, 9
                  nop
                  sll          ra, t6, t1
                  ori          t1, t2, -1974
                  sub          a5, t6, s3
                  remu         s7, t4, t4
                  sll          a1, s1, tp
                  srl          s5, sp, s8
                  sra          t5, zero, zero
                  srai         s11, s5, 8
                  sra          a4, s0, s10
                  ori          zero, a7, 1504
                  sltu         t1, zero, t3
                  nop
                  slt          s7, t0, t4
                  sltu         s5, t0, t3
                  slti         s11, s1, -809
                  srli         s0, s6, 15
                  slli         s1, s10, 3
                  and          s6, s3, a3
                  andi         s9, t6, 1280
                  andi         s10, gp, 1694
                  andi         s11, a1, 634
                  rem          s9, s1, s4
                  srai         t5, t0, 19
                  slt          s2, s0, s9
                  srli         ra, a1, 18
                  xori         a0, s7, -1038
                  slli         a2, s6, 25
                  slli         a5, t0, 3
                  sltu         s6, t3, a4
                  andi         s9, t1, -368
                  andi         s10, s1, 707
                  nop
                  srl          s9, s7, t3
                  srli         t1, t6, 12
                  lui          t1, 310297
                  and          t1, t3, ra
                  slli         tp, ra, 19
                  slt          s6, a1, a7
                  or           s1, tp, s8
                  srai         ra, s2, 25
                  div          a4, gp, s5
                  nop
                  nop
                  divu         s10, s2, t5
                  srli         s11, s4, 10
                  auipc        ra, 477553
                  ori          a5, a2, 723
                  srli         s1, t5, 14
                  sltu         s9, gp, a3
                  sll          a0, zero, s4
                  xori         a6, sp, -1849
                  mulhu        t3, s6, t4
                  sra          zero, s9, s0
                  sll          s5, s7, s10
                  sll          s3, t1, s9
                  lui          s10, 853320
                  mulhu        s0, gp, s2
                  nop
                  div          s2, a1, s6
                  divu         s6, sp, t2
                  lui          tp, 876596
                  nop
                  mulh         t3, a2, s3
                  slti         s3, zero, -893
                  mulhsu       s5, a7, s6
                  slt          s1, a6, s1
                  srli         s9, t6, 27
                  and          t5, s1, t6
                  divu         gp, a7, s4
                  mulhu        gp, s0, s5
                  mul          s7, a4, sp
                  xori         a2, s9, -1176
                  sra          t2, s2, gp
                  add          t4, s7, a0
                  addi         s3, t5, 141
                  ori          s6, s1, -1304
                  srli         s5, a2, 12
                  slt          s0, ra, s4
                  mulhsu       a0, gp, sp
                  mulh         a5, t3, s3
                  and          t4, s0, a0
                  and          s10, t3, s4
                  auipc        s5, 516608
                  or           a2, t5, sp
                  mulhsu       s2, t4, s0
                  or           s11, s6, s10
                  sra          t2, s10, s6
                  xori         sp, t1, -397
                  srli         s5, s10, 17
                  addi         t5, t2, 11
                  auipc        s1, 813214
                  mulhsu       a1, a6, t2
                  mulh         s2, a4, t5
                  remu         s3, s7, t3
                  div          a5, s6, a0
                  remu         tp, tp, s11
                  mulhsu       t2, ra, sp
                  nop
                  xori         s7, t5, 577
                  srli         t3, a1, 0
                  or           s6, zero, t0
                  add          a7, s6, t3
                  add          zero, s6, gp
                  srl          s8, a3, s11
                  mulhu        a2, s11, zero
                  remu         a0, a6, t2
                  sra          a0, s6, a2
                  ori          a1, s9, 67
                  addi         s6, s11, -666
                  auipc        a4, 275362
                  slli         s3, s11, 6
                  lui          a6, 26658
                  xori         t6, s9, -677
                  mulhu        s1, a6, s10
                  mul          a7, sp, t0
                  auipc        s8, 521026
                  slt          a1, t6, t1
                  xor          s10, t0, zero
                  sub          s1, zero, gp
                  srai         s8, sp, 10
                  slt          s6, s0, s10
                  auipc        s11, 797451
                  sll          tp, s10, s6
                  sra          zero, s5, s1
                  mulhsu       t6, t5, a0
                  rem          a6, ra, s3
                  srli         s2, t3, 4
                  addi         s6, s7, 1882
                  mul          ra, s7, a2
                  xori         t5, s2, -859
                  xori         s0, s3, 57
                  and          a1, a4, t1
                  remu         s11, tp, a1
                  divu         s6, s3, tp
                  sltiu        a1, a1, -1691
                  sll          s6, s8, t5
                  auipc        t1, 589054
                  mul          s3, s8, s9
                  slt          s3, t3, s11
                  srai         s5, a0, 8
                  mulhu        s10, ra, zero
                  remu         s0, a5, t1
                  sltiu        t6, s7, -1049
                  slli         s5, a0, 5
                  auipc        t3, 134387
                  slti         gp, s0, -2037
                  sltu         gp, t0, s5
                  div          s11, s5, a3
                  andi         t5, a4, -1288
                  xor          s11, s1, a5
                  slti         s7, a2, 1334
                  add          s0, zero, s5
                  or           t4, sp, ra
                  srli         a5, s10, 18
                  mulhsu       s2, a7, t2
                  ori          a2, a2, 1606
                  divu         s3, t3, s10
                  mulhu        s0, t4, s7
                  mulhsu       s8, a7, s9
                  sll          a5, a2, a3
                  srl          a7, s7, s10
                  remu         t1, t5, a4
                  mulhu        s5, a3, a3
                  xor          a7, a7, sp
                  srai         s6, t2, 14
                  sra          zero, a2, s3
                  or           t3, a1, a3
                  mulh         s6, sp, s1
                  auipc        s11, 160767
                  divu         sp, s7, s3
                  sltiu        sp, a0, 206
                  sltiu        s6, a7, 856
                  srli         s5, s8, 31
                  remu         a1, t4, gp
                  addi         s1, s9, 1603
                  nop
                  sll          s5, t0, a4
                  auipc        t1, 980969
                  div          a5, a7, s3
                  mulh         zero, t5, s1
                  sll          a1, a1, a4
                  addi         zero, t0, -106
                  sll          t4, a3, sp
                  ori          t1, a3, 1510
                  sub          s6, sp, s0
                  addi         t3, tp, -327
                  slli         t2, gp, 19
                  xori         a5, s3, -1355
                  mulhu        a0, t6, s1
                  or           a4, a7, s5
                  srli         s5, s2, 23
                  add          t6, a5, gp
                  add          zero, s8, a7
                  div          s10, s8, t3
                  divu         t5, a6, a1
                  sub          s1, ra, ra
                  slli         a2, a0, 23
                  divu         s3, zero, a0
                  rem          t4, s7, t4
                  addi         gp, s2, -643
                  ori          t2, t4, -72
                  srli         a7, t1, 25
                  rem          sp, t3, s10
                  xor          s6, sp, s7
                  divu         a0, t0, zero
                  srai         a1, t4, 7
                  and          a4, t4, t2
                  rem          s1, s3, t3
                  div          ra, s10, t3
                  auipc        a5, 956535
                  ori          s6, s11, 1541
                  xor          zero, s7, s4
                  auipc        zero, 145212
                  mul          t4, s5, t4
                  mulhu        gp, s8, s6
                  or           gp, zero, s1
                  remu         a1, ra, a4
                  rem          s6, t5, t4
                  xor          s11, s1, a7
                  sra          s10, t2, s8
                  div          t6, tp, a7
                  srai         a5, ra, 10
                  mulhu        s2, t0, s3
                  and          a7, s6, s10
                  sub          t5, zero, t0
                  slt          s8, t1, t1
                  srli         zero, s7, 31
                  sll          t6, t6, a5
                  mul          s1, s0, a6
                  srai         a6, t2, 21
                  srai         t3, s10, 26
                  sll          t5, s3, a2
                  sltu         s5, a0, gp
                  divu         a1, s9, tp
                  sll          s0, a6, t1
                  or           s1, tp, s4
                  nop
                  slti         a0, s10, -1334
                  slt          s8, a6, tp
                  slti         tp, t3, -85
                  div          t3, t3, t4
                  srli         gp, t4, 28
                  or           a2, s3, t3
                  sub          s9, s6, s2
                  auipc        s6, 777495
                  slt          s10, a1, a4
                  remu         a5, a1, a3
                  mulhu        gp, zero, a3
                  slti         t4, s6, 1734
                  mulhu        s8, s2, a6
                  srl          sp, ra, t6
                  sltiu        t4, s8, 1712
                  nop
                  srl          t5, s2, a0
                  sub          s8, t2, s5
                  mulhsu       s1, a3, s4
                  add          t3, a3, tp
                  slt          s0, t4, s6
                  slt          s8, t3, t0
                  ori          a7, t4, -754
                  sra          t1, s2, s7
                  mulhsu       zero, a2, s6
                  srai         s5, s6, 15
                  xori         gp, tp, 1768
                  xori         s6, s1, 1014
                  sltiu        s7, t3, 946
                  xori         t4, a0, 1917
                  andi         t1, t1, 161
                  srl          s5, s4, s4
                  srl          a2, s4, t4
                  divu         a7, sp, a1
                  sltu         a0, tp, t4
                  or           ra, s3, t2
                  sll          t2, s0, a5
                  sll          a1, s1, s5
                  sll          zero, s11, s6
                  sub          a7, a3, a0
                  sub          s1, s2, a3
                  srl          a0, a6, s4
                  sltu         gp, ra, t3
                  divu         a7, t4, s11
                  mul          s8, a3, a0
                  sltiu        a6, a4, 2043
                  srai         s5, a3, 19
                  auipc        t2, 465794
                  slti         t2, a7, -343
                  mulhu        t4, s8, s8
                  andi         t3, t5, -1673
                  sll          ra, s9, t4
                  srli         a7, s11, 10
                  lui          a2, 665974
                  or           gp, t3, t4
                  lui          a7, 5435
                  nop
                  remu         a6, s9, s6
                  sll          s7, s0, s6
                  remu         t1, s8, gp
                  ori          zero, sp, -644
                  slli         s5, t0, 30
                  xor          a6, t3, a7
                  sll          t4, gp, s5
                  sll          sp, tp, s7
                  addi         s11, s3, 489
                  ori          gp, a2, 1656
                  slti         t6, s2, -979
                  mul          a1, s3, t1
                  remu         s8, s11, s3
                  slt          a7, t3, s4
                  rem          s1, a3, s2
                  xor          a4, s11, sp
                  and          a7, t2, a1
                  xori         a7, s11, 1154
                  mulh         a1, a7, t3
                  andi         t5, t4, -574
                  lui          s10, 894480
                  mulh         s9, a7, s11
                  and          gp, s0, s5
                  mulh         a6, t6, a5
                  remu         s9, a2, a1
                  slli         a1, s7, 7
                  addi         s10, s5, 346
                  srai         s10, s5, 27
                  remu         s3, a2, t1
                  sll          a2, s0, s9
                  mul          s5, s11, s10
                  slli         s3, s3, 4
                  xor          t4, zero, a1
                  ori          a5, t1, 1269
                  sltu         t3, s1, t6
                  divu         s8, t2, a6
                  lui          ra, 570732
                  xor          s6, ra, s10
                  sltu         t4, s2, a0
                  add          s10, gp, s9
                  auipc        t1, 787153
                  mulhu        a1, t1, s2
                  slti         zero, a1, -1789
                  addi         a1, t1, 208
                  mulh         s6, a1, s5
                  slti         a5, s2, 677
                  auipc        s8, 695576
                  slli         a5, t1, 30
                  divu         a6, t0, t4
                  add          s7, s1, zero
                  mulh         s9, s2, ra
                  ori          t6, a3, -262
                  mulhsu       zero, a4, a6
                  add          a5, a0, zero
                  sub          s8, s1, s3
                  sll          a1, t5, gp
                  sltu         t3, a6, gp
                  mul          ra, s7, t4
                  lui          a6, 271884
                  mulh         s5, t6, sp
                  and          zero, tp, s10
                  mul          a2, s10, s9
                  divu         a1, s8, s1
                  lui          a2, 879597
                  andi         t3, s6, 126
                  srl          s0, s10, a3
                  slli         a1, s10, 4
                  slt          s5, s9, t1
                  remu         s0, t3, a6
                  sltu         a2, a6, a2
                  slti         ra, a2, 1332
                  add          t4, t1, s5
                  addi         s9, s3, -172
                  ori          s2, a4, 1091
                  xor          t5, s4, s6
                  mulhu        t1, a4, s6
                  add          t2, s4, t6
                  slt          zero, t6, t6
                  add          t6, a3, sp
                  div          gp, s8, a0
                  mul          a6, a0, a6
                  slli         t5, gp, 25
                  ori          a6, t0, 152
                  div          s3, s2, a6
                  rem          s1, s9, a2
                  divu         t4, s3, a6
                  mul          s2, s11, s6
                  nop
                  nop
                  slti         s0, s1, -416
                  slti         a7, a6, -1590
                  and          t1, s1, a0
                  sub          ra, s3, a7
                  mulhsu       s10, zero, a1
                  remu         s10, t4, t5
                  divu         s2, s3, a0
                  or           a5, s2, s7
                  mul          s10, t2, s8
                  auipc        ra, 905080
                  addi         s11, s2, 1484
                  srai         ra, a2, 26
                  sub          s3, s4, s1
                  mulhsu       s2, zero, a3
                  slt          t6, a0, s3
                  andi         a7, s9, 187
                  nop
                  addi         s3, s10, -1125
                  sub          a2, a1, s8
                  slti         t2, s2, 1494
                  lui          s0, 410311
                  sltiu        t1, t2, -1171
                  mulhu        t3, t2, s2
                  mul          sp, s11, s3
                  sll          sp, sp, t3
                  ori          a1, a4, 915
                  nop
                  xor          s5, t1, s3
                  rem          s6, a2, s1
                  sra          a1, t6, a6
                  or           s1, t5, t5
                  auipc        s2, 280003
                  sra          a1, s9, s0
                  sll          t2, s9, s6
                  mulhsu       s5, gp, s9
                  mulhsu       s6, s6, zero
                  sra          s1, a2, s8
                  nop
                  add          s8, t4, a7
                  mul          tp, a3, tp
                  ori          s2, s9, 1175
                  mulhu        t1, a2, a1
                  slti         a5, s9, 796
                  ori          s10, t1, -68
                  addi         s7, a4, -821
                  slt          a2, s10, s0
                  sll          s6, t2, s7
                  remu         t6, s10, s8
                  mul          tp, s1, s3
                  andi         s5, a4, -493
                  mul          s8, s9, s3
                  ori          a2, t5, 920
                  or           t3, a1, t0
                  srai         t1, a5, 0
                  andi         tp, t2, 3
                  and          s11, a2, a7
                  lui          a6, 530526
                  srai         s3, a6, 28
                  addi         a4, t2, -394
                  div          t4, s7, t2
                  nop
                  sub          s11, a6, s5
                  addi         s9, s6, 6
                  xori         t4, t1, 1462
                  and          a7, s5, s3
                  mulh         a0, s11, s7
                  sltiu        s10, s2, 223
                  mulh         t4, a2, t4
                  mulh         t3, t5, t5
                  remu         ra, s7, sp
                  mul          a2, s1, sp
                  srli         t1, s0, 31
                  rem          t3, s7, a6
                  or           a7, t4, s10
                  slli         a5, s3, 27
                  sltu         sp, t2, a7
                  ori          t4, t2, 1
                  sltiu        a1, a6, 173
                  srli         s11, ra, 1
                  divu         s10, zero, s9
                  mulhsu       s11, s4, s0
                  sub          t6, s0, s10
                  ori          t5, s8, -714
                  lui          a1, 123220
                  slt          s9, s3, s1
                  slt          a6, t5, a0
                  xor          a2, s6, gp
                  sltu         t3, a2, t0
                  sub          a6, s3, t6
                  ori          s6, a1, 197
                  sra          gp, a1, t6
                  slti         s2, t1, 403
                  nop
                  slt          tp, s0, s2
                  ori          a1, t5, -361
                  add          zero, t6, s1
                  sra          t2, a6, s11
                  sll          sp, s1, s3
                  sra          tp, s11, tp
                  nop
                  lui          s11, 439848
                  lui          s9, 724739
                  nop
                  nop
                  slt          t2, t1, sp
                  mul          tp, s6, s0
                  and          tp, s7, s8
                  andi         a4, t2, -1086
                  auipc        t2, 334649
                  mulh         s8, s1, s7
                  sltu         t3, a7, s8
                  and          sp, sp, s9
                  sll          s7, s1, a4
                  slt          tp, t6, ra
                  andi         a1, a2, 2045
                  rem          t4, t5, s0
                  xor          t3, a5, s7
                  div          s3, s10, a2
                  ori          sp, s8, -1225
                  addi         t4, t1, 691
                  xori         s11, a5, -1832
                  andi         a1, gp, 1282
                  sltu         t5, s8, s0
                  sltu         s9, s10, s1
                  xori         a1, sp, -209
                  xori         a6, a5, -67
                  auipc        t2, 1008096
                  mulhsu       a6, a1, s7
                  sub          s2, a4, t3
                  srl          gp, a7, gp
                  ori          a6, t5, -1757
                  srl          a0, t5, s7
                  mulh         a5, s10, s0
                  slti         gp, a6, 2019
                  mulhsu       gp, a3, t0
                  sra          zero, s8, t0
                  sltiu        t1, s2, 528
                  xor          gp, s9, gp
                  div          s1, t0, tp
                  lui          s5, 172486
                  sltiu        s2, t6, -650
                  sra          a7, t2, sp
                  mulh         s10, s11, gp
                  lui          sp, 455724
                  div          s11, gp, a0
                  srl          s11, tp, t0
                  mul          s8, t5, s6
                  slli         s3, t1, 21
                  remu         t6, a2, s11
                  and          s1, t3, t4
                  mulh         s7, ra, tp
                  add          s5, s0, s1
                  or           s2, s4, gp
                  mulhsu       a0, a0, s2
                  mulhu        ra, t2, sp
                  div          t5, t4, a0
                  or           s11, t2, zero
                  div          s6, sp, s7
                  addi         s2, s2, -901
                  slli         a1, t3, 1
                  addi         a0, s7, 303
                  lui          s0, 740346
                  sub          a6, s8, s1
                  div          s0, t0, t1
                  sra          s2, a2, a6
                  mulh         s7, s6, s10
                  xori         s0, a6, 693
                  lui          s2, 45076
                  slti         zero, s4, -985
                  remu         t4, a6, s8
                  srai         a5, a1, 28
                  sltu         sp, s2, t6
                  add          tp, s9, ra
                  sra          s1, t5, s0
                  srai         s3, a2, 6
                  srl          zero, s9, s7
                  and          t6, s3, ra
                  addi         s10, a6, -1463
                  srli         ra, t3, 5
                  mulh         tp, s9, a6
                  or           a1, t1, s3
                  slt          a0, s3, sp
                  mulh         tp, s4, s0
                  andi         s0, s8, -1657
                  mulhu        t2, a0, s6
                  div          s7, a0, s3
                  mulhu        a7, s9, s7
                  divu         sp, a1, s6
                  slli         s1, s1, 4
                  srl          t3, s0, a4
                  lui          sp, 332506
                  mulh         zero, s3, t5
                  xori         s11, a4, -173
                  or           s0, t0, t3
                  nop
                  addi         t1, a3, -94
                  divu         t4, t1, t2
                  remu         t6, a2, s11
                  mulhu        a0, a5, a6
                  mulhu        t5, t1, a3
                  rem          s1, s10, s7
                  sltu         a2, a1, s9
                  nop
                  slt          t4, zero, s1
                  remu         s10, a2, a3
                  slli         tp, zero, 1
                  andi         t2, a7, 906
                  xori         s8, s2, -1181
                  slt          a5, sp, t1
                  mulhsu       zero, t1, s0
                  nop
                  xori         s9, s3, 1328
                  remu         a4, a7, a7
                  xor          a5, a3, sp
                  slt          s2, sp, ra
                  add          tp, s1, s10
                  slli         a0, s10, 23
                  xor          t2, s5, a7
                  rem          s9, tp, a2
                  mul          a4, a7, t5
                  slti         a1, s0, -1258
                  divu         tp, t4, a3
                  andi         s7, t2, -688
                  and          a6, s10, a5
                  srai         zero, t6, 11
                  srl          t5, t6, t1
                  mulhsu       s1, tp, t0
                  or           s9, a6, a2
                  ori          s9, ra, 743
                  lui          s7, 373582
                  add          t5, a1, a5
                  srl          s11, a3, a4
                  srl          t4, a2, t5
                  slt          a0, s5, s9
                  nop
                  mul          a7, s9, t6
                  rem          a7, t6, a2
                  andi         a0, a0, -1026
                  nop
                  mulhu        s2, s7, s11
                  mulh         t4, t2, sp
                  mulhu        s10, t4, s8
                  div          tp, s4, t5
                  mulh         a7, sp, a2
                  rem          s11, tp, a4
                  sub          a6, a6, s3
                  andi         a6, t0, 704
                  slti         ra, s8, 1779
                  remu         s5, s5, a2
                  lui          s9, 332941
                  nop
                  andi         a1, a5, -1690
                  ori          s9, t4, 1042
                  sub          s6, s3, sp
                  andi         s1, s6, 461
                  sltu         s6, s10, s5
                  xor          s5, a2, s11
                  sll          t2, zero, s0
                  or           a5, a7, ra
                  mulhu        a1, s7, s10
                  or           t6, ra, zero
                  slti         gp, s6, -2044
                  slt          t3, t3, t6
                  addi         t4, s9, -1285
                  or           a7, s8, a3
                  slli         a6, ra, 15
                  or           s3, s10, ra
                  slli         s8, zero, 2
                  mulh         t4, s1, t0
                  slti         tp, sp, -1273
                  sra          s9, t0, a2
                  slti         s8, sp, -1894
                  and          s9, a0, a0
                  slt          zero, t4, t1
                  srl          t6, a2, t3
                  addi         s8, s11, -310
                  sll          s2, s2, t5
                  rem          a0, s8, tp
                  nop
                  mulhsu       a4, ra, s2
                  lui          a6, 118620
                  sra          a6, a7, tp
                  nop
                  ori          s2, s11, 1613
                  auipc        s0, 916911
                  mulhsu       a1, s8, a0
                  srl          a6, a5, a2
                  srl          s5, a2, t2
                  slt          t2, a1, a2
                  mul          t3, s4, t4
                  sltiu        a4, a0, 1556
                  remu         tp, a1, s7
                  srai         t2, a4, 18
                  sub          a2, s11, a4
                  sll          s1, t3, gp
                  sra          t4, s2, gp
                  auipc        a1, 866361
                  or           s0, s10, a0
                  mul          t6, s8, t1
                  xor          zero, s7, t6
                  sltu         t2, tp, sp
                  mulhsu       a6, t6, s5
                  mulhsu       tp, a2, a4
                  xori         a2, a0, 1438
                  mulh         t4, t4, a1
                  srli         a2, s3, 18
                  lui          s5, 1043756
                  divu         a5, s7, s11
                  remu         t5, s6, s11
                  divu         a1, ra, s1
                  srai         s5, gp, 29
                  srl          a5, t5, sp
                  xori         a2, s4, -1026
                  srl          tp, a5, a4
                  sltu         tp, a5, s7
                  ori          s10, s6, -1959
                  or           s2, s9, a3
                  mulhsu       a0, a1, s4
                  lui          ra, 991261
                  addi         s9, t3, -780
                  mul          a0, tp, gp
                  mul          a1, s9, t6
                  andi         s5, a5, -286
                  addi         s7, s3, 1488
                  xor          s6, a3, t6
                  sub          s1, sp, t6
                  slli         s9, s7, 24
                  add          gp, a4, s11
                  sub          a7, a2, a3
                  auipc        s6, 394299
                  or           s1, t1, a0
                  srli         s2, t3, 8
                  div          sp, s11, s3
                  slli         a4, t1, 23
                  or           t4, t6, t6
                  nop
                  auipc        t1, 358075
                  and          s5, ra, a7
                  sll          s5, s3, s7
                  remu         a5, s7, s5
                  or           s6, a0, a2
                  sll          gp, s2, s8
                  xori         s1, a1, 543
                  srl          s1, t4, a3
                  mulh         t6, s6, t3
                  sltiu        s8, a0, 1254
                  div          a2, a2, a2
                  div          tp, s6, s3
                  add          s6, gp, s1
                  nop
                  lui          s2, 456152
                  slt          s5, a0, s6
                  sltu         t6, a2, t3
                  addi         s9, s6, 1788
                  xori         s5, a7, 2004
                  nop
                  auipc        s11, 889366
                  mulhu        t2, s9, ra
                  xori         s6, a7, 724
                  sll          s9, a0, ra
                  sub          s3, s0, s3
                  mulh         t1, s5, tp
                  divu         a1, t6, t4
                  divu         t3, a7, t1
                  srai         s6, zero, 21
                  mulh         a4, t0, a2
                  slti         t4, s9, 1209
                  sll          s10, a4, t3
                  sll          a2, gp, s9
                  srai         s10, ra, 30
                  andi         t5, a3, 164
                  div          s5, sp, t0
                  sra          t2, s10, s10
                  srl          a7, s6, a3
                  andi         a0, t5, 1584
                  xor          s3, a2, a1
                  srli         tp, a4, 5
                  mulhsu       s9, s7, sp
                  add          a6, t6, s3
                  mul          gp, s5, s0
                  sra          s3, s5, a7
                  rem          s11, s6, s4
                  andi         a6, t3, -1447
                  addi         a0, s1, -9
                  srai         a1, s5, 5
                  slti         sp, t6, 1276
                  div          t6, a3, t5
                  andi         t4, a5, -563
                  slti         t1, a5, -1861
                  mulhu        s5, s8, t2
                  xori         a6, a1, 1353
                  auipc        t5, 309717
                  xor          s1, s1, zero
                  andi         s9, a6, -1148
                  sra          t4, ra, t3
                  mulh         s5, sp, sp
                  sltu         t1, t6, ra
                  add          a6, s1, a4
                  mulhsu       t4, sp, zero
                  divu         t2, t0, a4
                  ori          s10, a7, 820
                  auipc        ra, 758733
                  sub          a1, s2, sp
                  sub          s7, s5, gp
                  nop
                  rem          t2, s0, t3
                  mulhsu       a0, s8, a4
                  mul          gp, a3, s5
                  mulh         s1, tp, s8
                  srli         ra, s0, 19
                  mulhu        t3, s5, a1
                  andi         a5, s0, -745
                  sub          a5, s3, s10
                  srl          t2, t1, tp
                  mulh         gp, s5, s7
                  srli         a4, ra, 14
                  srli         a5, s7, 1
                  xor          zero, s5, a1
                  div          t1, s3, s3
                  slli         t6, s5, 8
                  srli         s5, t2, 16
                  slli         s5, ra, 28
                  sub          s2, s1, t5
                  mul          s10, sp, zero
                  mul          zero, t1, t6
                  or           s3, s2, t4
                  sltu         ra, s4, t2
                  srai         s1, s11, 22
                  auipc        a1, 892970
                  mulhu        s8, t0, t1
                  ori          gp, ra, -1581
                  srai         s9, zero, 9
                  div          s7, s11, s4
                  divu         s10, t1, t6
                  remu         s6, t5, t3
                  and          s1, ra, s3
                  srl          ra, t3, s7
                  mul          a0, t4, a4
                  xor          zero, a2, s8
                  xori         a6, s7, -15
                  slti         s7, s2, -1329
                  sll          a2, s10, s0
                  auipc        s10, 813078
                  mulhsu       zero, a2, s4
                  add          s2, t0, s5
                  mulhsu       t1, a1, gp
                  lui          t3, 935720
                  rem          t2, t1, a3
                  slt          a5, t0, t1
                  add          s0, s1, a3
                  nop
                  andi         s3, t4, 90
                  addi         ra, t1, -320
                  remu         s6, a0, s8
                  rem          a2, a6, s3
                  mulhsu       t6, t5, s0
                  mul          t4, t6, ra
                  mul          s9, t1, s11
                  sub          t1, s0, tp
                  add          t5, s11, s11
                  mulh         s9, s3, s11
                  mulhu        a6, a3, t6
                  andi         t3, t5, 1311
                  div          s10, t3, a2
                  xor          s9, s9, s5
                  sltu         s2, s0, s11
                  ori          s2, s8, -218
                  xor          t3, t5, s6
                  srl          ra, s3, s9
                  nop
                  sra          s5, a0, s9
                  sll          s7, a5, gp
                  xor          a0, t4, gp
                  nop
                  div          s8, s11, a6
                  or           a4, s1, t3
                  lui          ra, 588494
                  mulhsu       s8, s6, s6
                  srai         t6, s6, 27
                  slt          s5, a5, a7
                  andi         s7, sp, 532
                  rem          a5, a2, sp
                  srai         ra, a3, 1
                  sub          s0, ra, zero
                  srli         s8, a0, 19
                  sltu         s6, s0, t4
                  sra          s9, a4, s3
                  sub          gp, t1, s0
                  sra          s8, ra, s4
                  remu         s3, ra, t5
                  mulhu        s1, t3, s1
                  addi         a2, s4, -1721
                  remu         a2, a7, s1
                  auipc        a6, 607499
                  slt          gp, a6, s10
                  mulhu        s1, t5, t0
                  mulhsu       t2, a6, s10
                  sra          t1, s5, s2
                  srl          s8, a3, t1
                  xori         t5, t1, 1744
                  auipc        ra, 67543
                  nop
                  slt          gp, t1, s10
                  div          s1, tp, a3
                  slli         s2, t6, 7
                  andi         a7, t4, -1194
                  sub          tp, s3, a7
                  nop
                  rem          s11, a6, s3
                  rem          a2, t3, s7
                  auipc        a6, 518808
                  xori         s7, tp, 314
                  srai         s1, s5, 27
                  mul          tp, s0, a1
                  srl          s8, s2, ra
                  slli         t5, t0, 15
                  slti         s7, a4, -1976
                  xori         s11, gp, 890
                  sub          t3, ra, s9
                  srl          ra, s4, zero
                  mul          a7, zero, s9
                  or           ra, a2, t1
                  remu         s11, s7, a1
                  mulhu        s9, s9, ra
                  mulhsu       s1, a3, a3
                  srai         a2, s1, 16
                  slti         tp, a4, 355
                  srl          t6, zero, a3
                  mulhu        s11, zero, s0
                  rem          ra, a5, a3
                  and          sp, s0, a4
                  sltu         t6, s11, t5
                  auipc        a0, 776449
                  addi         a0, zero, -1288
                  slt          s2, a6, s2
                  or           s8, s8, t1
                  xori         s10, t5, 1637
                  mul          s5, s4, t4
                  div          s1, ra, a7
                  sll          s9, s11, a6
                  remu         s2, s3, t3
                  andi         s5, ra, 989
                  srai         s2, t0, 18
                  slli         a5, s11, 1
                  mulh         s2, t6, s1
                  add          a1, s4, zero
                  div          t4, a6, tp
                  slti         t4, a6, -17
                  mulh         gp, t1, tp
                  add          s3, s6, s7
                  srli         s11, a5, 12
                  sltu         t5, t3, sp
                  srai         s8, gp, 20
                  mulh         s6, s1, sp
                  or           a1, a0, t5
                  sltiu        a4, t1, -551
                  sll          t2, s0, sp
                  slt          s8, t1, a5
                  addi         zero, gp, -353
                  sra          t3, s0, t4
                  mulhu        a6, s10, t4
                  nop
                  lui          t5, 886455
                  sltu         a0, s3, s0
                  slli         t3, a1, 20
                  and          a2, zero, a1
                  xor          s5, t3, s6
                  slti         s2, a1, -922
                  sra          t3, s8, s7
                  xor          a1, s2, s4
                  sltiu        s1, a1, -1423
                  add          s0, a3, a4
                  srli         a5, s9, 22
                  addi         a6, gp, -317
                  sra          s11, zero, a6
                  ori          gp, a6, -1467
                  srl          t1, s6, a6
                  div          s10, t2, a2
                  div          t1, s6, tp
                  slti         s0, t0, 1285
                  sub          s6, gp, t0
                  mulh         s8, t6, a1
                  slli         s6, ra, 21
                  srl          ra, a4, s10
                  mulhu        tp, a6, a3
                  add          t2, s1, a3
                  srli         t3, t6, 24
                  xori         s9, t6, 1895
                  add          s1, s7, t3
                  lui          s9, 568117
                  sltu         s9, tp, s3
                  slli         gp, a1, 29
                  sltiu        a7, a1, 143
                  mul          gp, a6, t4
                  srli         gp, a6, 2
                  or           s7, s3, a2
                  mulh         s11, s7, t6
                  sltu         t2, s0, a7
                  remu         a7, s9, s11
                  and          t6, t1, zero
                  sra          s7, t4, tp
                  mulhsu       tp, a4, t3
                  lui          t2, 1023623
                  remu         sp, s10, t3
                  srai         tp, gp, 27
                  srai         s11, t0, 8
                  auipc        t3, 376072
                  lui          s8, 1003618
                  addi         s6, t1, 707
                  srl          a4, t6, t5
                  sltu         s2, a3, gp
                  slti         a6, s4, -1247
                  add          a7, a3, a6
                  rem          s5, s3, a3
                  div          s11, s4, t3
                  slli         tp, t5, 4
                  add          t5, a0, sp
                  nop
                  addi         a7, s1, -1905
                  mulh         a5, a4, s4
                  add          sp, t3, ra
                  andi         s2, t1, -838
                  srai         a0, a2, 3
                  divu         a4, s8, t3
                  slt          s1, s0, t5
                  sub          t3, s3, s7
                  divu         t4, a6, ra
                  mulhsu       zero, sp, s2
                  rem          t1, t6, tp
                  mul          s3, gp, a4
                  mulhu        a0, t0, a5
                  slti         zero, s1, 1261
                  xori         t3, a4, 1819
                  nop
                  srli         t5, s5, 11
                  sra          s2, a5, a4
                  mulhsu       t3, t2, a4
                  mulhu        sp, a3, s0
                  sra          t2, a4, t4
                  divu         a5, a3, a5
                  xori         sp, s1, 1472
                  and          a0, a3, a6
                  sltu         s5, t6, s4
                  div          a7, t4, s7
                  sll          s2, tp, a1
                  sub          gp, a3, s6
                  rem          t2, a0, a0
                  sll          t2, t0, t5
                  sub          s9, s8, a0
                  sltu         s11, t0, a0
                  sub          s5, sp, gp
                  sra          s6, a1, t4
                  sltu         ra, s6, a3
                  slti         a4, s8, -1627
                  or           s0, a5, t1
                  mulhsu       a0, t4, s5
                  remu         s5, a1, s9
                  mulhu        a2, a0, s7
                  mulh         t5, a3, a7
                  slti         s9, a3, -462
                  mul          t6, s4, s3
                  slt          s9, t3, a5
                  sltu         ra, s9, s4
                  auipc        s11, 500378
                  slli         s7, t4, 24
                  divu         s5, t1, a5
                  slli         s9, t2, 23
                  addi         s0, sp, -332
                  xori         s6, s6, -1612
                  nop
                  slli         s8, s1, 5
                  mul          s5, ra, a2
                  srai         a4, s3, 0
                  sll          s7, s1, a1
                  lui          s2, 726823
                  mul          s6, a2, a2
                  mulhsu       s5, s11, zero
                  lui          ra, 764881
                  slt          s10, s0, tp
                  sltu         s1, s0, s5
                  or           a5, t1, t3
                  mulhsu       a6, t5, a3
                  slli         t5, t6, 10
                  sra          a2, t1, a0
                  rem          ra, t2, a1
                  mulh         s5, a5, a3
                  divu         t6, a6, a4
                  slti         s1, a7, -582
                  or           tp, a6, zero
                  slli         s11, s6, 31
                  ori          a2, s3, 1696
                  xori         a5, a2, 144
                  slli         t2, s11, 18
                  sub          a7, s1, s1
                  auipc        s8, 102285
                  mul          s1, t4, ra
                  andi         a5, sp, 1048
                  mulh         zero, t6, a2
                  div          t4, a2, s6
                  ori          s5, gp, -65
                  mulhsu       s6, s6, t6
                  srai         a1, a4, 18
                  srli         sp, s6, 13
                  sltu         gp, s11, s0
                  sltiu        s11, s9, 1064
                  srl          s2, t4, t2
                  remu         ra, t2, t3
                  sltiu        s10, sp, -534
                  addi         s5, s11, 378
                  xori         sp, t2, -1824
                  slti         ra, s7, 1606
                  mul          a5, a7, sp
                  lui          a2, 331050
                  xori         a1, tp, 1235
                  slli         sp, s10, 30
                  srl          a6, a3, t1
                  sra          gp, s9, zero
                  xor          a4, tp, s2
                  slt          ra, a7, a7
                  remu         s2, t4, a1
                  srai         a2, gp, 12
                  xori         ra, sp, -1281
                  slti         t6, s0, -1057
                  mulhu        s3, s4, a3
                  mulhsu       s10, t4, t4
                  sub          a4, s6, s4
                  addi         t2, s8, 1600
                  slti         s2, sp, -773
                  andi         a1, t5, 1846
                  mulhu        ra, t3, s5
                  sll          t4, sp, s6
                  div          t5, ra, s8
                  nop
                  sub          s9, s6, a7
                  xori         a1, ra, -875
                  sll          s8, s10, a2
                  mulh         s3, t3, t4
                  slt          s1, s0, gp
                  andi         zero, s4, 773
                  addi         s8, s6, 1896
                  nop
                  auipc        s8, 849517
                  mul          a6, t1, zero
                  sra          s7, s7, gp
                  sub          t2, gp, sp
                  mulh         a6, s8, a1
                  sltiu        a5, sp, 659
                  srai         t5, s7, 12
                  sll          t6, ra, a3
                  remu         t2, s7, zero
                  xori         gp, s5, -55
                  sll          ra, a6, t4
                  slti         s11, a6, -672
                  sll          tp, t4, a2
                  and          a2, a1, s2
                  xor          s10, s6, s8
                  sltu         t5, t5, t0
                  ori          s5, sp, -902
                  ori          s1, a7, 1667
                  addi         a7, s7, -598
                  lui          a1, 198906
                  remu         s9, t2, gp
                  sltu         gp, a3, t0
                  addi         a2, s11, 455
                  sub          s1, s3, a2
                  mulhsu       a1, a5, s7
                  mulh         s11, s2, s3
                  addi         t1, s9, -330
                  xor          t4, a0, a7
                  srl          s9, a3, t0
                  nop
                  rem          a6, t6, t3
                  xor          a5, a3, t4
                  mul          s8, a3, s9
                  auipc        a4, 715640
                  lui          s1, 897352
                  auipc        s1, 987790
                  slli         t1, s5, 21
                  add          t3, s0, t4
                  mul          ra, a3, sp
                  mulh         a4, a6, t0
                  sub          s10, t2, t6
                  xori         a5, s10, -590
                  nop
                  mulh         a6, s2, a2
                  div          ra, a6, s3
                  sltu         a7, a0, t3
                  xor          zero, s2, t2
                  xori         s5, sp, 417
                  sll          a1, ra, a5
                  xor          s10, tp, a2
                  add          t1, a1, s3
                  rem          s6, s0, t6
                  and          t2, a3, s0
                  mulhsu       s1, s3, t0
                  andi         a0, s11, 1661
                  sltiu        sp, s6, 1210
                  addi         a1, s5, 1298
                  sra          s11, s2, s4
                  rem          gp, a0, a3
                  xor          t2, t4, a2
                  srl          zero, t2, t4
                  slti         sp, a5, 1235
                  slt          a0, s2, s9
                  nop
                  divu         s6, tp, t0
                  andi         a6, t6, 1140
                  divu         zero, s9, a4
                  addi         ra, a7, -1922
                  andi         t5, a5, 888
                  remu         t3, s9, a3
                  sltiu        gp, s6, -1157
                  andi         a7, s6, 1550
                  xori         t4, t6, 110
                  srai         sp, ra, 2
                  slli         s7, s3, 5
                  andi         a0, t6, 1166
                  slli         ra, a5, 26
                  sltu         s2, s3, t3
                  ori          t5, s8, 461
                  sltiu        s9, t1, 1741
                  addi         t2, s1, -1840
                  mul          s5, s8, s1
                  slti         s6, s8, -352
                  ori          s0, t1, -1399
                  nop
                  xori         s0, zero, -1467
                  srl          ra, sp, a5
                  srl          a0, sp, a4
                  slli         sp, s10, 16
                  andi         t4, t1, -1613
                  ori          a1, t0, 1787
                  srai         t2, a6, 0
                  srl          a6, t4, s1
                  sltiu        ra, ra, -1815
                  srli         t3, a5, 31
                  addi         t4, t0, -491
                  auipc        t6, 116866
                  sltiu        s7, s6, -225
                  nop
                  lui          s0, 229949
                  add          a1, a3, sp
                  addi         tp, t3, -1473
                  remu         tp, s5, s3
                  srli         s2, s0, 17
                  and          s10, a4, s4
                  srai         a2, t6, 5
                  addi         t4, s4, 1357
                  remu         t4, s8, t3
                  sub          s9, a3, s10
                  srai         s3, sp, 1
                  div          a5, s11, s11
                  slt          s7, s9, t4
                  sltiu        s9, s2, 115
                  addi         t3, t4, -1654
                  slti         sp, t6, -60
                  rem          a0, s10, a1
                  xor          a6, tp, t4
                  xor          s0, a6, a2
                  sltu         sp, s6, s8
                  xori         ra, s5, -1310
                  mul          a5, s5, s4
                  add          t2, t6, s8
                  slt          ra, a6, a1
                  srl          a4, t0, s5
                  slli         zero, a3, 15
                  remu         t4, t2, s8
                  ori          tp, s9, -680
                  mulhsu       a0, a1, s4
                  and          a1, a0, a2
                  mulhu        tp, a6, zero
                  slt          s6, t5, t4
                  sltiu        a4, a2, 1563
                  divu         s11, tp, a7
                  mulhu        s5, s9, s0
                  srl          a7, ra, tp
                  srai         a0, s7, 13
                  rem          ra, t5, sp
                  sra          s11, a0, a0
                  srli         s9, ra, 27
                  xori         a0, t3, 1695
                  sltu         zero, t5, t6
                  or           s5, t6, a7
                  lui          t6, 468344
                  sll          t4, s10, a3
                  remu         s0, s9, s10
                  xori         a6, s7, 1066
                  mul          a7, s9, a6
                  xori         s7, a7, 310
                  or           s2, t1, s8
                  andi         s9, t4, -1018
                  sra          a7, a2, ra
                  xori         s0, a4, 734
                  xori         t5, t3, 1317
                  srai         s6, s9, 4
                  sra          a2, t3, a6
                  auipc        a0, 215555
                  sub          s8, t6, a5
                  remu         a5, sp, ra
                  mul          a1, s6, s2
                  sra          a6, zero, a7
                  andi         a7, t2, 1305
                  slti         s2, s7, 1861
                  divu         ra, t0, t6
                  ori          a6, t3, 191
                  ori          zero, s6, -1407
                  remu         s9, t5, s7
                  lui          a5, 301855
                  sltu         sp, zero, s2
                  sra          t3, s7, s9
                  slt          s9, s9, s4
                  ori          s5, tp, 347
                  sub          s6, zero, gp
                  lui          sp, 882785
                  auipc        a5, 60779
                  mul          sp, s5, a4
                  or           s9, s8, a5
                  sra          ra, t5, s7
                  mulhu        t4, s2, a5
                  rem          sp, t0, s2
                  div          a7, t2, t2
                  mulh         ra, s2, sp
                  mulhu        a5, tp, s11
                  slli         s9, a1, 21
                  slti         t4, t3, -1131
                  divu         t2, a0, s7
                  mulhu        a4, s3, t3
                  slt          s9, t3, sp
                  mulh         s8, a0, a4
                  mulhu        s7, zero, t1
                  slti         t6, s6, -1348
                  rem          a6, s8, t6
                  mulhsu       t2, t5, ra
                  nop
                  sll          s9, a4, t5
                  or           s9, tp, s2
                  sll          a1, s8, a2
                  sltu         s7, a4, t6
                  andi         tp, s9, 1240
                  srli         s3, t2, 24
                  mulhsu       s11, s11, sp
                  addi         s3, s7, 733
                  lui          s8, 194647
                  mul          s7, a6, s10
                  andi         t2, s10, -397
                  slt          s7, a6, s4
                  and          t3, a3, s6
                  xor          t1, s4, t6
                  mulhsu       s9, s3, a5
                  srai         a7, a7, 28
                  mulhsu       s9, a6, s6
                  or           t4, a3, t0
                  lui          ra, 230315
                  slti         s0, gp, 1642
                  slt          t2, s8, a3
                  srai         s7, a1, 30
                  div          a5, a2, t3
                  addi         a6, t4, -54
                  addi         s9, s6, 1237
                  sub          s10, a4, a1
                  divu         t4, sp, a3
                  rem          s8, gp, a5
                  andi         zero, t2, -827
                  div          a5, zero, s1
                  rem          a0, sp, t3
                  sll          s1, a2, a3
                  and          s10, s9, sp
                  sra          s10, a4, t0
                  srai         t3, s3, 18
                  slli         s0, a7, 31
                  sltiu        t4, sp, -1878
                  lui          gp, 149547
                  slt          a0, a0, t1
                  srai         t3, a4, 3
                  and          s7, s0, a3
                  or           t4, t2, t5
                  slt          s6, t3, s6
                  sltiu        s0, s3, 1926
                  mul          s11, tp, s5
                  ori          s6, t0, 1877
                  remu         t2, a7, a4
                  srli         sp, s7, 14
                  and          gp, s10, t2
                  nop
                  sltiu        gp, a7, -1771
                  div          s0, a6, s2
                  or           t6, s8, t5
                  mul          a4, s0, s5
                  mulh         gp, t4, s10
                  mulhsu       s6, t0, s11
                  srai         t1, zero, 28
                  sll          t2, a0, a5
                  addi         gp, a4, -1434
                  mul          t1, a4, sp
                  srli         s7, zero, 3
                  mul          s6, s4, t5
                  slti         s7, t4, -1364
                  addi         s10, a6, 1493
                  div          t4, gp, a5
                  mul          t5, t5, zero
                  remu         a4, a2, s7
                  rem          t3, a0, gp
                  srl          s5, a7, a7
                  rem          s9, t6, s8
                  srl          s0, ra, s3
                  addi         s5, t5, 644
                  srli         t2, gp, 25
                  srl          s5, t3, a6
                  andi         s9, tp, 739
                  divu         a4, tp, a7
                  addi         s9, t4, 1089
                  divu         tp, s6, t0
                  or           t3, s5, a4
                  remu         a6, t1, s0
                  rem          ra, s9, a7
                  and          a7, a5, s9
                  auipc        a2, 338189
                  sra          a0, s9, a2
                  slti         s10, s10, 134
                  add          t4, a5, s3
                  slli         a7, a7, 9
                  add          s10, a3, s3
                  slt          a5, t6, t2
                  rem          s0, t0, s0
                  sltu         s9, t5, s2
                  div          a6, s9, a2
                  sll          a5, tp, a5
                  srl          a2, t0, a1
                  div          t3, s5, s4
                  add          t6, s3, t5
                  auipc        t1, 48895
                  add          a6, t0, gp
                  nop
                  and          ra, s3, s9
                  nop
                  div          s8, s4, s2
                  mulhsu       s6, s0, s1
                  slli         a5, s4, 7
                  srai         t5, s1, 30
                  nop
                  xori         t2, s8, -74
                  srli         a5, a5, 28
                  sll          t6, sp, a3
                  mulhu        s7, s4, a5
                  div          s8, a6, a7
                  mulhu        s5, t4, a7
                  mul          a6, s4, a3
                  andi         s5, a2, 1038
                  slli         a2, s11, 27
                  xori         a1, a0, 137
                  xori         a4, s3, -1079
                  mulhsu       a5, s7, t3
                  srai         sp, s4, 16
                  mulh         s2, a7, s0
                  sltu         t6, a7, s3
                  xor          t4, s4, s5
                  sltu         s2, tp, s11
                  auipc        gp, 148013
                  mulhu        s6, s11, sp
                  remu         s10, s5, a1
                  sltu         a2, t2, gp
                  mulhsu       tp, a3, t4
                  ori          s10, a0, 567
                  xor          sp, s3, a5
                  slt          t4, ra, a5
                  slli         s3, a1, 26
                  mul          a0, zero, tp
                  rem          s5, s3, t3
                  sltiu        s1, t3, 721
                  slt          a4, s1, t2
                  mul          s9, t0, s5
                  slt          s11, sp, t1
                  sra          s5, gp, s1
                  add          a5, t2, ra
                  sll          s2, t4, gp
                  divu         tp, tp, sp
                  mulhsu       s6, s8, a5
                  sra          gp, s10, tp
                  rem          s10, s9, s1
                  slti         s1, s0, 309
                  nop
                  lui          zero, 928758
                  and          sp, t5, a3
                  slli         s0, t2, 20
                  srl          s7, s6, s9
                  srli         s5, gp, 1
                  mulhu        s11, gp, a1
                  sra          t6, s5, s4
                  auipc        s11, 802141
                  div          t1, s0, ra
                  mul          s5, a0, a2
                  rem          s1, s0, s5
                  divu         a0, s1, a7
                  sll          s10, a1, s7
                  sub          sp, s0, sp
                  slti         s8, t1, 1627
                  mulh         s6, s0, a3
                  divu         a4, a6, t0
                  slli         s10, s1, 25
                  or           s11, a7, t2
                  and          t5, s5, a4
                  sra          t4, sp, a0
                  ori          s8, s9, -321
                  srli         s9, a0, 11
                  mul          a5, a1, t1
                  slt          s5, a5, s4
                  andi         s7, a3, -1483
                  xori         s8, t6, 136
                  add          s7, s8, t2
                  lui          a7, 631739
                  srl          s6, s1, a1
                  srli         s3, zero, 12
                  or           t3, a2, gp
                  sll          s3, a5, s1
                  or           a2, s7, t3
                  add          a5, t1, s7
                  lui          zero, 645896
                  xori         s10, s3, 948
                  sltu         s11, s0, tp
                  slt          s10, s11, s11
                  xori         s2, sp, 766
                  lui          a1, 413566
                  addi         ra, s5, -562
                  rem          a6, t2, a2
                  or           s1, sp, t4
                  mulhu        t4, s5, t4
                  lui          s10, 917924
                  xori         a7, s11, -45
                  lui          gp, 996196
                  sub          a5, a2, a3
                  slti         t2, t0, -510
                  mulhsu       s0, a4, s2
                  nop
                  sub          a5, a1, a2
                  andi         s7, a3, 1317
                  add          tp, s7, t5
                  nop
                  sub          zero, a5, t6
                  srli         t3, s0, 25
                  div          sp, s6, ra
                  xor          s10, t6, a1
                  srl          s2, ra, s11
                  ori          s0, t5, 1999
                  sra          ra, s4, s3
                  srli         s2, s10, 5
                  srli         a7, ra, 12
                  slt          t3, t6, a1
                  srl          s2, s8, t1
                  or           sp, sp, t2
                  mulhsu       a0, t5, ra
                  srli         ra, t3, 7
                  sltiu        ra, t2, -988
                  and          t5, a7, s10
                  ori          s5, s6, -738
                  srli         s1, sp, 27
                  sll          a7, s4, t1
                  srl          zero, a2, t5
                  sltu         s11, s2, sp
                  srli         a5, a3, 27
                  mulhsu       ra, s9, tp
                  slti         t6, s6, 997
                  addi         a1, t4, 148
                  rem          a6, t4, a1
                  nop
                  srli         tp, t4, 8
                  div          s6, t4, a0
                  mulhu        s1, a3, a1
                  srl          t4, zero, a0
                  slti         a7, t5, 1513
                  remu         zero, t2, s5
                  nop
                  or           t5, s4, a6
                  rem          s7, a7, t4
                  div          ra, s7, s11
                  xori         a0, s0, 1507
                  sub          s7, t2, a5
                  sll          a4, s5, s9
                  slti         a6, tp, 1420
                  rem          s6, gp, s4
                  xori         s2, s5, -116
                  srli         tp, s5, 26
                  srli         a0, s2, 26
                  mulhu        t3, s10, a6
                  mulh         a4, s3, tp
                  auipc        zero, 47128
                  sub          t4, a2, s2
                  sll          t4, zero, s3
                  sub          s7, a3, t1
                  srl          sp, t4, a2
                  or           s7, ra, a7
                  add          s8, s9, s8
                  rem          s9, s8, zero
                  mul          t5, s0, t2
                  divu         s7, a0, s3
                  ori          tp, ra, 1930
                  mulhu        s1, t0, t6
                  slt          s3, a5, a7
                  sub          a0, a7, s8
                  sra          zero, a0, a4
                  mulhsu       a6, t1, s2
                  mul          s7, a0, t5
                  remu         s10, t6, a1
                  divu         t2, a6, a5
                  sltiu        s1, t2, -892
                  remu         a2, s10, tp
                  slt          s10, t2, t0
                  slli         a1, s6, 14
                  xori         a5, zero, 732
                  sub          a4, zero, a0
                  xori         t6, a2, -68
                  sltu         s1, t1, s6
                  mul          a5, s10, sp
                  div          tp, sp, zero
                  mul          a2, s8, s0
                  mul          sp, a4, zero
                  div          tp, s3, ra
                  slli         s8, s4, 31
                  sltu         a0, s4, a3
                  auipc        s2, 99396
                  mulhsu       a7, s3, t5
                  mul          s11, zero, a7
                  lui          s0, 733414
                  srai         t1, s0, 15
                  divu         t2, zero, s8
                  slli         gp, gp, 5
                  xor          t5, t0, a4
                  remu         a5, a1, s4
                  nop
                  xor          a1, s5, s11
                  xor          tp, a7, a2
                  srai         gp, t0, 9
                  and          s5, t6, a1
                  mul          a2, a5, tp
                  sltu         s11, s1, a1
                  slti         s8, s0, 973
                  lui          gp, 335765
                  andi         s9, ra, -391
                  xor          gp, s0, a4
                  nop
                  mulh         s8, t1, s10
                  mul          a6, a0, a4
                  andi         a4, t3, 1682
                  addi         t5, s9, 1480
                  sra          a5, s0, tp
                  mulhsu       a2, t2, ra
                  sra          zero, t4, a5
                  slti         a5, t6, -1579
                  or           a6, s4, t5
                  auipc        t1, 926613
                  nop
                  rem          s8, zero, a3
                  divu         t5, s0, s3
                  div          s1, t5, s5
                  mulh         s8, tp, gp
                  srl          t4, a7, t3
                  slti         a2, s7, -1311
                  lui          s9, 476258
                  mulhu        s1, ra, a6
                  xor          a4, a4, a4
                  ori          s9, s1, -1641
                  andi         t6, a3, -894
                  mulhsu       gp, s1, s2
                  xori         t3, a6, -103
                  mul          t2, a1, t1
                  srli         ra, t0, 25
                  sltiu        a0, a7, -1360
                  slt          a5, gp, t5
                  slti         ra, t4, 1657
                  or           t5, s5, t3
                  div          t1, t2, a0
                  lui          tp, 216502
                  srli         s6, a2, 26
                  lui          a4, 220390
                  ori          a4, s3, -1461
                  div          s1, a4, t3
                  lui          t6, 523952
                  rem          s2, s8, a2
                  nop
                  addi         t2, t0, -1790
                  mulh         s1, sp, zero
                  andi         s3, zero, -1158
                  slt          t3, a2, s1
                  and          s11, t3, s7
                  mulh         s8, s8, s10
                  auipc        a1, 322557
                  ori          ra, ra, 88
                  slt          s1, t3, ra
                  auipc        t2, 486217
                  slti         s0, a5, -956
                  ori          t2, s10, 1488
                  mul          a2, a6, s6
                  xori         t3, gp, 1635
                  rem          s1, t0, s6
                  mul          ra, a3, t4
                  xori         ra, zero, 1716
                  slt          s6, zero, zero
                  addi         s2, s2, 600
                  mulhu        ra, a2, t3
                  and          s8, t0, s10
                  sltu         a5, gp, gp
                  or           t3, s4, s9
                  andi         s5, t0, 944
                  mulh         a0, zero, s6
                  slt          a4, ra, a3
                  sltu         a1, t3, s4
                  add          s11, ra, s10
                  xor          t3, a2, a6
                  sll          ra, t5, s4
                  auipc        s6, 591735
                  mulhu        s2, s9, t5
                  srai         t4, s5, 4
                  add          gp, a3, s4
                  sll          s6, s10, s3
                  slti         s6, s4, -1206
                  slli         s8, s3, 16
                  slti         a2, t4, 466
                  addi         t1, a1, 1542
                  addi         t2, t4, -1576
                  divu         a5, a2, t2
                  mulh         t3, a7, t2
                  sll          a5, t5, t0
                  div          t3, sp, t3
                  ori          s5, s5, 1278
                  or           a0, s11, t6
                  xori         s7, s5, -1858
                  sll          a2, ra, s8
                  sltiu        a6, t4, 1971
                  and          s2, s10, s8
                  and          t1, a4, t3
                  div          t5, ra, s2
                  sll          a1, s9, s4
                  mulh         s9, a0, s8
                  andi         s9, s1, 1720
                  or           zero, s8, s3
                  and          gp, a6, zero
                  xor          s6, t3, a7
                  auipc        zero, 796791
                  divu         s3, t1, s10
                  slt          s10, ra, a4
                  andi         s3, a0, -1165
                  srl          a2, t4, s1
                  rem          s10, sp, t6
                  sltu         s5, a4, a0
                  or           s1, t0, gp
                  xor          gp, a7, s4
                  slli         ra, gp, 22
                  divu         a0, s4, s0
                  nop
                  sub          s3, s6, a2
                  add          a7, a0, t5
                  or           s10, s6, a6
                  nop
                  sub          a4, ra, t0
                  mul          s9, t3, s0
                  slti         s11, s11, 1000
                  sltiu        t4, s0, 1434
                  andi         s6, a5, 1737
                  divu         s11, a4, a7
                  mul          t6, gp, a2
                  srai         s6, a6, 11
                  sub          s5, s8, a4
                  div          t4, s0, gp
                  remu         gp, t0, s11
                  slli         t1, s9, 27
                  xori         a1, s10, 1869
                  srl          t6, s10, t5
                  xor          tp, s4, s4
                  sra          sp, s3, sp
                  and          s10, a3, s2
                  xor          s9, sp, a2
                  and          t4, t5, a2
                  mulhsu       gp, t4, s5
                  andi         tp, t6, -1254
                  sra          t3, s4, a1
                  or           sp, ra, s5
                  srli         t4, t1, 27
                  sltiu        s8, s6, 2005
                  slli         s6, ra, 0
                  nop
                  mulhsu       s2, tp, s4
                  sub          a1, s10, t3
                  slt          s2, t0, t5
                  sll          sp, s0, s1
                  srai         s11, t2, 21
                  add          a4, s0, a7
                  slt          a1, s0, s9
                  sltiu        s11, s9, 944
                  addi         a0, s11, 1429
                  add          a5, a4, s3
                  add          s2, s1, s4
                  add          a0, s10, a6
                  auipc        a4, 1030755
                  sll          ra, t0, a7
                  andi         s9, s9, -2004
                  xor          s8, zero, t3
                  add          t4, ra, s10
                  xori         s1, t0, 1406
                  auipc        s9, 183559
                  auipc        t5, 784550
                  srli         t1, s9, 25
                  slti         a2, a1, -1765
                  mulh         tp, s9, a3
                  auipc        s11, 188354
                  sltu         s5, a5, t3
                  slt          t1, a7, s10
                  sra          t2, s4, s9
                  rem          ra, s7, t0
                  divu         t6, t5, s4
                  div          a6, tp, a7
                  addi         s11, s10, 1504
                  xor          t2, t0, t2
                  mulh         s5, t4, s3
                  sll          t1, t0, a0
                  mul          s6, a6, a3
                  remu         s1, a0, s9
                  remu         s5, t1, t0
                  sltu         zero, s2, t4
                  sltu         t2, s2, s11
                  and          s1, a7, t2
                  mulh         t4, a4, s11
                  auipc        s5, 296585
                  auipc        t4, 344113
                  srli         t1, a6, 14
                  divu         t1, t3, ra
                  add          s2, t0, a4
                  srl          a6, sp, a0
                  sub          s8, t0, s4
                  or           s8, tp, a2
                  slti         s6, s0, -1002
                  mulh         t1, s7, t1
                  sltu         s1, s3, tp
                  lui          s1, 589257
                  xor          t1, a2, s4
                  auipc        a5, 433257
                  and          tp, s1, t6
                  sra          t3, s3, t0
                  lui          a4, 603020
                  srli         sp, t0, 6
                  divu         s11, s9, t1
                  andi         tp, t4, 586
                  mulhsu       s6, s10, t3
                  and          t1, gp, t3
                  mulhu        a1, gp, a1
                  mulhsu       zero, t6, s10
                  divu         s9, a3, a5
                  or           ra, zero, t6
                  sra          t4, s2, zero
                  add          a4, a7, zero
                  ori          a6, s0, -1243
                  remu         sp, a7, a1
                  mulhu        a7, s1, a7
                  mul          sp, s8, a1
                  srli         t5, t3, 30
                  sltiu        s7, s7, 1137
                  srai         s2, s11, 4
                  slti         a7, s2, -324
                  slti         a2, s9, -1437
                  mulhsu       s9, s4, s5
                  mulhsu       s10, s10, a4
                  sltiu        s1, s5, -470
                  div          s1, a2, a2
                  sra          sp, s0, a6
                  nop
                  xor          a5, sp, t0
                  lui          s0, 786201
                  sra          s3, s5, s10
                  addi         sp, a1, -460
                  mulhu        t3, s6, a0
                  div          s9, s0, t5
                  or           a1, t1, zero
                  srai         zero, a6, 29
                  nop
                  sub          t1, a4, s5
                  rem          t4, a6, a2
                  ori          a7, sp, 2025
                  div          t1, s11, s2
                  xori         s6, s8, -78
                  add          s5, a3, t2
                  sra          gp, a0, t6
                  mul          sp, tp, s10
                  sll          s11, t5, t5
                  addi         t4, s6, -1127
                  xor          s11, a7, s4
                  mul          gp, s4, t1
                  xor          a2, s0, ra
                  sra          s11, a0, t1
                  srl          s3, t2, t0
                  divu         t4, gp, sp
                  divu         a1, t1, s1
                  sra          a2, tp, t0
                  and          a1, a2, s1
                  or           gp, sp, t6
                  and          s1, t0, s3
                  or           s1, s8, a3
                  mulhu        s1, t2, tp
                  slti         t4, s4, 1977
                  auipc        t2, 378896
                  mulhsu       t2, a4, t1
                  slli         sp, t0, 9
                  ori          t5, s8, -34
                  div          sp, a6, t4
                  or           a5, zero, ra
                  remu         ra, t2, t2
                  sltu         s3, ra, a5
                  mulhsu       t3, s10, s3
                  srl          s1, a6, zero
                  slt          s7, tp, s7
                  divu         s1, s3, s0
                  mulh         a6, t3, s0
                  sltu         tp, s8, t6
                  or           t4, s1, a0
                  nop
                  srai         tp, t2, 3
                  mul          a1, gp, s6
                  nop
                  srl          t1, zero, s10
                  slli         zero, ra, 23
                  mulhu        s8, s4, t2
                  sll          s9, s0, gp
                  xori         t1, s9, -846
                  slt          s10, s10, s4
                  mulh         gp, s6, tp
                  mul          a1, t6, sp
                  mulhu        t5, zero, sp
                  srai         s6, t3, 12
                  xori         ra, t2, 503
                  srli         s10, s4, 0
                  andi         a1, gp, 28
                  sra          s2, s10, s8
                  mulhu        sp, sp, a3
                  divu         s7, zero, t2
                  slti         t4, a0, 1468
                  addi         s10, t0, -994
                  slli         t5, t2, 25
                  slli         tp, a6, 31
                  remu         s11, s5, s11
                  srl          s0, s0, t3
                  ori          a1, zero, 1976
                  lui          a6, 479910
                  add          t1, gp, a2
                  sltu         s8, zero, a1
                  sltu         s9, s2, s9
                  and          t6, zero, s7
                  or           s10, ra, s10
                  and          gp, s10, s7
                  slti         s11, ra, -1707
                  sltu         s9, a2, t4
                  xori         gp, t6, 1299
                  sltiu        s7, s0, 803
                  xor          ra, a0, zero
                  slli         t4, a7, 13
                  sltiu        a1, s9, -1688
                  add          a5, t2, s2
                  sra          s10, t5, a6
                  ori          gp, a0, 880
                  slli         a7, t0, 19
                  rem          s11, t5, s6
                  sll          s7, ra, s3
                  mulh         s10, t0, s11
                  andi         s2, a0, -17
                  divu         a7, ra, s4
                  sltu         s5, s6, s2
                  add          a5, s6, a1
                  mul          s10, sp, t4
                  mulh         t6, s1, a1
                  or           a1, s6, s2
                  slli         a7, a5, 16
                  srli         s6, a7, 20
                  auipc        s1, 698342
                  nop
                  slt          a4, zero, a7
                  sub          t4, a7, a0
                  add          a5, s1, a4
                  add          tp, t0, s11
                  and          s2, zero, a1
                  add          a2, a6, a0
                  and          t5, a5, t4
                  xori         s11, s8, 1252
                  srl          t4, a3, zero
                  add          a6, t6, zero
                  sll          t2, t1, s11
                  mulh         s11, s9, a0
                  srai         s11, a0, 16
                  mulh         a2, t0, a3
                  and          t1, a6, a0
                  srli         s10, s2, 30
                  divu         s7, t2, s7
                  srai         t2, a2, 16
                  xor          s9, s9, zero
                  mulhu        t3, t5, zero
                  xor          a1, tp, s2
                  sub          s1, s1, s0
                  nop
                  or           s11, a0, zero
                  div          a6, s6, t5
                  sra          s10, a6, tp
                  lui          a4, 596734
                  sll          t4, t6, a7
                  ori          a2, s6, 699
                  div          t2, s1, t3
                  remu         s10, a5, sp
                  slti         a0, s7, 1376
                  sltu         t2, t4, a2
                  sra          t5, s4, t4
                  remu         t3, t4, a3
                  srl          t4, a5, s8
                  slti         s11, s0, 2010
                  andi         zero, t2, 364
                  slt          gp, s4, t3
                  srl          t5, s7, s1
                  mul          t6, sp, s0
                  and          zero, t4, a5
                  and          s9, a0, a7
                  add          a5, s11, a6
                  ori          t2, a4, -1514
                  sra          ra, zero, tp
                  mulhsu       s1, s3, a4
                  mulh         s11, s1, tp
                  add          a7, s4, s2
                  add          a0, sp, a7
                  srli         s1, a3, 17
                  sll          a5, t5, a7
                  andi         a5, ra, -249
                  sll          s0, zero, s2
                  xor          a1, s0, a5
                  sll          s6, tp, a0
                  mulh         t1, ra, s6
                  sub          sp, s11, zero
                  sub          a6, t1, a4
                  auipc        a6, 454399
                  nop
                  slli         a2, a7, 15
                  sltiu        ra, s6, -1379
                  xor          ra, gp, a0
                  divu         s8, s6, s0
                  srai         ra, s10, 5
                  srl          t4, s7, sp
                  mulh         s6, s1, a2
                  slti         a1, t0, -1969
                  sltiu        gp, s11, 491
                  lui          s8, 783683
                  ori          s6, t3, -991
                  lui          s11, 640822
                  sub          t4, a2, a1
                  sltiu        s3, a2, -1910
                  xor          t2, a4, a1
                  mulhsu       t6, ra, ra
                  rem          gp, a0, s0
                  sltiu        s9, gp, 1202
                  mulhsu       t6, t5, s1
                  remu         a5, s6, s11
                  addi         s0, ra, 357
                  and          ra, a5, tp
                  auipc        t4, 120850
                  or           ra, t6, ra
                  xor          s1, ra, s3
                  auipc        t6, 131123
                  auipc        tp, 384927
                  sra          zero, t1, sp
                  mul          s8, a4, s2
                  srl          a4, t6, zero
                  srai         a7, a4, 25
                  nop
                  sltu         s0, sp, zero
                  nop
                  add          s5, a4, t4
                  mul          s9, s3, s1
                  addi         s6, s4, -353
                  srai         t5, a4, 8
                  add          t1, a3, t2
                  auipc        tp, 855979
                  and          tp, s9, s4
                  srli         a5, ra, 21
                  srl          a5, s3, tp
                  slti         sp, s3, 1722
                  addi         zero, t5, 509
                  rem          a6, a3, s11
                  xori         s7, s5, 1580
                  srai         tp, a2, 26
                  xor          a6, s9, a1
                  ori          s8, t5, 1928
                  srli         s6, s8, 16
                  andi         s1, a6, 229
                  add          a6, zero, s4
                  ori          s7, s10, -1006
                  sra          s6, s1, ra
                  srli         a4, t6, 17
                  srai         t3, a0, 24
                  divu         s11, a2, tp
                  and          s11, a6, s1
                  or           a5, zero, s10
                  addi         t2, t4, 364
                  mulh         s9, s11, t1
                  sltu         t6, t2, s7
                  addi         s10, s11, -1911
                  rem          s8, t1, t5
                  addi         zero, a2, 516
                  mul          s3, s1, t1
                  rem          s5, a6, s7
                  xor          s2, s0, a3
                  xor          a5, t4, s9
                  ori          t4, s0, -521
                  auipc        s7, 124164
                  rem          s11, t5, zero
                  srl          s0, tp, a4
                  mulh         a6, a2, t2
                  xori         a1, t6, 1541
                  mulhu        a7, t5, a0
                  and          s7, t5, t1
                  sub          t3, a6, s5
                  mul          tp, s5, t6
                  mul          s5, s9, ra
                  sra          s9, a1, a6
                  ori          s9, s8, -1369
                  srl          s2, s5, tp
                  rem          a7, s10, a1
                  lui          gp, 11855
                  sra          t6, s7, tp
                  lui          zero, 657764
                  sltu         t2, gp, a7
                  slti         tp, t5, 365
                  andi         s8, s3, 993
                  add          t5, gp, s2
                  lui          s9, 217411
                  remu         s10, s6, s10
                  ori          s6, a0, -1666
                  or           t6, s7, s10
                  remu         a0, s5, ra
                  divu         s10, s11, gp
                  or           a1, s0, a6
                  xori         sp, a5, 2032
                  mulhu        a5, s6, gp
                  mulhsu       s8, t5, a7
                  ori          s9, a5, -943
                  remu         a1, s10, s4
                  mulhsu       s10, s6, s8
                  mulh         sp, t0, s9
                  or           tp, s3, t5
                  and          a7, s2, a6
                  srl          s5, s3, gp
                  sltu         t4, a1, t1
                  divu         s7, s1, a3
                  rem          t2, s11, t0
                  xor          s5, t5, s3
                  mulh         s0, t5, s10
                  and          t3, a4, a2
                  and          s0, a1, gp
                  add          a5, a2, t1
                  sltu         a4, a1, t5
                  mulhsu       tp, t3, ra
                  ori          sp, gp, -113
                  mulhsu       zero, s3, t4
                  mulhu        a5, a5, a5
                  sltu         s5, a6, a4
                  remu         tp, ra, a2
                  or           a1, s1, t0
                  xori         ra, s9, -305
                  remu         sp, s2, t5
                  sltiu        ra, s9, -54
                  mulh         a1, ra, gp
                  slli         s5, s0, 9
                  sltu         s2, t6, t2
                  rem          s7, s0, s3
                  auipc        t1, 637125
                  xori         s9, s0, -652
                  addi         s3, a6, -417
                  srli         a0, t6, 13
                  andi         s3, t3, 1403
                  add          t2, t1, a7
                  remu         s9, a7, a7
                  mulhsu       a1, t5, a7
                  xor          a4, t0, t1
                  sltu         s6, a2, ra
                  ori          a2, t5, 1593
                  slti         a4, s4, -1687
                  and          a0, s4, a2
                  mul          a0, s5, s7
                  mulh         s0, a7, t4
                  addi         s7, s5, 428
                  add          t5, tp, tp
                  xori         s5, gp, 1543
                  sub          s8, t2, a1
                  ori          t2, tp, 709
                  ori          t3, s8, -993
                  lui          s8, 885168
                  sltiu        a2, a4, 1622
                  divu         a6, tp, a3
                  srli         t2, s6, 2
                  srli         a0, t2, 3
                  div          t2, a4, s2
                  xori         zero, t6, -1623
                  sltu         s8, a6, t1
                  sra          s6, gp, ra
                  srai         s11, a3, 8
                  ori          s0, a1, 790
                  div          t6, s3, a4
                  andi         sp, s7, -987
                  sub          s1, t2, ra
                  div          s7, s2, a2
                  and          s7, t2, t2
                  addi         s5, t6, -432
                  remu         t2, a5, s8
                  rem          a7, t0, t1
                  add          tp, t1, a2
                  mul          s0, s9, a5
                  mulhu        a2, gp, a1
                  remu         s0, a6, s7
                  srai         s0, a1, 25
                  and          s9, sp, a7
                  sub          gp, a2, s11
                  addi         s0, t3, 1290
                  mul          s5, a4, s1
                  sltu         t1, s6, a1
                  sltu         t1, s9, t4
                  slt          t5, zero, s11
                  slti         s5, s10, 1469
                  slti         tp, s3, 412
                  srai         zero, a1, 16
                  slti         t2, s9, -805
                  auipc        s9, 196104
                  andi         s3, a4, 542
                  xori         t3, s0, -1131
                  sub          s5, t4, t5
                  xor          s2, s2, s2
                  mulhsu       t6, s4, t6
                  srli         s8, a2, 18
                  and          t3, a2, s9
                  slt          t6, s4, s10
                  sra          a4, a2, t1
                  sltiu        ra, a6, -276
                  srai         s7, a3, 9
                  addi         s2, s1, -1189
                  lui          sp, 762927
                  andi         sp, sp, 53
                  lui          zero, 167427
                  slt          t4, a4, zero
                  addi         s2, tp, -1073
                  addi         t1, s8, 1971
                  mulhu        sp, t5, t2
                  rem          a2, s7, a2
                  lui          t6, 238329
                  sll          t3, s10, s2
                  srli         s8, t6, 31
                  addi         a5, t4, -589
                  remu         a7, tp, tp
                  divu         a0, zero, a5
                  slti         t4, t5, -1706
                  nop
                  and          s7, a5, s4
                  auipc        a7, 99536
                  lui          a6, 582955
                  srai         sp, a0, 13
                  nop
                  or           s2, sp, s8
                  add          ra, t5, a5
                  srai         s1, a4, 10
                  sltu         t6, t2, t0
                  mulhsu       t3, t6, s4
                  sra          a7, s10, s11
                  xor          t4, a2, a4
                  mulhu        s7, t3, zero
                  slt          s7, s8, t4
                  srl          sp, a1, tp
                  andi         ra, s1, -1216
                  add          s8, s6, ra
                  srli         s7, t2, 27
                  srl          a7, s6, s5
                  sub          t6, t0, s8
                  sra          t4, s8, s11
                  ori          t6, s0, -1017
                  auipc        s6, 992025
                  lui          a7, 758920
                  and          ra, t0, t5
                  slt          t4, a7, gp
                  add          a0, a0, s10
                  mulh         s1, a7, s8
                  mulhsu       s1, s6, s7
                  sub          s0, s9, a1
                  rem          s11, t5, s11
                  rem          t5, t1, s11
                  remu         a2, s10, t3
                  mul          t4, t6, t2
                  sra          a1, zero, s8
                  remu         a5, s10, s9
                  srli         s5, s2, 6
                  sra          s11, a5, ra
                  auipc        a7, 86037
                  xori         s2, zero, -356
                  ori          s11, s4, 851
                  or           s0, a4, tp
                  nop
                  auipc        s10, 933787
                  add          t3, s2, s8
                  sub          a2, a4, t4
                  sltu         tp, s9, t3
                  slli         gp, t3, 3
                  slli         t5, s6, 27
                  sltu         t6, a5, a4
                  addi         s6, s11, -1409
                  mulhsu       t5, t4, s3
                  addi         t6, s6, -1593
                  srli         ra, a0, 6
                  xor          a6, s1, s10
                  lui          a7, 895550
                  and          a5, zero, s10
                  slti         a7, s0, -917
                  srl          tp, s10, s6
                  add          s6, a7, gp
                  sub          s10, s3, s3
                  mulh         s8, a5, s1
                  sltu         s3, s0, t4
                  sra          a1, s9, a7
                  sra          t2, t2, s8
                  or           t1, a6, s1
                  add          a0, s2, s2
                  addi         a6, s1, -394
                  mulhsu       a7, s7, t6
                  div          a2, s4, s5
                  slti         s5, a2, 650
                  slt          s5, a7, s10
                  mulh         sp, t5, s8
                  sll          t3, t3, s2
                  mulhsu       a7, a1, a1
                  nop
                  sra          a0, t6, s10
                  slli         t6, s7, 11
                  mulh         t1, a4, a4
                  sltiu        a6, s5, 1193
                  srl          s8, s11, s10
                  sll          a1, a1, t0
                  addi         t3, gp, 1707
                  xori         t1, a7, -1788
                  addi         gp, t6, 1817
                  srli         t6, t3, 7
                  lui          gp, 1034452
                  rem          gp, a4, s8
                  srl          t5, s6, t0
                  remu         sp, a0, t4
                  sll          t4, s6, s8
                  srli         a0, t6, 16
                  sll          t4, gp, t3
                  slli         a4, a1, 24
                  nop
                  andi         a5, t3, -1828
                  rem          s8, a7, s4
                  sltu         s1, s0, zero
                  srli         a7, s2, 28
                  xor          a6, a4, s5
                  or           t6, s11, s5
                  srai         a2, t4, 25
                  srl          s11, s5, ra
                  sltiu        gp, s10, 1915
                  xori         t2, s7, -935
                  add          gp, s4, zero
                  sltu         gp, s3, s5
                  sll          gp, t2, t5
                  or           a2, gp, t3
                  and          t2, zero, s6
                  srai         t6, s2, 31
                  mul          t2, s8, s4
                  ori          a0, t6, -1433
                  add          a7, s6, t3
                  xor          s10, t4, s5
                  rem          a6, a1, t1
                  nop
                  sltiu        tp, s2, 704
                  or           a0, s10, s3
                  sltiu        s7, sp, -1048
                  nop
                  ori          a5, t3, -325
                  sll          s11, a1, a0
                  or           s5, s2, t2
                  xor          ra, t5, t3
                  sra          t1, gp, s6
                  slli         a6, s5, 20
                  srai         zero, s4, 5
                  nop
                  rem          a0, a5, t2
                  andi         t4, t5, 1589
                  add          t4, s10, s6
                  slti         s11, a6, -1532
                  mulhu        s8, ra, t2
                  sra          a6, s5, s1
                  lui          t1, 992156
                  xor          a2, a7, a2
                  sltiu        t3, t6, -182
                  andi         a4, s3, -539
                  lui          s11, 1044263
                  sltiu        s10, s0, -1631
                  andi         tp, a1, 1093
                  sll          a1, s8, ra
                  remu         a6, s5, s5
                  sll          s10, s10, s6
                  xori         ra, ra, 140
                  mul          s10, sp, t4
                  mul          s5, s10, a0
                  mulh         a4, s3, s5
                  add          t3, s11, t1
                  srai         sp, a5, 3
                  add          t6, a2, a6
                  sll          t5, s7, s7
                  addi         a0, a4, 792
                  mulhsu       t5, s5, t3
                  mulhu        a7, s2, t1
                  auipc        zero, 545840
                  sll          t6, s9, a7
                  remu         s2, a4, s11
                  srai         s3, s4, 20
                  addi         t6, t6, -541
                  rem          sp, s10, s3
                  xori         s5, a5, -1367
                  addi         a1, zero, -1207
                  sltu         t5, s8, a1
                  slli         s7, t1, 2
                  addi         s0, s5, -424
                  srli         sp, t3, 10
                  sltiu        t1, a7, -1703
                  auipc        a6, 268052
                  sra          a4, t2, a2
                  sub          a4, zero, t1
                  addi         a2, s4, 609
                  divu         tp, a7, t5
                  mul          t1, s6, s8
                  xor          s5, s4, s9
                  sltu         t3, tp, t6
                  mulhu        a1, t1, s2
                  remu         t4, a5, a3
                  nop
                  andi         t3, s1, 2045
                  mul          a7, a2, s11
                  divu         t4, zero, a4
                  remu         a4, t6, gp
                  rem          t6, tp, a3
                  addi         s1, s5, -1627
                  srai         sp, s0, 19
                  slli         zero, s9, 12
                  rem          s9, s8, s11
                  sltiu        t5, s2, 1965
                  xor          s9, t1, s11
                  xor          gp, gp, s11
                  sub          t2, s0, t6
                  auipc        s5, 341111
                  slli         s0, a7, 22
                  divu         a7, t6, s4
                  slt          s11, a1, s11
                  auipc        t4, 527754
                  slti         ra, s0, -591
                  addi         a6, s10, -1547
                  slli         s5, sp, 10
                  mulh         s5, t1, s3
                  sltu         sp, ra, a5
                  sltu         t3, t0, s2
                  remu         s1, t4, a3
                  sra          a4, a4, a7
                  rem          t2, a7, ra
                  srl          s1, gp, sp
                  addi         a2, s11, -165
                  sub          a1, s3, t3
                  sltiu        a4, a2, -1345
                  nop
                  lui          a1, 39474
                  sltiu        a6, a2, -1792
                  sra          s1, s3, sp
                  auipc        t3, 735307
                  slt          t1, zero, tp
                  la x13, test_done
                  jalr x0, x13, 0
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
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_2:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_3:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_4:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_5:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_6:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_7:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_8:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_9:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_10:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_11:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_12:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_13:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_14:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

mmode_intr_vector_15:
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  addi x20, x20, -4
                  sw  x5, (x20)
                  add x5, x20, zero
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
                  add x20, x5, zero
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
                  1: la x13, test_done
                  jalr x1, x13, 0

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
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x5, x20, zero
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
                  add x20, x5, zero
                  lw  x5, (x20)
                  addi x20, x20, 4
                  mret

load_fault_handler:
                  add x5, x20, zero
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
                  add x20, x5, zero
                  lw  x5, (x20)
                  addi x20, x20, 4
                  mret

store_fault_handler:
                  add x5, x20, zero
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
                  add x20, x5, zero
                  lw  x5, (x20)
                  addi x20, x20, 4
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x5, x20, zero
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
                  add x20, x5, zero
                  lw  x5, (x20)
                  addi x20, x20, 4
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x5, x20, zero
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
                  add x20, x5, zero
                  lw  x5, (x20)
                  addi x20, x20, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x5, x20, zero
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
                  add x20, x5, zero
                  lw  x5, (x20)
                  addi x20, x20, 4
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
